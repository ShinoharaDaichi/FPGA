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

-- DATE "12/10/2015 09:02:06"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter8bit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	counter_output : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END counter8bit;

-- Design Ports Information
-- counter_output[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_output[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_counter_output : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_output_a0_a_aoutput_o : std_logic;
SIGNAL counter_output_a1_a_aoutput_o : std_logic;
SIGNAL counter_output_a2_a_aoutput_o : std_logic;
SIGNAL counter_output_a3_a_aoutput_o : std_logic;
SIGNAL counter_output_a4_a_aoutput_o : std_logic;
SIGNAL counter_output_a5_a_aoutput_o : std_logic;
SIGNAL counter_output_a6_a_aoutput_o : std_logic;
SIGNAL counter_output_a7_a_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL clk_ainputclkctrl_outclk : std_logic;
SIGNAL cnt_a0_a_a8_combout : std_logic;
SIGNAL reset_ainput_o : std_logic;
SIGNAL enable_ainput_o : std_logic;
SIGNAL cnt_a0_a_a10_combout : std_logic;
SIGNAL cnt_a0_a_a9 : std_logic;
SIGNAL cnt_a1_a_a11_combout : std_logic;
SIGNAL cnt_a1_a_a12 : std_logic;
SIGNAL cnt_a2_a_a13_combout : std_logic;
SIGNAL cnt_a2_a_a14 : std_logic;
SIGNAL cnt_a3_a_a15_combout : std_logic;
SIGNAL cnt_a3_a_a16 : std_logic;
SIGNAL cnt_a4_a_a17_combout : std_logic;
SIGNAL cnt_a4_a_a18 : std_logic;
SIGNAL cnt_a5_a_a19_combout : std_logic;
SIGNAL cnt_a5_a_a20 : std_logic;
SIGNAL cnt_a6_a_a21_combout : std_logic;
SIGNAL cnt_a6_a_a22 : std_logic;
SIGNAL cnt_a7_a_a23_combout : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_clk_ainputclkctrl_outclk : std_logic;
SIGNAL counter_output_a0_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a1_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a2_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a3_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a4_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a5_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a6_a_aoutput_I_driver : std_logic;
SIGNAL counter_output_a7_a_aoutput_I_driver : std_logic;
SIGNAL clk_ainput_I_driver : std_logic;
SIGNAL cnt_a0_a_a8_DATAB_driver : std_logic;
SIGNAL reset_ainput_I_driver : std_logic;
SIGNAL enable_ainput_I_driver : std_logic;
SIGNAL cnt_a0_a_a10_DATAC_driver : std_logic;
SIGNAL cnt_a0_a_a10_DATAD_driver : std_logic;
SIGNAL cnt_a0_a_CLK_driver : std_logic;
SIGNAL cnt_a0_a_D_driver : std_logic;
SIGNAL cnt_a0_a_SCLR_driver : std_logic;
SIGNAL cnt_a0_a_ENA_driver : std_logic;
SIGNAL cnt_a1_a_a11_DATAB_driver : std_logic;
SIGNAL cnt_a1_a_a11_CIN_driver : std_logic;
SIGNAL cnt_a1_a_CLK_driver : std_logic;
SIGNAL cnt_a1_a_D_driver : std_logic;
SIGNAL cnt_a1_a_SCLR_driver : std_logic;
SIGNAL cnt_a1_a_ENA_driver : std_logic;
SIGNAL cnt_a2_a_a13_DATAB_driver : std_logic;
SIGNAL cnt_a2_a_a13_CIN_driver : std_logic;
SIGNAL cnt_a2_a_CLK_driver : std_logic;
SIGNAL cnt_a2_a_D_driver : std_logic;
SIGNAL cnt_a2_a_SCLR_driver : std_logic;
SIGNAL cnt_a2_a_ENA_driver : std_logic;
SIGNAL cnt_a3_a_a15_DATAA_driver : std_logic;
SIGNAL cnt_a3_a_a15_CIN_driver : std_logic;
SIGNAL cnt_a3_a_CLK_driver : std_logic;
SIGNAL cnt_a3_a_D_driver : std_logic;
SIGNAL cnt_a3_a_SCLR_driver : std_logic;
SIGNAL cnt_a3_a_ENA_driver : std_logic;
SIGNAL cnt_a4_a_a17_DATAB_driver : std_logic;
SIGNAL cnt_a4_a_a17_CIN_driver : std_logic;
SIGNAL cnt_a4_a_CLK_driver : std_logic;
SIGNAL cnt_a4_a_D_driver : std_logic;
SIGNAL cnt_a4_a_SCLR_driver : std_logic;
SIGNAL cnt_a4_a_ENA_driver : std_logic;
SIGNAL cnt_a5_a_a19_DATAA_driver : std_logic;
SIGNAL cnt_a5_a_a19_CIN_driver : std_logic;
SIGNAL cnt_a5_a_CLK_driver : std_logic;
SIGNAL cnt_a5_a_D_driver : std_logic;
SIGNAL cnt_a5_a_SCLR_driver : std_logic;
SIGNAL cnt_a5_a_ENA_driver : std_logic;
SIGNAL cnt_a6_a_a21_DATAA_driver : std_logic;
SIGNAL cnt_a6_a_a21_CIN_driver : std_logic;
SIGNAL cnt_a6_a_CLK_driver : std_logic;
SIGNAL cnt_a6_a_D_driver : std_logic;
SIGNAL cnt_a6_a_SCLR_driver : std_logic;
SIGNAL cnt_a6_a_ENA_driver : std_logic;
SIGNAL cnt_a7_a_a23_DATAB_driver : std_logic;
SIGNAL cnt_a7_a_a23_CIN_driver : std_logic;
SIGNAL cnt_a7_a_CLK_driver : std_logic;
SIGNAL cnt_a7_a_D_driver : std_logic;
SIGNAL cnt_a7_a_SCLR_driver : std_logic;
SIGNAL cnt_a7_a_ENA_driver : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
counter_output <= ww_counter_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_clk_ainputclkctrl_outclk <= NOT clk_ainputclkctrl_outclk;

counter_output_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(0),
	dataout => counter_output_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y23_N23
counter_output_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a0_a_aoutput_o);

counter_output_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(1),
	dataout => counter_output_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y11_N2
counter_output_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a1_a_aoutput_o);

