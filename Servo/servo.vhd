LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.all;

ENTITY servo IS
	PORT ( 
			 clk	 : IN STD_LOGIC; 
			 duty  : IN STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			 pwm_output : OUT STD_LOGIC_VECTOR( 0 DOWNTO 0);
			 enable_pwm : IN STD_LOGIC;
			 reset_pwm  : IN STD_LOGIC;
			 increase : IN STD_LOGIC;
			 decrease : IN STD_LOGIC;
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
			
END servo;

ARCHITECTURE servo_arch1 OF servo IS
SIGNAL temp_16 : STD_LOGIC_VECTOR( 15 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits

COMPONENT pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 50;    --PWM switching frequency in Hz
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
temp_16 <= STD_LOGIC_VECTOR(RESIZE(UNSIGNED(duty), temp_16'LENGTH)); -- Resizes an 8 bits sized vector to an 16 bits sized vector

pwm_1 : pwm PORT MAP(clk, reset_pwm, enable_pwm, duty, pwm_output, open); -- The negative pwm output is left open
quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06,HEX10,HEX11,HEX12,HEX13,HEX14,HEX15,HEX16,HEX20,HEX21,HEX22,HEX23,HEX24,HEX25,HEX26,HEX30,HEX31,HEX32,HEX33,HEX34,HEX35,HEX36);

END servo_arch1;


ARCHITECTURE servo_arch2 OF servo IS
SIGNAL temp_8 : STD_LOGIC_VECTOR( 7 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL temp_16 : STD_LOGIC_VECTOR( 15 DOWNTO 0 ); -- Will contain the resized 16 bits value of the duty resized from 8 bits
SIGNAL frequency : INTEGER RANGE 0 to 255; -- Value of the PWM frequency;
COMPONENT pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
      pwm_freq        : INTEGER := 440;    --PWM switching frequency in Hz 100_000
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

PROCESS(increase)
BEGIN
IF(increase = '0') THEN
	frequency <= frequency + 1;
END IF;
IF(decrease = '0') THEN
	frequency <= frequency - 1;
END IF;
temp_8 <= STD_LOGIC_VECTOR(TO_UNSIGNED(frequency,temp_8'LENGTH)); -- Converts an integer to an unsigned, then to a vector
temp_16 <= STD_LOGIC_VECTOR(TO_UNSIGNED(frequency,temp_16'LENGTH)); -- Converts an integer to an unsigned, then to a vector
END PROCESS;

pwm_1 : pwm PORT MAP(clk, reset_pwm, enable_pwm, temp_8, pwm_output, open); -- The negative pwm output is left open

quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06,HEX10,HEX11,HEX12,HEX13,HEX14,HEX15,HEX16,HEX20,HEX21,HEX22,HEX23,HEX24,HEX25,HEX26,HEX30,HEX31,HEX32,HEX33,HEX34,HEX35,HEX36);

END servo_arch2;

CONFIGURATION servo_cfg OF servo IS
	FOR servo_arch2
		FOR ALL : quad_segment7		
			USE CONFIGURATION WORK.digit_quad_cfg;
		END FOR;
	END FOR;
END servo_cfg;