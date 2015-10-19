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

-- DATE "10/15/2015 12:53:29"

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
	number : IN std_logic_vector(13 DOWNTO 0);
	input : IN std_logic;
	cout : OUT std_logic;
	HEX00 : OUT std_logic;
	HEX01 : OUT std_logic;
	HEX02 : OUT std_logic;
	HEX03 : OUT std_logic;
	HEX04 : OUT std_logic;
	HEX05 : OUT std_logic;
	HEX06 : OUT std_logic;
	HEX10 : OUT std_logic;
	HEX11 : OUT std_logic;
	HEX12 : OUT std_logic;
	HEX13 : OUT std_logic;
	HEX14 : OUT std_logic;
	HEX15 : OUT std_logic;
	HEX16 : OUT std_logic;
	HEX20 : OUT std_logic;
	HEX21 : OUT std_logic;
	HEX22 : OUT std_logic;
	HEX23 : OUT std_logic;
	HEX24 : OUT std_logic;
	HEX25 : OUT std_logic;
	HEX26 : OUT std_logic;
	HEX30 : OUT std_logic;
	HEX31 : OUT std_logic;
	HEX32 : OUT std_logic;
	HEX33 : OUT std_logic;
	HEX34 : OUT std_logic;
	HEX35 : OUT std_logic;
	HEX36 : OUT std_logic
	);
END quad_segment7;

-- Design Ports Information
-- number[12]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[13]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX00	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX01	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX02	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX03	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX04	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX05	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX06	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX10	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX11	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX12	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX13	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX14	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX15	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX16	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX20	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX21	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX22	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX23	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX24	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX25	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX26	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX30	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX31	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX32	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX33	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX34	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX35	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX36	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[2]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[4]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[9]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[11]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number[10]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_number : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_input : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_HEX00 : std_logic;
SIGNAL ww_HEX01 : std_logic;
SIGNAL ww_HEX02 : std_logic;
SIGNAL ww_HEX03 : std_logic;
SIGNAL ww_HEX04 : std_logic;
SIGNAL ww_HEX05 : std_logic;
SIGNAL ww_HEX06 : std_logic;
SIGNAL ww_HEX10 : std_logic;
SIGNAL ww_HEX11 : std_logic;
SIGNAL ww_HEX12 : std_logic;
SIGNAL ww_HEX13 : std_logic;
SIGNAL ww_HEX14 : std_logic;
SIGNAL ww_HEX15 : std_logic;
SIGNAL ww_HEX16 : std_logic;
SIGNAL ww_HEX20 : std_logic;
SIGNAL ww_HEX21 : std_logic;
SIGNAL ww_HEX22 : std_logic;
SIGNAL ww_HEX23 : std_logic;
SIGNAL ww_HEX24 : std_logic;
SIGNAL ww_HEX25 : std_logic;
SIGNAL ww_HEX26 : std_logic;
SIGNAL ww_HEX30 : std_logic;
SIGNAL ww_HEX31 : std_logic;
SIGNAL ww_HEX32 : std_logic;
SIGNAL ww_HEX33 : std_logic;
SIGNAL ww_HEX34 : std_logic;
SIGNAL ww_HEX35 : std_logic;
SIGNAL ww_HEX36 : std_logic;
SIGNAL \number[12]~input_o\ : std_logic;
SIGNAL \number[13]~input_o\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \number[6]~input_o\ : std_logic;
SIGNAL \number[9]~input_o\ : std_logic;
SIGNAL \number[10]~input_o\ : std_logic;
SIGNAL \number[7]~input_o\ : std_logic;
SIGNAL \number[8]~input_o\ : std_logic;
SIGNAL \number[11]~input_o\ : std_logic;
SIGNAL \bcd~1_combout\ : std_logic;
SIGNAL \number[5]~input_o\ : std_logic;
SIGNAL \number[3]~input_o\ : std_logic;
SIGNAL \bcd~2_combout\ : std_logic;
SIGNAL \number[4]~input_o\ : std_logic;
SIGNAL \bcd~0_combout\ : std_logic;
SIGNAL \bcd~4_combout\ : std_logic;
SIGNAL \bcd~5_combout\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;
SIGNAL \number[2]~input_o\ : std_logic;
SIGNAL \bcd~7_combout\ : std_logic;
SIGNAL \number[1]~input_o\ : std_logic;
SIGNAL \bcd~6_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \number[0]~input_o\ : std_logic;
SIGNAL \LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux4~1_combout\ : std_logic;
SIGNAL \LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \bcd~15_combout\ : std_logic;
SIGNAL \bcd~12_combout\ : std_logic;
SIGNAL \bcd~13_combout\ : std_logic;
SIGNAL \bcd~16_combout\ : std_logic;
SIGNAL \bcd~11_combout\ : std_logic;
SIGNAL \bcd~14_combout\ : std_logic;
SIGNAL \bcd~18_combout\ : std_logic;
SIGNAL \bcd~8_combout\ : std_logic;
SIGNAL \bcd~9_combout\ : std_logic;
SIGNAL \bcd~10_combout\ : std_logic;
SIGNAL \bcd~19_combout\ : std_logic;
SIGNAL \bcd~17_combout\ : std_logic;
SIGNAL \digit2[1]~0_combout\ : std_logic;
SIGNAL \digit2[3]~2_combout\ : std_logic;
SIGNAL \digit2[2]~1_combout\ : std_logic;
SIGNAL \second_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \second_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \bcd~22_combout\ : std_logic;
SIGNAL \bcd~24_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \bcd~26_combout\ : std_logic;
SIGNAL \bcd~23_combout\ : std_logic;
SIGNAL \bcd~25_combout\ : std_logic;
SIGNAL \bcd~28_combout\ : std_logic;
SIGNAL \bcd~27_combout\ : std_logic;
SIGNAL \bcd~21_combout\ : std_logic;
SIGNAL \bcd~20_combout\ : std_logic;
SIGNAL \bcd~29_combout\ : std_logic;
SIGNAL \digit3[1]~1_combout\ : std_logic;
SIGNAL \digit3[0]~0_combout\ : std_logic;
SIGNAL \digit3[2]~2_combout\ : std_logic;
SIGNAL \digit3[3]~3_combout\ : std_logic;
SIGNAL \third_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \third_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \digit4[0]~0_combout\ : std_logic;
SIGNAL \digit4[2]~2_combout\ : std_logic;
SIGNAL \digit4[1]~1_combout\ : std_logic;
SIGNAL \digit4[3]~3_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \MSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_number[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_number[11]~input_o\ : std_logic;
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
SIGNAL \MSB_segment7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_digit4[0]~0_combout\ : std_logic;
SIGNAL \third_segment7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~29_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~28_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~27_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~26_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~25_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~24_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~23_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~21_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~20_combout\ : std_logic;
SIGNAL \ALT_INV_digit3[0]~0_combout\ : std_logic;
SIGNAL \second_segment7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \second_segment7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_digit2[1]~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_bcd~8_combout\ : std_logic;
SIGNAL \ALT_INV_Add21~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan15~0_combout\ : std_logic;
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
HEX00 <= ww_HEX00;
HEX01 <= ww_HEX01;
HEX02 <= ww_HEX02;
HEX03 <= ww_HEX03;
HEX04 <= ww_HEX04;
HEX05 <= ww_HEX05;
HEX06 <= ww_HEX06;
HEX10 <= ww_HEX10;
HEX11 <= ww_HEX11;
HEX12 <= ww_HEX12;
HEX13 <= ww_HEX13;
HEX14 <= ww_HEX14;
HEX15 <= ww_HEX15;
HEX16 <= ww_HEX16;
HEX20 <= ww_HEX20;
HEX21 <= ww_HEX21;
HEX22 <= ww_HEX22;
HEX23 <= ww_HEX23;
HEX24 <= ww_HEX24;
HEX25 <= ww_HEX25;
HEX26 <= ww_HEX26;
HEX30 <= ww_HEX30;
HEX31 <= ww_HEX31;
HEX32 <= ww_HEX32;
HEX33 <= ww_HEX33;
HEX34 <= ww_HEX34;
HEX35 <= ww_HEX35;
HEX36 <= ww_HEX36;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_number[10]~input_o\ <= NOT \number[10]~input_o\;
\ALT_INV_number[11]~input_o\ <= NOT \number[11]~input_o\;
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
\MSB_segment7|ALT_INV_Mux6~0_combout\ <= NOT \MSB_segment7|Mux6~0_combout\;
\ALT_INV_digit4[3]~3_combout\ <= NOT \digit4[3]~3_combout\;
\ALT_INV_digit4[2]~2_combout\ <= NOT \digit4[2]~2_combout\;
\ALT_INV_digit4[1]~1_combout\ <= NOT \digit4[1]~1_combout\;
\ALT_INV_digit4[0]~0_combout\ <= NOT \digit4[0]~0_combout\;
\third_segment7|ALT_INV_Mux6~0_combout\ <= NOT \third_segment7|Mux6~0_combout\;
\ALT_INV_digit3[3]~3_combout\ <= NOT \digit3[3]~3_combout\;
\ALT_INV_digit3[2]~2_combout\ <= NOT \digit3[2]~2_combout\;
\ALT_INV_digit3[1]~1_combout\ <= NOT \digit3[1]~1_combout\;
\ALT_INV_bcd~29_combout\ <= NOT \bcd~29_combout\;
\ALT_INV_bcd~28_combout\ <= NOT \bcd~28_combout\;
\ALT_INV_bcd~27_combout\ <= NOT \bcd~27_combout\;
\ALT_INV_bcd~26_combout\ <= NOT \bcd~26_combout\;
\ALT_INV_bcd~25_combout\ <= NOT \bcd~25_combout\;
\ALT_INV_bcd~24_combout\ <= NOT \bcd~24_combout\;
\ALT_INV_bcd~23_combout\ <= NOT \bcd~23_combout\;
\ALT_INV_bcd~22_combout\ <= NOT \bcd~22_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_bcd~21_combout\ <= NOT \bcd~21_combout\;
\ALT_INV_bcd~20_combout\ <= NOT \bcd~20_combout\;
\ALT_INV_digit3[0]~0_combout\ <= NOT \digit3[0]~0_combout\;
\second_segment7|ALT_INV_Mux6~0_combout\ <= NOT \second_segment7|Mux6~0_combout\;
\second_segment7|ALT_INV_Mux1~0_combout\ <= NOT \second_segment7|Mux1~0_combout\;
\ALT_INV_digit2[3]~2_combout\ <= NOT \digit2[3]~2_combout\;
\ALT_INV_digit2[2]~1_combout\ <= NOT \digit2[2]~1_combout\;
\ALT_INV_digit2[1]~0_combout\ <= NOT \digit2[1]~0_combout\;
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
\ALT_INV_bcd~8_combout\ <= NOT \bcd~8_combout\;
\ALT_INV_Add21~0_combout\ <= NOT \Add21~0_combout\;
\ALT_INV_LessThan15~0_combout\ <= NOT \LessThan15~0_combout\;
\ALT_INV_bcd~7_combout\ <= NOT \bcd~7_combout\;
\ALT_INV_bcd~6_combout\ <= NOT \bcd~6_combout\;
\ALT_INV_bcd~5_combout\ <= NOT \bcd~5_combout\;
\ALT_INV_bcd~4_combout\ <= NOT \bcd~4_combout\;
\ALT_INV_bcd~3_combout\ <= NOT \bcd~3_combout\;
\ALT_INV_bcd~2_combout\ <= NOT \bcd~2_combout\;
\ALT_INV_bcd~1_combout\ <= NOT \bcd~1_combout\;
\ALT_INV_bcd~0_combout\ <= NOT \bcd~0_combout\;

-- Location: IOOBUF_X14_Y61_N53
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
\HEX00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LSB_segment7|Mux0~0_combout\,
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
	i => \LSB_segment7|Mux4~0_combout\,
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
	i => \LSB_segment7|Mux4~1_combout\,
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
	i => \LSB_segment7|Mux0~0_combout\,
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
	i => \LSB_segment7|Mux0~0_combout\,
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
	i => \LSB_segment7|Mux4~1_combout\,
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
	i => \LSB_segment7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX06);

