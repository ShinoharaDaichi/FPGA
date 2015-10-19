-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/13/2015 12:07:59"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	segment7 IS
    PORT (
	add : IN std_logic;
	cout : BUFFER std_logic;
	HEX00 : BUFFER std_logic;
	HEX01 : BUFFER std_logic;
	HEX02 : BUFFER std_logic;
	HEX03 : BUFFER std_logic;
	HEX04 : BUFFER std_logic;
	HEX05 : BUFFER std_logic;
	HEX06 : BUFFER std_logic
	);
END segment7;

-- Design Ports Information
-- cout	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX00	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX01	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX02	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX03	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX04	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX05	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX06	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF segment7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_HEX00 : std_logic;
SIGNAL ww_HEX01 : std_logic;
SIGNAL ww_HEX02 : std_logic;
SIGNAL ww_HEX03 : std_logic;
SIGNAL ww_HEX04 : std_logic;
SIGNAL ww_HEX05 : std_logic;
SIGNAL ww_HEX06 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \add~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s_decimal~0_combout\ : std_logic;
SIGNAL \s_decimal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \s_decimal~1_combout\ : std_logic;
SIGNAL \s_decimal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \s_decimal~2_combout\ : std_logic;
SIGNAL \s_decimal~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cout~reg0_q\ : std_logic;
SIGNAL \s_decimal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL s_decimal : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_s_decimal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s_decimal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s_decimal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_s_decimal : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_add <= add;
cout <= ww_cout;
HEX00 <= ww_HEX00;
HEX01 <= ww_HEX01;
HEX02 <= ww_HEX02;
HEX03 <= ww_HEX03;
HEX04 <= ww_HEX04;
HEX05 <= ww_HEX05;
HEX06 <= ww_HEX06;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_decimal[2]~DUPLICATE_q\ <= NOT \s_decimal[2]~DUPLICATE_q\;
\ALT_INV_s_decimal[1]~DUPLICATE_q\ <= NOT \s_decimal[1]~DUPLICATE_q\;
\ALT_INV_s_decimal[0]~DUPLICATE_q\ <= NOT \s_decimal[0]~DUPLICATE_q\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_s_decimal(3) <= NOT s_decimal(3);
ALT_INV_s_decimal(2) <= NOT s_decimal(2);
ALT_INV_s_decimal(1) <= NOT s_decimal(1);
ALT_INV_s_decimal(0) <= NOT s_decimal(0);

-- Location: IOOBUF_X14_Y61_N53
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~reg0_q\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X66_Y0_N2
\HEX00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX00);

-- Location: IOOBUF_X64_Y0_N2
\HEX01~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX01);

-- Location: IOOBUF_X64_Y0_N19
\HEX02~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX02);

-- Location: IOOBUF_X66_Y0_N19
\HEX03~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX03);

-- Location: IOOBUF_X65_Y0_N2
\HEX04~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX04);

-- Location: IOOBUF_X65_Y0_N19
\HEX05~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX05);

-- Location: IOOBUF_X62_Y0_N42
\HEX06~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX06);

-- Location: IOIBUF_X21_Y0_N1
\add~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: CLKCTRL_G6
\add~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \add~input_o\,
	outclk => \add~inputCLKENA0_outclk\);

-- Location: FF_X64_Y1_N16
\s_decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_decimal(0));

-- Location: LABCELL_X64_Y1_N15
\s_decimal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_decimal~0_combout\ = ( !s_decimal(0) & ( s_decimal(3) & ( (!\s_decimal[1]~DUPLICATE_q\ & !s_decimal(2)) ) ) ) # ( !s_decimal(0) & ( !s_decimal(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_decimal[1]~DUPLICATE_q\,
	datad => ALT_INV_s_decimal(2),
	datae => ALT_INV_s_decimal(0),
	dataf => ALT_INV_s_decimal(3),
	combout => \s_decimal~0_combout\);

-- Location: FF_X64_Y1_N17
\s_decimal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_decimal[0]~DUPLICATE_q\);

-- Location: FF_X64_Y1_N7
\s_decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_decimal(1));

