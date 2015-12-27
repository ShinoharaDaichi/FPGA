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

-- DATE "12/12/2015 20:08:30"

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

ENTITY 	chenillard IS
    PORT (
	clk : IN std_logic;
	delay : IN std_logic_vector(7 DOWNTO 0);
	leds_output : BUFFER std_logic_vector(9 DOWNTO 0);
	leds_output2 : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END chenillard;

-- Design Ports Information
-- leds_output[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[4]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[5]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[8]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output2[9]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chenillard IS
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
SIGNAL ww_delay : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds_output : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_leds_output2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
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
SIGNAL \delay[0]~input_o\ : std_logic;
SIGNAL \delay[1]~input_o\ : std_logic;
SIGNAL \delay[2]~input_o\ : std_logic;
SIGNAL \delay[3]~input_o\ : std_logic;
SIGNAL \delay[4]~input_o\ : std_logic;
SIGNAL \delay[5]~input_o\ : std_logic;
SIGNAL \delay[6]~input_o\ : std_logic;
SIGNAL \delay[7]~input_o\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \delay_count[19]~feeder_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \i~9_combout\ : std_logic;
SIGNAL \i~8_combout\ : std_logic;
SIGNAL \i~7_combout\ : std_logic;
SIGNAL \i~6_combout\ : std_logic;
SIGNAL \i~5_combout\ : std_logic;
SIGNAL \i~4_combout\ : std_logic;
SIGNAL \i[4]~DUPLICATE_q\ : std_logic;
SIGNAL \i~3_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \direction~1_combout\ : std_logic;
SIGNAL \i[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i[8]~DUPLICATE_q\ : std_logic;
SIGNAL \i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~2_combout\ : std_logic;
SIGNAL \direction~DUPLICATE_q\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \leds_output[0]~0_combout\ : std_logic;
SIGNAL \leds_output[0]~reg0_q\ : std_logic;
SIGNAL \leds_output[1]~reg0_q\ : std_logic;
SIGNAL \leds_output[2]~reg0_q\ : std_logic;
SIGNAL \leds_output[3]~reg0_q\ : std_logic;
SIGNAL \leds_output[4]~reg0feeder_combout\ : std_logic;
SIGNAL \leds_output[4]~reg0_q\ : std_logic;
SIGNAL \leds_output[5]~reg0_q\ : std_logic;
SIGNAL \leds_output[6]~reg0feeder_combout\ : std_logic;
SIGNAL \leds_output[6]~reg0_q\ : std_logic;
SIGNAL \leds_output[7]~reg0feeder_combout\ : std_logic;
SIGNAL \leds_output[7]~reg0_q\ : std_logic;
SIGNAL \leds_output[8]~reg0_q\ : std_logic;
SIGNAL \leds_output[9]~reg0_q\ : std_logic;
SIGNAL \leds_output2[0]~reg0_q\ : std_logic;
SIGNAL \leds_output2[1]~0_combout\ : std_logic;
SIGNAL \leds_output2[1]~reg0_q\ : std_logic;
SIGNAL \leds_output2[2]~1_combout\ : std_logic;
SIGNAL \leds_output2[2]~reg0_q\ : std_logic;
SIGNAL \leds_output2[3]~2_combout\ : std_logic;
SIGNAL \leds_output2[3]~reg0_q\ : std_logic;
SIGNAL \leds_output2[4]~3_combout\ : std_logic;
SIGNAL \leds_output2[4]~reg0_q\ : std_logic;
SIGNAL \leds_output2[5]~4_combout\ : std_logic;
SIGNAL \leds_output2[5]~reg0_q\ : std_logic;
SIGNAL \leds_output2[6]~5_combout\ : std_logic;
SIGNAL \leds_output2[6]~reg0_q\ : std_logic;
SIGNAL \leds_output2[7]~6_combout\ : std_logic;
SIGNAL \leds_output2[7]~reg0_q\ : std_logic;
SIGNAL \leds_output2[8]~7_combout\ : std_logic;
SIGNAL \leds_output2[8]~reg0_q\ : std_logic;
SIGNAL \i[9]~DUPLICATE_q\ : std_logic;
SIGNAL \leds_output2[9]~8_combout\ : std_logic;
SIGNAL \leds_output2[9]~reg0_q\ : std_logic;
SIGNAL delay_count : std_logic_vector(31 DOWNTO 0);
SIGNAL i : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_direction~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \ALT_INV_direction~1_combout\ : std_logic;
SIGNAL \ALT_INV_direction~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_direction~q\ : std_logic;
SIGNAL ALT_INV_i : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL ALT_INV_delay_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mult0~31\ : std_logic;
SIGNAL \ALT_INV_Mult0~30\ : std_logic;
SIGNAL \ALT_INV_Mult0~29\ : std_logic;
SIGNAL \ALT_INV_Mult0~28\ : std_logic;
SIGNAL \ALT_INV_Mult0~27\ : std_logic;
SIGNAL \ALT_INV_Mult0~26\ : std_logic;
SIGNAL \ALT_INV_Mult0~25\ : std_logic;
SIGNAL \ALT_INV_Mult0~24\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;

BEGIN

ww_clk <= clk;
ww_delay <= delay;
leds_output <= ww_leds_output;
leds_output2 <= ww_leds_output2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\delay[7]~input_o\ & \delay[6]~input_o\ & \delay[5]~input_o\ & \delay[4]~input_o\ & \delay[3]~input_o\ & \delay[2]~input_o\ & \delay[1]~input_o\ & \delay[0]~input_o\);

\Mult0~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd);

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
\ALT_INV_direction~DUPLICATE_q\ <= NOT \direction~DUPLICATE_q\;
\ALT_INV_i[9]~DUPLICATE_q\ <= NOT \i[9]~DUPLICATE_q\;
\ALT_INV_i[8]~DUPLICATE_q\ <= NOT \i[8]~DUPLICATE_q\;
\ALT_INV_i[6]~DUPLICATE_q\ <= NOT \i[6]~DUPLICATE_q\;
\ALT_INV_i[4]~DUPLICATE_q\ <= NOT \i[4]~DUPLICATE_q\;
\ALT_INV_i[2]~DUPLICATE_q\ <= NOT \i[2]~DUPLICATE_q\;
\ALT_INV_i[1]~DUPLICATE_q\ <= NOT \i[1]~DUPLICATE_q\;
\ALT_INV_i[0]~DUPLICATE_q\ <= NOT \i[0]~DUPLICATE_q\;
\ALT_INV_LessThan0~32_combout\ <= NOT \LessThan0~32_combout\;
\ALT_INV_LessThan0~31_combout\ <= NOT \LessThan0~31_combout\;
\ALT_INV_LessThan0~30_combout\ <= NOT \LessThan0~30_combout\;
\ALT_INV_LessThan0~29_combout\ <= NOT \LessThan0~29_combout\;
\ALT_INV_direction~1_combout\ <= NOT \direction~1_combout\;
\ALT_INV_direction~0_combout\ <= NOT \direction~0_combout\;
\ALT_INV_LessThan0~28_combout\ <= NOT \LessThan0~28_combout\;
\ALT_INV_LessThan0~27_combout\ <= NOT \LessThan0~27_combout\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_direction~q\ <= NOT \direction~q\;
ALT_INV_i(9) <= NOT i(9);
ALT_INV_i(8) <= NOT i(8);
ALT_INV_i(7) <= NOT i(7);
ALT_INV_i(6) <= NOT i(6);
ALT_INV_i(5) <= NOT i(5);
ALT_INV_i(4) <= NOT i(4);
ALT_INV_i(3) <= NOT i(3);
ALT_INV_i(2) <= NOT i(2);
ALT_INV_i(1) <= NOT i(1);
\ALT_INV_state~q\ <= NOT \state~q\;
ALT_INV_i(0) <= NOT i(0);
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
ALT_INV_delay_count(27) <= NOT delay_count(27);
ALT_INV_delay_count(28) <= NOT delay_count(28);
ALT_INV_delay_count(29) <= NOT delay_count(29);
ALT_INV_delay_count(30) <= NOT delay_count(30);
ALT_INV_delay_count(24) <= NOT delay_count(24);
ALT_INV_delay_count(25) <= NOT delay_count(25);
ALT_INV_delay_count(26) <= NOT delay_count(26);
ALT_INV_delay_count(22) <= NOT delay_count(22);
ALT_INV_delay_count(23) <= NOT delay_count(23);
ALT_INV_delay_count(15) <= NOT delay_count(15);
ALT_INV_delay_count(16) <= NOT delay_count(16);
ALT_INV_delay_count(17) <= NOT delay_count(17);
ALT_INV_delay_count(19) <= NOT delay_count(19);
ALT_INV_delay_count(20) <= NOT delay_count(20);
ALT_INV_delay_count(21) <= NOT delay_count(21);
ALT_INV_delay_count(18) <= NOT delay_count(18);
ALT_INV_delay_count(8) <= NOT delay_count(8);
ALT_INV_delay_count(10) <= NOT delay_count(10);
ALT_INV_delay_count(9) <= NOT delay_count(9);
ALT_INV_delay_count(11) <= NOT delay_count(11);
ALT_INV_delay_count(12) <= NOT delay_count(12);
ALT_INV_delay_count(13) <= NOT delay_count(13);
ALT_INV_delay_count(14) <= NOT delay_count(14);
ALT_INV_delay_count(2) <= NOT delay_count(2);
ALT_INV_delay_count(3) <= NOT delay_count(3);
ALT_INV_delay_count(0) <= NOT delay_count(0);
ALT_INV_delay_count(1) <= NOT delay_count(1);
ALT_INV_delay_count(4) <= NOT delay_count(4);
ALT_INV_delay_count(5) <= NOT delay_count(5);
ALT_INV_delay_count(6) <= NOT delay_count(6);
ALT_INV_delay_count(7) <= NOT delay_count(7);
\ALT_INV_Mult0~31\ <= NOT \Mult0~31\;
\ALT_INV_Mult0~30\ <= NOT \Mult0~30\;
\ALT_INV_Mult0~29\ <= NOT \Mult0~29\;
\ALT_INV_Mult0~28\ <= NOT \Mult0~28\;
\ALT_INV_Mult0~27\ <= NOT \Mult0~27\;
\ALT_INV_Mult0~26\ <= NOT \Mult0~26\;
\ALT_INV_Mult0~25\ <= NOT \Mult0~25\;
\ALT_INV_Mult0~24\ <= NOT \Mult0~24\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
ALT_INV_delay_count(31) <= NOT delay_count(31);

-- Location: IOOBUF_X14_Y61_N53
\leds_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(0));

