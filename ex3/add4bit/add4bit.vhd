LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY add4bit IS
	PORT(SIGNAL a,b   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		  SIGNAL cin   : IN  STD_LOGIC;
		  SIGNAL somme : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  SIGNAL cout  : OUT STD_LOGIC);
END add4bit;

ARCHITECTURE LogicFunction OF add4bit IS
SIGNAL c : STD_LOGIC_VECTOR(4 DOWNTO 0);

COMPONENT add1bit
	PORT(SIGNAL a,b,cin    : IN STD_LOGIC;
		  SIGNAL somme,cout : OUT STD_LOGIC);
END COMPONENT;

BEGIN
c(0) <= cin;

fourAdders : FOR i IN 0 to 3 GENERATE
	add : add1bit PORT MAP (a(i),b(i),c(i),somme(i),c(i+1));
END GENERATE fourAdders;

cout <= c(4);
END LogicFunction;