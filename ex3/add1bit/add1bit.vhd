LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY add1bit IS
	PORT(SIGNAL a,b,cin : IN STD_LOGIC;
		  SIGNAL somme,cout : OUT STD_LOGIC);
END add1bit;

ARCHITECTURE LogicFunction OF add1bit IS
BEGIN
	somme <= (NOT a AND NOT b AND cin) OR (NOT a AND b AND NOT cin) OR (a AND NOT b AND NOT cin) OR (a AND b AND cin);
	cout <= (NOT a AND b AND cin) OR (a AND NOT b AND cin) OR (a AND b AND NOT cin) OR (a AND b AND cin);
END LogicFunction;	

