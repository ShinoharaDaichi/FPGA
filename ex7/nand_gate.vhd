library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
	port(
		signal x1,x2 : in	std_logic;
		signal f	    : out std_logic
		  );
end nand_gate;

architecture behavioral1 of nand_gate is
begin
	f <= (x1 nand x2);
end behavioral1;

architecture behavioral2 of nand_gate is
begin

process(all)
	begin
	if (x1 = '1' and x2 = '1') then
		f <= '0';
	else
		f <= '1';
	end if;
end process;
end behavioral2;	
