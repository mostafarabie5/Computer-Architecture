LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ADDER1BIT IS
    PORT (
        a, b : IN STD_LOGIC;
        cin : IN STD_LOGIC;
        sum : OUT STD_LOGIC;
        cout : OUT STD_LOGIC
    );
END ENTITY ADDER1BIT;

ARCHITECTURE V1 OF ADDER1BIT IS
BEGIN
    sum <= a XOR b XOR cin;
    cout <= (a AND b) OR (cin AND (a XOR b));
END V1;