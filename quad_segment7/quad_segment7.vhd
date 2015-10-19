LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

ENTITY quad_segment7 IS 
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
END quad_segment7; 

ARCHITECTURE digit_quad OF quad_segment7 IS
SIGNAL digit1 : STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- LSB
SIGNAL digit2 : STD_LOGIC_VECTOR( 3 DOWNTO 0 );
SIGNAL digit3 : STD_LOGIC_VECTOR( 3 DOWNTO 0 );
SIGNAL digit4 : STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- MSB

COMPONENT segment7 IS 
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
END COMPONENT; 

BEGIN
bcd1: process(number) -- Double Dabble Algorithm : Converts a binary to its BCD representation (from Wikiversity)

-- temporary variable
VARIABLE temp : STD_LOGIC_VECTOR (15 downto 0);  
-- variable to store the output BCD number
VARIABLE bcd : UNSIGNED (15 downto 0) := (others => '0'); -- all bits will be set to 0

  begin
    -- zero the bcd variable
    bcd := (others => '0');    
    -- read input into temp variable
    temp(15 downto 0) := number;    
    -- cycle 16 times as we have 16 input bits
    -- this could be optimized, we dont need to check and add 3 for the 
    -- first 3 iterations as the number can never be >4
    for i in 0 to 15 loop
    
      if bcd(3 downto 0) > 4 then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
      
      if bcd(7 downto 4) > 4 then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
    
      if bcd(11 downto 8) > 4 then  
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
    
      -- thousands can't be >4 for a 16-bit input number
      -- so don't need to do anything to upper 4 bits of bcd
		
      -- shift bcd left by 1 bit, copy MSB of temp into LSB of bcd
      bcd := bcd(14 downto 0) & temp(15);    
      -- shift temp left by 1 bit
      temp := temp(14 downto 0) & '0';
    end loop;
 
    -- set outputs
    digit1 <= STD_LOGIC_VECTOR(bcd(3 downto 0));
    digit2 <= STD_LOGIC_VECTOR(bcd(7 downto 4));
    digit3 <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    digit4 <= STD_LOGIC_VECTOR(bcd(15 downto 12));  
 end process bcd1;

LSB_segment7 : segment7
PORT MAP('0',digit1,open,HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06);
second_segment7 : segment7
PORT MAP('0',digit2,open,HEX10,HEX11,HEX12,HEX13,HEX14,HEX15,HEX16);
third_segment7 : segment7
PORT MAP('0',digit3,open,HEX20,HEX21,HEX22,HEX23,HEX24,HEX25,HEX26);
MSB_segment7 : segment7
PORT MAP('0',digit4,open,HEX30,HEX31,HEX32,HEX33,HEX34,HEX35,HEX36);
END digit_quad;

ARCHITECTURE counter_quad OF quad_segment7 IS 
SIGNAL c : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT segment7 IS 
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
END COMPONENT; 

BEGIN
LSB_segment7 : segment7
PORT MAP(input,"0000",c(0),HEX00,HEX01,HEX02,HEX03,HEX04,HEX05,HEX06);
second_segment7 : segment7
PORT MAP(c(0),"0000",c(1),HEX10,HEX11,HEX12,HEX13,HEX14,HEX15,HEX16);
third_segment7 : segment7
PORT MAP(c(1),"0000",c(2),HEX20,HEX21,HEX22,HEX23,HEX24,HEX25,HEX26);
MSB_segment7 : segment7
PORT MAP(c(2),"0000",c(3),HEX30,HEX31,HEX32,HEX33,HEX34,HEX35,HEX36);

cout <= c(3);
END counter_quad;
	
CONFIGURATION digit_quad_cfg OF quad_segment7 IS
	FOR digit_quad
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(digit_single);
		END FOR;
	END FOR;
END digit_quad_cfg;

CONFIGURATION add_counter_quad_cfg OF quad_segment7 IS
	FOR counter_quad
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(add_counter_single);
		END FOR;
	END FOR;
END add_counter_quad_cfg;

CONFIGURATION sub_counter_quad_cfg OF quad_segment7 IS
	FOR counter_quad
		FOR ALL : segment7 
			USE ENTITY WORK.segment7(sub_counter_single);
		END FOR;
	END FOR;
END sub_counter_quad_cfg;