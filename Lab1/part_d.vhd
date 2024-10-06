LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU_PartD IS
    PORT (
        A : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Cin : IN STD_LOGIC;
        S : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        F : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        Cout : OUT STD_LOGIC);
END ALU_PartD;

ARCHITECTURE Behavioral OF ALU_PartD IS
BEGIN
    PROCESS (A, Cin, S)
    BEGIN
        CASE S IS
            WHEN "1100" =>
                F <= '0' & A(7 DOWNTO 1);
                Cout <= A(0);

            WHEN "1101" =>
                F <= A(0) & A(7 DOWNTO 1);
                Cout <= A(0);

            WHEN "1110" =>
                F <= Cin & A(7 DOWNTO 1);
                Cout <= A(0);

            WHEN "1111" =>
                F <= A(7) & A(7 DOWNTO 1);
                Cout <= A(0);

            WHEN OTHERS =>
                F <= (OTHERS => '0');
                Cout <= '0';
        END CASE;
    END PROCESS;
END Behavioral;