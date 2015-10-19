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

-- DATE "10/16/2015 19:12:32"

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

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	ena : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_out : OUT std_logic_vector(0 DOWNTO 0);
	pwm_n_out : OUT std_logic_vector(0 DOWNTO 0)
	);
END pwm;

-- Design Ports Information
-- pwm_out[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_n_out[0]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_n_out : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \duty[3]~input_o\ : std_logic;
SIGNAL \duty[4]~input_o\ : std_logic;
SIGNAL \duty[5]~input_o\ : std_logic;
SIGNAL \duty[6]~input_o\ : std_logic;
SIGNAL \duty[7]~input_o\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \count[0][2]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \count[0][3]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \count[0][4]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \count[0][5]~q\ : std_logic;
SIGNAL \count[0][7]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \count[0][6]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \count[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \count[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \count[0][8]~q\ : std_logic;
SIGNAL \count[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count[0][0]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \count[0][1]~q\ : std_logic;
SIGNAL \half_duty[0][0]~0_combout\ : std_logic;
SIGNAL \half_duty[0][4]~q\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \half_duty[0][5]~q\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \half_duty[0][6]~q\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \half_duty[0][7]~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \half_duty[0][2]~q\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \half_duty[0][3]~q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \half_duty[0][1]~q\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \half_duty[0][0]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_out[0]~reg0_q\ : std_logic;
SIGNAL \pwm_n_out[0]~0_combout\ : std_logic;
SIGNAL \pwm_n_out[0]~reg0_q\ : std_logic;
SIGNAL half_duty_new : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_count[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_pwm_n_out[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pwm_out[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_count[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_count[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_count[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_count[0][8]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_ena <= ena;
ww_duty <= duty;
pwm_out <= ww_pwm_out;
pwm_n_out <= ww_pwm_n_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd);

\Mult0~8_AY_bus\ <= (\duty[7]~input_o\ & \duty[6]~input_o\ & \duty[5]~input_o\ & \duty[4]~input_o\ & \duty[3]~input_o\ & \duty[2]~input_o\ & \duty[1]~input_o\ & \duty[0]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_count[0][4]~DUPLICATE_q\ <= NOT \count[0][4]~DUPLICATE_q\;
\ALT_INV_count[0][7]~DUPLICATE_q\ <= NOT \count[0][7]~DUPLICATE_q\;
\ALT_INV_count[0][6]~DUPLICATE_q\ <= NOT \count[0][6]~DUPLICATE_q\;
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_half_duty[0][3]~q\ <= NOT \half_duty[0][3]~q\;
\ALT_INV_half_duty[0][2]~q\ <= NOT \half_duty[0][2]~q\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_half_duty[0][1]~q\ <= NOT \half_duty[0][1]~q\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_half_duty[0][7]~q\ <= NOT \half_duty[0][7]~q\;
\ALT_INV_half_duty[0][6]~q\ <= NOT \half_duty[0][6]~q\;
\ALT_INV_half_duty[0][5]~q\ <= NOT \half_duty[0][5]~q\;
\ALT_INV_half_duty[0][4]~q\ <= NOT \half_duty[0][4]~q\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_half_duty[0][0]~q\ <= NOT \half_duty[0][0]~q\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_pwm_n_out[0]~reg0_q\ <= NOT \pwm_n_out[0]~reg0_q\;
\ALT_INV_pwm_out[0]~reg0_q\ <= NOT \pwm_out[0]~reg0_q\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_count[0][5]~q\ <= NOT \count[0][5]~q\;
\ALT_INV_count[0][4]~q\ <= NOT \count[0][4]~q\;
\ALT_INV_count[0][3]~q\ <= NOT \count[0][3]~q\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_count[0][2]~q\ <= NOT \count[0][2]~q\;
\ALT_INV_count[0][1]~q\ <= NOT \count[0][1]~q\;
\ALT_INV_count[0][0]~q\ <= NOT \count[0][0]~q\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_count[0][7]~q\ <= NOT \count[0][7]~q\;
\ALT_INV_count[0][6]~q\ <= NOT \count[0][6]~q\;
\ALT_INV_count[0][8]~q\ <= NOT \count[0][8]~q\;

-- Location: IOOBUF_X14_Y61_N53
\pwm_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_pwm_out(0));

-- Location: IOOBUF_X15_Y61_N36
\pwm_n_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_n_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_pwm_n_out(0));

-- Location: IOIBUF_X38_Y61_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N35
\duty[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\duty[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\duty[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\duty[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(3),
	o => \duty[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\duty[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(4),
	o => \duty[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\duty[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(5),
	o => \duty[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\duty[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(6),
	o => \duty[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\duty[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(7),
	o => \duty[7]~input_o\);

-- Location: DSP_X16_Y7_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X14_Y11_N57
\half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \half_duty_new[4]~feeder_combout\ = ( \Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~21\,
	combout => \half_duty_new[4]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N35
\ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X14_Y11_N59
\half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(4));

-- Location: LABCELL_X15_Y11_N30
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \count[0][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~14\ = CARRY(( \count[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][0]~q\,
	cin => GND,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X15_Y11_N33
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \count[0][1]~q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \count[0][1]~q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][1]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X15_Y11_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \count[0][2]~q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \count[0][2]~q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][2]~q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X15_Y11_N38
\count[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][2]~q\);

-- Location: LABCELL_X15_Y11_N39
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \count[0][3]~q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \count[0][3]~q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][3]~q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X15_Y11_N41
\count[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][3]~q\);

-- Location: LABCELL_X15_Y11_N42
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \count[0][4]~q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \count[0][4]~q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][4]~q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X15_Y11_N43
\count[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][4]~q\);

-- Location: LABCELL_X15_Y11_N45
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \count[0][5]~q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \count[0][5]~q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][5]~q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X15_Y11_N47
\count[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][5]~q\);

-- Location: FF_X15_Y11_N52
\count[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][7]~q\);

-- Location: LABCELL_X15_Y11_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \count[0][6]~q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~6\ = CARRY(( \count[0][6]~q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][6]~q\,
	cin => \Add0~34\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X15_Y11_N50
\count[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][6]~q\);

-- Location: LABCELL_X15_Y11_N51
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \count[0][7]~q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \count[0][7]~q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][7]~q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X15_Y11_N53
\count[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][7]~DUPLICATE_q\);

-- Location: FF_X15_Y11_N49
\count[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][6]~DUPLICATE_q\);

-- Location: LABCELL_X15_Y11_N54
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \count[0][8]~q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count[0][8]~q\,
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X15_Y11_N55
\count[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][8]~q\);

-- Location: FF_X15_Y11_N44
\count[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][4]~DUPLICATE_q\);

-- Location: LABCELL_X15_Y11_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \count[0][8]~q\ & ( \count[0][4]~DUPLICATE_q\ & ( (\count[0][5]~q\ & (\count[0][7]~DUPLICATE_q\ & \count[0][6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[0][5]~q\,
	datac => \ALT_INV_count[0][7]~DUPLICATE_q\,
	datad => \ALT_INV_count[0][6]~DUPLICATE_q\,
	datae => \ALT_INV_count[0][8]~q\,
	dataf => \ALT_INV_count[0][4]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X15_Y11_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\count[0][3]~q\ & ( (\count[0][1]~q\ & (\count[0][0]~q\ & (\Equal0~0_combout\ & !\count[0][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][1]~q\,
	datab => \ALT_INV_count[0][0]~q\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_count[0][2]~q\,
	dataf => \ALT_INV_count[0][3]~q\,
	combout => \Equal0~1_combout\);

-- Location: FF_X15_Y11_N32
\count[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][0]~q\);

-- Location: FF_X15_Y11_N35
\count[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][1]~q\);

-- Location: LABCELL_X15_Y11_N0
\half_duty[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \half_duty[0][0]~0_combout\ = ( !\count[0][2]~q\ & ( \Equal0~0_combout\ & ( (\count[0][1]~q\ & (!\count[0][3]~q\ & (\reset_n~input_o\ & \count[0][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][1]~q\,
	datab => \ALT_INV_count[0][3]~q\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_count[0][0]~q\,
	datae => \ALT_INV_count[0][2]~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \half_duty[0][0]~0_combout\);

-- Location: FF_X14_Y11_N40
\half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(4),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][4]~q\);

-- Location: FF_X14_Y11_N29
\half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~22\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(5));

-- Location: FF_X14_Y11_N44
\half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(5),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][5]~q\);

-- Location: FF_X14_Y11_N23
\half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~23\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(6));

-- Location: FF_X14_Y11_N46
\half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(6),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][6]~q\);

-- Location: FF_X14_Y11_N5
\half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~24\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(7));

-- Location: FF_X14_Y11_N50
\half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(7),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][7]~q\);

-- Location: MLABCELL_X14_Y11_N12
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \count[0][7]~q\ & ( \count[0][5]~q\ & ( (\half_duty[0][5]~q\ & (\half_duty[0][7]~q\ & (!\half_duty[0][6]~q\ $ (\count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\count[0][7]~q\ & ( \count[0][5]~q\ & ( (\half_duty[0][5]~q\ & 
-- (!\half_duty[0][7]~q\ & (!\half_duty[0][6]~q\ $ (\count[0][6]~DUPLICATE_q\)))) ) ) ) # ( \count[0][7]~q\ & ( !\count[0][5]~q\ & ( (!\half_duty[0][5]~q\ & (\half_duty[0][7]~q\ & (!\half_duty[0][6]~q\ $ (\count[0][6]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\count[0][7]~q\ & ( !\count[0][5]~q\ & ( (!\half_duty[0][5]~q\ & (!\half_duty[0][7]~q\ & (!\half_duty[0][6]~q\ $ (\count[0][6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_half_duty[0][5]~q\,
	datab => \ALT_INV_half_duty[0][6]~q\,
	datac => \ALT_INV_count[0][6]~DUPLICATE_q\,
	datad => \ALT_INV_half_duty[0][7]~q\,
	datae => \ALT_INV_count[0][7]~q\,
	dataf => \ALT_INV_count[0][5]~q\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X14_Y11_N54
\half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \half_duty_new[2]~feeder_combout\ = ( \Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mult0~19\,
	combout => \half_duty_new[2]~feeder_combout\);

-- Location: FF_X14_Y11_N56
\half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(2));

-- Location: FF_X14_Y11_N35
\half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(2),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][2]~q\);

-- Location: FF_X14_Y11_N11
\half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~20\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(3));

-- Location: FF_X14_Y11_N37
\half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(3),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][3]~q\);

-- Location: MLABCELL_X14_Y11_N24
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \half_duty[0][3]~q\ & ( \count[0][2]~q\ & ( (\half_duty[0][2]~q\ & \count[0][3]~q\) ) ) ) # ( !\half_duty[0][3]~q\ & ( \count[0][2]~q\ & ( (\half_duty[0][2]~q\ & !\count[0][3]~q\) ) ) ) # ( \half_duty[0][3]~q\ & ( !\count[0][2]~q\ & 
-- ( (!\half_duty[0][2]~q\ & \count[0][3]~q\) ) ) ) # ( !\half_duty[0][3]~q\ & ( !\count[0][2]~q\ & ( (!\half_duty[0][2]~q\ & !\count[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_half_duty[0][2]~q\,
	datac => \ALT_INV_count[0][3]~q\,
	datae => \ALT_INV_half_duty[0][3]~q\,
	dataf => \ALT_INV_count[0][2]~q\,
	combout => \Equal1~2_combout\);

-- Location: FF_X14_Y11_N8
\half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(1));

-- Location: FF_X15_Y11_N29
\half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(1),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][1]~q\);

