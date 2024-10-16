LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PART_A IS
    GENERIC (N : INTEGER := 8);
    PORT (
        A, B : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        CIN : IN STD_LOGIC;
        F : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        COUT : OUT STD_LOGIC
    );
END ENTITY PART_A;

ARCHITECTURE ARCH1 OF PART_A IS
    COMPONENT FULLADDER IS
        GENERIC (N : INTEGER := 8);
        PORT (
            A, B : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            CIN : IN STD_LOGIC;
            SUM : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            COUT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL B_COMPLEMENT : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

    SIGNAL A_IN : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL B_IN : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL CIN_IN : STD_LOGIC;
BEGIN
    B_COMPLEMENT <= NOT B;
    
    A_IN <= B WHEN S = "0011" AND CIN = '1'
        ELSE
        A;

    B_IN <= B WHEN S = "0001"
        ELSE
        B_COMPLEMENT WHEN S = "0010"
        ELSE
        (OTHERS => '1') WHEN S = "0011" AND CIN = '0'
        ELSE
        (OTHERS => '0');

    CIN_IN <= '0' WHEN S = "0011" ELSE
        CIN;

    U0 : FULLADDER GENERIC MAP(N => 8) PORT MAP(A_IN, B_IN, CIN_IN, F, COUT);

END ARCH1;