library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity chenillard is
port(
	clk				:	in		std_logic;
	delay				:	in		std_logic_vector(7 downto 0);
	leds_output		:	out	std_logic_vector(9 downto 0);
	leds_output2	:	out	std_logic_vector(9 downto 0));

end entity;

architecture chenillard_arch of chenillard is
	type		machine is (go_state,wait_state);
	signal	state	:	machine; 
begin		
	process
		variable i : integer range 1 to 512;
		variable direction : bit := '0';
		variable delay_value	:	integer; 
		variable delay_count	:	integer := 0; 
	begin
		wait until rising_edge(clk);
		
		state <= go_state;
		
		case state is
			when	go_state	=>
				leds_output <= std_logic_vector(to_unsigned(i, leds_output'length));
				leds_output2 <= not std_logic_vector(to_unsigned(i, leds_output'length)); 
						
				if(direction = '0') then
					i := i * 2;
				else
					i := i / 2;
				end if;
		
				if( i = 1 OR i = 512) then
					direction := not direction;
				end if;
				
				state <= wait_state;
				
			when wait_state =>
				delay_value := to_integer(unsigned(delay));
				
				if(delay_count < (delay_value*50_000)) then
					delay_count := delay_count + 1;
					state <= wait_state;
				else
					delay_count := 0;
					state <= go_state;
				end if;
		end case;		
		
	end process;
end chenillard_arch;