-- Location: IOOBUF_X15_Y61_N36
\leds_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(1));

-- Location: IOOBUF_X15_Y61_N53
\leds_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(2));

-- Location: IOOBUF_X14_Y61_N36
\leds_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(3));

-- Location: IOOBUF_X14_Y61_N19
\leds_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(4));

-- Location: IOOBUF_X12_Y61_N53
\leds_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(5));

-- Location: IOOBUF_X12_Y61_N2
\leds_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(6));

-- Location: IOOBUF_X14_Y61_N2
\leds_output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(7));

-- Location: IOOBUF_X12_Y61_N36
\leds_output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(8));

-- Location: IOOBUF_X12_Y61_N19
\leds_output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output(9));

-- Location: IOOBUF_X66_Y0_N2
\leds_output2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(0));

-- Location: IOOBUF_X62_Y0_N59
\leds_output2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(1));

-- Location: IOOBUF_X7_Y0_N36
\leds_output2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(2));

-- Location: IOOBUF_X68_Y13_N56
\leds_output2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(3));

-- Location: IOOBUF_X68_Y10_N96
\leds_output2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(4));

-- Location: IOOBUF_X68_Y12_N39
\leds_output2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(5));

-- Location: IOOBUF_X68_Y11_N39
\leds_output2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(6));

-- Location: IOOBUF_X68_Y12_N5
\leds_output2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(7));

-- Location: IOOBUF_X64_Y0_N53
\leds_output2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(8));

