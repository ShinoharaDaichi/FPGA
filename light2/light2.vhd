LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY light2 IS
	PORT(SIGNAL x1,x2 : IN	STD_LOGIC;
		  SIGNAL f	   : OUT STD_LOGIC);
END light2;

ARCHITECTURE LogicFunction OF light2 IS
BEGIN
	f <= (x1 AND NOT x2) OR (NOT x1 AND x2);
END LogicFunction;	
