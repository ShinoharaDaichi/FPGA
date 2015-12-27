library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity chenillard_pwm is
port(
	ena				:	in		std_logic;								-- Enable signal
	clk				:	in		std_logic;
	reset_n			:	in		std_logic;
	delay				:	in		std_logic_vector(11 downto 0);	-- Number of rising edge of the clk we count (multipied by 2000) before moving the position
	leds_output		:	out	std_logic_vector(9 downto 0));
end entity;

architecture chenillard_arch of chenillard_pwm is
	type		machine is (calculate_duty_state,go_state,wait_state);
	signal	state	:	machine := calculate_duty_state;
	
	type		duty_values is array (0 to 9) of std_logic_vector(7 downto 0);	
	signal	duty_value	:	duty_values := (others => (others => '0'));
	signal 	delay_value	:	integer	:= 0;
	
	component single_pwm is
		generic(
			sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
			pwm_freq        : integer := 50_000;											--PWM switching frequency in Hz
			bits_resolution : integer := 8);													--bits of resolution setting the duty cycle
		port(
			clk       : in  std_logic;															--system clock
			reset_n   : in  std_logic;															--asynchronous reset
			ena       : in  std_logic;															--latches in new duty cycle
			duty      : in  std_logic_vector(bits_resolution-1 downto 0);			--duty cycle
			pwm_out   : out std_logic);														--pwm output
	end component;

	begin
		pwms	: for i in 0 to 9 generate
			pwm : single_pwm port map(clk, reset_n, ena, duty_value(i), leds_output(i));
		end generate pwms;
		
	delay_value <= to_integer(unsigned(delay));
	
	process(clk, reset_n)
		variable i : signed(9 downto 0)	:= (others => '0');
		variable direction	:	bit		:= '0';
		 
		variable delay_count	:	integer	:= 0;
		variable duty_count	:	integer 	:= 0;
		variable difference	:	signed(9 downto 0) := (others => '0');
	begin
		if(ena = '1') then
			if(reset_n = '0') then 
				state <= calculate_duty_state;
			elsif(rising_edge(clk)) then		
				case state is
					when	calculate_duty_state	=>
						difference := abs(i - to_signed(duty_count,difference'length));
						if(((direction = '0') AND (duty_count > to_integer(i))) OR ((direction = '1') AND (duty_count < to_integer(i)))) then
							duty_value(duty_count) <= (others => '0');	-- So that the chenillard doesn't have two 'tails', we output nothing to the LED in front of the 'head' of the chenillard					
						elsif(difference = 0) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(255,8));	-- The 'head' of the chenillard with maximum duty value
						elsif(difference = 1) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(127,8));	
						elsif(difference = 2) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(63,8));	
						elsif(difference = 3) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(31,8));	
						elsif(difference = 4) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(15,8));	
						elsif(difference = 5) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(7,8));	
						elsif(difference = 6) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(3,8));	
						elsif(difference = 7) then
							duty_value(duty_count) <= std_logic_vector(to_unsigned(1,8));		-- The 'tail' of the chenillard with minimum duty value
						else
							duty_value(duty_count) <= (others => '0');
						end if;				
						
						if(duty_count < 9) then				-- We loop for each LED to calculate its duty value 
							duty_count := duty_count + 1;
							state <= calculate_duty_state;
						else
							duty_count := 0;					-- When we finish looping through all the 10 LEDs, we move the chenillard's position by one
							state <= go_state;
						end if;
												
					when	go_state	=>							-- Depending on the direction bit, we either move to the right (when  '0') or to the left (when '1')
						if(direction = '0') then
							i := i + 1;
						else
							i := i - 1;
						end if;
				
						if( i = 0 OR i = 9) then			--	When the chenillard reach one of the edges, we go in the opposite direction
							direction := not direction;
						end if;
						
						state <= wait_state;
						
					when wait_state =>						--	We then wait for a number of cycles before moving the chenillard so that the movement is visible to the human eye				
						if(delay_count < delay_value*2000) then
							delay_count := delay_count + 1;
							state <= wait_state;
						else
							delay_count := 0;
							state <= calculate_duty_state;
						end if;
				end case;
			end if;
		end if;
		
	end process;
end chenillard_arch;