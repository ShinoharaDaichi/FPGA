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

-- DATE "12/10/2015 11:01:01"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux16 IS
    PORT (
	selection_lines : IN std_logic_vector(3 DOWNTO 0);
	input_lines : IN std_logic_vector(15 DOWNTO 0);
	output_line : BUFFER std_logic
	);
END mux16;

-- Design Ports Information
-- output_line	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[1]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[2]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection_lines[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection_lines[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[4]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[5]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[7]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[8]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[9]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[12]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[13]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[14]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_lines[15]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection_lines[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection_lines[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selection_lines : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_input_lines : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output_line : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \selection_lines[2]~input_o\ : std_logic;
SIGNAL \input_lines[5]~input_o\ : std_logic;
SIGNAL \input_lines[7]~input_o\ : std_logic;
SIGNAL \selection_lines[0]~input_o\ : std_logic;
SIGNAL \input_lines[6]~input_o\ : std_logic;
SIGNAL \selection_lines[1]~input_o\ : std_logic;
SIGNAL \input_lines[4]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \input_lines[12]~input_o\ : std_logic;
SIGNAL \input_lines[15]~input_o\ : std_logic;
SIGNAL \input_lines[13]~input_o\ : std_logic;
SIGNAL \input_lines[14]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \input_lines[8]~input_o\ : std_logic;
SIGNAL \input_lines[9]~input_o\ : std_logic;
SIGNAL \input_lines[10]~input_o\ : std_logic;
SIGNAL \input_lines[11]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \selection_lines[3]~input_o\ : std_logic;
SIGNAL \input_lines[0]~input_o\ : std_logic;
SIGNAL \input_lines[3]~input_o\ : std_logic;
SIGNAL \input_lines[1]~input_o\ : std_logic;
SIGNAL \input_lines[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_selection_lines[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection_lines[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection_lines[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection_lines[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_lines[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_selection_lines <= selection_lines;
ww_input_lines <= input_lines;
output_line <= ww_output_line;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_selection_lines[3]~input_o\ <= NOT \selection_lines[3]~input_o\;
\ALT_INV_selection_lines[2]~input_o\ <= NOT \selection_lines[2]~input_o\;
\ALT_INV_input_lines[15]~input_o\ <= NOT \input_lines[15]~input_o\;
\ALT_INV_input_lines[14]~input_o\ <= NOT \input_lines[14]~input_o\;
\ALT_INV_input_lines[13]~input_o\ <= NOT \input_lines[13]~input_o\;
\ALT_INV_input_lines[12]~input_o\ <= NOT \input_lines[12]~input_o\;
\ALT_INV_input_lines[11]~input_o\ <= NOT \input_lines[11]~input_o\;
\ALT_INV_input_lines[10]~input_o\ <= NOT \input_lines[10]~input_o\;
\ALT_INV_input_lines[9]~input_o\ <= NOT \input_lines[9]~input_o\;
\ALT_INV_input_lines[8]~input_o\ <= NOT \input_lines[8]~input_o\;
\ALT_INV_input_lines[7]~input_o\ <= NOT \input_lines[7]~input_o\;
\ALT_INV_input_lines[6]~input_o\ <= NOT \input_lines[6]~input_o\;
\ALT_INV_input_lines[5]~input_o\ <= NOT \input_lines[5]~input_o\;
\ALT_INV_input_lines[4]~input_o\ <= NOT \input_lines[4]~input_o\;
\ALT_INV_selection_lines[1]~input_o\ <= NOT \selection_lines[1]~input_o\;
\ALT_INV_selection_lines[0]~input_o\ <= NOT \selection_lines[0]~input_o\;
\ALT_INV_input_lines[3]~input_o\ <= NOT \input_lines[3]~input_o\;
\ALT_INV_input_lines[2]~input_o\ <= NOT \input_lines[2]~input_o\;
\ALT_INV_input_lines[1]~input_o\ <= NOT \input_lines[1]~input_o\;
\ALT_INV_input_lines[0]~input_o\ <= NOT \input_lines[0]~input_o\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X68_Y24_N56
\output_line~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_output_line);

-- Location: IOIBUF_X68_Y17_N38
\selection_lines[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection_lines(2),
	o => \selection_lines[2]~input_o\);

-- Location: IOIBUF_X68_Y17_N4
\input_lines[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(5),
	o => \input_lines[5]~input_o\);

-- Location: IOIBUF_X68_Y22_N44
\input_lines[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(7),
	o => \input_lines[7]~input_o\);

-- Location: IOIBUF_X68_Y22_N61
\selection_lines[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection_lines(0),
	o => \selection_lines[0]~input_o\);

-- Location: IOIBUF_X68_Y14_N44
\input_lines[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(6),
	o => \input_lines[6]~input_o\);

-- Location: IOIBUF_X68_Y19_N55
\selection_lines[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection_lines(1),
	o => \selection_lines[1]~input_o\);

-- Location: IOIBUF_X68_Y22_N95
\input_lines[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(4),
	o => \input_lines[4]~input_o\);

-- Location: LABCELL_X67_Y17_N6
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \selection_lines[1]~input_o\ & ( \input_lines[4]~input_o\ & ( (!\selection_lines[0]~input_o\ & ((\input_lines[6]~input_o\))) # (\selection_lines[0]~input_o\ & (\input_lines[7]~input_o\)) ) ) ) # ( !\selection_lines[1]~input_o\ & ( 
-- \input_lines[4]~input_o\ & ( (!\selection_lines[0]~input_o\) # (\input_lines[5]~input_o\) ) ) ) # ( \selection_lines[1]~input_o\ & ( !\input_lines[4]~input_o\ & ( (!\selection_lines[0]~input_o\ & ((\input_lines[6]~input_o\))) # 
-- (\selection_lines[0]~input_o\ & (\input_lines[7]~input_o\)) ) ) ) # ( !\selection_lines[1]~input_o\ & ( !\input_lines[4]~input_o\ & ( (\input_lines[5]~input_o\ & \selection_lines[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_lines[5]~input_o\,
	datab => \ALT_INV_input_lines[7]~input_o\,
	datac => \ALT_INV_selection_lines[0]~input_o\,
	datad => \ALT_INV_input_lines[6]~input_o\,
	datae => \ALT_INV_selection_lines[1]~input_o\,
	dataf => \ALT_INV_input_lines[4]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X68_Y19_N21
\input_lines[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(12),
	o => \input_lines[12]~input_o\);

-- Location: IOIBUF_X68_Y14_N78
\input_lines[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(15),
	o => \input_lines[15]~input_o\);

-- Location: IOIBUF_X68_Y16_N4
\input_lines[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(13),
	o => \input_lines[13]~input_o\);

-- Location: IOIBUF_X68_Y19_N38
\input_lines[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(14),
	o => \input_lines[14]~input_o\);

-- Location: LABCELL_X67_Y17_N18
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \selection_lines[1]~input_o\ & ( \selection_lines[0]~input_o\ & ( \input_lines[15]~input_o\ ) ) ) # ( !\selection_lines[1]~input_o\ & ( \selection_lines[0]~input_o\ & ( \input_lines[13]~input_o\ ) ) ) # ( \selection_lines[1]~input_o\ 
-- & ( !\selection_lines[0]~input_o\ & ( \input_lines[14]~input_o\ ) ) ) # ( !\selection_lines[1]~input_o\ & ( !\selection_lines[0]~input_o\ & ( \input_lines[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_lines[12]~input_o\,
	datab => \ALT_INV_input_lines[15]~input_o\,
	datac => \ALT_INV_input_lines[13]~input_o\,
	datad => \ALT_INV_input_lines[14]~input_o\,
	datae => \ALT_INV_selection_lines[1]~input_o\,
	dataf => \ALT_INV_selection_lines[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X68_Y16_N21
\input_lines[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(8),
	o => \input_lines[8]~input_o\);

-- Location: IOIBUF_X68_Y16_N38
\input_lines[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(9),
	o => \input_lines[9]~input_o\);

-- Location: IOIBUF_X68_Y14_N61
\input_lines[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(10),
	o => \input_lines[10]~input_o\);

-- Location: IOIBUF_X68_Y22_N78
\input_lines[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(11),
	o => \input_lines[11]~input_o\);

-- Location: LABCELL_X67_Y17_N42
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \input_lines[11]~input_o\ & ( \selection_lines[0]~input_o\ & ( (\input_lines[9]~input_o\) # (\selection_lines[1]~input_o\) ) ) ) # ( !\input_lines[11]~input_o\ & ( \selection_lines[0]~input_o\ & ( (!\selection_lines[1]~input_o\ & 
-- \input_lines[9]~input_o\) ) ) ) # ( \input_lines[11]~input_o\ & ( !\selection_lines[0]~input_o\ & ( (!\selection_lines[1]~input_o\ & (\input_lines[8]~input_o\)) # (\selection_lines[1]~input_o\ & ((\input_lines[10]~input_o\))) ) ) ) # ( 
-- !\input_lines[11]~input_o\ & ( !\selection_lines[0]~input_o\ & ( (!\selection_lines[1]~input_o\ & (\input_lines[8]~input_o\)) # (\selection_lines[1]~input_o\ & ((\input_lines[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selection_lines[1]~input_o\,
	datab => \ALT_INV_input_lines[8]~input_o\,
	datac => \ALT_INV_input_lines[9]~input_o\,
	datad => \ALT_INV_input_lines[10]~input_o\,
	datae => \ALT_INV_input_lines[11]~input_o\,
	dataf => \ALT_INV_selection_lines[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X68_Y19_N4
\selection_lines[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection_lines(3),
	o => \selection_lines[3]~input_o\);

-- Location: IOIBUF_X68_Y17_N55
\input_lines[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(0),
	o => \input_lines[0]~input_o\);

-- Location: IOIBUF_X68_Y16_N55
\input_lines[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(3),
	o => \input_lines[3]~input_o\);

-- Location: IOIBUF_X68_Y14_N95
\input_lines[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(1),
	o => \input_lines[1]~input_o\);

-- Location: IOIBUF_X68_Y17_N21
\input_lines[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_lines(2),
	o => \input_lines[2]~input_o\);

-- Location: LABCELL_X67_Y17_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \selection_lines[1]~input_o\ & ( \selection_lines[0]~input_o\ & ( \input_lines[3]~input_o\ ) ) ) # ( !\selection_lines[1]~input_o\ & ( \selection_lines[0]~input_o\ & ( \input_lines[1]~input_o\ ) ) ) # ( \selection_lines[1]~input_o\ & 
-- ( !\selection_lines[0]~input_o\ & ( \input_lines[2]~input_o\ ) ) ) # ( !\selection_lines[1]~input_o\ & ( !\selection_lines[0]~input_o\ & ( \input_lines[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_lines[0]~input_o\,
	datab => \ALT_INV_input_lines[3]~input_o\,
	datac => \ALT_INV_input_lines[1]~input_o\,
	datad => \ALT_INV_input_lines[2]~input_o\,
	datae => \ALT_INV_selection_lines[1]~input_o\,
	dataf => \ALT_INV_selection_lines[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X67_Y17_N24
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( \selection_lines[3]~input_o\ & ( \Mux0~0_combout\ & ( (!\selection_lines[2]~input_o\ & ((\Mux0~2_combout\))) # (\selection_lines[2]~input_o\ & (\Mux0~3_combout\)) ) ) ) # ( !\selection_lines[3]~input_o\ & ( \Mux0~0_combout\ & ( 
-- (!\selection_lines[2]~input_o\) # (\Mux0~1_combout\) ) ) ) # ( \selection_lines[3]~input_o\ & ( !\Mux0~0_combout\ & ( (!\selection_lines[2]~input_o\ & ((\Mux0~2_combout\))) # (\selection_lines[2]~input_o\ & (\Mux0~3_combout\)) ) ) ) # ( 
-- !\selection_lines[3]~input_o\ & ( !\Mux0~0_combout\ & ( (\selection_lines[2]~input_o\ & \Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selection_lines[2]~input_o\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_Mux0~3_combout\,
	datad => \ALT_INV_Mux0~2_combout\,
	datae => \ALT_INV_selection_lines[3]~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X56_Y15_N0
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


