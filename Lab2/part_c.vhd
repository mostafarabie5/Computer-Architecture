LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PART_C IS
    GENERIC (N : INTEGER := 8);
    PORT (
        A : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        CIN : IN STD_LOGIC;
        F : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        COUT : OUT STD_LOGIC);
END ENTITY PART_C;

ARCHITECTURE ARCH1 OF PART_C IS
BEGIN
    F <= A(N - 2 DOWNTO 0) & '0' WHEN S = "1000"
        ELSE
        A(N - 2 DOWNTO 0) & A(N - 1) WHEN S = "1001"
        ELSE
        A(N - 2 DOWNTO 0) & CIN WHEN S = "1010"
        ELSE
        "00000000" WHEN S = "1011";

    COUT <= A(N - 1) WHEN S = "1000" OR S = "1001" OR S = "1010"
        ELSE
        '0' WHEN S = "1011";
END ARCH1;