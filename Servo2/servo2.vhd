LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.all;

ENTITY servo2 IS
	PORT ( 
		clk			: IN STD_LOGIC; 
		duty			: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pwm_output_parallel		: OUT STD_LOGIC;
		pwm_output_incremental	: OUT STD_LOGIC;
		enable_pwm	:	IN		STD_LOGIC;
		reset_pwm	:	IN		STD_LOGIC;
		changeup		:	IN		STD_LOGIC;
		changedown	:	IN		STD_LOGIC;
		HEX0			:	out	std_logic_vector(6 downto 0);
		HEX1			:	out	std_logic_vector(6 downto 0);
		HEX2			:	out	std_logic_vector(6 downto 0);
		HEX3			:	out	std_logic_vector(6 downto 0) 
         );			
END servo2;

ARCHITECTURE servo_double_hybrid_input OF servo2 IS

COMPONENT servo IS 
	PORT ( 
		clk	 		:	IN		STD_LOGIC; 
		duty  		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
		pwm_output :	OUT 	STD_LOGIC;
		enable_pwm :	IN		STD_LOGIC;
		reset_pwm  :	IN		STD_LOGIC;
		changeup 	:	IN		STD_LOGIC;
		changedown :	IN		STD_LOGIC;
		HEX0			:	out	std_logic_vector(6 downto 0);
		HEX1			:	out	std_logic_vector(6 downto 0);
		HEX2			:	out	std_logic_vector(6 downto 0);
		HEX3			:	out	std_logic_vector(6 downto 0)  
         );
END COMPONENT;

BEGIN

	servo_parallel_input : servo PORT MAP(clk,duty,pwm_output_parallel,enable_pwm,reset_pwm,changeup,changedown,HEX0,HEX1);
	servo_incremental_input : servo PORT MAP(clk,duty,pwm_output_incremental,enable_pwm,reset_pwm,changeup,changedown,HEX2,HEX3);

END servo_double_hybrid_input;

CONFIGURATION servo_double_hybrid_input_cfg OF servo2 IS
	FOR servo_double_hybrid_input
	
		FOR servo_parallel_input : servo	
			USE CONFIGURATION WORK.servo_parallel_input_double_segment_cfg;
		END FOR;
		
		FOR servo_incremental_input : servo	
			USE CONFIGURATION WORK.servo_incremental_input_double_segment_cfg;
		END FOR;
		
	END FOR;
END servo_double_hybrid_input_cfg;