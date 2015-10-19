LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

ENTITY segment7 IS 
    PORT ( 
          input  : IN  STD_LOGIC;
			 digit  : IN  STD_LOGIC_VECTOR( 3 DOWNTO 0 );
			 cout   : OUT STD_LOGIC; 
          HEX00  : OUT STD_LOGIC;   
          HEX01  : OUT STD_LOGIC;   
          HEX02  : OUT STD_LOGIC;   
          HEX03  : OUT STD_LOGIC;  
          HEX04  : OUT STD_LOGIC;  
          HEX05  : OUT STD_LOGIC;  
          HEX06  : OUT STD_LOGIC   
         ); 
END segment7; 

ARCHITECTURE digit_single OF segment7 IS 
SIGNAL s_decimal : INTEGER RANGE 0 TO 9 := 0;

BEGIN
PROCESS(digit)
BEGIN 
	s_decimal <= to_integer(unsigned(digit));
END PROCESS;

PROCESS (s_decimal) 
BEGIN 
   CASE s_decimal IS 
       WHEN 0 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '1'; 
       WHEN 1 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 2 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '1'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 3 =>                      
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 4 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 5 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 6 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 7 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 8 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0';
		 WHEN 9 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0';

       WHEN OTHERS =>                      
            HEX00 <= '1'; 
            HEX01 <= '1'; 
            HEX02 <= '1'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
   END CASE; 
END PROCESS; 

END digit_single;



ARCHITECTURE add_counter_single OF segment7 IS 
SIGNAL s_decimal : INTEGER RANGE 0 TO 9 := 0;

BEGIN
PROCESS(input)
BEGIN 	
    IF input = '1' THEN 
        IF s_decimal > 8 THEN
            s_decimal <= 0;
				--s_decimal <= (OTHERS => '0'); -- will reset every bit of the signal to 0 independently of the size of the signal
				cout <= '1'; -- will activate the next entity to add the next order of magnitude
        ELSE
            s_decimal <= s_decimal + 1;
				cout <= '0';				
        END IF; 
    END IF;	 
END PROCESS;

PROCESS (s_decimal) 
BEGIN 
   CASE s_decimal IS 
       WHEN 0 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '1'; 
       WHEN 1 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 2 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '1'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 3 =>                      
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 4 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 5 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 6 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 7 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 8 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0';
		 WHEN 9 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0';

       WHEN OTHERS =>                      
            HEX00 <= '1'; 
            HEX01 <= '1'; 
            HEX02 <= '1'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
   END CASE; 
END PROCESS; 
END add_counter_single;

ARCHITECTURE sub_counter_single OF segment7 IS 
SIGNAL s_decimal : INTEGER RANGE 0 TO 9 := 9;

BEGIN
PROCESS(input)
BEGIN 	
    IF input = '1' THEN 
        IF s_decimal < 1 THEN
            s_decimal <= 9;
				--s_decimal <= (OTHERS => '0'); -- will reset every bit of the signal to 0 independently of the size of the signal
				cout <= '1'; -- will activate the next entity to substract the next order of magnitude
        ELSE
            s_decimal <= s_decimal - 1;
				cout <= '0';				
        END IF; 
    END IF;	 
END PROCESS;

PROCESS (s_decimal) 
BEGIN 
   CASE s_decimal IS 
       WHEN 0 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '1'; 
       WHEN 1 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 2 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '1'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 3 =>                      
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
       WHEN 4 => 
            HEX00 <= '1'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 5 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 6 => 
            HEX00 <= '0'; 
            HEX01 <= '1'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0'; 
       WHEN 7 => 
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '1'; 
       WHEN 8 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '0'; 
            HEX05 <= '0'; 
            HEX06 <= '0';
		 WHEN 9 =>                             
            HEX00 <= '0'; 
            HEX01 <= '0'; 
            HEX02 <= '0'; 
            HEX03 <= '0'; 
            HEX04 <= '1'; 
            HEX05 <= '0'; 
            HEX06 <= '0';

       WHEN OTHERS =>                      
            HEX00 <= '1'; 
            HEX01 <= '1'; 
            HEX02 <= '1'; 
            HEX03 <= '1'; 
            HEX04 <= '1'; 
            HEX05 <= '1'; 
            HEX06 <= '0'; 
   END CASE; 
END PROCESS; 
END sub_counter_single;