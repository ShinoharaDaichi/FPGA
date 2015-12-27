library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity servo2_chenillard_adc is
port(
	clk				:	in		std_logic;
	
	ena				:	in			std_logic;	-- enable
	reset_n			:	in			std_logic;	-- asynchronous reset
	select_display	:	in			std_logic;	-- select to display either sevo duty value(0) or chenillard delay value (1);
	select_duty		:	in			std_logic; 	-- select the duty value input from  (0) or adc (1) 
	leds_output		:	out		std_logic_vector(9 downto 0);	--	Red LEDs
	leds_output2	:	out		std_logic_vector(7 downto 0);	--	Green	LEDs

	convst			:	out		std_logic;	-- ADC Conversion start
	adc_sck			:	buffer	std_logic;	-- ADC clock
	adc_sdi			:	out		std_logic;	-- FPGA to ADC
	adc_sdo			:	in			std_logic;	--	ADC to FPGA
	
	duty							: in	std_logic_vector(4 downto 0);
	pwm_output_parallel 		: out	std_logic;
	pwm_output_incremental	: out	std_logic;

	changeup			:	in			std_logic;		-- Increment the duty value
	changedown		:	in			std_logic;		-- Decrement the duty value
		
	HEX0				:	out		std_logic_vector(6 downto 0);
	HEX1				:	out		std_logic_vector(6 downto 0);
	HEX2				:	out		std_logic_vector(6 downto 0);
	HEX3				:	out		std_logic_vector(6 downto 0)
	);
end entity;

architecture servo2_chenillard_adc_arch of servo2_chenillard_adc is
	type		HEXS is array (0 to 3) of std_logic_vector(6 downto 0);	
	signal	HEXS_servo2			:	HEXS;
	signal	HEXS_chenillard	:	HEXS;
	signal 	duty_value			:	std_logic_vector(7 downto 0);
	signal 	adc_value			:	std_logic_vector(11 downto 0);
	
	component servo2 is
		port ( 
			clk							:	in		std_logic; 
			duty							:	in		std_logic_vector(7 downto 0);
			pwm_output_parallel		:	out	std_logic;
			pwm_output_incremental	:	out	std_logic;
			enable_pwm					:	in		std_logic;
			reset_pwm					:	in		std_logic;
			changeup						:	in		std_logic;
			changedown					:	in		std_logic;
			HEX0							:	out	std_logic_vector(6 downto 0);
			HEX1							:	out	std_logic_vector(6 downto 0);
			HEX2							:	out	std_logic_vector(6 downto 0);
			HEX3							:	out	std_logic_vector(6 downto 0) 
				);			
	end component;

	component chenillard_pwm_adc is
		port(
			clk				:	in			std_logic;
			leds_output		:	out		std_logic_vector(9 downto 0);
			leds_output2	:	out		std_logic_vector(7 downto 0);
			
			ena				:	in			std_logic;	-- enable
			reset_n			:	in			std_logic;	-- asynchronous reset
			 
			convst			:	out		std_logic;	-- conversion start
			adc_sck			:	buffer	std_logic;	-- adc clock
			adc_sdi			:	out		std_logic;	-- FPGA to ADC
			adc_sdo			:	in			std_logic;	--	ADC to FPGA
	
			adc_value		:	buffer	std_logic_vector(11 downto 0);
					
			HEX0				:	out		std_logic_vector(6 downto 0);
			HEX1				:	out		std_logic_vector(6 downto 0);
			HEX2				:	out		std_logic_vector(6 downto 0);
			HEX3				:	out		std_logic_vector(6 downto 0)
			);
	end component;

begin
	servo2_entity	:	servo2 port map(clk,duty_value,pwm_output_parallel,pwm_output_incremental,ena,reset_n,changeup,changedown,HEXS_servo2(0),HEXS_servo2(1),HEXS_servo2(2),HEXS_servo2(3));
	chenillard_pwm_adc_entity : chenillard_pwm_adc port map(clk,leds_output,leds_output2,ena,reset_n,convst,adc_sck,adc_sdi,adc_sdo,adc_value,HEXS_chenillard(0),HEXS_chenillard(1),HEXS_chenillard(2),HEXS_chenillard(3)); 
	
	select_display_process : process(select_display)
	begin
		if(select_display = '0') then
			HEX0	<=	HEXS_servo2(0);
			HEX1	<=	HEXS_servo2(1);
			HEX2	<=	HEXS_servo2(2);
			HEX3	<=	HEXS_servo2(3);
		else
			HEX0	<=	HEXS_chenillard(0);
			HEX1	<=	HEXS_chenillard(1);
			HEX2	<=	HEXS_chenillard(2);
			HEX3	<=	HEXS_chenillard(3);
		end if;
	end process;
	
	select_duty_process : process(select_duty)
	begin
		if(select_duty = '0') then
			duty_value <= std_logic_vector(resize(unsigned(duty),duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 3300) then
			duty_value <= std_logic_vector(to_unsigned(22,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 3056) then
			duty_value <= std_logic_vector(to_unsigned(21,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 2810) then
			duty_value <= std_logic_vector(to_unsigned(20,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 2564) then
			duty_value <= std_logic_vector(to_unsigned(19,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 2318) then
			duty_value <= std_logic_vector(to_unsigned(18,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 2072) then
			duty_value <= std_logic_vector(to_unsigned(17,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 1826) then
			duty_value <= std_logic_vector(to_unsigned(16,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 1580) then
			duty_value <= std_logic_vector(to_unsigned(15,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 1334) then
			duty_value <= std_logic_vector(to_unsigned(14,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 1088) then
			duty_value <= std_logic_vector(to_unsigned(13,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 842) then
			duty_value <= std_logic_vector(to_unsigned(12,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 596) then
			duty_value <= std_logic_vector(to_unsigned(11,duty_value'length));
		elsif(to_integer(unsigned(adc_value)) > 350) then
			duty_value <= std_logic_vector(to_unsigned(10,duty_value'length));
		else
			duty_value <= std_logic_vector(to_unsigned(9,duty_value'length));
		end if;

	end process;
end servo2_chenillard_adc_arch;

configuration servo2_chenillard_adc_cfg of servo2_chenillard_adc is
	for servo2_chenillard_adc_arch
	
		for all : chenillard_pwm_adc
			use configuration work.chenillard_pwm_adc_cfg;
		end for;		
		
		for all : servo2
			use configuration work.servo_double_hybrid_input_cfg;
		end for;
		
	end for;
end servo2_chenillard_adc_cfg;