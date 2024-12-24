LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.Utility_Pkg.ALL;

ENTITY mini_mips IS
	GENERIC (
		-- memory
		MEMO_INIT_FILE : STRING := "init_memory.mif";

		SEQ_COUNTER_MAX : INTEGER := 7;
		FUNC_ADDR_WIDTH : INTEGER := 5;
		BUS_SEL_MUX : INTEGER := 5;

		OPCODE_ADDR_WIDTH : INTEGER := 5;
		DATA_WIDTH : INTEGER := 32;
		ADDR_WIDTH : INTEGER := 5;
		START_EXECUTE : INTEGER := 7

	);

	PORT (
		clk : IN STD_LOGIC;
		input : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
	);
END mini_mips;

ARCHITECTURE Beh OF mini_mips IS
	-- Data Registers
	SIGNAL reg1_data_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL reg2_data_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL reg1_addr : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL reg2_addr : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

	SIGNAL r1_start_idx : INTEGER := DATA_WIDTH - OPCODE_ADDR_WIDTH - 2;
	SIGNAL r2_start_idx : INTEGER := r1_start_idx - DATA_WIDTH - OPCODE_ADDR_WIDTH - 2;

	-- Inner Registers
	SIGNAL AR_out : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
	SIGNAL ir_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

	SIGNAL memo_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL pc_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL dr1_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL dr2_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

	-- Flags
	SIGNAL execute : STD_LOGIC;
	SIGNAL immediate1 : STD_LOGIC;
	SIGNAL immediate2 : STD_LOGIC;

	-- instruction related
	SIGNAL sc : INTEGER RANGE 0 TO SEQ_COUNTER_MAX;
	SIGNAL func : INTEGER RANGE 0 TO 2 ** FUNC_ADDR_WIDTH - 1;

	-- BUS
	SIGNAL bus_data : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL bus_sel : INTEGER RANGE 0 TO BUS_SEL_MUX := 0;

