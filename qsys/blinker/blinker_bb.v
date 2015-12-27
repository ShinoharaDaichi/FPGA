
module blinker (
	clk_clk,
	switcher_external_connection_export,
	led_external_connection_export);	

	input		clk_clk;
	input	[7:0]	switcher_external_connection_export;
	output	[7:0]	led_external_connection_export;
endmodule
