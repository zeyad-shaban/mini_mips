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
    -- PY_START_EDITING
    SIGNAL memory : memory_array := (
    0 => "00000100000000010000000000001010", -- LH r1, 10
    1 => "00000100000000100000000000001000", -- LH r2, 8
    2 => "00000000001000100001100000000010", -- Add r3, r1, r2
    3 => "00001000000000110000000000000000", -- OUT R3
    4 => "00001000000001000000000000000000", -- out r4
    5 => "00011000011001000000000000000000", -- MOV r4, r3
    6 => "00001000000001000000000000000000", -- out r4
    OTHERS => (OTHERS => '0')
    );
    -- PY_END_EDITING

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