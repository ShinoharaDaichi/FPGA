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

-- DATE "12/15/2015 12:18:28"

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
	input : IN std_logic;
	digit : IN std_logic_vector(3 DOWNTO 0);
	cout : BUFFER std_logic;
	HEX : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END segment7;

-- Design Ports Information
-- digit[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[3]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_input : std_logic;
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_HEX : std_logic_vector(6 DOWNTO 0);
SIGNAL \digit[0]~input_o\ : std_logic;
SIGNAL \digit[1]~input_o\ : std_logic;
SIGNAL \digit[2]~input_o\ : std_logic;
SIGNAL \digit[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \input~inputCLKENA0_outclk\ : std_logic;
SIGNAL \decimal[0]~2_combout\ : std_logic;
SIGNAL \decimal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decimal~0_combout\ : std_logic;
SIGNAL \decimal~1_combout\ : std_logic;
SIGNAL \decimal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \decimal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decimal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cout~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL decimal : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_decimal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_decimal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_decimal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_decimal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_decimal : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_input <= input;
ww_digit <= digit;
cout <= ww_cout;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_decimal[3]~DUPLICATE_q\ <= NOT \decimal[3]~DUPLICATE_q\;
\ALT_INV_decimal[2]~DUPLICATE_q\ <= NOT \decimal[2]~DUPLICATE_q\;
\ALT_INV_decimal[1]~DUPLICATE_q\ <= NOT \decimal[1]~DUPLICATE_q\;
\ALT_INV_decimal[0]~DUPLICATE_q\ <= NOT \decimal[0]~DUPLICATE_q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_decimal(3) <= NOT decimal(3);
ALT_INV_decimal(2) <= NOT decimal(2);
ALT_INV_decimal(1) <= NOT decimal(1);
ALT_INV_decimal(0) <= NOT decimal(0);

-- Location: IOOBUF_X10_Y61_N42
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
\HEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(6));

-- Location: IOIBUF_X50_Y0_N35
\input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: CLKCTRL_G8
\input~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \input~input_o\,
	outclk => \input~inputCLKENA0_outclk\);

-- Location: FF_X64_Y1_N52
\decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(0));

