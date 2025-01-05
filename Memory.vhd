LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;

ENTITY Memory IS
    GENERIC (
        DATA_WIDTH : INTEGER := 32;
        ADDR_WIDTH : INTEGER := 10; -- 1024 memory locations
        INIT_FILE : STRING := ""
    );
    PORT (
        clk : IN STD_LOGIC;
        write_enable : IN STD_LOGIC;
        address : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END Memory;

ARCHITECTURE Beh OF Memory IS
    TYPE memory_array IS ARRAY (0 TO (2 ** ADDR_WIDTH) - 1) OF STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL memory : memory_array := (
        -- 0 => "00000000010000010000100000000010", -- ADD r1, r2, r1
        0 => "00001000000000010000000000000000", -- OUT R1
        OTHERS => (OTHERS => '0')
    );

BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF write_enable = '1' THEN
                memory(to_integer(unsigned(address))) <= data_in;
            END IF;
        END IF;
    END PROCESS;
    data_out <= memory(to_integer(unsigned(address)));
END ARCHITECTURE;