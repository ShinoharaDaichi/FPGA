LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.all;

ENTITY servo IS
	PORT ( 
		clk			:	IN		STD_LOGIC; 
		duty			:	IN		STD_LOGIC_VECTOR( 7 DOWNTO 0 );
		pwm_output	:	OUT	STD_LOGIC;
		enable_pwm	:	IN		STD_LOGIC;
		reset_pwm	:	IN		STD_LOGIC;
		changeup		:	IN		STD_LOGIC;
		changedown	:	IN		STD_LOGIC;
		HEX0			:	out	std_logic_vector(6 downto 0);
		HEX1			:	out	std_logic_vector(6 downto 0);
		HEX2			:	out	std_logic_vector(6 downto 0);
		HEX3			:	out	std_logic_vector(6 downto 0)
		);	
END servo;

ARCHITECTURE servo_parallel_input_quad_segment OF servo IS
	SIGNAL temp_16 : STD_LOGIC_VECTOR( 15 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits

component single_pwm is
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;													--PWM switching frequency in Hz (50)
      bits_resolution : integer := 8);													--bits of resolution setting the duty cycle
  port(
      clk       : in  std_logic;															--system clock
      reset_n   : in  std_logic;															--asynchronous reset
      ena       : in  std_logic;															--latches in new duty cycle
      duty      : in  std_logic_vector(bits_resolution-1 downto 0);			--duty cycle
      pwm_out   : out std_logic);														--pwm output
end component;

COMPONENT quad_segment7 IS 
	PORT ( 
		number	: 	IN 	STD_LOGIC_VECTOR(15 DOWNTO 0);
		input		: 	IN  	STD_LOGIC;
		cout		: 	OUT 	STD_LOGIC;
		HEX0		:	out	std_logic_vector(6 downto 0);
		HEX1		:	out	std_logic_vector(6 downto 0);
		HEX2		:	out	std_logic_vector(6 downto 0);
		HEX3		:	out	std_logic_vector(6 downto 0) 
         );
END COMPONENT;

BEGIN
	temp_16 <= STD_LOGIC_VECTOR(RESIZE(UNSIGNED(duty), temp_16'LENGTH)); -- Resizes an 8 bits sized vector to an 16 bits sized vector
	
	pwm_1 : single_pwm PORT MAP(clk, reset_pwm, enable_pwm, duty, pwm_output);
	quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX0,HEX1,HEX2,HEX3);

END servo_parallel_input_quad_segment;


ARCHITECTURE servo_incremental_input_quad_segment OF servo IS
	SIGNAL temp_8 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
	SIGNAL temp_16 : STD_LOGIC_VECTOR( 15 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
	SIGNAL duty_value : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
	
	SIGNAL lastChangeup : STD_LOGIC := '1'; -- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state
	SIGNAL lastChangedown : STD_LOGIC := '1'; -- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state
	
	SIGNAL slow_clk		:	STD_LOGIC	:=	'0';
component single_pwm is
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;													--PWM switching frequency in Hz
      bits_resolution : integer := 8);													--bits of resolution setting the duty cycle
  port(
      clk       : in  std_logic;															--system clock
      reset_n   : in  std_logic;															--asynchronous reset
      ena       : in  std_logic;															--latches in new duty cycle
      duty      : in  std_logic_vector(bits_resolution-1 downto 0);			--duty cycle
      pwm_out   : out std_logic);														--pwm output
end component;

COMPONENT quad_segment7 IS 
	PORT ( 
		number	: 	IN 	STD_LOGIC_VECTOR(15 DOWNTO 0);
		input		: 	IN  	STD_LOGIC;
		cout		: 	OUT 	STD_LOGIC;
		HEX0		:	out	std_logic_vector(6 downto 0);
		HEX1		:	out	std_logic_vector(6 downto 0);
		HEX2		:	out	std_logic_vector(6 downto 0);
		HEX3		:	out	std_logic_vector(6 downto 0) 
         );
END COMPONENT;

BEGIN
	PROCESS(clk)
		VARIABLE clk_div_count	:	INTEGER	:= 0;
	BEGIN
		IF(rising_edge(clk))THEN 
			clk_div_count := clk_div_count + 1;
			
			IF(clk_div_count = 1_000_000) THEN
				slow_clk <= not slow_clk;
				clk_div_count := 0;
			END IF;
		END IF;
	END PROCESS;

PROCESS(slow_clk)
	BEGIN
		IF(rising_edge(slow_clk))THEN -- the button is LOW when pressed
			lastChangeup <= changeup;
			lastChangedown <= changedown;
			
			IF(changeup = '0' AND lastChangeup = '1') THEN
				duty_value <= duty_value + 1;
			END IF;
			IF(changedown = '0' AND lastChangedown = '1') THEN
				duty_value <= duty_value - 1;
			END IF;
		END IF;
		
		temp_8 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value,temp_8'LENGTH)); -- Converts an integer to an unsigned, then to a vector
		temp_16 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value,temp_16'LENGTH)); -- Converts an integer to an unsigned, then to a vector

END PROCESS;

	pwm_1 : single_pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8, pwm_output);
	quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX0,HEX1,HEX2,HEX3);

