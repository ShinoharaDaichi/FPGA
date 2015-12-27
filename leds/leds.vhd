library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity leds is
port(
	numeric_value	:	in	std_logic_vector(9 downto 0);
	leds_output		:	out	std_logic_vector(9 downto 0));

end entity;

architecture leds_arch of leds is	
begin		
	process(numeric_value)
		variable	num	:	integer;
		variable i : integer RANGE 0 TO 9;
	begin
		num := to_integer(unsigned(numeric_value));

		if( num > 102) then
			leds_output(0) <= '1';
		else
			leds_output(0) <= '0';
		end if;		
	
		if( num > 205) then
			leds_output(1) <= '1';
		else
			leds_output(1) <= '0';
		end if;
		
		if( num > 307) then
			leds_output(2) <= '1';
		else
			leds_output(2) <= '0';
		end if;
		
		if( num > 410) then
			leds_output(3) <= '1';
		else
			leds_output(3) <= '0';
		end if;
		
		if( num > 512) then
			leds_output(4) <= '1';
		else
			leds_output(4) <= '0';
		end if;
		
		if( num > 614) then
			leds_output(5) <= '1';
		else
			leds_output(5) <= '0';
		end if;
		
		if( num > 717) then
			leds_output(6) <= '1';
		else
			leds_output(6) <= '0';
		end if;
		
		if( num > 819) then
			leds_output(7) <= '1';
		else
			leds_output(7) <= '0';
		end if;
		
		if( num > 921) then
			leds_output(8) <= '1';
		else
			leds_output(8) <= '0';
		end if;
		
		if( num = 1023 ) then
			leds_output(9) <= '1';
		else
			leds_output(9) <= '0';
		end if;
		
	end process;
end leds_arch;