-- Location: LABCELL_X64_Y1_N51
\decimal[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[0]~2_combout\ = ( !decimal(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_decimal(0),
	combout => \decimal[0]~2_combout\);

-- Location: FF_X64_Y1_N53
\decimal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decimal[0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N6
\decimal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal~0_combout\ = ( \decimal[0]~DUPLICATE_q\ & ( (!decimal(1) & ((!\decimal[3]~DUPLICATE_q\) # (decimal(2)))) ) ) # ( !\decimal[0]~DUPLICATE_q\ & ( decimal(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_decimal(2),
	datac => \ALT_INV_decimal[3]~DUPLICATE_q\,
	datad => ALT_INV_decimal(1),
	dataf => \ALT_INV_decimal[0]~DUPLICATE_q\,
	combout => \decimal~0_combout\);

-- Location: FF_X64_Y1_N8
\decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(1));

-- Location: LABCELL_X64_Y1_N57
\decimal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal~1_combout\ = ( \decimal[0]~DUPLICATE_q\ & ( (!decimal(1) & (!\decimal[3]~DUPLICATE_q\ & !decimal(2))) # (decimal(1) & ((decimal(2)))) ) ) # ( !\decimal[0]~DUPLICATE_q\ & ( decimal(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decimal[3]~DUPLICATE_q\,
	datac => ALT_INV_decimal(1),
	datad => ALT_INV_decimal(2),
	dataf => \ALT_INV_decimal[0]~DUPLICATE_q\,
	combout => \decimal~1_combout\);

-- Location: FF_X64_Y1_N59
\decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(2));

-- Location: FF_X64_Y1_N34
\decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(3));

-- Location: FF_X64_Y1_N7
\decimal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decimal[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N33
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( decimal(3) & ( \decimal[1]~DUPLICATE_q\ ) ) # ( decimal(3) & ( !\decimal[1]~DUPLICATE_q\ & ( (!\decimal[0]~DUPLICATE_q\) # (decimal(2)) ) ) ) # ( !decimal(3) & ( !\decimal[1]~DUPLICATE_q\ & ( (!decimal(2) & \decimal[0]~DUPLICATE_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111111110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_decimal(2),
	datad => \ALT_INV_decimal[0]~DUPLICATE_q\,
	datae => ALT_INV_decimal(3),
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Add0~0_combout\);

-- Location: FF_X64_Y1_N35
\decimal[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decimal[3]~DUPLICATE_q\);

-- Location: FF_X64_Y1_N58
\decimal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \decimal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decimal[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N54
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\decimal[2]~DUPLICATE_q\ & ( (\decimal[3]~DUPLICATE_q\ & (!decimal(1) & \decimal[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decimal[3]~DUPLICATE_q\,
	datab => ALT_INV_decimal(1),
	datac => \ALT_INV_decimal[0]~DUPLICATE_q\,
	dataf => \ALT_INV_decimal[2]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X64_Y1_N56
\cout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input~inputCLKENA0_outclk\,
	d => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cout~reg0_q\);

-- Location: LABCELL_X64_Y1_N21
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\decimal[1]~DUPLICATE_q\ & ( (decimal(3) & (!decimal(0) $ (\decimal[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(3),
	datac => ALT_INV_decimal(0),
	datad => \ALT_INV_decimal[2]~DUPLICATE_q\,
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X64_Y1_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( decimal(0) & ( \decimal[1]~DUPLICATE_q\ & ( \decimal[2]~DUPLICATE_q\ ) ) ) # ( !decimal(0) & ( !\decimal[1]~DUPLICATE_q\ & ( \decimal[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_decimal[2]~DUPLICATE_q\,
	datae => ALT_INV_decimal(0),
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X64_Y1_N24
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( decimal(0) & ( \decimal[1]~DUPLICATE_q\ & ( !\decimal[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_decimal[2]~DUPLICATE_q\,
	datae => ALT_INV_decimal(0),
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X64_Y1_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \decimal[1]~DUPLICATE_q\ & ( (decimal(3) & (!decimal(0) & \decimal[2]~DUPLICATE_q\)) ) ) # ( !\decimal[1]~DUPLICATE_q\ & ( (decimal(3) & (!decimal(0) $ (\decimal[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(3),
	datab => ALT_INV_decimal(0),
	datac => \ALT_INV_decimal[2]~DUPLICATE_q\,
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X64_Y1_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !decimal(0) & ( \decimal[1]~DUPLICATE_q\ ) ) # ( decimal(0) & ( !\decimal[1]~DUPLICATE_q\ & ( \decimal[2]~DUPLICATE_q\ ) ) ) # ( !decimal(0) & ( !\decimal[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_decimal[2]~DUPLICATE_q\,
	datae => ALT_INV_decimal(0),
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X64_Y1_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \decimal[1]~DUPLICATE_q\ & ( (decimal(3) & ((!decimal(0)) # (!\decimal[2]~DUPLICATE_q\))) ) ) # ( !\decimal[1]~DUPLICATE_q\ & ( (decimal(3) & (!decimal(0) & !\decimal[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(3),
	datab => ALT_INV_decimal(0),
	datac => \ALT_INV_decimal[2]~DUPLICATE_q\,
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X64_Y1_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \decimal[1]~DUPLICATE_q\ & ( (!decimal(2)) # ((!decimal(3)) # (decimal(0))) ) ) # ( !\decimal[1]~DUPLICATE_q\ & ( (!decimal(3)) # (decimal(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_decimal(2),
	datac => ALT_INV_decimal(0),
	datad => ALT_INV_decimal(3),
	dataf => \ALT_INV_decimal[1]~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X14_Y0_N35
\digit[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(0),
	o => \digit[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\digit[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(1),
	o => \digit[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\digit[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(2),
	o => \digit[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\digit[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(3),
	o => \digit[3]~input_o\);

-- Location: MLABCELL_X14_Y36_N3
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


