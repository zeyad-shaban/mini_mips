LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Bus_Mux IS
    GENERIC (
        BUS_SEL_MUX : INTEGER;
        DATA_WIDTH : INTEGER
    );

    PORT (
        clk : IN STD_LOGIC;
        bus_sel : IN INTEGER RANGE 0 TO BUS_SEL_MUX;
        PC : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        memo : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        DR1 : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        DR2 : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        r1_out : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        r2_out : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

        bus_data : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END Bus_Mux;

ARCHITECTURE Behavioral OF Bus_Mux IS
    SIGNAL data : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
BEGIN
    PROCESS (bus_sel, pc, dr1, dr2, r1_out, r2_out)
    BEGIN
        -- IF (rising_edge(clk)) THEN
            CASE bus_sel IS
                WHEN 0 =>
                    data <= PC;
                WHEN 1 =>
                    data <= DR1;
                WHEN 2 =>
                    data <= DR2;
                WHEN 3 =>
                    data <= r1_out;
                WHEN 4 =>
                    data <= r2_out;
                WHEN 5 =>
                    data <= memo;
                WHEN OTHERS =>
                    data <= (OTHERS => 'Z');
            END CASE;
        -- END IF;
    END PROCESS;

    bus_data <= data;
END Behavioral;