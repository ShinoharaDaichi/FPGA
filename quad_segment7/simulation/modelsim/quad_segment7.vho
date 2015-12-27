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

-- DATE "12/15/2015 12:30:10"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	quad_segment7 IS
    PORT (
	number : IN std_logic_vector(15 DOWNTO 0);
	input : IN std_logic;
	cout : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END quad_segment7;

-- Design Ports Information
-- input	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[4]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[9]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[10]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[12]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[13]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[14]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF quad_segment7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_number : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \input~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \number[0]~input_o\ : std_logic;
SIGNAL \number[8]~input_o\ : std_logic;
SIGNAL \number[10]~input_o\ : std_logic;
SIGNAL \number[15]~input_o\ : std_logic;
SIGNAL \number[13]~input_o\ : std_logic;
SIGNAL \number[12]~input_o\ : std_logic;
SIGNAL \number[14]~input_o\ : std_logic;
SIGNAL \number[11]~input_o\ : std_logic;
SIGNAL \bcd~2_combout\ : std_logic;
SIGNAL \number[7]~input_o\ : std_logic;
SIGNAL \bcd~0_combout\ : std_logic;
SIGNAL \number[9]~input_o\ : std_logic;
SIGNAL \bcd~1_combout\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;
SIGNAL \number[4]~input_o\ : std_logic;
SIGNAL \number[5]~input_o\ : std_logic;
SIGNAL \bcd~4_combout\ : std_logic;
SIGNAL \number[6]~input_o\ : std_logic;
SIGNAL \bcd~5_combout\ : std_logic;
SIGNAL \bcd~6_combout\ : std_logic;
SIGNAL \number[2]~input_o\ : std_logic;
SIGNAL \bcd~8_combout\ : std_logic;
SIGNAL \bcd~7_combout\ : std_logic;
SIGNAL \number[1]~input_o\ : std_logic;
SIGNAL \number[3]~input_o\ : std_logic;
SIGNAL \digit1[3]~2_combout\ : std_logic;
SIGNAL \digit1[1]~0_combout\ : std_logic;
SIGNAL \digit1[2]~1_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \bcd~9_combout\ : std_logic;
SIGNAL \bcd~10_combout\ : std_logic;
SIGNAL \bcd~11_combout\ : std_logic;
SIGNAL \bcd~15_combout\ : std_logic;
SIGNAL \bcd~18_combout\ : std_logic;
SIGNAL \bcd~17_combout\ : std_logic;
SIGNAL \bcd~16_combout\ : std_logic;
SIGNAL \bcd~14_combout\ : std_logic;
SIGNAL \bcd~19_combout\ : std_logic;
SIGNAL \bcd~22_combout\ : std_logic;
SIGNAL \bcd~13_combout\ : std_logic;
SIGNAL \bcd~21_combout\ : std_logic;
SIGNAL \bcd~12_combout\ : std_logic;
SIGNAL \bcd~20_combout\ : std_logic;
SIGNAL \bcd~24_combout\ : std_logic;
SIGNAL \bcd~23_combout\ : std_logic;
SIGNAL \bcd~25_combout\ : std_logic;
SIGNAL \digit2[3]~3_combout\ : std_logic;
SIGNAL \digit2[1]~1_combout\ : std_logic;
SIGNAL \digit2[0]~0_combout\ : std_logic;
SIGNAL \digit2[2]~2_combout\ : std_logic;
SIGNAL \second_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \bcd~28_combout\ : std_logic;
SIGNAL \bcd~30_combout\ : std_logic;
SIGNAL \bcd~31_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \bcd~32_combout\ : std_logic;
SIGNAL \bcd~33_combout\ : std_logic;
SIGNAL \bcd~34_combout\ : std_logic;
SIGNAL \bcd~37_combout\ : std_logic;
SIGNAL \bcd~35_combout\ : std_logic;
SIGNAL \bcd~36_combout\ : std_logic;
SIGNAL \bcd~29_combout\ : std_logic;
SIGNAL \bcd~39_combout\ : std_logic;
SIGNAL \bcd~26_combout\ : std_logic;
SIGNAL \bcd~38_combout\ : std_logic;
SIGNAL \bcd~27_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \digit3[1]~1_combout\ : std_logic;
SIGNAL \digit3[2]~2_combout\ : std_logic;
SIGNAL \digit3[0]~0_combout\ : std_logic;
SIGNAL \digit3[3]~3_combout\ : std_logic;
SIGNAL \third_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \digit4[3]~3_combout\ : std_logic;
SIGNAL \digit4[2]~2_combout\ : std_logic;
SIGNAL \digit4[1]~1_combout\ : std_logic;
SIGNAL \digit4[0]~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \bcd~41_combout\ : std_logic;
SIGNAL \bcd~42_combout\ : std_logic;
SIGNAL \bcd~40_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_number[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[0]~input_o\ : std_logic;
SIGNAL \MSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~42_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~41_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~40_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[0]~0_combout\ : std_logic;
SIGNAL \third_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan26~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~39_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~38_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~37_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~36_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~35_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~34_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~33_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~32_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~31_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~29_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~28_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~27_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~26_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[0]~0_combout\ : std_logic;
SIGNAL \second_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~25_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~24_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~23_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~22_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~21_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~20_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~19_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~18_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~17_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~16_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~15_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~14_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~13_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~12_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~11_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~10_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~9_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[0]~0_combout\ : std_logic;
SIGNAL \LSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit1[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit1[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_digit1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~8_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~7_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~6_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~5_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~4_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~3_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~2_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~1_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~0_combout\ : std_logic;

BEGIN

ww_number <= number;
ww_input <= input;
cout <= ww_cout;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_number[14]~input_o\ <= NOT \number[14]~input_o\;
\ALT_INV_number[15]~input_o\ <= NOT \number[15]~input_o\;
\ALT_INV_number[13]~input_o\ <= NOT \number[13]~input_o\;
\ALT_INV_number[12]~input_o\ <= NOT \number[12]~input_o\;
\ALT_INV_number[11]~input_o\ <= NOT \number[11]~input_o\;
\ALT_INV_number[10]~input_o\ <= NOT \number[10]~input_o\;
\ALT_INV_number[9]~input_o\ <= NOT \number[9]~input_o\;
\ALT_INV_number[8]~input_o\ <= NOT \number[8]~input_o\;
\ALT_INV_number[7]~input_o\ <= NOT \number[7]~input_o\;
\ALT_INV_number[6]~input_o\ <= NOT \number[6]~input_o\;
\ALT_INV_number[5]~input_o\ <= NOT \number[5]~input_o\;
\ALT_INV_number[4]~input_o\ <= NOT \number[4]~input_o\;
\ALT_INV_number[3]~input_o\ <= NOT \number[3]~input_o\;
\ALT_INV_number[2]~input_o\ <= NOT \number[2]~input_o\;
\ALT_INV_number[1]~input_o\ <= NOT \number[1]~input_o\;
\ALT_INV_number[0]~input_o\ <= NOT \number[0]~input_o\;
\MSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \MSB_segment7|Mux0~0_combout\;
\ALT_INV_bcd~42_combout\ <= NOT \bcd~42_combout\;
\ALT_INV_bcd~41_combout\ <= NOT \bcd~41_combout\;
\ALT_INV_bcd~40_combout\ <= NOT \bcd~40_combout\;
\ALT_INV_digit4[3]~3_combout\ <= NOT \digit4[3]~3_combout\;
\ALT_INV_digit4[2]~2_combout\ <= NOT \digit4[2]~2_combout\;
\ALT_INV_digit4[1]~1_combout\ <= NOT \digit4[1]~1_combout\;
\ALT_INV_digit4[0]~0_combout\ <= NOT \digit4[0]~0_combout\;
\third_segment7|ALT_INV_Mux0~0_combout\ <= NOT \third_segment7|Mux0~0_combout\;
\ALT_INV_digit3[3]~3_combout\ <= NOT \digit3[3]~3_combout\;
\ALT_INV_digit3[2]~2_combout\ <= NOT \digit3[2]~2_combout\;
\ALT_INV_digit3[1]~1_combout\ <= NOT \digit3[1]~1_combout\;
\ALT_INV_LessThan26~0_combout\ <= NOT \LessThan26~0_combout\;
\ALT_INV_bcd~39_combout\ <= NOT \bcd~39_combout\;
\ALT_INV_bcd~38_combout\ <= NOT \bcd~38_combout\;
\ALT_INV_bcd~37_combout\ <= NOT \bcd~37_combout\;
\ALT_INV_bcd~36_combout\ <= NOT \bcd~36_combout\;
\ALT_INV_bcd~35_combout\ <= NOT \bcd~35_combout\;
\ALT_INV_bcd~34_combout\ <= NOT \bcd~34_combout\;
\ALT_INV_bcd~33_combout\ <= NOT \bcd~33_combout\;
\ALT_INV_bcd~32_combout\ <= NOT \bcd~32_combout\;
\ALT_INV_bcd~31_combout\ <= NOT \bcd~31_combout\;
\ALT_INV_bcd~30_combout\ <= NOT \bcd~30_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_bcd~29_combout\ <= NOT \bcd~29_combout\;
\ALT_INV_bcd~28_combout\ <= NOT \bcd~28_combout\;
\ALT_INV_bcd~27_combout\ <= NOT \bcd~27_combout\;
\ALT_INV_bcd~26_combout\ <= NOT \bcd~26_combout\;
\ALT_INV_digit3[0]~0_combout\ <= NOT \digit3[0]~0_combout\;
\second_segment7|ALT_INV_Mux0~0_combout\ <= NOT \second_segment7|Mux0~0_combout\;
\ALT_INV_digit2[3]~3_combout\ <= NOT \digit2[3]~3_combout\;
\ALT_INV_digit2[2]~2_combout\ <= NOT \digit2[2]~2_combout\;
\ALT_INV_digit2[1]~1_combout\ <= NOT \digit2[1]~1_combout\;
\ALT_INV_bcd~25_combout\ <= NOT \bcd~25_combout\;
\ALT_INV_bcd~24_combout\ <= NOT \bcd~24_combout\;
\ALT_INV_bcd~23_combout\ <= NOT \bcd~23_combout\;
\ALT_INV_bcd~22_combout\ <= NOT \bcd~22_combout\;
\ALT_INV_bcd~21_combout\ <= NOT \bcd~21_combout\;
\ALT_INV_bcd~20_combout\ <= NOT \bcd~20_combout\;
\ALT_INV_bcd~19_combout\ <= NOT \bcd~19_combout\;
\ALT_INV_bcd~18_combout\ <= NOT \bcd~18_combout\;
\ALT_INV_bcd~17_combout\ <= NOT \bcd~17_combout\;
\ALT_INV_bcd~16_combout\ <= NOT \bcd~16_combout\;
\ALT_INV_bcd~15_combout\ <= NOT \bcd~15_combout\;
\ALT_INV_bcd~14_combout\ <= NOT \bcd~14_combout\;
\ALT_INV_bcd~13_combout\ <= NOT \bcd~13_combout\;
\ALT_INV_bcd~12_combout\ <= NOT \bcd~12_combout\;
\ALT_INV_bcd~11_combout\ <= NOT \bcd~11_combout\;
\ALT_INV_bcd~10_combout\ <= NOT \bcd~10_combout\;
\ALT_INV_bcd~9_combout\ <= NOT \bcd~9_combout\;
\ALT_INV_digit2[0]~0_combout\ <= NOT \digit2[0]~0_combout\;
\LSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \LSB_segment7|Mux0~0_combout\;
\ALT_INV_digit1[3]~2_combout\ <= NOT \digit1[3]~2_combout\;
\ALT_INV_digit1[2]~1_combout\ <= NOT \digit1[2]~1_combout\;
\ALT_INV_digit1[1]~0_combout\ <= NOT \digit1[1]~0_combout\;
\ALT_INV_bcd~8_combout\ <= NOT \bcd~8_combout\;
\ALT_INV_bcd~7_combout\ <= NOT \bcd~7_combout\;
\ALT_INV_bcd~6_combout\ <= NOT \bcd~6_combout\;
\ALT_INV_bcd~5_combout\ <= NOT \bcd~5_combout\;
\ALT_INV_bcd~4_combout\ <= NOT \bcd~4_combout\;
\ALT_INV_bcd~3_combout\ <= NOT \bcd~3_combout\;
\ALT_INV_bcd~2_combout\ <= NOT \bcd~2_combout\;
\ALT_INV_bcd~1_combout\ <= NOT \bcd~1_combout\;
\ALT_INV_bcd~0_combout\ <= NOT \bcd~0_combout\;

-- Location: IOOBUF_X10_Y61_N42
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X62_Y0_N59
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X64_Y0_N36
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X65_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X62_Y0_N76
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X65_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X62_Y0_N93
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X7_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X7_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y13_N22
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y12_N5
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X68_Y10_N62
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X68_Y11_N22
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X68_Y11_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X68_Y13_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X68_Y13_N39
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X68_Y11_N56
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X68_Y11_N39
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X68_Y12_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X68_Y10_N96
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X68_Y10_N79
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOIBUF_X66_Y0_N52
\number[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(0),
	o => \number[0]~input_o\);

-- Location: IOIBUF_X59_Y0_N52
\number[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(8),
	o => \number[8]~input_o\);

-- Location: IOIBUF_X57_Y0_N52
\number[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(10),
	o => \number[10]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\number[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(15),
	o => \number[15]~input_o\);

-- Location: IOIBUF_X57_Y0_N18
\number[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(13),
	o => \number[13]~input_o\);

-- Location: IOIBUF_X57_Y0_N35
\number[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(12),
	o => \number[12]~input_o\);

-- Location: IOIBUF_X55_Y0_N92
\number[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(14),
	o => \number[14]~input_o\);

-- Location: IOIBUF_X59_Y0_N18
\number[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(11),
	o => \number[11]~input_o\);

-- Location: LABCELL_X63_Y2_N42
\bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~2_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[10]~input_o\ & (\number[15]~input_o\ & (!\number[13]~input_o\ & \number[12]~input_o\))) # (\number[10]~input_o\ & (!\number[12]~input_o\ & (!\number[15]~input_o\ $ 
-- (\number[13]~input_o\)))) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[10]~input_o\ & (\number[13]~input_o\ & \number[12]~input_o\))) # (\number[15]~input_o\ & (!\number[13]~input_o\ & 
-- (!\number[10]~input_o\ $ (\number[12]~input_o\)))) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[15]~input_o\ & (\number[13]~input_o\ & (!\number[10]~input_o\ $ (\number[12]~input_o\)))) # (\number[15]~input_o\ & 
-- (\number[10]~input_o\ & (!\number[13]~input_o\ & !\number[12]~input_o\))) ) ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[10]~input_o\ & (\number[12]~input_o\ & (!\number[15]~input_o\ $ (\number[13]~input_o\)))) # 
-- (\number[10]~input_o\ & (!\number[15]~input_o\ & (\number[13]~input_o\ & !\number[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000010000110000000010000100000000110000100000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~2_combout\);

-- Location: IOIBUF_X59_Y0_N1
\number[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(7),
	o => \number[7]~input_o\);

-- Location: LABCELL_X63_Y2_N0
\bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~0_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[10]~input_o\ & (!\number[12]~input_o\ & ((!\number[15]~input_o\) # (\number[13]~input_o\)))) # (\number[10]~input_o\ & (!\number[12]~input_o\ $ (((!\number[15]~input_o\) # 
-- (\number[13]~input_o\))))) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[10]~input_o\ & (\number[12]~input_o\ & ((!\number[13]~input_o\) # (\number[15]~input_o\)))) # (\number[10]~input_o\ & (!\number[12]~input_o\ & 
-- ((!\number[15]~input_o\) # (\number[13]~input_o\)))) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[10]~input_o\ & (!\number[12]~input_o\ $ (((!\number[15]~input_o\ & \number[13]~input_o\))))) # (\number[10]~input_o\ & 
-- (\number[12]~input_o\ & ((!\number[13]~input_o\) # (\number[15]~input_o\)))) ) ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[10]~input_o\ & ((!\number[15]~input_o\ & (\number[13]~input_o\ & !\number[12]~input_o\)) # 
-- (\number[15]~input_o\ & (!\number[13]~input_o\ & \number[12]~input_o\)))) # (\number[10]~input_o\ & (!\number[12]~input_o\ $ (((!\number[15]~input_o\ & \number[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100100100100101000100101100101000101101000101001101001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~0_combout\);

-- Location: IOIBUF_X55_Y0_N41
\number[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(9),
	o => \number[9]~input_o\);

-- Location: LABCELL_X63_Y2_N36
\bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~1_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[13]~input_o\ $ (((\number[10]~input_o\ & !\number[12]~input_o\))))) # (\number[15]~input_o\ & (\number[13]~input_o\ & ((!\number[10]~input_o\) # 
-- (\number[12]~input_o\)))) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[13]~input_o\ & ((!\number[12]~input_o\) # (\number[10]~input_o\)))) # (\number[15]~input_o\ & (!\number[13]~input_o\ $ 
-- (((!\number[12]~input_o\) # (\number[10]~input_o\))))) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[15]~input_o\ & ((!\number[10]~input_o\ & (\number[13]~input_o\ & \number[12]~input_o\)) # (\number[10]~input_o\ & 
-- (!\number[13]~input_o\ & !\number[12]~input_o\)))) # (\number[15]~input_o\ & (!\number[13]~input_o\ $ (((\number[10]~input_o\ & !\number[12]~input_o\))))) ) ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[15]~input_o\ & 
-- (\number[13]~input_o\ & ((!\number[10]~input_o\) # (\number[12]~input_o\)))) # (\number[15]~input_o\ & (!\number[13]~input_o\ & ((!\number[12]~input_o\) # (\number[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000011100011000010011100011000011011000011000011011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~1_combout\);

-- Location: LABCELL_X64_Y2_N0
\bcd~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = ( \number[9]~input_o\ & ( \bcd~1_combout\ & ( !\number[7]~input_o\ $ (((!\bcd~0_combout\) # (\number[8]~input_o\))) ) ) ) # ( !\number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[8]~input_o\ & (!\bcd~0_combout\ & (!\bcd~2_combout\ $ 
-- (\number[7]~input_o\)))) # (\number[8]~input_o\ & (!\number[7]~input_o\ & ((!\bcd~2_combout\) # (\bcd~0_combout\)))) ) ) ) # ( \number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[7]~input_o\ & ((!\number[8]~input_o\ & (\bcd~2_combout\)) # 
-- (\number[8]~input_o\ & ((!\bcd~0_combout\))))) # (\number[7]~input_o\ & (\bcd~0_combout\ & (!\number[8]~input_o\ $ (\bcd~2_combout\)))) ) ) ) # ( !\number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & ((!\number[7]~input_o\ $ 
-- (!\bcd~0_combout\)))) # (\number[8]~input_o\ & ((!\bcd~2_combout\ & (\number[7]~input_o\)) # (\bcd~2_combout\ & (!\number[7]~input_o\ & \bcd~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010110100011100000010100111000010010100000000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[8]~input_o\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[7]~input_o\,
	datad => \ALT_INV_bcd~0_combout\,
	datae => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_bcd~1_combout\,
	combout => \bcd~3_combout\);

