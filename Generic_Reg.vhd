LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Generic_Reg IS
    GENERIC (
        DATA_WIDTH : INTEGER
    );
    PORT (
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        inc : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        en : IN STD_LOGIC;

        data_in : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Beh OF Generic_Reg IS
    SIGNAL data : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
BEGIN
    PROCESS (clk) BEGIN
        IF (rising_edge(clk)) THEN
            IF (clr = '1') THEN
                data <= (OTHERS => '0');
            ELSIF (inc = '1') THEN
                data <= STD_LOGIC_VECTOR(unsigned(data) + 1);
            ELSIF (ld = '1') THEN
                data <= data_in;
            ELSIF (en = '1') THEN
                data_out <= data;
            END IF;
        END IF;
    END PROCESS;
END Beh;