LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ex1I IS
	PORT(SIGNAL x1,x2,x3 : IN	STD_LOGIC;
		  SIGNAL f	      : OUT STD_LOGIC);
END ex1I;

ARCHITECTURE LogicFunction OF ex1I IS
BEGIN
	f <= (NOT x1 AND NOT x2 AND x3) OR (NOT x1 AND x2 AND NOT x3) OR ( x1 AND NOT x2 AND NOT x3) OR (x1 AND x2 AND x3);
END LogicFunction;	
