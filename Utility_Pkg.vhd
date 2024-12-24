LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE Utility_Pkg IS
    FUNCTION To_Std_Logic(L : BOOLEAN) RETURN STD_ULOGIC;
END PACKAGE Utility_Pkg;

PACKAGE BODY Utility_Pkg IS
    FUNCTION To_Std_Logic(L : BOOLEAN) RETURN STD_ULOGIC IS
    BEGIN
        IF L THEN
            RETURN '1';
        ELSE
            RETURN '0';
        END IF;
    END FUNCTION To_Std_Logic;
END PACKAGE BODY Utility_Pkg;