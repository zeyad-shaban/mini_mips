LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY registers IS
    GENERIC (
        DATA_WIDTH : INTEGER;
        ADDR_WIDTH : INTEGER
    );
    PORT (
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        ld1 : IN STD_LOGIC;

        data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

        reg1_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        reg2_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

        data_out1 : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        data_out2 : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END registers;

ARCHITECTURE Beh OF registers IS
    TYPE reg_array IS ARRAY (0 TO 2 * ADDR_WIDTH - 1) OF STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL registers : reg_array := (OTHERS => (OTHERS => '0'));
BEGIN
    PROCESS (clk) BEGIN
        IF (clr = '1') THEN
        ELSIF (ld1 = '1') THEN
            registers(to_integer(unsigned(reg1_addr))) <= data_in;
        END IF;

        data_out1 <= registers(to_integer(unsigned(reg1_addr)));
        data_out2 <= registers(to_integer(unsigned(reg2_addr)));
    END PROCESS;
END ARCHITECTURE Beh;