-- Location: LABCELL_X64_Y1_N6
\s_decimal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_decimal~1_combout\ = ( !s_decimal(3) & ( !\s_decimal[0]~DUPLICATE_q\ $ (!s_decimal(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s_decimal[0]~DUPLICATE_q\,
	datad => ALT_INV_s_decimal(1),
	dataf => ALT_INV_s_decimal(3),
	combout => \s_decimal~1_combout\);

-- Location: FF_X64_Y1_N8
\s_decimal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_decimal[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N21
\s_decimal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_decimal~2_combout\ = ( s_decimal(0) & ( (!s_decimal(3) & (!\s_decimal[1]~DUPLICATE_q\ $ (!s_decimal(2)))) ) ) # ( !s_decimal(0) & ( (!s_decimal(3) & s_decimal(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datac => \ALT_INV_s_decimal[1]~DUPLICATE_q\,
	datad => ALT_INV_s_decimal(2),
	dataf => ALT_INV_s_decimal(0),
	combout => \s_decimal~2_combout\);

-- Location: FF_X64_Y1_N23
\s_decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_decimal(2));

-- Location: LABCELL_X64_Y1_N24
\s_decimal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_decimal~3_combout\ = ( !s_decimal(3) & ( s_decimal(1) & ( (s_decimal(2) & \s_decimal[0]~DUPLICATE_q\) ) ) ) # ( s_decimal(3) & ( !s_decimal(1) & ( (!s_decimal(2) & !\s_decimal[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s_decimal(2),
	datad => \ALT_INV_s_decimal[0]~DUPLICATE_q\,
	datae => ALT_INV_s_decimal(3),
	dataf => ALT_INV_s_decimal(1),
	combout => \s_decimal~3_combout\);

-- Location: FF_X64_Y1_N26
\s_decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_decimal(3));

-- Location: LABCELL_X64_Y1_N18
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( s_decimal(0) & ( s_decimal(3) ) ) # ( !s_decimal(0) & ( (s_decimal(3) & ((s_decimal(1)) # (s_decimal(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datac => ALT_INV_s_decimal(2),
	datad => ALT_INV_s_decimal(1),
	dataf => ALT_INV_s_decimal(0),
	combout => \LessThan0~0_combout\);

-- Location: FF_X64_Y1_N20
\cout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cout~reg0_q\);

-- Location: FF_X64_Y1_N22
\s_decimal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add~inputCLKENA0_outclk\,
	d => \s_decimal~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_decimal[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N33
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( s_decimal(0) & ( (!s_decimal(3) & (!\s_decimal[2]~DUPLICATE_q\ & !s_decimal(1))) ) ) # ( !s_decimal(0) & ( (!s_decimal(3) & (\s_decimal[2]~DUPLICATE_q\ & !s_decimal(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datab => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	datac => ALT_INV_s_decimal(1),
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X64_Y1_N42
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( s_decimal(0) & ( (!s_decimal(1) & (!s_decimal(3) & \s_decimal[2]~DUPLICATE_q\)) ) ) # ( !s_decimal(0) & ( (s_decimal(1) & (!s_decimal(3) & \s_decimal[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_decimal(1),
	datac => ALT_INV_s_decimal(3),
	datad => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X64_Y1_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !s_decimal(0) & ( (s_decimal(1) & (!s_decimal(3) & !\s_decimal[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_decimal(1),
	datac => ALT_INV_s_decimal(3),
	datad => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X64_Y1_N57
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( s_decimal(0) & ( (!s_decimal(3) & (!\s_decimal[2]~DUPLICATE_q\ $ (s_decimal(1)))) ) ) # ( !s_decimal(0) & ( (!s_decimal(3) & (\s_decimal[2]~DUPLICATE_q\ & !s_decimal(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datab => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	datac => ALT_INV_s_decimal(1),
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X64_Y1_N48
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( s_decimal(0) ) # ( !s_decimal(0) & ( (!s_decimal(1) & ((\s_decimal[2]~DUPLICATE_q\))) # (s_decimal(1) & (s_decimal(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s_decimal(1),
	datac => ALT_INV_s_decimal(3),
	datad => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X64_Y1_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( s_decimal(0) & ( (!s_decimal(3) & ((!\s_decimal[2]~DUPLICATE_q\) # (s_decimal(1)))) ) ) # ( !s_decimal(0) & ( (!s_decimal(3) & (!\s_decimal[2]~DUPLICATE_q\ & s_decimal(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datab => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	datac => ALT_INV_s_decimal(1),
	dataf => ALT_INV_s_decimal(0),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X64_Y1_N9
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( s_decimal(1) & ( ((!\s_decimal[0]~DUPLICATE_q\) # (!\s_decimal[2]~DUPLICATE_q\)) # (s_decimal(3)) ) ) # ( !s_decimal(1) & ( (\s_decimal[2]~DUPLICATE_q\) # (s_decimal(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s_decimal(3),
	datab => \ALT_INV_s_decimal[0]~DUPLICATE_q\,
	datac => \ALT_INV_s_decimal[2]~DUPLICATE_q\,
	dataf => ALT_INV_s_decimal(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X17_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