counter_output_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(2),
	dataout => counter_output_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y23_N16
counter_output_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a2_a_aoutput_o);

counter_output_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(3),
	dataout => counter_output_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y11_N9
counter_output_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a3_a_aoutput_o);

counter_output_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(4),
	dataout => counter_output_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y12_N2
counter_output_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a4_a_aoutput_o);

counter_output_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(5),
	dataout => counter_output_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y15_N9
counter_output_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a5_a_aoutput_o);

counter_output_a6_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(6),
	dataout => counter_output_a6_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y12_N9
counter_output_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a6_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a6_a_aoutput_o);

counter_output_a7_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(7),
	dataout => counter_output_a7_a_aoutput_I_driver);

-- Location: IOOBUF_X0_Y15_N2
counter_output_a7_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_output_a7_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => counter_output_a7_a_aoutput_o);

clk_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_clk,
	dataout => clk_ainput_I_driver);

-- Location: IOIBUF_X0_Y16_N8
clk_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => clk_ainput_I_driver,
	o => clk_ainput_o);

clk_ainputclkctrl_INCLK_a0_a_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => clk_ainput_o,
	dataout => clk_ainputclkctrl_INCLK_bus(0));

clk_ainputclkctrl_INCLK_a1_a_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(1));

clk_ainputclkctrl_INCLK_a2_a_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(2));

clk_ainputclkctrl_INCLK_a3_a_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G2
clk_ainputclkctrl : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_ainputclkctrl_outclk);

cnt_a0_a_a8_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(0),
	dataout => cnt_a0_a_a8_DATAB_driver);

-- Location: LCCOMB_X1_Y15_N0
cnt_a0_a_a8 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a0_a_a8_combout = cnt(0) $ (VCC)
-- cnt_a0_a_a9 = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_a0_a_a8_DATAB_driver,
	datad => VCC,
	combout => cnt_a0_a_a8_combout,
	cout => cnt_a0_a_a9);

reset_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_reset,
	dataout => reset_ainput_I_driver);

-- Location: IOIBUF_X53_Y17_N8
reset_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => reset_ainput_I_driver,
	o => reset_ainput_o);

enable_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_enable,
	dataout => enable_ainput_I_driver);

-- Location: IOIBUF_X53_Y17_N1
enable_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => enable_ainput_I_driver,
	o => enable_ainput_o);

cnt_a0_a_a10_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => enable_ainput_o,
	dataout => cnt_a0_a_a10_DATAC_driver);

cnt_a0_a_a10_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a0_a_a10_DATAD_driver);

-- Location: LCCOMB_X1_Y15_N16
cnt_a0_a_a10 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a0_a_a10_combout = (enable_ainput_o) # (reset_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_a0_a_a10_DATAC_driver,
	datad => cnt_a0_a_a10_DATAD_driver,
	combout => cnt_a0_a_a10_combout);

cnt_a0_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a0_a_CLK_driver);

cnt_a0_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a8_combout,
	dataout => cnt_a0_a_D_driver);

cnt_a0_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a0_a_SCLR_driver);

cnt_a0_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a0_a_ENA_driver);

-- Location: FF_X1_Y15_N1
cnt_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a0_a_CLK_driver,
	d => cnt_a0_a_D_driver,
	sclr => cnt_a0_a_SCLR_driver,
	ena => cnt_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

