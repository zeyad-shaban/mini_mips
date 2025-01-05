
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Utility_Pkg.ALL;

ENTITY mini_mips IS
	PORT (
		clk : IN STD_LOGIC;
		clr : IN STD_LOGIC := '0';
		output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

		-- for debugging purpose
		debug_pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_ir : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		-- debug_rt_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- debug_rs_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		debug_rd_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- debug_shamt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- debug_func : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		debug_immediate : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_mem_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		-- debug_ar : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_bus_data_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_bus_reg_rs : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_bus_reg_rt : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_bus_reg_rd : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_reg_file_ld : OUT STD_LOGIC
		-- end for debugging
	);
END mini_mips;

ARCHITECTURE Beh OF mini_mips IS
	SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ir : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL rt_addr, rs_addr, rd_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL shamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL func : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL immediate : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL address : STD_LOGIC_VECTOR(25 DOWNTO 0);
	SIGNAL mem_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bus_reg_rs : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bus_reg_rt : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bus_reg_rd : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bus_data_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL reg_file_ld : STD_LOGIC := '0';

	-- State machine
	TYPE state_type IS (FETCH, DECODE1, DECODE2, EXECUTE, WRITEBACK);
	SIGNAL current_state : state_type := FETCH;
	SIGNAL opcode_temp : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL ir_temp : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
	-- for debugging purpose
	debug_pc <= pc;
	debug_ir <= ir;
	debug_opcode <= opcode;
	-- debug_rt_addr <= rt_addr;
	-- debug_rs_addr <= rs_addr;
	debug_rd_addr <= rd_addr;
	-- debug_shamt <= shamt;
	-- debug_func <= func;
	debug_immediate <= immediate;
	debug_mem_data_out <= mem_data_out;
	-- debug_ar <= ar;
	debug_bus_data_in <= bus_data_in;
	debug_bus_reg_rs <= bus_reg_rs;
	debug_bus_reg_rt <= bus_reg_rt;
	debug_bus_reg_rd <= bus_reg_rd;
	debug_reg_file_ld <= reg_file_ld;
	-- end for debugging
	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF clr = '1' THEN
				pc <= (OTHERS => '0');
				ir <= (OTHERS => '0');
				opcode <= (OTHERS => '0');
				rt_addr <= (OTHERS => '0');
				rs_addr <= (OTHERS => '0');
				rd_addr <= (OTHERS => '0');
				shamt <= (OTHERS => '0');
				func <= (OTHERS => '0');
				immediate <= (OTHERS => '0');
				address <= (OTHERS => '0');
			ELSE
				CASE current_state IS
					WHEN FETCH =>
						ir_temp <= mem_data_out;
						pc <= STD_LOGIC_VECTOR(unsigned(pc) + 1);
						current_state <= DECODE1;

					WHEN DECODE1 =>
						ir <= ir_temp;
						opcode_temp <= ir_temp(31 DOWNTO 26);
						current_state <= DECODE2;

					WHEN DECODE2 =>
						opcode <= opcode_temp;
						IF opcode_temp = "000000" THEN -- R-type
							rt_addr <= ir_temp(20 DOWNTO 16);
							rs_addr <= ir_temp(25 DOWNTO 21);
							rd_addr <= ir_temp(15 DOWNTO 11);
							shamt <= ir_temp(10 DOWNTO 6);
							func <= ir_temp(5 DOWNTO 0);
						ELSIF opcode_temp = "111111" THEN -- J-type
							address <= ir_temp(25 DOWNTO 0);
						ELSE -- I-type
							rs_addr <= ir_temp(25 DOWNTO 21);
							rd_addr <= ir_temp(20 DOWNTO 16);
							immediate <= Extend_Vector(ir_temp(15 DOWNTO 0), 32);
						END IF;

						current_state <= EXECUTE;

					WHEN EXECUTE =>
						-- Execute phase
						IF opcode = "000000" THEN -- R-type
							IF func = "000001" THEN -- XOR
								reg_file_ld <= '1';
								bus_data_in <= bus_reg_rs XOR bus_reg_rt;
							ELSIF func = "000010" THEN -- Add
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(unsigned(bus_reg_rs) + unsigned(bus_reg_rt));
							ELSIF func = "000011" THEN -- Sub
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(unsigned(bus_reg_rs) - unsigned(bus_reg_rt));
							ELSIF func = "000100" THEN -- ASL
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(shift_left(signed(bus_reg_rt), to_integer(unsigned(shamt))));
							ELSIF func = "000101" THEN -- ASR
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(shift_right(signed(bus_reg_rt), to_integer(unsigned(shamt))));
							ELSIF func = "000110" THEN -- LSL
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(shift_left(unsigned(bus_reg_rt), to_integer(unsigned(shamt))));
							ELSIF func = "000111" THEN -- LSR
								reg_file_ld <= '1';
								bus_data_in <= STD_LOGIC_VECTOR(shift_right(unsigned(bus_reg_rt), to_integer(unsigned(shamt))));
							ELSIF func = "001000" THEN -- ROL
								reg_file_ld <= '1';
								bus_data_in <= bus_reg_rt(30 DOWNTO 0) & bus_reg_rt(31);
							ELSIF func = "001001" THEN -- ROR
								reg_file_ld <= '1';
								bus_data_in <= bus_reg_rt(0) & bus_reg_rt(31 DOWNTO 1);
							END IF;

							-- J Types
						ELSIF opcode = "111111" THEN -- Jump aka BUN
							pc <= Extend_Vector(address, 32);

						ELSE -- I-type
							IF opcode = "000001" THEN -- LH (aka input)
								bus_data_in <= immediate;
								reg_file_ld <= '1';
							ELSIF opcode = "000010" THEN -- OUT
								--- this isnt' working for whatever reason...
								output <= bus_reg_rd;
							ELSIF opcode = "000011" THEN -- XORi
								bus_data_in <= bus_reg_rs XOR immediate;
								reg_file_ld <= '1';
							ELSIF opcode = "000100" THEN -- Addi
								bus_data_in <= STD_LOGIC_VECTOR(unsigned(bus_reg_rs) + unsigned(immediate));
								reg_file_ld <= '1';
							ELSIF opcode = "000101" THEN -- Subi
								bus_data_in <= STD_LOGIC_VECTOR(unsigned(bus_reg_rs) + unsigned(immediate));
								reg_file_ld <= '1';
							ELSIF opcode = "000110" THEN -- MOV
								bus_data_in <= bus_reg_rs;
								reg_file_ld <= '1';
							ELSE
								output <= "11111111111111111111111111111111";
								NULL;
							END IF;

						END IF;

						current_state <= WRITEBACK;

					WHEN WRITEBACK =>
						reg_file_ld <= '0';
						current_state <= FETCH;

					WHEN OTHERS =>
						current_state <= FETCH;
				END CASE;
			END IF;
		END IF;
	END PROCESS;

	-- Memory instantiation
	Memory_inst : ENTITY work.Memory
		GENERIC MAP(
			DATA_WIDTH => 32,
			ADDR_WIDTH => 10,
			INIT_FILE => "init_memory.mif"
		)
		PORT MAP(
			clk => clk,
			write_enable => '0',
			address => pc(9 DOWNTO 0),
			data_in => (OTHERS => '0'),
			data_out => mem_data_out
		);

	-- Register file instantiation
	RegFile_inst : ENTITY work.registers
		GENERIC MAP(
			ADDR_WIDTH => 5
		)
		PORT MAP(
			clk => clk,
			clr => clr,
			ld => reg_file_ld,
			data_in => bus_data_in,
			reg_rs_addr => rs_addr,
			reg_rt_addr => rt_addr,
			reg_rd_addr => rd_addr,

			bus_reg_rs => bus_reg_rs,
			bus_reg_rt => bus_reg_rt,
			bus_reg_rd => bus_reg_rd
		);
END ARCHITECTURE Beh;