-- Location: IOOBUF_X62_Y0_N59
\HEX10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX10);

-- Location: IOOBUF_X64_Y0_N36
\HEX11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX11);

-- Location: IOOBUF_X65_Y0_N36
\HEX12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX12);

-- Location: IOOBUF_X64_Y0_N53
\HEX13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX13);

-- Location: IOOBUF_X62_Y0_N76
\HEX14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX14);

-- Location: IOOBUF_X65_Y0_N53
\HEX15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX15);

-- Location: IOOBUF_X62_Y0_N93
\HEX16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \second_segment7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX16);

-- Location: IOOBUF_X7_Y0_N36
\HEX20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX20);

-- Location: IOOBUF_X7_Y0_N53
\HEX21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX21);

-- Location: IOOBUF_X68_Y13_N22
\HEX22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX22);

-- Location: IOOBUF_X68_Y12_N5
\HEX23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX23);

-- Location: IOOBUF_X68_Y10_N62
\HEX24~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX24);

-- Location: IOOBUF_X68_Y11_N22
\HEX25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX25);

-- Location: IOOBUF_X68_Y11_N5
\HEX26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \third_segment7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX26);

-- Location: IOOBUF_X68_Y13_N56
\HEX30~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX30);

-- Location: IOOBUF_X68_Y13_N39
\HEX31~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX31);

-- Location: IOOBUF_X68_Y11_N56
\HEX32~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX32);

-- Location: IOOBUF_X68_Y11_N39
\HEX33~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX33);

-- Location: IOOBUF_X68_Y12_N39
\HEX34~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX34);

-- Location: IOOBUF_X68_Y10_N96
\HEX35~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX35);

-- Location: IOOBUF_X68_Y10_N79
\HEX36~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MSB_segment7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX36);

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

