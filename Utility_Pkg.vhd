LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

PACKAGE Utility_Pkg IS
    FUNCTION To_Std_Logic(L : BOOLEAN) RETURN STD_ULOGIC;
    FUNCTION Extend_Vector(vec : STD_LOGIC_VECTOR; new_size : INTEGER) RETURN STD_LOGIC_VECTOR;
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

    FUNCTION Extend_Vector(vec : STD_LOGIC_VECTOR; new_size : INTEGER) RETURN STD_LOGIC_VECTOR IS
        VARIABLE extended_vec : STD_LOGIC_VECTOR(new_size - 1 DOWNTO 0);
        VARIABLE vec_size : INTEGER := vec'LENGTH;
    BEGIN
        IF new_size <= vec_size THEN
            RETURN vec(vec_size - 1 DOWNTO vec_size - new_size);
        ELSE
            extended_vec := (OTHERS => '0');
            extended_vec(new_size - 1 DOWNTO new_size - vec_size) := vec;
            RETURN extended_vec;
        END IF;
    END FUNCTION Extend_Vector;

END PACKAGE BODY Utility_Pkg;