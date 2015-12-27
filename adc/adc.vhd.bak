LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY spi IS

  PORT(
    clk   	: IN    STD_LOGIC; --system clock
	 sclk		: OUT   STD_LOGIC; --serial clock
	 reset_n : IN    STD_LOGIC; --asynchronous reset
	 cs  		: OUT   STD_LOGIC; --chip select
    sdio 	: INOUT STD_LOGIC; --serial data input output
	 test  	: OUT   STD_LOGIC; --test
	  
	 convst	: OUT	  STD_LOGIC; --conversion start
	 adc_sck : OUT	  STD_LOGIC; 
	 adc_sdo : INOUT	  STD_LOGIC;
	 adc_sdi : OUT	  STD_LOGIC;
	 adc_sdot : INOUT	  STD_LOGIC;
	 
	 sinitial 		: OUT	STD_LOGIC;
	 swait_input : OUT	STD_LOGIC;
	 ssend : OUT	STD_LOGIC;
	 swait_while_busy : OUT	STD_LOGIC;
	 swait_between_sent : OUT	STD_LOGIC;
	 ena		: IN   STD_LOGIC
	 );
END spi;

ARCHITECTURE logic OF spi IS

	TYPE	 machine IS (initial, wait_input, send_spi, read_spi, wait_while_busy, wait_between_sent);          --state machine data type which enumerates the different states
	SIGNAL state : machine;                                      --current state
	SIGNAL address_value : INTEGER RANGE 0 TO 7;

	SIGNAL spi_cmd : STD_LOGIC_VECTOR(5 DOWNTO 0); 	--command to send
	SIGNAL spi_data : STD_LOGIC_VECTOR(11 DOWNTO 0);--data to send	
	SIGNAL ss_n : STD_LOGIC_VECTOR(0 DOWNTO 0); 		--selected spi slave
	SIGNAL busy : STD_LOGIC; 								--busy / data ready signal
	SIGNAL rx_data : STD_LOGIC_VECTOR(11 DOWNTO 0);	--data received
	SIGNAL enable : STD_LOGIC; 							--initiate transaction
	SIGNAL reset_n_SPI : STD_LOGIC := '1'; 			--asynchronous reset
	SIGNAL send_nread : STD_LOGIC := '1';				--switch between send(1) and read(0) SPI
	
	SIGNAL s_d : STD_LOGIC := '0';						-- single-ended/N_differential bit
	SIGNAL o_s : STD_LOGIC := '0';						-- odd/ N_sign bit
	SIGNAL address : STD_LOGIC_VECTOR(1 downto 0);	-- address select bits
	SIGNAL uni : STD_LOGIC := '1';						-- unipolar/N_bipolar bit
	SIGNAL slp : STD_LOGIC:= '0';							-- no_sleep/N_yes_sleep bit
	
	SIGNAL enable_timer : STD_LOGIC := '0';
COMPONENT spi_3_wire_master IS
  GENERIC(
    slaves    : INTEGER := 1;  --number of spi slaves
    cmd_width : INTEGER := 6;  --command bus width
    d_width   : INTEGER := 12  --data bus width
	 );
  PORT(
    clock   : IN     STD_LOGIC;                              --system clock
    reset_n : IN     STD_LOGIC;                              --asynchronous reset
    enable  : IN     STD_LOGIC;                              --initiate transaction
    cpol    : IN     STD_LOGIC;                              --spi clock polarity
    cpha    : IN     STD_LOGIC;                              --spi clock phase
    clk_div : IN     INTEGER;                                --system clock cycles per 1/2 period of sclk
    addr    : IN     INTEGER;                                --address of slave
    rw      : IN     STD_LOGIC;                              --'0' for read, '1' for write
    tx_cmd  : IN     STD_LOGIC_VECTOR(cmd_width-1 DOWNTO 0); --command to transmit
    tx_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);   --data to transmit
    sclk    : BUFFER STD_LOGIC;                              --spi clock
    ss_n    : BUFFER STD_LOGIC_VECTOR(slaves-1 DOWNTO 0);    --slave select
    sdio    : INOUT  STD_LOGIC;                              --serial data input output
    busy    : OUT    STD_LOGIC;                              --busy / data ready signal
    rx_data : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)    --data received
	 );