-- Location: FF_X14_Y11_N17
\half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty_new(0));

-- Location: FF_X14_Y11_N32
\half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => half_duty_new(0),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \half_duty[0][0]~q\);

-- Location: LABCELL_X15_Y11_N27
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \half_duty[0][0]~q\ & ( (\count[0][0]~q\ & (!\count[0][8]~q\ & (!\count[0][1]~q\ $ (\half_duty[0][1]~q\)))) ) ) # ( !\half_duty[0][0]~q\ & ( (!\count[0][0]~q\ & (!\count[0][8]~q\ & (!\count[0][1]~q\ $ (\half_duty[0][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][1]~q\,
	datab => \ALT_INV_count[0][0]~q\,
	datac => \ALT_INV_count[0][8]~q\,
	datad => \ALT_INV_half_duty[0][1]~q\,
	dataf => \ALT_INV_half_duty[0][0]~q\,
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X14_Y11_N6
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~1_combout\ & ( (\Equal1~0_combout\ & (\Equal1~2_combout\ & (!\half_duty[0][4]~q\ $ (\count[0][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_half_duty[0][4]~q\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_count[0][4]~q\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X14_Y11_N30
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\half_duty[0][0]~q\ ) + ( !\half_duty[0][1]~q\ ) + ( !VCC ))
-- \Add1~14\ = CARRY(( !\half_duty[0][0]~q\ ) + ( !\half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_half_duty[0][1]~q\,
	datad => \ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X14_Y11_N33
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\half_duty[0][2]~q\ ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\half_duty[0][2]~q\ ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][2]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X14_Y11_N36
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\half_duty[0][3]~q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\half_duty[0][3]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][3]~q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X14_Y11_N39
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\half_duty[0][4]~q\ ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\half_duty[0][4]~q\ ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][4]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X14_Y11_N42
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\half_duty[0][5]~q\ ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\half_duty[0][5]~q\ ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][5]~q\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X14_Y11_N0
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( \Add1~21_sumout\ & ( \Add1~29_sumout\ & ( (\count[0][5]~q\ & (\count[0][3]~q\ & (!\count[0][4]~q\ $ (\Add1~25_sumout\)))) ) ) ) # ( !\Add1~21_sumout\ & ( \Add1~29_sumout\ & ( (\count[0][5]~q\ & (!\count[0][3]~q\ & (!\count[0][4]~q\ 
-- $ (\Add1~25_sumout\)))) ) ) ) # ( \Add1~21_sumout\ & ( !\Add1~29_sumout\ & ( (!\count[0][5]~q\ & (\count[0][3]~q\ & (!\count[0][4]~q\ $ (\Add1~25_sumout\)))) ) ) ) # ( !\Add1~21_sumout\ & ( !\Add1~29_sumout\ & ( (!\count[0][5]~q\ & (!\count[0][3]~q\ & 
-- (!\count[0][4]~q\ $ (\Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][5]~q\,
	datab => \ALT_INV_count[0][4]~q\,
	datac => \ALT_INV_count[0][3]~q\,
	datad => \ALT_INV_Add1~25_sumout\,
	datae => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X15_Y11_N6
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \Add1~17_sumout\ & ( \count[0][1]~q\ & ( (\count[0][2]~q\ & (\Add1~13_sumout\ & (!\half_duty[0][0]~q\ $ (\count[0][0]~q\)))) ) ) ) # ( !\Add1~17_sumout\ & ( \count[0][1]~q\ & ( (!\count[0][2]~q\ & (\Add1~13_sumout\ & 
-- (!\half_duty[0][0]~q\ $ (\count[0][0]~q\)))) ) ) ) # ( \Add1~17_sumout\ & ( !\count[0][1]~q\ & ( (\count[0][2]~q\ & (!\Add1~13_sumout\ & (!\half_duty[0][0]~q\ $ (\count[0][0]~q\)))) ) ) ) # ( !\Add1~17_sumout\ & ( !\count[0][1]~q\ & ( (!\count[0][2]~q\ & 
-- (!\Add1~13_sumout\ & (!\half_duty[0][0]~q\ $ (\count[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][2]~q\,
	datab => \ALT_INV_half_duty[0][0]~q\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_count[0][0]~q\,
	datae => \ALT_INV_Add1~17_sumout\,
	dataf => \ALT_INV_count[0][1]~q\,
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X14_Y11_N45
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\half_duty[0][6]~q\ ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( !\half_duty[0][6]~q\ ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][6]~q\,
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X14_Y11_N48
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\half_duty[0][7]~q\ ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\half_duty[0][7]~q\ ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_half_duty[0][7]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X14_Y11_N51
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\);

-- Location: MLABCELL_X14_Y11_N18
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \Add1~1_sumout\ & ( \Add1~9_sumout\ & ( (!\count[0][8]~q\ & (\count[0][6]~q\ & (!\count[0][7]~q\ $ (\Add1~5_sumout\)))) ) ) ) # ( !\Add1~1_sumout\ & ( \Add1~9_sumout\ & ( (!\count[0][8]~q\ & (!\count[0][6]~q\ & (!\count[0][7]~q\ $ 
-- (\Add1~5_sumout\)))) ) ) ) # ( \Add1~1_sumout\ & ( !\Add1~9_sumout\ & ( (\count[0][8]~q\ & (\count[0][6]~q\ & (!\count[0][7]~q\ $ (\Add1~5_sumout\)))) ) ) ) # ( !\Add1~1_sumout\ & ( !\Add1~9_sumout\ & ( (\count[0][8]~q\ & (!\count[0][6]~q\ & 
-- (!\count[0][7]~q\ $ (\Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000000000000010000110000100000000000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0][7]~q\,
	datab => \ALT_INV_count[0][8]~q\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_count[0][6]~q\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X15_Y11_N12
\pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_out~0_combout\ = ( \Equal2~0_combout\ & ( (!\Equal1~3_combout\ & (((\Equal2~2_combout\ & \Equal2~1_combout\)) # (\pwm_out[0]~reg0_q\))) ) ) # ( !\Equal2~0_combout\ & ( (!\Equal1~3_combout\ & \pwm_out[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000010101010100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_pwm_out[0]~reg0_q\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \pwm_out~0_combout\);

-- Location: FF_X15_Y11_N14
\pwm_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_out~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out[0]~reg0_q\);

-- Location: LABCELL_X15_Y11_N15
\pwm_n_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_n_out[0]~0_combout\ = ( \Equal2~0_combout\ & ( ((\pwm_n_out[0]~reg0_q\ & ((!\Equal2~2_combout\) # (!\Equal2~1_combout\)))) # (\Equal1~3_combout\) ) ) # ( !\Equal2~0_combout\ & ( (\pwm_n_out[0]~reg0_q\) # (\Equal1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111010101010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_pwm_n_out[0]~reg0_q\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \pwm_n_out[0]~0_combout\);

-- Location: FF_X15_Y11_N16
\pwm_n_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_n_out[0]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_n_out[0]~reg0_q\);

-- Location: LABCELL_X11_Y40_N3
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


