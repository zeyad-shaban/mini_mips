LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;

ENTITY Memory IS
	GENERIC (
		DATA_WIDTH : INTEGER;
		ADDR_WIDTH : INTEGER;
		INIT_FILE : STRING
	);
	PORT (
		clk : IN STD_LOGIC;
		write_enable : IN STD_LOGIC;
		read_enable : IN STD_LOGIC;
		address : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
		data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
	);
END Memory;
ARCHITECTURE Beh OF Memory IS
	TYPE memory_array IS ARRAY (0 TO (2 ** ADDR_WIDTH) - 1) OF STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	SIGNAL memory : memory_array := (
		"1110000101011110", "0000000000000000", "0000000000000000", "0000000000000000",
		"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
		"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
		"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000"
	);

	-- todo read memory from file
	--	attribute ram_init_file : string;
	--	attribute ram_init_file of memory: signal is "init_memory.mif";

BEGIN
	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF write_enable = '1' THEN
				memory(to_integer(unsigned(address))) <= data_in;
			ELSIF read_enable = '1' THEN
				data_out <= memory(to_integer(unsigned(address)));
			END IF;

		END IF;
	END PROCESS;
END ARCHITECTURE;