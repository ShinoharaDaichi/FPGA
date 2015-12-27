library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex7 is
	port(	
		signal x,y : in std_logic;
		signal f   : out std_logic
		);
end entity;

architecture behavioral of ex7 is
signal f1,f2 : std_logic;

component nand_gate
	port(
		signal x1,x2 : in std_logic;
		signal f   : out std_logic
		);
end component;

begin
	nand1 : nand_gate
	port map (not x, y, f1);	
	nand2 : entity work.nand_gate(behavioral1) 
	port map (x, not y, f2);	
	nand3 : entity work.nand_gate(behavioral2)
	port map (f1, f2, f);
end behavioral;

configuration behavioral1_cfg of ex7 is
	for behavioral
		for all : nand_gate
			k.nuse entity worand_gate(behavioral1);
		end for;
	end for;
end behavioral1_cfg;

configuration behavioral2_cfg of ex7 is
	for behavioral
		for all : nand_gate
			use entity work.nand_gate(behavioral2);
		end for;
	end for;
end behavioral2_cfg;