-- Location: IOIBUF_X59_Y0_N35
\number[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(4),
	o => \number[4]~input_o\);

-- Location: IOIBUF_X61_Y0_N52
\number[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(5),
	o => \number[5]~input_o\);

-- Location: LABCELL_X64_Y2_N6
\bcd~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~4_combout\ = ( \number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[8]~input_o\ & (!\number[7]~input_o\ & \bcd~0_combout\)) # (\number[8]~input_o\ & ((!\bcd~0_combout\))) ) ) ) # ( !\number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[7]~input_o\ & 
-- (!\bcd~0_combout\ & (!\number[8]~input_o\ $ (!\bcd~2_combout\)))) # (\number[7]~input_o\ & (!\number[8]~input_o\ $ (((\bcd~0_combout\))))) ) ) ) # ( \number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & ((!\bcd~2_combout\ & 
-- ((\bcd~0_combout\))) # (\bcd~2_combout\ & (\number[7]~input_o\)))) # (\number[8]~input_o\ & (!\bcd~0_combout\ & (!\bcd~2_combout\ $ (!\number[7]~input_o\)))) ) ) ) # ( !\number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & (!\bcd~2_combout\ 
-- $ (((!\bcd~0_combout\) # (\number[7]~input_o\))))) # (\number[8]~input_o\ & ((!\bcd~2_combout\ & ((!\bcd~0_combout\))) # (\bcd~2_combout\ & (!\number[7]~input_o\ & \bcd~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010010000101101000101001101010000001010101010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[8]~input_o\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[7]~input_o\,
	datad => \ALT_INV_bcd~0_combout\,
	datae => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_bcd~1_combout\,
	combout => \bcd~4_combout\);

-- Location: IOIBUF_X61_Y0_N35
\number[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(6),
	o => \number[6]~input_o\);

-- Location: LABCELL_X64_Y2_N42
\bcd~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~5_combout\ = ( \number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[8]~input_o\ & (\number[7]~input_o\ & \bcd~0_combout\)) ) ) ) # ( !\number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[8]~input_o\ & (((!\number[7]~input_o\ & \bcd~0_combout\)))) # 
-- (\number[8]~input_o\ & (!\bcd~0_combout\ & (!\bcd~2_combout\ $ (!\number[7]~input_o\)))) ) ) ) # ( \number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\bcd~2_combout\ & (!\number[7]~input_o\ & (!\number[8]~input_o\ $ (\bcd~0_combout\)))) # (\bcd~2_combout\ & 
-- (\number[8]~input_o\ & (\number[7]~input_o\ & !\bcd~0_combout\))) ) ) ) # ( !\number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & (\bcd~0_combout\ & ((\number[7]~input_o\) # (\bcd~2_combout\)))) # (\number[8]~input_o\ & (\bcd~2_combout\ & 
-- (!\number[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000111010100000010100000000010100101000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[8]~input_o\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[7]~input_o\,
	datad => \ALT_INV_bcd~0_combout\,
	datae => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_bcd~1_combout\,
	combout => \bcd~5_combout\);

-- Location: LABCELL_X64_Y2_N18
\bcd~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~6_combout\ = ( \number[6]~input_o\ & ( \bcd~5_combout\ & ( !\number[4]~input_o\ $ (((!\bcd~3_combout\ & ((\bcd~4_combout\))) # (\bcd~3_combout\ & (\number[5]~input_o\)))) ) ) ) # ( !\number[6]~input_o\ & ( \bcd~5_combout\ & ( (!\bcd~3_combout\ & 
-- (\number[4]~input_o\ & (!\number[5]~input_o\))) # (\bcd~3_combout\ & (!\number[4]~input_o\ & ((!\bcd~4_combout\) # (\number[5]~input_o\)))) ) ) ) # ( \number[6]~input_o\ & ( !\bcd~5_combout\ & ( (!\number[4]~input_o\ & ((!\bcd~3_combout\ & 
-- (\number[5]~input_o\ & !\bcd~4_combout\)) # (\bcd~3_combout\ & (!\number[5]~input_o\ & \bcd~4_combout\)))) # (\number[4]~input_o\ & (!\bcd~4_combout\ $ (((!\bcd~3_combout\) # (\number[5]~input_o\))))) ) ) ) # ( !\number[6]~input_o\ & ( !\bcd~5_combout\ & 
-- ( (!\number[4]~input_o\ & (!\bcd~4_combout\ $ (((!\bcd~3_combout\) # (\number[5]~input_o\))))) # (\number[4]~input_o\ & (!\bcd~4_combout\ & ((!\bcd~3_combout\) # (\number[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110001100000110000110001101100100001001001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_number[4]~input_o\,
	datac => \ALT_INV_number[5]~input_o\,
	datad => \ALT_INV_bcd~4_combout\,
	datae => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~5_combout\,
	combout => \bcd~6_combout\);

-- Location: IOIBUF_X61_Y0_N1
\number[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(2),
	o => \number[2]~input_o\);

-- Location: LABCELL_X64_Y2_N30
\bcd~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~8_combout\ = ( \number[6]~input_o\ & ( \bcd~5_combout\ & ( (\number[4]~input_o\ & ((!\bcd~3_combout\ & (\number[5]~input_o\ & !\bcd~4_combout\)) # (\bcd~3_combout\ & (!\number[5]~input_o\ & \bcd~4_combout\)))) ) ) ) # ( !\number[6]~input_o\ & ( 
-- \bcd~5_combout\ & ( (!\number[5]~input_o\ & (\bcd~3_combout\ & ((!\number[4]~input_o\) # (!\bcd~4_combout\)))) # (\number[5]~input_o\ & (!\number[4]~input_o\ & ((!\bcd~3_combout\) # (!\bcd~4_combout\)))) ) ) ) # ( \number[6]~input_o\ & ( !\bcd~5_combout\ 
-- & ( (!\number[4]~input_o\ & (!\bcd~4_combout\ & (!\bcd~3_combout\ $ (\number[5]~input_o\)))) # (\number[4]~input_o\ & (\bcd~3_combout\ & (!\number[5]~input_o\ & \bcd~4_combout\))) ) ) ) # ( !\number[6]~input_o\ & ( !\bcd~5_combout\ & ( (!\bcd~3_combout\ & 
-- (\number[4]~input_o\ & (\number[5]~input_o\ & \bcd~4_combout\))) # (\bcd~3_combout\ & (!\number[5]~input_o\ & (!\number[4]~input_o\ $ (!\bcd~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000010100001000001000001011100010010000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_number[4]~input_o\,
	datac => \ALT_INV_number[5]~input_o\,
	datad => \ALT_INV_bcd~4_combout\,
	datae => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~5_combout\,
	combout => \bcd~8_combout\);

-- Location: LABCELL_X64_Y2_N54
\bcd~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~7_combout\ = ( \number[6]~input_o\ & ( \bcd~5_combout\ & ( (!\bcd~3_combout\ & (!\number[5]~input_o\ $ (((!\number[4]~input_o\) # (\bcd~4_combout\))))) # (\bcd~3_combout\ & (!\number[5]~input_o\ & (!\number[4]~input_o\ $ (!\bcd~4_combout\)))) ) ) ) # 
-- ( !\number[6]~input_o\ & ( \bcd~5_combout\ & ( (!\bcd~3_combout\ & (((!\number[5]~input_o\)))) # (\bcd~3_combout\ & ((!\number[4]~input_o\ & (\number[5]~input_o\ & !\bcd~4_combout\)) # (\number[4]~input_o\ & (!\number[5]~input_o\ $ (\bcd~4_combout\))))) ) 
-- ) ) # ( \number[6]~input_o\ & ( !\bcd~5_combout\ & ( (!\bcd~3_combout\ & (\number[5]~input_o\ & ((\bcd~4_combout\) # (\number[4]~input_o\)))) # (\bcd~3_combout\ & (!\number[5]~input_o\ & ((!\number[4]~input_o\) # (!\bcd~4_combout\)))) ) ) ) # ( 
-- !\number[6]~input_o\ & ( !\bcd~5_combout\ & ( (!\bcd~3_combout\ & (!\number[5]~input_o\ $ (((!\number[4]~input_o\) # (!\bcd~4_combout\))))) # (\bcd~3_combout\ & ((!\number[4]~input_o\ & (!\number[5]~input_o\ & !\bcd~4_combout\)) # (\number[4]~input_o\ & 
-- (\number[5]~input_o\ & \bcd~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000101001010100100100101010110100101000010011100001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_number[4]~input_o\,
	datac => \ALT_INV_number[5]~input_o\,
	datad => \ALT_INV_bcd~4_combout\,
	datae => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~5_combout\,
	combout => \bcd~7_combout\);

-- Location: IOIBUF_X61_Y0_N18
\number[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(1),
	o => \number[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N35
\number[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(3),
	o => \number[3]~input_o\);

-- Location: LABCELL_X64_Y1_N42
\digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit1[3]~2_combout\ = ( \number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (\number[2]~input_o\ & (\bcd~8_combout\ & !\bcd~7_combout\))) # (\bcd~6_combout\ & (!\number[2]~input_o\ & ((\bcd~7_combout\)))) ) ) ) # ( !\number[1]~input_o\ & 
-- ( \number[3]~input_o\ & ( (!\bcd~8_combout\ & (!\bcd~7_combout\ & (!\bcd~6_combout\ $ (\number[2]~input_o\)))) ) ) ) # ( \number[1]~input_o\ & ( !\number[3]~input_o\ & ( (!\bcd~6_combout\ & (\number[2]~input_o\ & (!\bcd~8_combout\ & \bcd~7_combout\))) # 
-- (\bcd~6_combout\ & (!\number[2]~input_o\ & ((!\bcd~7_combout\)))) ) ) ) # ( !\number[1]~input_o\ & ( !\number[3]~input_o\ & ( (!\bcd~6_combout\ & (\number[2]~input_o\ & (\bcd~8_combout\))) # (\bcd~6_combout\ & ((!\bcd~7_combout\ & ((\bcd~8_combout\))) # 
-- (\bcd~7_combout\ & (!\number[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101000110010001000010000010010000000000000000001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_number[2]~input_o\,
	datac => \ALT_INV_bcd~8_combout\,
	datad => \ALT_INV_bcd~7_combout\,
	datae => \ALT_INV_number[1]~input_o\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \digit1[3]~2_combout\);

-- Location: LABCELL_X64_Y1_N30
\digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit1[1]~0_combout\ = ( \number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (((\bcd~7_combout\)))) # (\bcd~6_combout\ & (!\number[2]~input_o\ $ (((\bcd~7_combout\) # (\bcd~8_combout\))))) ) ) ) # ( !\number[1]~input_o\ & ( 
-- \number[3]~input_o\ & ( (!\number[2]~input_o\ & ((!\bcd~7_combout\ & ((\bcd~8_combout\))) # (\bcd~7_combout\ & (\bcd~6_combout\)))) # (\number[2]~input_o\ & (!\bcd~6_combout\ & ((!\bcd~7_combout\)))) ) ) ) # ( \number[1]~input_o\ & ( !\number[3]~input_o\ 
-- & ( (!\number[2]~input_o\ & (!\bcd~6_combout\ & ((!\bcd~7_combout\) # (\bcd~8_combout\)))) # (\number[2]~input_o\ & (((!\bcd~8_combout\ & !\bcd~7_combout\)))) ) ) ) # ( !\number[1]~input_o\ & ( !\number[3]~input_o\ & ( (!\bcd~6_combout\ & 
-- (((!\bcd~8_combout\ & \bcd~7_combout\)))) # (\bcd~6_combout\ & ((!\number[2]~input_o\ & ((!\bcd~7_combout\))) # (\number[2]~input_o\ & ((\bcd~7_combout\) # (\bcd~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010110110001101110000000100000101110010001000100000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_number[2]~input_o\,
	datac => \ALT_INV_bcd~8_combout\,
	datad => \ALT_INV_bcd~7_combout\,
	datae => \ALT_INV_number[1]~input_o\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \digit1[1]~0_combout\);

-- Location: LABCELL_X64_Y1_N6
\digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit1[2]~1_combout\ = ( \number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (!\number[2]~input_o\ $ (((!\bcd~8_combout\) # (\bcd~7_combout\))))) # (\bcd~6_combout\ & (!\number[2]~input_o\ & ((!\bcd~7_combout\)))) ) ) ) # ( 
-- !\number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (\number[2]~input_o\ & ((\bcd~7_combout\) # (\bcd~8_combout\)))) # (\bcd~6_combout\ & (!\number[2]~input_o\ & ((!\bcd~8_combout\) # (\bcd~7_combout\)))) ) ) ) # ( \number[1]~input_o\ & ( 
-- !\number[3]~input_o\ & ( (!\bcd~7_combout\ & ((!\number[2]~input_o\ & ((\bcd~8_combout\))) # (\number[2]~input_o\ & (!\bcd~6_combout\ & !\bcd~8_combout\)))) # (\bcd~7_combout\ & (!\bcd~6_combout\ $ ((\number[2]~input_o\)))) ) ) ) # ( !\number[1]~input_o\ 
-- & ( !\number[3]~input_o\ & ( (!\bcd~6_combout\ & (!\number[2]~input_o\ $ ((!\bcd~8_combout\)))) # (\bcd~6_combout\ & (!\bcd~7_combout\ & (!\number[2]~input_o\ $ (\bcd~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100101000001011001001100101000010011001100110110000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_number[2]~input_o\,
	datac => \ALT_INV_bcd~8_combout\,
	datad => \ALT_INV_bcd~7_combout\,
	datae => \ALT_INV_number[1]~input_o\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \digit1[2]~1_combout\);

-- Location: LABCELL_X64_Y1_N51
\LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux6~0_combout\ = ( \digit1[2]~1_combout\ & ( (!\number[0]~input_o\ & (!\digit1[3]~2_combout\ & !\digit1[1]~0_combout\)) ) ) # ( !\digit1[2]~1_combout\ & ( (\number[0]~input_o\ & (!\digit1[3]~2_combout\ & !\digit1[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_digit1[3]~2_combout\,
	datac => \ALT_INV_digit1[1]~0_combout\,
	dataf => \ALT_INV_digit1[2]~1_combout\,
	combout => \LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y1_N24
\LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux5~0_combout\ = ( \digit1[1]~0_combout\ & ( (!\number[0]~input_o\ & \digit1[2]~1_combout\) ) ) # ( !\digit1[1]~0_combout\ & ( (\number[0]~input_o\ & \digit1[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_digit1[2]~1_combout\,
	dataf => \ALT_INV_digit1[1]~0_combout\,
	combout => \LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y1_N27
\LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux4~0_combout\ = ( \digit1[1]~0_combout\ & ( (!\number[0]~input_o\ & !\digit1[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datac => \ALT_INV_digit1[2]~1_combout\,
	dataf => \ALT_INV_digit1[1]~0_combout\,
	combout => \LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y1_N0
\LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux3~0_combout\ = ( \digit1[2]~1_combout\ & ( (!\digit1[3]~2_combout\ & (!\digit1[1]~0_combout\ $ (\number[0]~input_o\))) ) ) # ( !\digit1[2]~1_combout\ & ( (!\digit1[1]~0_combout\ & (\number[0]~input_o\ & !\digit1[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_digit1[1]~0_combout\,
	datac => \ALT_INV_number[0]~input_o\,
	datad => \ALT_INV_digit1[3]~2_combout\,
	dataf => \ALT_INV_digit1[2]~1_combout\,
	combout => \LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y1_N36
\LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux2~0_combout\ = ( \digit1[2]~1_combout\ & ( (!\digit1[1]~0_combout\) # (\number[0]~input_o\) ) ) # ( !\digit1[2]~1_combout\ & ( \number[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number[0]~input_o\,
	datad => \ALT_INV_digit1[1]~0_combout\,
	dataf => \ALT_INV_digit1[2]~1_combout\,
	combout => \LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y1_N12
\LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux1~0_combout\ = ( !\digit1[3]~2_combout\ & ( (!\number[0]~input_o\ & (!\digit1[2]~1_combout\ & \digit1[1]~0_combout\)) # (\number[0]~input_o\ & ((!\digit1[2]~1_combout\) # (\digit1[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_digit1[2]~1_combout\,
	datac => \ALT_INV_digit1[1]~0_combout\,
	dataf => \ALT_INV_digit1[3]~2_combout\,
	combout => \LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y1_N15
\LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux0~0_combout\ = ( \digit1[1]~0_combout\ & ( (!\number[0]~input_o\) # ((!\digit1[2]~1_combout\) # (\digit1[3]~2_combout\)) ) ) # ( !\digit1[1]~0_combout\ & ( (\digit1[3]~2_combout\) # (\digit1[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_digit1[2]~1_combout\,
	datac => \ALT_INV_digit1[3]~2_combout\,
	dataf => \ALT_INV_digit1[1]~0_combout\,
	combout => \LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y1_N39
\bcd~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~9_combout\ = ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (((!\bcd~7_combout\ & \bcd~8_combout\)))) # (\bcd~6_combout\ & ((!\number[2]~input_o\ & (!\bcd~7_combout\)) # (\number[2]~input_o\ & ((!\bcd~8_combout\) # (\bcd~7_combout\))))) ) ) # ( 
-- !\number[3]~input_o\ & ( (!\bcd~6_combout\ & ((!\bcd~7_combout\ $ (!\bcd~8_combout\)))) # (\bcd~6_combout\ & (!\bcd~7_combout\ & ((\bcd~8_combout\) # (\number[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101011110000000110101111000001010001111000010101000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_number[2]~input_o\,
	datac => \ALT_INV_bcd~7_combout\,
	datad => \ALT_INV_bcd~8_combout\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \bcd~9_combout\);

-- Location: LABCELL_X64_Y1_N54
\bcd~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~10_combout\ = ( \number[3]~input_o\ & ( !\bcd~7_combout\ $ (\bcd~8_combout\) ) ) # ( !\number[3]~input_o\ & ( !\bcd~8_combout\ $ (((\bcd~6_combout\ & \bcd~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000111100001111000011110000111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_bcd~7_combout\,
	datac => \ALT_INV_bcd~8_combout\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \bcd~10_combout\);

-- Location: LABCELL_X64_Y2_N36
\bcd~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~11_combout\ = ( \number[6]~input_o\ & ( \bcd~5_combout\ & ( (!\bcd~3_combout\ & ((!\bcd~4_combout\))) # (\bcd~3_combout\ & (!\number[5]~input_o\ & \bcd~4_combout\)) ) ) ) # ( !\number[6]~input_o\ & ( \bcd~5_combout\ & ( (!\bcd~3_combout\ & 
-- (\number[4]~input_o\ & (\number[5]~input_o\))) # (\bcd~3_combout\ & ((!\number[4]~input_o\ & ((!\bcd~4_combout\) # (\number[5]~input_o\))) # (\number[4]~input_o\ & ((!\number[5]~input_o\) # (\bcd~4_combout\))))) ) ) ) # ( \number[6]~input_o\ & ( 
-- !\bcd~5_combout\ & ( (!\bcd~3_combout\ & (!\bcd~4_combout\ & ((\number[5]~input_o\) # (\number[4]~input_o\)))) # (\bcd~3_combout\ & ((!\number[5]~input_o\ & ((\bcd~4_combout\))) # (\number[5]~input_o\ & (\number[4]~input_o\ & !\bcd~4_combout\)))) ) ) ) # 
-- ( !\number[6]~input_o\ & ( !\bcd~5_combout\ & ( (!\bcd~3_combout\ & (((\bcd~4_combout\)))) # (\bcd~3_combout\ & ((!\number[5]~input_o\ & ((!\bcd~4_combout\) # (\number[4]~input_o\))) # (\number[5]~input_o\ & ((\bcd~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010111111001010110101000001010110000101111010101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_number[4]~input_o\,
	datac => \ALT_INV_number[5]~input_o\,
	datad => \ALT_INV_bcd~4_combout\,
	datae => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~5_combout\,
	combout => \bcd~11_combout\);

-- Location: LABCELL_X64_Y2_N27
\bcd~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~15_combout\ = ( \number[8]~input_o\ & ( (!\bcd~2_combout\ & (!\bcd~0_combout\ $ (((!\bcd~1_combout\) # (\number[9]~input_o\))))) # (\bcd~2_combout\ & (!\bcd~1_combout\ $ (((\bcd~0_combout\ & \number[9]~input_o\))))) ) ) # ( !\number[8]~input_o\ & ( 
-- (!\bcd~1_combout\ & (((\bcd~0_combout\ & \number[9]~input_o\)) # (\bcd~2_combout\))) # (\bcd~1_combout\ & (!\bcd~2_combout\ & (!\bcd~0_combout\ & !\number[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000101010011000100010101001101010001011010110101000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~1_combout\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_bcd~0_combout\,
	datad => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_number[8]~input_o\,
	combout => \bcd~15_combout\);

-- Location: LABCELL_X63_Y2_N24
\bcd~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~18_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[13]~input_o\ & !\number[12]~input_o\)) # (\number[15]~input_o\ & (\number[13]~input_o\ & \number[12]~input_o\)) ) ) ) # ( !\number[14]~input_o\ & ( 
-- \number[11]~input_o\ & ( (!\number[15]~input_o\ & (((\number[13]~input_o\)))) # (\number[15]~input_o\ & ((!\number[13]~input_o\ & ((\number[12]~input_o\) # (\number[10]~input_o\))) # (\number[13]~input_o\ & ((!\number[12]~input_o\))))) ) ) ) # ( 
-- \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[13]~input_o\ & !\number[12]~input_o\)) # (\number[15]~input_o\ & (\number[13]~input_o\ & \number[12]~input_o\)) ) ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ 
-- & ( (!\number[15]~input_o\ & (((\number[13]~input_o\ & \number[12]~input_o\)))) # (\number[15]~input_o\ & ((!\number[13]~input_o\ & ((\number[12]~input_o\))) # (\number[13]~input_o\ & ((!\number[10]~input_o\) # (!\number[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111110110000000000001100011111001111001100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~18_combout\);

-- Location: LABCELL_X63_Y2_N48
\bcd~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~17_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & ((!\number[13]~input_o\ $ (\number[12]~input_o\)))) # (\number[15]~input_o\ & ((!\number[13]~input_o\ & (\number[10]~input_o\ & \number[12]~input_o\)) # 
-- (\number[13]~input_o\ & ((!\number[12]~input_o\))))) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (\number[12]~input_o\ & ((!\number[13]~input_o\) # (\number[10]~input_o\)))) # (\number[15]~input_o\ & 
-- (!\number[12]~input_o\ & ((!\number[10]~input_o\) # (\number[13]~input_o\)))) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[12]~input_o\ & (!\number[15]~input_o\ $ (\number[13]~input_o\))) ) ) ) # ( !\number[14]~input_o\ & ( 
-- !\number[11]~input_o\ & ( (!\number[15]~input_o\ & ((!\number[13]~input_o\ & (\number[10]~input_o\ & \number[12]~input_o\)) # (\number[13]~input_o\ & ((!\number[12]~input_o\))))) # (\number[15]~input_o\ & ((!\number[12]~input_o\) # ((!\number[10]~input_o\ 
-- & \number[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101000010110000110000000000100011110001001100001100011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~17_combout\);

-- Location: LABCELL_X64_Y2_N24
\bcd~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~16_combout\ = ( \bcd~0_combout\ & ( !\bcd~1_combout\ $ (\bcd~2_combout\) ) ) # ( !\bcd~0_combout\ & ( !\bcd~2_combout\ $ (((\bcd~1_combout\ & \number[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100111001001110010011100100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~1_combout\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_bcd~0_combout\,
	combout => \bcd~16_combout\);

-- Location: LABCELL_X64_Y2_N48
\bcd~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~14_combout\ = ( \number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\number[8]~input_o\ & \bcd~0_combout\) ) ) ) # ( !\number[9]~input_o\ & ( \bcd~1_combout\ & ( (!\bcd~0_combout\ & ((!\bcd~2_combout\) # ((\number[8]~input_o\ & \number[7]~input_o\)))) # 
-- (\bcd~0_combout\ & (((\number[7]~input_o\)) # (\number[8]~input_o\))) ) ) ) # ( \number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & (!\bcd~0_combout\ & ((\number[7]~input_o\) # (\bcd~2_combout\)))) # (\number[8]~input_o\ & 
-- ((!\bcd~0_combout\) # ((!\bcd~2_combout\ & \number[7]~input_o\)))) ) ) ) # ( !\number[9]~input_o\ & ( !\bcd~1_combout\ & ( (!\number[8]~input_o\ & (((\bcd~0_combout\)))) # (\number[8]~input_o\ & (\bcd~2_combout\ & (!\number[7]~input_o\ $ 
-- (!\bcd~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110111010011111110000010011001101010111110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[8]~input_o\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[7]~input_o\,
	datad => \ALT_INV_bcd~0_combout\,
	datae => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_bcd~1_combout\,
	combout => \bcd~14_combout\);

-- Location: LABCELL_X63_Y2_N30
\bcd~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~19_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & (!\number[13]~input_o\ & \number[12]~input_o\)) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( (\number[15]~input_o\ & (\number[13]~input_o\ & 
-- \number[12]~input_o\)) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[13]~input_o\ & ((!\number[15]~input_o\ $ (!\number[12]~input_o\)))) # (\number[13]~input_o\ & (!\number[10]~input_o\ & (!\number[15]~input_o\ & 
-- !\number[12]~input_o\))) ) ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ & ( (\number[10]~input_o\ & (\number[15]~input_o\ & (\number[13]~input_o\ & \number[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001110001100000000000000000000110000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~19_combout\);

-- Location: LABCELL_X65_Y2_N42
\bcd~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~22_combout\ = ( \bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~15_combout\ & (\bcd~17_combout\ & (!\bcd~18_combout\ $ (!\bcd~16_combout\)))) # (\bcd~15_combout\ & (!\bcd~18_combout\ & (!\bcd~17_combout\ & !\bcd~16_combout\))) ) ) ) # ( 
-- !\bcd~14_combout\ & ( \bcd~19_combout\ & ( (\bcd~16_combout\ & ((!\bcd~15_combout\ & ((\bcd~17_combout\))) # (\bcd~15_combout\ & ((!\bcd~18_combout\) # (!\bcd~17_combout\))))) ) ) ) # ( \bcd~14_combout\ & ( !\bcd~19_combout\ & ( (!\bcd~15_combout\ & 
-- (\bcd~17_combout\ & (!\bcd~18_combout\ $ (!\bcd~16_combout\)))) # (\bcd~15_combout\ & (\bcd~18_combout\ & (!\bcd~17_combout\ & \bcd~16_combout\))) ) ) ) # ( !\bcd~14_combout\ & ( !\bcd~19_combout\ & ( (!\bcd~18_combout\ & (!\bcd~16_combout\ & 
-- (!\bcd~15_combout\ $ (\bcd~17_combout\)))) # (\bcd~18_combout\ & (!\bcd~15_combout\ & (\bcd~17_combout\ & \bcd~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000010000000100001100000000000010111100100001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~18_combout\,
	datac => \ALT_INV_bcd~17_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~14_combout\,
	dataf => \ALT_INV_bcd~19_combout\,
	combout => \bcd~22_combout\);

-- Location: LABCELL_X64_Y2_N15
\bcd~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~13_combout\ = ( \bcd~4_combout\ & ( !\bcd~5_combout\ $ (((\number[6]~input_o\) # (\bcd~3_combout\))) ) ) # ( !\bcd~4_combout\ & ( !\bcd~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~4_combout\,
	combout => \bcd~13_combout\);

-- Location: LABCELL_X65_Y2_N6
\bcd~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~21_combout\ = ( \bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~15_combout\ & ((!\bcd~18_combout\) # ((!\bcd~17_combout\ & \bcd~16_combout\)))) # (\bcd~15_combout\ & (\bcd~18_combout\ & (!\bcd~17_combout\ $ (\bcd~16_combout\)))) ) ) ) # ( 
-- !\bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~17_combout\ & (!\bcd~15_combout\ $ (((!\bcd~16_combout\))))) # (\bcd~17_combout\ & ((!\bcd~15_combout\ & (\bcd~18_combout\ & !\bcd~16_combout\)) # (\bcd~15_combout\ & (!\bcd~18_combout\ & 
-- \bcd~16_combout\)))) ) ) ) # ( \bcd~14_combout\ & ( !\bcd~19_combout\ & ( (!\bcd~15_combout\ & ((!\bcd~18_combout\ & (\bcd~17_combout\ & !\bcd~16_combout\)) # (\bcd~18_combout\ & (!\bcd~17_combout\ & \bcd~16_combout\)))) # (\bcd~15_combout\ & 
-- (!\bcd~17_combout\ $ (((\bcd~18_combout\ & \bcd~16_combout\))))) ) ) ) # ( !\bcd~14_combout\ & ( !\bcd~19_combout\ & ( (!\bcd~15_combout\ & (\bcd~17_combout\ & ((!\bcd~18_combout\) # (!\bcd~16_combout\)))) # (\bcd~15_combout\ & (!\bcd~17_combout\ & 
-- ((\bcd~16_combout\) # (\bcd~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001011000010110000110000101010010101001001001100010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~18_combout\,
	datac => \ALT_INV_bcd~17_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~14_combout\,
	dataf => \ALT_INV_bcd~19_combout\,
	combout => \bcd~21_combout\);

-- Location: LABCELL_X64_Y2_N12
\bcd~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~12_combout\ = ( \bcd~4_combout\ & ( (!\bcd~3_combout\ & (!\bcd~5_combout\ & ((!\number[6]~input_o\)))) # (\bcd~3_combout\ & (((\number[5]~input_o\ & \number[6]~input_o\)))) ) ) # ( !\bcd~4_combout\ & ( (!\bcd~3_combout\ & (\bcd~5_combout\)) # 
-- (\bcd~3_combout\ & ((!\bcd~5_combout\ & ((\number[6]~input_o\) # (\number[5]~input_o\))) # (\bcd~5_combout\ & ((!\number[5]~input_o\) # (!\number[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101110110001101110111011010001000000001011000100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_number[5]~input_o\,
	datad => \ALT_INV_number[6]~input_o\,
	dataf => \ALT_INV_bcd~4_combout\,
	combout => \bcd~12_combout\);

-- Location: LABCELL_X65_Y2_N30
\bcd~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~20_combout\ = ( \bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~17_combout\ & ((!\bcd~16_combout\ & ((\bcd~18_combout\))) # (\bcd~16_combout\ & (!\bcd~15_combout\)))) # (\bcd~17_combout\ & (\bcd~15_combout\ & ((!\bcd~16_combout\)))) ) ) ) # ( 
-- !\bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~17_combout\ & (((!\bcd~18_combout\ & !\bcd~16_combout\)))) # (\bcd~17_combout\ & ((!\bcd~15_combout\ & ((!\bcd~18_combout\) # (!\bcd~16_combout\))) # (\bcd~15_combout\ & ((\bcd~16_combout\))))) ) ) ) # ( 
-- \bcd~14_combout\ & ( !\bcd~19_combout\ & ( (!\bcd~18_combout\ & (!\bcd~16_combout\ $ (((!\bcd~17_combout\) # (\bcd~15_combout\))))) # (\bcd~18_combout\ & (!\bcd~16_combout\ & ((!\bcd~17_combout\) # (\bcd~15_combout\)))) ) ) ) # ( !\bcd~14_combout\ & ( 
-- !\bcd~19_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~15_combout\ & (\bcd~17_combout\ & \bcd~16_combout\)) # (\bcd~15_combout\ & (!\bcd~17_combout\ & !\bcd~16_combout\)))) # (\bcd~18_combout\ & (!\bcd~16_combout\ $ (((!\bcd~17_combout\) # 
-- (\bcd~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000111001001110011100010011001010000011010011010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~18_combout\,
	datac => \ALT_INV_bcd~17_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~14_combout\,
	dataf => \ALT_INV_bcd~19_combout\,
	combout => \bcd~20_combout\);

-- Location: LABCELL_X65_Y2_N54
\bcd~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~24_combout\ = ( \bcd~12_combout\ & ( \bcd~20_combout\ & ( (\bcd~13_combout\ & ((!\bcd~11_combout\ & (\bcd~22_combout\ & !\bcd~21_combout\)) # (\bcd~11_combout\ & ((\bcd~21_combout\))))) ) ) ) # ( !\bcd~12_combout\ & ( \bcd~20_combout\ & ( 
-- (!\bcd~11_combout\ & ((!\bcd~21_combout\ & (!\bcd~22_combout\)) # (\bcd~21_combout\ & ((!\bcd~13_combout\))))) # (\bcd~11_combout\ & (!\bcd~21_combout\ & ((!\bcd~13_combout\) # (\bcd~22_combout\)))) ) ) ) # ( \bcd~12_combout\ & ( !\bcd~20_combout\ & ( 
-- (!\bcd~13_combout\ & ((!\bcd~11_combout\ $ (!\bcd~22_combout\)) # (\bcd~21_combout\))) # (\bcd~13_combout\ & (!\bcd~22_combout\ & ((!\bcd~11_combout\) # (!\bcd~21_combout\)))) ) ) ) # ( !\bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~11_combout\ & 
-- (\bcd~22_combout\ & (\bcd~13_combout\))) # (\bcd~11_combout\ & ((!\bcd~21_combout\ & (\bcd~22_combout\)) # (\bcd~21_combout\ & ((\bcd~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000111011011001111100011011001101000000000001000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~11_combout\,
	datab => \ALT_INV_bcd~22_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~21_combout\,
	datae => \ALT_INV_bcd~12_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~24_combout\);

-- Location: LABCELL_X65_Y2_N48
\bcd~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~23_combout\ = ( \bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~11_combout\ & (\bcd~13_combout\ & ((\bcd~21_combout\) # (\bcd~22_combout\)))) # (\bcd~11_combout\ & (!\bcd~13_combout\ $ (((!\bcd~22_combout\ & !\bcd~21_combout\))))) ) ) ) # ( 
-- !\bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~13_combout\ & (!\bcd~11_combout\ $ (((!\bcd~22_combout\ & !\bcd~21_combout\))))) # (\bcd~13_combout\ & (!\bcd~11_combout\ & ((!\bcd~21_combout\)))) ) ) ) # ( \bcd~12_combout\ & ( !\bcd~20_combout\ & ( 
-- (!\bcd~13_combout\ & (!\bcd~11_combout\ $ (((\bcd~21_combout\))))) # (\bcd~13_combout\ & (!\bcd~22_combout\ & (!\bcd~11_combout\ $ (!\bcd~21_combout\)))) ) ) ) # ( !\bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~13_combout\ & ((!\bcd~11_combout\ & 
-- (\bcd~22_combout\ & !\bcd~21_combout\)) # (\bcd~11_combout\ & ((\bcd~21_combout\))))) # (\bcd~13_combout\ & (!\bcd~11_combout\ $ (((!\bcd~21_combout\) # (\bcd~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010101011001101001000101100001101010101000000001011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~11_combout\,
	datab => \ALT_INV_bcd~22_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~21_combout\,
	datae => \ALT_INV_bcd~12_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~23_combout\);

-- Location: LABCELL_X65_Y2_N0
\bcd~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~25_combout\ = ( \bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~11_combout\ & (!\bcd~21_combout\ & (!\bcd~22_combout\ $ (\bcd~13_combout\)))) ) ) ) # ( !\bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~11_combout\ & (\bcd~13_combout\ & 
-- ((\bcd~21_combout\) # (\bcd~22_combout\)))) # (\bcd~11_combout\ & ((!\bcd~13_combout\ $ (!\bcd~21_combout\)))) ) ) ) # ( \bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~21_combout\ & (\bcd~22_combout\ & (!\bcd~11_combout\ $ (!\bcd~13_combout\)))) # 
-- (\bcd~21_combout\ & (\bcd~13_combout\ & (!\bcd~11_combout\ $ (!\bcd~22_combout\)))) ) ) ) # ( !\bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~11_combout\ & (!\bcd~22_combout\ & (!\bcd~13_combout\ & !\bcd~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000100100000011000000111010110101000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~11_combout\,
	datab => \ALT_INV_bcd~22_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~21_combout\,
	datae => \ALT_INV_bcd~12_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~25_combout\);

-- Location: LABCELL_X65_Y4_N36
\digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[3]~3_combout\ = ( \bcd~25_combout\ & ( (!\bcd~9_combout\ & (\bcd~23_combout\ & ((!\bcd~10_combout\) # (!\bcd~24_combout\)))) # (\bcd~9_combout\ & (!\bcd~24_combout\ & (!\bcd~10_combout\ $ (\bcd~23_combout\)))) ) ) # ( !\bcd~25_combout\ & ( 
-- (!\bcd~9_combout\ & (\bcd~23_combout\ & (!\bcd~10_combout\ $ (!\bcd~24_combout\)))) # (\bcd~9_combout\ & (\bcd~10_combout\ & (\bcd~24_combout\ & !\bcd~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100101000000000010010100001000000101110000100000010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~9_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~24_combout\,
	datad => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \digit2[3]~3_combout\);

-- Location: LABCELL_X65_Y4_N30
\digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[1]~1_combout\ = ( \bcd~25_combout\ & ( (!\bcd~9_combout\ & ((!\bcd~24_combout\) # ((\bcd~10_combout\ & !\bcd~23_combout\)))) # (\bcd~9_combout\ & (\bcd~24_combout\ & (!\bcd~10_combout\ $ (\bcd~23_combout\)))) ) ) # ( !\bcd~25_combout\ & ( 
-- (!\bcd~9_combout\ & ((!\bcd~10_combout\ & (!\bcd~24_combout\ & \bcd~23_combout\)) # (\bcd~10_combout\ & (\bcd~24_combout\ & !\bcd~23_combout\)))) # (\bcd~9_combout\ & (!\bcd~23_combout\ $ (((\bcd~10_combout\ & \bcd~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010000001010101101000000110100110101000011010011010100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~9_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~24_combout\,
	datad => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \digit2[1]~1_combout\);

-- Location: LABCELL_X64_Y1_N18
\digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[0]~0_combout\ = ( \number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (((!\bcd~7_combout\)))) # (\bcd~6_combout\ & ((!\number[2]~input_o\ & ((\bcd~7_combout\))) # (\number[2]~input_o\ & (!\bcd~8_combout\ & !\bcd~7_combout\)))) ) ) 
-- ) # ( !\number[1]~input_o\ & ( \number[3]~input_o\ & ( (!\bcd~6_combout\ & (!\bcd~7_combout\ & ((\bcd~8_combout\) # (\number[2]~input_o\)))) # (\bcd~6_combout\ & (!\number[2]~input_o\ & ((\bcd~7_combout\)))) ) ) ) # ( \number[1]~input_o\ & ( 
-- !\number[3]~input_o\ & ( (!\bcd~6_combout\ & ((!\bcd~8_combout\ & ((\bcd~7_combout\))) # (\bcd~8_combout\ & (\number[2]~input_o\)))) # (\bcd~6_combout\ & ((!\number[2]~input_o\) # ((\bcd~7_combout\)))) ) ) ) # ( !\number[1]~input_o\ & ( 
-- !\number[3]~input_o\ & ( (!\bcd~6_combout\ & (((!\bcd~8_combout\ & \bcd~7_combout\)))) # (\bcd~6_combout\ & ((!\number[2]~input_o\ & ((!\bcd~7_combout\))) # (\number[2]~input_o\ & ((\bcd~7_combout\) # (\bcd~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010110110001010001101111011100101010010001001011101001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~6_combout\,
	datab => \ALT_INV_number[2]~input_o\,
	datac => \ALT_INV_bcd~8_combout\,
	datad => \ALT_INV_bcd~7_combout\,
	datae => \ALT_INV_number[1]~input_o\,
	dataf => \ALT_INV_number[3]~input_o\,
	combout => \digit2[0]~0_combout\);

-- Location: LABCELL_X65_Y4_N33
\digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[2]~2_combout\ = ( \bcd~25_combout\ & ( (!\bcd~9_combout\ & ((!\bcd~10_combout\ & (!\bcd~24_combout\)) # (\bcd~10_combout\ & (\bcd~24_combout\ & \bcd~23_combout\)))) # (\bcd~9_combout\ & (\bcd~10_combout\)) ) ) # ( !\bcd~25_combout\ & ( 
-- (!\bcd~10_combout\ & (!\bcd~24_combout\ & ((!\bcd~23_combout\) # (\bcd~9_combout\)))) # (\bcd~10_combout\ & (\bcd~24_combout\ & ((!\bcd~9_combout\) # (\bcd~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001001000011110000100100001110010001100100111001000110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~9_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~24_combout\,
	datad => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \digit2[2]~2_combout\);

-- Location: LABCELL_X65_Y4_N12
\second_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux6~0_combout\ = ( \digit2[2]~2_combout\ & ( (!\digit2[3]~3_combout\ & (!\digit2[1]~1_combout\ & !\digit2[0]~0_combout\)) ) ) # ( !\digit2[2]~2_combout\ & ( (!\digit2[3]~3_combout\ & (!\digit2[1]~1_combout\ & \digit2[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[3]~3_combout\,
	datab => \ALT_INV_digit2[1]~1_combout\,
	datac => \ALT_INV_digit2[0]~0_combout\,
	dataf => \ALT_INV_digit2[2]~2_combout\,
	combout => \second_segment7|Mux6~0_combout\);

-- Location: LABCELL_X65_Y4_N18
\second_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux5~0_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & ((!\bcd~10_combout\ & (!\bcd~9_combout\ & !\bcd~24_combout\)) # (\bcd~10_combout\ & (\bcd~9_combout\ & \bcd~24_combout\)))) # (\digit2[0]~0_combout\ & 
-- (\bcd~10_combout\ & (!\bcd~9_combout\ $ (!\bcd~24_combout\)))) ) ) ) # ( !\bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & (!\bcd~10_combout\ & (!\bcd~9_combout\ & !\bcd~24_combout\))) # (\digit2[0]~0_combout\ & (\bcd~10_combout\ & 
-- (\bcd~9_combout\))) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~10_combout\ & (\digit2[0]~0_combout\ & (\bcd~9_combout\ & !\bcd~24_combout\))) # (\bcd~10_combout\ & (\bcd~24_combout\ & (!\digit2[0]~0_combout\ $ (!\bcd~9_combout\)))) ) ) ) 
-- # ( !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~10_combout\ & (!\bcd~24_combout\ & (!\digit2[0]~0_combout\ $ (!\bcd~9_combout\)))) # (\bcd~10_combout\ & (!\digit2[0]~0_combout\ & (!\bcd~9_combout\ & \bcd~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000100000000001000001001010000001000000011000000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[0]~0_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~24_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \second_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y4_N54
\second_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux4~0_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & (\bcd~10_combout\ & (!\bcd~9_combout\ & !\bcd~24_combout\))) ) ) ) # ( !\bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & 
-- ((!\bcd~10_combout\ & (\bcd~9_combout\ & \bcd~24_combout\)) # (\bcd~10_combout\ & (!\bcd~9_combout\)))) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & (!\bcd~10_combout\ & (!\bcd~9_combout\ & !\bcd~24_combout\))) ) ) ) # ( 
-- !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\digit2[0]~0_combout\ & (\bcd~9_combout\ & (!\bcd~10_combout\ $ (!\bcd~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000100000000000000000100000001010000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[0]~0_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~24_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \second_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y4_N3
\second_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux3~0_combout\ = ( \digit2[2]~2_combout\ & ( (!\digit2[3]~3_combout\ & (!\digit2[0]~0_combout\ $ (\digit2[1]~1_combout\))) ) ) # ( !\digit2[2]~2_combout\ & ( (\digit2[0]~0_combout\ & (!\digit2[1]~1_combout\ & !\digit2[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[0]~0_combout\,
	datac => \ALT_INV_digit2[1]~1_combout\,
	datad => \ALT_INV_digit2[3]~3_combout\,
	dataf => \ALT_INV_digit2[2]~2_combout\,
	combout => \second_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y4_N6
\second_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux2~0_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( ((\bcd~10_combout\ & (!\bcd~9_combout\ $ (!\bcd~24_combout\)))) # (\digit2[0]~0_combout\) ) ) ) # ( !\bcd~23_combout\ & ( \bcd~25_combout\ & ( ((\bcd~10_combout\ & 
-- \bcd~9_combout\)) # (\digit2[0]~0_combout\) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ & ( ((!\bcd~10_combout\ & (\bcd~9_combout\ & !\bcd~24_combout\)) # (\bcd~10_combout\ & (!\bcd~9_combout\ & \bcd~24_combout\))) # (\digit2[0]~0_combout\) ) ) ) # ( 
-- !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( ((!\bcd~10_combout\ & (!\bcd~9_combout\ & !\bcd~24_combout\))) # (\digit2[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101010111010111010101010111010101110101011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[0]~0_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~24_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \second_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y4_N15
\second_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux1~0_combout\ = ( \digit2[2]~2_combout\ & ( (!\digit2[3]~3_combout\ & (\digit2[1]~1_combout\ & \digit2[0]~0_combout\)) ) ) # ( !\digit2[2]~2_combout\ & ( (!\digit2[3]~3_combout\ & ((\digit2[0]~0_combout\) # (\digit2[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[3]~3_combout\,
	datab => \ALT_INV_digit2[1]~1_combout\,
	datad => \ALT_INV_digit2[0]~0_combout\,
	dataf => \ALT_INV_digit2[2]~2_combout\,
	combout => \second_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y4_N42
\second_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux0~0_combout\ = ( \digit2[0]~0_combout\ & ( \digit2[1]~1_combout\ & ( (!\digit2[2]~2_combout\) # (\digit2[3]~3_combout\) ) ) ) # ( !\digit2[0]~0_combout\ & ( \digit2[1]~1_combout\ ) ) # ( \digit2[0]~0_combout\ & ( !\digit2[1]~1_combout\ 
-- & ( (\digit2[3]~3_combout\) # (\digit2[2]~2_combout\) ) ) ) # ( !\digit2[0]~0_combout\ & ( !\digit2[1]~1_combout\ & ( (\digit2[3]~3_combout\) # (\digit2[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[2]~2_combout\,
	datac => \ALT_INV_digit2[3]~3_combout\,
	datae => \ALT_INV_digit2[0]~0_combout\,
	dataf => \ALT_INV_digit2[1]~1_combout\,
	combout => \second_segment7|Mux0~0_combout\);

-- Location: LABCELL_X65_Y2_N12
\bcd~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~28_combout\ = ( \bcd~20_combout\ & ( (!\bcd~13_combout\ & ((!\bcd~21_combout\ & ((!\bcd~12_combout\) # (!\bcd~22_combout\))) # (\bcd~21_combout\ & (\bcd~12_combout\)))) # (\bcd~13_combout\ & (!\bcd~21_combout\ & ((\bcd~22_combout\) # 
-- (\bcd~12_combout\)))) ) ) # ( !\bcd~20_combout\ & ( (!\bcd~21_combout\ & ((\bcd~22_combout\))) # (\bcd~21_combout\ & (\bcd~13_combout\ & !\bcd~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111001100000100011100110010001110110001101000111011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~13_combout\,
	datab => \ALT_INV_bcd~21_combout\,
	datac => \ALT_INV_bcd~12_combout\,
	datad => \ALT_INV_bcd~22_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~28_combout\);

-- Location: LABCELL_X63_Y2_N12
\bcd~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~30_combout\ = ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( !\number[15]~input_o\ $ (\number[13]~input_o\) ) ) ) # ( \number[14]~input_o\ & ( !\number[11]~input_o\ & ( (\number[15]~input_o\ & (!\number[13]~input_o\ & !\number[12]~input_o\)) ) 
-- ) ) # ( !\number[14]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[15]~input_o\ & ((!\number[13]~input_o\) # (!\number[12]~input_o\))) # (\number[15]~input_o\ & (\number[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000011001100000000000011000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~30_combout\);

-- Location: LABCELL_X65_Y2_N18
\bcd~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~31_combout\ = ( \bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~15_combout\ & (!\bcd~17_combout\ $ (((\bcd~16_combout\) # (\bcd~18_combout\))))) # (\bcd~15_combout\ & ((!\bcd~18_combout\ & (!\bcd~17_combout\)) # (\bcd~18_combout\ & 
-- ((\bcd~16_combout\))))) ) ) ) # ( !\bcd~14_combout\ & ( \bcd~19_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~17_combout\ $ (\bcd~16_combout\)))) # (\bcd~18_combout\ & (\bcd~17_combout\ & (!\bcd~15_combout\ $ (\bcd~16_combout\)))) ) ) ) # ( \bcd~14_combout\ & 
-- ( !\bcd~19_combout\ & ( (!\bcd~18_combout\ & (!\bcd~16_combout\ $ (((!\bcd~15_combout\ & \bcd~17_combout\))))) # (\bcd~18_combout\ & (((!\bcd~15_combout\ & \bcd~17_combout\)) # (\bcd~16_combout\))) ) ) ) # ( !\bcd~14_combout\ & ( !\bcd~19_combout\ & ( 
-- (!\bcd~18_combout\ & ((!\bcd~15_combout\ & (\bcd~17_combout\ & \bcd~16_combout\)) # (\bcd~15_combout\ & (!\bcd~17_combout\ & !\bcd~16_combout\)))) # (\bcd~18_combout\ & (!\bcd~16_combout\ $ (((!\bcd~17_combout\) # (\bcd~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000111001110001100011101111000010000011011100001001011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~18_combout\,
	datac => \ALT_INV_bcd~17_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~14_combout\,
	dataf => \ALT_INV_bcd~19_combout\,
	combout => \bcd~31_combout\);

-- Location: LABCELL_X63_Y2_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \number[14]~input_o\ & ( \number[13]~input_o\ & ( \number[15]~input_o\ ) ) ) # ( !\number[14]~input_o\ & ( \number[13]~input_o\ & ( \number[15]~input_o\ ) ) ) # ( \number[14]~input_o\ & ( !\number[13]~input_o\ & ( 
-- \number[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number[15]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[13]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X65_Y2_N24
\bcd~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~32_combout\ = ( \bcd~18_combout\ & ( (!\bcd~16_combout\ & (((\bcd~17_combout\ & \bcd~15_combout\)))) # (\bcd~16_combout\ & (!\bcd~19_combout\ & (!\bcd~17_combout\))) ) ) # ( !\bcd~18_combout\ & ( (!\bcd~19_combout\ & (\bcd~17_combout\ & 
-- ((!\bcd~16_combout\) # (\bcd~15_combout\)))) # (\bcd~19_combout\ & (((!\bcd~17_combout\) # (!\bcd~15_combout\)) # (\bcd~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011011010111010101101100100000001011000010000000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~19_combout\,
	datab => \ALT_INV_bcd~16_combout\,
	datac => \ALT_INV_bcd~17_combout\,
	datad => \ALT_INV_bcd~15_combout\,
	dataf => \ALT_INV_bcd~18_combout\,
	combout => \bcd~32_combout\);

-- Location: LABCELL_X63_Y2_N18
\bcd~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~33_combout\ = ( \number[14]~input_o\ & ( \number[11]~input_o\ & ( (!\number[15]~input_o\ & \number[13]~input_o\) ) ) ) # ( !\number[14]~input_o\ & ( \number[11]~input_o\ & ( \number[15]~input_o\ ) ) ) # ( \number[14]~input_o\ & ( 
-- !\number[11]~input_o\ & ( (!\number[15]~input_o\ & (\number[13]~input_o\ & ((\number[12]~input_o\) # (\number[10]~input_o\)))) # (\number[15]~input_o\ & (((!\number[13]~input_o\ & !\number[12]~input_o\)))) ) ) ) # ( !\number[14]~input_o\ & ( 
-- !\number[11]~input_o\ & ( \number[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101000000110000110011001100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[15]~input_o\,
	datac => \ALT_INV_number[13]~input_o\,
	datad => \ALT_INV_number[12]~input_o\,
	datae => \ALT_INV_number[14]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~33_combout\);

-- Location: LABCELL_X65_Y2_N27
\bcd~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~34_combout\ = ( \bcd~19_combout\ & ( (\bcd~18_combout\ & ((!\bcd~16_combout\) # (\bcd~17_combout\))) ) ) # ( !\bcd~19_combout\ & ( (!\bcd~18_combout\) # ((\bcd~16_combout\ & !\bcd~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000111100111111000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd~16_combout\,
	datac => \ALT_INV_bcd~18_combout\,
	datad => \ALT_INV_bcd~17_combout\,
	dataf => \ALT_INV_bcd~19_combout\,
	combout => \bcd~34_combout\);

-- Location: LABCELL_X64_Y6_N12
\bcd~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~37_combout\ = ( \bcd~33_combout\ & ( \bcd~34_combout\ & ( (\bcd~31_combout\ & (!\bcd~32_combout\ & ((!\LessThan0~0_combout\) # (\bcd~30_combout\)))) ) ) ) # ( !\bcd~33_combout\ & ( \bcd~34_combout\ & ( (!\bcd~30_combout\ & (\bcd~31_combout\ & 
-- (\LessThan0~0_combout\ & \bcd~32_combout\))) ) ) ) # ( \bcd~33_combout\ & ( !\bcd~34_combout\ & ( (!\bcd~31_combout\ & (\bcd~32_combout\ & ((!\LessThan0~0_combout\) # (\bcd~30_combout\)))) # (\bcd~31_combout\ & (!\bcd~30_combout\ & (\LessThan0~0_combout\ 
-- & !\bcd~32_combout\))) ) ) ) # ( !\bcd~33_combout\ & ( !\bcd~34_combout\ & ( (!\bcd~31_combout\ & (!\bcd~32_combout\ & ((!\LessThan0~0_combout\) # (\bcd~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000000000101100010000000000000000100011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~30_combout\,
	datab => \ALT_INV_bcd~31_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~32_combout\,
	datae => \ALT_INV_bcd~33_combout\,
	dataf => \ALT_INV_bcd~34_combout\,
	combout => \bcd~37_combout\);

-- Location: LABCELL_X64_Y6_N30
\bcd~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~35_combout\ = ( \bcd~33_combout\ & ( \bcd~34_combout\ & ( !\bcd~31_combout\ $ ((((!\bcd~30_combout\ & \LessThan0~0_combout\)) # (\bcd~32_combout\))) ) ) ) # ( !\bcd~33_combout\ & ( \bcd~34_combout\ & ( !\bcd~31_combout\ $ (((!\LessThan0~0_combout\) # 
-- (\bcd~30_combout\))) ) ) ) # ( \bcd~33_combout\ & ( !\bcd~34_combout\ & ( (!\bcd~31_combout\ & (!\bcd~30_combout\ & (\LessThan0~0_combout\ & !\bcd~32_combout\))) # (\bcd~31_combout\ & (!\bcd~32_combout\ $ (((!\bcd~30_combout\ & \LessThan0~0_combout\))))) 
-- ) ) ) # ( !\bcd~33_combout\ & ( !\bcd~34_combout\ & ( (!\bcd~31_combout\ & (\bcd~32_combout\ & ((!\LessThan0~0_combout\) # (\bcd~30_combout\)))) # (\bcd~31_combout\ & (!\bcd~30_combout\ & (\LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011000110001110010000001000111001001110011100011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~30_combout\,
	datab => \ALT_INV_bcd~31_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~32_combout\,
	datae => \ALT_INV_bcd~33_combout\,
	dataf => \ALT_INV_bcd~34_combout\,
	combout => \bcd~35_combout\);

-- Location: LABCELL_X64_Y6_N36
\bcd~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~36_combout\ = ( \bcd~33_combout\ & ( \bcd~34_combout\ & ( (!\bcd~32_combout\ & (!\bcd~31_combout\ & ((!\LessThan0~0_combout\) # (\bcd~30_combout\)))) # (\bcd~32_combout\ & (!\bcd~30_combout\ & ((\LessThan0~0_combout\)))) ) ) ) # ( !\bcd~33_combout\ & 
-- ( \bcd~34_combout\ & ( !\bcd~32_combout\ $ ((((!\bcd~31_combout\) # (!\LessThan0~0_combout\)) # (\bcd~30_combout\))) ) ) ) # ( \bcd~33_combout\ & ( !\bcd~34_combout\ & ( (!\bcd~32_combout\ & (((!\bcd~31_combout\) # (!\LessThan0~0_combout\)) # 
-- (\bcd~30_combout\))) ) ) ) # ( !\bcd~33_combout\ & ( !\bcd~34_combout\ & ( (\bcd~32_combout\ & (((!\bcd~30_combout\ & \LessThan0~0_combout\)) # (\bcd~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011111111010000000000000010111111011100010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~30_combout\,
	datab => \ALT_INV_bcd~31_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~32_combout\,
	datae => \ALT_INV_bcd~33_combout\,
	dataf => \ALT_INV_bcd~34_combout\,
	combout => \bcd~36_combout\);

-- Location: LABCELL_X65_Y2_N15
\bcd~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~29_combout\ = ( \bcd~20_combout\ & ( !\bcd~21_combout\ $ (\bcd~22_combout\) ) ) # ( !\bcd~20_combout\ & ( !\bcd~22_combout\ $ (((!\bcd~13_combout\ & \bcd~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010110100101101001011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~13_combout\,
	datab => \ALT_INV_bcd~21_combout\,
	datac => \ALT_INV_bcd~22_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~29_combout\);

-- Location: LABCELL_X64_Y6_N27
\bcd~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~39_combout\ = ( \bcd~36_combout\ & ( \bcd~29_combout\ & ( (!\bcd~28_combout\ $ (\bcd~37_combout\)) # (\bcd~35_combout\) ) ) ) # ( !\bcd~36_combout\ & ( \bcd~29_combout\ & ( (\bcd~28_combout\ & \bcd~37_combout\) ) ) ) # ( !\bcd~36_combout\ & ( 
-- !\bcd~29_combout\ & ( (!\bcd~28_combout\ & ((!\bcd~35_combout\) # (\bcd~37_combout\))) # (\bcd~28_combout\ & (!\bcd~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011011100110000000000000000000010001000100011001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~28_combout\,
	datab => \ALT_INV_bcd~37_combout\,
	datac => \ALT_INV_bcd~35_combout\,
	datae => \ALT_INV_bcd~36_combout\,
	dataf => \ALT_INV_bcd~29_combout\,
	combout => \bcd~39_combout\);

-- Location: LABCELL_X65_Y4_N51
\bcd~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~26_combout\ = ( \bcd~10_combout\ & ( \bcd~25_combout\ & ( (\bcd~23_combout\ & \bcd~24_combout\) ) ) ) # ( !\bcd~10_combout\ & ( \bcd~25_combout\ & ( \bcd~24_combout\ ) ) ) # ( \bcd~10_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~23_combout\) # 
-- (!\bcd~24_combout\) ) ) ) # ( !\bcd~10_combout\ & ( !\bcd~25_combout\ & ( !\bcd~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111001111110000001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd~23_combout\,
	datac => \ALT_INV_bcd~24_combout\,
	datae => \ALT_INV_bcd~10_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \bcd~26_combout\);

-- Location: LABCELL_X64_Y6_N18
\bcd~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~38_combout\ = ( \bcd~36_combout\ & ( \bcd~29_combout\ & ( !\bcd~35_combout\ $ (\bcd~28_combout\) ) ) ) # ( !\bcd~36_combout\ & ( \bcd~29_combout\ & ( (!\bcd~28_combout\ & ((\bcd~37_combout\))) # (\bcd~28_combout\ & (!\bcd~35_combout\ & 
-- !\bcd~37_combout\)) ) ) ) # ( \bcd~36_combout\ & ( !\bcd~29_combout\ & ( (!\bcd~35_combout\ & \bcd~28_combout\) ) ) ) # ( !\bcd~36_combout\ & ( !\bcd~29_combout\ & ( !\bcd~28_combout\ $ (((!\bcd~35_combout\ & !\bcd~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000000011000000110000001100111100001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd~35_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~37_combout\,
	datae => \ALT_INV_bcd~36_combout\,
	dataf => \ALT_INV_bcd~29_combout\,
	combout => \bcd~38_combout\);

-- Location: LABCELL_X65_Y2_N36
\bcd~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~27_combout\ = ( \bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~13_combout\ & (\bcd~11_combout\ & (!\bcd~22_combout\ & !\bcd~21_combout\))) # (\bcd~13_combout\ & (((!\bcd~11_combout\ & \bcd~22_combout\)) # (\bcd~21_combout\))) ) ) ) # ( 
-- !\bcd~12_combout\ & ( \bcd~20_combout\ & ( (!\bcd~13_combout\ & ((\bcd~21_combout\))) # (\bcd~13_combout\ & ((!\bcd~21_combout\) # (\bcd~11_combout\))) ) ) ) # ( \bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~13_combout\ & (((!\bcd~21_combout\)))) # 
-- (\bcd~13_combout\ & ((!\bcd~22_combout\ & ((\bcd~21_combout\))) # (\bcd~22_combout\ & (\bcd~11_combout\)))) ) ) ) # ( !\bcd~12_combout\ & ( !\bcd~20_combout\ & ( (!\bcd~13_combout\ & (!\bcd~21_combout\ & ((\bcd~22_combout\) # (\bcd~11_combout\)))) # 
-- (\bcd~13_combout\ & (((!\bcd~22_combout\ & \bcd~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000001100111100010000110100001111111101010100001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~11_combout\,
	datab => \ALT_INV_bcd~22_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~21_combout\,
	datae => \ALT_INV_bcd~12_combout\,
	dataf => \ALT_INV_bcd~20_combout\,
	combout => \bcd~27_combout\);

-- Location: LABCELL_X64_Y6_N0
\LessThan26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = ( \bcd~36_combout\ & ( \bcd~35_combout\ & ( (!\bcd~29_combout\ & ((!\bcd~28_combout\))) # (\bcd~29_combout\ & ((\bcd~28_combout\) # (\bcd~27_combout\))) ) ) ) # ( !\bcd~36_combout\ & ( \bcd~35_combout\ & ( (!\bcd~29_combout\ & 
-- ((!\bcd~28_combout\ & ((\bcd~37_combout\))) # (\bcd~28_combout\ & (\bcd~27_combout\ & !\bcd~37_combout\)))) # (\bcd~29_combout\ & (((!\bcd~28_combout\) # (\bcd~37_combout\)))) ) ) ) # ( \bcd~36_combout\ & ( !\bcd~35_combout\ & ( (\bcd~29_combout\ & 
-- ((!\bcd~37_combout\) # ((\bcd~27_combout\ & \bcd~28_combout\)))) ) ) ) # ( !\bcd~36_combout\ & ( !\bcd~35_combout\ & ( (!\bcd~27_combout\ & (!\bcd~29_combout\ & ((\bcd~37_combout\) # (\bcd~28_combout\)))) # (\bcd~27_combout\ & ((!\bcd~29_combout\) # 
-- ((\bcd~28_combout\ & \bcd~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001101001100110000000100110100111100111101001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~27_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~37_combout\,
	datae => \ALT_INV_bcd~36_combout\,
	dataf => \ALT_INV_bcd~35_combout\,
	combout => \LessThan26~0_combout\);

-- Location: LABCELL_X65_Y6_N33
\digit3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[1]~1_combout\ = ( \LessThan26~0_combout\ & ( (!\bcd~39_combout\ & (\bcd~26_combout\)) # (\bcd~39_combout\ & ((!\bcd~26_combout\ & (!\bcd~38_combout\ $ (!\bcd~27_combout\))) # (\bcd~26_combout\ & (!\bcd~38_combout\ & !\bcd~27_combout\)))) ) ) # ( 
-- !\LessThan26~0_combout\ & ( (!\bcd~39_combout\ & ((!\bcd~26_combout\ & (!\bcd~38_combout\)) # (\bcd~26_combout\ & (\bcd~38_combout\ & \bcd~27_combout\)))) # (\bcd~39_combout\ & (\bcd~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000110010011100100011001001100110110011000100011011001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~39_combout\,
	datab => \ALT_INV_bcd~26_combout\,
	datac => \ALT_INV_bcd~38_combout\,
	datad => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_LessThan26~0_combout\,
	combout => \digit3[1]~1_combout\);

-- Location: LABCELL_X65_Y6_N6
\digit3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[2]~2_combout\ = ( \LessThan26~0_combout\ & ( (!\bcd~39_combout\ & ((!\bcd~27_combout\ $ (\bcd~26_combout\)))) # (\bcd~39_combout\ & (!\bcd~27_combout\ & ((!\bcd~26_combout\) # (\bcd~38_combout\)))) ) ) # ( !\LessThan26~0_combout\ & ( 
-- (!\bcd~39_combout\ & (\bcd~27_combout\ & ((!\bcd~38_combout\) # (!\bcd~26_combout\)))) # (\bcd~39_combout\ & ((!\bcd~27_combout\ $ (!\bcd~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011000000011110101100011110000000110101111000000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~39_combout\,
	datab => \ALT_INV_bcd~38_combout\,
	datac => \ALT_INV_bcd~27_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_LessThan26~0_combout\,
	combout => \digit3[2]~2_combout\);

-- Location: LABCELL_X65_Y4_N39
\digit3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[0]~0_combout\ = ( \bcd~25_combout\ & ( !\bcd~24_combout\ $ (((\bcd~9_combout\ & (!\bcd~10_combout\ & \bcd~23_combout\)))) ) ) # ( !\bcd~25_combout\ & ( (!\bcd~10_combout\ & (\bcd~23_combout\ & ((!\bcd~24_combout\) # (\bcd~9_combout\)))) # 
-- (\bcd~10_combout\ & ((!\bcd~24_combout\ & (\bcd~9_combout\ & \bcd~23_combout\)) # (\bcd~24_combout\ & ((!\bcd~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111010100000000111101010011110000101101001111000010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~9_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~24_combout\,
	datad => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \digit3[0]~0_combout\);

-- Location: LABCELL_X65_Y6_N9
\digit3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[3]~3_combout\ = ( \LessThan26~0_combout\ & ( (!\bcd~39_combout\ & (!\bcd~38_combout\ $ (((!\bcd~27_combout\) # (\bcd~26_combout\))))) # (\bcd~39_combout\ & (\bcd~38_combout\ & (\bcd~27_combout\ & \bcd~26_combout\))) ) ) # ( !\LessThan26~0_combout\ 
-- & ( (!\bcd~38_combout\ & (\bcd~39_combout\ & ((!\bcd~26_combout\) # (\bcd~27_combout\)))) # (\bcd~38_combout\ & (((!\bcd~27_combout\ & \bcd~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110100010001000011010000101000001000110010100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~39_combout\,
	datab => \ALT_INV_bcd~38_combout\,
	datac => \ALT_INV_bcd~27_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_LessThan26~0_combout\,
	combout => \digit3[3]~3_combout\);

-- Location: LABCELL_X65_Y6_N42
\third_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux6~0_combout\ = ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & (!\digit3[2]~2_combout\ $ (!\digit3[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[1]~1_combout\,
	datab => \ALT_INV_digit3[2]~2_combout\,
	datac => \ALT_INV_digit3[0]~0_combout\,
	dataf => \ALT_INV_digit3[3]~3_combout\,
	combout => \third_segment7|Mux6~0_combout\);

-- Location: LABCELL_X65_Y6_N48
\third_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux5~0_combout\ = ( \bcd~26_combout\ & ( \bcd~27_combout\ & ( (!\bcd~39_combout\ & ((!\digit3[0]~0_combout\ & (\LessThan26~0_combout\)) # (\digit3[0]~0_combout\ & (!\LessThan26~0_combout\ & !\bcd~38_combout\)))) ) ) ) # ( !\bcd~26_combout\ 
-- & ( \bcd~27_combout\ & ( (!\LessThan26~0_combout\ & (!\digit3[0]~0_combout\ $ (((\bcd~38_combout\) # (\bcd~39_combout\))))) ) ) ) # ( \bcd~26_combout\ & ( !\bcd~27_combout\ & ( (\bcd~39_combout\ & ((!\digit3[0]~0_combout\ & (!\LessThan26~0_combout\)) # 
-- (\digit3[0]~0_combout\ & (\LessThan26~0_combout\ & \bcd~38_combout\)))) ) ) ) # ( !\bcd~26_combout\ & ( !\bcd~27_combout\ & ( (\LessThan26~0_combout\ & (!\digit3[0]~0_combout\ $ (((!\bcd~39_combout\) # (!\bcd~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010010000010000000100110000100010001000110000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_LessThan26~0_combout\,
	datac => \ALT_INV_bcd~39_combout\,
	datad => \ALT_INV_bcd~38_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~27_combout\,
	combout => \third_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y6_N54
\third_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux4~0_combout\ = ( \bcd~26_combout\ & ( \bcd~27_combout\ & ( (!\digit3[0]~0_combout\ & (!\LessThan26~0_combout\ & ((\bcd~38_combout\) # (\bcd~39_combout\)))) ) ) ) # ( !\bcd~26_combout\ & ( \bcd~27_combout\ & ( (!\digit3[0]~0_combout\ & 
-- (\LessThan26~0_combout\ & (\bcd~39_combout\ & !\bcd~38_combout\))) ) ) ) # ( \bcd~26_combout\ & ( !\bcd~27_combout\ & ( (!\digit3[0]~0_combout\ & (\LessThan26~0_combout\ & ((!\bcd~39_combout\) # (!\bcd~38_combout\)))) ) ) ) # ( !\bcd~26_combout\ & ( 
-- !\bcd~27_combout\ & ( (!\digit3[0]~0_combout\ & (!\LessThan26~0_combout\ & (!\bcd~39_combout\ & !\bcd~38_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000001000100010000000000010000000000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_LessThan26~0_combout\,
	datac => \ALT_INV_bcd~39_combout\,
	datad => \ALT_INV_bcd~38_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~27_combout\,
	combout => \third_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y6_N45
\third_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux3~0_combout\ = ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & (!\digit3[2]~2_combout\ $ (!\digit3[0]~0_combout\))) # (\digit3[1]~1_combout\ & (\digit3[2]~2_combout\ & \digit3[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[1]~1_combout\,
	datac => \ALT_INV_digit3[2]~2_combout\,
	datad => \ALT_INV_digit3[0]~0_combout\,
	dataf => \ALT_INV_digit3[3]~3_combout\,
	combout => \third_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y6_N0
\third_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux2~0_combout\ = ( \bcd~26_combout\ & ( \bcd~27_combout\ & ( ((!\LessThan26~0_combout\ & (!\bcd~39_combout\ & !\bcd~38_combout\))) # (\digit3[0]~0_combout\) ) ) ) # ( !\bcd~26_combout\ & ( \bcd~27_combout\ & ( ((!\LessThan26~0_combout\ & 
-- ((\bcd~38_combout\) # (\bcd~39_combout\)))) # (\digit3[0]~0_combout\) ) ) ) # ( \bcd~26_combout\ & ( !\bcd~27_combout\ & ( ((\LessThan26~0_combout\ & (\bcd~39_combout\ & \bcd~38_combout\))) # (\digit3[0]~0_combout\) ) ) ) # ( !\bcd~26_combout\ & ( 
-- !\bcd~27_combout\ & ( ((\LessThan26~0_combout\ & ((!\bcd~39_combout\) # (!\bcd~38_combout\)))) # (\digit3[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110101010101010101011101011101110111011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_LessThan26~0_combout\,
	datac => \ALT_INV_bcd~39_combout\,
	datad => \ALT_INV_bcd~38_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~27_combout\,
	combout => \third_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y6_N36
\third_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux1~0_combout\ = ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & (!\digit3[2]~2_combout\ & \digit3[0]~0_combout\)) # (\digit3[1]~1_combout\ & ((!\digit3[2]~2_combout\) # (\digit3[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[1]~1_combout\,
	datab => \ALT_INV_digit3[2]~2_combout\,
	datad => \ALT_INV_digit3[0]~0_combout\,
	dataf => \ALT_INV_digit3[3]~3_combout\,
	combout => \third_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y6_N39
\third_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux0~0_combout\ = ( \digit3[3]~3_combout\ ) # ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & (\digit3[2]~2_combout\)) # (\digit3[1]~1_combout\ & ((!\digit3[2]~2_combout\) # (!\digit3[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101100110011101110110011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[1]~1_combout\,
	datab => \ALT_INV_digit3[2]~2_combout\,
	datad => \ALT_INV_digit3[0]~0_combout\,
	dataf => \ALT_INV_digit3[3]~3_combout\,
	combout => \third_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y6_N45
\digit4[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[3]~3_combout\ = ( \bcd~35_combout\ & ( !\bcd~36_combout\ $ (\bcd~37_combout\) ) ) # ( !\bcd~35_combout\ & ( !\bcd~37_combout\ $ (((\bcd~36_combout\ & !\bcd~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010111110000101001011111000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~36_combout\,
	datac => \ALT_INV_bcd~37_combout\,
	datad => \ALT_INV_bcd~29_combout\,
	dataf => \ALT_INV_bcd~35_combout\,
	combout => \digit4[3]~3_combout\);

-- Location: LABCELL_X64_Y6_N42
\digit4[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[2]~2_combout\ = ( \bcd~37_combout\ & ( !\bcd~36_combout\ $ (((\bcd~35_combout\ & (\bcd~28_combout\ & !\bcd~29_combout\)))) ) ) # ( !\bcd~37_combout\ & ( (!\bcd~36_combout\ & (\bcd~35_combout\ & ((!\bcd~29_combout\) # (\bcd~28_combout\)))) # 
-- (\bcd~36_combout\ & ((!\bcd~35_combout\ & ((\bcd~29_combout\))) # (\bcd~35_combout\ & (\bcd~28_combout\ & !\bcd~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101000110001000110100011010101001101010101010100110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~36_combout\,
	datab => \ALT_INV_bcd~35_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~29_combout\,
	dataf => \ALT_INV_bcd~37_combout\,
	combout => \digit4[2]~2_combout\);

-- Location: LABCELL_X64_Y6_N6
\digit4[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[1]~1_combout\ = ( \bcd~36_combout\ & ( \bcd~35_combout\ & ( (!\bcd~29_combout\ & ((!\bcd~28_combout\))) # (\bcd~29_combout\ & ((\bcd~28_combout\) # (\bcd~27_combout\))) ) ) ) # ( !\bcd~36_combout\ & ( \bcd~35_combout\ & ( (!\bcd~29_combout\ & 
-- (\bcd~27_combout\ & (\bcd~28_combout\ & !\bcd~37_combout\))) # (\bcd~29_combout\ & ((!\bcd~28_combout\) # ((!\bcd~27_combout\ & \bcd~37_combout\)))) ) ) ) # ( \bcd~36_combout\ & ( !\bcd~35_combout\ & ( (\bcd~29_combout\ & ((!\bcd~37_combout\) # 
-- ((\bcd~27_combout\ & \bcd~28_combout\)))) ) ) ) # ( !\bcd~36_combout\ & ( !\bcd~35_combout\ & ( (!\bcd~27_combout\ & (!\bcd~29_combout\ & ((\bcd~37_combout\) # (\bcd~28_combout\)))) # (\bcd~27_combout\ & ((!\bcd~29_combout\) # ((\bcd~28_combout\ & 
-- \bcd~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001101001100110000000100110100001100101101001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~27_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~37_combout\,
	datae => \ALT_INV_bcd~36_combout\,
	dataf => \ALT_INV_bcd~35_combout\,
	combout => \digit4[1]~1_combout\);

-- Location: LABCELL_X65_Y6_N30
\digit4[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[0]~0_combout\ = ( \bcd~38_combout\ & ( !\bcd~39_combout\ $ (((!\bcd~26_combout\ & ((!\bcd~27_combout\) # (!\LessThan26~0_combout\))) # (\bcd~26_combout\ & ((\LessThan26~0_combout\) # (\bcd~27_combout\))))) ) ) # ( !\bcd~38_combout\ & ( 
-- !\bcd~39_combout\ $ (\LessThan26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101100101010110010110010101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~39_combout\,
	datab => \ALT_INV_bcd~26_combout\,
	datac => \ALT_INV_bcd~27_combout\,
	datad => \ALT_INV_LessThan26~0_combout\,
	dataf => \ALT_INV_bcd~38_combout\,
	combout => \digit4[0]~0_combout\);

-- Location: LABCELL_X65_Y4_N0
\MSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux6~0_combout\ = ( \digit4[0]~0_combout\ & ( (\digit4[3]~3_combout\ & (\digit4[2]~2_combout\ & !\digit4[1]~1_combout\)) ) ) # ( !\digit4[0]~0_combout\ & ( (\digit4[3]~3_combout\ & (!\digit4[2]~2_combout\ & !\digit4[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_digit4[3]~3_combout\,
	datac => \ALT_INV_digit4[2]~2_combout\,
	datad => \ALT_INV_digit4[1]~1_combout\,
	dataf => \ALT_INV_digit4[0]~0_combout\,
	combout => \MSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y6_N51
\bcd~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~41_combout\ = ( \bcd~29_combout\ & ( (!\bcd~35_combout\ & ((\bcd~37_combout\))) # (\bcd~35_combout\ & (!\bcd~36_combout\ & !\bcd~37_combout\)) ) ) # ( !\bcd~29_combout\ & ( \bcd~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100101100001011000010110000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~36_combout\,
	datab => \ALT_INV_bcd~35_combout\,
	datac => \ALT_INV_bcd~37_combout\,
	dataf => \ALT_INV_bcd~29_combout\,
	combout => \bcd~41_combout\);

-- Location: LABCELL_X64_Y6_N54
\bcd~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~42_combout\ = ( \bcd~35_combout\ & ( (\bcd~37_combout\ & !\bcd~36_combout\) ) ) # ( !\bcd~35_combout\ & ( (!\bcd~36_combout\ & (\bcd~37_combout\ & !\bcd~29_combout\)) # (\bcd~36_combout\ & ((\bcd~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd~37_combout\,
	datac => \ALT_INV_bcd~36_combout\,
	datad => \ALT_INV_bcd~29_combout\,
	dataf => \ALT_INV_bcd~35_combout\,
	combout => \bcd~42_combout\);

-- Location: LABCELL_X64_Y6_N48
\bcd~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~40_combout\ = ( \bcd~37_combout\ & ( \bcd~29_combout\ ) ) # ( !\bcd~37_combout\ & ( (!\bcd~36_combout\ & ((!\bcd~29_combout\))) # (\bcd~36_combout\ & (\bcd~35_combout\ & \bcd~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110100001101000011010000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~36_combout\,
	datab => \ALT_INV_bcd~35_combout\,
	datac => \ALT_INV_bcd~29_combout\,
	dataf => \ALT_INV_bcd~37_combout\,
	combout => \bcd~40_combout\);

-- Location: LABCELL_X65_Y6_N12
\MSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux5~0_combout\ = ( \bcd~26_combout\ & ( \bcd~40_combout\ & ( (!\bcd~27_combout\ & (\bcd~28_combout\ & (!\bcd~41_combout\ $ (!\bcd~42_combout\)))) # (\bcd~27_combout\ & (\bcd~41_combout\ & ((!\bcd~42_combout\)))) ) ) ) # ( !\bcd~26_combout\ 
-- & ( \bcd~40_combout\ & ( (!\bcd~41_combout\ & (\bcd~42_combout\ & (!\bcd~28_combout\ $ (!\bcd~27_combout\)))) # (\bcd~41_combout\ & (((!\bcd~42_combout\)))) ) ) ) # ( \bcd~26_combout\ & ( !\bcd~40_combout\ & ( (!\bcd~41_combout\ & (!\bcd~28_combout\ & 
-- \bcd~42_combout\)) ) ) ) # ( !\bcd~26_combout\ & ( !\bcd~40_combout\ & ( (!\bcd~28_combout\ & (\bcd~42_combout\ & (!\bcd~41_combout\ $ (\bcd~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000100001010010010110000001001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~41_combout\,
	datab => \ALT_INV_bcd~28_combout\,
	datac => \ALT_INV_bcd~42_combout\,
	datad => \ALT_INV_bcd~27_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~40_combout\,
	combout => \MSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y6_N18
\MSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux4~0_combout\ = ( \bcd~26_combout\ & ( \bcd~40_combout\ & ( (!\bcd~41_combout\ & (!\bcd~42_combout\ & ((\bcd~27_combout\) # (\bcd~28_combout\)))) # (\bcd~41_combout\ & (\bcd~28_combout\ & (\bcd~42_combout\ & \bcd~27_combout\))) ) ) ) # ( 
-- !\bcd~26_combout\ & ( \bcd~40_combout\ & ( (!\bcd~41_combout\ & (!\bcd~42_combout\ & (!\bcd~28_combout\ $ (!\bcd~27_combout\)))) # (\bcd~41_combout\ & (\bcd~28_combout\ & (\bcd~42_combout\ & \bcd~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000010010000010100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~41_combout\,
	datab => \ALT_INV_bcd~28_combout\,
	datac => \ALT_INV_bcd~42_combout\,
	datad => \ALT_INV_bcd~27_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~40_combout\,
	combout => \MSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y4_N24
\MSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux3~0_combout\ = ( \digit4[0]~0_combout\ & ( (\digit4[2]~2_combout\ & (\digit4[3]~3_combout\ & !\digit4[1]~1_combout\)) ) ) # ( !\digit4[0]~0_combout\ & ( (\digit4[3]~3_combout\ & (!\digit4[2]~2_combout\ $ (\digit4[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[2]~2_combout\,
	datab => \ALT_INV_digit4[3]~3_combout\,
	datac => \ALT_INV_digit4[1]~1_combout\,
	dataf => \ALT_INV_digit4[0]~0_combout\,
	combout => \MSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y6_N24
\MSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux2~0_combout\ = ( \bcd~26_combout\ & ( \bcd~40_combout\ & ( (!\bcd~41_combout\ & ((!\bcd~27_combout\ & (!\bcd~28_combout\)) # (\bcd~27_combout\ & ((\bcd~42_combout\))))) # (\bcd~41_combout\ & ((!\bcd~28_combout\ & ((!\bcd~42_combout\) # 
-- (\bcd~27_combout\))) # (\bcd~28_combout\ & ((!\bcd~27_combout\))))) ) ) ) # ( !\bcd~26_combout\ & ( \bcd~40_combout\ & ( (!\bcd~41_combout\ & (!\bcd~28_combout\ $ (\bcd~27_combout\))) # (\bcd~41_combout\ & ((!\bcd~28_combout\) # (!\bcd~27_combout\))) ) ) 
-- ) # ( \bcd~26_combout\ & ( !\bcd~40_combout\ & ( (!\bcd~41_combout\ & (\bcd~28_combout\ & ((\bcd~27_combout\) # (\bcd~42_combout\)))) # (\bcd~41_combout\ & ((!\bcd~28_combout\) # ((!\bcd~42_combout\)))) ) ) ) # ( !\bcd~26_combout\ & ( !\bcd~40_combout\ & 
-- ( (!\bcd~41_combout\ & (((\bcd~42_combout\ & \bcd~27_combout\)) # (\bcd~28_combout\))) # (\bcd~41_combout\ & ((!\bcd~28_combout\) # ((!\bcd~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001111110010101100111011011011101011001101101100101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~41_combout\,
	datab => \ALT_INV_bcd~28_combout\,
	datac => \ALT_INV_bcd~42_combout\,
	datad => \ALT_INV_bcd~27_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	dataf => \ALT_INV_bcd~40_combout\,
	combout => \MSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y4_N27
\MSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux1~0_combout\ = ( \digit4[0]~0_combout\ & ( (!\digit4[2]~2_combout\ & (\digit4[3]~3_combout\ & \digit4[1]~1_combout\)) ) ) # ( !\digit4[0]~0_combout\ & ( (\digit4[3]~3_combout\ & ((!\digit4[2]~2_combout\) # (\digit4[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[2]~2_combout\,
	datab => \ALT_INV_digit4[3]~3_combout\,
	datad => \ALT_INV_digit4[1]~1_combout\,
	dataf => \ALT_INV_digit4[0]~0_combout\,
	combout => \MSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y6_N57
\MSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux0~0_combout\ = ( \digit4[0]~0_combout\ & ( (!\digit4[3]~3_combout\) # ((\digit4[2]~2_combout\) # (\digit4[1]~1_combout\)) ) ) # ( !\digit4[0]~0_combout\ & ( (!\digit4[3]~3_combout\) # (!\digit4[1]~1_combout\ $ (!\digit4[2]~2_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111010101011111111101010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[3]~3_combout\,
	datac => \ALT_INV_digit4[1]~1_combout\,
	datad => \ALT_INV_digit4[2]~2_combout\,
	dataf => \ALT_INV_digit4[0]~0_combout\,
	combout => \MSB_segment7|Mux0~0_combout\);

-- Location: IOIBUF_X14_Y0_N35
\input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LABCELL_X21_Y53_N0
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


