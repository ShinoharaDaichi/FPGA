LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

ENTITY segment7 IS 
    PORT ( 
		input	: IN  STD_LOGIC;
		digit	: IN  STD_LOGIC_VECTOR( 3 DOWNTO 0 );
		cout	: OUT STD_LOGIC; 
		HEX	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   
         ); 
END segment7; 

ARCHITECTURE digit_single OF segment7 IS 
	SIGNAL decimal : INTEGER RANGE 0 TO 9 := 0;

BEGIN
	PROCESS(digit)
	BEGIN 
		decimal <= to_integer(unsigned(digit)); -- Converts a vector to an unsigned, then to an integer
	END PROCESS;

PROCESS (decimal) 
BEGIN
	CASE decimal IS 
		WHEN 0 => 
			HEX(0) <= '0'; 
			HEX(1) <= '0'; 
			HEX(2) <= '0'; 
			HEX(3) <= '0'; 
			HEX(4) <= '0'; 
			HEX(5) <= '0'; 
			HEX(6) <= '1'; 
		WHEN 1 => 
			HEX(0) <= '1'; 
			HEX(1) <= '0'; 
			HEX(2) <= '0'; 
			HEX(3) <= '1';
			HEX(4) <= '1';
			HEX(5) <= '1';
			HEX(6) <= '1'; 
		WHEN 2 =>
			HEX(0) <= '0';
			HEX(1) <= '0';
			HEX(2) <= '1';
			HEX(3) <= '0';
			HEX(4) <= '0';
			HEX(5) <= '1';
			HEX(6) <= '0';
		WHEN 3 => 
			HEX(0) <= '0';
			HEX(1) <= '0';
			HEX(2) <= '0';
			HEX(3) <= '0';
			HEX(4) <= '1'; 
			HEX(5) <= '1';
			HEX(6) <= '0';
		WHEN 4 =>
			HEX(0) <= '1';
			HEX(1) <= '0';
			HEX(2) <= '0';
			HEX(3) <= '1';
			HEX(4) <= '1';
			HEX(5) <= '0';
			HEX(6) <= '0'; 
		WHEN 5 =>
			HEX(0) <= '0';
			HEX(1) <= '1';
			HEX(2) <= '0';
			HEX(3) <= '0';
			HEX(4) <= '1';
			HEX(5) <= '0';
			HEX(6) <= '0';
		WHEN 6 =>
			HEX(0) <= '0';
			HEX(1) <= '1';
			HEX(2) <= '0';
			HEX(3) <= '0';
			HEX(4) <= '0';
			HEX(5) <= '0';
			HEX(6) <= '0';
		WHEN 7 =>
			HEX(0) <= '0';
			HEX(1) <= '0';
			HEX(2) <= '0';
			HEX(3) <= '1';
			HEX(4) <= '1';
			HEX(5) <= '1';
			HEX(6) <= '1';
		WHEN 8 =>
			HEX(0) <= '0';
			HEX(1) <= '0';
			HEX(2) <= '0';
			HEX(3) <= '0';
			HEX(4) <= '0'; 
			HEX(5) <= '0';
			HEX(6) <= '0';
		WHEN 9 => 
			HEX(0) <= '0';
			HEX(1) <= '0';
			HEX(2) <= '0';
			HEX(3) <= '0';
			HEX(4) <= '1';
			HEX(5) <= '0';
			HEX(6) <= '0';
		WHEN OTHERS =>      --'0'                
			HEX(0) <= '1';
			HEX(1) <= '1'; 
			HEX(2) <= '1';
			HEX(3) <= '1';
			HEX(4) <= '1';
			HEX(5) <= '1';
			HEX(6) <= '0'; 
	END CASE; 
END PROCESS; 

END digit_single;


ARCHITECTURE add_counter_single OF segment7 IS 
	SIGNAL decimal : INTEGER RANGE 0 TO 9 := 0;

