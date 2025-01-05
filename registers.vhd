LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY registers IS
    GENERIC (
        ADDR_WIDTH : INTEGER
    );
    PORT (
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        ld : IN STD_LOGIC;

        data_in : IN STD_LOGIC_VECTOR(2 ** ADDR_WIDTH - 1 DOWNTO 0);

        reg_rs_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        reg_rt_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        reg_rd_addr : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

        bus_reg_rs : OUT STD_LOGIC_VECTOR(2 ** ADDR_WIDTH - 1 DOWNTO 0);
        bus_reg_rt : OUT STD_LOGIC_VECTOR(2 ** ADDR_WIDTH - 1 DOWNTO 0);
        bus_reg_rd : OUT STD_LOGIC_VECTOR(2 ** ADDR_WIDTH - 1 DOWNTO 0)
    );
END registers;

ARCHITECTURE Beh OF registers IS
    TYPE reg_array IS ARRAY (0 TO 2 * ADDR_WIDTH - 1) OF STD_LOGIC_VECTOR (2 ** ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL registers : reg_array := (
        0 => (OTHERS => '0'),
        1 => "00000000000000000000000000000101", -- 5
        2 => "00000000000000000000000000000110", -- 6
        OTHERS => (OTHERS => '0')
    );
BEGIN
    PROCESS (clk) BEGIN
        IF (rising_edge(clk)) THEN
            IF (clr = '1') THEN
                registers <= (OTHERS => (OTHERS => '0'));
            ELSIF (ld = '1') THEN
                registers(to_integer(unsigned(reg_rd_addr))) <= data_in;
            END IF;
        END IF;
    END PROCESS;

    bus_reg_rs <= registers(to_integer(unsigned(reg_rs_addr)));
    bus_reg_rt <= registers(to_integer(unsigned(reg_rt_addr)));
    bus_reg_rd <= registers(to_integer(unsigned(reg_rd_addr)));
END ARCHITECTURE Beh;