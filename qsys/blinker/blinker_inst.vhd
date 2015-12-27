	component blinker is
		port (
			clk_clk                             : in  std_logic                    := 'X';             -- clk
			switcher_external_connection_export : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			led_external_connection_export      : out std_logic_vector(7 downto 0)                     -- export
		);
	end component blinker;

	u0 : component blinker
		port map (
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                          clk.clk
			switcher_external_connection_export => CONNECTED_TO_switcher_external_connection_export, -- switcher_external_connection.export
			led_external_connection_export      => CONNECTED_TO_led_external_connection_export       --      led_external_connection.export
		);