-- Location: IOOBUF_X66_Y0_N19
\leds_output2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output2[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds_output2(9));

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
\delay[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(0),
	o => \delay[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\delay[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(1),
	o => \delay[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\delay[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(2),
	o => \delay[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\delay[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(3),
	o => \delay[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\delay[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(4),
	o => \delay[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\delay[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(5),
	o => \delay[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\delay[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(6),
	o => \delay[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\delay[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(7),
	o => \delay[7]~input_o\);

-- Location: DSP_X16_Y7_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
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
	operation_mode => "m18x18_full",
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

-- Location: MLABCELL_X14_Y8_N0
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( delay_count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~26\ = CARRY(( delay_count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(0),
	cin => GND,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X14_Y8_N2
\delay_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(0));

-- Location: MLABCELL_X14_Y8_N3
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( delay_count(1) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( delay_count(1) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(1),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X14_Y8_N4
\delay_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(1));

-- Location: MLABCELL_X14_Y8_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( delay_count(2) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~34\ = CARRY(( delay_count(2) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(2),
	cin => \Add0~22\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X14_Y8_N8
\delay_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(2));

-- Location: MLABCELL_X14_Y8_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( delay_count(3) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( delay_count(3) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(3),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X14_Y8_N11
\delay_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(3));

-- Location: MLABCELL_X14_Y8_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( delay_count(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~18\ = CARRY(( delay_count(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(4),
	cin => \Add0~30\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X14_Y8_N14
\delay_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(4));

-- Location: MLABCELL_X14_Y8_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( delay_count(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( delay_count(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(5),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X14_Y8_N17
\delay_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(5));

-- Location: MLABCELL_X14_Y8_N18
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( delay_count(6) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( delay_count(6) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(6),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X14_Y8_N20
\delay_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(6));

-- Location: MLABCELL_X14_Y8_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( delay_count(7) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( delay_count(7) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(7),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X14_Y8_N23
\delay_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(7));

-- Location: MLABCELL_X14_Y8_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( delay_count(8) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~62\ = CARRY(( delay_count(8) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(8),
	cin => \Add0~6\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X14_Y8_N26
\delay_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(8));

-- Location: MLABCELL_X14_Y8_N27
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( delay_count(9) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~54\ = CARRY(( delay_count(9) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(9),
	cin => \Add0~62\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X14_Y8_N29
\delay_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(9));

-- Location: MLABCELL_X14_Y8_N30
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( delay_count(10) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( delay_count(10) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(10),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X14_Y7_N56
\delay_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \LessThan0~28_combout\,
	sload => VCC,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(10));

-- Location: MLABCELL_X14_Y8_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( delay_count(11) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~50\ = CARRY(( delay_count(11) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(11),
	cin => \Add0~58\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X14_Y8_N35
\delay_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(11));

-- Location: MLABCELL_X14_Y8_N36
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( delay_count(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( delay_count(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_count(12),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X13_Y7_N32
\delay_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	sclr => \LessThan0~28_combout\,
	sload => VCC,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(12));

-- Location: MLABCELL_X14_Y8_N39
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( delay_count(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( delay_count(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(13),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X14_Y8_N41
\delay_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(13));

-- Location: MLABCELL_X14_Y8_N42
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( delay_count(14) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( delay_count(14) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(14),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X14_Y8_N44
\delay_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(14));

-- Location: MLABCELL_X14_Y8_N45
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( delay_count(15) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~90\ = CARRY(( delay_count(15) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(15),
	cin => \Add0~38\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X14_Y7_N47
\delay_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~89_sumout\,
	sclr => \LessThan0~28_combout\,
	sload => VCC,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(15));

-- Location: MLABCELL_X14_Y8_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( delay_count(16) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( delay_count(16) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(16),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X14_Y7_N38
\delay_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~85_sumout\,
	sclr => \LessThan0~28_combout\,
	sload => VCC,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(16));

-- Location: MLABCELL_X14_Y8_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( delay_count(17) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( delay_count(17) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(17),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X14_Y8_N53
\delay_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(17));

-- Location: MLABCELL_X14_Y8_N54
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( delay_count(18) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~66\ = CARRY(( delay_count(18) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(18),
	cin => \Add0~82\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X15_Y7_N17
\delay_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~65_sumout\,
	sclr => \LessThan0~28_combout\,
	sload => VCC,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(18));

-- Location: MLABCELL_X14_Y8_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( delay_count(19) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~78\ = CARRY(( delay_count(19) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(19),
	cin => \Add0~66\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X15_Y7_N30
\delay_count[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_count[19]~feeder_combout\ = ( \Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \delay_count[19]~feeder_combout\);

-- Location: FF_X15_Y7_N32
\delay_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \delay_count[19]~feeder_combout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(19));

-- Location: MLABCELL_X14_Y7_N0
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( delay_count(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( delay_count(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(20),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X14_Y7_N2
\delay_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(20));

-- Location: MLABCELL_X14_Y7_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( delay_count(21) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( delay_count(21) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(21),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X14_Y7_N5
\delay_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(21));

-- Location: MLABCELL_X14_Y7_N6
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( delay_count(22) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~98\ = CARRY(( delay_count(22) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(22),
	cin => \Add0~70\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X14_Y7_N8
\delay_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(22));

-- Location: MLABCELL_X14_Y7_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( delay_count(23) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( delay_count(23) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(23),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X14_Y7_N11
\delay_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(23));

-- Location: LABCELL_X15_Y7_N18
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( !delay_count(22) & ( delay_count(23) & ( (\Mult0~31\ & \Mult0~30\) ) ) ) # ( delay_count(22) & ( !delay_count(23) & ( \Mult0~31\ ) ) ) # ( !delay_count(22) & ( !delay_count(23) & ( (\Mult0~30\) # (\Mult0~31\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111010101010101010100010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~31\,
	datab => \ALT_INV_Mult0~30\,
	datae => ALT_INV_delay_count(22),
	dataf => ALT_INV_delay_count(23),
	combout => \LessThan0~25_combout\);

-- Location: LABCELL_X15_Y7_N27
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( delay_count(22) & ( delay_count(23) & ( (\Mult0~31\ & \Mult0~30\) ) ) ) # ( !delay_count(22) & ( delay_count(23) & ( (\Mult0~31\ & !\Mult0~30\) ) ) ) # ( delay_count(22) & ( !delay_count(23) & ( (!\Mult0~31\ & \Mult0~30\) ) ) ) 
-- # ( !delay_count(22) & ( !delay_count(23) & ( (!\Mult0~31\ & !\Mult0~30\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~31\,
	datac => \ALT_INV_Mult0~30\,
	datae => ALT_INV_delay_count(22),
	dataf => ALT_INV_delay_count(23),
	combout => \LessThan0~24_combout\);

-- Location: MLABCELL_X14_Y7_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( delay_count(24) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~110\ = CARRY(( delay_count(24) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(24),
	cin => \Add0~94\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X14_Y7_N14
\delay_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(24));

-- Location: MLABCELL_X14_Y7_N15
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( delay_count(25) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( delay_count(25) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(25),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X14_Y7_N16
\delay_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(25));

-- Location: MLABCELL_X14_Y7_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( delay_count(26) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( delay_count(26) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(26),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X14_Y7_N20
\delay_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(26));

-- Location: MLABCELL_X14_Y7_N21
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( delay_count(27) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~126\ = CARRY(( delay_count(27) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(27),
	cin => \Add0~102\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X14_Y7_N23
\delay_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(27));

-- Location: MLABCELL_X14_Y7_N24
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( delay_count(28) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( delay_count(28) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(28),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X14_Y7_N25
\delay_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(28));

-- Location: MLABCELL_X14_Y7_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( delay_count(29) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( delay_count(29) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(29),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X14_Y7_N29
\delay_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(29));

-- Location: MLABCELL_X14_Y7_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( delay_count(30) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( delay_count(30) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(30),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X14_Y7_N32
\delay_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(30));

-- Location: MLABCELL_X14_Y7_N51
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( !delay_count(28) & ( (!delay_count(29) & (!delay_count(30) & !delay_count(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(29),
	datac => ALT_INV_delay_count(30),
	datad => ALT_INV_delay_count(27),
	dataf => ALT_INV_delay_count(28),
	combout => \LessThan0~26_combout\);

-- Location: MLABCELL_X14_Y7_N42
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( \LessThan0~26_combout\ & ( (!delay_count(24) & (!delay_count(26) & !delay_count(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_count(24),
	datac => ALT_INV_delay_count(26),
	datad => ALT_INV_delay_count(25),
	dataf => \ALT_INV_LessThan0~26_combout\,
	combout => \LessThan0~27_combout\);

-- Location: MLABCELL_X14_Y7_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( delay_count(31) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(31),
	cin => \Add0~114\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X14_Y7_N35
\delay_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~28_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(31));

-- Location: LABCELL_X15_Y7_N54
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( delay_count(21) & ( delay_count(20) & ( (\Mult0~29\ & (\Mult0~28\ & (!\Mult0~27\ $ (delay_count(19))))) ) ) ) # ( !delay_count(21) & ( delay_count(20) & ( (!\Mult0~29\ & (\Mult0~28\ & (!\Mult0~27\ $ (delay_count(19))))) ) ) ) # 
-- ( delay_count(21) & ( !delay_count(20) & ( (\Mult0~29\ & (!\Mult0~28\ & (!\Mult0~27\ $ (delay_count(19))))) ) ) ) # ( !delay_count(21) & ( !delay_count(20) & ( (!\Mult0~29\ & (!\Mult0~28\ & (!\Mult0~27\ $ (delay_count(19))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~29\,
	datab => \ALT_INV_Mult0~28\,
	datac => \ALT_INV_Mult0~27\,
	datad => ALT_INV_delay_count(19),
	datae => ALT_INV_delay_count(21),
	dataf => ALT_INV_delay_count(20),
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X15_Y7_N42
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( delay_count(21) & ( delay_count(20) & ( (\Mult0~27\ & (!delay_count(19) & (\Mult0~29\ & \Mult0~28\))) ) ) ) # ( !delay_count(21) & ( delay_count(20) & ( ((\Mult0~27\ & (!delay_count(19) & \Mult0~28\))) # (\Mult0~29\) ) ) ) # ( 
-- delay_count(21) & ( !delay_count(20) & ( (\Mult0~29\ & (((\Mult0~27\ & !delay_count(19))) # (\Mult0~28\))) ) ) ) # ( !delay_count(21) & ( !delay_count(20) & ( (((\Mult0~27\ & !delay_count(19))) # (\Mult0~28\)) # (\Mult0~29\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111111111000001000000111100001111010011110000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~27\,
	datab => ALT_INV_delay_count(19),
	datac => \ALT_INV_Mult0~29\,
	datad => \ALT_INV_Mult0~28\,
	datae => ALT_INV_delay_count(21),
	dataf => ALT_INV_delay_count(20),
	combout => \LessThan0~21_combout\);

-- Location: LABCELL_X15_Y7_N0
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \LessThan0~14_combout\ & ( !\LessThan0~21_combout\ & ( (!\Mult0~26\ & (((!\Mult0~25\) # (delay_count(17))) # (delay_count(18)))) # (\Mult0~26\ & (delay_count(18) & ((!\Mult0~25\) # (delay_count(17))))) ) ) ) # ( 
-- !\LessThan0~14_combout\ & ( !\LessThan0~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100101011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~26\,
	datab => ALT_INV_delay_count(18),
	datac => \ALT_INV_Mult0~25\,
	datad => ALT_INV_delay_count(17),
	datae => \ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_LessThan0~21_combout\,
	combout => \LessThan0~22_combout\);

-- Location: LABCELL_X15_Y7_N39
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( !\Mult0~25\ & ( delay_count(17) ) ) # ( \Mult0~25\ & ( !delay_count(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Mult0~25\,
	dataf => ALT_INV_delay_count(17),
	combout => \LessThan0~15_combout\);

-- Location: LABCELL_X15_Y7_N51
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( !\LessThan0~15_combout\ & ( (\LessThan0~14_combout\ & (!\Mult0~26\ $ (delay_count(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~26\,
	datac => ALT_INV_delay_count(18),
	datad => \ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_LessThan0~15_combout\,
	combout => \LessThan0~20_combout\);

-- Location: LABCELL_X15_Y7_N6
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( \LessThan0~22_combout\ & ( \LessThan0~20_combout\ & ( (!delay_count(16) & (!\Mult0~24\ & ((!\Mult0~23\) # (delay_count(15))))) # (delay_count(16) & ((!\Mult0~23\) # ((!\Mult0~24\) # (delay_count(15))))) ) ) ) # ( 
-- \LessThan0~22_combout\ & ( !\LessThan0~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001101010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(16),
	datab => \ALT_INV_Mult0~23\,
	datac => \ALT_INV_Mult0~24\,
	datad => ALT_INV_delay_count(15),
	datae => \ALT_INV_LessThan0~22_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \LessThan0~23_combout\);

-- Location: LABCELL_X13_Y8_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( delay_count(7) & ( delay_count(6) & ( (\Mult0~14\ & \Mult0~15\) ) ) ) # ( !delay_count(7) & ( delay_count(6) & ( (\Mult0~14\ & !\Mult0~15\) ) ) ) # ( delay_count(7) & ( !delay_count(6) & ( (!\Mult0~14\ & \Mult0~15\) ) ) ) # ( 
-- !delay_count(7) & ( !delay_count(6) & ( (!\Mult0~14\ & !\Mult0~15\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~14\,
	datac => \ALT_INV_Mult0~15\,
	datae => ALT_INV_delay_count(7),
	dataf => ALT_INV_delay_count(6),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X13_Y8_N42
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !delay_count(7) & ( delay_count(6) & ( \Mult0~15\ ) ) ) # ( delay_count(7) & ( !delay_count(6) & ( (\Mult0~14\ & \Mult0~15\) ) ) ) # ( !delay_count(7) & ( !delay_count(6) & ( (\Mult0~15\) # (\Mult0~14\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~14\,
	datac => \ALT_INV_Mult0~15\,
	datae => ALT_INV_delay_count(7),
	dataf => ALT_INV_delay_count(6),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X13_Y8_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~0_combout\ & ( !\LessThan0~4_combout\ & ( (!\Mult0~13\ & ((!\Mult0~12\) # ((delay_count(4)) # (delay_count(5))))) # (\Mult0~13\ & (delay_count(5) & ((!\Mult0~12\) # (delay_count(4))))) ) ) ) # ( !\LessThan0~0_combout\ 
-- & ( !\LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100011101010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~13\,
	datab => \ALT_INV_Mult0~12\,
	datac => ALT_INV_delay_count(5),
	datad => ALT_INV_delay_count(4),
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X13_Y7_N36
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( delay_count(13) & ( delay_count(14) & ( (\Mult0~22\ & (!delay_count(12) & (\Mult0~21\ & \Mult0~20\))) ) ) ) # ( !delay_count(13) & ( delay_count(14) & ( (\Mult0~22\ & (((!delay_count(12) & \Mult0~20\)) # (\Mult0~21\))) ) ) ) # ( 
-- delay_count(13) & ( !delay_count(14) & ( ((!delay_count(12) & (\Mult0~21\ & \Mult0~20\))) # (\Mult0~22\) ) ) ) # ( !delay_count(13) & ( !delay_count(14) & ( (((!delay_count(12) & \Mult0~20\)) # (\Mult0~21\)) # (\Mult0~22\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111010101010101110100000101010001010000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~22\,
	datab => ALT_INV_delay_count(12),
	datac => \ALT_INV_Mult0~21\,
	datad => \ALT_INV_Mult0~20\,
	datae => ALT_INV_delay_count(13),
	dataf => ALT_INV_delay_count(14),
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X13_Y7_N33
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( delay_count(13) & ( delay_count(14) & ( (\Mult0~21\ & (\Mult0~22\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( !delay_count(13) & ( delay_count(14) & ( (!\Mult0~21\ & (\Mult0~22\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( 
-- delay_count(13) & ( !delay_count(14) & ( (\Mult0~21\ & (!\Mult0~22\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( !delay_count(13) & ( !delay_count(14) & ( (!\Mult0~21\ & (!\Mult0~22\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~21\,
	datab => \ALT_INV_Mult0~20\,
	datac => ALT_INV_delay_count(12),
	datad => \ALT_INV_Mult0~22\,
	datae => ALT_INV_delay_count(13),
	dataf => ALT_INV_delay_count(14),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X13_Y7_N18
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( !\LessThan0~10_combout\ & ( \LessThan0~6_combout\ & ( (!delay_count(11) & (!\Mult0~19\ & ((!\Mult0~18\) # (delay_count(10))))) # (delay_count(11) & ((!\Mult0~19\) # ((!\Mult0~18\) # (delay_count(10))))) ) ) ) # ( 
-- !\LessThan0~10_combout\ & ( !\LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011010100110111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(11),
	datab => \ALT_INV_Mult0~19\,
	datac => \ALT_INV_Mult0~18\,
	datad => ALT_INV_delay_count(10),
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~11_combout\);

-- Location: MLABCELL_X14_Y7_N48
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( delay_count(15) & ( !\Mult0~23\ ) ) # ( !delay_count(15) & ( \Mult0~23\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~23\,
	dataf => ALT_INV_delay_count(15),
	combout => \LessThan0~17_combout\);

-- Location: MLABCELL_X14_Y7_N45
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( delay_count(16) & ( !\Mult0~24\ ) ) # ( !delay_count(16) & ( \Mult0~24\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~24\,
	dataf => ALT_INV_delay_count(16),
	combout => \LessThan0~16_combout\);

-- Location: MLABCELL_X14_Y7_N39
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( \LessThan0~14_combout\ & ( !\LessThan0~15_combout\ & ( (!\LessThan0~17_combout\ & (!\LessThan0~16_combout\ & (!\Mult0~26\ $ (delay_count(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~17_combout\,
	datab => \ALT_INV_Mult0~26\,
	datac => \ALT_INV_LessThan0~16_combout\,
	datad => ALT_INV_delay_count(18),
	datae => \ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_LessThan0~15_combout\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X13_Y7_N3
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( delay_count(10) & ( !\Mult0~18\ ) ) # ( !delay_count(10) & ( \Mult0~18\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~18\,
	dataf => ALT_INV_delay_count(10),
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X13_Y8_N12
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( !delay_count(8) & ( \Mult0~16\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~16\,
	dataf => ALT_INV_delay_count(8),
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X13_Y8_N0
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( delay_count(11) & ( !\Mult0~19\ ) ) # ( !delay_count(11) & ( \Mult0~19\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~19\,
	dataf => ALT_INV_delay_count(11),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X13_Y7_N42
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( !\LessThan0~7_combout\ & ( \LessThan0~6_combout\ & ( (!\LessThan0~8_combout\ & ((!\Mult0~17\ & (!delay_count(9) & \LessThan0~12_combout\)) # (\Mult0~17\ & ((!delay_count(9)) # (\LessThan0~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~17\,
	datab => ALT_INV_delay_count(9),
	datac => \ALT_INV_LessThan0~8_combout\,
	datad => \ALT_INV_LessThan0~12_combout\,
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X13_Y7_N48
\LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = ( delay_count(11) & ( delay_count(8) & ( (\Mult0~16\ & (\Mult0~19\ & (!\Mult0~18\ $ (delay_count(10))))) ) ) ) # ( !delay_count(11) & ( delay_count(8) & ( (\Mult0~16\ & (!\Mult0~19\ & (!\Mult0~18\ $ (delay_count(10))))) ) ) ) # ( 
-- delay_count(11) & ( !delay_count(8) & ( (!\Mult0~16\ & (\Mult0~19\ & (!\Mult0~18\ $ (delay_count(10))))) ) ) ) # ( !delay_count(11) & ( !delay_count(8) & ( (!\Mult0~16\ & (!\Mult0~19\ & (!\Mult0~18\ $ (delay_count(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~16\,
	datab => \ALT_INV_Mult0~19\,
	datac => \ALT_INV_Mult0~18\,
	datad => ALT_INV_delay_count(10),
	datae => ALT_INV_delay_count(11),
	dataf => ALT_INV_delay_count(8),
	combout => \LessThan0~31_combout\);

-- Location: LABCELL_X13_Y7_N9
\LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = ( delay_count(13) & ( (\Mult0~21\ & (!delay_count(12) $ (\Mult0~20\))) ) ) # ( !delay_count(13) & ( (!\Mult0~21\ & (!delay_count(12) $ (\Mult0~20\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~21\,
	datac => ALT_INV_delay_count(12),
	datad => \ALT_INV_Mult0~20\,
	dataf => ALT_INV_delay_count(13),
	combout => \LessThan0~32_combout\);

-- Location: LABCELL_X13_Y7_N54
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~31_combout\ & ( \LessThan0~32_combout\ & ( (!\Mult0~22\ & (!delay_count(14) & (!\Mult0~17\ $ (delay_count(9))))) # (\Mult0~22\ & (delay_count(14) & (!\Mult0~17\ $ (delay_count(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~22\,
	datab => ALT_INV_delay_count(14),
	datac => \ALT_INV_Mult0~17\,
	datad => ALT_INV_delay_count(9),
	datae => \ALT_INV_LessThan0~31_combout\,
	dataf => \ALT_INV_LessThan0~32_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X13_Y8_N9
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !delay_count(2) & ( delay_count(3) & ( (\Mult0~11\ & \Mult0~10\) ) ) ) # ( delay_count(2) & ( !delay_count(3) & ( \Mult0~11\ ) ) ) # ( !delay_count(2) & ( !delay_count(3) & ( (\Mult0~10\) # (\Mult0~11\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~11\,
	datac => \ALT_INV_Mult0~10\,
	datae => ALT_INV_delay_count(2),
	dataf => ALT_INV_delay_count(3),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X13_Y7_N0
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( delay_count(0) & ( (\Mult0~9\ & !delay_count(1)) ) ) # ( !delay_count(0) & ( (!\Mult0~9\ & (\Mult0~8_resulta\ & !delay_count(1))) # (\Mult0~9\ & ((!delay_count(1)) # (\Mult0~8_resulta\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~9\,
	datac => \ALT_INV_Mult0~8_resulta\,
	datad => ALT_INV_delay_count(1),
	dataf => ALT_INV_delay_count(0),
	combout => \LessThan0~30_combout\);

-- Location: LABCELL_X13_Y8_N51
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( delay_count(5) & ( delay_count(4) & ( (\Mult0~13\ & (\Mult0~12\ & (!delay_count(6) $ (\Mult0~14\)))) ) ) ) # ( !delay_count(5) & ( delay_count(4) & ( (!\Mult0~13\ & (\Mult0~12\ & (!delay_count(6) $ (\Mult0~14\)))) ) ) ) # ( 
-- delay_count(5) & ( !delay_count(4) & ( (\Mult0~13\ & (!\Mult0~12\ & (!delay_count(6) $ (\Mult0~14\)))) ) ) ) # ( !delay_count(5) & ( !delay_count(4) & ( (!\Mult0~13\ & (!\Mult0~12\ & (!delay_count(6) $ (\Mult0~14\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~13\,
	datab => \ALT_INV_Mult0~12\,
	datac => ALT_INV_delay_count(6),
	datad => \ALT_INV_Mult0~14\,
	datae => ALT_INV_delay_count(5),
	dataf => ALT_INV_delay_count(4),
	combout => \LessThan0~29_combout\);

-- Location: LABCELL_X13_Y7_N6
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( delay_count(3) & ( (\Mult0~11\ & (!\Mult0~10\ $ (delay_count(2)))) ) ) # ( !delay_count(3) & ( (!\Mult0~11\ & (!\Mult0~10\ $ (delay_count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~10\,
	datac => \ALT_INV_Mult0~11\,
	datad => ALT_INV_delay_count(2),
	dataf => ALT_INV_delay_count(3),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X13_Y7_N15
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \LessThan0~29_combout\ & ( \LessThan0~1_combout\ & ( (!\LessThan0~2_combout\ & (\LessThan0~30_combout\ & (!\Mult0~15\ $ (delay_count(7))))) # (\LessThan0~2_combout\ & (!\Mult0~15\ $ ((delay_count(7))))) ) ) ) # ( 
-- \LessThan0~29_combout\ & ( !\LessThan0~1_combout\ & ( (\LessThan0~2_combout\ & (!\Mult0~15\ $ (delay_count(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010010000100100000000000000000000100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~15\,
	datab => ALT_INV_delay_count(7),
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~30_combout\,
	datae => \ALT_INV_LessThan0~29_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X13_Y7_N24
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \LessThan0~9_combout\ & ( \LessThan0~3_combout\ & ( \LessThan0~18_combout\ ) ) ) # ( !\LessThan0~9_combout\ & ( \LessThan0~3_combout\ & ( (\LessThan0~18_combout\ & ((!\LessThan0~11_combout\) # (\LessThan0~13_combout\))) ) ) ) # 
-- ( \LessThan0~9_combout\ & ( !\LessThan0~3_combout\ & ( (\LessThan0~18_combout\ & ((!\LessThan0~5_combout\) # ((!\LessThan0~11_combout\) # (\LessThan0~13_combout\)))) ) ) ) # ( !\LessThan0~9_combout\ & ( !\LessThan0~3_combout\ & ( (\LessThan0~18_combout\ & 
-- ((!\LessThan0~11_combout\) # (\LessThan0~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000011100000111100001100000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~11_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_LessThan0~13_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~19_combout\);

-- Location: MLABCELL_X14_Y7_N57
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \LessThan0~23_combout\ & ( \LessThan0~19_combout\ & ( (!delay_count(31) & ((!\LessThan0~27_combout\) # ((!\LessThan0~25_combout\ & !\LessThan0~24_combout\)))) ) ) ) # ( !\LessThan0~23_combout\ & ( \LessThan0~19_combout\ & ( 
-- (!delay_count(31) & ((!\LessThan0~27_combout\) # ((!\LessThan0~25_combout\ & !\LessThan0~24_combout\)))) ) ) ) # ( \LessThan0~23_combout\ & ( !\LessThan0~19_combout\ & ( (!delay_count(31) & ((!\LessThan0~25_combout\) # (!\LessThan0~27_combout\))) ) ) ) # 
-- ( !\LessThan0~23_combout\ & ( !\LessThan0~19_combout\ & ( (!delay_count(31) & ((!\LessThan0~27_combout\) # ((!\LessThan0~25_combout\ & !\LessThan0~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110100000000011111000000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~25_combout\,
	datab => \ALT_INV_LessThan0~24_combout\,
	datac => \ALT_INV_LessThan0~27_combout\,
	datad => ALT_INV_delay_count(31),
	datae => \ALT_INV_LessThan0~23_combout\,
	dataf => \ALT_INV_LessThan0~19_combout\,
	combout => \LessThan0~28_combout\);

-- Location: LABCELL_X15_Y7_N48
\state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~0_combout\ = ( \LessThan0~28_combout\ & ( !\state~q\ ) ) # ( !\LessThan0~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state~q\,
	dataf => \ALT_INV_LessThan0~28_combout\,
	combout => \state~0_combout\);

-- Location: FF_X15_Y7_N50
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: FF_X15_Y8_N59
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~2_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: FF_X15_Y8_N56
\i[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~0_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[0]~DUPLICATE_q\);

-- Location: FF_X15_Y8_N13
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \direction~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: LABCELL_X15_Y8_N36
\i~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~1_combout\ = ( \direction~q\ & ( i(2) ) ) # ( !\direction~q\ & ( !\i[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_i(2),
	datac => \ALT_INV_i[0]~DUPLICATE_q\,
	dataf => \ALT_INV_direction~q\,
	combout => \i~1_combout\);

-- Location: FF_X15_Y8_N37
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~1_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LABCELL_X15_Y8_N9
\i~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~9_combout\ = ( i(8) & ( !\direction~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~DUPLICATE_q\,
	dataf => ALT_INV_i(8),
	combout => \i~9_combout\);

-- Location: FF_X15_Y8_N11
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~9_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LABCELL_X15_Y8_N51
\i~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~8_combout\ = ( \direction~q\ & ( i(9) ) ) # ( !\direction~q\ & ( i(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_i(9),
	datad => ALT_INV_i(7),
	dataf => \ALT_INV_direction~q\,
	combout => \i~8_combout\);

-- Location: FF_X15_Y8_N53
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~8_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LABCELL_X15_Y8_N6
\i~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~7_combout\ = ( i(6) & ( (!\direction~DUPLICATE_q\) # (i(8)) ) ) # ( !i(6) & ( (\direction~DUPLICATE_q\ & i(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~DUPLICATE_q\,
	datac => ALT_INV_i(8),
	dataf => ALT_INV_i(6),
	combout => \i~7_combout\);

-- Location: FF_X15_Y8_N7
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~7_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LABCELL_X15_Y8_N48
\i~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~6_combout\ = ( i(5) & ( (!\direction~DUPLICATE_q\) # (i(7)) ) ) # ( !i(5) & ( (\direction~DUPLICATE_q\ & i(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~DUPLICATE_q\,
	datad => ALT_INV_i(7),
	dataf => ALT_INV_i(5),
	combout => \i~6_combout\);

-- Location: FF_X15_Y8_N50
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~6_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LABCELL_X15_Y8_N45
\i~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~5_combout\ = ( i(6) & ( (\i[4]~DUPLICATE_q\) # (\direction~DUPLICATE_q\) ) ) # ( !i(6) & ( (!\direction~DUPLICATE_q\ & \i[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~DUPLICATE_q\,
	datac => \ALT_INV_i[4]~DUPLICATE_q\,
	dataf => ALT_INV_i(6),
	combout => \i~5_combout\);

-- Location: FF_X15_Y8_N46
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~5_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LABCELL_X15_Y8_N42
\i~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~4_combout\ = ( i(3) & ( (!\direction~DUPLICATE_q\) # (i(5)) ) ) # ( !i(3) & ( (\direction~DUPLICATE_q\ & i(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~DUPLICATE_q\,
	datad => ALT_INV_i(5),
	dataf => ALT_INV_i(3),
	combout => \i~4_combout\);

-- Location: FF_X15_Y8_N44
\i[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~4_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[4]~DUPLICATE_q\);

-- Location: LABCELL_X15_Y8_N39
\i~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~3_combout\ = ( \i[4]~DUPLICATE_q\ & ( (\direction~DUPLICATE_q\) # (i(2)) ) ) # ( !\i[4]~DUPLICATE_q\ & ( (i(2) & !\direction~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_i(2),
	datac => \ALT_INV_direction~DUPLICATE_q\,
	dataf => \ALT_INV_i[4]~DUPLICATE_q\,
	combout => \i~3_combout\);

-- Location: FF_X15_Y8_N40
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~3_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LABCELL_X15_Y8_N57
\i~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~2_combout\ = ( i(3) & ( (i(1)) # (\direction~DUPLICATE_q\) ) ) # ( !i(3) & ( (!\direction~DUPLICATE_q\ & i(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~DUPLICATE_q\,
	datad => ALT_INV_i(1),
	dataf => ALT_INV_i(3),
	combout => \i~2_combout\);

-- Location: FF_X15_Y8_N58
\i[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~2_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[2]~DUPLICATE_q\);

-- Location: LABCELL_X15_Y8_N33
\direction~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~1_combout\ = ( !\state~q\ & ( \direction~DUPLICATE_q\ & ( (!\i[2]~DUPLICATE_q\ & !\i[4]~DUPLICATE_q\) ) ) ) # ( !\state~q\ & ( !\direction~DUPLICATE_q\ & ( (!\i[2]~DUPLICATE_q\ & \i[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i[2]~DUPLICATE_q\,
	datac => \ALT_INV_i[4]~DUPLICATE_q\,
	datad => \ALT_INV_i[0]~DUPLICATE_q\,
	datae => \ALT_INV_state~q\,
	dataf => \ALT_INV_direction~DUPLICATE_q\,
	combout => \direction~1_combout\);

-- Location: FF_X15_Y8_N49
\i[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~6_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[6]~DUPLICATE_q\);

-- Location: FF_X15_Y8_N52
\i[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~8_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[8]~DUPLICATE_q\);

-- Location: FF_X15_Y8_N38
\i[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~1_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[1]~DUPLICATE_q\);

-- Location: LABCELL_X15_Y8_N24
\direction~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = ( !i(7) & ( !i(5) & ( (!i(3) & ((!\direction~DUPLICATE_q\ & ((!\i[1]~DUPLICATE_q\))) # (\direction~DUPLICATE_q\ & (!i(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_i(3),
	datab => ALT_INV_i(9),
	datac => \ALT_INV_i[1]~DUPLICATE_q\,
	datad => \ALT_INV_direction~DUPLICATE_q\,
	datae => ALT_INV_i(7),
	dataf => ALT_INV_i(5),
	combout => \direction~0_combout\);

-- Location: LABCELL_X15_Y8_N12
\direction~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~2_combout\ = ( !\i[8]~DUPLICATE_q\ & ( (\direction~DUPLICATE_q\ & ((!\direction~1_combout\) # ((!\i[1]~DUPLICATE_q\) # ((!\direction~0_combout\) # (\i[6]~DUPLICATE_q\))))) ) ) # ( \i[8]~DUPLICATE_q\ & ( ((\direction~1_combout\ & 
-- (!\i[4]~DUPLICATE_q\ & (!\i[6]~DUPLICATE_q\ & \direction~0_combout\)))) # (\direction~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100110010001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~1_combout\,
	datab => \ALT_INV_direction~DUPLICATE_q\,
	datac => \ALT_INV_i[4]~DUPLICATE_q\,
	datad => \ALT_INV_i[6]~DUPLICATE_q\,
	datae => \ALT_INV_i[8]~DUPLICATE_q\,
	dataf => \ALT_INV_direction~0_combout\,
	datag => \ALT_INV_i[1]~DUPLICATE_q\,
	combout => \direction~2_combout\);

-- Location: FF_X15_Y8_N14
\direction~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \direction~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~DUPLICATE_q\);

-- Location: LABCELL_X15_Y8_N54
\i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~0_combout\ = ( \i[1]~DUPLICATE_q\ & ( !\direction~DUPLICATE_q\ ) ) # ( !\i[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~DUPLICATE_q\,
	dataf => \ALT_INV_i[1]~DUPLICATE_q\,
	combout => \i~0_combout\);

-- Location: FF_X15_Y8_N55
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~0_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LABCELL_X18_Y8_N3
\leds_output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output[0]~0_combout\ = ( !i(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_i(0),
	combout => \leds_output[0]~0_combout\);

-- Location: FF_X18_Y8_N4
\leds_output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output[0]~0_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[0]~reg0_q\);

-- Location: FF_X15_Y8_N31
\leds_output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[1]~reg0_q\);

-- Location: FF_X15_Y8_N35
\leds_output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \i[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[2]~reg0_q\);

-- Location: FF_X14_Y9_N13
\leds_output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => i(3),
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[3]~reg0_q\);

-- Location: FF_X15_Y8_N43
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~4_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LABCELL_X18_Y8_N30
\leds_output[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output[4]~reg0feeder_combout\ = ( i(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_i(4),
	combout => \leds_output[4]~reg0feeder_combout\);

-- Location: FF_X18_Y8_N32
\leds_output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output[4]~reg0feeder_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[4]~reg0_q\);

-- Location: FF_X15_Y8_N28
\leds_output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => i(5),
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[5]~reg0_q\);

-- Location: LABCELL_X17_Y8_N12
\leds_output[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output[6]~reg0feeder_combout\ = ( \i[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[6]~DUPLICATE_q\,
	combout => \leds_output[6]~reg0feeder_combout\);

-- Location: FF_X17_Y8_N13
\leds_output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output[6]~reg0feeder_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[6]~reg0_q\);

-- Location: LABCELL_X18_Y8_N15
\leds_output[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output[7]~reg0feeder_combout\ = ( i(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_i(7),
	combout => \leds_output[7]~reg0feeder_combout\);

-- Location: FF_X18_Y8_N17
\leds_output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output[7]~reg0feeder_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[7]~reg0_q\);

-- Location: FF_X15_Y8_N26
\leds_output[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => i(8),
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[8]~reg0_q\);

-- Location: FF_X15_Y8_N19
\leds_output[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => i(9),
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output[9]~reg0_q\);

-- Location: FF_X18_Y8_N46
\leds_output2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => i(0),
	sload => VCC,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[0]~reg0_q\);

-- Location: LABCELL_X15_Y8_N0
\leds_output2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[1]~0_combout\ = ( !\i[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[1]~DUPLICATE_q\,
	combout => \leds_output2[1]~0_combout\);

-- Location: FF_X15_Y8_N1
\leds_output2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[1]~0_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[1]~reg0_q\);

-- Location: LABCELL_X15_Y8_N3
\leds_output2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[2]~1_combout\ = ( !\i[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[2]~DUPLICATE_q\,
	combout => \leds_output2[2]~1_combout\);

-- Location: FF_X15_Y8_N5
\leds_output2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[2]~1_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[2]~reg0_q\);

-- Location: MLABCELL_X14_Y9_N33
\leds_output2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[3]~2_combout\ = !i(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_i(3),
	combout => \leds_output2[3]~2_combout\);

-- Location: FF_X14_Y9_N34
\leds_output2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[3]~2_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[3]~reg0_q\);

-- Location: LABCELL_X18_Y8_N36
\leds_output2[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[4]~3_combout\ = ( !i(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_i(4),
	combout => \leds_output2[4]~3_combout\);

-- Location: FF_X18_Y8_N37
\leds_output2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[4]~3_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[4]~reg0_q\);

-- Location: LABCELL_X15_Y8_N21
\leds_output2[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[5]~4_combout\ = ( !i(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_i(5),
	combout => \leds_output2[5]~4_combout\);

-- Location: FF_X15_Y8_N22
\leds_output2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[5]~4_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[5]~reg0_q\);

-- Location: LABCELL_X17_Y8_N9
\leds_output2[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[6]~5_combout\ = ( !\i[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[6]~DUPLICATE_q\,
	combout => \leds_output2[6]~5_combout\);

-- Location: FF_X17_Y8_N10
\leds_output2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[6]~5_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[6]~reg0_q\);

-- Location: LABCELL_X18_Y8_N6
\leds_output2[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[7]~6_combout\ = ( !i(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_i(7),
	combout => \leds_output2[7]~6_combout\);

-- Location: FF_X18_Y8_N7
\leds_output2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[7]~6_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[7]~reg0_q\);

-- Location: LABCELL_X18_Y8_N51
\leds_output2[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[8]~7_combout\ = ( !\i[8]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[8]~DUPLICATE_q\,
	combout => \leds_output2[8]~7_combout\);

-- Location: FF_X18_Y8_N52
\leds_output2[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[8]~7_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[8]~reg0_q\);

-- Location: FF_X15_Y8_N10
\i[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~9_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[9]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y8_N21
\leds_output2[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds_output2[9]~8_combout\ = ( !\i[9]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i[9]~DUPLICATE_q\,
	combout => \leds_output2[9]~8_combout\);

-- Location: FF_X18_Y8_N22
\leds_output2[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds_output2[9]~8_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_output2[9]~reg0_q\);

-- Location: LABCELL_X48_Y59_N0
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


