LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Generic_Reg IS
    GENERIC (
        ADDR_WIDTH : INTEGER
    );
    PORT (
        clk : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        inc: in std_logic;
        ld : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        data_out : INOUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Beh OF Generic_Reg IS
BEGIN
    PROCESS (clk) BEGIN
        IF (rising_edge(clk)) THEN
            IF (clr = '1') THEN
                data_out <= (OTHERS => '0');
            elsif(inc ='1') then
                -- data_out <= std_logic_vector(unsigned(data_out + 1));
            ELSIF (ld = '1') THEN
                data_out <= data_in;
            END IF;
        END IF;
    END PROCESS;
END Beh;