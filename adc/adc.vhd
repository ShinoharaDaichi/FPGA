LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY adc IS
	GENERIC(
		nbits_cmd						:	INTEGER	:=	6;			-- number of bits to send
		nbits_read						:	INTEGER	:=	12;		-- number of bits to read
		clk_div							:	INTEGER	:=	100;		--	500kHz sampling frequency for a 50MHz clock input
		convst_wait_cycles			:	INTEGER	:=	100;		-- number of cycle during which the conversion start pulse will be HIGH
		convst_wait_after_cycles	:	INTEGER	:=	100_000;	-- number of cycle after the conversion start pulse we wait to get the adc ready
		wait_between_read_cycles	:	INTEGER	:=	100_000;	-- number of cycle after read we wait before starting a new read
		
		s_d		:	STD_LOGIC	:= '1';												-- single-ended/N_differential bit
		o_s		:	STD_LOGIC	:= '1';												-- odd/ N_sign bit
		address	:	STD_LOGIC_VECTOR(1 downto 0) := (0 => '0', 1 => '0');	-- address select bits
		uni		:	STD_LOGIC	:= '1';												-- unipolar/N_bipolar bit
		slp		:	STD_LOGIC	:= '0'												-- no_sleep/N_yes_sleep bit
		);

  PORT(
	ena			:	IN			STD_LOGIC;	-- enable
	clk			:	IN			STD_LOGIC;	-- system clock
	reset_n		:	IN			STD_LOGIC;	-- asynchronous reset
	 
	convst		:	OUT		STD_LOGIC;	-- conversion start
	adc_sck		:	BUFFER	STD_LOGIC;	-- adc clock
	adc_sdi		:	OUT		STD_LOGIC;	-- FPGA to ADC
	adc_sdo		:	IN			STD_LOGIC;	--	ADC to FPGA
	
	outputs		:	BUFFER		STD_LOGIC_VECTOR(nbits_read-1 DOWNTO 0);	-- latched value read from the adc
	
	leds_output	:	out	std_logic_vector(7 downto 0);
	
	HEX0				:	out	std_logic_vector(6 downto 0);
	HEX1				:	out	std_logic_vector(6 downto 0);
	HEX2				:	out	std_logic_vector(6 downto 0);
	HEX3				:	out	std_logic_vector(6 downto 0)		 
	);
END entity;

ARCHITECTURE logic OF adc IS

	TYPE		machine	IS	(initial, wait_input,start_conversion, send, wait_while_busy, wait_between_sent);	--state machine data type which enumerates the different states
	SIGNAL	state		:	machine;                                      			-- current state
	
	SIGNAL	tx_cmd	:	STD_LOGIC_VECTOR(nbits_cmd-1 DOWNTO 0);					--command to send
	SIGNAL	rx_data	:	STD_LOGIC_VECTOR(nbits_read-1 DOWNTO 0);					--data received
	
	SIGNAL	send_sck	:	STD_LOGIC	:=	'0';												-- Send clock phase shifted 90° with the adc clock
	
	SIGNAL	temp_16	: STD_LOGIC_VECTOR( 15 DOWNTO 0 );								-- 16 bits value for the 7 segment display
	
	COMPONENT quad_segment7 IS 
	PORT ( 
			number			:	IN		STD_LOGIC_VECTOR(15 DOWNTO 0);
			input				:	IN		STD_LOGIC;
			cout				:	OUT	STD_LOGIC;
			HEX0				:	out	std_logic_vector(6 downto 0);
			HEX1				:	out	std_logic_vector(6 downto 0);
			HEX2				:	out	std_logic_vector(6 downto 0);
			HEX3				:	out	std_logic_vector(6 downto 0) 
         ); 
	END COMPONENT;

