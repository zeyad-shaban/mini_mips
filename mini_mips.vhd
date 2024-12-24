LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.Utility_Pkg.ALL;

ENTITY mini_mips IS
	GENERIC (
		-- memory
		MEMO_DATA_WIDTH : INTEGER := 16;
		MEMO_ADDR_WIDTH : INTEGER := 4;
		MEMO_INIT_FILE : STRING := "init_memory.mif";

		-- registers
		REG_ADDR_WIDTH : INTEGER := 4;
		REG_DATA_WIDTH : INTEGER := 16;

		-- instruction
		INSTRUCTION_WIDTH : INTEGER := 16;
		SEQ_COUNTER_MAX : INTEGER := 7;
		OPCODE_WIDTH : INTEGER := 4;

		BUS_WIDTH : INTEGER := 16
	);

	PORT (
		clk : IN STD_LOGIC;
		data_in : IN STD_LOGIC_VECTOR(MEMO_DATA_WIDTH - 1 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(MEMO_DATA_WIDTH - 1 DOWNTO 0)
	);
END mini_mips;

ARCHITECTURE Beh OF mini_mips IS
	-- Data Registers
	SIGNAL reg1_data_out : STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL reg2_data_out : STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL reg1_addr : STD_LOGIC_VECTOR(REG_ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL reg2_addr : STD_LOGIC_VECTOR(REG_ADDR_WIDTH - 1 DOWNTO 0);

	-- Inner Registers
	SIGNAL AR_out : STD_LOGIC_VECTOR(MEMO_ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL PC : STD_LOGIC_VECTOR(MEMO_ADDR_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL IR : STD_LOGIC_VECTOR(INSTRUCTION_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL DR1 : STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL DR2 : STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');

	SIGNAL AC : STD_LOGIC_VECTOR(REG_DATA_WIDTH * 2 - 1 DOWNTO 0) := (OTHERS => '0');

	-- Flags
	SIGNAL execute : STD_LOGIC;
	SIGNAL immediate1 : STD_LOGIC;
	SIGNAL immediate2 : STD_LOGIC;

	-- instruction related
	SIGNAL sc : INTEGER RANGE 0 TO SEQ_COUNTER_MAX;
	SIGNAL opcode : INTEGER RANGE 0 TO 2 ** OPCODE_WIDTH - 1;

	-- BUS
	SIGNAL bus_data : STD_LOGIC_VECTOR(BUS_WIDTH - 1 DOWNTO 0);

BEGIN
	Memory_inst : ENTITY work.Memory
		GENERIC MAP(
			DATA_WIDTH => MEMO_DATA_WIDTH,
			ADDR_WIDTH => MEMO_ADDR_WIDTH,
			INIT_FILE => MEMO_INIT_FILE
		)
		PORT MAP(
			clk => clk,
			write_enable => '0',
			read_enable => To_Std_Logic(sc = 1 OR (opcode = 0 AND sc = 6)),
			data_in => bus_data,
			address => AR_out,
			data_out => bus_data
		);

	AR_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			ADDR_WIDTH => MEMO_ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic((sc = 0) OR (opcode = 0 AND sc = 5)),
			data_in => bus_data(MEMO_ADDR_WIDTH - 1 DOWNTO 0),
			data_out => AR_out -- how to map to bus as well?
		);

	registers_inst : ENTITY work.registers
		GENERIC MAP(
			DATA_WIDTH => REG_DATA_WIDTH,
			ADDR_WIDTH => REG_ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			ld1 => To_Std_Logic((opcode = 0 AND sc = 6) OR (opcode = 7 AND sc = 6)),

			data_in => bus_data,

			reg1_addr => reg1_addr,
			reg2_addr => reg2_addr,

			data_out1 => reg1_data_out,
			data_out2 => reg2_data_out
		);
	R1_Addr_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			ADDR_WIDTH => REG_ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic((immediate1 = '0' AND sc = 3) OR (opcode = 0 AND sc = 5) OR (opcode = 7 AND sc = 7)),
			data_in => bus_data(REG_ADDR_WIDTH - 1 DOWNTO 0),
			data_out => reg1_addr
		);

	R2_Addr_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			ADDR_WIDTH => REG_ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic(immediate2 = '0' AND sc = 3),
			data_in => bus_data(REG_ADDR_WIDTH - 1 DOWNTO 0),
			data_out => reg2_addr
		);

	-- fetch and decode
	PROCESS (clk) BEGIN
		IF rising_edge(clk) THEN
			IF (sc = 0) THEN
				bus_data <= "000000000000" & PC;
			ELSIF (sc = 1) THEN
				IR <= bus_data;
				PC <= STD_LOGIC_VECTOR(unsigned(PC) + 1);
			ELSIF (sc = 2) THEN
				opcode <= to_integer(unsigned(IR(12 DOWNTO 8)));
				immediate1 <= IR(14);
				immediate2 <= IR(13);
				execute <= IR(15);
			ELSIF (sc = 3) THEN
				IF (immediate1 = '1') THEN
					DR1 <= "000000000000" & IR(7 DOWNTO 4);
				ELSE
					bus_data <= "000000000000" & IR(7 DOWNTO 4);
				END IF;
				IF (immediate2 = '1') THEN
					DR2 <= "000000000000" & IR(3 DOWNTO 0);
				ELSE
					bus_data <= "000000000000" & IR(3 DOWNTO 0);
				END IF;

			ELSIF (sc = 4) THEN
				IF (immediate1 = '0') THEN
					DR1 <= reg1_data_out;
				END IF;
				IF (immediate2 = '0') THEN
					DR2 <= reg2_data_out;
				END IF;
			END IF;
			sc <= sc + 1;
		END IF;
	END PROCESS;

	-- Execute
	PROCESS (clk) BEGIN
		IF (rising_edge(clk) AND sc >= 4) THEN
			IF (opcode = 0) THEN
				# LDA r0, x
				# r0 : DR1, x : DR2, R[DR1] <- Memory[DR2]
				IF (sc = 5) THEN
					reg1_addr <= DR1 (REG_ADDR_WIDTH - 1 DOWNTO 0);
					bus_data <= DR2 (MEMO_ADDR_WIDTH - 1 DOWNTO 0);
				ELSIF (sc = 6) THEN
					-- Todo: Hey memory can you.. FRICKEN SEND SOME DATA TO THE BUS but how?!
					-- bus_data <= M[AR_out];
				END IF;
			END IF;
		ELSIF (opcode = 1) THEN
			# INP r0
			# todo read from user
		ELSIF (opcode = 2) THEN
			# OUT
			# todo output TO screen????
		ELSIF (opcode = 3) THEN
			# XOR r1, r2
			# r1 : DR1, r2 : DR2, result : AC
			IF (sc = 5) THEN
				AC <= DR1 XOR DR2;
			END IF;
		ELSIF (opcode = 4) THEN
			# BUN r1
			# r1 : DR1, jumps TO r1
			IF (sc = 5) THEN
				PC <= DR1;
			END IF;
		ELSIF (opcode = 5) THEN
			# ADD r1, r0
			# r1 : DR1, r0 : DR2, result : AC
			IF (sc = 5) THEN
				ac <= DR1 + DR2;
			END IF;
		ELSIF (opcode = 5) THEN
			# SUB r1, r0
			# r1 : DR1, r0 : DR2, result : AC
			IF (sc = 5) THEN
				ac <= DR1 - DR2;
			END IF;
		ELSIF (opcode = 6) THEN
			# SUB r1, r0
			# r1 : DR1, r0 : DR2, result : AC
			IF (sc = 5) THEN
				ac <= DR1 - DR2;
			END IF;
		ELSIF (opcode = 7) THEN
			# MOV r1, r0
			# r1 : DR1, r0 : DR2, result : R[DR1] <- r0
			IF (sc = 5) THEN
				reg1_addr <= dr1;
			ELSIF (sc = 6) THEN
				-- bus_data <= DR2;
			END IF;
		END IF;
	END PROCESS;

	data_out <= AC;
END Beh;