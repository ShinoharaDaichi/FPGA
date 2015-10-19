/*

*/
package timerpack is -- Declaration of a package, which can contain type declarations and macro
	constant nbits : integer := 9 ; -- Declaration of an integer constant inside the package 
end package ; -- End of the package

library ieee; -- Declaration of the ieee library to be able to use it
use ieee.numeric_bit.all ; -- Using the ieee library and all its components
use work.timerpack.all ; /* Using the timerpack package created above located inside the work 
								    library where every package we create goes */

entity timer is -- Declaration of an entity called timer
	port ( SIGNAL hor, en : in bit ;  -- Declaration of inputs and their type, the signal is write protected
			 SIGNAL fin     : in unsigned(nbits-1 downto 0) ; /* Declaration of an input and its type which uses 
																		 the constant contained inside the timerpack package 
																		 we created above and is a vector with a size of 9 */
			 SIGNAL hordiv  : out bit ) ; -- Declaration of an output and its type, the signal is read protected
end timer ; -- End of the entity


architecture type1 of timer is -- Declaration of the architecture type1 for the entity timer
	SIGNAL cpt : unsigned(nbits-1 downto 0) ; -- Declaration of an intermediary signal which cannot be accessed 
															-- as an input or output, and is a vector with a size of 9
	SIGNAL div : bit ; -- Idem
	
begin -- Start of the description of the processes of the architecture type1
	hordiv <= div ; -- The pilot of the output hordiv gets the value of div
	
	P1 : process -- Declaration of the process P1
	begin -- Start of the description of the process P1
		wait until rising_edge(hor) ; -- Wait for the first time the clock signal hor goes from LOW to HIGH to begin the process
			if en = '0' then -- If the input 'en' is LOW (= if the entity is disabled)
				cpt <= fin ; -- Then the value of the 9 inputs are affected to the intermediary signal cpt
				div <= '0' ; -- The intermediary signal is affected to 0
			elsif cpt = 0 then -- If 'en' = 1 and cpt = '0'
				cpt <= fin ; -- Then the value of the 9 inputs are affected to the intermediary signal cpt
				div <= not div ; -- The intermediary signal is affected to its complementary value (0 -> 1 or 1 -> 0)
			else -- If the 'en' = 1 and cpt =/= 0
				cpt <= cpt - 1 ; -- The cpt signal is decremented
			end if ; -- End of the if en = '0' statement
	end process P1 ; -- End of the description of the process P1
end type1 ; -- End of the description of the architecture type1


architecture type2 of timer is -- Declaration of the architecture type2 for the entity timer
	signal cpt : unsigned(nbits-1 downto 0) ; -- Declaration of an intermediary signal which cannot be accessed 
															-- as an input or output, and is a vector with a size of 9
	signal div : bit ; -- Idem

begin -- Start of the description of the processes of the architecture type2
	hordiv <= div ; -- The pilot of the output hordiv gets the value of div
	
	P1 : process -- Declaration of the process P1
	begin -- Start of the description of the process P1
		wait until rising_edge(hor) ; -- Wait for the first time the clock signal hor goes from LOW to HIGH to begin the process
			if en = '0' then -- If the input 'en' is HIGH (= if the entity is enabled)
				cpt <= (others => '0') ; 
				div <= '0' ; -- The intermediary signal is affected to 0
		elsif cpt >= fin then -- If cpt is bigger or equal to fin and en is not equal to 0
				cpt <= (others => '0') ; 
				div <= not div ; -- The intermediary signal is affected to its complementary value (0 -> 1 or 1 -> 0)
		else -- If cpt is smaller to fin and en is not equal to 0
				cpt <= cpt + 1 ; -- The cpt signal is incremented
		end if ; -- End of the if statement
	end process P1 ; -- End of the description of the process P1
end type2 ; -- End of the description of the architecture type2