BEGIN
	bus_sel <= 0 WHEN sc = 0 ELSE -- PC
		1 WHEN (func = 0 AND sc = START_EXECUTE + 1) OR
		(func = 4 AND sc = START_EXECUTE) OR
		(func = 7 AND sc = START_EXECUTE) ELSE -- DR1
		2 WHEN (func = 0 AND sc = START_EXECUTE) OR
		(func = 7 AND sc = START_EXECUTE + 1) ELSE -- DR2
		3 WHEN (immediate1 = '0' AND sc = 5) ELSE -- R1_out
		4 WHEN (immediate2 = '0' AND sc = 6) ELSE -- R2_out
		5 WHEN sc = 1 OR (func = 0 AND sc = START_EXECUTE + 2) ELSE
		0;

	Bus_Mux_inst : ENTITY work.Bus_Mux
		GENERIC MAP(
			BUS_SEL_MUX => BUS_SEL_MUX,
			DATA_WIDTH => DATA_WIDTH
		)
		PORT MAP(
			clk => clk,
			bus_sel => bus_sel,
			PC => PC_out,
			memo => memo_out,
			DR1 => dr1_out,
			DR2 => dr2_out,
			r1_out => reg1_data_out,
			r2_out => reg2_data_out,
			bus_data => bus_data
		);

	Memory_inst : ENTITY work.Memory
		GENERIC MAP(
			DATA_WIDTH => DATA_WIDTH,
			ADDR_WIDTH => ADDR_WIDTH,
			INIT_FILE => MEMO_INIT_FILE
		)
		PORT MAP(
			clk => clk,
			write_enable => '0',
			data_in => bus_data,
			address => AR_out,
			data_out => memo_out
		);

	AR_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic((sc = 0) OR (func = 0 AND sc = START_EXECUTE)),
			en => '0',
			data_in => bus_data (ADDR_WIDTH - 1 DOWNTO 0),
			data_out => AR_out
		);

	IR_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => DATA_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic(sc = 1),
			en => '1',
			data_in => bus_data,
			data_out => ir_out
		);

	PC_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => DATA_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => To_Std_Logic(sc = 1),
			ld => To_Std_Logic(func = 4 AND sc = START_EXECUTE),
			en => To_Std_Logic(sc = 0),
			data_in => bus_data,
			data_out => pc_out
		);

	DR1_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => DATA_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic((immediate1 = '1' AND sc = 3) OR (immediate1 = '0' AND sc = 5)),
			en => To_Std_Logic((func = 0 AND sc = START_EXECUTE + 1) OR (func = 4 AND sc = START_EXECUTE) OR (func = 7 AND sc = START_EXECUTE)),
			data_in => bus_data,
			data_out => dr1_out
		);

	DR2_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => DATA_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			ld => To_Std_Logic((immediate2 = '1' AND sc = 3) OR (immediate2 = '0' AND sc = 5)),
			en => To_Std_Logic((func = 0 AND sc = START_EXECUTE) OR (func = 7 AND sc = START_EXECUTE + 1)),
			data_in => bus_data,
			data_out => dr2_out
		);

	registers_inst : ENTITY work.registers
		GENERIC MAP(
			ADDR_WIDTH => ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			ld1 => To_Std_Logic((func = 0 AND sc = START_EXECUTE + 1) OR (func = 7 AND sc = START_EXECUTE + 1)),

			data_in => bus_data,

			reg1_addr => reg1_addr,
			reg2_addr => reg2_addr,

			data_out1 => reg1_data_out,
			data_out2 => reg2_data_out
		);

	R1_Addr_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			en => '1',
			ld => To_Std_Logic((immediate1 = '0' AND sc = 3) OR (func = 0 AND sc = START_EXECUTE) OR (func = 7 AND sc = START_EXECUTE + 1)),
			data_in => bus_data(ADDR_WIDTH - 1 DOWNTO 0),
			data_out => reg1_addr
		);

	R2_Addr_inst : ENTITY work.Generic_Reg
		GENERIC MAP(
			DATA_WIDTH => ADDR_WIDTH
		)
		PORT MAP(
			clk => clk,
			clr => '0',
			inc => '0',
			en => '1',
			ld => To_Std_Logic(immediate2 = '0' AND sc = 4),
			data_in => bus_data(ADDR_WIDTH - 1 DOWNTO 0),
			data_out => reg2_addr
		);

	-- fetch and decode
	PROCESS (clk) BEGIN
		IF rising_edge(clk) AND sc < START_EXECUTE THEN
			IF (sc = 0) THEN
			ELSIF (sc = 1) THEN
			ELSIF (sc = 2) THEN
				func <= to_integer(unsigned(ir_out(FUNC_ADDR_WIDTH - 1 DOWNTO 0)));
				immediate1 <= ir_out(29);
				immediate2 <= ir_out(30);
				execute <= ir_out(31);
			ELSIF (sc = 3) THEN
				IF (immediate1 = '1') THEN
					ir_out <= "000000000000000000000000000" & ir_out(r1_start_idx DOWNTO r1_start_idx - ADDR_WIDTH + 1); -- DR1 <- R1
				ELSE
					reg1_addr <= ir_out(r1_start_idx DOWNTO r1_start_idx - ADDR_WIDTH + 1);
				END IF;
			ELSIF (sc = 4) THEN
				IF (immediate2 = '1') THEN
					ir_out <= "000000000000000000000000000" & IR_out(r1_start_idx - ADDR_WIDTH DOWNTO r1_start_idx - ADDR_WIDTH - ADDR_WIDTH + 1);
				ELSE
					reg2_addr <= IR_out(20 DOWNTO 16);
				END IF;

			ELSIF (sc = 4) THEN
				IF (immediate1 = '0') THEN
				END IF;
			ELSIF (sc = 5) THEN
				IF (immediate2 = '0') THEN
				END IF;
			END IF;
			sc <= sc + 1;
		END IF;
	END PROCESS;

	-- -- Execute
	-- PROCESS (clk) BEGIN
	-- 	IF (rising_edge(clk) AND sc >= START_EXECUTE) THEN
	-- 		IF (opcode = 0) THEN
	-- 			-- LDA r0, x
	-- 			-- r0 : DR1, x : DR2, R[DR1] <- Memory[DR2]
	-- 			IF (sc = 6) THEN
	-- 				reg1_addr <= DR1 (REG_ADDR_WIDTH - 1 DOWNTO 0);
	-- 				bus_data <= "000000000000" & DR2 (MEMO_ADDR_WIDTH - 1 DOWNTO 0);
	-- 			ELSIF (sc = 7) THEN
	-- 				-- Todo: Hey memory can you.. FRICKEN SEND SOME DATA TO THE BUS but how?!
	-- 				-- bus_data <= M[AR_out];
	-- 			END IF;
	-- 		END IF;
	-- 	ELSIF (opcode = 1) THEN
	-- 		-- INP r0
	-- 		-- todo read from user
	-- 	ELSIF (opcode = 2) THEN
	-- 		-- OUT
	-- 		-- todo output TO screen????
	-- 	ELSIF (opcode = 3) THEN
	-- 		-- XOR r1, r2
	-- 		-- r1 : DR1, r2 : DR2, result : AC
	-- 		IF (sc = 6) THEN
	-- 			-- AC <= DR1 XOR DR2;
	-- 		END IF;
	-- 	ELSIF (opcode = 4) THEN
	-- 		-- BUN r1
	-- 		-- r1 : DR1, jumps TO r1
	-- 		IF (sc = 6) THEN
	-- 			PC <= DR1(3 DOWNTO 0);
	-- 		END IF;
	-- 	ELSIF (opcode = 6) THEN
	-- 		-- ADD r1, r0
	-- 		-- r1 : DR1, r0 : DR2, result : AC
	-- 		IF (sc = 6) THEN
	-- 			-- ac <= DR1 + DR2;
	-- 		END IF;
	-- 	ELSIF (opcode = 6) THEN
	-- 		-- SUB r1, r0
	-- 		-- r1 : DR1, r0 : DR2, result : AC
	-- 		IF (sc = 6) THEN
	-- 			-- ac <= DR1 - DR2;
	-- 		END IF;
	-- 	ELSIF (opcode = 6) THEN
	-- 		-- SUB r1, r0
	-- 		-- r1 : DR1, r0 : DR2, result : AC
	-- 		IF (sc = 6) THEN
	-- 			-- ac <= DR1 - DR2;
	-- 		END IF;
	-- 	ELSIF (opcode = 7) THEN
	-- 		-- MOV r1, r0
	-- 		-- r1 : DR1, r0 : DR2, result : R[DR1] <- r0
	-- 		IF (sc = 6) THEN
	-- 			-- reg1_addr <= dr1;
	-- 		ELSIF (sc = 7) THEN
	-- 			-- bus_data <= DR2;
	-- 		END IF;
	-- 	END IF;
	-- END PROCESS;

	-- data_out <= AC;
END Beh;