BEGIN
	PROCESS(input)
	BEGIN 	
		IF input = '1' THEN 
			IF decimal > 8 THEN
				decimal <= 0;
				cout <= '1'; -- will activate the next entity to add the next order of magnitude
			ELSE
				decimal <= decimal + 1;
				cout <= '0';				
			END IF; 
		END IF;	 
	END PROCESS;

	PROCESS (decimal) 
	BEGIN	
		CASE decimal IS 
			WHEN 0 => 
				HEX(0) <= '0'; 
				HEX(1) <= '0'; 
				HEX(2) <= '0'; 
				HEX(3) <= '0'; 
				HEX(4) <= '0'; 
				HEX(5) <= '0'; 
				HEX(6) <= '1'; 
			WHEN 1 => 
				HEX(0) <= '1'; 
				HEX(1) <= '0'; 
				HEX(2) <= '0'; 
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '1'; 
			WHEN 2 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '1';
				HEX(3) <= '0';
				HEX(4) <= '0';
				HEX(5) <= '1';
				HEX(6) <= '0';
			WHEN 3 => 
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1'; 
				HEX(5) <= '1';
				HEX(6) <= '0';
			WHEN 4 =>
				HEX(0) <= '1';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0'; 
			WHEN 5 =>
				HEX(0) <= '0';
				HEX(1) <= '1';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 6 =>
				HEX(0) <= '0';
				HEX(1) <= '1';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '0';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 7 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '1';
			WHEN 8 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '0'; 
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 9 => 
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN OTHERS =>      --'0'                
				HEX(0) <= '1';
				HEX(1) <= '1'; 
				HEX(2) <= '1';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '0'; 
		END CASE; 
	END PROCESS; 
END add_counter_single;

ARCHITECTURE sub_counter_single OF segment7 IS 
	SIGNAL decimal : INTEGER RANGE 0 TO 9 := 9;

BEGIN
	PROCESS(input)
	BEGIN 	
		IF input = '1' THEN 
			IF decimal < 1 THEN
				decimal <= 9;
				cout <= '1'; -- will activate the next entity to substract the next order of magnitude
			ELSE
				decimal <= decimal - 1;
				cout <= '0';				
			END IF; 
		END IF;	 
	END PROCESS;

	PROCESS (decimal) 
	BEGIN
		CASE decimal IS 
			WHEN 0 => 
				HEX(0) <= '0'; 
				HEX(1) <= '0'; 
				HEX(2) <= '0'; 
				HEX(3) <= '0'; 
				HEX(4) <= '0'; 
				HEX(5) <= '0'; 
				HEX(6) <= '1'; 
			WHEN 1 => 
				HEX(0) <= '1'; 
				HEX(1) <= '0'; 
				HEX(2) <= '0'; 
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '1'; 
			WHEN 2 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '1';
				HEX(3) <= '0';
				HEX(4) <= '0';
				HEX(5) <= '1';
				HEX(6) <= '0';
			WHEN 3 => 
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1'; 
				HEX(5) <= '1';
				HEX(6) <= '0';
			WHEN 4 =>
				HEX(0) <= '1';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0'; 
			WHEN 5 =>
				HEX(0) <= '0';
				HEX(1) <= '1';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 6 =>
				HEX(0) <= '0';
				HEX(1) <= '1';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '0';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 7 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '1';
			WHEN 8 =>
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '0'; 
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN 9 => 
				HEX(0) <= '0';
				HEX(1) <= '0';
				HEX(2) <= '0';
				HEX(3) <= '0';
				HEX(4) <= '1';
				HEX(5) <= '0';
				HEX(6) <= '0';
			WHEN OTHERS =>      --'0'                
				HEX(0) <= '1';
				HEX(1) <= '1'; 
				HEX(2) <= '1';
				HEX(3) <= '1';
				HEX(4) <= '1';
				HEX(5) <= '1';
				HEX(6) <= '0'; 
		END CASE;
	END PROCESS; 
END sub_counter_single;