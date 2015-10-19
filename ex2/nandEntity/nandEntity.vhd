LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nandEntity IS
	PORT(SIGNAL x1,x2 : IN	STD_LOGIC;
		  SIGNAL f	   : OUT STD_LOGIC);
END nandEntity;

ARCHITECTURE LogicFunction OF nandEntity IS
BEGIN
	f <= (x1 nand x2);
END LogicFunction;	
