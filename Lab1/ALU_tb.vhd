LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ALU_TB IS
END ENTITY ALU_TB;

ARCHITECTURE BEHAVIOUR OF ALU_TB IS

    COMPONENT ALU IS
        PORT (
            A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            OPERATION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            CIN : IN STD_LOGIC;
            F : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            COUT : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL OPERATION : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL SEL : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL CIN : STD_LOGIC := '0';
    SIGNAL F : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL COUT : STD_LOGIC;

BEGIN
    A1 : ALU PORT MAP(A, B, OPERATION, SEL, CIN, F, COUT);
    TEST : PROCESS
    BEGIN
        SEL <= "01";
        OPERATION <= "0100";
        A <= "11110000";
        B <= "10110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "01";
        OPERATION <= "0101";
        A <= "11110000";
        B <= "00001011";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "01";
        OPERATION <= "0110";
        A <= "11110000";
        B <= "10110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "01";
        OPERATION <= "0111";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "10";
        OPERATION <= "1000";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "10";
        OPERATION <= "1001";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "10";
        OPERATION <= "1010";
        A <= "11110000";
        CIN <= '0';

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "10";
        OPERATION <= "1011";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "11";
        OPERATION <= "1100";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "11";
        OPERATION <= "1101";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------    
        SEL <= "11";
        OPERATION <= "1110";
        A <= "11110000";
        CIN <= '0';

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------    
        SEL <= "11";
        OPERATION <= "1111";
        A <= "11110000";

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "10";
        OPERATION <= "1010";
        A <= "11110000";
        CIN <= '1';

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        SEL <= "11";
        OPERATION <= "1110";
        A <= "11110000";
        CIN <= '1';

        WAIT FOR 10 NS;
        -----------------------------------------------------------------------------------------------------
        WAIT;
    END PROCESS;

END BEHAVIOUR;