-- Location: IOIBUF_X57_Y0_N35
\number[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(9),
	o => \number[9]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\number[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(10),
	o => \number[10]~input_o\);

-- Location: IOIBUF_X59_Y0_N18
\number[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(7),
	o => \number[7]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\number[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(8),
	o => \number[8]~input_o\);

-- Location: IOIBUF_X59_Y0_N35
\number[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(11),
	o => \number[11]~input_o\);

-- Location: LABCELL_X63_Y2_N6
\bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~1_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[9]~input_o\ & (!\number[7]~input_o\ $ (((!\number[6]~input_o\ & !\number[10]~input_o\))))) # (\number[9]~input_o\ & (\number[7]~input_o\ & ((\number[10]~input_o\) # 
-- (\number[6]~input_o\)))) ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[9]~input_o\ & (!\number[7]~input_o\ & ((!\number[6]~input_o\) # (!\number[10]~input_o\)))) # (\number[9]~input_o\ & (!\number[7]~input_o\ $ 
-- (((!\number[6]~input_o\) # (!\number[10]~input_o\))))) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & (\number[7]~input_o\ & ((\number[10]~input_o\) # (\number[6]~input_o\)))) # (\number[9]~input_o\ & 
-- (!\number[7]~input_o\ & ((!\number[6]~input_o\) # (!\number[10]~input_o\)))) ) ) ) # ( !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & (!\number[7]~input_o\ $ (((!\number[6]~input_o\) # (!\number[10]~input_o\))))) # 
-- (\number[9]~input_o\ & ((!\number[6]~input_o\ & (!\number[10]~input_o\ & !\number[7]~input_o\)) # (\number[6]~input_o\ & (\number[10]~input_o\ & \number[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010011001001001100100100110011001001001100100100110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~1_combout\);

-- Location: IOIBUF_X61_Y0_N1
\number[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(5),
	o => \number[5]~input_o\);

-- Location: IOIBUF_X61_Y0_N18
\number[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(3),
	o => \number[3]~input_o\);

-- Location: LABCELL_X63_Y2_N42
\bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~2_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[9]~input_o\ & (\number[7]~input_o\ & (!\number[6]~input_o\ $ (!\number[10]~input_o\)))) # (\number[9]~input_o\ & (!\number[6]~input_o\ & (!\number[10]~input_o\ & 
-- !\number[7]~input_o\))) ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[6]~input_o\ & (!\number[9]~input_o\ & (!\number[10]~input_o\ & \number[7]~input_o\))) # (\number[6]~input_o\ & (\number[10]~input_o\ & (!\number[9]~input_o\ $ 
-- (\number[7]~input_o\)))) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[6]~input_o\ & (!\number[10]~input_o\ & (!\number[9]~input_o\ $ (\number[7]~input_o\)))) # (\number[6]~input_o\ & (\number[9]~input_o\ & (\number[10]~input_o\ & 
-- !\number[7]~input_o\))) ) ) ) # ( !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & (\number[6]~input_o\ & (\number[10]~input_o\ & \number[7]~input_o\))) # (\number[9]~input_o\ & (!\number[7]~input_o\ & (!\number[6]~input_o\ $ 
-- (!\number[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000100100000010010000000000100100000010010000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~2_combout\);

-- Location: IOIBUF_X61_Y0_N52
\number[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(4),
	o => \number[4]~input_o\);

-- Location: LABCELL_X63_Y2_N0
\bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~0_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[6]~input_o\ & (!\number[10]~input_o\ & ((!\number[9]~input_o\) # (\number[7]~input_o\)))) # (\number[6]~input_o\ & (\number[10]~input_o\ & ((!\number[7]~input_o\) # 
-- (\number[9]~input_o\)))) ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[6]~input_o\ & (\number[10]~input_o\ & ((!\number[7]~input_o\) # (\number[9]~input_o\)))) # (\number[6]~input_o\ & (!\number[10]~input_o\ $ 
-- (((!\number[9]~input_o\ & \number[7]~input_o\))))) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[6]~input_o\ & ((!\number[9]~input_o\ & (!\number[10]~input_o\ & \number[7]~input_o\)) # (\number[9]~input_o\ & (\number[10]~input_o\ & 
-- !\number[7]~input_o\)))) # (\number[6]~input_o\ & (!\number[10]~input_o\ $ (((!\number[9]~input_o\) # (\number[7]~input_o\))))) ) ) ) # ( !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[6]~input_o\ & (!\number[10]~input_o\ $ 
-- (((!\number[9]~input_o\) # (\number[7]~input_o\))))) # (\number[6]~input_o\ & (!\number[10]~input_o\ & ((!\number[9]~input_o\) # (\number[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001011010000101101000010101011010000101101000010110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~0_combout\);

-- Location: LABCELL_X64_Y2_N36
\bcd~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~4_combout\ = ( \number[4]~input_o\ & ( \bcd~0_combout\ & ( (!\number[5]~input_o\ & ((!\bcd~1_combout\ & (!\number[3]~input_o\ & \bcd~2_combout\)) # (\bcd~1_combout\ & (\number[3]~input_o\)))) ) ) ) # ( !\number[4]~input_o\ & ( \bcd~0_combout\ & ( 
-- (!\bcd~1_combout\ & ((!\number[3]~input_o\ & ((!\bcd~2_combout\))) # (\number[3]~input_o\ & ((\bcd~2_combout\) # (\number[5]~input_o\))))) # (\bcd~1_combout\ & (\number[5]~input_o\ & (!\number[3]~input_o\))) ) ) ) # ( \number[4]~input_o\ & ( 
-- !\bcd~0_combout\ & ( (!\bcd~1_combout\ & (!\bcd~2_combout\ $ (((\number[5]~input_o\ & !\number[3]~input_o\))))) # (\bcd~1_combout\ & (((!\number[3]~input_o\ & !\bcd~2_combout\)) # (\number[5]~input_o\))) ) ) ) # ( !\number[4]~input_o\ & ( !\bcd~0_combout\ 
-- & ( (!\number[3]~input_o\ & (((!\number[5]~input_o\ & \bcd~2_combout\)))) # (\number[3]~input_o\ & ((!\bcd~1_combout\ & ((\bcd~2_combout\))) # (\bcd~1_combout\ & (!\number[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001110110110110011000110110010000110100000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~1_combout\,
	datab => \ALT_INV_number[5]~input_o\,
	datac => \ALT_INV_number[3]~input_o\,
	datad => \ALT_INV_bcd~2_combout\,
	datae => \ALT_INV_number[4]~input_o\,
	dataf => \ALT_INV_bcd~0_combout\,
	combout => \bcd~4_combout\);

-- Location: LABCELL_X64_Y2_N42
\bcd~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~5_combout\ = ( \number[4]~input_o\ & ( \bcd~0_combout\ & ( (!\bcd~1_combout\ & (!\number[3]~input_o\ & (!\number[5]~input_o\ $ (!\bcd~2_combout\)))) ) ) ) # ( !\number[4]~input_o\ & ( \bcd~0_combout\ & ( (!\bcd~1_combout\ & (!\number[5]~input_o\ & 
-- ((\bcd~2_combout\) # (\number[3]~input_o\)))) # (\bcd~1_combout\ & (!\number[5]~input_o\ $ ((\number[3]~input_o\)))) ) ) ) # ( \number[4]~input_o\ & ( !\bcd~0_combout\ & ( (!\bcd~1_combout\ & (\bcd~2_combout\ & (!\number[5]~input_o\ $ 
-- (\number[3]~input_o\)))) # (\bcd~1_combout\ & (!\number[5]~input_o\ & (!\number[3]~input_o\ $ (!\bcd~2_combout\)))) ) ) ) # ( !\number[4]~input_o\ & ( !\bcd~0_combout\ & ( (!\bcd~1_combout\ & (\number[5]~input_o\ & (!\number[3]~input_o\ & 
-- !\bcd~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000001001100001001001001110010010010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~1_combout\,
	datab => \ALT_INV_number[5]~input_o\,
	datac => \ALT_INV_number[3]~input_o\,
	datad => \ALT_INV_bcd~2_combout\,
	datae => \ALT_INV_number[4]~input_o\,
	dataf => \ALT_INV_bcd~0_combout\,
	combout => \bcd~5_combout\);

-- Location: LABCELL_X64_Y2_N0
\bcd~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = ( \number[4]~input_o\ & ( \bcd~0_combout\ & ( (!\number[5]~input_o\ & (!\number[3]~input_o\ $ (((!\bcd~1_combout\ & !\bcd~2_combout\))))) # (\number[5]~input_o\ & (\number[3]~input_o\ & ((\bcd~2_combout\) # (\bcd~1_combout\)))) ) ) ) # ( 
-- !\number[4]~input_o\ & ( \bcd~0_combout\ & ( (!\bcd~1_combout\ & (!\number[3]~input_o\ $ (((\number[5]~input_o\ & !\bcd~2_combout\))))) # (\bcd~1_combout\ & (\number[5]~input_o\ & (!\number[3]~input_o\))) ) ) ) # ( \number[4]~input_o\ & ( !\bcd~0_combout\ 
-- & ( (!\number[5]~input_o\ & (!\bcd~2_combout\ & (!\bcd~1_combout\ $ (!\number[3]~input_o\)))) # (\number[5]~input_o\ & (!\bcd~1_combout\ $ ((\number[3]~input_o\)))) ) ) ) # ( !\number[4]~input_o\ & ( !\bcd~0_combout\ & ( (!\bcd~1_combout\ & 
-- ((!\number[5]~input_o\ & (\number[3]~input_o\)) # (\number[5]~input_o\ & (!\number[3]~input_o\ & \bcd~2_combout\)))) # (\bcd~1_combout\ & (!\number[3]~input_o\ $ (((\bcd~2_combout\) # (\number[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100101101011010010010000110010010101100000100100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~1_combout\,
	datab => \ALT_INV_number[5]~input_o\,
	datac => \ALT_INV_number[3]~input_o\,
	datad => \ALT_INV_bcd~2_combout\,
	datae => \ALT_INV_number[4]~input_o\,
	dataf => \ALT_INV_bcd~0_combout\,
	combout => \bcd~3_combout\);

-- Location: IOIBUF_X66_Y0_N52
\number[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(2),
	o => \number[2]~input_o\);

-- Location: LABCELL_X64_Y2_N51
\bcd~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~7_combout\ = ( \number[2]~input_o\ & ( \bcd~3_combout\ ) ) # ( !\number[2]~input_o\ & ( (!\bcd~5_combout\ & (!\bcd~4_combout\ & \bcd~3_combout\)) # (\bcd~5_combout\ & ((!\bcd~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110001000001100111000100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~4_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datad => \ALT_INV_bcd~3_combout\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \bcd~7_combout\);

-- Location: IOIBUF_X66_Y0_N35
\number[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(1),
	o => \number[1]~input_o\);

-- Location: LABCELL_X64_Y2_N48
\bcd~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~6_combout\ = ( \number[2]~input_o\ & ( (!\bcd~4_combout\ & !\bcd~5_combout\) ) ) # ( !\number[2]~input_o\ & ( ((\bcd~4_combout\ & \bcd~3_combout\)) # (\bcd~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~4_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_bcd~3_combout\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \bcd~6_combout\);

-- Location: LABCELL_X64_Y2_N24
\LessThan15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = ( \number[2]~input_o\ & ( (!\bcd~4_combout\ & (!\bcd~5_combout\ & (!\bcd~3_combout\))) # (\bcd~4_combout\ & (((!\bcd~3_combout\) # (!\number[1]~input_o\)))) ) ) # ( !\number[2]~input_o\ & ( (!\bcd~4_combout\ & (!\bcd~5_combout\ & 
-- ((!\bcd~3_combout\) # (!\number[1]~input_o\)))) # (\bcd~4_combout\ & (((\bcd~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110000101100011011000010111010101110100001101010111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~4_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_bcd~3_combout\,
	datad => \ALT_INV_number[1]~input_o\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \LessThan15~0_combout\);

-- Location: IOIBUF_X59_Y0_N52
\number[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(0),
	o => \number[0]~input_o\);

-- Location: LABCELL_X64_Y2_N33
\LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux0~0_combout\ = ( \number[0]~input_o\ & ( (!\bcd~6_combout\ & ((!\bcd~7_combout\ & (!\number[1]~input_o\ & \LessThan15~0_combout\)) # (\bcd~7_combout\ & (\number[1]~input_o\ & !\LessThan15~0_combout\)))) ) ) # ( !\number[0]~input_o\ & ( 
-- (!\number[1]~input_o\ & (!\bcd~6_combout\ & !\LessThan15~0_combout\)) # (\number[1]~input_o\ & (\bcd~6_combout\ & \LessThan15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000011110000000000001100010000100000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~7_combout\,
	datab => \ALT_INV_number[1]~input_o\,
	datac => \ALT_INV_bcd~6_combout\,
	datad => \ALT_INV_LessThan15~0_combout\,
	dataf => \ALT_INV_number[0]~input_o\,
	combout => \LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y2_N6
\LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux4~0_combout\ = ( \number[0]~input_o\ & ( (!\bcd~7_combout\ & (!\LessThan15~0_combout\ & (!\number[1]~input_o\ $ (!\bcd~6_combout\)))) # (\bcd~7_combout\ & (((\LessThan15~0_combout\ & !\bcd~6_combout\)))) ) ) # ( !\number[0]~input_o\ & ( 
-- (\bcd~6_combout\ & ((!\bcd~7_combout\ & (!\number[1]~input_o\ & \LessThan15~0_combout\)) # (\bcd~7_combout\ & (\number[1]~input_o\ & !\LessThan15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000000001100000100101100000000010010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~7_combout\,
	datab => \ALT_INV_number[1]~input_o\,
	datac => \ALT_INV_LessThan15~0_combout\,
	datad => \ALT_INV_bcd~6_combout\,
	dataf => \ALT_INV_number[0]~input_o\,
	combout => \LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y2_N9
\LSB_segment7|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux4~1_combout\ = ( \number[0]~input_o\ & ( (!\bcd~7_combout\ & (\number[1]~input_o\ & (!\bcd~6_combout\ & \LessThan15~0_combout\))) # (\bcd~7_combout\ & (!\number[1]~input_o\ & (\bcd~6_combout\ & !\LessThan15~0_combout\))) ) ) # ( 
-- !\number[0]~input_o\ & ( (!\bcd~7_combout\ & (!\LessThan15~0_combout\ & ((\bcd~6_combout\) # (\number[1]~input_o\)))) # (\bcd~7_combout\ & (\LessThan15~0_combout\ & ((!\number[1]~input_o\) # (!\bcd~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001010100001010100101010000000100001000000000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~7_combout\,
	datab => \ALT_INV_number[1]~input_o\,
	datac => \ALT_INV_bcd~6_combout\,
	datad => \ALT_INV_LessThan15~0_combout\,
	dataf => \ALT_INV_number[0]~input_o\,
	combout => \LSB_segment7|Mux4~1_combout\);

-- Location: LABCELL_X64_Y2_N30
\LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LSB_segment7|Mux6~0_combout\ = ( \number[0]~input_o\ & ( (\bcd~6_combout\ & (!\number[1]~input_o\ $ (!\LessThan15~0_combout\))) ) ) # ( !\number[0]~input_o\ & ( (!\bcd~6_combout\ & ((!\bcd~7_combout\ & (!\number[1]~input_o\ & \LessThan15~0_combout\)) # 
-- (\bcd~7_combout\ & (\number[1]~input_o\ & !\LessThan15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000000110000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~7_combout\,
	datab => \ALT_INV_number[1]~input_o\,
	datac => \ALT_INV_LessThan15~0_combout\,
	datad => \ALT_INV_bcd~6_combout\,
	dataf => \ALT_INV_number[0]~input_o\,
	combout => \LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y2_N12
\Add21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~0_combout\ = ( \bcd~4_combout\ & ( \number[2]~input_o\ & ( (!\bcd~3_combout\ & (\number[0]~input_o\ & \number[1]~input_o\)) # (\bcd~3_combout\ & ((!\number[1]~input_o\))) ) ) ) # ( !\bcd~4_combout\ & ( \number[2]~input_o\ & ( (!\bcd~5_combout\ & 
-- ((!\number[0]~input_o\ & (!\bcd~3_combout\ $ (\number[1]~input_o\))) # (\number[0]~input_o\ & (\bcd~3_combout\ & !\number[1]~input_o\)))) # (\bcd~5_combout\ & (((!\bcd~3_combout\ & \number[1]~input_o\)))) ) ) ) # ( \bcd~4_combout\ & ( !\number[2]~input_o\ 
-- & ( (!\number[0]~input_o\ & ((!\bcd~3_combout\ $ (!\number[1]~input_o\)))) # (\number[0]~input_o\ & (!\bcd~3_combout\ & (!\bcd~5_combout\ $ (!\number[1]~input_o\)))) ) ) ) # ( !\bcd~4_combout\ & ( !\number[2]~input_o\ & ( (!\bcd~3_combout\ & 
-- ((!\number[0]~input_o\ & (\bcd~5_combout\ & \number[1]~input_o\)) # (\number[0]~input_o\ & (!\bcd~5_combout\ $ (!\number[1]~input_o\))))) # (\bcd~3_combout\ & (((!\number[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101100000000110101110000010000100001110000000111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_bcd~3_combout\,
	datad => \ALT_INV_number[1]~input_o\,
	datae => \ALT_INV_bcd~4_combout\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \Add21~0_combout\);

-- Location: LABCELL_X63_Y2_N36
\bcd~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~15_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[9]~input_o\ & (((!\number[10]~input_o\)))) # (\number[9]~input_o\ & (((!\number[6]~input_o\ & !\number[7]~input_o\)) # (\number[10]~input_o\))) ) ) ) # ( !\number[8]~input_o\ 
-- & ( \number[11]~input_o\ & ( (!\number[10]~input_o\ & (((\number[6]~input_o\ & \number[7]~input_o\)) # (\number[9]~input_o\))) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( (\number[9]~input_o\ & !\number[10]~input_o\) ) ) ) # ( 
-- !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & (\number[10]~input_o\)) # (\number[9]~input_o\ & (!\number[10]~input_o\ & \number[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111100001100000011000000110000011100001110001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~15_combout\);

-- Location: LABCELL_X63_Y2_N27
\bcd~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~12_combout\ = ( \number[5]~input_o\ & ( (!\bcd~0_combout\ & (\bcd~2_combout\ & ((!\bcd~1_combout\)))) # (\bcd~0_combout\ & ((!\number[4]~input_o\ & ((!\bcd~1_combout\))) # (\number[4]~input_o\ & ((!\bcd~2_combout\) # (\bcd~1_combout\))))) ) ) # ( 
-- !\number[5]~input_o\ & ( (!\bcd~0_combout\ & (!\bcd~2_combout\ $ (((!\bcd~1_combout\))))) # (\bcd~0_combout\ & (!\bcd~1_combout\ & ((\number[4]~input_o\) # (\bcd~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110001000001101111000100001110110000001010111011000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~0_combout\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_number[4]~input_o\,
	datad => \ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_number[5]~input_o\,
	combout => \bcd~12_combout\);

-- Location: LABCELL_X63_Y2_N24
\bcd~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~13_combout\ = ( \number[5]~input_o\ & ( !\bcd~2_combout\ $ (\bcd~1_combout\) ) ) # ( !\number[5]~input_o\ & ( !\bcd~2_combout\ $ (((\bcd~0_combout\ & \bcd~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100111001001110010011100100111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~0_combout\,
	datab => \ALT_INV_bcd~2_combout\,
	datac => \ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_number[5]~input_o\,
	combout => \bcd~13_combout\);

-- Location: LABCELL_X63_Y2_N12
\bcd~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~16_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (\number[9]~input_o\ & (!\number[10]~input_o\ & ((\number[7]~input_o\) # (\number[6]~input_o\)))) ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[9]~input_o\ & 
-- (\number[10]~input_o\ & !\number[7]~input_o\)) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & \number[10]~input_o\) ) ) ) # ( !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (!\number[6]~input_o\ & 
-- (\number[9]~input_o\ & (\number[10]~input_o\ & !\number[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000011000000110000001100000000000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~16_combout\);

-- Location: LABCELL_X63_Y2_N18
\bcd~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~11_combout\ = ( \number[3]~input_o\ & ( \bcd~2_combout\ & ( (!\bcd~1_combout\ & (!\bcd~0_combout\ $ (((!\number[5]~input_o\ & !\number[4]~input_o\))))) # (\bcd~1_combout\ & ((!\number[4]~input_o\ & (\bcd~0_combout\)) # (\number[4]~input_o\ & 
-- ((!\number[5]~input_o\))))) ) ) ) # ( !\number[3]~input_o\ & ( \bcd~2_combout\ & ( (!\bcd~0_combout\ & (\number[5]~input_o\ & (!\bcd~1_combout\))) # (\bcd~0_combout\ & (!\number[5]~input_o\ $ (((\bcd~1_combout\ & !\number[4]~input_o\))))) ) ) ) # ( 
-- \number[3]~input_o\ & ( !\bcd~2_combout\ & ( (!\number[5]~input_o\ & (((\bcd~0_combout\ & !\number[4]~input_o\)) # (\bcd~1_combout\))) # (\number[5]~input_o\ & (!\bcd~1_combout\ $ (((\bcd~0_combout\ & !\number[4]~input_o\))))) ) ) ) # ( 
-- !\number[3]~input_o\ & ( !\bcd~2_combout\ & ( (!\number[5]~input_o\ & (!\bcd~1_combout\ $ (((!\bcd~0_combout\) # (\number[4]~input_o\))))) # (\number[5]~input_o\ & ((!\bcd~0_combout\ & (!\bcd~1_combout\ & \number[4]~input_o\)) # (\bcd~0_combout\ & 
-- (\bcd~1_combout\ & !\number[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100101100011011010011110001100001011001000110010110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~0_combout\,
	datab => \ALT_INV_number[5]~input_o\,
	datac => \ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_number[4]~input_o\,
	datae => \ALT_INV_number[3]~input_o\,
	dataf => \ALT_INV_bcd~2_combout\,
	combout => \bcd~11_combout\);

-- Location: LABCELL_X63_Y2_N30
\bcd~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~14_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[6]~input_o\ & (\number[9]~input_o\ & (!\number[10]~input_o\ & !\number[7]~input_o\))) # (\number[6]~input_o\ & (!\number[9]~input_o\ & (\number[10]~input_o\ & 
-- \number[7]~input_o\))) ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( ((!\number[10]~input_o\ & ((!\number[6]~input_o\) # (!\number[7]~input_o\)))) # (\number[9]~input_o\) ) ) ) # ( \number[8]~input_o\ & ( !\number[11]~input_o\ & ( 
-- (!\number[6]~input_o\ & (\number[7]~input_o\ & (!\number[9]~input_o\ $ (\number[10]~input_o\)))) # (\number[6]~input_o\ & ((!\number[9]~input_o\ & (!\number[10]~input_o\)) # (\number[9]~input_o\ & ((\number[7]~input_o\))))) ) ) ) # ( !\number[8]~input_o\ 
-- & ( !\number[11]~input_o\ & ( (!\number[9]~input_o\ & (\number[10]~input_o\)) # (\number[9]~input_o\ & (!\number[10]~input_o\ & !\number[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100010000001101001111110011101100110010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~14_combout\);

-- Location: LABCELL_X65_Y2_N0
\bcd~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~18_combout\ = ( \bcd~11_combout\ & ( \bcd~14_combout\ & ( (!\bcd~15_combout\ & (!\bcd~12_combout\ & ((!\bcd~13_combout\) # (\bcd~16_combout\)))) # (\bcd~15_combout\ & (\bcd~12_combout\ & (\bcd~13_combout\))) ) ) ) # ( !\bcd~11_combout\ & ( 
-- \bcd~14_combout\ & ( (!\bcd~15_combout\ & ((!\bcd~12_combout\ & ((!\bcd~16_combout\))) # (\bcd~12_combout\ & (\bcd~13_combout\ & \bcd~16_combout\)))) # (\bcd~15_combout\ & (!\bcd~12_combout\ & (!\bcd~13_combout\))) ) ) ) # ( \bcd~11_combout\ & ( 
-- !\bcd~14_combout\ & ( !\bcd~12_combout\ $ (((!\bcd~15_combout\ & ((!\bcd~16_combout\))) # (\bcd~15_combout\ & (!\bcd~13_combout\)))) ) ) ) # ( !\bcd~11_combout\ & ( !\bcd~14_combout\ & ( (!\bcd~13_combout\ & (\bcd~12_combout\ & ((\bcd~16_combout\) # 
-- (\bcd~15_combout\)))) # (\bcd~13_combout\ & ((!\bcd~12_combout\ $ (!\bcd~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100111100001101101001110011001000010000101000000110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~12_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~11_combout\,
	dataf => \ALT_INV_bcd~14_combout\,
	combout => \bcd~18_combout\);

-- Location: LABCELL_X64_Y2_N18
\bcd~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~8_combout\ = ( \bcd~4_combout\ & ( \number[2]~input_o\ & ( (\bcd~3_combout\ & !\number[1]~input_o\) ) ) ) # ( !\bcd~4_combout\ & ( \number[2]~input_o\ & ( (!\number[0]~input_o\ & (!\bcd~3_combout\ & ((\number[1]~input_o\) # (\bcd~5_combout\)))) # 
-- (\number[0]~input_o\ & ((!\bcd~3_combout\) # ((!\bcd~5_combout\ & \number[1]~input_o\)))) ) ) ) # ( \bcd~4_combout\ & ( !\number[2]~input_o\ & ( (!\bcd~3_combout\ & ((!\bcd~5_combout\) # ((\number[0]~input_o\ & \number[1]~input_o\)))) # (\bcd~3_combout\ & 
-- (((\number[1]~input_o\)) # (\number[0]~input_o\))) ) ) ) # ( !\bcd~4_combout\ & ( !\number[2]~input_o\ & ( (!\number[1]~input_o\ & (((\bcd~3_combout\)))) # (\number[1]~input_o\ & (\bcd~5_combout\ & (!\number[0]~input_o\ $ (!\bcd~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010010110001011101111101110000111101000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[0]~input_o\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_bcd~3_combout\,
	datad => \ALT_INV_number[1]~input_o\,
	datae => \ALT_INV_bcd~4_combout\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \bcd~8_combout\);

-- Location: LABCELL_X64_Y2_N27
\bcd~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~9_combout\ = ( \number[2]~input_o\ & ( (!\bcd~4_combout\ & ((!\bcd~5_combout\ & ((\bcd~3_combout\))) # (\bcd~5_combout\ & ((!\number[1]~input_o\) # (!\bcd~3_combout\))))) # (\bcd~4_combout\ & (((\number[1]~input_o\ & \bcd~3_combout\)))) ) ) # ( 
-- !\number[2]~input_o\ & ( (!\bcd~4_combout\ & (((\number[1]~input_o\ & \bcd~3_combout\)) # (\bcd~5_combout\))) # (\bcd~4_combout\ & (!\bcd~5_combout\ & ((!\bcd~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000101010011001100010101000100010101011010010001010101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~4_combout\,
	datab => \ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_number[1]~input_o\,
	datad => \ALT_INV_bcd~3_combout\,
	dataf => \ALT_INV_number[2]~input_o\,
	combout => \bcd~9_combout\);

-- Location: LABCELL_X64_Y2_N54
\bcd~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~10_combout\ = ( \bcd~5_combout\ & ( (\bcd~4_combout\ & ((\number[2]~input_o\) # (\bcd~3_combout\))) ) ) # ( !\bcd~5_combout\ & ( (!\bcd~4_combout\) # ((!\bcd~3_combout\ & !\number[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~4_combout\,
	datac => \ALT_INV_bcd~3_combout\,
	datad => \ALT_INV_number[2]~input_o\,
	dataf => \ALT_INV_bcd~5_combout\,
	combout => \bcd~10_combout\);

-- Location: LABCELL_X65_Y2_N36
\bcd~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~19_combout\ = ( \bcd~11_combout\ & ( \bcd~14_combout\ & ( (!\bcd~12_combout\ & (!\bcd~15_combout\ $ (!\bcd~13_combout\))) ) ) ) # ( !\bcd~11_combout\ & ( \bcd~14_combout\ & ( (!\bcd~15_combout\ & ((!\bcd~13_combout\ & (\bcd~12_combout\ & 
-- !\bcd~16_combout\)) # (\bcd~13_combout\ & ((\bcd~16_combout\))))) # (\bcd~15_combout\ & (!\bcd~12_combout\ & (\bcd~13_combout\))) ) ) ) # ( \bcd~11_combout\ & ( !\bcd~14_combout\ & ( (\bcd~12_combout\ & ((!\bcd~15_combout\ & (!\bcd~13_combout\ & 
-- \bcd~16_combout\)) # (\bcd~15_combout\ & (\bcd~13_combout\ & !\bcd~16_combout\)))) ) ) ) # ( !\bcd~11_combout\ & ( !\bcd~14_combout\ & ( (!\bcd~12_combout\ & (!\bcd~15_combout\ & (!\bcd~13_combout\ & !\bcd~16_combout\))) # (\bcd~12_combout\ & 
-- (((\bcd~13_combout\ & \bcd~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000011000000010010000000100100000011100100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~12_combout\,
	datac => \ALT_INV_bcd~13_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	datae => \ALT_INV_bcd~11_combout\,
	dataf => \ALT_INV_bcd~14_combout\,
	combout => \bcd~19_combout\);

-- Location: LABCELL_X64_Y6_N30
\bcd~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~17_combout\ = ( \bcd~16_combout\ & ( \bcd~13_combout\ & ( (!\bcd~11_combout\ & (\bcd~14_combout\ & ((!\bcd~15_combout\) # (\bcd~12_combout\)))) # (\bcd~11_combout\ & (!\bcd~12_combout\ & ((!\bcd~14_combout\)))) ) ) ) # ( !\bcd~16_combout\ & ( 
-- \bcd~13_combout\ & ( (!\bcd~11_combout\ & (!\bcd~15_combout\ $ (((!\bcd~14_combout\) # (\bcd~12_combout\))))) # (\bcd~11_combout\ & (!\bcd~15_combout\ & ((!\bcd~14_combout\) # (\bcd~12_combout\)))) ) ) ) # ( \bcd~16_combout\ & ( !\bcd~13_combout\ & ( 
-- !\bcd~11_combout\ $ (((!\bcd~14_combout\ & ((\bcd~15_combout\))) # (\bcd~14_combout\ & (\bcd~12_combout\)))) ) ) ) # ( !\bcd~16_combout\ & ( !\bcd~13_combout\ & ( (!\bcd~11_combout\ & ((!\bcd~12_combout\ & (\bcd~15_combout\ & \bcd~14_combout\)) # 
-- (\bcd~12_combout\ & (!\bcd~15_combout\ & !\bcd~14_combout\)))) # (\bcd~11_combout\ & (!\bcd~15_combout\ $ (((!\bcd~14_combout\) # (\bcd~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100101001110000111001100100111100100101000010001011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~12_combout\,
	datab => \ALT_INV_bcd~11_combout\,
	datac => \ALT_INV_bcd~15_combout\,
	datad => \ALT_INV_bcd~14_combout\,
	datae => \ALT_INV_bcd~16_combout\,
	dataf => \ALT_INV_bcd~13_combout\,
	combout => \bcd~17_combout\);

-- Location: LABCELL_X65_Y2_N12
\digit2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[1]~0_combout\ = ( \bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~9_combout\ & (!\bcd~8_combout\ & ((!\bcd~18_combout\) # (!\bcd~10_combout\)))) # (\bcd~9_combout\ & ((!\bcd~8_combout\ $ (!\bcd~10_combout\)))) ) ) ) # ( !\bcd~19_combout\ & ( 
-- \bcd~17_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~8_combout\ & (!\bcd~9_combout\ & \bcd~10_combout\)) # (\bcd~8_combout\ & (!\bcd~9_combout\ $ (\bcd~10_combout\))))) # (\bcd~18_combout\ & ((!\bcd~8_combout\ & (!\bcd~9_combout\ $ (\bcd~10_combout\))) # 
-- (\bcd~8_combout\ & (\bcd~9_combout\ & !\bcd~10_combout\)))) ) ) ) # ( \bcd~19_combout\ & ( !\bcd~17_combout\ & ( (!\bcd~10_combout\ & (!\bcd~18_combout\ $ ((\bcd~8_combout\)))) # (\bcd~10_combout\ & (((\bcd~8_combout\ & !\bcd~9_combout\)))) ) ) ) # ( 
-- !\bcd~19_combout\ & ( !\bcd~17_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~8_combout\ & (\bcd~9_combout\ & !\bcd~10_combout\)) # (\bcd~8_combout\ & ((\bcd~10_combout\))))) # (\bcd~18_combout\ & (!\bcd~8_combout\ $ (((!\bcd~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100101100110100110010011000001100001100001101100001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~8_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~10_combout\,
	datae => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \digit2[1]~0_combout\);

-- Location: LABCELL_X65_Y2_N54
\digit2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[3]~2_combout\ = ( \bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & (\bcd~10_combout\ & ((!\bcd~8_combout\) # (!\bcd~9_combout\)))) # (\bcd~18_combout\ & (!\bcd~9_combout\ & (!\bcd~8_combout\ $ (!\bcd~10_combout\)))) ) ) ) # ( 
-- !\bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~8_combout\ & (\bcd~9_combout\ & !\bcd~10_combout\)) # (\bcd~8_combout\ & (!\bcd~9_combout\ & \bcd~10_combout\)))) # (\bcd~18_combout\ & (!\bcd~9_combout\ & (!\bcd~8_combout\ $ 
-- (!\bcd~10_combout\)))) ) ) ) # ( \bcd~19_combout\ & ( !\bcd~17_combout\ & ( (\bcd~9_combout\ & ((!\bcd~8_combout\ & ((\bcd~10_combout\))) # (\bcd~8_combout\ & (!\bcd~18_combout\ & !\bcd~10_combout\)))) ) ) ) # ( !\bcd~19_combout\ & ( !\bcd~17_combout\ & ( 
-- (!\bcd~18_combout\ & (!\bcd~8_combout\ & (!\bcd~9_combout\ & !\bcd~10_combout\))) # (\bcd~18_combout\ & (\bcd~8_combout\ & (\bcd~9_combout\ & \bcd~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000001000000100000110000011000011000000001000011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~8_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~10_combout\,
	datae => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \digit2[3]~2_combout\);

-- Location: LABCELL_X65_Y2_N18
\digit2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit2[2]~1_combout\ = ( \bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~9_combout\ & ((!\bcd~18_combout\ & (\bcd~8_combout\)) # (\bcd~18_combout\ & (!\bcd~8_combout\ & !\bcd~10_combout\)))) # (\bcd~9_combout\ & (\bcd~10_combout\ & (!\bcd~18_combout\ $ 
-- (\bcd~8_combout\)))) ) ) ) # ( !\bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & (!\bcd~9_combout\ & ((!\bcd~8_combout\) # (!\bcd~10_combout\)))) # (\bcd~18_combout\ & ((!\bcd~8_combout\ & (!\bcd~9_combout\ & !\bcd~10_combout\)) # 
-- (\bcd~8_combout\ & (\bcd~9_combout\ & \bcd~10_combout\)))) ) ) ) # ( \bcd~19_combout\ & ( !\bcd~17_combout\ & ( !\bcd~9_combout\ $ (((!\bcd~10_combout\ & ((!\bcd~8_combout\) # (\bcd~18_combout\))))) ) ) ) # ( !\bcd~19_combout\ & ( !\bcd~17_combout\ & ( 
-- (!\bcd~18_combout\ & (\bcd~9_combout\ & ((\bcd~10_combout\) # (\bcd~8_combout\)))) # (\bcd~18_combout\ & (!\bcd~9_combout\ $ (((!\bcd~8_combout\) # (!\bcd~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100011110001011011111000011100000100000010110000000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~8_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~10_combout\,
	datae => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \digit2[2]~1_combout\);

-- Location: LABCELL_X65_Y2_N33
\second_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux0~0_combout\ = ( \digit2[2]~1_combout\ & ( (!\Add21~0_combout\ & (!\digit2[1]~0_combout\ & !\digit2[3]~2_combout\)) ) ) # ( !\digit2[2]~1_combout\ & ( (\Add21~0_combout\ & (!\digit2[1]~0_combout\ & !\digit2[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add21~0_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	datad => \ALT_INV_digit2[3]~2_combout\,
	dataf => \ALT_INV_digit2[2]~1_combout\,
	combout => \second_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y2_N57
\second_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux1~0_combout\ = ( \digit2[1]~0_combout\ & ( (!\digit2[2]~1_combout\) # (\Add21~0_combout\) ) ) # ( !\digit2[1]~0_combout\ & ( (!\Add21~0_combout\) # (!\digit2[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add21~0_combout\,
	datac => \ALT_INV_digit2[2]~1_combout\,
	dataf => \ALT_INV_digit2[1]~0_combout\,
	combout => \second_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y2_N30
\second_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux2~0_combout\ = ( !\digit2[2]~1_combout\ & ( (!\Add21~0_combout\ & \digit2[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add21~0_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	dataf => \ALT_INV_digit2[2]~1_combout\,
	combout => \second_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y2_N6
\second_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux3~0_combout\ = ( \digit2[2]~1_combout\ & ( (!\digit2[3]~2_combout\ & (!\digit2[1]~0_combout\ $ (\Add21~0_combout\))) ) ) # ( !\digit2[2]~1_combout\ & ( (!\digit2[3]~2_combout\ & (!\digit2[1]~0_combout\ & \Add21~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[3]~2_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	datac => \ALT_INV_Add21~0_combout\,
	dataf => \ALT_INV_digit2[2]~1_combout\,
	combout => \second_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y2_N45
\second_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux4~0_combout\ = ((\digit2[2]~1_combout\ & !\digit2[1]~0_combout\)) # (\Add21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[2]~1_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	datad => \ALT_INV_Add21~0_combout\,
	combout => \second_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y2_N9
\second_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux5~0_combout\ = ( \digit2[2]~1_combout\ & ( (!\digit2[3]~2_combout\ & (\digit2[1]~0_combout\ & \Add21~0_combout\)) ) ) # ( !\digit2[2]~1_combout\ & ( (!\digit2[3]~2_combout\ & ((\Add21~0_combout\) # (\digit2[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[3]~2_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	datad => \ALT_INV_Add21~0_combout\,
	dataf => \ALT_INV_digit2[2]~1_combout\,
	combout => \second_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y2_N42
\second_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \second_segment7|Mux6~0_combout\ = ((!\digit2[2]~1_combout\ & (\digit2[1]~0_combout\)) # (\digit2[2]~1_combout\ & ((!\digit2[1]~0_combout\) # (!\Add21~0_combout\)))) # (\digit2[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101101111011111110110111101111111011011110111111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit2[2]~1_combout\,
	datab => \ALT_INV_digit2[1]~0_combout\,
	datac => \ALT_INV_digit2[3]~2_combout\,
	datad => \ALT_INV_Add21~0_combout\,
	combout => \second_segment7|Mux6~0_combout\);

-- Location: LABCELL_X63_Y2_N48
\bcd~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~22_combout\ = ( \number[11]~input_o\ & ( (!\number[10]~input_o\ & (\number[9]~input_o\)) # (\number[10]~input_o\ & (!\number[9]~input_o\ & (!\number[8]~input_o\ & !\number[7]~input_o\))) ) ) # ( !\number[11]~input_o\ & ( (!\number[10]~input_o\ & 
-- ((!\number[9]~input_o\) # ((!\number[8]~input_o\ & !\number[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100001100010001000100110001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[8]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~22_combout\);

-- Location: LABCELL_X64_Y6_N45
\bcd~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~24_combout\ = ( \bcd~13_combout\ & ( (!\bcd~15_combout\ & (((\bcd~14_combout\ & \bcd~12_combout\)) # (\bcd~16_combout\))) # (\bcd~15_combout\ & (!\bcd~14_combout\ & ((!\bcd~16_combout\)))) ) ) # ( !\bcd~13_combout\ & ( (!\bcd~15_combout\ & 
-- ((!\bcd~14_combout\ & ((\bcd~16_combout\))) # (\bcd~14_combout\ & ((!\bcd~12_combout\) # (!\bcd~16_combout\))))) # (\bcd~15_combout\ & (\bcd~14_combout\ & (\bcd~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110101001001000111010100101000110101010100100011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~14_combout\,
	datac => \ALT_INV_bcd~12_combout\,
	datad => \ALT_INV_bcd~16_combout\,
	dataf => \ALT_INV_bcd~13_combout\,
	combout => \bcd~24_combout\);

-- Location: LABCELL_X63_Y2_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \number[11]~input_o\ & ( (\number[9]~input_o\) # (\number[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[10]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X63_Y2_N54
\bcd~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~26_combout\ = ( \number[8]~input_o\ & ( \number[11]~input_o\ & ( !\number[10]~input_o\ ) ) ) # ( !\number[8]~input_o\ & ( \number[11]~input_o\ & ( (!\number[10]~input_o\) # ((!\number[9]~input_o\ & !\number[7]~input_o\)) ) ) ) # ( \number[8]~input_o\ 
-- & ( !\number[11]~input_o\ & ( (\number[9]~input_o\ & \number[10]~input_o\) ) ) ) # ( !\number[8]~input_o\ & ( !\number[11]~input_o\ & ( (\number[9]~input_o\ & (\number[10]~input_o\ & ((\number[7]~input_o\) # (\number[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000110000001111111100111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number[6]~input_o\,
	datab => \ALT_INV_number[9]~input_o\,
	datac => \ALT_INV_number[10]~input_o\,
	datad => \ALT_INV_number[7]~input_o\,
	datae => \ALT_INV_number[8]~input_o\,
	dataf => \ALT_INV_number[11]~input_o\,
	combout => \bcd~26_combout\);

-- Location: LABCELL_X64_Y6_N36
\bcd~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~23_combout\ = ( \bcd~16_combout\ & ( \bcd~13_combout\ & ( (!\bcd~12_combout\ & (\bcd~14_combout\ & ((!\bcd~15_combout\) # (\bcd~11_combout\)))) # (\bcd~12_combout\ & ((!\bcd~11_combout\ & ((\bcd~14_combout\))) # (\bcd~11_combout\ & 
-- ((!\bcd~14_combout\) # (\bcd~15_combout\))))) ) ) ) # ( !\bcd~16_combout\ & ( \bcd~13_combout\ & ( (!\bcd~12_combout\ & ((!\bcd~15_combout\ & ((\bcd~14_combout\))) # (\bcd~15_combout\ & ((!\bcd~14_combout\) # (\bcd~11_combout\))))) # (\bcd~12_combout\ & 
-- (((\bcd~15_combout\)))) ) ) ) # ( \bcd~16_combout\ & ( !\bcd~13_combout\ & ( (!\bcd~15_combout\ & ((!\bcd~14_combout\))) # (\bcd~15_combout\ & (!\bcd~12_combout\ & \bcd~14_combout\)) ) ) ) # ( !\bcd~16_combout\ & ( !\bcd~13_combout\ & ( (!\bcd~12_combout\ 
-- & ((!\bcd~15_combout\ & (\bcd~11_combout\ & !\bcd~14_combout\)) # (\bcd~15_combout\ & ((\bcd~14_combout\))))) # (\bcd~12_combout\ & (!\bcd~15_combout\ & ((!\bcd~14_combout\) # (\bcd~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000011010111100000000101000001111101001110001000111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~12_combout\,
	datab => \ALT_INV_bcd~11_combout\,
	datac => \ALT_INV_bcd~15_combout\,
	datad => \ALT_INV_bcd~14_combout\,
	datae => \ALT_INV_bcd~16_combout\,
	dataf => \ALT_INV_bcd~13_combout\,
	combout => \bcd~23_combout\);

-- Location: LABCELL_X64_Y6_N42
\bcd~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~25_combout\ = ( \bcd~13_combout\ & ( !\bcd~16_combout\ $ (((\bcd~15_combout\ & \bcd~14_combout\))) ) ) # ( !\bcd~13_combout\ & ( !\bcd~15_combout\ $ (\bcd~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~15_combout\,
	datab => \ALT_INV_bcd~14_combout\,
	datac => \ALT_INV_bcd~16_combout\,
	dataf => \ALT_INV_bcd~13_combout\,
	combout => \bcd~25_combout\);

-- Location: LABCELL_X64_Y6_N24
\bcd~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~28_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\bcd~24_combout\ & (!\bcd~22_combout\ & (\LessThan0~0_combout\ & !\bcd~26_combout\))) # (\bcd~24_combout\ & (!\bcd~26_combout\ $ (((!\bcd~22_combout\ & \LessThan0~0_combout\))))) ) ) ) # ( 
-- !\bcd~23_combout\ & ( \bcd~25_combout\ & ( !\bcd~24_combout\ $ (((!\bcd~26_combout\) # ((!\bcd~22_combout\ & \LessThan0~0_combout\)))) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~24_combout\ & (\bcd~26_combout\ & ((!\LessThan0~0_combout\) 
-- # (\bcd~22_combout\)))) # (\bcd~24_combout\ & (((!\bcd~26_combout\)))) ) ) ) # ( !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~24_combout\ & (((\bcd~26_combout\)))) # (\bcd~24_combout\ & (!\bcd~22_combout\ & (\LessThan0~0_combout\ & 
-- !\bcd~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001100001100111100010000110011110001100011100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~22_combout\,
	datab => \ALT_INV_bcd~24_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \bcd~28_combout\);

-- Location: LABCELL_X64_Y6_N48
\bcd~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~27_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\bcd~26_combout\ & (((!\LessThan0~0_combout\)) # (\bcd~22_combout\))) # (\bcd~26_combout\ & (((!\bcd~22_combout\ & \LessThan0~0_combout\)) # (\bcd~24_combout\))) ) ) ) # ( !\bcd~23_combout\ 
-- & ( \bcd~25_combout\ & ( (!\bcd~26_combout\ & (!\bcd~22_combout\ & ((\LessThan0~0_combout\)))) # (\bcd~26_combout\ & (!\bcd~24_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ & ( 
-- (!\bcd~22_combout\ & (!\LessThan0~0_combout\ $ (((!\bcd~26_combout\) # (\bcd~24_combout\))))) # (\bcd~22_combout\ & (!\bcd~24_combout\ & ((\bcd~26_combout\)))) ) ) ) # ( !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~24_combout\ & (!\bcd~22_combout\ & 
-- (\LessThan0~0_combout\ & \bcd~26_combout\))) # (\bcd~24_combout\ & (!\bcd~26_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100001000000010101100011000001010110001001111010100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~22_combout\,
	datab => \ALT_INV_bcd~24_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \bcd~27_combout\);

-- Location: LABCELL_X65_Y2_N27
\bcd~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~21_combout\ = ( \bcd~17_combout\ & ( !\bcd~18_combout\ $ (\bcd~19_combout\) ) ) # ( !\bcd~17_combout\ & ( !\bcd~19_combout\ $ (((\bcd~18_combout\ & !\bcd~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101000100101110110100010010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datad => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \bcd~21_combout\);

-- Location: LABCELL_X65_Y2_N24
\bcd~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~20_combout\ = ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~10_combout\ & ((!\bcd~9_combout\) # (!\bcd~19_combout\))) # (\bcd~10_combout\ & ((\bcd~19_combout\) # (\bcd~9_combout\))))) # (\bcd~18_combout\ & (!\bcd~10_combout\ & 
-- (\bcd~9_combout\))) ) ) # ( !\bcd~17_combout\ & ( (!\bcd~18_combout\ & ((\bcd~19_combout\))) # (\bcd~18_combout\ & (\bcd~10_combout\ & !\bcd~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110101010000100011010101010001110101001101000111010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~10_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \bcd~20_combout\);

-- Location: LABCELL_X64_Y6_N0
\bcd~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bcd~29_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\bcd~24_combout\ & (\bcd~26_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) # (\bcd~24_combout\ & (!\bcd~22_combout\ & (\LessThan0~0_combout\ & !\bcd~26_combout\))) ) ) ) # ( 
-- \bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~22_combout\ & (!\bcd~24_combout\ & (\LessThan0~0_combout\ & \bcd~26_combout\))) ) ) ) # ( !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~22_combout\ & (!\LessThan0~0_combout\ & (!\bcd~24_combout\ $ 
-- (\bcd~26_combout\)))) # (\bcd~22_combout\ & (!\bcd~24_combout\ $ (((\bcd~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000110001000000000000100000000000000000000000001011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~22_combout\,
	datab => \ALT_INV_bcd~24_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \bcd~29_combout\);

-- Location: LABCELL_X65_Y6_N0
\digit3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[1]~1_combout\ = ( \bcd~29_combout\ & ( (!\bcd~28_combout\ & (((!\bcd~20_combout\)))) # (\bcd~28_combout\ & ((!\bcd~27_combout\ & (!\bcd~21_combout\ $ (!\bcd~20_combout\))) # (\bcd~27_combout\ & (\bcd~21_combout\ & \bcd~20_combout\)))) ) ) # ( 
-- !\bcd~29_combout\ & ( (!\bcd~27_combout\ & (!\bcd~20_combout\ $ (((!\bcd~28_combout\) # (!\bcd~21_combout\))))) # (\bcd~27_combout\ & ((!\bcd~28_combout\ & (!\bcd~21_combout\ & !\bcd~20_combout\)) # (\bcd~28_combout\ & (\bcd~21_combout\ & 
-- \bcd~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010011001001001001001100100110101110010000011010111001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~28_combout\,
	datab => \ALT_INV_bcd~27_combout\,
	datac => \ALT_INV_bcd~21_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	dataf => \ALT_INV_bcd~29_combout\,
	combout => \digit3[1]~1_combout\);

-- Location: LABCELL_X65_Y2_N48
\digit3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[0]~0_combout\ = ( \bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & (\bcd~10_combout\ & ((!\bcd~8_combout\) # (!\bcd~9_combout\)))) # (\bcd~18_combout\ & ((!\bcd~9_combout\ & ((!\bcd~10_combout\) # (\bcd~8_combout\))) # 
-- (\bcd~9_combout\ & ((\bcd~10_combout\))))) ) ) ) # ( !\bcd~19_combout\ & ( \bcd~17_combout\ & ( (!\bcd~18_combout\ & ((!\bcd~9_combout\ & ((\bcd~10_combout\))) # (\bcd~9_combout\ & (\bcd~8_combout\ & !\bcd~10_combout\)))) # (\bcd~18_combout\ & 
-- ((!\bcd~9_combout\ & ((!\bcd~10_combout\) # (\bcd~8_combout\))) # (\bcd~9_combout\ & ((\bcd~10_combout\))))) ) ) ) # ( \bcd~19_combout\ & ( !\bcd~17_combout\ & ( (!\bcd~10_combout\ & (!\bcd~18_combout\)) # (\bcd~10_combout\ & (((\bcd~8_combout\ & 
-- \bcd~9_combout\)))) ) ) ) # ( !\bcd~19_combout\ & ( !\bcd~17_combout\ & ( (!\bcd~18_combout\ & (!\bcd~10_combout\ & ((\bcd~9_combout\) # (\bcd~8_combout\)))) # (\bcd~18_combout\ & (((\bcd~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001010101101010100000001101010010101101010101000010111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~18_combout\,
	datab => \ALT_INV_bcd~8_combout\,
	datac => \ALT_INV_bcd~9_combout\,
	datad => \ALT_INV_bcd~10_combout\,
	datae => \ALT_INV_bcd~19_combout\,
	dataf => \ALT_INV_bcd~17_combout\,
	combout => \digit3[0]~0_combout\);

-- Location: LABCELL_X65_Y6_N3
\digit3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[2]~2_combout\ = ( \bcd~21_combout\ & ( (!\bcd~28_combout\ & (((\bcd~29_combout\ & \bcd~20_combout\)))) # (\bcd~28_combout\ & ((!\bcd~29_combout\ $ (\bcd~20_combout\)) # (\bcd~27_combout\))) ) ) # ( !\bcd~21_combout\ & ( (!\bcd~28_combout\ & 
-- ((!\bcd~29_combout\ & ((!\bcd~27_combout\) # (\bcd~20_combout\))) # (\bcd~29_combout\ & ((!\bcd~20_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010100000100010101010000001010001000111110101000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~28_combout\,
	datab => \ALT_INV_bcd~27_combout\,
	datac => \ALT_INV_bcd~29_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \digit3[2]~2_combout\);

-- Location: LABCELL_X65_Y6_N36
\digit3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit3[3]~3_combout\ = ( \bcd~29_combout\ & ( (!\bcd~28_combout\ & (!\bcd~27_combout\ $ (((!\bcd~20_combout\) # (\bcd~21_combout\))))) # (\bcd~28_combout\ & (\bcd~27_combout\ & (!\bcd~21_combout\ & !\bcd~20_combout\))) ) ) # ( !\bcd~29_combout\ & ( 
-- (!\bcd~27_combout\ & (\bcd~28_combout\ & (\bcd~21_combout\ & \bcd~20_combout\))) # (\bcd~27_combout\ & (!\bcd~20_combout\ & (!\bcd~28_combout\ $ (!\bcd~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000100000100100000010000110010100000100011001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~28_combout\,
	datab => \ALT_INV_bcd~27_combout\,
	datac => \ALT_INV_bcd~21_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	dataf => \ALT_INV_bcd~29_combout\,
	combout => \digit3[3]~3_combout\);

-- Location: LABCELL_X65_Y5_N33
\third_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux0~0_combout\ = ( \digit3[2]~2_combout\ & ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & !\digit3[0]~0_combout\) ) ) ) # ( !\digit3[2]~2_combout\ & ( !\digit3[3]~3_combout\ & ( (!\digit3[1]~1_combout\ & \digit3[0]~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_digit3[1]~1_combout\,
	datac => \ALT_INV_digit3[0]~0_combout\,
	datae => \ALT_INV_digit3[2]~2_combout\,
	dataf => \ALT_INV_digit3[3]~3_combout\,
	combout => \third_segment7|Mux0~0_combout\);

-- Location: LABCELL_X65_Y6_N12
\third_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux1~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\bcd~28_combout\ & (\digit3[0]~0_combout\ & (\bcd~29_combout\ & \bcd~20_combout\))) # (\bcd~28_combout\ & (!\digit3[0]~0_combout\ $ (((!\bcd~20_combout\))))) ) ) ) # ( 
-- !\bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit3[0]~0_combout\ & (!\bcd~29_combout\ & (\bcd~28_combout\ & !\bcd~20_combout\))) # (\digit3[0]~0_combout\ & (\bcd~29_combout\ & ((\bcd~20_combout\)))) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( 
-- (!\bcd~28_combout\ & ((!\digit3[0]~0_combout\ & (\bcd~29_combout\ & !\bcd~20_combout\)) # (\digit3[0]~0_combout\ & (!\bcd~29_combout\ & \bcd~20_combout\)))) ) ) ) # ( !\bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\bcd~28_combout\ & 
-- ((!\digit3[0]~0_combout\ & (!\bcd~29_combout\ $ (!\bcd~20_combout\))) # (\digit3[0]~0_combout\ & (!\bcd~29_combout\ & !\bcd~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010000000001000000100000000001000000100010000010100011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \third_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y6_N48
\third_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux2~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit3[0]~0_combout\ & (\bcd~29_combout\ & (!\bcd~28_combout\ & !\bcd~20_combout\))) ) ) ) # ( !\bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit3[0]~0_combout\ & 
-- ((!\bcd~29_combout\ & (!\bcd~28_combout\ & \bcd~20_combout\)) # (\bcd~29_combout\ & ((!\bcd~20_combout\))))) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\digit3[0]~0_combout\ & (!\bcd~29_combout\ & (!\bcd~28_combout\ & !\bcd~20_combout\))) ) ) 
-- ) # ( !\bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\digit3[0]~0_combout\ & (\bcd~28_combout\ & \bcd~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010100000000000000000100010100000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \third_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y6_N54
\third_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux3~0_combout\ = ( \digit3[0]~0_combout\ & ( (!\digit3[3]~3_combout\ & (!\digit3[2]~2_combout\ $ (\digit3[1]~1_combout\))) ) ) # ( !\digit3[0]~0_combout\ & ( (\digit3[2]~2_combout\ & (!\digit3[3]~3_combout\ & !\digit3[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[2]~2_combout\,
	datab => \ALT_INV_digit3[3]~3_combout\,
	datac => \ALT_INV_digit3[1]~1_combout\,
	dataf => \ALT_INV_digit3[0]~0_combout\,
	combout => \third_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y6_N30
\third_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux4~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( ((!\bcd~28_combout\ & (\bcd~29_combout\ & \bcd~20_combout\)) # (\bcd~28_combout\ & ((!\bcd~20_combout\)))) # (\digit3[0]~0_combout\) ) ) ) # ( !\bcd~27_combout\ & ( 
-- \bcd~21_combout\ & ( ((\bcd~29_combout\ & \bcd~20_combout\)) # (\digit3[0]~0_combout\) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( ((!\bcd~29_combout\ & (!\bcd~28_combout\ & \bcd~20_combout\))) # (\digit3[0]~0_combout\) ) ) ) # ( 
-- !\bcd~27_combout\ & ( !\bcd~21_combout\ & ( ((!\bcd~29_combout\ & (!\bcd~28_combout\ & !\bcd~20_combout\))) # (\digit3[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101010101011101010101010101011101110101111101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[0]~0_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \third_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y6_N57
\third_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux5~0_combout\ = ( \digit3[0]~0_combout\ & ( (!\digit3[3]~3_combout\ & ((!\digit3[2]~2_combout\) # (\digit3[1]~1_combout\))) ) ) # ( !\digit3[0]~0_combout\ & ( (!\digit3[2]~2_combout\ & (!\digit3[3]~3_combout\ & \digit3[1]~1_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[2]~2_combout\,
	datab => \ALT_INV_digit3[3]~3_combout\,
	datad => \ALT_INV_digit3[1]~1_combout\,
	dataf => \ALT_INV_digit3[0]~0_combout\,
	combout => \third_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y6_N9
\third_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \third_segment7|Mux6~0_combout\ = ( \digit3[0]~0_combout\ & ( (!\digit3[2]~2_combout\ $ (!\digit3[1]~1_combout\)) # (\digit3[3]~3_combout\) ) ) # ( !\digit3[0]~0_combout\ & ( ((\digit3[1]~1_combout\) # (\digit3[3]~3_combout\)) # (\digit3[2]~2_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit3[2]~2_combout\,
	datac => \ALT_INV_digit3[3]~3_combout\,
	datad => \ALT_INV_digit3[1]~1_combout\,
	dataf => \ALT_INV_digit3[0]~0_combout\,
	combout => \third_segment7|Mux6~0_combout\);

-- Location: LABCELL_X65_Y6_N39
\digit4[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[0]~0_combout\ = ( \bcd~21_combout\ & ( (!\bcd~28_combout\ & (((\bcd~27_combout\ & \bcd~20_combout\)) # (\bcd~29_combout\))) # (\bcd~28_combout\ & (!\bcd~27_combout\ & (!\bcd~29_combout\))) ) ) # ( !\bcd~21_combout\ & ( (!\bcd~28_combout\ & 
-- ((!\bcd~27_combout\ & (\bcd~29_combout\)) # (\bcd~27_combout\ & ((!\bcd~29_combout\) # (!\bcd~20_combout\))))) # (\bcd~28_combout\ & (\bcd~27_combout\ & ((\bcd~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000111001001010100011100101001010011010100100101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~28_combout\,
	datab => \ALT_INV_bcd~27_combout\,
	datac => \ALT_INV_bcd~29_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \digit4[0]~0_combout\);

-- Location: LABCELL_X64_Y6_N6
\digit4[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[2]~2_combout\ = ( \bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\bcd~26_combout\ & (!\bcd~22_combout\ & ((\LessThan0~0_combout\)))) # (\bcd~26_combout\ & (!\bcd~24_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) ) # ( 
-- !\bcd~23_combout\ & ( \bcd~25_combout\ & ( (!\bcd~26_combout\ & (!\bcd~22_combout\ & ((\LessThan0~0_combout\)))) # (\bcd~26_combout\ & (!\bcd~24_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) ) # ( \bcd~23_combout\ & ( !\bcd~25_combout\ 
-- & ( (!\bcd~22_combout\ & (!\LessThan0~0_combout\ $ (((!\bcd~24_combout\ & \bcd~26_combout\))))) # (\bcd~22_combout\ & (((!\bcd~26_combout\)) # (\bcd~24_combout\))) ) ) ) # ( !\bcd~23_combout\ & ( !\bcd~25_combout\ & ( (!\bcd~24_combout\ & 
-- (!\bcd~22_combout\ & (\LessThan0~0_combout\ & \bcd~26_combout\))) # (\bcd~24_combout\ & (!\bcd~26_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100001000111101010011100100001010110001000000101011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~22_combout\,
	datab => \ALT_INV_bcd~24_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~26_combout\,
	datae => \ALT_INV_bcd~23_combout\,
	dataf => \ALT_INV_bcd~25_combout\,
	combout => \digit4[2]~2_combout\);

-- Location: LABCELL_X65_Y6_N6
\digit4[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[1]~1_combout\ = ( \bcd~21_combout\ & ( !\bcd~29_combout\ $ (((\bcd~28_combout\ & \bcd~27_combout\))) ) ) # ( !\bcd~21_combout\ & ( !\bcd~29_combout\ $ (\bcd~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \digit4[1]~1_combout\);

-- Location: LABCELL_X64_Y6_N12
\digit4[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit4[3]~3_combout\ = ( \bcd~26_combout\ & ( (!\bcd~25_combout\ & (((!\LessThan0~0_combout\) # (\bcd~24_combout\)) # (\bcd~22_combout\))) # (\bcd~25_combout\ & (\bcd~24_combout\ & ((!\LessThan0~0_combout\) # (\bcd~22_combout\)))) ) ) # ( 
-- !\bcd~26_combout\ & ( (!\bcd~22_combout\ & (\bcd~25_combout\ & \LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010110001001111110100000010000000101100010011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd~22_combout\,
	datab => \ALT_INV_bcd~25_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_bcd~24_combout\,
	datae => \ALT_INV_bcd~26_combout\,
	combout => \digit4[3]~3_combout\);

-- Location: LABCELL_X64_Y6_N21
\MSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux0~0_combout\ = ( !\digit4[3]~3_combout\ & ( (\digit4[1]~1_combout\ & (!\digit4[0]~0_combout\ $ (!\digit4[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[0]~0_combout\,
	datac => \ALT_INV_digit4[2]~2_combout\,
	datad => \ALT_INV_digit4[1]~1_combout\,
	dataf => \ALT_INV_digit4[3]~3_combout\,
	combout => \MSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X65_Y6_N42
\MSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux1~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( (\digit4[2]~2_combout\ & (!\bcd~29_combout\ & ((\bcd~20_combout\) # (\bcd~28_combout\)))) ) ) ) # ( !\bcd~27_combout\ & ( \bcd~21_combout\ & ( (\digit4[2]~2_combout\ & 
-- \bcd~28_combout\) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( (\digit4[2]~2_combout\ & ((!\bcd~29_combout\ & ((!\bcd~28_combout\) # (!\bcd~20_combout\))) # (\bcd~29_combout\ & ((\bcd~20_combout\))))) ) ) ) # ( !\bcd~27_combout\ & ( 
-- !\bcd~21_combout\ & ( (\digit4[2]~2_combout\ & (!\bcd~29_combout\ & \bcd~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010001000101000100000101000001010000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[2]~2_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \MSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y6_N18
\MSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux2~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & (!\bcd~29_combout\ & \bcd~28_combout\)) ) ) ) # ( !\bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & (\bcd~29_combout\ & 
-- \bcd~28_combout\)) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & ((!\bcd~29_combout\ & (\bcd~28_combout\ & !\bcd~20_combout\)) # (\bcd~29_combout\ & (!\bcd~28_combout\ & \bcd~20_combout\)))) ) ) ) # ( !\bcd~27_combout\ & ( 
-- !\bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & (!\bcd~29_combout\ & \bcd~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000010000000000010000000100000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[2]~2_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \MSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y6_N18
\MSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux3~0_combout\ = ( !\digit4[3]~3_combout\ & ( (!\digit4[0]~0_combout\ & (\digit4[2]~2_combout\ & \digit4[1]~1_combout\)) # (\digit4[0]~0_combout\ & (!\digit4[2]~2_combout\ $ (!\digit4[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110000101100001011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[0]~0_combout\,
	datab => \ALT_INV_digit4[2]~2_combout\,
	datac => \ALT_INV_digit4[1]~1_combout\,
	dataf => \ALT_INV_digit4[3]~3_combout\,
	combout => \MSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y6_N24
\MSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux4~0_combout\ = ( \bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & (!\bcd~28_combout\ & ((\bcd~20_combout\) # (\bcd~29_combout\)))) # (\digit4[2]~2_combout\ & (((!\bcd~28_combout\)) # (\bcd~29_combout\))) ) ) ) # ( 
-- !\bcd~27_combout\ & ( \bcd~21_combout\ & ( (!\bcd~29_combout\ & ((\bcd~28_combout\) # (\digit4[2]~2_combout\))) # (\bcd~29_combout\ & ((!\bcd~28_combout\))) ) ) ) # ( \bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\bcd~28_combout\ & (((!\bcd~29_combout\) # 
-- (!\bcd~20_combout\)))) # (\bcd~28_combout\ & (((\digit4[2]~2_combout\ & \bcd~29_combout\)) # (\bcd~20_combout\))) ) ) ) # ( !\bcd~27_combout\ & ( !\bcd~21_combout\ & ( (!\digit4[2]~2_combout\ & (\bcd~29_combout\ & !\bcd~28_combout\)) # 
-- (\digit4[2]~2_combout\ & ((!\bcd~28_combout\) # (\bcd~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001111100011100111101111100011111000111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[2]~2_combout\,
	datab => \ALT_INV_bcd~29_combout\,
	datac => \ALT_INV_bcd~28_combout\,
	datad => \ALT_INV_bcd~20_combout\,
	datae => \ALT_INV_bcd~27_combout\,
	dataf => \ALT_INV_bcd~21_combout\,
	combout => \MSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y6_N54
\MSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux5~0_combout\ = ( !\digit4[3]~3_combout\ & ( (!\digit4[1]~1_combout\ & ((!\digit4[2]~2_combout\) # (\digit4[0]~0_combout\))) # (\digit4[1]~1_combout\ & (!\digit4[2]~2_combout\ & \digit4[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010001110100011101000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[1]~1_combout\,
	datab => \ALT_INV_digit4[2]~2_combout\,
	datac => \ALT_INV_digit4[0]~0_combout\,
	dataf => \ALT_INV_digit4[3]~3_combout\,
	combout => \MSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y6_N57
\MSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MSB_segment7|Mux6~0_combout\ = ( \digit4[0]~0_combout\ & ( (!\digit4[1]~1_combout\ $ (\digit4[2]~2_combout\)) # (\digit4[3]~3_combout\) ) ) # ( !\digit4[0]~0_combout\ & ( (!\digit4[1]~1_combout\) # ((\digit4[3]~3_combout\) # (\digit4[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_digit4[1]~1_combout\,
	datab => \ALT_INV_digit4[2]~2_combout\,
	datac => \ALT_INV_digit4[3]~3_combout\,
	dataf => \ALT_INV_digit4[0]~0_combout\,
	combout => \MSB_segment7|Mux6~0_combout\);

-- Location: IOIBUF_X59_Y61_N52
\number[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(12),
	o => \number[12]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\number[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number(13),
	o => \number[13]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LABCELL_X30_Y25_N0
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


