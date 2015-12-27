LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.all;

ENTITY pwm_led IS
	PORT ( 
			 clk	 : IN STD_LOGIC; 
		 
			 pwm_output_0 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_1 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_2 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_3 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_4 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 
			 pwm_output_5 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_6 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_7 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_8 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 pwm_output_9 : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 
			 enable_pwm : IN STD_LOGIC;
			 reset_pwm  : IN STD_LOGIC;
			 changeup : IN STD_LOGIC;
			 changedown : IN STD_LOGIC;
			 
          HEX00 : OUT STD_LOGIC;   
          HEX01 : OUT STD_LOGIC;   
          HEX02 : OUT STD_LOGIC;   
          HEX03 : OUT STD_LOGIC;  
          HEX04 : OUT STD_LOGIC;  
          HEX05 : OUT STD_LOGIC;  
          HEX06 : OUT STD_LOGIC;  
			 HEX10 : OUT STD_LOGIC;
          HEX11 : OUT STD_LOGIC;   
          HEX12 : OUT STD_LOGIC;   
          HEX13 : OUT STD_LOGIC;  
          HEX14 : OUT STD_LOGIC;  
          HEX15 : OUT STD_LOGIC;  
          HEX16 : OUT STD_LOGIC;
			 HEX20 : OUT STD_LOGIC;   
          HEX21 : OUT STD_LOGIC;   
          HEX22 : OUT STD_LOGIC;   
          HEX23 : OUT STD_LOGIC;  
          HEX24 : OUT STD_LOGIC;  
          HEX25 : OUT STD_LOGIC;  
          HEX26 : OUT STD_LOGIC;
			 HEX30 : OUT STD_LOGIC;   
          HEX31 : OUT STD_LOGIC;
          HEX32 : OUT STD_LOGIC;
          HEX33 : OUT STD_LOGIC;  
          HEX34 : OUT STD_LOGIC;  
          HEX35 : OUT STD_LOGIC;
          HEX36 : OUT STD_LOGIC 
         );
			
END pwm_led;

ARCHITECTURE Behavioral OF pwm_led IS
SIGNAL temp_8_0 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_1 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_2 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_3 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_4 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits

SIGNAL temp_8_5 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_6 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_7 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_8 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_8_9 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits

SIGNAL temp_16 : STD_LOGIC_VECTOR( 15 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits

SIGNAL led_value : INTEGER RANGE 0 to 1023; -- Value of the PWM frequency;

SIGNAL duty_value_0 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_1 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_2 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_3 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_4 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;

SIGNAL duty_value_5 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_6 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_7 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_8 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
SIGNAL duty_value_9 : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;

SIGNAL lastChangeup : STD_LOGIC := '1'; -- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state
SIGNAL lastChangedown : STD_LOGIC := '1'; -- the button is LOW when pressed, HIGH when not pressed, hence the initail HIGH state
COMPONENT pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 50;    	  --PWM switching frequency in Hz
      bits_resolution : INTEGER := 8;          --bits of resolution setting the duty cycle
      phases          : INTEGER := 1);         --number of output pwms and phases
  PORT(
      clk       : IN  STD_LOGIC;                                    --system clock
      reset_n   : IN  STD_LOGIC;                                    --asynchronous reset
      ena       : IN  STD_LOGIC;                                    --latches in new duty cycle
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); --duty cycle
      pwm_out   : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0);          --pwm outputs
      pwm_n_out : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0));         --pwm inverse outputs
END COMPONENT;

COMPONENT quad_segment7 IS 
PORT ( 
			 number : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
          input : IN  STD_LOGIC;
			 cout	 : OUT STD_LOGIC;
          HEX00 : OUT STD_LOGIC;   
          HEX01 : OUT STD_LOGIC;   
          HEX02 : OUT STD_LOGIC;   
          HEX03 : OUT STD_LOGIC;  
          HEX04 : OUT STD_LOGIC;  
          HEX05 : OUT STD_LOGIC;  
          HEX06 : OUT STD_LOGIC;  
			 HEX10 : OUT STD_LOGIC;   
          HEX11 : OUT STD_LOGIC;   
          HEX12 : OUT STD_LOGIC;   
          HEX13 : OUT STD_LOGIC;  
          HEX14 : OUT STD_LOGIC;  
          HEX15 : OUT STD_LOGIC;  
          HEX16 : OUT STD_LOGIC;
			 HEX20 : OUT STD_LOGIC;   
          HEX21 : OUT STD_LOGIC;   
          HEX22 : OUT STD_LOGIC;   
          HEX23 : OUT STD_LOGIC;  
          HEX24 : OUT STD_LOGIC;  
          HEX25 : OUT STD_LOGIC;  
          HEX26 : OUT STD_LOGIC;
			 HEX30 : OUT STD_LOGIC;   
          HEX31 : OUT STD_LOGIC;   
          HEX32 : OUT STD_LOGIC;   
          HEX33 : OUT STD_LOGIC;  
          HEX34 : OUT STD_LOGIC;  
          HEX35 : OUT STD_LOGIC;  
          HEX36 : OUT STD_LOGIC 
         ); 