cnt_a1_a_a11_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(1),
	dataout => cnt_a1_a_a11_DATAB_driver);

cnt_a1_a_a11_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a9,
	dataout => cnt_a1_a_a11_CIN_driver);

-- Location: LCCOMB_X1_Y15_N2
cnt_a1_a_a11 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a1_a_a11_combout = (cnt(1) & (!cnt_a0_a_a9)) # (!cnt(1) & ((cnt_a0_a_a9) # (GND)))
-- cnt_a1_a_a12 = CARRY((!cnt_a0_a_a9) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_a1_a_a11_DATAB_driver,
	datad => VCC,
	cin => cnt_a1_a_a11_CIN_driver,
	combout => cnt_a1_a_a11_combout,
	cout => cnt_a1_a_a12);

cnt_a1_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a1_a_CLK_driver);

cnt_a1_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a1_a_a11_combout,
	dataout => cnt_a1_a_D_driver);

cnt_a1_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a1_a_SCLR_driver);

cnt_a1_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a1_a_ENA_driver);

-- Location: FF_X1_Y15_N3
cnt_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a1_a_CLK_driver,
	d => cnt_a1_a_D_driver,
	sclr => cnt_a1_a_SCLR_driver,
	ena => cnt_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

cnt_a2_a_a13_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(2),
	dataout => cnt_a2_a_a13_DATAB_driver);

cnt_a2_a_a13_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a1_a_a12,
	dataout => cnt_a2_a_a13_CIN_driver);

-- Location: LCCOMB_X1_Y15_N4
cnt_a2_a_a13 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a2_a_a13_combout = (cnt(2) & (cnt_a1_a_a12 $ (GND))) # (!cnt(2) & (!cnt_a1_a_a12 & VCC))
-- cnt_a2_a_a14 = CARRY((cnt(2) & !cnt_a1_a_a12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_a2_a_a13_DATAB_driver,
	datad => VCC,
	cin => cnt_a2_a_a13_CIN_driver,
	combout => cnt_a2_a_a13_combout,
	cout => cnt_a2_a_a14);

cnt_a2_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a2_a_CLK_driver);

cnt_a2_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a2_a_a13_combout,
	dataout => cnt_a2_a_D_driver);

cnt_a2_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a2_a_SCLR_driver);

cnt_a2_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a2_a_ENA_driver);

-- Location: FF_X1_Y15_N5
cnt_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a2_a_CLK_driver,
	d => cnt_a2_a_D_driver,
	sclr => cnt_a2_a_SCLR_driver,
	ena => cnt_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

cnt_a3_a_a15_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(3),
	dataout => cnt_a3_a_a15_DATAA_driver);

cnt_a3_a_a15_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a2_a_a14,
	dataout => cnt_a3_a_a15_CIN_driver);

-- Location: LCCOMB_X1_Y15_N6
cnt_a3_a_a15 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a3_a_a15_combout = (cnt(3) & (!cnt_a2_a_a14)) # (!cnt(3) & ((cnt_a2_a_a14) # (GND)))
-- cnt_a3_a_a16 = CARRY((!cnt_a2_a_a14) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_a3_a_a15_DATAA_driver,
	datad => VCC,
	cin => cnt_a3_a_a15_CIN_driver,
	combout => cnt_a3_a_a15_combout,
	cout => cnt_a3_a_a16);

cnt_a3_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a3_a_CLK_driver);

cnt_a3_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a3_a_a15_combout,
	dataout => cnt_a3_a_D_driver);

cnt_a3_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a3_a_SCLR_driver);

cnt_a3_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a3_a_ENA_driver);

-- Location: FF_X1_Y15_N7
cnt_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a3_a_CLK_driver,
	d => cnt_a3_a_D_driver,
	sclr => cnt_a3_a_SCLR_driver,
	ena => cnt_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

cnt_a4_a_a17_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(4),
	dataout => cnt_a4_a_a17_DATAB_driver);

cnt_a4_a_a17_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a3_a_a16,
	dataout => cnt_a4_a_a17_CIN_driver);

-- Location: LCCOMB_X1_Y15_N8
cnt_a4_a_a17 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a4_a_a17_combout = (cnt(4) & (cnt_a3_a_a16 $ (GND))) # (!cnt(4) & (!cnt_a3_a_a16 & VCC))
-- cnt_a4_a_a18 = CARRY((cnt(4) & !cnt_a3_a_a16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_a4_a_a17_DATAB_driver,
	datad => VCC,
	cin => cnt_a4_a_a17_CIN_driver,
	combout => cnt_a4_a_a17_combout,
	cout => cnt_a4_a_a18);

cnt_a4_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a4_a_CLK_driver);

cnt_a4_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a4_a_a17_combout,
	dataout => cnt_a4_a_D_driver);

