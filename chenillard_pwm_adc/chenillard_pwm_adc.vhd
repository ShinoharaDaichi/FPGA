library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity chenillard_pwm_adc is
	port(
		clk				:	in		std_logic;
		leds_output		:	out	std_logic_vector(9 downto 0);
		leds_output2	:	out	std_logic_vector(7 downto 0);
		
		ena				:	in			std_logic;	-- enable
		reset_n			:	in			std_logic;	-- asynchronous reset
		 
		convst			:	out		std_logic;	-- conversion start
		adc_sck			:	buffer	std_logic;	-- adc clock
		adc_sdi			:	out		std_logic;	-- FPGA to ADC
		adc_sdo			:	in			std_logic;	--	ADC to FPGA
		
		adc_value		:	buffer	std_logic_vector(11 downto 0);
		
		HEX0				:	out	std_logic_vector(6 downto 0);
		HEX1				:	out	std_logic_vector(6 downto 0);
		HEX2				:	out	std_logic_vector(6 downto 0);
		HEX3				:	out	std_logic_vector(6 downto 0)
		);
end entity;

architecture chenillard_pwm_adc_arch of chenillard_pwm_adc is
	component chenillard_pwm is
		port(
			ena				:	in		std_logic;
			clk				:	in		std_logic;
			reset_n			:	in		std_logic;
			delay				:	in		std_logic_vector(11 downto 0);
			leds_output		:	out	std_logic_vector(9 downto 0)
			);
		end component;

	component adc is
		generic(
			nbits_cmd						:	integer	:=	6;			-- number of bits to send
			nbits_read						:	integer	:=	12;		-- number of bits to read
			clk_div							:	integer	:=	100;		-- 500kHz sampling frequency for a 50MHz clock input
			convst_wait_cycles			:	integer	:=	100;		-- number of cycle during which the conversion start pulse will be HIGH
			convst_wait_after_cycles	:	integer	:=	100_000;	-- number of cycle after the conversion start pulse we wait to get the adc ready
			wait_between_read_cycles	:	integer	:=	5_000_000;	-- number of cycle after read we wait before starting a new read
			
			s_d			:	std_logic	:= '1';												-- single-ended/N_differential bit
			o_s			:	std_logic	:= '1';												-- odd/ N_sign bit
			address		:	std_logic_vector(1 downto 0) := (0 => '0', 1 => '0');	-- address select bits
			uni			:	std_logic	:= '1';												-- unipolar/N_bipolar bit
			slp			:	std_logic	:= '0'												-- no_sleep/N_yes_sleep bit
			);

		port(
			ena			:	in			std_logic;	-- enable
			clk			:	in			std_logic;	-- system clock
			reset_n		:	in			std_logic;	-- asynchronous reset
			 
			convst		:	out		std_logic;	-- conversion start
			adc_sck		:	buffer	std_logic;	-- adc clock
			adc_sdi		:	out		std_logic;	-- FPGA to ADC
			adc_sdo		:	in			std_logic;	--	ADC to FPGA
			
			outputs		:	buffer	std_logic_vector(nbits_read-1 downto 0);	-- latched value read from the adc
			
			leds_output	:	out	std_logic_vector(7 downto 0);
			
			HEX0			:	out	std_logic_vector(6 downto 0);
			HEX1			:	out	std_logic_vector(6 downto 0);
			HEX2			:	out	std_logic_vector(6 downto 0);
			HEX3			:	out	std_logic_vector(6 downto 0)		 
			);
	end component;

	begin
		chenillard_pwm_entity : chenillard_pwm port map(ena,clk,reset_n,adc_value,leds_output); 
		adc_entity : adc port map(ena, clk, reset_n, convst, adc_sck, adc_sdi, adc_sdo, adc_value,leds_output2, HEX0, HEX1, HEX2, HEX3);
end chenillard_pwm_adc_arch;

CONFIGURATION chenillard_pwm_adc_cfg OF chenillard_pwm_adc IS
	FOR chenillard_pwm_adc_arch
		FOR ALL : adc	
			USE CONFIGURATION WORK.adc_quad_segment_cfg;
		END FOR;
	END FOR;
END chenillard_pwm_adc_cfg;