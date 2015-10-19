LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex2 IS
	PORT(SIGNAL x,y : IN	STD_LOGIC;
		  SIGNAL f	 : OUT STD_LOGIC);
END ex2;

ARCHITECTURE LogicFunction OF ex2 IS
SIGNAL f1,f2 : STD_LOGIC;

COMPONENT nandEntity
	PORT(SIGNAL x1,x2 : IN	STD_LOGIC;
		  SIGNAL f	   : OUT STD_LOGIC);
END COMPONENT;

BEGIN
	nand1 : nandEntity
	PORT MAP (NOT x, y, f1);
	
	nand2 : nandEntity
	PORT MAP (x, NOT y, f2);
	
	nand3 : nandEntity
	PORT MAP (f1, f2, f);
END LogicFunction;
	
	
