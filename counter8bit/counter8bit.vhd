library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter8bit is
	generic( 
		nbits : integer := 8
		);
	port(	
		clk    			: in std_logic;
		reset	 			: in std_logic;
		enable			: in std_logic;
		counter_output : out std_logic_vector(nbits-1 downto 0)
		);
end entity;

architecture behavioral of counter8bit is
begin
	process (clk)
		variable	cnt	: integer := 0;
	begin
		if (falling_edge(clk)) then
			if reset = '1' then				
				cnt := 0;
			elsif enable = '1' then
				cnt := cnt + 1;
			end if;
		end if;
		counter_output <= std_logic_vector(to_unsigned(cnt,nbits));
	end process;
end behavioral;
