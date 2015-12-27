library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity single_pwm is
  generic(
      sys_clk         : integer := 50_000_000;											--system clock frequency in Hz
      pwm_freq        : integer := 50;														--PWM switching frequency in Hz
      bits_resolution : integer := 8);														--bits of resolution setting the duty cycle
  port(
      clk       : in  std_logic;																--system clock
      reset_n   : in  std_logic;																--asynchronous reset
      ena       : in  std_logic;																--latches in new duty cycle
      duty      : in  std_logic_vector(bits_resolution-1 downto 0);				--duty cycle
      pwm_out   : out std_logic);															--pwm output
end entity;

architecture pwm_arch of single_pwm is
	constant	period			:	integer := sys_clk/pwm_freq;							--number of clocks in one pwm period
	signal	count				:  integer range 0 to period - 1 := 0;					--array of period counters
	signal	half_duty_new	:	integer range 0 to period/2	:= 0;					--new duty inputted
	signal	half_duty		:	integer range 0 TO period/2	:=	0;					--current duty outputted
begin
	process(clk, reset_n)
	begin
		if(reset_n = '0') then																	--asynchronous reset
			count <= 0;																				--clear counter
			pwm_out <= '0';																		--clear pwm output
		elsif(clk'event and clk = '1') then													--if the clock is on a rising edge
			if(ena = '1') then																	--if the pwm is enabled, latch in new duty cycle
				half_duty_new <= conv_integer(duty)*period/(2**bits_resolution)/2;--calculate the moment the pwm must fall from the duty inputted
			else
				half_duty_new <= 0;																--if the output is not enabled
			end if;
		
			if(count = period - 1) then														--end of period reached
				count <= 0;																			--clear counter
				half_duty <= half_duty_new;													--set most recent duty cycle value
			else																						--end of period not reached
				count <= count + 1;																--increment counter
			end if;
	
			if(count = half_duty) then															--we reach the moment we must output a falling edge
				pwm_out <= '0';																	
			elsif(count = period - half_duty) then											--if we didn't reach that moment yet, just output a high signal
				pwm_out <= '1';
			end if;		
			
		end if;
	end process;
end pwm_arch;