END COMPONENT;

BEGIN
st7735 : spi_3_wire_master PORT MAP(clk,reset_n,enable,'0','1',10,0,send_nread,spi_cmd,spi_data,sclk,ss_n,sdio,busy,rx_data);

convst <= cs;
adc_sck <= sclk;
adc_sdo <= sdio;
adc_sdi <= sdio;
adc_sdot <= adc_sdo;

PROCESS (clk)
VARIABLE counter : integer := 0;
BEGIN		
		if reset_n = '0' then
			state <= initial;
		elsif (rising_edge(clk)) then
			CASE state IS
				WHEN initial =>					
					state <= wait_input;
					
				WHEN wait_input =>
					IF ena = '1' THEN
						IF send_nread = '1' THEN
							state <= send_spi;
						ELSE
							state <= read_spi;
						END IF;
					ELSE
						state <= wait_input;
					END IF;

				WHEN send_spi =>
						address <= STD_LOGIC_VECTOR(to_unsigned(address_value,address'length));
						state <= wait_while_busy;
						
				WHEN read_spi =>
						state <= wait_while_busy;
						
				WHEN wait_while_busy =>
					IF busy = '0' THEN
						state <= wait_between_sent;
					ELSE						
						state <= wait_while_busy;
					END IF;	

						
				WHEN wait_between_sent =>						
					IF counter = 1000 THEN
						state <= initial;
						counter := 0;
					ELSE
						counter := counter + 1;
						state <= wait_between_sent;						
					END IF;				
					
				WHEN OTHERS =>
					state <= initial;

			END CASE;
		END IF;
	END PROCESS;
	
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN initial =>
				test <= '0';
				enable <= '0';
				
				--cs <= '0'; --deactivate slave
								
				spi_cmd <= B"00_0000";
				spi_data <= B"0000_0000_0000";
				
				sinitial <= '1';
				swait_input <= '0';
				ssend <= '0';
				swait_while_busy <= '0';
				swait_between_sent <= '0';			 
				
			WHEN wait_input =>				
				sinitial <= '0';
				swait_input <= '1';
				ssend <= '0';
				swait_while_busy <= '0';
				swait_between_sent <= '0';
				
			WHEN send_spi =>
				enable <= '1';
				
				cs <= '1'; --activate slave
				
				spi_cmd <= (
					5 => slp,
					4 => o_s,
					3 => address(0),
					2 => address(1),
					1 => uni,
					0 => slp);			

				spi_data <= B"0000_0000_0000";
				
				sinitial <= '0';
				swait_input <= '0';
				ssend <= '1';
				swait_while_busy <= '0';
				swait_between_sent <= '0';
				
			WHEN read_spi =>
				enable <= '1';
				
				--cs <= '1'; --activate slave				
				
				sinitial <= '0';
				swait_input <= '0';
				ssend <= '1';
				swait_while_busy <= '0';
				swait_between_sent <= '0';
				
			WHEN wait_while_busy =>
				test <= '1';				
				
				spi_cmd <= B"00_0000";
				spi_data <= B"0000_0000_0000";
				
				--cs <= '1';
				
				sinitial <= '0';
				swait_input <= '0';
				ssend <= '0';
				swait_while_busy <= '1';
				swait_between_sent <= '0';
				
			WHEN wait_between_sent =>
				test <= '0';	
				enable <= '0';							
		
				--cs <= '0';			
				
				sinitial <= '0';
				swait_input <= '0';
				ssend <= '0';
				swait_while_busy <= '0';
				swait_between_sent <= '1';
		END CASE;
	END PROCESS;


END logic;