cnt_a4_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a4_a_SCLR_driver);

cnt_a4_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a4_a_ENA_driver);

-- Location: FF_X1_Y15_N9
cnt_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a4_a_CLK_driver,
	d => cnt_a4_a_D_driver,
	sclr => cnt_a4_a_SCLR_driver,
	ena => cnt_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

cnt_a5_a_a19_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(5),
	dataout => cnt_a5_a_a19_DATAA_driver);

cnt_a5_a_a19_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a4_a_a18,
	dataout => cnt_a5_a_a19_CIN_driver);

-- Location: LCCOMB_X1_Y15_N10
cnt_a5_a_a19 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a5_a_a19_combout = (cnt(5) & (!cnt_a4_a_a18)) # (!cnt(5) & ((cnt_a4_a_a18) # (GND)))
-- cnt_a5_a_a20 = CARRY((!cnt_a4_a_a18) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_a5_a_a19_DATAA_driver,
	datad => VCC,
	cin => cnt_a5_a_a19_CIN_driver,
	combout => cnt_a5_a_a19_combout,
	cout => cnt_a5_a_a20);

cnt_a5_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a5_a_CLK_driver);

cnt_a5_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a5_a_a19_combout,
	dataout => cnt_a5_a_D_driver);

cnt_a5_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a5_a_SCLR_driver);

cnt_a5_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a5_a_ENA_driver);

-- Location: FF_X1_Y15_N11
cnt_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a5_a_CLK_driver,
	d => cnt_a5_a_D_driver,
	sclr => cnt_a5_a_SCLR_driver,
	ena => cnt_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

cnt_a6_a_a21_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(6),
	dataout => cnt_a6_a_a21_DATAA_driver);

cnt_a6_a_a21_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a5_a_a20,
	dataout => cnt_a6_a_a21_CIN_driver);

-- Location: LCCOMB_X1_Y15_N12
cnt_a6_a_a21 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a6_a_a21_combout = (cnt(6) & (cnt_a5_a_a20 $ (GND))) # (!cnt(6) & (!cnt_a5_a_a20 & VCC))
-- cnt_a6_a_a22 = CARRY((cnt(6) & !cnt_a5_a_a20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_a6_a_a21_DATAA_driver,
	datad => VCC,
	cin => cnt_a6_a_a21_CIN_driver,
	combout => cnt_a6_a_a21_combout,
	cout => cnt_a6_a_a22);

cnt_a6_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a6_a_CLK_driver);

cnt_a6_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a6_a_a21_combout,
	dataout => cnt_a6_a_D_driver);

cnt_a6_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a6_a_SCLR_driver);

cnt_a6_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a6_a_ENA_driver);

-- Location: FF_X1_Y15_N13
cnt_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a6_a_CLK_driver,
	d => cnt_a6_a_D_driver,
	sclr => cnt_a6_a_SCLR_driver,
	ena => cnt_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

cnt_a7_a_a23_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt(7),
	dataout => cnt_a7_a_a23_DATAB_driver);

cnt_a7_a_a23_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a6_a_a22,
	dataout => cnt_a7_a_a23_CIN_driver);

-- Location: LCCOMB_X1_Y15_N14
cnt_a7_a_a23 : cycloneive_lcell_comb
-- Equation(s):
-- cnt_a7_a_a23_combout = cnt(7) $ (cnt_a6_a_a22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_a7_a_a23_DATAB_driver,
	cin => cnt_a7_a_a23_CIN_driver,
	combout => cnt_a7_a_a23_combout);

cnt_a7_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_clk_ainputclkctrl_outclk,
	dataout => cnt_a7_a_CLK_driver);

cnt_a7_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a7_a_a23_combout,
	dataout => cnt_a7_a_D_driver);

cnt_a7_a_SCLR_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => cnt_a7_a_SCLR_driver);

cnt_a7_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => cnt_a0_a_a10_combout,
	dataout => cnt_a7_a_ENA_driver);

-- Location: FF_X1_Y15_N15
cnt_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => cnt_a7_a_CLK_driver,
	d => cnt_a7_a_D_driver,
	sclr => cnt_a7_a_SCLR_driver,
	ena => cnt_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

ww_counter_output(0) <= counter_output_a0_a_aoutput_o;

ww_counter_output(1) <= counter_output_a1_a_aoutput_o;

ww_counter_output(2) <= counter_output_a2_a_aoutput_o;

ww_counter_output(3) <= counter_output_a3_a_aoutput_o;

ww_counter_output(4) <= counter_output_a4_a_aoutput_o;

ww_counter_output(5) <= counter_output_a5_a_aoutput_o;

ww_counter_output(6) <= counter_output_a6_a_aoutput_o;

ww_counter_output(7) <= counter_output_a7_a_aoutput_o;
END structure;


