LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY mux16 IS
	PORT(SIGNAL selection_lines : IN	 UNSIGNED(3 DOWNTO 0);
		  SIGNAL input_lines     : IN	 STD_LOGIC_VECTOR(15 DOWNTO 0);
		  SIGNAL output_line     : OUT STD_LOGIC);
END mux16;

ARCHITECTURE LogicFunction OF mux16 IS

BEGIN

output_line <= input_lines(to_integer(selection_lines));

END LogicFunction;