LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Utility_Pkg.ALL;

ENTITY mini_mips IS
	PORT (
		clk : IN STD_LOGIC;
		clr : IN STD_LOGIC;
		input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

		-- for debugging purpose
		debug_pc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		debug_ir : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		debug_rt_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		debug_rs_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		debug_rd_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		debug_shamt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		debug_func : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		debug_immediate : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_mem_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		debug_ar : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		-- end for debugging
	);
END mini_mips;

ARCHITECTURE Beh OF mini_mips LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Utility_Pkg.ALL;

ENTITY mini_mips IS
    PORT (
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

        -- for debugging purpose
        debug_pc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        debug_ir : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        debug_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
        debug_rt_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        debug_rs_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        debug_rd_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        debug_shamt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        debug_func : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
        debug_immediate : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        debug_mem_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        debug_ar : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
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
    SIGNAL AR : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL rt, rs, rd : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
    debug_pc <= pc(9 DOWNTO 0);
    debug_ir <= ir;
    debug_opcode <= opcode;
    debug_rt_addr <= rt_addr;
    debug_rs_addr <= rs_addr;
    debug_rd_addr <= rd_addr;
    debug_shamt <= shamt;
    debug_func <= func;
    debug_immediate <= immediate;
    debug_mem_data_out <= mem_data_out;
    debug_ar <= AR;

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            reg_file_ld <= '0';

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
                AR <= (OTHERS => '0');
                rt <= (OTHERS => '0');
                rs <= (OTHERS => '0');
                rd <= (OTHERS => '0');
            ELSE
                AR <= pc;
                pc <= STD_LOGIC_VECTOR(unsigned(pc) + 1);
                ir <= mem_data_out;
                opcode <= ir(31 DOWNTO 26);

                -- Decode stage
                IF opcode = "000000" THEN -- R-type
                    rs_addr <= ir(25 DOWNTO 21);
                    rt_addr <= ir(20 DOWNTO 16);
                    rd_addr <= ir(15 DOWNTO 11);
                    shamt <= ir(10 DOWNTO 6);
                    func <= ir(5 DOWNTO 0);

                ELSIF opcode = "001010" THEN -- J-type
                    address <= ir(25 DOWNTO 0);

                ELSE -- I-type
                    rs_addr <= ir(25 DOWNTO 21);
                    rd_addr <= ir(20 DOWNTO 16);
                    immediate <= Extend_Vector(ir(15 DOWNTO 0), 32);
                END IF;

                -- Execute phase
                rs <= bus_reg_rs;
                rt <= bus_reg_rt;

                IF opcode = "000000" THEN -- R-type
                    IF func = "000100" THEN -- XOR
                        bus_data_in <= rs XOR rt;
                        reg_file_ld <= '1';
                    ELSIF func = "000110" THEN -- ADD
                        bus_data_in <= STD_LOGIC_VECTOR(unsigned(rs) + unsigned(rt));
                        reg_file_ld <= '1';
                    END IF;

                ELSIF opcode = "111111" THEN -- Jump
                    pc <= "000000" & address;

                ELSE -- I-type
                    IF opcode = "000001" THEN -- LDA
                        AR <= immediate;
                        bus_data_in <= mem_data_out;
                        reg_file_ld <= '1';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    Memory_inst : ENTITY work.Memory
        GENERIC MAP (
            DATA_WIDTH => 32,
            ADDR_WIDTH => 10,
            INIT_FILE => "init_memory.mif"
        )
        PORT MAP (
            clk => clk,
            write_enable => '0',
            address => pc(9 DOWNTO 0),
            data_in => (OTHERS => '0'),
            data_out => mem_data_out
        );

    RegFile_inst : ENTITY work.registers
        GENERIC MAP (
            ADDR_WIDTH => 5
        )
        PORT MAP (
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
	SIGNAL AR : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL rt, rs, rd : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
	-- for debugging purpose
	debug_pc <= pc(9 DOWNTO 0);
	debug_ir <= ir;
	debug_opcode <= opcode;
	debug_rt_addr <= rt_addr;
	debug_rs_addr <= rs_addr;
	debug_rd_addr <= rd_addr;
	debug_shamt <= shamt;
	debug_func <= func;
	debug_immediate <= immediate;
	debug_mem_data_out <= mem_data_out;
	debug_ar <= ar;
	-- end for debugging

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			reg_file_ld <= '0';

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
				AR <= (OTHERS => '0');
				rt <= (OTHERS => '0');
				rs <= (OTHERS => '0');
				rd <= (OTHERS => '0');
			ELSE
				-- Fetch stage
				ar <= pc;
				pc <= STD_LOGIC_VECTOR(unsigned(pc) + 1);
				ir <= mem_data_out; -- * note for discussion: this line and the above are swapped to prevent data hazard

				-- Decode stage
				opcode <= ir(31 DOWNTO 26);
				IF opcode = "000000" THEN -- R-type
					rs_addr <= ir(20 DOWNTO 16);
					rt_addr <= ir(25 DOWNTO 21);
					rd_addr <= ir(15 DOWNTO 11);
					shamt <= ir(10 DOWNTO 6);
					func <= ir(5 DOWNTO 0);
				ELSIF opcode = "001010" THEN -- J-type
					address <= ir(25 DOWNTO 0);
				ELSE -- I-type
					rd_addr <= ir(20 DOWNTO 16);
					rs_addr <= ir(25 DOWNTO 21);
					immediate <= Extend_Vector(ir(15 DOWNTO 0), 32);
				END IF;

				-- Execute phase
				IF opcode = "000000" THEN -- R-type
					IF func = "000100" THEN -- XOR
						bus_data_in <= rs XOR rt;
						reg_file_ld <= '1';
					ELSIF func = "000101" THEN -- XORi
						bus_data_in <= rs XOR immediate;
						reg_file_ld <= '1';
					ELSIF func = "000110" THEN -- Add
						bus_data_in <= STD_LOGIC_VECTOR(unsigned(rs) + unsigned(rt));
						reg_file_ld <= '1';
					ELSIF func = "001000" THEN -- Sub
						bus_data_in <= STD_LOGIC_VECTOR(unsigned(rs) - unsigned(rt));
						reg_file_ld <= '1';
					ELSE
						NULL;
					END IF;

					-- J Types
				ELSIF opcode = "111111" THEN -- Jump
					pc <= Extend_Vector(address, 32);

				ELSE -- I-type
					IF opcode = "000001" THEN -- LDA
						AR <= immediate;
						reg_file_ld <= '1';
						bus_data_in <= mem_data_out; -- * note for discussion: this line and the above are swapped to prevent data hazard
					ELSIF func = "000010" THEN -- OUT $rd, 0
						output <= rd;
					ELSIF opcode = "000011" THEN -- XORi
						bus_data_in <= rs XOR immediate;
						reg_file_ld <= '1';
					ELSIF opcode = "0001000" THEN -- Addi
						bus_data_in <= STD_LOGIC_VECTOR(unsigned(rs) + unsigned(immediate));
						reg_file_ld <= '1';
					ELSIF opcode = "000101" THEN -- Subi
						bus_data_in <= STD_LOGIC_VECTOR(unsigned(rs) + unsigned(immediate));
						reg_file_ld <= '1';
					ELSIF opcode = "000110" THEN -- INP $rd, $zero, immediate
						bus_data_in <= immediate;
						reg_file_ld <= '1';
					ELSE
						NULL;
					END IF;
				END IF;
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