END servo_incremental_input_quad_segment;


ARCHITECTURE servo_parallel_input_double_segment OF servo IS

component single_pwm is
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;													--PWM switching frequency in Hz
      bits_resolution : integer := 8);													--bits of resolution setting the duty cycle
  port(
      clk       : in  std_logic;															--system clock
      reset_n   : in  std_logic;															--asynchronous reset
      ena       : in  std_logic;															--latches in new duty cycle
      duty      : in  std_logic_vector(bits_resolution-1 downto 0);			--duty cycle
      pwm_out   : out std_logic);														--pwm output
end component;

COMPONENT double_segment7 IS 
	PORT ( 
		number	:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
		input		:	IN		STD_LOGIC;
		cout		:	OUT	STD_LOGIC;
		HEX0		:	out	std_logic_vector(6 downto 0);
		HEX1		:	out	std_logic_vector(6 downto 0)
			); 
END COMPONENT;

BEGIN
	pwm_1 : single_pwm PORT MAP(clk, reset_pwm, enable_pwm, duty, pwm_output); 
	quad_segment7_1 : double_segment7 PORT MAP(duty,'0',open,HEX0,HEX1);

END servo_parallel_input_double_segment;


ARCHITECTURE servo_incremental_input_double_segment OF servo IS
	TYPE	 directionType IS (up,down);
	SIGNAL sdirection       : directionType;  
	SIGNAL temp_8 : STD_LOGIC_VECTOR( 7 DOWNTO 0 );	-- Will contain the resized 8 bits value of the duty
	SIGNAL duty_value : INTEGER RANGE 0 to 255;		-- Value of the PWM frequency;
	
	SIGNAL lastChangeup : STD_LOGIC := '1';			-- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state
	SIGNAL lastChangedown : STD_LOGIC := '1';			-- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state

	SIGNAL slow_clk		:	STD_LOGIC	:=	'0';
	
component single_pwm is
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;													--PWM switching frequency in Hz
      bits_resolution : integer := 8);													--bits of resolution setting the duty cycle
  port(
      clk       : in  std_logic;															--system clock
      reset_n   : in  std_logic;															--asynchronous reset
      ena       : in  std_logic;															--latches in new duty cycle
      duty      : in  std_logic_vector(bits_resolution-1 downto 0);			--duty cycle
      pwm_out   : out std_logic);														--pwm output
end component;

COMPONENT double_segment7 IS 
	PORT ( 
		number	:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
		input		:	IN		STD_LOGIC;
		cout		:	OUT	STD_LOGIC;
		HEX0		:	out	std_logic_vector(6 downto 0);
		HEX1		:	out	std_logic_vector(6 downto 0)
			); 
END COMPONENT;

BEGIN

PROCESS(clk)
		VARIABLE clk_div_count	:	INTEGER	:= 0;
	BEGIN
		IF(rising_edge(clk))THEN 
			clk_div_count := clk_div_count + 1;
			
			IF(clk_div_count = 1_000_000) THEN
				slow_clk <= not slow_clk;
				clk_div_count := 0;
			END IF;
		END IF;
	END PROCESS;
	
PROCESS(slow_clk)
	BEGIN
	IF(rising_edge(slow_clk))THEN -- the button is LOW when pressed
		lastChangeup <= changeup;
		lastChangedown <= changedown;
		
		IF(changeup = '0' AND lastChangeup = '1') THEN
			duty_value <= duty_value + 1;
		ELSIF(changedown = '0' AND lastChangedown = '1') THEN
			duty_value <= duty_value - 1;
		END IF;
	END IF;
	
	temp_8 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value,temp_8'LENGTH)); -- Converts an integer to an unsigned, then to a vector

END PROCESS;

	pwm_1 : single_pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8, pwm_output);
	quad_segment7_1 : double_segment7 PORT MAP(temp_8,'0',open,HEX0,HEX1);

END servo_incremental_input_double_segment;


CONFIGURATION servo_parallel_input_quad_segment_cfg OF servo IS
	FOR servo_parallel_input_quad_segment
		FOR ALL : quad_segment7		
			USE CONFIGURATION WORK.digit_quad_cfg;
		END FOR;
	END FOR;
END servo_parallel_input_quad_segment_cfg;

CONFIGURATION servo_incremental_input_quad_segment_cfg OF servo IS
	FOR servo_incremental_input_quad_segment
		FOR ALL : quad_segment7		
			USE CONFIGURATION WORK.digit_quad_cfg;
		END FOR;
	END FOR;
END servo_incremental_input_quad_segment_cfg;

CONFIGURATION servo_parallel_input_double_segment_cfg OF servo IS
	FOR servo_parallel_input_double_segment
		FOR ALL : double_segment7		
			USE CONFIGURATION WORK.digit_double_cfg;
		END FOR;
	END FOR;
END servo_parallel_input_double_segment_cfg;

CONFIGURATION servo_incremental_input_double_segment_cfg OF servo IS
	FOR servo_incremental_input_double_segment
		FOR ALL : double_segment7		
			USE CONFIGURATION WORK.digit_double_cfg;
		END FOR;
	END FOR;
END servo_incremental_input_double_segment_cfg;
