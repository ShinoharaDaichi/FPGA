LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

ENTITY double_segment7 IS 
	PORT ( 
		number	:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
		input		:	IN		STD_LOGIC;
		cout		:	OUT	STD_LOGIC;
		HEX0		:	out	std_logic_vector(6 downto 0);
		HEX1		:	out	std_logic_vector(6 downto 0)
	); 
END double_segment7; 

ARCHITECTURE digit_double OF double_segment7 IS
	SIGNAL digit1 : STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- LSB
	SIGNAL digit2 : STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- MSB

COMPONENT segment7 IS 
    PORT ( 
		input	: IN  STD_LOGIC;
		digit	: IN  STD_LOGIC_VECTOR( 3 DOWNTO 0 );
		cout	: OUT STD_LOGIC; 
		HEX	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   
         ); 
END COMPONENT; 

BEGIN
	bcd1: process(number) -- Double Dabble Algorithm : Converts a binary to its BCD representation (from Wikiversity)

	-- temporary variable
	VARIABLE temp : STD_LOGIC_VECTOR (7 downto 0);  
	-- variable to store the output BCD number
	VARIABLE bcd : UNSIGNED (7 downto 0) := (others => '0'); -- all bits will be set to 0

	begin
		-- zero the bcd variable
		bcd := (others => '0');    
		-- read input into temp variable
		temp(7 downto 0) := number;    
		-- cycle 8 times as we have 8 input bits
		-- this could be optimized, we dont need to check and add 3 for the 
		-- first 3 iterations as the number can never be >4
		for i in 0 to 7 loop
			if bcd(3 downto 0) > 4 then 
				bcd(3 downto 0) := bcd(3 downto 0) + 3;
			end if;
			
			if bcd(7 downto 4) > 4 then 
				bcd(7 downto 4) := bcd(7 downto 4) + 3;
			end if;
		 
			-- shift bcd left by 1 bit, copy MSB of temp into LSB of bcd
			bcd := bcd(6 downto 0) & temp(7);    
			-- shift temp left by 1 bit
			temp := temp(6 downto 0) & '0';
		end loop;
	 
		-- set outputs
		digit1 <= STD_LOGIC_VECTOR(bcd(3 downto 0));
		digit2 <= STD_LOGIC_VECTOR(bcd(7 downto 4));
	end process bcd1;

	LSB_segment7 : segment7 PORT MAP('0',digit1,open,HEX0);
	MSB_segment7 : segment7 PORT MAP('0',digit2,open,HEX1);
END digit_double;

ARCHITECTURE counter_double OF double_segment7 IS 
SIGNAL c : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT segment7 IS 
    PORT ( 
		input	: IN  STD_LOGIC;
		digit	: IN  STD_LOGIC_VECTOR( 3 DOWNTO 0 );
		cout	: OUT STD_LOGIC; 
		HEX	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   
         ); 
END COMPONENT; 

BEGIN
	LSB_segment7 : segment7 PORT MAP(input,"0000",c(0),HEX0);
	MSB_segment7 : segment7 PORT MAP(c(0),"0000",c(1),HEX1);
	cout <= c(1);	
END counter_double;
	
CONFIGURATION digit_double_cfg OF double_segment7 IS
	FOR digit_double
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(digit_single);
		END FOR;
	END FOR;
END digit_double_cfg;

CONFIGURATION add_counter_double_cfg OF double_segment7 IS
	FOR counter_double
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(add_counter_single);
		END FOR;
	END FOR;
END add_counter_double_cfg;

CONFIGURATION sub_counter_double_cfg OF double_segment7 IS
	FOR counter_double
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(sub_counter_single);
		END FOR;
	END FOR;
END sub_counter_double_cfg;