BEGIN
	temp_16 <= STD_LOGIC_VECTOR(RESIZE(unsigned(outputs), temp_16'LENGTH)); 
	quad_segment7_1 : quad_segment7 PORT MAP(temp_16,'0',open,HEX0,HEX1,HEX2,HEX3);

	tx_cmd <= (
					0 => s_d,
					1 => o_s,
					2 => address(0),
					3 => address(1),
					4 => uni,
					5 => slp
					);

MAIN : PROCESS (clk,reset_n)
	VARIABLE	convst_counter	:	integer	:=	0;
	VARIABLE	convst_wait_after_counter	:	integer	:=	0;
	VARIABLE	wait_counter	:	integer	:=	0;
	VARIABLE clock_count		:	integer	:= 0;
	VARIABLE bit_count		:	integer	:= 0;
BEGIN
	if reset_n = '0' then
		state <= initial;
	elsif (rising_edge(clk)) then
		CASE state IS
			WHEN initial =>
				
				send_sck <= '0';
				adc_sck <= '0';
				
				state <= wait_input;
				
			WHEN wait_input =>			-- Nothing happens unless le circuit is enabled
					
				IF ena = '0' THEN
					state <= wait_input;
				ELSE
					state <= start_conversion;				
				END IF;
				
			WHEN start_conversion =>	-- Wait a little for the conversion start pulse to be wide enough

				IF (convst_counter < convst_wait_cycles) THEN
					convst_counter := convst_counter + 1;
					convst <= '1';
					state <= start_conversion;
				ELSE
					convst_counter := 0;
					convst <= '0';				
					state <= send;
				END IF;
				
			WHEN send =>	-- Wait to get the sensor ready to send data
				
				IF (convst_wait_after_counter < convst_wait_after_cycles) THEN
					convst_wait_after_counter := convst_wait_after_counter + 1;
					state <= send;
				ELSE
					convst_wait_after_counter := 0;
					state <= wait_while_busy;					
				END IF;
								
			WHEN wait_while_busy =>
							
				IF((bit_count = nbits_read) AND (adc_sck = '0')) THEN
					bit_count := 0;
					send_sck <= '0';
					adc_sck <= '0';
					state <= wait_between_sent;
				ELSE
					state <= wait_while_busy;
					clock_count := clock_count + 1;
					
					IF(clock_count = clk_div/4) THEN					--The send clock and adc clock are phase shifted (90°)
						IF(bit_count < nbits_cmd+1) THEN				-- The send_clk is clocked one more time to get the send signal to LOW					
							send_sck <= not send_sck;
						ELSE
							send_sck <= '0';
						END IF;
					ELSIF (clock_count = clk_div/2) THEN
						adc_sck <= not adc_sck;
						clock_count := 0;						
						IF(adc_sck = '0') THEN
							bit_count := bit_count + 1;
						END IF;
					END IF;								
										
				END IF;				
							
			WHEN wait_between_sent =>			
				outputs	<=	rx_data;								-- Latch the data received to the outputs					
		
				IF wait_counter < wait_between_read_cycles THEN	-- Wait before reading a new value
					wait_counter := wait_counter + 1;
					state <= wait_between_sent;
				ELSE
					wait_counter := 0;					
					state <= initial;
				END IF;
				
			WHEN OTHERS =>
				state <= initial;
		END CASE;	
		
	END IF;
END PROCESS MAIN;

DATA_SEND : PROCESS(send_sck)
	VARIABLE send_counter : integer := 0;
BEGIN
	IF(rising_edge(send_sck)) THEN
		IF(send_counter < nbits_cmd) THEN
			adc_sdi <= tx_cmd(send_counter);
			send_counter := send_counter + 1;
		ELSE
			adc_sdi <= '0';
			send_counter := 0;
		END IF;
	END IF;
END PROCESS;

DATA_READ : PROCESS(adc_sck)									
	VARIABLE read_counter : integer := 0;
BEGIN
	IF(rising_edge(adc_sck)) THEN
		IF(read_counter = nbits_read-1) THEN
			read_counter := 0;			
		ELSE			
			rx_data((nbits_read-1) - read_counter) <= adc_sdo;
			read_counter := read_counter + 1;
		END IF;
	END IF;
END PROCESS;

VOLTAGE_LEVEL : process(outputs)								--	Will light up LEDs as if it is a gauge
begin
	if(to_integer(unsigned(outputs)) = 4095) then
		leds_output <= X"FF";
	elsif(to_integer(unsigned(outputs)) > 3584) then
		leds_output <= X"7F";
	elsif(to_integer(unsigned(outputs)) > 3072) then
		leds_output <= X"3F";
	elsif(to_integer(unsigned(outputs)) > 2560) then
		leds_output <= X"1F";
	elsif(to_integer(unsigned(outputs)) > 2048) then
		leds_output <= X"0F";
	elsif(to_integer(unsigned(outputs)) > 1536) then
		leds_output <= X"07";
	elsif(to_integer(unsigned(outputs)) > 1024) then
		leds_output <= X"03";
	elsif(to_integer(unsigned(outputs)) > 512) then
		leds_output <= X"01";
	else
		leds_output <= (others => '0');
	end if;
end process;
	
END logic;

CONFIGURATION adc_quad_segment_cfg OF adc IS
	FOR logic
		FOR ALL : quad_segment7		
			USE CONFIGURATION WORK.digit_quad_cfg;
		END FOR;
	END FOR;
END adc_quad_segment_cfg;