END COMPONENT;

BEGIN
PROCESS(clk)
BEGIN
IF(rising_edge(clk))THEN -- the button is LOW when pressed
	lastChangeup <= changeup;
	lastChangedown <= changedown;
	
	IF(changeup = '0' AND lastChangeup = '1') THEN
		led_value <= led_value + 5;
	END IF;
	IF(changedown = '0' AND lastChangedown = '1') THEN
		led_value <= led_value - 5;
	END IF;
END IF;

IF(led_value > 2) THEN
	duty_value_0 <= 255;
ELSE
	duty_value_0 <= 0;
END IF;

IF(led_value > 4) THEN
	duty_value_1 <= 255;
ELSE
	duty_value_1 <= 0;
END IF;

IF(led_value > 8) THEN
	duty_value_2 <= 255;
ELSE
	duty_value_2 <= 0;
END IF;

IF(led_value > 16) THEN
	duty_value_3 <= 255;
ELSE
	duty_value_3 <= 0;
END IF;

IF(led_value > 32) THEN
	duty_value_4 <= 255;
ELSE
	duty_value_4 <= 0;
END IF;

IF(led_value > 64) THEN
	duty_value_5 <= 255;
ELSE
	duty_value_5 <= 0;
END IF;

IF(led_value > 128) THEN
	duty_value_6 <= 255;
ELSE
	duty_value_6 <= 0;
END IF;

IF(led_value > 256) THEN
	duty_value_7 <= 255;
ELSE
	duty_value_7 <= 0;
END IF;

IF(led_value > 512) THEN
	duty_value_8 <= 255;
ELSE
	duty_value_8 <= 0;
END IF;

IF(led_value > 1022) THEN
	duty_value_9 <= 255;
ELSE
	duty_value_9 <= 0;
END IF;

temp_8_0 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_0,temp_8_0'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_1 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_1,temp_8_1'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_2 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_2,temp_8_2'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_3 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_3,temp_8_3'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_4 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_4,temp_8_4'LENGTH)); -- Converts an integer to an unsigned, then to a vector

temp_8_5 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_5,temp_8_5'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_6 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_6,temp_8_6'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_7 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_7,temp_8_7'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_8 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_8,temp_8_8'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_8_9 <= STD_LOGIC_VECTOR(TO_UNSIGNED(duty_value_9,temp_8_9'LENGTH)); -- Converts an integer to an unsigned, then to a vector

temp_16 <= STD_LOGIC_VECTOR(TO_UNSIGNED(led_value,temp_16'LENGTH)); -- Converts an integer to an unsigned, then to a vector

END PROCESS;

pwm_0 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_0, pwm_output_0, open); -- The negative pwm output is left open
pwm_1 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_1, pwm_output_1, open); -- The negative pwm output is left open
pwm_2 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_2, pwm_output_2, open); -- The negative pwm output is left open
pwm_3 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_3, pwm_output_3, open); -- The negative pwm output is left open
pwm_4 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_4, pwm_output_4, open); -- The negative pwm output is left open

pwm_5 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_5, pwm_output_5, open); -- The negative pwm output is left open
pwm_6 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_6, pwm_output_6, open); -- The negative pwm output is left open
pwm_7 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_7, pwm_output_7, open); -- The negative pwm output is left open
pwm_8 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_8, pwm_output_8, open); -- The negative pwm output is left open
pwm_9 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8_9, pwm_output_9, open); -- The negative pwm output is left open

quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06,HEX10,HEX11,HEX12,HEX13,HEX14,HEX15,HEX16,HEX20,HEX21,HEX22,HEX23,HEX24,HEX25,HEX26,HEX30,HEX31,HEX32,HEX33,HEX34,HEX35,HEX36);

END Behavioral;


CONFIGURATION Behavioral_cfg OF pwm_led IS
	FOR Behavioral
		FOR ALL : quad_segment7		
			USE CONFIGURATION WORK.digit_quad_cfg;
		END FOR;
	END FOR;
END Behavioral_cfg;

