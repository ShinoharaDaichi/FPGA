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

-- DATE "12/15/2015 12:34:54"

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

ENTITY 	adc IS
    PORT (
	ena : IN std_logic;
	clk : IN std_logic;
	reset_n : IN std_logic;
	convst : BUFFER std_logic;
	adc_sck : BUFFER std_logic;
	adc_sdi : BUFFER std_logic;
	adc_sdo : IN std_logic;
	outputs : BUFFER std_logic_vector(11 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END adc;

-- Design Ports Information
-- convst	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sck	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sdi	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[1]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[5]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[8]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[9]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[11]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- reset_n	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sdo	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_convst : std_logic;
SIGNAL ww_adc_sck : std_logic;
SIGNAL ww_adc_sdi : std_logic;
SIGNAL ww_adc_sdo : std_logic;
SIGNAL ww_outputs : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[31]~0_combout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[0]~q\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[1]~q\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[2]~q\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[3]~q\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[4]~q\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[5]~q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[6]~q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[7]~q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[8]~q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[9]~q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[10]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[11]~q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[12]~q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[13]~q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[14]~q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[15]~q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[16]~q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[17]~q\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[18]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[19]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[20]~q\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[21]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[22]~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[23]~q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[24]~q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[25]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[26]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[27]~q\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[28]~q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[29]~q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[30]~q\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \MAIN:convst_wait_after_counter[31]~q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.send~q\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \MAIN~3_combout\ : std_logic;
SIGNAL \MAIN~2_combout\ : std_logic;
SIGNAL \MAIN~0_combout\ : std_logic;
SIGNAL \MAIN~1_combout\ : std_logic;
SIGNAL \MAIN~7_combout\ : std_logic;
SIGNAL \MAIN:clock_count[31]~0_combout\ : std_logic;
SIGNAL \MAIN:clock_count[29]~q\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[0]~q\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[2]~q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[3]~q\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[4]~q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[5]~q\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[6]~q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[7]~q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[8]~q\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[9]~q\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[10]~q\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[11]~q\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[12]~q\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[13]~q\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[14]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[15]~q\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[16]~q\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[17]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[18]~q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[19]~q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[20]~q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[21]~q\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[22]~q\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[23]~q\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[24]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[25]~q\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[26]~q\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[27]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[28]~q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[30]~q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \MAIN:clock_count[31]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \MAIN:clock_count[1]~q\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \MAIN:bit_count[17]~0_combout\ : std_logic;
SIGNAL \MAIN:bit_count[26]~q\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[27]~q\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[28]~q\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[29]~q\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[30]~q\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[31]~q\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[0]~q\ : std_logic;
SIGNAL \MAIN~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.wait_while_busy~q\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \adc_sck~reg0_q\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[1]~q\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[2]~q\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[3]~q\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[4]~q\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[5]~q\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[6]~q\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[7]~q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[8]~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[9]~q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[10]~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[11]~q\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[12]~q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[13]~q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[14]~q\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[15]~q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[16]~q\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[17]~q\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[18]~q\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[19]~q\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[20]~q\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[21]~q\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[22]~q\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[23]~q\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[24]~q\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \MAIN:bit_count[25]~q\ : std_logic;
SIGNAL \MAIN~4_combout\ : std_logic;
SIGNAL \MAIN~5_combout\ : std_logic;
SIGNAL \Add4~125_sumout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \outputs[0]~0_combout\ : std_logic;
SIGNAL \MAIN:wait_counter[0]~q\ : std_logic;
SIGNAL \Add4~126\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[1]~q\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[2]~q\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[3]~q\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[4]~q\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[5]~q\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[6]~q\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[7]~q\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[8]~q\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[9]~q\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[10]~q\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[11]~q\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[12]~q\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[13]~q\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[14]~q\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[15]~q\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[16]~q\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[17]~q\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[18]~q\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[19]~q\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[20]~q\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[21]~q\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[22]~q\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[23]~q\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[24]~q\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[25]~q\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[26]~q\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[27]~q\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[28]~q\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[29]~q\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[30]~q\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \MAIN:wait_counter[31]~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.wait_between_sent~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.initial~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.wait_input~q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[31]~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.start_conversion~q\ : std_logic;
SIGNAL \convst~1_combout\ : std_logic;
SIGNAL \MAIN:convst_counter[23]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[24]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[25]~q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[26]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[27]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[28]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[29]~q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[30]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \MAIN:convst_counter[0]~q\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[1]~q\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[2]~q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[3]~q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[4]~q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[5]~q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[6]~q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[7]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[8]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[9]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[10]~q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[11]~q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[12]~q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[13]~q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[14]~q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[15]~q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[16]~q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[17]~q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[18]~q\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[19]~q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[20]~q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[21]~q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \MAIN:convst_counter[22]~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \convst~0_combout\ : std_logic;
SIGNAL \convst~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \send_sck~q\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[2]~q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[3]~q\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[4]~q\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[5]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[5]~q\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[6]~q\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[7]~q\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[8]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[9]~q\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[10]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[10]~q\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[11]~q\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[12]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[12]~q\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[14]~q\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[15]~q\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[16]~q\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[17]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[18]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[18]~q\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[19]~q\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[20]~q\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[21]~q\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[22]~q\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[23]~feeder_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[23]~q\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[24]~q\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[25]~q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[26]~q\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[27]~q\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[28]~q\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[29]~q\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[30]~q\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[31]~q\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[8]~q\ : std_logic;
SIGNAL \DATA_SEND:send_counter[13]~q\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[17]~q\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[0]~q\ : std_logic;
SIGNAL \Add5~126\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \DATA_SEND:send_counter[1]~q\ : std_logic;
SIGNAL \adc_sdi~0_combout\ : std_logic;
SIGNAL \adc_sdi~reg0_q\ : std_logic;
SIGNAL \adc_sdo~input_o\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[0]~feeder_combout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[4]~q\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[5]~q\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[6]~feeder_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[7]~q\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[8]~q\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[10]~q\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[11]~q\ : std_logic;
SIGNAL \DATA_READ:read_counter[9]~q\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[12]~q\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[13]~q\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~77_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~78\ : std_logic;
SIGNAL \Add7~73_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[15]~q\ : std_logic;
SIGNAL \Add7~74\ : std_logic;
SIGNAL \Add7~69_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~70\ : std_logic;
SIGNAL \Add7~65_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[17]~feeder_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[17]~q\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~61_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[18]~q\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[19]~q\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~101_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[20]~q\ : std_logic;
SIGNAL \Add7~102\ : std_logic;
SIGNAL \Add7~105_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[21]~q\ : std_logic;
SIGNAL \Add7~106\ : std_logic;
SIGNAL \Add7~109_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[22]~q\ : std_logic;
SIGNAL \Add7~110\ : std_logic;
SIGNAL \Add7~113_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[23]~q\ : std_logic;
SIGNAL \Add7~114\ : std_logic;
SIGNAL \Add7~117_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[24]~q\ : std_logic;
SIGNAL \Add7~118\ : std_logic;
SIGNAL \Add7~121_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[25]~q\ : std_logic;
SIGNAL \Add7~122\ : std_logic;
SIGNAL \Add7~125_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[26]~q\ : std_logic;
SIGNAL \Add7~126\ : std_logic;
SIGNAL \Add7~81_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[27]~q\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~85_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[28]~q\ : std_logic;
SIGNAL \Add7~86\ : std_logic;
SIGNAL \Add7~89_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[29]~feeder_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[29]~q\ : std_logic;
SIGNAL \Add7~90\ : std_logic;
SIGNAL \Add7~93_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~94\ : std_logic;
SIGNAL \Add7~97_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[31]~q\ : std_logic;
SIGNAL \DATA_READ:read_counter[30]~q\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[6]~q\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[14]~q\ : std_logic;
SIGNAL \DATA_READ:read_counter[16]~q\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \DATA_READ:read_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[1]~q\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[2]~q\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \DATA_READ:read_counter[3]~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \rx_data[0]~0_combout\ : std_logic;
SIGNAL \outputs[0]~reg0feeder_combout\ : std_logic;
SIGNAL \outputs[0]~reg0_q\ : std_logic;
SIGNAL \DATA_READ:read_counter[0]~q\ : std_logic;
SIGNAL \rx_data[1]~1_combout\ : std_logic;
SIGNAL \outputs[1]~reg0_q\ : std_logic;
SIGNAL \rx_data[2]~2_combout\ : std_logic;
SIGNAL \outputs[2]~reg0_q\ : std_logic;
SIGNAL \rx_data[3]~3_combout\ : std_logic;
SIGNAL \outputs[3]~reg0_q\ : std_logic;
SIGNAL \rx_data[4]~4_combout\ : std_logic;
SIGNAL \outputs[4]~reg0_q\ : std_logic;
SIGNAL \rx_data[5]~5_combout\ : std_logic;
SIGNAL \outputs[5]~reg0_q\ : std_logic;
SIGNAL \rx_data[6]~6_combout\ : std_logic;
SIGNAL \outputs[6]~reg0_q\ : std_logic;
SIGNAL \rx_data[7]~7_combout\ : std_logic;
SIGNAL \rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \outputs[7]~reg0_q\ : std_logic;
SIGNAL \rx_data[8]~8_combout\ : std_logic;
SIGNAL \outputs[8]~reg0_q\ : std_logic;
SIGNAL \rx_data[9]~9_combout\ : std_logic;
SIGNAL \outputs[9]~reg0_q\ : std_logic;
SIGNAL \rx_data[10]~10_combout\ : std_logic;
SIGNAL \rx_data[10]~feeder_combout\ : std_logic;
SIGNAL \outputs[10]~reg0feeder_combout\ : std_logic;
SIGNAL \outputs[10]~reg0_q\ : std_logic;
SIGNAL \rx_data[11]~11_combout\ : std_logic;
SIGNAL \outputs[11]~reg0_q\ : std_logic;
SIGNAL \quad_segment7_1|bcd~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~4_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~5_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[3]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[1]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[2]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~8_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~11_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~12_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~7_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~9_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~10_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~15_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~14_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~13_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~6_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit3[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~19_combout\ : std_logic;
SIGNAL \quad_segment7_1|LessThan13~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~18_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~16_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~17_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit3[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit3[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit3[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|MSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL rx_data : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_DATA_READ:read_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_adc_sdo~input_o\ : std_logic;
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal1~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_rx_data[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_rx_data[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~7_combout\ : std_logic;
SIGNAL \ALT_INV_state.send~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_state.wait_input~q\ : std_logic;
SIGNAL ALT_INV_rx_data : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_state.wait_between_sent~q\ : std_logic;
SIGNAL \ALT_INV_send_sck~q\ : std_logic;
SIGNAL \ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~6_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~5_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~4_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~3_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~2_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~1_combout\ : std_logic;
SIGNAL \ALT_INV_MAIN~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.wait_while_busy~q\ : std_logic;
SIGNAL \ALT_INV_state.initial~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.start_conversion~q\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit3[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit3[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit3[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~19_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~18_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~17_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~16_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_LessThan13~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit3[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~15_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~14_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~13_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~12_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~11_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~10_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~9_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~8_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~7_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~6_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[3]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[2]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[1]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~5_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~4_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~0_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[11]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[10]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_outputs[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_adc_sck~reg0_q\ : std_logic;
SIGNAL \ALT_INV_convst~reg0_q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_Add7~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_READ:read_counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_Add5~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[5]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[3]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[1]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[0]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[16]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[15]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[13]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[12]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[11]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[10]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[26]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[25]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[23]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[22]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[21]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[9]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[8]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[7]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[6]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[4]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[2]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[20]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[19]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[18]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[17]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[14]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[30]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[29]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[28]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[27]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[24]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:clock_count[31]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_wait_after_counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:wait_counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[31]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_DATA_SEND:send_counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[3]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[2]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[1]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[0]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[31]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[28]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[20]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[27]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[26]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[25]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[24]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[23]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[22]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[21]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[19]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[18]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[17]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[5]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[4]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[14]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[16]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[30]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[29]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[11]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[10]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[9]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[8]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[7]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[6]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[15]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[13]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:bit_count[12]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[17]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[18]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[19]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[20]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[4]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[5]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[6]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[15]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[16]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[21]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[11]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[12]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[13]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[14]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[29]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[30]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[25]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[7]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[8]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[28]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[9]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[22]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[23]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[24]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[26]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[27]~q\ : std_logic;
SIGNAL \ALT_INV_MAIN:convst_counter[31]~q\ : std_logic;

BEGIN

ww_ena <= ena;
ww_clk <= clk;
ww_reset_n <= reset_n;
convst <= ww_convst;
adc_sck <= ww_adc_sck;
adc_sdi <= ww_adc_sdi;
ww_adc_sdo <= adc_sdo;
outputs <= ww_outputs;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DATA_READ:read_counter[30]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[30]~DUPLICATE_q\;
\ALT_INV_DATA_READ:read_counter[14]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[14]~DUPLICATE_q\;
\ALT_INV_DATA_READ:read_counter[16]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[16]~DUPLICATE_q\;
\ALT_INV_DATA_READ:read_counter[9]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[9]~DUPLICATE_q\;
\ALT_INV_DATA_READ:read_counter[6]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[6]~DUPLICATE_q\;
\ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\ <= NOT \DATA_READ:read_counter[0]~DUPLICATE_q\;
\ALT_INV_DATA_SEND:send_counter[13]~DUPLICATE_q\ <= NOT \DATA_SEND:send_counter[13]~DUPLICATE_q\;
\ALT_INV_DATA_SEND:send_counter[8]~DUPLICATE_q\ <= NOT \DATA_SEND:send_counter[8]~DUPLICATE_q\;
\ALT_INV_DATA_SEND:send_counter[17]~DUPLICATE_q\ <= NOT \DATA_SEND:send_counter[17]~DUPLICATE_q\;
\ALT_INV_adc_sdo~input_o\ <= NOT \adc_sdo~input_o\;
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_Equal1~11_combout\ <= NOT \Equal1~11_combout\;
\ALT_INV_Equal1~10_combout\ <= NOT \Equal1~10_combout\;
\ALT_INV_Equal1~9_combout\ <= NOT \Equal1~9_combout\;
\ALT_INV_Equal1~8_combout\ <= NOT \Equal1~8_combout\;
\ALT_INV_Equal1~7_combout\ <= NOT \Equal1~7_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_rx_data[10]~10_combout\ <= NOT \rx_data[10]~10_combout\;
\ALT_INV_rx_data[7]~7_combout\ <= NOT \rx_data[7]~7_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_MAIN~7_combout\ <= NOT \MAIN~7_combout\;
\ALT_INV_state.send~q\ <= NOT \state.send~q\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan3~8_combout\ <= NOT \LessThan3~8_combout\;
\ALT_INV_LessThan3~7_combout\ <= NOT \LessThan3~7_combout\;
\ALT_INV_LessThan3~6_combout\ <= NOT \LessThan3~6_combout\;
\ALT_INV_LessThan3~5_combout\ <= NOT \LessThan3~5_combout\;
\ALT_INV_LessThan3~4_combout\ <= NOT \LessThan3~4_combout\;
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_state.wait_input~q\ <= NOT \state.wait_input~q\;
ALT_INV_rx_data(11) <= NOT rx_data(11);
ALT_INV_rx_data(10) <= NOT rx_data(10);
ALT_INV_rx_data(9) <= NOT rx_data(9);
ALT_INV_rx_data(8) <= NOT rx_data(8);
ALT_INV_rx_data(7) <= NOT rx_data(7);
ALT_INV_rx_data(6) <= NOT rx_data(6);
ALT_INV_rx_data(5) <= NOT rx_data(5);
ALT_INV_rx_data(4) <= NOT rx_data(4);
ALT_INV_rx_data(3) <= NOT rx_data(3);
ALT_INV_rx_data(2) <= NOT rx_data(2);
ALT_INV_rx_data(1) <= NOT rx_data(1);
\ALT_INV_state.wait_between_sent~q\ <= NOT \state.wait_between_sent~q\;
ALT_INV_rx_data(0) <= NOT rx_data(0);
\ALT_INV_send_sck~q\ <= NOT \send_sck~q\;
\ALT_INV_LessThan4~5_combout\ <= NOT \LessThan4~5_combout\;
\ALT_INV_LessThan4~4_combout\ <= NOT \LessThan4~4_combout\;
\ALT_INV_LessThan4~3_combout\ <= NOT \LessThan4~3_combout\;
\ALT_INV_LessThan4~2_combout\ <= NOT \LessThan4~2_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_MAIN~6_combout\ <= NOT \MAIN~6_combout\;
\ALT_INV_MAIN~5_combout\ <= NOT \MAIN~5_combout\;
\ALT_INV_MAIN~4_combout\ <= NOT \MAIN~4_combout\;
\ALT_INV_MAIN~3_combout\ <= NOT \MAIN~3_combout\;
\ALT_INV_MAIN~2_combout\ <= NOT \MAIN~2_combout\;
\ALT_INV_MAIN~1_combout\ <= NOT \MAIN~1_combout\;
\ALT_INV_MAIN~0_combout\ <= NOT \MAIN~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_state.wait_while_busy~q\ <= NOT \state.wait_while_busy~q\;
\ALT_INV_state.initial~q\ <= NOT \state.initial~q\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_state.start_conversion~q\ <= NOT \state.start_conversion~q\;
\quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\ <= NOT \quad_segment7_1|third_segment7|Mux0~0_combout\;
\quad_segment7_1|ALT_INV_digit3[3]~3_combout\ <= NOT \quad_segment7_1|digit3[3]~3_combout\;
\quad_segment7_1|ALT_INV_digit3[2]~2_combout\ <= NOT \quad_segment7_1|digit3[2]~2_combout\;
\quad_segment7_1|ALT_INV_digit3[1]~1_combout\ <= NOT \quad_segment7_1|digit3[1]~1_combout\;
\quad_segment7_1|ALT_INV_bcd~19_combout\ <= NOT \quad_segment7_1|bcd~19_combout\;
\quad_segment7_1|ALT_INV_bcd~18_combout\ <= NOT \quad_segment7_1|bcd~18_combout\;
\quad_segment7_1|ALT_INV_bcd~17_combout\ <= NOT \quad_segment7_1|bcd~17_combout\;
\quad_segment7_1|ALT_INV_bcd~16_combout\ <= NOT \quad_segment7_1|bcd~16_combout\;
\quad_segment7_1|ALT_INV_LessThan13~0_combout\ <= NOT \quad_segment7_1|LessThan13~0_combout\;
\quad_segment7_1|ALT_INV_digit3[0]~0_combout\ <= NOT \quad_segment7_1|digit3[0]~0_combout\;
\quad_segment7_1|second_segment7|ALT_INV_Mux0~0_combout\ <= NOT \quad_segment7_1|second_segment7|Mux0~0_combout\;
\quad_segment7_1|ALT_INV_digit2[3]~3_combout\ <= NOT \quad_segment7_1|digit2[3]~3_combout\;
\quad_segment7_1|ALT_INV_digit2[2]~2_combout\ <= NOT \quad_segment7_1|digit2[2]~2_combout\;
\quad_segment7_1|ALT_INV_digit2[1]~1_combout\ <= NOT \quad_segment7_1|digit2[1]~1_combout\;
\quad_segment7_1|ALT_INV_bcd~15_combout\ <= NOT \quad_segment7_1|bcd~15_combout\;
\quad_segment7_1|ALT_INV_bcd~14_combout\ <= NOT \quad_segment7_1|bcd~14_combout\;
\quad_segment7_1|ALT_INV_bcd~13_combout\ <= NOT \quad_segment7_1|bcd~13_combout\;
\quad_segment7_1|ALT_INV_bcd~12_combout\ <= NOT \quad_segment7_1|bcd~12_combout\;
\quad_segment7_1|ALT_INV_bcd~11_combout\ <= NOT \quad_segment7_1|bcd~11_combout\;
\quad_segment7_1|ALT_INV_bcd~10_combout\ <= NOT \quad_segment7_1|bcd~10_combout\;
\quad_segment7_1|ALT_INV_bcd~9_combout\ <= NOT \quad_segment7_1|bcd~9_combout\;
\quad_segment7_1|ALT_INV_bcd~8_combout\ <= NOT \quad_segment7_1|bcd~8_combout\;
\quad_segment7_1|ALT_INV_bcd~7_combout\ <= NOT \quad_segment7_1|bcd~7_combout\;
\quad_segment7_1|ALT_INV_bcd~6_combout\ <= NOT \quad_segment7_1|bcd~6_combout\;
\quad_segment7_1|ALT_INV_digit2[0]~0_combout\ <= NOT \quad_segment7_1|digit2[0]~0_combout\;
\quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \quad_segment7_1|LSB_segment7|Mux0~0_combout\;
\quad_segment7_1|ALT_INV_digit1[3]~2_combout\ <= NOT \quad_segment7_1|digit1[3]~2_combout\;
\quad_segment7_1|ALT_INV_digit1[2]~1_combout\ <= NOT \quad_segment7_1|digit1[2]~1_combout\;
\quad_segment7_1|ALT_INV_digit1[1]~0_combout\ <= NOT \quad_segment7_1|digit1[1]~0_combout\;
\quad_segment7_1|ALT_INV_bcd~5_combout\ <= NOT \quad_segment7_1|bcd~5_combout\;
\quad_segment7_1|ALT_INV_bcd~4_combout\ <= NOT \quad_segment7_1|bcd~4_combout\;
\quad_segment7_1|ALT_INV_bcd~3_combout\ <= NOT \quad_segment7_1|bcd~3_combout\;
\quad_segment7_1|ALT_INV_bcd~2_combout\ <= NOT \quad_segment7_1|bcd~2_combout\;
\quad_segment7_1|ALT_INV_bcd~1_combout\ <= NOT \quad_segment7_1|bcd~1_combout\;
\quad_segment7_1|ALT_INV_bcd~0_combout\ <= NOT \quad_segment7_1|bcd~0_combout\;
\ALT_INV_outputs[11]~reg0_q\ <= NOT \outputs[11]~reg0_q\;
\ALT_INV_outputs[10]~reg0_q\ <= NOT \outputs[10]~reg0_q\;
\ALT_INV_outputs[9]~reg0_q\ <= NOT \outputs[9]~reg0_q\;
\ALT_INV_outputs[8]~reg0_q\ <= NOT \outputs[8]~reg0_q\;
\ALT_INV_outputs[7]~reg0_q\ <= NOT \outputs[7]~reg0_q\;
\ALT_INV_outputs[6]~reg0_q\ <= NOT \outputs[6]~reg0_q\;
\ALT_INV_outputs[5]~reg0_q\ <= NOT \outputs[5]~reg0_q\;
\ALT_INV_outputs[4]~reg0_q\ <= NOT \outputs[4]~reg0_q\;
\ALT_INV_outputs[3]~reg0_q\ <= NOT \outputs[3]~reg0_q\;
\ALT_INV_outputs[2]~reg0_q\ <= NOT \outputs[2]~reg0_q\;
\ALT_INV_outputs[1]~reg0_q\ <= NOT \outputs[1]~reg0_q\;
\ALT_INV_outputs[0]~reg0_q\ <= NOT \outputs[0]~reg0_q\;
\ALT_INV_adc_sck~reg0_q\ <= NOT \adc_sck~reg0_q\;
\ALT_INV_convst~reg0_q\ <= NOT \convst~reg0_q\;
\ALT_INV_MAIN:convst_wait_after_counter[0]~q\ <= NOT \MAIN:convst_wait_after_counter[0]~q\;
\ALT_INV_MAIN:wait_counter[0]~q\ <= NOT \MAIN:wait_counter[0]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[1]~q\ <= NOT \MAIN:convst_wait_after_counter[1]~q\;
\ALT_INV_MAIN:wait_counter[1]~q\ <= NOT \MAIN:wait_counter[1]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[2]~q\ <= NOT \MAIN:convst_wait_after_counter[2]~q\;
\ALT_INV_MAIN:wait_counter[2]~q\ <= NOT \MAIN:wait_counter[2]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[3]~q\ <= NOT \MAIN:convst_wait_after_counter[3]~q\;
\ALT_INV_MAIN:wait_counter[3]~q\ <= NOT \MAIN:wait_counter[3]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[4]~q\ <= NOT \MAIN:convst_wait_after_counter[4]~q\;
\ALT_INV_MAIN:wait_counter[4]~q\ <= NOT \MAIN:wait_counter[4]~q\;
\ALT_INV_MAIN:convst_counter[0]~q\ <= NOT \MAIN:convst_counter[0]~q\;
\ALT_INV_MAIN:convst_counter[1]~q\ <= NOT \MAIN:convst_counter[1]~q\;
\ALT_INV_Add7~89_sumout\ <= NOT \Add7~89_sumout\;
\ALT_INV_Add7~65_sumout\ <= NOT \Add7~65_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_DATA_READ:read_counter[26]~q\ <= NOT \DATA_READ:read_counter[26]~q\;
\ALT_INV_DATA_READ:read_counter[25]~q\ <= NOT \DATA_READ:read_counter[25]~q\;
\ALT_INV_DATA_READ:read_counter[24]~q\ <= NOT \DATA_READ:read_counter[24]~q\;
\ALT_INV_DATA_READ:read_counter[23]~q\ <= NOT \DATA_READ:read_counter[23]~q\;
\ALT_INV_DATA_READ:read_counter[22]~q\ <= NOT \DATA_READ:read_counter[22]~q\;
\ALT_INV_DATA_READ:read_counter[21]~q\ <= NOT \DATA_READ:read_counter[21]~q\;
\ALT_INV_DATA_READ:read_counter[20]~q\ <= NOT \DATA_READ:read_counter[20]~q\;
\ALT_INV_DATA_READ:read_counter[31]~q\ <= NOT \DATA_READ:read_counter[31]~q\;
\ALT_INV_DATA_READ:read_counter[30]~q\ <= NOT \DATA_READ:read_counter[30]~q\;
\ALT_INV_DATA_READ:read_counter[29]~q\ <= NOT \DATA_READ:read_counter[29]~q\;
\ALT_INV_DATA_READ:read_counter[28]~q\ <= NOT \DATA_READ:read_counter[28]~q\;
\ALT_INV_DATA_READ:read_counter[27]~q\ <= NOT \DATA_READ:read_counter[27]~q\;
\ALT_INV_DATA_READ:read_counter[14]~q\ <= NOT \DATA_READ:read_counter[14]~q\;
\ALT_INV_DATA_READ:read_counter[15]~q\ <= NOT \DATA_READ:read_counter[15]~q\;
\ALT_INV_DATA_READ:read_counter[16]~q\ <= NOT \DATA_READ:read_counter[16]~q\;
\ALT_INV_DATA_READ:read_counter[17]~q\ <= NOT \DATA_READ:read_counter[17]~q\;
\ALT_INV_DATA_READ:read_counter[18]~q\ <= NOT \DATA_READ:read_counter[18]~q\;
\ALT_INV_DATA_READ:read_counter[19]~q\ <= NOT \DATA_READ:read_counter[19]~q\;
\ALT_INV_DATA_READ:read_counter[8]~q\ <= NOT \DATA_READ:read_counter[8]~q\;
\ALT_INV_DATA_READ:read_counter[9]~q\ <= NOT \DATA_READ:read_counter[9]~q\;
\ALT_INV_DATA_READ:read_counter[10]~q\ <= NOT \DATA_READ:read_counter[10]~q\;
\ALT_INV_DATA_READ:read_counter[11]~q\ <= NOT \DATA_READ:read_counter[11]~q\;
\ALT_INV_DATA_READ:read_counter[12]~q\ <= NOT \DATA_READ:read_counter[12]~q\;
\ALT_INV_DATA_READ:read_counter[13]~q\ <= NOT \DATA_READ:read_counter[13]~q\;
\ALT_INV_DATA_READ:read_counter[4]~q\ <= NOT \DATA_READ:read_counter[4]~q\;
\ALT_INV_DATA_READ:read_counter[5]~q\ <= NOT \DATA_READ:read_counter[5]~q\;
\ALT_INV_DATA_READ:read_counter[6]~q\ <= NOT \DATA_READ:read_counter[6]~q\;
\ALT_INV_DATA_READ:read_counter[7]~q\ <= NOT \DATA_READ:read_counter[7]~q\;
\ALT_INV_DATA_READ:read_counter[3]~q\ <= NOT \DATA_READ:read_counter[3]~q\;
\ALT_INV_DATA_READ:read_counter[1]~q\ <= NOT \DATA_READ:read_counter[1]~q\;
\ALT_INV_DATA_READ:read_counter[2]~q\ <= NOT \DATA_READ:read_counter[2]~q\;
\ALT_INV_DATA_READ:read_counter[0]~q\ <= NOT \DATA_READ:read_counter[0]~q\;
\ALT_INV_Add5~117_sumout\ <= NOT \Add5~117_sumout\;
\ALT_INV_Add5~109_sumout\ <= NOT \Add5~109_sumout\;
\ALT_INV_Add5~101_sumout\ <= NOT \Add5~101_sumout\;
\ALT_INV_Add5~93_sumout\ <= NOT \Add5~93_sumout\;
\ALT_INV_Add5~81_sumout\ <= NOT \Add5~81_sumout\;
\ALT_INV_Add5~77_sumout\ <= NOT \Add5~77_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_MAIN:clock_count[5]~q\ <= NOT \MAIN:clock_count[5]~q\;
\ALT_INV_MAIN:clock_count[3]~q\ <= NOT \MAIN:clock_count[3]~q\;
\ALT_INV_MAIN:clock_count[1]~q\ <= NOT \MAIN:clock_count[1]~q\;
\ALT_INV_MAIN:clock_count[0]~q\ <= NOT \MAIN:clock_count[0]~q\;
\ALT_INV_MAIN:clock_count[16]~q\ <= NOT \MAIN:clock_count[16]~q\;
\ALT_INV_MAIN:clock_count[15]~q\ <= NOT \MAIN:clock_count[15]~q\;
\ALT_INV_MAIN:clock_count[13]~q\ <= NOT \MAIN:clock_count[13]~q\;
\ALT_INV_MAIN:clock_count[12]~q\ <= NOT \MAIN:clock_count[12]~q\;
\ALT_INV_MAIN:clock_count[11]~q\ <= NOT \MAIN:clock_count[11]~q\;
\ALT_INV_MAIN:clock_count[10]~q\ <= NOT \MAIN:clock_count[10]~q\;
\ALT_INV_MAIN:clock_count[26]~q\ <= NOT \MAIN:clock_count[26]~q\;
\ALT_INV_MAIN:clock_count[25]~q\ <= NOT \MAIN:clock_count[25]~q\;
\ALT_INV_MAIN:clock_count[23]~q\ <= NOT \MAIN:clock_count[23]~q\;
\ALT_INV_MAIN:clock_count[22]~q\ <= NOT \MAIN:clock_count[22]~q\;
\ALT_INV_MAIN:clock_count[21]~q\ <= NOT \MAIN:clock_count[21]~q\;
\ALT_INV_MAIN:clock_count[9]~q\ <= NOT \MAIN:clock_count[9]~q\;
\ALT_INV_MAIN:clock_count[8]~q\ <= NOT \MAIN:clock_count[8]~q\;
\ALT_INV_MAIN:clock_count[7]~q\ <= NOT \MAIN:clock_count[7]~q\;
\ALT_INV_MAIN:clock_count[6]~q\ <= NOT \MAIN:clock_count[6]~q\;
\ALT_INV_MAIN:clock_count[4]~q\ <= NOT \MAIN:clock_count[4]~q\;
\ALT_INV_MAIN:clock_count[2]~q\ <= NOT \MAIN:clock_count[2]~q\;
\ALT_INV_MAIN:clock_count[20]~q\ <= NOT \MAIN:clock_count[20]~q\;
\ALT_INV_MAIN:clock_count[19]~q\ <= NOT \MAIN:clock_count[19]~q\;
\ALT_INV_MAIN:clock_count[18]~q\ <= NOT \MAIN:clock_count[18]~q\;
\ALT_INV_MAIN:clock_count[17]~q\ <= NOT \MAIN:clock_count[17]~q\;
\ALT_INV_MAIN:clock_count[14]~q\ <= NOT \MAIN:clock_count[14]~q\;
\ALT_INV_MAIN:clock_count[30]~q\ <= NOT \MAIN:clock_count[30]~q\;
\ALT_INV_MAIN:clock_count[29]~q\ <= NOT \MAIN:clock_count[29]~q\;
\ALT_INV_MAIN:clock_count[28]~q\ <= NOT \MAIN:clock_count[28]~q\;
\ALT_INV_MAIN:clock_count[27]~q\ <= NOT \MAIN:clock_count[27]~q\;
\ALT_INV_MAIN:clock_count[24]~q\ <= NOT \MAIN:clock_count[24]~q\;
\ALT_INV_MAIN:clock_count[31]~q\ <= NOT \MAIN:clock_count[31]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[28]~q\ <= NOT \MAIN:convst_wait_after_counter[28]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[29]~q\ <= NOT \MAIN:convst_wait_after_counter[29]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[30]~q\ <= NOT \MAIN:convst_wait_after_counter[30]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[20]~q\ <= NOT \MAIN:convst_wait_after_counter[20]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[17]~q\ <= NOT \MAIN:convst_wait_after_counter[17]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[27]~q\ <= NOT \MAIN:convst_wait_after_counter[27]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[15]~q\ <= NOT \MAIN:convst_wait_after_counter[15]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[16]~q\ <= NOT \MAIN:convst_wait_after_counter[16]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[11]~q\ <= NOT \MAIN:convst_wait_after_counter[11]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[12]~q\ <= NOT \MAIN:convst_wait_after_counter[12]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[13]~q\ <= NOT \MAIN:convst_wait_after_counter[13]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[14]~q\ <= NOT \MAIN:convst_wait_after_counter[14]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[5]~q\ <= NOT \MAIN:convst_wait_after_counter[5]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[6]~q\ <= NOT \MAIN:convst_wait_after_counter[6]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[7]~q\ <= NOT \MAIN:convst_wait_after_counter[7]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[8]~q\ <= NOT \MAIN:convst_wait_after_counter[8]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[9]~q\ <= NOT \MAIN:convst_wait_after_counter[9]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[10]~q\ <= NOT \MAIN:convst_wait_after_counter[10]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[23]~q\ <= NOT \MAIN:convst_wait_after_counter[23]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[24]~q\ <= NOT \MAIN:convst_wait_after_counter[24]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[25]~q\ <= NOT \MAIN:convst_wait_after_counter[25]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[26]~q\ <= NOT \MAIN:convst_wait_after_counter[26]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[19]~q\ <= NOT \MAIN:convst_wait_after_counter[19]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[18]~q\ <= NOT \MAIN:convst_wait_after_counter[18]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[21]~q\ <= NOT \MAIN:convst_wait_after_counter[21]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[22]~q\ <= NOT \MAIN:convst_wait_after_counter[22]~q\;
\ALT_INV_MAIN:convst_wait_after_counter[31]~q\ <= NOT \MAIN:convst_wait_after_counter[31]~q\;
\ALT_INV_MAIN:wait_counter[22]~q\ <= NOT \MAIN:wait_counter[22]~q\;
\ALT_INV_MAIN:wait_counter[23]~q\ <= NOT \MAIN:wait_counter[23]~q\;
\ALT_INV_MAIN:wait_counter[24]~q\ <= NOT \MAIN:wait_counter[24]~q\;
\ALT_INV_MAIN:wait_counter[25]~q\ <= NOT \MAIN:wait_counter[25]~q\;
\ALT_INV_MAIN:wait_counter[26]~q\ <= NOT \MAIN:wait_counter[26]~q\;
\ALT_INV_MAIN:wait_counter[18]~q\ <= NOT \MAIN:wait_counter[18]~q\;
\ALT_INV_MAIN:wait_counter[15]~q\ <= NOT \MAIN:wait_counter[15]~q\;
\ALT_INV_MAIN:wait_counter[16]~q\ <= NOT \MAIN:wait_counter[16]~q\;
\ALT_INV_MAIN:wait_counter[11]~q\ <= NOT \MAIN:wait_counter[11]~q\;
\ALT_INV_MAIN:wait_counter[12]~q\ <= NOT \MAIN:wait_counter[12]~q\;
\ALT_INV_MAIN:wait_counter[13]~q\ <= NOT \MAIN:wait_counter[13]~q\;
\ALT_INV_MAIN:wait_counter[14]~q\ <= NOT \MAIN:wait_counter[14]~q\;
\ALT_INV_MAIN:wait_counter[5]~q\ <= NOT \MAIN:wait_counter[5]~q\;
\ALT_INV_MAIN:wait_counter[6]~q\ <= NOT \MAIN:wait_counter[6]~q\;
\ALT_INV_MAIN:wait_counter[7]~q\ <= NOT \MAIN:wait_counter[7]~q\;
\ALT_INV_MAIN:wait_counter[8]~q\ <= NOT \MAIN:wait_counter[8]~q\;
\ALT_INV_MAIN:wait_counter[9]~q\ <= NOT \MAIN:wait_counter[9]~q\;
\ALT_INV_MAIN:wait_counter[10]~q\ <= NOT \MAIN:wait_counter[10]~q\;
\ALT_INV_MAIN:wait_counter[30]~q\ <= NOT \MAIN:wait_counter[30]~q\;
\ALT_INV_MAIN:wait_counter[17]~q\ <= NOT \MAIN:wait_counter[17]~q\;
\ALT_INV_MAIN:wait_counter[19]~q\ <= NOT \MAIN:wait_counter[19]~q\;
\ALT_INV_MAIN:wait_counter[20]~q\ <= NOT \MAIN:wait_counter[20]~q\;
\ALT_INV_MAIN:wait_counter[21]~q\ <= NOT \MAIN:wait_counter[21]~q\;
\ALT_INV_MAIN:wait_counter[27]~q\ <= NOT \MAIN:wait_counter[27]~q\;
\ALT_INV_MAIN:wait_counter[28]~q\ <= NOT \MAIN:wait_counter[28]~q\;
\ALT_INV_MAIN:wait_counter[29]~q\ <= NOT \MAIN:wait_counter[29]~q\;
\ALT_INV_MAIN:wait_counter[31]~q\ <= NOT \MAIN:wait_counter[31]~q\;
\ALT_INV_DATA_SEND:send_counter[0]~q\ <= NOT \DATA_SEND:send_counter[0]~q\;
\ALT_INV_DATA_SEND:send_counter[13]~q\ <= NOT \DATA_SEND:send_counter[13]~q\;
\ALT_INV_DATA_SEND:send_counter[12]~q\ <= NOT \DATA_SEND:send_counter[12]~q\;
\ALT_INV_DATA_SEND:send_counter[11]~q\ <= NOT \DATA_SEND:send_counter[11]~q\;
\ALT_INV_DATA_SEND:send_counter[10]~q\ <= NOT \DATA_SEND:send_counter[10]~q\;
\ALT_INV_DATA_SEND:send_counter[9]~q\ <= NOT \DATA_SEND:send_counter[9]~q\;
\ALT_INV_DATA_SEND:send_counter[8]~q\ <= NOT \DATA_SEND:send_counter[8]~q\;
\ALT_INV_DATA_SEND:send_counter[6]~q\ <= NOT \DATA_SEND:send_counter[6]~q\;
\ALT_INV_DATA_SEND:send_counter[5]~q\ <= NOT \DATA_SEND:send_counter[5]~q\;
\ALT_INV_DATA_SEND:send_counter[4]~q\ <= NOT \DATA_SEND:send_counter[4]~q\;
\ALT_INV_DATA_SEND:send_counter[3]~q\ <= NOT \DATA_SEND:send_counter[3]~q\;
\ALT_INV_DATA_SEND:send_counter[18]~q\ <= NOT \DATA_SEND:send_counter[18]~q\;
\ALT_INV_DATA_SEND:send_counter[17]~q\ <= NOT \DATA_SEND:send_counter[17]~q\;
\ALT_INV_DATA_SEND:send_counter[16]~q\ <= NOT \DATA_SEND:send_counter[16]~q\;
\ALT_INV_DATA_SEND:send_counter[15]~q\ <= NOT \DATA_SEND:send_counter[15]~q\;
\ALT_INV_DATA_SEND:send_counter[7]~q\ <= NOT \DATA_SEND:send_counter[7]~q\;
\ALT_INV_DATA_SEND:send_counter[14]~q\ <= NOT \DATA_SEND:send_counter[14]~q\;
\ALT_INV_DATA_SEND:send_counter[24]~q\ <= NOT \DATA_SEND:send_counter[24]~q\;
\ALT_INV_DATA_SEND:send_counter[23]~q\ <= NOT \DATA_SEND:send_counter[23]~q\;
\ALT_INV_DATA_SEND:send_counter[22]~q\ <= NOT \DATA_SEND:send_counter[22]~q\;
\ALT_INV_DATA_SEND:send_counter[21]~q\ <= NOT \DATA_SEND:send_counter[21]~q\;
\ALT_INV_DATA_SEND:send_counter[20]~q\ <= NOT \DATA_SEND:send_counter[20]~q\;
\ALT_INV_DATA_SEND:send_counter[19]~q\ <= NOT \DATA_SEND:send_counter[19]~q\;
\ALT_INV_DATA_SEND:send_counter[30]~q\ <= NOT \DATA_SEND:send_counter[30]~q\;
\ALT_INV_DATA_SEND:send_counter[29]~q\ <= NOT \DATA_SEND:send_counter[29]~q\;
\ALT_INV_DATA_SEND:send_counter[28]~q\ <= NOT \DATA_SEND:send_counter[28]~q\;
\ALT_INV_DATA_SEND:send_counter[27]~q\ <= NOT \DATA_SEND:send_counter[27]~q\;
\ALT_INV_DATA_SEND:send_counter[26]~q\ <= NOT \DATA_SEND:send_counter[26]~q\;
\ALT_INV_DATA_SEND:send_counter[25]~q\ <= NOT \DATA_SEND:send_counter[25]~q\;
\ALT_INV_DATA_SEND:send_counter[31]~q\ <= NOT \DATA_SEND:send_counter[31]~q\;
\ALT_INV_DATA_SEND:send_counter[2]~q\ <= NOT \DATA_SEND:send_counter[2]~q\;
\ALT_INV_DATA_SEND:send_counter[1]~q\ <= NOT \DATA_SEND:send_counter[1]~q\;
\ALT_INV_MAIN:bit_count[3]~q\ <= NOT \MAIN:bit_count[3]~q\;
\ALT_INV_MAIN:bit_count[2]~q\ <= NOT \MAIN:bit_count[2]~q\;
\ALT_INV_MAIN:bit_count[1]~q\ <= NOT \MAIN:bit_count[1]~q\;
\ALT_INV_MAIN:bit_count[0]~q\ <= NOT \MAIN:bit_count[0]~q\;
\ALT_INV_MAIN:bit_count[31]~q\ <= NOT \MAIN:bit_count[31]~q\;
\ALT_INV_MAIN:bit_count[28]~q\ <= NOT \MAIN:bit_count[28]~q\;
\ALT_INV_MAIN:bit_count[20]~q\ <= NOT \MAIN:bit_count[20]~q\;
\ALT_INV_MAIN:bit_count[27]~q\ <= NOT \MAIN:bit_count[27]~q\;
\ALT_INV_MAIN:bit_count[26]~q\ <= NOT \MAIN:bit_count[26]~q\;
\ALT_INV_MAIN:bit_count[25]~q\ <= NOT \MAIN:bit_count[25]~q\;
\ALT_INV_MAIN:bit_count[24]~q\ <= NOT \MAIN:bit_count[24]~q\;
\ALT_INV_MAIN:bit_count[23]~q\ <= NOT \MAIN:bit_count[23]~q\;
\ALT_INV_MAIN:bit_count[22]~q\ <= NOT \MAIN:bit_count[22]~q\;
\ALT_INV_MAIN:bit_count[21]~q\ <= NOT \MAIN:bit_count[21]~q\;
\ALT_INV_MAIN:bit_count[19]~q\ <= NOT \MAIN:bit_count[19]~q\;
\ALT_INV_MAIN:bit_count[18]~q\ <= NOT \MAIN:bit_count[18]~q\;
\ALT_INV_MAIN:bit_count[17]~q\ <= NOT \MAIN:bit_count[17]~q\;
\ALT_INV_MAIN:bit_count[5]~q\ <= NOT \MAIN:bit_count[5]~q\;
\ALT_INV_MAIN:bit_count[4]~q\ <= NOT \MAIN:bit_count[4]~q\;
\ALT_INV_MAIN:bit_count[14]~q\ <= NOT \MAIN:bit_count[14]~q\;
\ALT_INV_MAIN:bit_count[16]~q\ <= NOT \MAIN:bit_count[16]~q\;
\ALT_INV_MAIN:bit_count[30]~q\ <= NOT \MAIN:bit_count[30]~q\;
\ALT_INV_MAIN:bit_count[29]~q\ <= NOT \MAIN:bit_count[29]~q\;
\ALT_INV_MAIN:bit_count[11]~q\ <= NOT \MAIN:bit_count[11]~q\;
\ALT_INV_MAIN:bit_count[10]~q\ <= NOT \MAIN:bit_count[10]~q\;
\ALT_INV_MAIN:bit_count[9]~q\ <= NOT \MAIN:bit_count[9]~q\;
\ALT_INV_MAIN:bit_count[8]~q\ <= NOT \MAIN:bit_count[8]~q\;
\ALT_INV_MAIN:bit_count[7]~q\ <= NOT \MAIN:bit_count[7]~q\;
\ALT_INV_MAIN:bit_count[6]~q\ <= NOT \MAIN:bit_count[6]~q\;
\ALT_INV_MAIN:bit_count[15]~q\ <= NOT \MAIN:bit_count[15]~q\;
\ALT_INV_MAIN:bit_count[13]~q\ <= NOT \MAIN:bit_count[13]~q\;
\ALT_INV_MAIN:bit_count[12]~q\ <= NOT \MAIN:bit_count[12]~q\;
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add2~121_sumout\ <= NOT \Add2~121_sumout\;
\ALT_INV_Add2~117_sumout\ <= NOT \Add2~117_sumout\;
\ALT_INV_Add2~113_sumout\ <= NOT \Add2~113_sumout\;
\ALT_INV_Add2~109_sumout\ <= NOT \Add2~109_sumout\;
\ALT_INV_Add2~105_sumout\ <= NOT \Add2~105_sumout\;
\ALT_INV_Add2~101_sumout\ <= NOT \Add2~101_sumout\;
\ALT_INV_Add2~97_sumout\ <= NOT \Add2~97_sumout\;
\ALT_INV_Add2~93_sumout\ <= NOT \Add2~93_sumout\;
\ALT_INV_Add2~89_sumout\ <= NOT \Add2~89_sumout\;
\ALT_INV_Add2~85_sumout\ <= NOT \Add2~85_sumout\;
\ALT_INV_Add2~81_sumout\ <= NOT \Add2~81_sumout\;
\ALT_INV_Add2~77_sumout\ <= NOT \Add2~77_sumout\;
\ALT_INV_Add2~73_sumout\ <= NOT \Add2~73_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_MAIN:convst_counter[17]~q\ <= NOT \MAIN:convst_counter[17]~q\;
\ALT_INV_MAIN:convst_counter[18]~q\ <= NOT \MAIN:convst_counter[18]~q\;
\ALT_INV_MAIN:convst_counter[19]~q\ <= NOT \MAIN:convst_counter[19]~q\;
\ALT_INV_MAIN:convst_counter[20]~q\ <= NOT \MAIN:convst_counter[20]~q\;
\ALT_INV_MAIN:convst_counter[2]~q\ <= NOT \MAIN:convst_counter[2]~q\;
\ALT_INV_MAIN:convst_counter[3]~q\ <= NOT \MAIN:convst_counter[3]~q\;
\ALT_INV_MAIN:convst_counter[4]~q\ <= NOT \MAIN:convst_counter[4]~q\;
\ALT_INV_MAIN:convst_counter[5]~q\ <= NOT \MAIN:convst_counter[5]~q\;
\ALT_INV_MAIN:convst_counter[6]~q\ <= NOT \MAIN:convst_counter[6]~q\;
\ALT_INV_MAIN:convst_counter[15]~q\ <= NOT \MAIN:convst_counter[15]~q\;
\ALT_INV_MAIN:convst_counter[16]~q\ <= NOT \MAIN:convst_counter[16]~q\;
\ALT_INV_MAIN:convst_counter[21]~q\ <= NOT \MAIN:convst_counter[21]~q\;
\ALT_INV_MAIN:convst_counter[10]~q\ <= NOT \MAIN:convst_counter[10]~q\;
\ALT_INV_MAIN:convst_counter[11]~q\ <= NOT \MAIN:convst_counter[11]~q\;
\ALT_INV_MAIN:convst_counter[12]~q\ <= NOT \MAIN:convst_counter[12]~q\;
\ALT_INV_MAIN:convst_counter[13]~q\ <= NOT \MAIN:convst_counter[13]~q\;
\ALT_INV_MAIN:convst_counter[14]~q\ <= NOT \MAIN:convst_counter[14]~q\;
\ALT_INV_MAIN:convst_counter[29]~q\ <= NOT \MAIN:convst_counter[29]~q\;
\ALT_INV_MAIN:convst_counter[30]~q\ <= NOT \MAIN:convst_counter[30]~q\;
\ALT_INV_MAIN:convst_counter[25]~q\ <= NOT \MAIN:convst_counter[25]~q\;
\ALT_INV_MAIN:convst_counter[7]~q\ <= NOT \MAIN:convst_counter[7]~q\;
\ALT_INV_MAIN:convst_counter[8]~q\ <= NOT \MAIN:convst_counter[8]~q\;
\ALT_INV_MAIN:convst_counter[28]~q\ <= NOT \MAIN:convst_counter[28]~q\;
\ALT_INV_MAIN:convst_counter[9]~q\ <= NOT \MAIN:convst_counter[9]~q\;
\ALT_INV_MAIN:convst_counter[22]~q\ <= NOT \MAIN:convst_counter[22]~q\;
\ALT_INV_MAIN:convst_counter[23]~q\ <= NOT \MAIN:convst_counter[23]~q\;
\ALT_INV_MAIN:convst_counter[24]~q\ <= NOT \MAIN:convst_counter[24]~q\;
\ALT_INV_MAIN:convst_counter[26]~q\ <= NOT \MAIN:convst_counter[26]~q\;
\ALT_INV_MAIN:convst_counter[27]~q\ <= NOT \MAIN:convst_counter[27]~q\;
\ALT_INV_MAIN:convst_counter[31]~q\ <= NOT \MAIN:convst_counter[31]~q\;

-- Location: IOOBUF_X66_Y0_N36
\convst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convst~reg0_q\,
	devoe => ww_devoe,
	o => ww_convst);

-- Location: IOOBUF_X66_Y0_N53
\adc_sck~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_sck~reg0_q\,
	devoe => ww_devoe,
	o => ww_adc_sck);

-- Location: IOOBUF_X15_Y0_N53
\adc_sdi~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_sdi~reg0_q\,
	devoe => ww_devoe,
	o => ww_adc_sdi);

-- Location: IOOBUF_X68_Y14_N45
\outputs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(0));

-- Location: IOOBUF_X68_Y40_N45
\outputs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(1));

-- Location: IOOBUF_X68_Y40_N62
\outputs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(2));

-- Location: IOOBUF_X68_Y32_N62
\outputs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(3));

-- Location: IOOBUF_X68_Y14_N62
\outputs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(4));

-- Location: IOOBUF_X68_Y10_N45
\outputs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(5));

-- Location: IOOBUF_X7_Y0_N2
\outputs[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(6));

-- Location: IOOBUF_X6_Y0_N2
\outputs[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(7));

-- Location: IOOBUF_X68_Y33_N39
\outputs[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(8));

-- Location: IOOBUF_X68_Y33_N56
\outputs[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(9));

-- Location: IOOBUF_X6_Y0_N53
\outputs[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(10));

-- Location: IOOBUF_X57_Y0_N36
\outputs[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outputs(11));

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \quad_segment7_1|LSB_segment7|Mux6~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux3~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux6~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux3~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|second_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux6~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux3~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux6~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux6~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|MSB_segment7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

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

-- Location: LABCELL_X67_Y7_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \MAIN:convst_counter[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~126\ = CARRY(( \MAIN:convst_counter[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[0]~q\,
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: LABCELL_X67_Y6_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \MAIN:convst_counter[22]~q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~22\ = CARRY(( \MAIN:convst_counter[22]~q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[22]~q\,
	cin => \Add0~74\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X67_Y6_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \MAIN:convst_counter[23]~q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \MAIN:convst_counter[23]~q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[23]~q\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

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

-- Location: IOIBUF_X14_Y0_N35
\ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: LABCELL_X63_Y8_N0
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( \MAIN:convst_wait_after_counter[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~126\ = CARRY(( \MAIN:convst_wait_after_counter[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[0]~q\,
	cin => GND,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: LABCELL_X64_Y2_N6
\MAIN:convst_wait_after_counter[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN:convst_wait_after_counter[31]~0_combout\ = ( \state.send~q\ & ( \reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.send~q\,
	combout => \MAIN:convst_wait_after_counter[31]~0_combout\);

-- Location: FF_X63_Y8_N2
\MAIN:convst_wait_after_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[0]~q\);

-- Location: LABCELL_X63_Y8_N3
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \MAIN:convst_wait_after_counter[1]~q\ ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( \MAIN:convst_wait_after_counter[1]~q\ ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[1]~q\,
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X63_Y8_N5
\MAIN:convst_wait_after_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[1]~q\);

-- Location: LABCELL_X63_Y8_N6
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \MAIN:convst_wait_after_counter[2]~q\ ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( \MAIN:convst_wait_after_counter[2]~q\ ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[2]~q\,
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X63_Y8_N8
\MAIN:convst_wait_after_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[2]~q\);

-- Location: LABCELL_X63_Y8_N9
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \MAIN:convst_wait_after_counter[3]~q\ ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( \MAIN:convst_wait_after_counter[3]~q\ ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[3]~q\,
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X63_Y8_N11
\MAIN:convst_wait_after_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[3]~q\);

-- Location: LABCELL_X63_Y8_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \MAIN:convst_wait_after_counter[4]~q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \MAIN:convst_wait_after_counter[4]~q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[4]~q\,
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X63_Y8_N14
\MAIN:convst_wait_after_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[4]~q\);

-- Location: LABCELL_X63_Y8_N15
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \MAIN:convst_wait_after_counter[5]~q\ ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~58\ = CARRY(( \MAIN:convst_wait_after_counter[5]~q\ ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[5]~q\,
	cin => \Add1~110\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X63_Y8_N16
\MAIN:convst_wait_after_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[5]~q\);

-- Location: LABCELL_X63_Y8_N18
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \MAIN:convst_wait_after_counter[6]~q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \MAIN:convst_wait_after_counter[6]~q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[6]~q\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X63_Y8_N19
\MAIN:convst_wait_after_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[6]~q\);

-- Location: LABCELL_X63_Y8_N21
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \MAIN:convst_wait_after_counter[7]~q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \MAIN:convst_wait_after_counter[7]~q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[7]~q\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X63_Y8_N22
\MAIN:convst_wait_after_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[7]~q\);

-- Location: LABCELL_X63_Y8_N24
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \MAIN:convst_wait_after_counter[8]~q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \MAIN:convst_wait_after_counter[8]~q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[8]~q\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X63_Y8_N25
\MAIN:convst_wait_after_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[8]~q\);

-- Location: LABCELL_X63_Y8_N27
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \MAIN:convst_wait_after_counter[9]~q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( \MAIN:convst_wait_after_counter[9]~q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[9]~q\,
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X63_Y8_N28
\MAIN:convst_wait_after_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[9]~q\);

-- Location: LABCELL_X63_Y8_N30
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \MAIN:convst_wait_after_counter[10]~q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( \MAIN:convst_wait_after_counter[10]~q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[10]~q\,
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X63_Y8_N31
\MAIN:convst_wait_after_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[10]~q\);

-- Location: LABCELL_X63_Y8_N33
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \MAIN:convst_wait_after_counter[11]~q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~74\ = CARRY(( \MAIN:convst_wait_after_counter[11]~q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[11]~q\,
	cin => \Add1~38\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X63_Y8_N34
\MAIN:convst_wait_after_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[11]~q\);

-- Location: LABCELL_X63_Y8_N36
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \MAIN:convst_wait_after_counter[12]~q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \MAIN:convst_wait_after_counter[12]~q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[12]~q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X63_Y8_N37
\MAIN:convst_wait_after_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[12]~q\);

-- Location: LABCELL_X63_Y8_N39
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \MAIN:convst_wait_after_counter[13]~q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \MAIN:convst_wait_after_counter[13]~q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[13]~q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X63_Y8_N40
\MAIN:convst_wait_after_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[13]~q\);

-- Location: LABCELL_X63_Y8_N42
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \MAIN:convst_wait_after_counter[14]~q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \MAIN:convst_wait_after_counter[14]~q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[14]~q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X63_Y8_N43
\MAIN:convst_wait_after_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[14]~q\);

-- Location: LABCELL_X63_Y8_N45
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \MAIN:convst_wait_after_counter[15]~q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~82\ = CARRY(( \MAIN:convst_wait_after_counter[15]~q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[15]~q\,
	cin => \Add1~62\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X63_Y8_N46
\MAIN:convst_wait_after_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[15]~q\);

-- Location: LABCELL_X63_Y8_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \MAIN:convst_wait_after_counter[16]~q\ ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( \MAIN:convst_wait_after_counter[16]~q\ ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[16]~q\,
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X63_Y8_N50
\MAIN:convst_wait_after_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[16]~q\);

-- Location: LABCELL_X63_Y8_N51
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \MAIN:convst_wait_after_counter[17]~q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~90\ = CARRY(( \MAIN:convst_wait_after_counter[17]~q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[17]~q\,
	cin => \Add1~78\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X63_Y8_N52
\MAIN:convst_wait_after_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[17]~q\);

-- Location: LABCELL_X63_Y8_N54
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \MAIN:convst_wait_after_counter[18]~q\ ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~14\ = CARRY(( \MAIN:convst_wait_after_counter[18]~q\ ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[18]~q\,
	cin => \Add1~90\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X63_Y8_N56
\MAIN:convst_wait_after_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[18]~q\);

-- Location: LABCELL_X63_Y8_N57
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \MAIN:convst_wait_after_counter[19]~q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \MAIN:convst_wait_after_counter[19]~q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[19]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X63_Y8_N58
\MAIN:convst_wait_after_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[19]~q\);

-- Location: LABCELL_X63_Y7_N0
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \MAIN:convst_wait_after_counter[20]~q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~94\ = CARRY(( \MAIN:convst_wait_after_counter[20]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[20]~q\,
	cin => \Add1~18\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X63_Y7_N2
\MAIN:convst_wait_after_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[20]~q\);

-- Location: LABCELL_X63_Y7_N3
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \MAIN:convst_wait_after_counter[21]~q\ ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~10\ = CARRY(( \MAIN:convst_wait_after_counter[21]~q\ ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[21]~q\,
	cin => \Add1~94\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X63_Y7_N5
\MAIN:convst_wait_after_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[21]~q\);

-- Location: LABCELL_X63_Y7_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \MAIN:convst_wait_after_counter[22]~q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \MAIN:convst_wait_after_counter[22]~q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[22]~q\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X63_Y7_N8
\MAIN:convst_wait_after_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[22]~q\);

-- Location: LABCELL_X63_Y7_N9
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \MAIN:convst_wait_after_counter[23]~q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~34\ = CARRY(( \MAIN:convst_wait_after_counter[23]~q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[23]~q\,
	cin => \Add1~6\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X63_Y7_N10
\MAIN:convst_wait_after_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[23]~q\);

-- Location: LABCELL_X63_Y7_N12
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \MAIN:convst_wait_after_counter[24]~q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( \MAIN:convst_wait_after_counter[24]~q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[24]~q\,
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X63_Y7_N14
\MAIN:convst_wait_after_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[24]~q\);

-- Location: LABCELL_X63_Y7_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \MAIN:convst_wait_after_counter[25]~q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( \MAIN:convst_wait_after_counter[25]~q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[25]~q\,
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X63_Y7_N17
\MAIN:convst_wait_after_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[25]~q\);

-- Location: LABCELL_X63_Y7_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \MAIN:convst_wait_after_counter[26]~q\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \MAIN:convst_wait_after_counter[26]~q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[26]~q\,
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X63_Y7_N20
\MAIN:convst_wait_after_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[26]~q\);

-- Location: LABCELL_X63_Y7_N21
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \MAIN:convst_wait_after_counter[27]~q\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~86\ = CARRY(( \MAIN:convst_wait_after_counter[27]~q\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[27]~q\,
	cin => \Add1~22\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X63_Y7_N23
\MAIN:convst_wait_after_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[27]~q\);

-- Location: LABCELL_X63_Y7_N24
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \MAIN:convst_wait_after_counter[28]~q\ ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~106\ = CARRY(( \MAIN:convst_wait_after_counter[28]~q\ ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[28]~q\,
	cin => \Add1~86\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X63_Y7_N25
\MAIN:convst_wait_after_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[28]~q\);

-- Location: LABCELL_X63_Y7_N27
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \MAIN:convst_wait_after_counter[29]~q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \MAIN:convst_wait_after_counter[29]~q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[29]~q\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X63_Y7_N29
\MAIN:convst_wait_after_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[29]~q\);

-- Location: LABCELL_X63_Y7_N30
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \MAIN:convst_wait_after_counter[30]~q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \MAIN:convst_wait_after_counter[30]~q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[30]~q\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X63_Y7_N32
\MAIN:convst_wait_after_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[30]~q\);

-- Location: LABCELL_X63_Y7_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \MAIN:convst_wait_after_counter[31]~q\ ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_wait_after_counter[31]~q\,
	cin => \Add1~98\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X63_Y7_N35
\MAIN:convst_wait_after_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan1~8_combout\,
	ena => \MAIN:convst_wait_after_counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_wait_after_counter[31]~q\);

-- Location: LABCELL_X63_Y7_N36
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !\MAIN:convst_wait_after_counter[25]~q\ & ( (!\MAIN:convst_wait_after_counter[23]~q\ & (!\MAIN:convst_wait_after_counter[24]~q\ & (!\MAIN:convst_wait_after_counter[26]~q\ & !\MAIN:convst_wait_after_counter[19]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_wait_after_counter[23]~q\,
	datab => \ALT_INV_MAIN:convst_wait_after_counter[24]~q\,
	datac => \ALT_INV_MAIN:convst_wait_after_counter[26]~q\,
	datad => \ALT_INV_MAIN:convst_wait_after_counter[19]~q\,
	dataf => \ALT_INV_MAIN:convst_wait_after_counter[25]~q\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X63_Y7_N48
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( !\MAIN:convst_wait_after_counter[20]~q\ & ( !\MAIN:convst_wait_after_counter[17]~q\ & ( (!\MAIN:convst_wait_after_counter[27]~q\ & (!\MAIN:convst_wait_after_counter[28]~q\ & (!\MAIN:convst_wait_after_counter[29]~q\ & 
-- !\MAIN:convst_wait_after_counter[30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_wait_after_counter[27]~q\,
	datab => \ALT_INV_MAIN:convst_wait_after_counter[28]~q\,
	datac => \ALT_INV_MAIN:convst_wait_after_counter[29]~q\,
	datad => \ALT_INV_MAIN:convst_wait_after_counter[30]~q\,
	datae => \ALT_INV_MAIN:convst_wait_after_counter[20]~q\,
	dataf => \ALT_INV_MAIN:convst_wait_after_counter[17]~q\,
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X63_Y7_N39
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\MAIN:convst_wait_after_counter[18]~q\ & !\MAIN:convst_wait_after_counter[21]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:convst_wait_after_counter[18]~q\,
	datad => \ALT_INV_MAIN:convst_wait_after_counter[21]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X63_Y7_N57
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( \MAIN:convst_wait_after_counter[16]~q\ & ( \MAIN:convst_wait_after_counter[15]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:convst_wait_after_counter[15]~q\,
	dataf => \ALT_INV_MAIN:convst_wait_after_counter[16]~q\,
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X64_Y8_N57
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !\MAIN:convst_wait_after_counter[11]~q\ & ( !\MAIN:convst_wait_after_counter[12]~q\ & ( (!\MAIN:convst_wait_after_counter[13]~q\ & !\MAIN:convst_wait_after_counter[14]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_wait_after_counter[13]~q\,
	datac => \ALT_INV_MAIN:convst_wait_after_counter[14]~q\,
	datae => \ALT_INV_MAIN:convst_wait_after_counter[11]~q\,
	dataf => \ALT_INV_MAIN:convst_wait_after_counter[12]~q\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X64_Y8_N24
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !\MAIN:convst_wait_after_counter[7]~q\ & ( \MAIN:convst_wait_after_counter[5]~q\ & ( !\MAIN:convst_wait_after_counter[8]~q\ ) ) ) # ( \MAIN:convst_wait_after_counter[7]~q\ & ( !\MAIN:convst_wait_after_counter[5]~q\ & ( 
-- (!\MAIN:convst_wait_after_counter[8]~q\ & !\MAIN:convst_wait_after_counter[6]~q\) ) ) ) # ( !\MAIN:convst_wait_after_counter[7]~q\ & ( !\MAIN:convst_wait_after_counter[5]~q\ & ( !\MAIN:convst_wait_after_counter[8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:convst_wait_after_counter[8]~q\,
	datad => \ALT_INV_MAIN:convst_wait_after_counter[6]~q\,
	datae => \ALT_INV_MAIN:convst_wait_after_counter[7]~q\,
	dataf => \ALT_INV_MAIN:convst_wait_after_counter[5]~q\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X64_Y8_N36
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( \LessThan1~3_combout\ & ( \LessThan1~2_combout\ ) ) # ( \LessThan1~3_combout\ & ( !\LessThan1~2_combout\ & ( (!\MAIN:convst_wait_after_counter[9]~q\) # (!\MAIN:convst_wait_after_counter[10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_wait_after_counter[9]~q\,
	datac => \ALT_INV_MAIN:convst_wait_after_counter[10]~q\,
	datae => \ALT_INV_LessThan1~3_combout\,
	dataf => \ALT_INV_LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X63_Y7_N42
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \LessThan1~5_combout\ & ( \LessThan1~4_combout\ & ( (\LessThan1~1_combout\ & (!\MAIN:convst_wait_after_counter[22]~q\ & (\LessThan1~6_combout\ & \LessThan1~0_combout\))) ) ) ) # ( !\LessThan1~5_combout\ & ( \LessThan1~4_combout\ 
-- & ( (\LessThan1~1_combout\ & (!\MAIN:convst_wait_after_counter[22]~q\ & (\LessThan1~6_combout\ & \LessThan1~0_combout\))) ) ) ) # ( !\LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( (\LessThan1~1_combout\ & (!\MAIN:convst_wait_after_counter[22]~q\ & 
-- (\LessThan1~6_combout\ & \LessThan1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_MAIN:convst_wait_after_counter[22]~q\,
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_LessThan1~5_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LABCELL_X63_Y7_N54
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( !\LessThan1~7_combout\ & ( !\MAIN:convst_wait_after_counter[31]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:convst_wait_after_counter[31]~q\,
	dataf => \ALT_INV_LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X64_Y2_N18
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \LessThan0~7_combout\ & ( ((!\LessThan1~8_combout\ & \state.send~q\)) # (\state.start_conversion~q\) ) ) # ( !\LessThan0~7_combout\ & ( (!\LessThan1~8_combout\ & \state.send~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan1~8_combout\,
	datac => \ALT_INV_state.start_conversion~q\,
	datad => \ALT_INV_state.send~q\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X64_Y2_N20
\state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.send~q\);

-- Location: LABCELL_X63_Y3_N15
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( \MAIN:bit_count[25]~q\ ) + ( GND ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( \MAIN:bit_count[25]~q\ ) + ( GND ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[25]~q\,
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: LABCELL_X63_Y3_N18
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( \MAIN:bit_count[26]~q\ ) + ( GND ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( \MAIN:bit_count[26]~q\ ) + ( GND ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[26]~q\,
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: LABCELL_X64_Y2_N48
\MAIN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~3_combout\ = ( !\MAIN:bit_count[18]~q\ & ( !\MAIN:bit_count[21]~q\ & ( (!\MAIN:bit_count[23]~q\ & (!\MAIN:bit_count[17]~q\ & (!\MAIN:bit_count[22]~q\ & !\MAIN:bit_count[19]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[23]~q\,
	datab => \ALT_INV_MAIN:bit_count[17]~q\,
	datac => \ALT_INV_MAIN:bit_count[22]~q\,
	datad => \ALT_INV_MAIN:bit_count[19]~q\,
	datae => \ALT_INV_MAIN:bit_count[18]~q\,
	dataf => \ALT_INV_MAIN:bit_count[21]~q\,
	combout => \MAIN~3_combout\);

-- Location: LABCELL_X64_Y2_N42
\MAIN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~2_combout\ = ( !\MAIN:bit_count[30]~q\ & ( !\MAIN:bit_count[14]~q\ & ( (!\MAIN:bit_count[16]~q\ & (!\MAIN:bit_count[29]~q\ & (!\MAIN:bit_count[5]~q\ & !\MAIN:bit_count[4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[16]~q\,
	datab => \ALT_INV_MAIN:bit_count[29]~q\,
	datac => \ALT_INV_MAIN:bit_count[5]~q\,
	datad => \ALT_INV_MAIN:bit_count[4]~q\,
	datae => \ALT_INV_MAIN:bit_count[30]~q\,
	dataf => \ALT_INV_MAIN:bit_count[14]~q\,
	combout => \MAIN~2_combout\);

-- Location: LABCELL_X64_Y2_N21
\MAIN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~0_combout\ = ( !\MAIN:bit_count[12]~q\ & ( (!\MAIN:bit_count[13]~q\ & !\MAIN:bit_count[15]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:bit_count[13]~q\,
	datad => \ALT_INV_MAIN:bit_count[15]~q\,
	dataf => \ALT_INV_MAIN:bit_count[12]~q\,
	combout => \MAIN~0_combout\);

-- Location: LABCELL_X64_Y2_N0
\MAIN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~1_combout\ = ( !\MAIN:bit_count[8]~q\ & ( !\MAIN:bit_count[10]~q\ & ( (!\MAIN:bit_count[9]~q\ & (!\MAIN:bit_count[11]~q\ & (!\MAIN:bit_count[6]~q\ & !\MAIN:bit_count[7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[9]~q\,
	datab => \ALT_INV_MAIN:bit_count[11]~q\,
	datac => \ALT_INV_MAIN:bit_count[6]~q\,
	datad => \ALT_INV_MAIN:bit_count[7]~q\,
	datae => \ALT_INV_MAIN:bit_count[8]~q\,
	dataf => \ALT_INV_MAIN:bit_count[10]~q\,
	combout => \MAIN~1_combout\);

-- Location: LABCELL_X64_Y2_N54
\MAIN~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~7_combout\ = ( \MAIN~1_combout\ & ( \MAIN~6_combout\ & ( (\MAIN~3_combout\ & (\MAIN~2_combout\ & (\MAIN~4_combout\ & \MAIN~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN~3_combout\,
	datab => \ALT_INV_MAIN~2_combout\,
	datac => \ALT_INV_MAIN~4_combout\,
	datad => \ALT_INV_MAIN~0_combout\,
	datae => \ALT_INV_MAIN~1_combout\,
	dataf => \ALT_INV_MAIN~6_combout\,
	combout => \MAIN~7_combout\);

-- Location: LABCELL_X64_Y2_N9
\MAIN:clock_count[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN:clock_count[31]~0_combout\ = ( \MAIN~5_combout\ & ( (\reset_n~input_o\ & (!\MAIN~6_combout\ & \state.wait_while_busy~q\)) ) ) # ( !\MAIN~5_combout\ & ( (\reset_n~input_o\ & \state.wait_while_busy~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_MAIN~6_combout\,
	datad => \ALT_INV_state.wait_while_busy~q\,
	dataf => \ALT_INV_MAIN~5_combout\,
	combout => \MAIN:clock_count[31]~0_combout\);

-- Location: FF_X64_Y3_N29
\MAIN:clock_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[29]~q\);

-- Location: LABCELL_X64_Y4_N0
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( \MAIN:clock_count[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add2~114\ = CARRY(( \MAIN:clock_count[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[0]~q\,
	cin => GND,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X64_Y4_N2
\MAIN:clock_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[0]~q\);

-- Location: LABCELL_X64_Y4_N3
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( \MAIN:clock_count[1]~q\ ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( \MAIN:clock_count[1]~q\ ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[1]~q\,
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: LABCELL_X64_Y4_N6
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \MAIN:clock_count[2]~q\ ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~46\ = CARRY(( \MAIN:clock_count[2]~q\ ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[2]~q\,
	cin => \Add2~118\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X64_Y4_N8
\MAIN:clock_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[2]~q\);

-- Location: LABCELL_X64_Y4_N9
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( \MAIN:clock_count[3]~q\ ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~122\ = CARRY(( \MAIN:clock_count[3]~q\ ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[3]~q\,
	cin => \Add2~46\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X64_Y4_N11
\MAIN:clock_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[3]~q\);

-- Location: LABCELL_X64_Y4_N12
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \MAIN:clock_count[4]~q\ ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~50\ = CARRY(( \MAIN:clock_count[4]~q\ ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[4]~q\,
	cin => \Add2~122\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X64_Y4_N14
\MAIN:clock_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[4]~q\);

-- Location: LABCELL_X64_Y4_N15
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( \MAIN:clock_count[5]~q\ ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~126\ = CARRY(( \MAIN:clock_count[5]~q\ ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[5]~q\,
	cin => \Add2~50\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X64_Y4_N17
\MAIN:clock_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~125_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[5]~q\);

-- Location: LABCELL_X64_Y4_N18
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \MAIN:clock_count[6]~q\ ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~54\ = CARRY(( \MAIN:clock_count[6]~q\ ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[6]~q\,
	cin => \Add2~126\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X64_Y4_N20
\MAIN:clock_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[6]~q\);

-- Location: LABCELL_X64_Y4_N21
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \MAIN:clock_count[7]~q\ ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( \MAIN:clock_count[7]~q\ ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[7]~q\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X64_Y4_N23
\MAIN:clock_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[7]~q\);

-- Location: LABCELL_X64_Y4_N24
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \MAIN:clock_count[8]~q\ ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( \MAIN:clock_count[8]~q\ ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[8]~q\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X64_Y4_N26
\MAIN:clock_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[8]~q\);

-- Location: LABCELL_X64_Y4_N27
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \MAIN:clock_count[9]~q\ ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( \MAIN:clock_count[9]~q\ ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[9]~q\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X64_Y4_N29
\MAIN:clock_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[9]~q\);

-- Location: LABCELL_X64_Y4_N30
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( \MAIN:clock_count[10]~q\ ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~90\ = CARRY(( \MAIN:clock_count[10]~q\ ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[10]~q\,
	cin => \Add2~66\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X64_Y4_N32
\MAIN:clock_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[10]~q\);

-- Location: LABCELL_X64_Y4_N33
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( \MAIN:clock_count[11]~q\ ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( \MAIN:clock_count[11]~q\ ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[11]~q\,
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X64_Y4_N35
\MAIN:clock_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[11]~q\);

-- Location: LABCELL_X64_Y4_N36
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( \MAIN:clock_count[12]~q\ ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( \MAIN:clock_count[12]~q\ ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[12]~q\,
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X64_Y4_N38
\MAIN:clock_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[12]~q\);

-- Location: LABCELL_X64_Y4_N39
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( \MAIN:clock_count[13]~q\ ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( \MAIN:clock_count[13]~q\ ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[13]~q\,
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X64_Y4_N41
\MAIN:clock_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[13]~q\);

-- Location: LABCELL_X64_Y4_N42
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \MAIN:clock_count[14]~q\ ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~26\ = CARRY(( \MAIN:clock_count[14]~q\ ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[14]~q\,
	cin => \Add2~102\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X64_Y4_N44
\MAIN:clock_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[14]~q\);

-- Location: LABCELL_X64_Y4_N45
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( \MAIN:clock_count[15]~q\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~106\ = CARRY(( \MAIN:clock_count[15]~q\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[15]~q\,
	cin => \Add2~26\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X64_Y4_N47
\MAIN:clock_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[15]~q\);

-- Location: LABCELL_X64_Y4_N48
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( \MAIN:clock_count[16]~q\ ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( \MAIN:clock_count[16]~q\ ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[16]~q\,
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X64_Y4_N50
\MAIN:clock_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[16]~q\);

-- Location: LABCELL_X64_Y4_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \MAIN:clock_count[17]~q\ ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~30\ = CARRY(( \MAIN:clock_count[17]~q\ ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[17]~q\,
	cin => \Add2~110\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X64_Y4_N53
\MAIN:clock_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[17]~q\);

-- Location: LABCELL_X64_Y4_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \MAIN:clock_count[18]~q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \MAIN:clock_count[18]~q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[18]~q\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X64_Y4_N56
\MAIN:clock_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[18]~q\);

-- Location: LABCELL_X64_Y4_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \MAIN:clock_count[19]~q\ ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \MAIN:clock_count[19]~q\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[19]~q\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X64_Y4_N59
\MAIN:clock_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[19]~q\);

-- Location: LABCELL_X64_Y3_N0
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \MAIN:clock_count[20]~q\ ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \MAIN:clock_count[20]~q\ ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[20]~q\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X64_Y3_N38
\MAIN:clock_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~41_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[20]~q\);

-- Location: LABCELL_X64_Y3_N3
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \MAIN:clock_count[21]~q\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~70\ = CARRY(( \MAIN:clock_count[21]~q\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:clock_count[21]~q\,
	cin => \Add2~42\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X64_Y3_N41
\MAIN:clock_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~69_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[21]~q\);

-- Location: LABCELL_X64_Y3_N6
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \MAIN:clock_count[22]~q\ ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( \MAIN:clock_count[22]~q\ ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:clock_count[22]~q\,
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X64_Y3_N44
\MAIN:clock_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~73_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[22]~q\);

-- Location: LABCELL_X64_Y3_N9
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( \MAIN:clock_count[23]~q\ ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( \MAIN:clock_count[23]~q\ ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:clock_count[23]~q\,
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X64_Y3_N50
\MAIN:clock_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~77_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[23]~q\);

-- Location: LABCELL_X64_Y3_N12
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \MAIN:clock_count[24]~q\ ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~6\ = CARRY(( \MAIN:clock_count[24]~q\ ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:clock_count[24]~q\,
	cin => \Add2~78\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X64_Y3_N53
\MAIN:clock_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~5_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[24]~q\);

-- Location: LABCELL_X64_Y3_N15
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \MAIN:clock_count[25]~q\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~82\ = CARRY(( \MAIN:clock_count[25]~q\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:clock_count[25]~q\,
	cin => \Add2~6\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X64_Y3_N46
\MAIN:clock_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~81_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[25]~q\);

-- Location: LABCELL_X64_Y3_N18
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( \MAIN:clock_count[26]~q\ ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( \MAIN:clock_count[26]~q\ ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:clock_count[26]~q\,
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X64_Y3_N10
\MAIN:clock_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~85_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[26]~q\);

-- Location: LABCELL_X64_Y3_N21
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \MAIN:clock_count[27]~q\ ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~10\ = CARRY(( \MAIN:clock_count[27]~q\ ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:clock_count[27]~q\,
	cin => \Add2~86\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X64_Y3_N4
\MAIN:clock_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~9_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[27]~q\);

-- Location: LABCELL_X64_Y3_N24
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \MAIN:clock_count[28]~q\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \MAIN:clock_count[28]~q\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[28]~q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X64_Y3_N16
\MAIN:clock_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~13_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[28]~q\);

-- Location: LABCELL_X64_Y3_N27
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \MAIN:clock_count[29]~q\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \MAIN:clock_count[29]~q\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[29]~q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X64_Y3_N23
\MAIN:clock_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~21_sumout\,
	sclr => \Equal2~1_combout\,
	sload => VCC,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[30]~q\);

-- Location: LABCELL_X64_Y3_N30
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \MAIN:clock_count[30]~q\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \MAIN:clock_count[30]~q\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:clock_count[30]~q\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X64_Y3_N35
\MAIN:clock_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[31]~q\);

-- Location: LABCELL_X64_Y3_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \MAIN:clock_count[31]~q\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:clock_count[31]~q\,
	cin => \Add2~22\,
	sumout => \Add2~1_sumout\);

-- Location: LABCELL_X65_Y3_N24
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Add2~105_sumout\ & ( !\Add2~109_sumout\ & ( (!\Add2~89_sumout\ & (!\Add2~97_sumout\ & (!\Add2~93_sumout\ & !\Add2~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~89_sumout\,
	datab => \ALT_INV_Add2~97_sumout\,
	datac => \ALT_INV_Add2~93_sumout\,
	datad => \ALT_INV_Add2~101_sumout\,
	datae => \ALT_INV_Add2~105_sumout\,
	dataf => \ALT_INV_Add2~109_sumout\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X64_Y3_N45
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !\Add2~69_sumout\ & ( \Equal1~2_combout\ & ( (!\Add2~73_sumout\ & (!\Add2~81_sumout\ & (!\Add2~77_sumout\ & !\Add2~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~73_sumout\,
	datab => \ALT_INV_Add2~81_sumout\,
	datac => \ALT_INV_Add2~77_sumout\,
	datad => \ALT_INV_Add2~85_sumout\,
	datae => \ALT_INV_Add2~69_sumout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X65_Y3_N36
\Equal1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = ( !\Add2~57_sumout\ & ( !\Add2~25_sumout\ & ( (!\Add2~61_sumout\ & (\Add2~49_sumout\ & (!\Add2~53_sumout\ & !\Add2~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~61_sumout\,
	datab => \ALT_INV_Add2~49_sumout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \ALT_INV_Add2~45_sumout\,
	datae => \ALT_INV_Add2~57_sumout\,
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \Equal1~10_combout\);

-- Location: LABCELL_X65_Y3_N18
\Equal1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = ( !\Add2~29_sumout\ & ( !\Add2~37_sumout\ & ( (!\Add2~33_sumout\ & !\Add2~65_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~33_sumout\,
	datac => \ALT_INV_Add2~65_sumout\,
	datae => \ALT_INV_Add2~29_sumout\,
	dataf => \ALT_INV_Add2~37_sumout\,
	combout => \Equal1~11_combout\);

-- Location: LABCELL_X65_Y3_N45
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( !\Add2~9_sumout\ & ( \Equal1~11_combout\ & ( (\Equal1~10_combout\ & (!\Add2~41_sumout\ & (!\Add2~13_sumout\ & !\Add2~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~10_combout\,
	datab => \ALT_INV_Add2~41_sumout\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \ALT_INV_Add2~5_sumout\,
	datae => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_Equal1~11_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X64_Y3_N39
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \Equal1~3_combout\ & ( \Equal1~6_combout\ & ( (!\Add2~17_sumout\ & (\Equal2~0_combout\ & (!\Add2~21_sumout\ & !\Add2~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~17_sumout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Add2~21_sumout\,
	datad => \ALT_INV_Add2~1_sumout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \Equal2~1_combout\);

-- Location: FF_X64_Y4_N5
\MAIN:clock_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	sclr => \Equal2~1_combout\,
	ena => \MAIN:clock_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:clock_count[1]~q\);

-- Location: LABCELL_X65_Y4_N15
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\Add2~121_sumout\ & ( \Add2~125_sumout\ & ( (\Add2~117_sumout\ & !\Add2~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~117_sumout\,
	datac => \ALT_INV_Add2~113_sumout\,
	datae => \ALT_INV_Add2~121_sumout\,
	dataf => \ALT_INV_Add2~125_sumout\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X63_Y3_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\Add2~65_sumout\ & ( !\Add2~61_sumout\ & ( (!\Add2~57_sumout\ & (!\Add2~45_sumout\ & (\Add2~49_sumout\ & !\Add2~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~57_sumout\,
	datab => \ALT_INV_Add2~45_sumout\,
	datac => \ALT_INV_Add2~49_sumout\,
	datad => \ALT_INV_Add2~53_sumout\,
	datae => \ALT_INV_Add2~65_sumout\,
	dataf => \ALT_INV_Add2~61_sumout\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X63_Y3_N54
\Equal1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = ( !\Add2~37_sumout\ & ( !\Add2~5_sumout\ & ( (!\Add2~41_sumout\ & (!\Add2~25_sumout\ & (!\Add2~33_sumout\ & !\Add2~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~41_sumout\,
	datab => \ALT_INV_Add2~25_sumout\,
	datac => \ALT_INV_Add2~33_sumout\,
	datad => \ALT_INV_Add2~29_sumout\,
	datae => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \Equal1~9_combout\);

-- Location: LABCELL_X63_Y3_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\Add2~17_sumout\ & ( !\Add2~21_sumout\ & ( (!\Add2~9_sumout\ & (\Equal1~0_combout\ & (\Equal1~9_combout\ & !\Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~9_sumout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~9_combout\,
	datad => \ALT_INV_Add2~13_sumout\,
	datae => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X64_Y3_N54
\Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = ( !\Add2~69_sumout\ & ( !\Add2~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~69_sumout\,
	dataf => \ALT_INV_Add2~73_sumout\,
	combout => \Equal1~8_combout\);

-- Location: LABCELL_X65_Y3_N27
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( !\Add2~105_sumout\ & ( !\Add2~109_sumout\ & ( (!\Add2~89_sumout\ & (!\Add2~97_sumout\ & (!\Add2~101_sumout\ & !\Add2~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~89_sumout\,
	datab => \ALT_INV_Add2~97_sumout\,
	datac => \ALT_INV_Add2~101_sumout\,
	datad => \ALT_INV_Add2~93_sumout\,
	datae => \ALT_INV_Add2~105_sumout\,
	dataf => \ALT_INV_Add2~109_sumout\,
	combout => \Equal1~7_combout\);

-- Location: LABCELL_X64_Y3_N51
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( \Equal1~7_combout\ & ( !\Add2~1_sumout\ & ( (!\Add2~85_sumout\ & (!\Add2~77_sumout\ & (!\Add2~81_sumout\ & \Equal1~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~85_sumout\,
	datab => \ALT_INV_Add2~77_sumout\,
	datac => \ALT_INV_Add2~81_sumout\,
	datad => \ALT_INV_Equal1~8_combout\,
	datae => \ALT_INV_Equal1~7_combout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X63_Y3_N42
\MAIN:bit_count[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN:bit_count[17]~0_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\reset_n~input_o\ & (\state.wait_while_busy~q\ & ((\MAIN~7_combout\) # (\Equal2~0_combout\)))) ) ) ) # ( !\Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\MAIN~7_combout\ & 
-- (\reset_n~input_o\ & \state.wait_while_busy~q\)) ) ) ) # ( \Equal1~1_combout\ & ( !\Equal1~5_combout\ & ( (\MAIN~7_combout\ & (\reset_n~input_o\ & \state.wait_while_busy~q\)) ) ) ) # ( !\Equal1~1_combout\ & ( !\Equal1~5_combout\ & ( (\MAIN~7_combout\ & 
-- (\reset_n~input_o\ & \state.wait_while_busy~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_MAIN~7_combout\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_state.wait_while_busy~q\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \MAIN:bit_count[17]~0_combout\);

-- Location: FF_X63_Y3_N20
\MAIN:bit_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~93_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[26]~q\);

-- Location: LABCELL_X63_Y3_N21
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( \MAIN:bit_count[27]~q\ ) + ( GND ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( \MAIN:bit_count[27]~q\ ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[27]~q\,
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X63_Y3_N22
\MAIN:bit_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~97_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[27]~q\);

-- Location: LABCELL_X63_Y3_N24
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( \MAIN:bit_count[28]~q\ ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~106\ = CARRY(( \MAIN:bit_count[28]~q\ ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[28]~q\,
	cin => \Add3~98\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: FF_X63_Y3_N26
\MAIN:bit_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~105_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[28]~q\);

-- Location: LABCELL_X63_Y3_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \MAIN:bit_count[29]~q\ ) + ( GND ) + ( \Add3~106\ ))
-- \Add3~38\ = CARRY(( \MAIN:bit_count[29]~q\ ) + ( GND ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[29]~q\,
	cin => \Add3~106\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X63_Y3_N28
\MAIN:bit_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[29]~q\);

-- Location: LABCELL_X63_Y3_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \MAIN:bit_count[30]~q\ ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \MAIN:bit_count[30]~q\ ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[30]~q\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X63_Y3_N31
\MAIN:bit_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~41_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[30]~q\);

-- Location: LABCELL_X63_Y3_N33
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( \MAIN:bit_count[31]~q\ ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[31]~q\,
	cin => \Add3~42\,
	sumout => \Add3~109_sumout\);

-- Location: FF_X63_Y3_N35
\MAIN:bit_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~109_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[31]~q\);

-- Location: LABCELL_X63_Y4_N0
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( \MAIN:bit_count[0]~q\ ) + ( !\adc_sck~reg0_q\ ) + ( !VCC ))
-- \Add3~114\ = CARRY(( \MAIN:bit_count[0]~q\ ) + ( !\adc_sck~reg0_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adc_sck~reg0_q\,
	datad => \ALT_INV_MAIN:bit_count[0]~q\,
	cin => GND,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X63_Y4_N2
\MAIN:bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~113_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[0]~q\);

-- Location: LABCELL_X64_Y2_N24
\MAIN~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~6_combout\ = ( \MAIN:bit_count[2]~q\ & ( !\adc_sck~reg0_q\ & ( (!\MAIN:bit_count[31]~q\ & (!\MAIN:bit_count[0]~q\ & (!\MAIN:bit_count[1]~q\ & \MAIN:bit_count[3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[31]~q\,
	datab => \ALT_INV_MAIN:bit_count[0]~q\,
	datac => \ALT_INV_MAIN:bit_count[1]~q\,
	datad => \ALT_INV_MAIN:bit_count[3]~q\,
	datae => \ALT_INV_MAIN:bit_count[2]~q\,
	dataf => \ALT_INV_adc_sck~reg0_q\,
	combout => \MAIN~6_combout\);

-- Location: LABCELL_X64_Y2_N36
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.wait_while_busy~q\ & ( \MAIN~6_combout\ & ( (!\MAIN~5_combout\) # ((\state.send~q\ & (!\MAIN:convst_wait_after_counter[31]~q\ & !\LessThan1~7_combout\))) ) ) ) # ( !\state.wait_while_busy~q\ & ( \MAIN~6_combout\ & ( 
-- (\state.send~q\ & (!\MAIN:convst_wait_after_counter[31]~q\ & !\LessThan1~7_combout\)) ) ) ) # ( \state.wait_while_busy~q\ & ( !\MAIN~6_combout\ ) ) # ( !\state.wait_while_busy~q\ & ( !\MAIN~6_combout\ & ( (\state.send~q\ & 
-- (!\MAIN:convst_wait_after_counter[31]~q\ & !\LessThan1~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000111111111111111101000100000000001111010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.send~q\,
	datab => \ALT_INV_MAIN:convst_wait_after_counter[31]~q\,
	datac => \ALT_INV_MAIN~5_combout\,
	datad => \ALT_INV_LessThan1~7_combout\,
	datae => \ALT_INV_state.wait_while_busy~q\,
	dataf => \ALT_INV_MAIN~6_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X64_Y2_N38
\state.wait_while_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_while_busy~q\);

-- Location: LABCELL_X65_Y4_N9
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( \Add2~121_sumout\ & ( !\Add2~125_sumout\ & ( (\Add2~113_sumout\ & !\Add2~117_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~113_sumout\,
	datac => \ALT_INV_Add2~117_sumout\,
	datae => \ALT_INV_Add2~121_sumout\,
	dataf => \ALT_INV_Add2~125_sumout\,
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X65_Y3_N6
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \Equal1~3_combout\ & ( \Equal1~1_combout\ & ( !\adc_sck~reg0_q\ $ (((!\Equal2~0_combout\) # ((\Equal1~4_combout\) # (\Add2~1_sumout\)))) ) ) ) # ( !\Equal1~3_combout\ & ( \Equal1~1_combout\ & ( \adc_sck~reg0_q\ ) ) ) # ( 
-- \Equal1~3_combout\ & ( !\Equal1~1_combout\ & ( \adc_sck~reg0_q\ ) ) ) # ( !\Equal1~3_combout\ & ( !\Equal1~1_combout\ & ( \adc_sck~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_adc_sck~reg0_q\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X65_Y3_N51
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \adc_sck~reg0_q\ & ( \Selector1~0_combout\ & ( (!\state.wait_while_busy~q\ & (((\state.initial~q\)))) # (\state.wait_while_busy~q\ & ((!\MAIN~5_combout\) # ((!\MAIN~6_combout\)))) ) ) ) # ( !\adc_sck~reg0_q\ & ( 
-- \Selector1~0_combout\ & ( (\state.wait_while_busy~q\ & ((!\MAIN~5_combout\) # (!\MAIN~6_combout\))) ) ) ) # ( \adc_sck~reg0_q\ & ( !\Selector1~0_combout\ & ( (!\state.wait_while_busy~q\ & \state.initial~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000110010001100100011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN~5_combout\,
	datab => \ALT_INV_state.wait_while_busy~q\,
	datac => \ALT_INV_MAIN~6_combout\,
	datad => \ALT_INV_state.initial~q\,
	datae => \ALT_INV_adc_sck~reg0_q\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X64_Y3_N59
\adc_sck~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector1~1_combout\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_sck~reg0_q\);

-- Location: LABCELL_X63_Y4_N3
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( \MAIN:bit_count[1]~q\ ) + ( GND ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( \MAIN:bit_count[1]~q\ ) + ( GND ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[1]~q\,
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X63_Y4_N5
\MAIN:bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~117_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[1]~q\);

-- Location: LABCELL_X63_Y4_N6
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( \MAIN:bit_count[2]~q\ ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( \MAIN:bit_count[2]~q\ ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[2]~q\,
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X63_Y4_N8
\MAIN:bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~121_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[2]~q\);

-- Location: LABCELL_X63_Y4_N9
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( \MAIN:bit_count[3]~q\ ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~126\ = CARRY(( \MAIN:bit_count[3]~q\ ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[3]~q\,
	cin => \Add3~122\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: FF_X63_Y4_N11
\MAIN:bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~125_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[3]~q\);

-- Location: LABCELL_X63_Y4_N12
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \MAIN:bit_count[4]~q\ ) + ( GND ) + ( \Add3~126\ ))
-- \Add3~54\ = CARRY(( \MAIN:bit_count[4]~q\ ) + ( GND ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[4]~q\,
	cin => \Add3~126\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X63_Y4_N13
\MAIN:bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~53_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[4]~q\);

-- Location: LABCELL_X63_Y4_N15
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \MAIN:bit_count[5]~q\ ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( \MAIN:bit_count[5]~q\ ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[5]~q\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X63_Y4_N17
\MAIN:bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~57_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[5]~q\);

-- Location: LABCELL_X63_Y4_N18
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \MAIN:bit_count[6]~q\ ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~14\ = CARRY(( \MAIN:bit_count[6]~q\ ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[6]~q\,
	cin => \Add3~58\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X63_Y4_N19
\MAIN:bit_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[6]~q\);

-- Location: LABCELL_X63_Y4_N21
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \MAIN:bit_count[7]~q\ ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \MAIN:bit_count[7]~q\ ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[7]~q\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X63_Y4_N22
\MAIN:bit_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[7]~q\);

-- Location: LABCELL_X63_Y4_N24
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \MAIN:bit_count[8]~q\ ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \MAIN:bit_count[8]~q\ ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[8]~q\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X63_Y4_N25
\MAIN:bit_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[8]~q\);

-- Location: LABCELL_X63_Y4_N27
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \MAIN:bit_count[9]~q\ ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \MAIN:bit_count[9]~q\ ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[9]~q\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X63_Y4_N29
\MAIN:bit_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[9]~q\);

-- Location: LABCELL_X63_Y4_N30
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \MAIN:bit_count[10]~q\ ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \MAIN:bit_count[10]~q\ ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[10]~q\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X63_Y4_N31
\MAIN:bit_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[10]~q\);

-- Location: LABCELL_X63_Y4_N33
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \MAIN:bit_count[11]~q\ ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \MAIN:bit_count[11]~q\ ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[11]~q\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X63_Y4_N34
\MAIN:bit_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[11]~q\);

-- Location: LABCELL_X63_Y4_N36
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \MAIN:bit_count[12]~q\ ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~2\ = CARRY(( \MAIN:bit_count[12]~q\ ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[12]~q\,
	cin => \Add3~34\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X63_Y4_N38
\MAIN:bit_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[12]~q\);

-- Location: LABCELL_X63_Y4_N39
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \MAIN:bit_count[13]~q\ ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \MAIN:bit_count[13]~q\ ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[13]~q\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X63_Y4_N40
\MAIN:bit_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[13]~q\);

-- Location: LABCELL_X63_Y4_N42
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( \MAIN:bit_count[14]~q\ ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~50\ = CARRY(( \MAIN:bit_count[14]~q\ ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[14]~q\,
	cin => \Add3~6\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X63_Y4_N43
\MAIN:bit_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~49_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[14]~q\);

-- Location: LABCELL_X63_Y4_N45
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \MAIN:bit_count[15]~q\ ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~10\ = CARRY(( \MAIN:bit_count[15]~q\ ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[15]~q\,
	cin => \Add3~50\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X63_Y4_N46
\MAIN:bit_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[15]~q\);

-- Location: LABCELL_X63_Y4_N48
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( \MAIN:bit_count[16]~q\ ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~46\ = CARRY(( \MAIN:bit_count[16]~q\ ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[16]~q\,
	cin => \Add3~10\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X63_Y4_N49
\MAIN:bit_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~45_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[16]~q\);

-- Location: LABCELL_X63_Y4_N51
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( \MAIN:bit_count[17]~q\ ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~62\ = CARRY(( \MAIN:bit_count[17]~q\ ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[17]~q\,
	cin => \Add3~46\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X63_Y4_N52
\MAIN:bit_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~61_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[17]~q\);

-- Location: LABCELL_X63_Y4_N54
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( \MAIN:bit_count[18]~q\ ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( \MAIN:bit_count[18]~q\ ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[18]~q\,
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X63_Y4_N55
\MAIN:bit_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~65_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[18]~q\);

-- Location: LABCELL_X63_Y4_N57
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( \MAIN:bit_count[19]~q\ ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( \MAIN:bit_count[19]~q\ ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[19]~q\,
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X63_Y4_N59
\MAIN:bit_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~69_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[19]~q\);

-- Location: LABCELL_X63_Y3_N0
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( \MAIN:bit_count[20]~q\ ) + ( GND ) + ( \Add3~70\ ))
-- \Add3~102\ = CARRY(( \MAIN:bit_count[20]~q\ ) + ( GND ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[20]~q\,
	cin => \Add3~70\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X63_Y3_N1
\MAIN:bit_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~101_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[20]~q\);

-- Location: LABCELL_X63_Y3_N3
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( \MAIN:bit_count[21]~q\ ) + ( GND ) + ( \Add3~102\ ))
-- \Add3~74\ = CARRY(( \MAIN:bit_count[21]~q\ ) + ( GND ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[21]~q\,
	cin => \Add3~102\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X63_Y3_N5
\MAIN:bit_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~73_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[21]~q\);

-- Location: LABCELL_X63_Y3_N6
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( \MAIN:bit_count[22]~q\ ) + ( GND ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( \MAIN:bit_count[22]~q\ ) + ( GND ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[22]~q\,
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X63_Y3_N8
\MAIN:bit_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~77_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[22]~q\);

-- Location: LABCELL_X63_Y3_N9
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( \MAIN:bit_count[23]~q\ ) + ( GND ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( \MAIN:bit_count[23]~q\ ) + ( GND ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[23]~q\,
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X63_Y3_N10
\MAIN:bit_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~81_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[23]~q\);

-- Location: LABCELL_X63_Y3_N12
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( \MAIN:bit_count[24]~q\ ) + ( GND ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( \MAIN:bit_count[24]~q\ ) + ( GND ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:bit_count[24]~q\,
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X63_Y3_N14
\MAIN:bit_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~85_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[24]~q\);

-- Location: FF_X63_Y3_N16
\MAIN:bit_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~89_sumout\,
	sclr => \MAIN~7_combout\,
	ena => \MAIN:bit_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:bit_count[25]~q\);

-- Location: LABCELL_X63_Y2_N27
\MAIN~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~4_combout\ = ( !\MAIN:bit_count[26]~q\ & ( !\MAIN:bit_count[24]~q\ & ( (!\MAIN:bit_count[25]~q\ & (!\MAIN:bit_count[20]~q\ & (!\MAIN:bit_count[27]~q\ & !\MAIN:bit_count[28]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[25]~q\,
	datab => \ALT_INV_MAIN:bit_count[20]~q\,
	datac => \ALT_INV_MAIN:bit_count[27]~q\,
	datad => \ALT_INV_MAIN:bit_count[28]~q\,
	datae => \ALT_INV_MAIN:bit_count[26]~q\,
	dataf => \ALT_INV_MAIN:bit_count[24]~q\,
	combout => \MAIN~4_combout\);

-- Location: LABCELL_X64_Y2_N33
\MAIN~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MAIN~5_combout\ = ( \MAIN~0_combout\ & ( \MAIN~3_combout\ & ( (\MAIN~4_combout\ & (\MAIN~2_combout\ & \MAIN~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN~4_combout\,
	datac => \ALT_INV_MAIN~2_combout\,
	datad => \ALT_INV_MAIN~1_combout\,
	datae => \ALT_INV_MAIN~0_combout\,
	dataf => \ALT_INV_MAIN~3_combout\,
	combout => \MAIN~5_combout\);

-- Location: LABCELL_X65_Y7_N0
\Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~125_sumout\ = SUM(( \MAIN:wait_counter[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add4~126\ = CARRY(( \MAIN:wait_counter[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[0]~q\,
	cin => GND,
	sumout => \Add4~125_sumout\,
	cout => \Add4~126\);

-- Location: LABCELL_X65_Y6_N36
\LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = ( \MAIN:wait_counter[16]~q\ & ( \MAIN:wait_counter[15]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:wait_counter[15]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[16]~q\,
	combout => \LessThan3~5_combout\);

-- Location: LABCELL_X65_Y6_N45
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !\MAIN:wait_counter[28]~q\ & ( !\MAIN:wait_counter[27]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:wait_counter[27]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[28]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X65_Y6_N57
\LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = ( !\MAIN:wait_counter[23]~q\ & ( !\MAIN:wait_counter[22]~q\ & ( (!\MAIN:wait_counter[26]~q\ & (!\MAIN:wait_counter[24]~q\ & (!\MAIN:wait_counter[25]~q\ & !\MAIN:wait_counter[18]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:wait_counter[26]~q\,
	datab => \ALT_INV_MAIN:wait_counter[24]~q\,
	datac => \ALT_INV_MAIN:wait_counter[25]~q\,
	datad => \ALT_INV_MAIN:wait_counter[18]~q\,
	datae => \ALT_INV_MAIN:wait_counter[23]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[22]~q\,
	combout => \LessThan3~6_combout\);

-- Location: LABCELL_X65_Y6_N42
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( !\MAIN:wait_counter[19]~q\ & ( (!\MAIN:wait_counter[30]~q\ & (!\MAIN:wait_counter[17]~q\ & (!\MAIN:wait_counter[20]~q\ & !\MAIN:wait_counter[21]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:wait_counter[30]~q\,
	datab => \ALT_INV_MAIN:wait_counter[17]~q\,
	datac => \ALT_INV_MAIN:wait_counter[20]~q\,
	datad => \ALT_INV_MAIN:wait_counter[21]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[19]~q\,
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X64_Y7_N54
\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ( !\MAIN:wait_counter[12]~q\ & ( !\MAIN:wait_counter[13]~q\ & ( (!\MAIN:wait_counter[14]~q\ & !\MAIN:wait_counter[11]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:wait_counter[14]~q\,
	datac => \ALT_INV_MAIN:wait_counter[11]~q\,
	datae => \ALT_INV_MAIN:wait_counter[12]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[13]~q\,
	combout => \LessThan3~3_combout\);

-- Location: LABCELL_X64_Y7_N24
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( \MAIN:wait_counter[5]~q\ & ( \MAIN:wait_counter[6]~q\ & ( (!\MAIN:wait_counter[8]~q\ & !\MAIN:wait_counter[7]~q\) ) ) ) # ( !\MAIN:wait_counter[5]~q\ & ( \MAIN:wait_counter[6]~q\ & ( (!\MAIN:wait_counter[8]~q\ & 
-- !\MAIN:wait_counter[7]~q\) ) ) ) # ( \MAIN:wait_counter[5]~q\ & ( !\MAIN:wait_counter[6]~q\ & ( (!\MAIN:wait_counter[8]~q\ & !\MAIN:wait_counter[7]~q\) ) ) ) # ( !\MAIN:wait_counter[5]~q\ & ( !\MAIN:wait_counter[6]~q\ & ( !\MAIN:wait_counter[8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:wait_counter[8]~q\,
	datac => \ALT_INV_MAIN:wait_counter[7]~q\,
	datae => \ALT_INV_MAIN:wait_counter[5]~q\,
	dataf => \ALT_INV_MAIN:wait_counter[6]~q\,
	combout => \LessThan3~2_combout\);

-- Location: LABCELL_X64_Y7_N15
\LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = ( \LessThan3~3_combout\ & ( \LessThan3~2_combout\ ) ) # ( \LessThan3~3_combout\ & ( !\LessThan3~2_combout\ & ( (!\MAIN:wait_counter[10]~q\) # (!\MAIN:wait_counter[9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:wait_counter[10]~q\,
	datad => \ALT_INV_MAIN:wait_counter[9]~q\,
	datae => \ALT_INV_LessThan3~3_combout\,
	dataf => \ALT_INV_LessThan3~2_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LABCELL_X65_Y6_N48
\LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = ( !\MAIN:wait_counter[29]~q\ & ( \LessThan3~4_combout\ & ( (\LessThan3~0_combout\ & (\LessThan3~6_combout\ & \LessThan3~1_combout\)) ) ) ) # ( !\MAIN:wait_counter[29]~q\ & ( !\LessThan3~4_combout\ & ( (!\LessThan3~5_combout\ & 
-- (\LessThan3~0_combout\ & (\LessThan3~6_combout\ & \LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~5_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~6_combout\,
	datad => \ALT_INV_LessThan3~1_combout\,
	datae => \ALT_INV_MAIN:wait_counter[29]~q\,
	dataf => \ALT_INV_LessThan3~4_combout\,
	combout => \LessThan3~7_combout\);

-- Location: LABCELL_X65_Y6_N39
\LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = ( !\LessThan3~7_combout\ & ( !\MAIN:wait_counter[31]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:wait_counter[31]~q\,
	dataf => \ALT_INV_LessThan3~7_combout\,
	combout => \LessThan3~8_combout\);

-- Location: LABCELL_X65_Y3_N12
\outputs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outputs[0]~0_combout\ = ( \state.wait_between_sent~q\ & ( \reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.wait_between_sent~q\,
	combout => \outputs[0]~0_combout\);

-- Location: FF_X65_Y7_N2
\MAIN:wait_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~125_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[0]~q\);

-- Location: LABCELL_X65_Y7_N3
\Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( \MAIN:wait_counter[1]~q\ ) + ( GND ) + ( \Add4~126\ ))
-- \Add4~122\ = CARRY(( \MAIN:wait_counter[1]~q\ ) + ( GND ) + ( \Add4~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[1]~q\,
	cin => \Add4~126\,
	sumout => \Add4~121_sumout\,
	cout => \Add4~122\);

-- Location: FF_X65_Y7_N5
\MAIN:wait_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~121_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[1]~q\);

-- Location: LABCELL_X65_Y7_N6
\Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( \MAIN:wait_counter[2]~q\ ) + ( GND ) + ( \Add4~122\ ))
-- \Add4~118\ = CARRY(( \MAIN:wait_counter[2]~q\ ) + ( GND ) + ( \Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[2]~q\,
	cin => \Add4~122\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: FF_X65_Y7_N8
\MAIN:wait_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~117_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[2]~q\);

-- Location: LABCELL_X65_Y7_N9
\Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( \MAIN:wait_counter[3]~q\ ) + ( GND ) + ( \Add4~118\ ))
-- \Add4~114\ = CARRY(( \MAIN:wait_counter[3]~q\ ) + ( GND ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[3]~q\,
	cin => \Add4~118\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: FF_X65_Y7_N11
\MAIN:wait_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~113_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[3]~q\);

-- Location: LABCELL_X65_Y7_N12
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( \MAIN:wait_counter[4]~q\ ) + ( GND ) + ( \Add4~114\ ))
-- \Add4~110\ = CARRY(( \MAIN:wait_counter[4]~q\ ) + ( GND ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[4]~q\,
	cin => \Add4~114\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: FF_X65_Y7_N14
\MAIN:wait_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~109_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[4]~q\);

-- Location: LABCELL_X65_Y7_N15
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( \MAIN:wait_counter[5]~q\ ) + ( GND ) + ( \Add4~110\ ))
-- \Add4~58\ = CARRY(( \MAIN:wait_counter[5]~q\ ) + ( GND ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[5]~q\,
	cin => \Add4~110\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: FF_X65_Y7_N17
\MAIN:wait_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~57_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[5]~q\);

-- Location: LABCELL_X65_Y7_N18
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \MAIN:wait_counter[6]~q\ ) + ( GND ) + ( \Add4~58\ ))
-- \Add4~54\ = CARRY(( \MAIN:wait_counter[6]~q\ ) + ( GND ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[6]~q\,
	cin => \Add4~58\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X65_Y7_N20
\MAIN:wait_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~53_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[6]~q\);

-- Location: LABCELL_X65_Y7_N21
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \MAIN:wait_counter[7]~q\ ) + ( GND ) + ( \Add4~54\ ))
-- \Add4~50\ = CARRY(( \MAIN:wait_counter[7]~q\ ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[7]~q\,
	cin => \Add4~54\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X65_Y7_N23
\MAIN:wait_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~49_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[7]~q\);

-- Location: LABCELL_X65_Y7_N24
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \MAIN:wait_counter[8]~q\ ) + ( GND ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( \MAIN:wait_counter[8]~q\ ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[8]~q\,
	cin => \Add4~50\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X65_Y7_N26
\MAIN:wait_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~45_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[8]~q\);

-- Location: LABCELL_X65_Y7_N27
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \MAIN:wait_counter[9]~q\ ) + ( GND ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( \MAIN:wait_counter[9]~q\ ) + ( GND ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[9]~q\,
	cin => \Add4~46\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X65_Y7_N29
\MAIN:wait_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~41_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[9]~q\);

-- Location: LABCELL_X65_Y7_N30
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \MAIN:wait_counter[10]~q\ ) + ( GND ) + ( \Add4~42\ ))
-- \Add4~38\ = CARRY(( \MAIN:wait_counter[10]~q\ ) + ( GND ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[10]~q\,
	cin => \Add4~42\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X65_Y7_N32
\MAIN:wait_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~37_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[10]~q\);

-- Location: LABCELL_X65_Y7_N33
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( \MAIN:wait_counter[11]~q\ ) + ( GND ) + ( \Add4~38\ ))
-- \Add4~74\ = CARRY(( \MAIN:wait_counter[11]~q\ ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[11]~q\,
	cin => \Add4~38\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X65_Y7_N35
\MAIN:wait_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~73_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[11]~q\);

-- Location: LABCELL_X65_Y7_N36
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( \MAIN:wait_counter[12]~q\ ) + ( GND ) + ( \Add4~74\ ))
-- \Add4~70\ = CARRY(( \MAIN:wait_counter[12]~q\ ) + ( GND ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[12]~q\,
	cin => \Add4~74\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: FF_X65_Y7_N38
\MAIN:wait_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~69_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[12]~q\);

-- Location: LABCELL_X65_Y7_N39
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( \MAIN:wait_counter[13]~q\ ) + ( GND ) + ( \Add4~70\ ))
-- \Add4~66\ = CARRY(( \MAIN:wait_counter[13]~q\ ) + ( GND ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[13]~q\,
	cin => \Add4~70\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: FF_X65_Y7_N40
\MAIN:wait_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~65_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[13]~q\);

-- Location: LABCELL_X65_Y7_N42
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( \MAIN:wait_counter[14]~q\ ) + ( GND ) + ( \Add4~66\ ))
-- \Add4~62\ = CARRY(( \MAIN:wait_counter[14]~q\ ) + ( GND ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[14]~q\,
	cin => \Add4~66\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: FF_X65_Y7_N44
\MAIN:wait_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~61_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[14]~q\);

-- Location: LABCELL_X65_Y7_N45
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( \MAIN:wait_counter[15]~q\ ) + ( GND ) + ( \Add4~62\ ))
-- \Add4~82\ = CARRY(( \MAIN:wait_counter[15]~q\ ) + ( GND ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[15]~q\,
	cin => \Add4~62\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: FF_X65_Y7_N46
\MAIN:wait_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~81_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[15]~q\);

-- Location: LABCELL_X65_Y7_N48
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( \MAIN:wait_counter[16]~q\ ) + ( GND ) + ( \Add4~82\ ))
-- \Add4~78\ = CARRY(( \MAIN:wait_counter[16]~q\ ) + ( GND ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[16]~q\,
	cin => \Add4~82\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: FF_X65_Y7_N49
\MAIN:wait_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~77_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[16]~q\);

-- Location: LABCELL_X65_Y7_N51
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \MAIN:wait_counter[17]~q\ ) + ( GND ) + ( \Add4~78\ ))
-- \Add4~30\ = CARRY(( \MAIN:wait_counter[17]~q\ ) + ( GND ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[17]~q\,
	cin => \Add4~78\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X65_Y7_N52
\MAIN:wait_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[17]~q\);

-- Location: LABCELL_X65_Y7_N54
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( \MAIN:wait_counter[18]~q\ ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~86\ = CARRY(( \MAIN:wait_counter[18]~q\ ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[18]~q\,
	cin => \Add4~30\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X65_Y7_N55
\MAIN:wait_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~85_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[18]~q\);

-- Location: LABCELL_X65_Y7_N57
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \MAIN:wait_counter[19]~q\ ) + ( GND ) + ( \Add4~86\ ))
-- \Add4~26\ = CARRY(( \MAIN:wait_counter[19]~q\ ) + ( GND ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[19]~q\,
	cin => \Add4~86\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X65_Y7_N59
\MAIN:wait_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[19]~q\);

-- Location: LABCELL_X65_Y6_N0
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \MAIN:wait_counter[20]~q\ ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~22\ = CARRY(( \MAIN:wait_counter[20]~q\ ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[20]~q\,
	cin => \Add4~26\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X65_Y6_N2
\MAIN:wait_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[20]~q\);

-- Location: LABCELL_X65_Y6_N3
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \MAIN:wait_counter[21]~q\ ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~18\ = CARRY(( \MAIN:wait_counter[21]~q\ ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[21]~q\,
	cin => \Add4~22\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X65_Y6_N5
\MAIN:wait_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[21]~q\);

-- Location: LABCELL_X65_Y6_N6
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( \MAIN:wait_counter[22]~q\ ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~106\ = CARRY(( \MAIN:wait_counter[22]~q\ ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[22]~q\,
	cin => \Add4~18\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: FF_X65_Y6_N8
\MAIN:wait_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~105_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[22]~q\);

-- Location: LABCELL_X65_Y6_N9
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( \MAIN:wait_counter[23]~q\ ) + ( GND ) + ( \Add4~106\ ))
-- \Add4~102\ = CARRY(( \MAIN:wait_counter[23]~q\ ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[23]~q\,
	cin => \Add4~106\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: FF_X65_Y6_N10
\MAIN:wait_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~101_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[23]~q\);

-- Location: LABCELL_X65_Y6_N12
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( \MAIN:wait_counter[24]~q\ ) + ( GND ) + ( \Add4~102\ ))
-- \Add4~98\ = CARRY(( \MAIN:wait_counter[24]~q\ ) + ( GND ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[24]~q\,
	cin => \Add4~102\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: FF_X65_Y6_N14
\MAIN:wait_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~97_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[24]~q\);

-- Location: LABCELL_X65_Y6_N15
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( \MAIN:wait_counter[25]~q\ ) + ( GND ) + ( \Add4~98\ ))
-- \Add4~94\ = CARRY(( \MAIN:wait_counter[25]~q\ ) + ( GND ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[25]~q\,
	cin => \Add4~98\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: FF_X65_Y6_N17
\MAIN:wait_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~93_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[25]~q\);

-- Location: LABCELL_X65_Y6_N18
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( \MAIN:wait_counter[26]~q\ ) + ( GND ) + ( \Add4~94\ ))
-- \Add4~90\ = CARRY(( \MAIN:wait_counter[26]~q\ ) + ( GND ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[26]~q\,
	cin => \Add4~94\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: FF_X65_Y6_N20
\MAIN:wait_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~89_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[26]~q\);

-- Location: LABCELL_X65_Y6_N21
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \MAIN:wait_counter[27]~q\ ) + ( GND ) + ( \Add4~90\ ))
-- \Add4~14\ = CARRY(( \MAIN:wait_counter[27]~q\ ) + ( GND ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[27]~q\,
	cin => \Add4~90\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X65_Y6_N22
\MAIN:wait_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[27]~q\);

-- Location: LABCELL_X65_Y6_N24
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \MAIN:wait_counter[28]~q\ ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~10\ = CARRY(( \MAIN:wait_counter[28]~q\ ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[28]~q\,
	cin => \Add4~14\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X65_Y6_N26
\MAIN:wait_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[28]~q\);

-- Location: LABCELL_X65_Y6_N27
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \MAIN:wait_counter[29]~q\ ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~6\ = CARRY(( \MAIN:wait_counter[29]~q\ ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[29]~q\,
	cin => \Add4~10\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X65_Y6_N29
\MAIN:wait_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[29]~q\);

-- Location: LABCELL_X65_Y6_N30
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \MAIN:wait_counter[30]~q\ ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~34\ = CARRY(( \MAIN:wait_counter[30]~q\ ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[30]~q\,
	cin => \Add4~6\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X65_Y6_N31
\MAIN:wait_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[30]~q\);

-- Location: LABCELL_X65_Y6_N33
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \MAIN:wait_counter[31]~q\ ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:wait_counter[31]~q\,
	cin => \Add4~34\,
	sumout => \Add4~1_sumout\);

-- Location: FF_X65_Y6_N35
\MAIN:wait_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	sclr => \LessThan3~8_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:wait_counter[31]~q\);

-- Location: LABCELL_X65_Y3_N30
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \state.wait_between_sent~q\ & ( \MAIN~6_combout\ & ( (((\MAIN~5_combout\ & \state.wait_while_busy~q\)) # (\LessThan3~7_combout\)) # (\MAIN:wait_counter[31]~q\) ) ) ) # ( !\state.wait_between_sent~q\ & ( \MAIN~6_combout\ & ( 
-- (\MAIN~5_combout\ & \state.wait_while_busy~q\) ) ) ) # ( \state.wait_between_sent~q\ & ( !\MAIN~6_combout\ & ( (\LessThan3~7_combout\) # (\MAIN:wait_counter[31]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100010001000100010001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN~5_combout\,
	datab => \ALT_INV_state.wait_while_busy~q\,
	datac => \ALT_INV_MAIN:wait_counter[31]~q\,
	datad => \ALT_INV_LessThan3~7_combout\,
	datae => \ALT_INV_state.wait_between_sent~q\,
	dataf => \ALT_INV_MAIN~6_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X65_Y3_N32
\state.wait_between_sent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_between_sent~q\);

-- Location: LABCELL_X65_Y3_N57
\state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~10_combout\ = ( \LessThan3~8_combout\ & ( !\state.wait_between_sent~q\ ) ) # ( !\LessThan3~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.wait_between_sent~q\,
	dataf => \ALT_INV_LessThan3~8_combout\,
	combout => \state~10_combout\);

-- Location: FF_X65_Y3_N59
\state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.initial~q\);

-- Location: LABCELL_X67_Y4_N15
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.wait_input~q\ & ( \state.initial~q\ & ( !\ena~input_o\ ) ) ) # ( \state.wait_input~q\ & ( !\state.initial~q\ ) ) # ( !\state.wait_input~q\ & ( !\state.initial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena~input_o\,
	datae => \ALT_INV_state.wait_input~q\,
	dataf => \ALT_INV_state.initial~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X67_Y4_N17
\state.wait_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_input~q\);

-- Location: LABCELL_X67_Y6_N30
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \MAIN:convst_counter[30]~q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( \MAIN:convst_counter[30]~q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[30]~q\,
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X67_Y6_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \MAIN:convst_counter[31]~q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[31]~q\,
	cin => \Add0~46\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X67_Y6_N35
\MAIN:convst_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[31]~q\);

-- Location: LABCELL_X67_Y4_N54
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.start_conversion~q\ & ( \LessThan0~6_combout\ & ( (((\state.wait_input~q\ & \ena~input_o\)) # (\MAIN:convst_counter[31]~q\)) # (\LessThan0~0_combout\) ) ) ) # ( !\state.start_conversion~q\ & ( \LessThan0~6_combout\ & ( 
-- (\state.wait_input~q\ & \ena~input_o\) ) ) ) # ( \state.start_conversion~q\ & ( !\LessThan0~6_combout\ & ( ((\state.wait_input~q\ & \ena~input_o\)) # (\MAIN:convst_counter[31]~q\) ) ) ) # ( !\state.start_conversion~q\ & ( !\LessThan0~6_combout\ & ( 
-- (\state.wait_input~q\ & \ena~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111111100000011000000110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_state.wait_input~q\,
	datac => \ALT_INV_ena~input_o\,
	datad => \ALT_INV_MAIN:convst_counter[31]~q\,
	datae => \ALT_INV_state.start_conversion~q\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X67_Y4_N56
\state.start_conversion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start_conversion~q\);

-- Location: LABCELL_X67_Y4_N42
\convst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convst~1_combout\ = ( \state.start_conversion~q\ & ( \reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.start_conversion~q\,
	combout => \convst~1_combout\);

-- Location: FF_X67_Y6_N11
\MAIN:convst_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[23]~q\);

-- Location: LABCELL_X67_Y6_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \MAIN:convst_counter[24]~q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \MAIN:convst_counter[24]~q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[24]~q\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X67_Y6_N13
\MAIN:convst_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[24]~q\);

-- Location: LABCELL_X67_Y6_N15
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \MAIN:convst_counter[25]~q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~42\ = CARRY(( \MAIN:convst_counter[25]~q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[25]~q\,
	cin => \Add0~14\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X67_Y6_N17
\MAIN:convst_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[25]~q\);

-- Location: LABCELL_X67_Y6_N18
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \MAIN:convst_counter[26]~q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~10\ = CARRY(( \MAIN:convst_counter[26]~q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[26]~q\,
	cin => \Add0~42\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X67_Y6_N20
\MAIN:convst_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[26]~q\);

-- Location: LABCELL_X67_Y6_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \MAIN:convst_counter[27]~q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( \MAIN:convst_counter[27]~q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[27]~q\,
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X67_Y6_N23
\MAIN:convst_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[27]~q\);

-- Location: LABCELL_X67_Y6_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \MAIN:convst_counter[28]~q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~30\ = CARRY(( \MAIN:convst_counter[28]~q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[28]~q\,
	cin => \Add0~6\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X67_Y6_N25
\MAIN:convst_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[28]~q\);

-- Location: LABCELL_X67_Y6_N27
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \MAIN:convst_counter[29]~q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~50\ = CARRY(( \MAIN:convst_counter[29]~q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[29]~q\,
	cin => \Add0~30\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X67_Y6_N29
\MAIN:convst_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[29]~q\);

-- Location: FF_X67_Y6_N32
\MAIN:convst_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[30]~q\);

-- Location: LABCELL_X67_Y6_N42
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !\MAIN:convst_counter[7]~q\ & ( !\MAIN:convst_counter[8]~q\ & ( (!\MAIN:convst_counter[30]~q\ & (!\MAIN:convst_counter[29]~q\ & !\MAIN:convst_counter[25]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MAIN:convst_counter[30]~q\,
	datac => \ALT_INV_MAIN:convst_counter[29]~q\,
	datad => \ALT_INV_MAIN:convst_counter[25]~q\,
	datae => \ALT_INV_MAIN:convst_counter[7]~q\,
	dataf => \ALT_INV_MAIN:convst_counter[8]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X64_Y7_N36
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\MAIN:convst_counter[13]~q\ & ( !\MAIN:convst_counter[11]~q\ & ( (!\MAIN:convst_counter[10]~q\ & (!\MAIN:convst_counter[14]~q\ & !\MAIN:convst_counter[12]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_counter[10]~q\,
	datab => \ALT_INV_MAIN:convst_counter[14]~q\,
	datac => \ALT_INV_MAIN:convst_counter[12]~q\,
	datae => \ALT_INV_MAIN:convst_counter[13]~q\,
	dataf => \ALT_INV_MAIN:convst_counter[11]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X64_Y6_N36
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\MAIN:convst_counter[19]~q\ & ( !\MAIN:convst_counter[17]~q\ & ( (!\MAIN:convst_counter[18]~q\ & !\MAIN:convst_counter[20]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MAIN:convst_counter[18]~q\,
	datad => \ALT_INV_MAIN:convst_counter[20]~q\,
	datae => \ALT_INV_MAIN:convst_counter[19]~q\,
	dataf => \ALT_INV_MAIN:convst_counter[17]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X64_Y7_N42
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \MAIN:convst_counter[2]~q\ & ( \MAIN:convst_counter[3]~q\ & ( (\MAIN:convst_counter[6]~q\ & \MAIN:convst_counter[5]~q\) ) ) ) # ( !\MAIN:convst_counter[2]~q\ & ( \MAIN:convst_counter[3]~q\ & ( (\MAIN:convst_counter[6]~q\ & 
-- \MAIN:convst_counter[5]~q\) ) ) ) # ( \MAIN:convst_counter[2]~q\ & ( !\MAIN:convst_counter[3]~q\ & ( (\MAIN:convst_counter[6]~q\ & \MAIN:convst_counter[5]~q\) ) ) ) # ( !\MAIN:convst_counter[2]~q\ & ( !\MAIN:convst_counter[3]~q\ & ( 
-- (\MAIN:convst_counter[6]~q\ & (\MAIN:convst_counter[4]~q\ & \MAIN:convst_counter[5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_counter[6]~q\,
	datab => \ALT_INV_MAIN:convst_counter[4]~q\,
	datac => \ALT_INV_MAIN:convst_counter[5]~q\,
	datae => \ALT_INV_MAIN:convst_counter[2]~q\,
	dataf => \ALT_INV_MAIN:convst_counter[3]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X67_Y6_N36
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( !\LessThan0~3_combout\ & ( (!\MAIN:convst_counter[15]~q\ & (!\MAIN:convst_counter[16]~q\ & !\MAIN:convst_counter[21]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_counter[15]~q\,
	datab => \ALT_INV_MAIN:convst_counter[16]~q\,
	datac => \ALT_INV_MAIN:convst_counter[21]~q\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X67_Y6_N54
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~5_combout\ & ( !\MAIN:convst_counter[28]~q\ & ( (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & !\MAIN:convst_counter[9]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_MAIN:convst_counter[9]~q\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_MAIN:convst_counter[28]~q\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X67_Y6_N51
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( !\MAIN:convst_counter[31]~q\ & ( (!\LessThan0~0_combout\) # (!\LessThan0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_MAIN:convst_counter[31]~q\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X67_Y7_N2
\MAIN:convst_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[0]~q\);

-- Location: LABCELL_X67_Y7_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \MAIN:convst_counter[1]~q\ ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( \MAIN:convst_counter[1]~q\ ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[1]~q\,
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X67_Y7_N5
\MAIN:convst_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[1]~q\);

-- Location: LABCELL_X67_Y7_N6
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \MAIN:convst_counter[2]~q\ ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~102\ = CARRY(( \MAIN:convst_counter[2]~q\ ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[2]~q\,
	cin => \Add0~122\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X67_Y7_N7
\MAIN:convst_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[2]~q\);

-- Location: LABCELL_X67_Y7_N9
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \MAIN:convst_counter[3]~q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( \MAIN:convst_counter[3]~q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[3]~q\,
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X67_Y7_N10
\MAIN:convst_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[3]~q\);

-- Location: LABCELL_X67_Y7_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \MAIN:convst_counter[4]~q\ ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( \MAIN:convst_counter[4]~q\ ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[4]~q\,
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X67_Y7_N13
\MAIN:convst_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[4]~q\);

-- Location: LABCELL_X67_Y7_N15
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \MAIN:convst_counter[5]~q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \MAIN:convst_counter[5]~q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[5]~q\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X67_Y7_N16
\MAIN:convst_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[5]~q\);

-- Location: LABCELL_X67_Y7_N18
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \MAIN:convst_counter[6]~q\ ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( \MAIN:convst_counter[6]~q\ ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[6]~q\,
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X67_Y7_N19
\MAIN:convst_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[6]~q\);

-- Location: LABCELL_X67_Y7_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \MAIN:convst_counter[7]~q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~38\ = CARRY(( \MAIN:convst_counter[7]~q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[7]~q\,
	cin => \Add0~86\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X67_Y7_N22
\MAIN:convst_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[7]~q\);

-- Location: LABCELL_X67_Y7_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \MAIN:convst_counter[8]~q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( \MAIN:convst_counter[8]~q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[8]~q\,
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X67_Y7_N25
\MAIN:convst_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[8]~q\);

-- Location: LABCELL_X67_Y7_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \MAIN:convst_counter[9]~q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~26\ = CARRY(( \MAIN:convst_counter[9]~q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[9]~q\,
	cin => \Add0~34\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X67_Y7_N28
\MAIN:convst_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[9]~q\);

-- Location: LABCELL_X67_Y7_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \MAIN:convst_counter[10]~q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~70\ = CARRY(( \MAIN:convst_counter[10]~q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[10]~q\,
	cin => \Add0~26\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X67_Y7_N31
\MAIN:convst_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[10]~q\);

-- Location: LABCELL_X67_Y7_N33
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \MAIN:convst_counter[11]~q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( \MAIN:convst_counter[11]~q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[11]~q\,
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X67_Y7_N34
\MAIN:convst_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[11]~q\);

-- Location: LABCELL_X67_Y7_N36
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \MAIN:convst_counter[12]~q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( \MAIN:convst_counter[12]~q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[12]~q\,
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X67_Y7_N37
\MAIN:convst_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[12]~q\);

-- Location: LABCELL_X67_Y7_N39
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \MAIN:convst_counter[13]~q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( \MAIN:convst_counter[13]~q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[13]~q\,
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X67_Y7_N40
\MAIN:convst_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[13]~q\);

-- Location: LABCELL_X67_Y7_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \MAIN:convst_counter[14]~q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( \MAIN:convst_counter[14]~q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[14]~q\,
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X67_Y7_N43
\MAIN:convst_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[14]~q\);

-- Location: LABCELL_X67_Y7_N45
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \MAIN:convst_counter[15]~q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~82\ = CARRY(( \MAIN:convst_counter[15]~q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[15]~q\,
	cin => \Add0~54\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X67_Y7_N46
\MAIN:convst_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[15]~q\);

-- Location: LABCELL_X67_Y7_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \MAIN:convst_counter[16]~q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( \MAIN:convst_counter[16]~q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[16]~q\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X67_Y7_N49
\MAIN:convst_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[16]~q\);

-- Location: LABCELL_X67_Y7_N51
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \MAIN:convst_counter[17]~q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~118\ = CARRY(( \MAIN:convst_counter[17]~q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[17]~q\,
	cin => \Add0~78\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X67_Y7_N52
\MAIN:convst_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[17]~q\);

-- Location: LABCELL_X67_Y7_N54
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \MAIN:convst_counter[18]~q\ ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( \MAIN:convst_counter[18]~q\ ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[18]~q\,
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X67_Y7_N55
\MAIN:convst_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[18]~q\);

-- Location: LABCELL_X67_Y7_N57
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \MAIN:convst_counter[19]~q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( \MAIN:convst_counter[19]~q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[19]~q\,
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X67_Y7_N59
\MAIN:convst_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[19]~q\);

-- Location: LABCELL_X67_Y6_N0
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \MAIN:convst_counter[20]~q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( \MAIN:convst_counter[20]~q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[20]~q\,
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X67_Y6_N1
\MAIN:convst_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[20]~q\);

-- Location: LABCELL_X67_Y6_N3
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \MAIN:convst_counter[21]~q\ ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~74\ = CARRY(( \MAIN:convst_counter[21]~q\ ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MAIN:convst_counter[21]~q\,
	cin => \Add0~106\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X67_Y6_N5
\MAIN:convst_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[21]~q\);

-- Location: FF_X67_Y6_N7
\MAIN:convst_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~7_combout\,
	ena => \convst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAIN:convst_counter[22]~q\);

-- Location: LABCELL_X67_Y6_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\MAIN:convst_counter[24]~q\ & ( (!\MAIN:convst_counter[22]~q\ & (!\MAIN:convst_counter[23]~q\ & (!\MAIN:convst_counter[26]~q\ & !\MAIN:convst_counter[27]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:convst_counter[22]~q\,
	datab => \ALT_INV_MAIN:convst_counter[23]~q\,
	datac => \ALT_INV_MAIN:convst_counter[26]~q\,
	datad => \ALT_INV_MAIN:convst_counter[27]~q\,
	dataf => \ALT_INV_MAIN:convst_counter[24]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X67_Y4_N24
\convst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convst~0_combout\ = ( \convst~reg0_q\ & ( \state.start_conversion~q\ & ( (!\reset_n~input_o\) # (((\LessThan0~0_combout\ & \LessThan0~6_combout\)) # (\MAIN:convst_counter[31]~q\)) ) ) ) # ( !\convst~reg0_q\ & ( \state.start_conversion~q\ & ( 
-- (\reset_n~input_o\ & (((\LessThan0~0_combout\ & \LessThan0~6_combout\)) # (\MAIN:convst_counter[31]~q\))) ) ) ) # ( \convst~reg0_q\ & ( !\state.start_conversion~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001001100111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_MAIN:convst_counter[31]~q\,
	datae => \ALT_INV_convst~reg0_q\,
	dataf => \ALT_INV_state.start_conversion~q\,
	combout => \convst~0_combout\);

-- Location: FF_X67_Y4_N26
\convst~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \convst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convst~reg0_q\);

-- Location: LABCELL_X64_Y2_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \MAIN:bit_count[1]~q\ & ( \MAIN~5_combout\ & ( (!\MAIN:bit_count[31]~q\ & (((\MAIN:bit_count[2]~q\ & \MAIN:bit_count[0]~q\)) # (\MAIN:bit_count[3]~q\))) ) ) ) # ( !\MAIN:bit_count[1]~q\ & ( \MAIN~5_combout\ & ( 
-- (!\MAIN:bit_count[31]~q\ & \MAIN:bit_count[3]~q\) ) ) ) # ( \MAIN:bit_count[1]~q\ & ( !\MAIN~5_combout\ & ( !\MAIN:bit_count[31]~q\ ) ) ) # ( !\MAIN:bit_count[1]~q\ & ( !\MAIN~5_combout\ & ( !\MAIN:bit_count[31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000100010001000100010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN:bit_count[31]~q\,
	datab => \ALT_INV_MAIN:bit_count[3]~q\,
	datac => \ALT_INV_MAIN:bit_count[2]~q\,
	datad => \ALT_INV_MAIN:bit_count[0]~q\,
	datae => \ALT_INV_MAIN:bit_count[1]~q\,
	dataf => \ALT_INV_MAIN~5_combout\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X65_Y3_N0
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \Equal1~3_combout\ & ( \Equal1~1_combout\ & ( (!\send_sck~q\ & (\Equal1~4_combout\ & (!\Selector0~0_combout\ & !\Add2~1_sumout\))) # (\send_sck~q\ & ((!\Equal1~4_combout\) # ((\Add2~1_sumout\)))) ) ) ) # ( !\Equal1~3_combout\ & ( 
-- \Equal1~1_combout\ & ( \send_sck~q\ ) ) ) # ( \Equal1~3_combout\ & ( !\Equal1~1_combout\ & ( \send_sck~q\ ) ) ) # ( !\Equal1~3_combout\ & ( !\Equal1~1_combout\ & ( \send_sck~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010110010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_send_sck~q\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_Add2~1_sumout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X65_Y3_N48
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \send_sck~q\ & ( \Selector0~1_combout\ & ( (!\state.wait_while_busy~q\ & (((\state.initial~q\)))) # (\state.wait_while_busy~q\ & ((!\MAIN~5_combout\) # ((!\MAIN~6_combout\)))) ) ) ) # ( !\send_sck~q\ & ( \Selector0~1_combout\ & ( 
-- (\state.wait_while_busy~q\ & ((!\MAIN~5_combout\) # (!\MAIN~6_combout\))) ) ) ) # ( \send_sck~q\ & ( !\Selector0~1_combout\ & ( (!\state.wait_while_busy~q\ & \state.initial~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000110011001000100011111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MAIN~5_combout\,
	datab => \ALT_INV_state.wait_while_busy~q\,
	datac => \ALT_INV_state.initial~q\,
	datad => \ALT_INV_MAIN~6_combout\,
	datae => \ALT_INV_send_sck~q\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X56_Y2_N35
send_sck : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Selector0~2_combout\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_sck~q\);

-- Location: MLABCELL_X55_Y2_N0
\Add5~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( \DATA_SEND:send_counter[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add5~126\ = CARRY(( \DATA_SEND:send_counter[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[0]~q\,
	cin => GND,
	sumout => \Add5~125_sumout\,
	cout => \Add5~126\);

-- Location: MLABCELL_X55_Y2_N3
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \DATA_SEND:send_counter[1]~q\ ) + ( GND ) + ( \Add5~126\ ))
-- \Add5~2\ = CARRY(( \DATA_SEND:send_counter[1]~q\ ) + ( GND ) + ( \Add5~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[1]~q\,
	cin => \Add5~126\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: MLABCELL_X55_Y2_N6
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \DATA_SEND:send_counter[2]~q\ ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \DATA_SEND:send_counter[2]~q\ ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[2]~q\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X55_Y2_N50
\DATA_SEND:send_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~5_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[2]~q\);

-- Location: MLABCELL_X55_Y2_N9
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( \DATA_SEND:send_counter[3]~q\ ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~86\ = CARRY(( \DATA_SEND:send_counter[3]~q\ ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[3]~q\,
	cin => \Add5~6\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X55_Y2_N56
\DATA_SEND:send_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~85_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[3]~q\);

-- Location: MLABCELL_X55_Y2_N12
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( \DATA_SEND:send_counter[4]~q\ ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~90\ = CARRY(( \DATA_SEND:send_counter[4]~q\ ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[4]~q\,
	cin => \Add5~86\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X55_Y2_N2
\DATA_SEND:send_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~89_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[4]~q\);

-- Location: MLABCELL_X55_Y2_N15
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( \DATA_SEND:send_counter[5]~q\ ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~94\ = CARRY(( \DATA_SEND:send_counter[5]~q\ ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[5]~q\,
	cin => \Add5~90\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: LABCELL_X56_Y2_N6
\DATA_SEND:send_counter[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[5]~feeder_combout\ = ( \Add5~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~93_sumout\,
	combout => \DATA_SEND:send_counter[5]~feeder_combout\);

-- Location: FF_X56_Y2_N8
\DATA_SEND:send_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[5]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[5]~q\);

-- Location: MLABCELL_X55_Y2_N18
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( \DATA_SEND:send_counter[6]~q\ ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~98\ = CARRY(( \DATA_SEND:send_counter[6]~q\ ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[6]~q\,
	cin => \Add5~94\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X56_Y2_N47
\DATA_SEND:send_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~97_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[6]~q\);

-- Location: MLABCELL_X55_Y2_N21
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( \DATA_SEND:send_counter[7]~q\ ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~66\ = CARRY(( \DATA_SEND:send_counter[7]~q\ ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[7]~q\,
	cin => \Add5~98\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X56_Y2_N5
\DATA_SEND:send_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~65_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[7]~q\);

-- Location: MLABCELL_X55_Y2_N24
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( \DATA_SEND:send_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~102\ = CARRY(( \DATA_SEND:send_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[8]~DUPLICATE_q\,
	cin => \Add5~66\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: LABCELL_X56_Y2_N27
\DATA_SEND:send_counter[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[8]~feeder_combout\ = ( \Add5~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~101_sumout\,
	combout => \DATA_SEND:send_counter[8]~feeder_combout\);

-- Location: FF_X56_Y2_N29
\DATA_SEND:send_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[8]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[8]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y2_N27
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( \DATA_SEND:send_counter[9]~q\ ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~106\ = CARRY(( \DATA_SEND:send_counter[9]~q\ ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[9]~q\,
	cin => \Add5~102\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X55_Y2_N23
\DATA_SEND:send_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~105_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[9]~q\);

-- Location: MLABCELL_X55_Y2_N30
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( \DATA_SEND:send_counter[10]~q\ ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~110\ = CARRY(( \DATA_SEND:send_counter[10]~q\ ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[10]~q\,
	cin => \Add5~106\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: LABCELL_X56_Y2_N0
\DATA_SEND:send_counter[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[10]~feeder_combout\ = ( \Add5~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~109_sumout\,
	combout => \DATA_SEND:send_counter[10]~feeder_combout\);

-- Location: FF_X56_Y2_N2
\DATA_SEND:send_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[10]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[10]~q\);

-- Location: MLABCELL_X55_Y2_N33
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( \DATA_SEND:send_counter[11]~q\ ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~114\ = CARRY(( \DATA_SEND:send_counter[11]~q\ ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[11]~q\,
	cin => \Add5~110\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X56_Y2_N38
\DATA_SEND:send_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~113_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[11]~q\);

-- Location: MLABCELL_X55_Y2_N36
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( \DATA_SEND:send_counter[12]~q\ ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~118\ = CARRY(( \DATA_SEND:send_counter[12]~q\ ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[12]~q\,
	cin => \Add5~114\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: LABCELL_X56_Y2_N15
\DATA_SEND:send_counter[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[12]~feeder_combout\ = ( \Add5~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~117_sumout\,
	combout => \DATA_SEND:send_counter[12]~feeder_combout\);

-- Location: FF_X56_Y2_N17
\DATA_SEND:send_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[12]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[12]~q\);

-- Location: MLABCELL_X55_Y2_N39
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( \DATA_SEND:send_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~118\ ))
-- \Add5~122\ = CARRY(( \DATA_SEND:send_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[13]~DUPLICATE_q\,
	cin => \Add5~118\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X56_Y2_N59
\DATA_SEND:send_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~121_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[13]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y2_N42
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( \DATA_SEND:send_counter[14]~q\ ) + ( GND ) + ( \Add5~122\ ))
-- \Add5~62\ = CARRY(( \DATA_SEND:send_counter[14]~q\ ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_SEND:send_counter[14]~q\,
	cin => \Add5~122\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X55_Y2_N17
\DATA_SEND:send_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~61_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[14]~q\);

-- Location: MLABCELL_X55_Y2_N45
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( \DATA_SEND:send_counter[15]~q\ ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~70\ = CARRY(( \DATA_SEND:send_counter[15]~q\ ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[15]~q\,
	cin => \Add5~62\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X56_Y2_N23
\DATA_SEND:send_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~69_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[15]~q\);

-- Location: MLABCELL_X55_Y2_N48
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( \DATA_SEND:send_counter[16]~q\ ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~74\ = CARRY(( \DATA_SEND:send_counter[16]~q\ ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[16]~q\,
	cin => \Add5~70\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X56_Y2_N11
\DATA_SEND:send_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~73_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[16]~q\);

-- Location: MLABCELL_X55_Y2_N51
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( \DATA_SEND:send_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~78\ = CARRY(( \DATA_SEND:send_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[17]~DUPLICATE_q\,
	cin => \Add5~74\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: LABCELL_X56_Y2_N24
\DATA_SEND:send_counter[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[17]~feeder_combout\ = ( \Add5~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~77_sumout\,
	combout => \DATA_SEND:send_counter[17]~feeder_combout\);

-- Location: FF_X56_Y2_N26
\DATA_SEND:send_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[17]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[17]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y2_N54
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( \DATA_SEND:send_counter[18]~q\ ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~82\ = CARRY(( \DATA_SEND:send_counter[18]~q\ ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[18]~q\,
	cin => \Add5~78\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: LABCELL_X56_Y2_N51
\DATA_SEND:send_counter[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[18]~feeder_combout\ = ( \Add5~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~81_sumout\,
	combout => \DATA_SEND:send_counter[18]~feeder_combout\);

-- Location: FF_X56_Y2_N53
\DATA_SEND:send_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[18]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[18]~q\);

-- Location: MLABCELL_X55_Y2_N57
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \DATA_SEND:send_counter[19]~q\ ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~38\ = CARRY(( \DATA_SEND:send_counter[19]~q\ ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[19]~q\,
	cin => \Add5~82\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X55_Y2_N5
\DATA_SEND:send_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~37_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[19]~q\);

-- Location: MLABCELL_X55_Y1_N0
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \DATA_SEND:send_counter[20]~q\ ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( \DATA_SEND:send_counter[20]~q\ ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[20]~q\,
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X55_Y1_N11
\DATA_SEND:send_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~41_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[20]~q\);

-- Location: MLABCELL_X55_Y1_N3
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \DATA_SEND:send_counter[21]~q\ ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( \DATA_SEND:send_counter[21]~q\ ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[21]~q\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X55_Y1_N47
\DATA_SEND:send_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~45_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[21]~q\);

-- Location: MLABCELL_X55_Y1_N6
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( \DATA_SEND:send_counter[22]~q\ ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( \DATA_SEND:send_counter[22]~q\ ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[22]~q\,
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X55_Y1_N53
\DATA_SEND:send_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~49_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[22]~q\);

-- Location: MLABCELL_X55_Y1_N9
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( \DATA_SEND:send_counter[23]~q\ ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( \DATA_SEND:send_counter[23]~q\ ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[23]~q\,
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: MLABCELL_X55_Y1_N42
\DATA_SEND:send_counter[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_SEND:send_counter[23]~feeder_combout\ = ( \Add5~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~53_sumout\,
	combout => \DATA_SEND:send_counter[23]~feeder_combout\);

-- Location: FF_X55_Y1_N44
\DATA_SEND:send_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[23]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[23]~q\);

-- Location: MLABCELL_X55_Y1_N12
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( \DATA_SEND:send_counter[24]~q\ ) + ( GND ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( \DATA_SEND:send_counter[24]~q\ ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[24]~q\,
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X55_Y1_N38
\DATA_SEND:send_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~57_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[24]~q\);

-- Location: MLABCELL_X55_Y1_N15
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \DATA_SEND:send_counter[25]~q\ ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~14\ = CARRY(( \DATA_SEND:send_counter[25]~q\ ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[25]~q\,
	cin => \Add5~58\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X55_Y1_N41
\DATA_SEND:send_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~13_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[25]~q\);

-- Location: MLABCELL_X55_Y1_N18
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \DATA_SEND:send_counter[26]~q\ ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \DATA_SEND:send_counter[26]~q\ ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[26]~q\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X55_Y1_N58
\DATA_SEND:send_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~17_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[26]~q\);

-- Location: MLABCELL_X55_Y1_N21
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \DATA_SEND:send_counter[27]~q\ ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \DATA_SEND:send_counter[27]~q\ ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[27]~q\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X55_Y1_N32
\DATA_SEND:send_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~21_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[27]~q\);

-- Location: MLABCELL_X55_Y1_N24
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \DATA_SEND:send_counter[28]~q\ ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \DATA_SEND:send_counter[28]~q\ ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_SEND:send_counter[28]~q\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X55_Y1_N50
\DATA_SEND:send_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~25_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[28]~q\);

-- Location: MLABCELL_X55_Y1_N27
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \DATA_SEND:send_counter[29]~q\ ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \DATA_SEND:send_counter[29]~q\ ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[29]~q\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X55_Y1_N56
\DATA_SEND:send_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~29_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[29]~q\);

-- Location: MLABCELL_X55_Y1_N30
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \DATA_SEND:send_counter[30]~q\ ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( \DATA_SEND:send_counter[30]~q\ ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_SEND:send_counter[30]~q\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X55_Y1_N14
\DATA_SEND:send_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~33_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[30]~q\);

-- Location: MLABCELL_X55_Y1_N33
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \DATA_SEND:send_counter[31]~q\ ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_SEND:send_counter[31]~q\,
	cin => \Add5~34\,
	sumout => \Add5~9_sumout\);

-- Location: FF_X55_Y1_N29
\DATA_SEND:send_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~9_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[31]~q\);

-- Location: MLABCELL_X55_Y1_N39
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( !\DATA_SEND:send_counter[20]~q\ & ( !\DATA_SEND:send_counter[22]~q\ & ( (!\DATA_SEND:send_counter[24]~q\ & (!\DATA_SEND:send_counter[23]~q\ & (!\DATA_SEND:send_counter[21]~q\ & !\DATA_SEND:send_counter[19]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[24]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[23]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[21]~q\,
	datad => \ALT_INV_DATA_SEND:send_counter[19]~q\,
	datae => \ALT_INV_DATA_SEND:send_counter[20]~q\,
	dataf => \ALT_INV_DATA_SEND:send_counter[22]~q\,
	combout => \LessThan4~1_combout\);

-- Location: FF_X56_Y2_N28
\DATA_SEND:send_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[8]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[8]~q\);

-- Location: FF_X56_Y2_N58
\DATA_SEND:send_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~121_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[13]~q\);

-- Location: LABCELL_X56_Y2_N30
\LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = ( !\DATA_SEND:send_counter[9]~q\ & ( !\DATA_SEND:send_counter[13]~q\ & ( (!\DATA_SEND:send_counter[10]~q\ & (!\DATA_SEND:send_counter[8]~q\ & (!\DATA_SEND:send_counter[11]~q\ & !\DATA_SEND:send_counter[12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[10]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[8]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[11]~q\,
	datad => \ALT_INV_DATA_SEND:send_counter[12]~q\,
	datae => \ALT_INV_DATA_SEND:send_counter[9]~q\,
	dataf => \ALT_INV_DATA_SEND:send_counter[13]~q\,
	combout => \LessThan4~4_combout\);

-- Location: MLABCELL_X55_Y1_N57
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !\DATA_SEND:send_counter[26]~q\ & ( !\DATA_SEND:send_counter[25]~q\ & ( (!\DATA_SEND:send_counter[28]~q\ & (!\DATA_SEND:send_counter[30]~q\ & (!\DATA_SEND:send_counter[27]~q\ & !\DATA_SEND:send_counter[29]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[28]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[30]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[27]~q\,
	datad => \ALT_INV_DATA_SEND:send_counter[29]~q\,
	datae => \ALT_INV_DATA_SEND:send_counter[26]~q\,
	dataf => \ALT_INV_DATA_SEND:send_counter[25]~q\,
	combout => \LessThan4~0_combout\);

-- Location: FF_X56_Y2_N25
\DATA_SEND:send_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \DATA_SEND:send_counter[17]~feeder_combout\,
	sclr => \LessThan4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[17]~q\);

-- Location: LABCELL_X56_Y2_N42
\LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ( !\DATA_SEND:send_counter[7]~q\ & ( !\DATA_SEND:send_counter[14]~q\ & ( (!\DATA_SEND:send_counter[15]~q\ & (!\DATA_SEND:send_counter[16]~q\ & (!\DATA_SEND:send_counter[18]~q\ & !\DATA_SEND:send_counter[17]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[15]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[16]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[18]~q\,
	datad => \ALT_INV_DATA_SEND:send_counter[17]~q\,
	datae => \ALT_INV_DATA_SEND:send_counter[7]~q\,
	dataf => \ALT_INV_DATA_SEND:send_counter[14]~q\,
	combout => \LessThan4~2_combout\);

-- Location: LABCELL_X56_Y2_N54
\LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = ( !\DATA_SEND:send_counter[6]~q\ & ( \DATA_SEND:send_counter[1]~q\ & ( (!\DATA_SEND:send_counter[3]~q\ & (!\DATA_SEND:send_counter[5]~q\ & (!\DATA_SEND:send_counter[4]~q\ & !\DATA_SEND:send_counter[2]~q\))) ) ) ) # ( 
-- !\DATA_SEND:send_counter[6]~q\ & ( !\DATA_SEND:send_counter[1]~q\ & ( (!\DATA_SEND:send_counter[3]~q\ & (!\DATA_SEND:send_counter[5]~q\ & !\DATA_SEND:send_counter[4]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[3]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[5]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[4]~q\,
	datad => \ALT_INV_DATA_SEND:send_counter[2]~q\,
	datae => \ALT_INV_DATA_SEND:send_counter[6]~q\,
	dataf => \ALT_INV_DATA_SEND:send_counter[1]~q\,
	combout => \LessThan4~3_combout\);

-- Location: MLABCELL_X55_Y1_N48
\LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = ( \LessThan4~2_combout\ & ( \LessThan4~3_combout\ & ( (!\DATA_SEND:send_counter[31]~q\ & ((!\LessThan4~1_combout\) # ((!\LessThan4~4_combout\) # (!\LessThan4~0_combout\)))) ) ) ) # ( !\LessThan4~2_combout\ & ( \LessThan4~3_combout\ 
-- & ( !\DATA_SEND:send_counter[31]~q\ ) ) ) # ( \LessThan4~2_combout\ & ( !\LessThan4~3_combout\ & ( !\DATA_SEND:send_counter[31]~q\ ) ) ) # ( !\LessThan4~2_combout\ & ( !\LessThan4~3_combout\ & ( !\DATA_SEND:send_counter[31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[31]~q\,
	datab => \ALT_INV_LessThan4~1_combout\,
	datac => \ALT_INV_LessThan4~4_combout\,
	datad => \ALT_INV_LessThan4~0_combout\,
	datae => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_LessThan4~3_combout\,
	combout => \LessThan4~5_combout\);

-- Location: FF_X55_Y2_N20
\DATA_SEND:send_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~125_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[0]~q\);

-- Location: FF_X55_Y2_N41
\DATA_SEND:send_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	asdata => \Add5~1_sumout\,
	sclr => \LessThan4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_SEND:send_counter[1]~q\);

-- Location: LABCELL_X56_Y2_N18
\adc_sdi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adc_sdi~0_combout\ = ( !\LessThan4~5_combout\ & ( (!\DATA_SEND:send_counter[1]~q\ & ((!\DATA_SEND:send_counter[2]~q\) # (!\DATA_SEND:send_counter[0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000000000000000000010101000101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEND:send_counter[1]~q\,
	datab => \ALT_INV_DATA_SEND:send_counter[2]~q\,
	datac => \ALT_INV_DATA_SEND:send_counter[0]~q\,
	datae => \ALT_INV_LessThan4~5_combout\,
	combout => \adc_sdi~0_combout\);

-- Location: FF_X56_Y2_N19
\adc_sdi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \send_sck~q\,
	d => \adc_sdi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_sdi~reg0_q\);

-- Location: IOIBUF_X15_Y0_N35
\adc_sdo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_sdo,
	o => \adc_sdo~input_o\);

-- Location: LABCELL_X63_Y6_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \DATA_READ:read_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \DATA_READ:read_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X64_Y6_N6
\DATA_READ:read_counter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_READ:read_counter[0]~feeder_combout\ = ( \Add7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add7~1_sumout\,
	combout => \DATA_READ:read_counter[0]~feeder_combout\);

-- Location: LABCELL_X63_Y6_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \DATA_READ:read_counter[3]~q\ ) + ( GND ) + ( \Add7~6\ ))
-- \Add7~14\ = CARRY(( \DATA_READ:read_counter[3]~q\ ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[3]~q\,
	cin => \Add7~6\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: LABCELL_X63_Y6_N12
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \DATA_READ:read_counter[4]~q\ ) + ( GND ) + ( \Add7~14\ ))
-- \Add7~30\ = CARRY(( \DATA_READ:read_counter[4]~q\ ) + ( GND ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[4]~q\,
	cin => \Add7~14\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X64_Y5_N35
\DATA_READ:read_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~29_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[4]~q\);

-- Location: LABCELL_X63_Y6_N15
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \DATA_READ:read_counter[5]~q\ ) + ( GND ) + ( \Add7~30\ ))
-- \Add7~26\ = CARRY(( \DATA_READ:read_counter[5]~q\ ) + ( GND ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[5]~q\,
	cin => \Add7~30\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X64_Y5_N5
\DATA_READ:read_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~25_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[5]~q\);

-- Location: LABCELL_X63_Y6_N18
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \DATA_READ:read_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~26\ ))
-- \Add7~22\ = CARRY(( \DATA_READ:read_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[6]~DUPLICATE_q\,
	cin => \Add7~26\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: LABCELL_X64_Y5_N45
\DATA_READ:read_counter[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_READ:read_counter[6]~feeder_combout\ = ( \Add7~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add7~21_sumout\,
	combout => \DATA_READ:read_counter[6]~feeder_combout\);

-- Location: FF_X64_Y5_N47
\DATA_READ:read_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[6]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N21
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \DATA_READ:read_counter[7]~q\ ) + ( GND ) + ( \Add7~22\ ))
-- \Add7~18\ = CARRY(( \DATA_READ:read_counter[7]~q\ ) + ( GND ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[7]~q\,
	cin => \Add7~22\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X63_Y6_N38
\DATA_READ:read_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~17_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[7]~q\);

-- Location: LABCELL_X63_Y6_N24
\Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( \DATA_READ:read_counter[8]~q\ ) + ( GND ) + ( \Add7~18\ ))
-- \Add7~54\ = CARRY(( \DATA_READ:read_counter[8]~q\ ) + ( GND ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[8]~q\,
	cin => \Add7~18\,
	sumout => \Add7~53_sumout\,
	cout => \Add7~54\);

-- Location: FF_X64_Y5_N14
\DATA_READ:read_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~53_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[8]~q\);

-- Location: LABCELL_X63_Y6_N27
\Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( \DATA_READ:read_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~54\ ))
-- \Add7~50\ = CARRY(( \DATA_READ:read_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[9]~DUPLICATE_q\,
	cin => \Add7~54\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: FF_X64_Y5_N52
\DATA_READ:read_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~49_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N30
\Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( \DATA_READ:read_counter[10]~q\ ) + ( GND ) + ( \Add7~50\ ))
-- \Add7~46\ = CARRY(( \DATA_READ:read_counter[10]~q\ ) + ( GND ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[10]~q\,
	cin => \Add7~50\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: FF_X64_Y5_N10
\DATA_READ:read_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~45_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[10]~q\);

-- Location: LABCELL_X63_Y6_N33
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \DATA_READ:read_counter[11]~q\ ) + ( GND ) + ( \Add7~46\ ))
-- \Add7~42\ = CARRY(( \DATA_READ:read_counter[11]~q\ ) + ( GND ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[11]~q\,
	cin => \Add7~46\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: FF_X63_Y6_N23
\DATA_READ:read_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~41_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[11]~q\);

-- Location: FF_X64_Y5_N53
\DATA_READ:read_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~49_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[9]~q\);

-- Location: LABCELL_X63_Y6_N36
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \DATA_READ:read_counter[12]~q\ ) + ( GND ) + ( \Add7~42\ ))
-- \Add7~38\ = CARRY(( \DATA_READ:read_counter[12]~q\ ) + ( GND ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[12]~q\,
	cin => \Add7~42\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: FF_X64_Y5_N20
\DATA_READ:read_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~37_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[12]~q\);

-- Location: LABCELL_X63_Y6_N39
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \DATA_READ:read_counter[13]~q\ ) + ( GND ) + ( \Add7~38\ ))
-- \Add7~34\ = CARRY(( \DATA_READ:read_counter[13]~q\ ) + ( GND ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[13]~q\,
	cin => \Add7~38\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: FF_X63_Y6_N26
\DATA_READ:read_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~33_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[13]~q\);

-- Location: LABCELL_X64_Y5_N27
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !\DATA_READ:read_counter[13]~q\ & ( !\DATA_READ:read_counter[10]~q\ & ( (!\DATA_READ:read_counter[11]~q\ & (!\DATA_READ:read_counter[9]~q\ & (!\DATA_READ:read_counter[8]~q\ & !\DATA_READ:read_counter[12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[11]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[9]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[8]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[12]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[13]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[10]~q\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X63_Y6_N42
\Add7~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~77_sumout\ = SUM(( \DATA_READ:read_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~34\ ))
-- \Add7~78\ = CARRY(( \DATA_READ:read_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[14]~DUPLICATE_q\,
	cin => \Add7~34\,
	sumout => \Add7~77_sumout\,
	cout => \Add7~78\);

-- Location: FF_X64_Y5_N16
\DATA_READ:read_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~77_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N45
\Add7~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~73_sumout\ = SUM(( \DATA_READ:read_counter[15]~q\ ) + ( GND ) + ( \Add7~78\ ))
-- \Add7~74\ = CARRY(( \DATA_READ:read_counter[15]~q\ ) + ( GND ) + ( \Add7~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[15]~q\,
	cin => \Add7~78\,
	sumout => \Add7~73_sumout\,
	cout => \Add7~74\);

-- Location: FF_X64_Y5_N59
\DATA_READ:read_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~73_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[15]~q\);

-- Location: LABCELL_X63_Y6_N48
\Add7~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~69_sumout\ = SUM(( \DATA_READ:read_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~74\ ))
-- \Add7~70\ = CARRY(( \DATA_READ:read_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[16]~DUPLICATE_q\,
	cin => \Add7~74\,
	sumout => \Add7~69_sumout\,
	cout => \Add7~70\);

-- Location: FF_X64_Y5_N37
\DATA_READ:read_counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~69_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N51
\Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~65_sumout\ = SUM(( \DATA_READ:read_counter[17]~q\ ) + ( GND ) + ( \Add7~70\ ))
-- \Add7~66\ = CARRY(( \DATA_READ:read_counter[17]~q\ ) + ( GND ) + ( \Add7~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[17]~q\,
	cin => \Add7~70\,
	sumout => \Add7~65_sumout\,
	cout => \Add7~66\);

-- Location: LABCELL_X64_Y5_N42
\DATA_READ:read_counter[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_READ:read_counter[17]~feeder_combout\ = ( \Add7~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add7~65_sumout\,
	combout => \DATA_READ:read_counter[17]~feeder_combout\);

-- Location: FF_X64_Y5_N44
\DATA_READ:read_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[17]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[17]~q\);

-- Location: LABCELL_X63_Y6_N54
\Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~61_sumout\ = SUM(( \DATA_READ:read_counter[18]~q\ ) + ( GND ) + ( \Add7~66\ ))
-- \Add7~62\ = CARRY(( \DATA_READ:read_counter[18]~q\ ) + ( GND ) + ( \Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[18]~q\,
	cin => \Add7~66\,
	sumout => \Add7~61_sumout\,
	cout => \Add7~62\);

-- Location: FF_X64_Y5_N2
\DATA_READ:read_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~61_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[18]~q\);

-- Location: LABCELL_X63_Y6_N57
\Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( \DATA_READ:read_counter[19]~q\ ) + ( GND ) + ( \Add7~62\ ))
-- \Add7~58\ = CARRY(( \DATA_READ:read_counter[19]~q\ ) + ( GND ) + ( \Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[19]~q\,
	cin => \Add7~62\,
	sumout => \Add7~57_sumout\,
	cout => \Add7~58\);

-- Location: FF_X63_Y6_N20
\DATA_READ:read_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~57_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[19]~q\);

-- Location: LABCELL_X63_Y5_N0
\Add7~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~101_sumout\ = SUM(( \DATA_READ:read_counter[20]~q\ ) + ( GND ) + ( \Add7~58\ ))
-- \Add7~102\ = CARRY(( \DATA_READ:read_counter[20]~q\ ) + ( GND ) + ( \Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[20]~q\,
	cin => \Add7~58\,
	sumout => \Add7~101_sumout\,
	cout => \Add7~102\);

-- Location: FF_X63_Y5_N47
\DATA_READ:read_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~101_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[20]~q\);

-- Location: LABCELL_X63_Y5_N3
\Add7~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~105_sumout\ = SUM(( \DATA_READ:read_counter[21]~q\ ) + ( GND ) + ( \Add7~102\ ))
-- \Add7~106\ = CARRY(( \DATA_READ:read_counter[21]~q\ ) + ( GND ) + ( \Add7~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[21]~q\,
	cin => \Add7~102\,
	sumout => \Add7~105_sumout\,
	cout => \Add7~106\);

-- Location: FF_X63_Y5_N41
\DATA_READ:read_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~105_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[21]~q\);

-- Location: LABCELL_X63_Y5_N6
\Add7~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~109_sumout\ = SUM(( \DATA_READ:read_counter[22]~q\ ) + ( GND ) + ( \Add7~106\ ))
-- \Add7~110\ = CARRY(( \DATA_READ:read_counter[22]~q\ ) + ( GND ) + ( \Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[22]~q\,
	cin => \Add7~106\,
	sumout => \Add7~109_sumout\,
	cout => \Add7~110\);

-- Location: FF_X63_Y5_N5
\DATA_READ:read_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~109_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[22]~q\);

-- Location: LABCELL_X63_Y5_N9
\Add7~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~113_sumout\ = SUM(( \DATA_READ:read_counter[23]~q\ ) + ( GND ) + ( \Add7~110\ ))
-- \Add7~114\ = CARRY(( \DATA_READ:read_counter[23]~q\ ) + ( GND ) + ( \Add7~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[23]~q\,
	cin => \Add7~110\,
	sumout => \Add7~113_sumout\,
	cout => \Add7~114\);

-- Location: FF_X63_Y5_N55
\DATA_READ:read_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~113_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[23]~q\);

-- Location: LABCELL_X63_Y5_N12
\Add7~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~117_sumout\ = SUM(( \DATA_READ:read_counter[24]~q\ ) + ( GND ) + ( \Add7~114\ ))
-- \Add7~118\ = CARRY(( \DATA_READ:read_counter[24]~q\ ) + ( GND ) + ( \Add7~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[24]~q\,
	cin => \Add7~114\,
	sumout => \Add7~117_sumout\,
	cout => \Add7~118\);

-- Location: FF_X63_Y5_N59
\DATA_READ:read_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~117_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[24]~q\);

-- Location: LABCELL_X63_Y5_N15
\Add7~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~121_sumout\ = SUM(( \DATA_READ:read_counter[25]~q\ ) + ( GND ) + ( \Add7~118\ ))
-- \Add7~122\ = CARRY(( \DATA_READ:read_counter[25]~q\ ) + ( GND ) + ( \Add7~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[25]~q\,
	cin => \Add7~118\,
	sumout => \Add7~121_sumout\,
	cout => \Add7~122\);

-- Location: FF_X63_Y5_N2
\DATA_READ:read_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~121_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[25]~q\);

-- Location: LABCELL_X63_Y5_N18
\Add7~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~125_sumout\ = SUM(( \DATA_READ:read_counter[26]~q\ ) + ( GND ) + ( \Add7~122\ ))
-- \Add7~126\ = CARRY(( \DATA_READ:read_counter[26]~q\ ) + ( GND ) + ( \Add7~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[26]~q\,
	cin => \Add7~122\,
	sumout => \Add7~125_sumout\,
	cout => \Add7~126\);

-- Location: FF_X63_Y5_N35
\DATA_READ:read_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~125_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[26]~q\);

-- Location: LABCELL_X63_Y5_N21
\Add7~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~81_sumout\ = SUM(( \DATA_READ:read_counter[27]~q\ ) + ( GND ) + ( \Add7~126\ ))
-- \Add7~82\ = CARRY(( \DATA_READ:read_counter[27]~q\ ) + ( GND ) + ( \Add7~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[27]~q\,
	cin => \Add7~126\,
	sumout => \Add7~81_sumout\,
	cout => \Add7~82\);

-- Location: FF_X63_Y5_N50
\DATA_READ:read_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~81_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[27]~q\);

-- Location: LABCELL_X63_Y5_N24
\Add7~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~85_sumout\ = SUM(( \DATA_READ:read_counter[28]~q\ ) + ( GND ) + ( \Add7~82\ ))
-- \Add7~86\ = CARRY(( \DATA_READ:read_counter[28]~q\ ) + ( GND ) + ( \Add7~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[28]~q\,
	cin => \Add7~82\,
	sumout => \Add7~85_sumout\,
	cout => \Add7~86\);

-- Location: FF_X63_Y5_N14
\DATA_READ:read_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~85_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[28]~q\);

-- Location: LABCELL_X63_Y5_N27
\Add7~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~89_sumout\ = SUM(( \DATA_READ:read_counter[29]~q\ ) + ( GND ) + ( \Add7~86\ ))
-- \Add7~90\ = CARRY(( \DATA_READ:read_counter[29]~q\ ) + ( GND ) + ( \Add7~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[29]~q\,
	cin => \Add7~86\,
	sumout => \Add7~89_sumout\,
	cout => \Add7~90\);

-- Location: LABCELL_X63_Y5_N42
\DATA_READ:read_counter[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_READ:read_counter[29]~feeder_combout\ = ( \Add7~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add7~89_sumout\,
	combout => \DATA_READ:read_counter[29]~feeder_combout\);

-- Location: FF_X63_Y5_N43
\DATA_READ:read_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[29]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[29]~q\);

-- Location: LABCELL_X63_Y5_N30
\Add7~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~93_sumout\ = SUM(( \DATA_READ:read_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~90\ ))
-- \Add7~94\ = CARRY(( \DATA_READ:read_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[30]~DUPLICATE_q\,
	cin => \Add7~90\,
	sumout => \Add7~93_sumout\,
	cout => \Add7~94\);

-- Location: FF_X63_Y5_N37
\DATA_READ:read_counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~93_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[30]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N33
\Add7~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~97_sumout\ = SUM(( \DATA_READ:read_counter[31]~q\ ) + ( GND ) + ( \Add7~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[31]~q\,
	cin => \Add7~94\,
	sumout => \Add7~97_sumout\);

-- Location: FF_X63_Y5_N53
\DATA_READ:read_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~97_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[31]~q\);

-- Location: FF_X63_Y5_N38
\DATA_READ:read_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~93_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[30]~q\);

-- Location: LABCELL_X63_Y5_N57
\Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( !\DATA_READ:read_counter[29]~q\ & ( !\DATA_READ:read_counter[27]~q\ & ( (!\DATA_READ:read_counter[31]~q\ & (!\DATA_READ:read_counter[20]~q\ & (!\DATA_READ:read_counter[28]~q\ & !\DATA_READ:read_counter[30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[31]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[20]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[28]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[30]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[29]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[27]~q\,
	combout => \Equal3~4_combout\);

-- Location: LABCELL_X63_Y5_N39
\Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !\DATA_READ:read_counter[21]~q\ & ( !\DATA_READ:read_counter[25]~q\ & ( (!\DATA_READ:read_counter[22]~q\ & (!\DATA_READ:read_counter[23]~q\ & (!\DATA_READ:read_counter[24]~q\ & !\DATA_READ:read_counter[26]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[22]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[23]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[24]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[26]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[21]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[25]~q\,
	combout => \Equal3~5_combout\);

-- Location: FF_X64_Y5_N46
\DATA_READ:read_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[6]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[6]~q\);

-- Location: LABCELL_X64_Y5_N21
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !\DATA_READ:read_counter[5]~q\ & ( !\DATA_READ:read_counter[6]~q\ & ( (!\DATA_READ:read_counter[7]~q\ & !\DATA_READ:read_counter[4]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[7]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[4]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[5]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[6]~q\,
	combout => \Equal3~1_combout\);

-- Location: FF_X64_Y5_N17
\DATA_READ:read_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~77_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[14]~q\);

-- Location: FF_X64_Y5_N38
\DATA_READ:read_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~69_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[16]~q\);

-- Location: LABCELL_X64_Y5_N39
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\DATA_READ:read_counter[16]~q\ & ( !\DATA_READ:read_counter[18]~q\ & ( (!\DATA_READ:read_counter[19]~q\ & (!\DATA_READ:read_counter[14]~q\ & (!\DATA_READ:read_counter[17]~q\ & !\DATA_READ:read_counter[15]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[19]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[14]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[17]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[15]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[16]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[18]~q\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X64_Y5_N54
\Equal3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( \Equal3~1_combout\ & ( \Equal3~3_combout\ & ( (\Equal3~2_combout\ & (\Equal3~4_combout\ & (\Equal3~0_combout\ & \Equal3~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~2_combout\,
	datab => \ALT_INV_Equal3~4_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_Equal3~5_combout\,
	datae => \ALT_INV_Equal3~1_combout\,
	dataf => \ALT_INV_Equal3~3_combout\,
	combout => \Equal3~6_combout\);

-- Location: FF_X64_Y6_N8
\DATA_READ:read_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[0]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N3
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \DATA_READ:read_counter[1]~q\ ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~10\ = CARRY(( \DATA_READ:read_counter[1]~q\ ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_READ:read_counter[1]~q\,
	cin => \Add7~2\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X63_Y6_N56
\DATA_READ:read_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~9_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[1]~q\);

-- Location: LABCELL_X63_Y6_N6
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \DATA_READ:read_counter[2]~q\ ) + ( GND ) + ( \Add7~10\ ))
-- \Add7~6\ = CARRY(( \DATA_READ:read_counter[2]~q\ ) + ( GND ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_READ:read_counter[2]~q\,
	cin => \Add7~10\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X63_Y6_N11
\DATA_READ:read_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~5_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[2]~q\);

-- Location: FF_X63_Y6_N50
\DATA_READ:read_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \Add7~13_sumout\,
	sclr => \Equal3~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[3]~q\);

-- Location: LABCELL_X64_Y6_N18
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \DATA_READ:read_counter[1]~q\ & ( \DATA_READ:read_counter[0]~DUPLICATE_q\ & ( (\DATA_READ:read_counter[3]~q\ & !\DATA_READ:read_counter[2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[1]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\,
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X65_Y3_N15
\rx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[0]~0_combout\ = ( \Equal3~6_combout\ & ( rx_data(0) ) ) # ( !\Equal3~6_combout\ & ( (!\Equal3~0_combout\ & ((rx_data(0)))) # (\Equal3~0_combout\ & (\adc_sdo~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adc_sdo~input_o\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_rx_data(0),
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \rx_data[0]~0_combout\);

-- Location: FF_X65_Y3_N41
\rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(0));

-- Location: LABCELL_X65_Y5_N12
\outputs[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outputs[0]~reg0feeder_combout\ = ( rx_data(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_data(0),
	combout => \outputs[0]~reg0feeder_combout\);

-- Location: FF_X65_Y5_N14
\outputs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \outputs[0]~reg0feeder_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[0]~reg0_q\);

-- Location: FF_X64_Y6_N7
\DATA_READ:read_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \DATA_READ:read_counter[0]~feeder_combout\,
	sclr => \Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATA_READ:read_counter[0]~q\);

-- Location: LABCELL_X64_Y6_N15
\rx_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[1]~1_combout\ = ( \adc_sdo~input_o\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(1) ) ) ) # ( !\adc_sdo~input_o\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(1) ) ) ) # ( \adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( 
-- ((\DATA_READ:read_counter[3]~q\ & (\DATA_READ:read_counter[1]~q\ & !\DATA_READ:read_counter[2]~q\))) # (rx_data(1)) ) ) ) # ( !\adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( (rx_data(1) & ((!\DATA_READ:read_counter[3]~q\) # 
-- ((!\DATA_READ:read_counter[1]~q\) # (\DATA_READ:read_counter[2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000100001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[1]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datad => ALT_INV_rx_data(1),
	datae => \ALT_INV_adc_sdo~input_o\,
	dataf => \ALT_INV_DATA_READ:read_counter[0]~q\,
	combout => \rx_data[1]~1_combout\);

-- Location: FF_X64_Y6_N5
\rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(1));

-- Location: FF_X65_Y6_N53
\outputs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(1),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[1]~reg0_q\);

-- Location: LABCELL_X65_Y4_N18
\rx_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[2]~2_combout\ = ( \DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(2) ) ) ) # ( !\DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(2) ) ) ) # ( \DATA_READ:read_counter[0]~q\ & ( 
-- !\DATA_READ:read_counter[1]~q\ & ( (!\DATA_READ:read_counter[3]~q\ & (((rx_data(2))))) # (\DATA_READ:read_counter[3]~q\ & ((!\DATA_READ:read_counter[2]~q\ & (\adc_sdo~input_o\)) # (\DATA_READ:read_counter[2]~q\ & ((rx_data(2)))))) ) ) ) # ( 
-- !\DATA_READ:read_counter[0]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100001101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adc_sdo~input_o\,
	datab => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datad => ALT_INV_rx_data(2),
	datae => \ALT_INV_DATA_READ:read_counter[0]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[1]~q\,
	combout => \rx_data[2]~2_combout\);

-- Location: FF_X65_Y4_N7
\rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(2));

-- Location: FF_X65_Y4_N14
\outputs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(2),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[2]~reg0_q\);

-- Location: LABCELL_X65_Y4_N36
\rx_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[3]~3_combout\ = ( \DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(3) ) ) ) # ( !\DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(3) ) ) ) # ( \DATA_READ:read_counter[0]~q\ & ( 
-- !\DATA_READ:read_counter[1]~q\ & ( rx_data(3) ) ) ) # ( !\DATA_READ:read_counter[0]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( (!\DATA_READ:read_counter[3]~q\ & (((rx_data(3))))) # (\DATA_READ:read_counter[3]~q\ & ((!\DATA_READ:read_counter[2]~q\ & 
-- (\adc_sdo~input_o\)) # (\DATA_READ:read_counter[2]~q\ & ((rx_data(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adc_sdo~input_o\,
	datab => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datad => ALT_INV_rx_data(3),
	datae => \ALT_INV_DATA_READ:read_counter[0]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[1]~q\,
	combout => \rx_data[3]~3_combout\);

-- Location: FF_X65_Y4_N55
\rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(3));

-- Location: FF_X65_Y4_N35
\outputs[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(3),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[3]~reg0_q\);

-- Location: LABCELL_X64_Y5_N12
\rx_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[4]~4_combout\ = ( \DATA_READ:read_counter[3]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(4) ) ) ) # ( !\DATA_READ:read_counter[3]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( (!\DATA_READ:read_counter[2]~q\ & (rx_data(4))) # 
-- (\DATA_READ:read_counter[2]~q\ & ((!\DATA_READ:read_counter[0]~q\ & (rx_data(4))) # (\DATA_READ:read_counter[0]~q\ & ((\adc_sdo~input_o\))))) ) ) ) # ( \DATA_READ:read_counter[3]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(4) ) ) ) # ( 
-- !\DATA_READ:read_counter[3]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_data(4),
	datab => \ALT_INV_adc_sdo~input_o\,
	datac => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[0]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[3]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[1]~q\,
	combout => \rx_data[4]~4_combout\);

-- Location: FF_X64_Y5_N56
\rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(4));

-- Location: FF_X64_Y5_N26
\outputs[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(4),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[4]~reg0_q\);

-- Location: LABCELL_X65_Y4_N0
\rx_data[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[5]~5_combout\ = ( \DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(5) ) ) ) # ( !\DATA_READ:read_counter[0]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( (!\DATA_READ:read_counter[2]~q\ & (((rx_data(5))))) # 
-- (\DATA_READ:read_counter[2]~q\ & ((!\DATA_READ:read_counter[3]~q\ & (\adc_sdo~input_o\)) # (\DATA_READ:read_counter[3]~q\ & ((rx_data(5)))))) ) ) ) # ( \DATA_READ:read_counter[0]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(5) ) ) ) # ( 
-- !\DATA_READ:read_counter[0]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adc_sdo~input_o\,
	datab => ALT_INV_rx_data(5),
	datac => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[0]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[1]~q\,
	combout => \rx_data[5]~5_combout\);

-- Location: FF_X65_Y4_N40
\rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(5));

-- Location: FF_X65_Y4_N53
\outputs[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(5),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[5]~reg0_q\);

-- Location: LABCELL_X65_Y4_N42
\rx_data[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[6]~6_combout\ = ( \DATA_READ:read_counter[2]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(6) ) ) ) # ( !\DATA_READ:read_counter[2]~q\ & ( \DATA_READ:read_counter[1]~q\ & ( rx_data(6) ) ) ) # ( \DATA_READ:read_counter[2]~q\ & ( 
-- !\DATA_READ:read_counter[1]~q\ & ( (!\DATA_READ:read_counter[0]~q\ & (rx_data(6))) # (\DATA_READ:read_counter[0]~q\ & ((!\DATA_READ:read_counter[3]~q\ & ((\adc_sdo~input_o\))) # (\DATA_READ:read_counter[3]~q\ & (rx_data(6))))) ) ) ) # ( 
-- !\DATA_READ:read_counter[2]~q\ & ( !\DATA_READ:read_counter[1]~q\ & ( rx_data(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001001110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[0]~q\,
	datab => ALT_INV_rx_data(6),
	datac => \ALT_INV_adc_sdo~input_o\,
	datad => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[2]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[1]~q\,
	combout => \rx_data[6]~6_combout\);

-- Location: FF_X65_Y3_N11
\rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(6));

-- Location: FF_X65_Y3_N44
\outputs[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(6),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[6]~reg0_q\);

-- Location: LABCELL_X64_Y6_N42
\rx_data[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[7]~7_combout\ = ( rx_data(7) & ( \DATA_READ:read_counter[3]~q\ ) ) # ( rx_data(7) & ( !\DATA_READ:read_counter[3]~q\ & ( (((!\DATA_READ:read_counter[2]~q\) # (\adc_sdo~input_o\)) # (\DATA_READ:read_counter[0]~DUPLICATE_q\)) # 
-- (\DATA_READ:read_counter[1]~q\) ) ) ) # ( !rx_data(7) & ( !\DATA_READ:read_counter[3]~q\ & ( (!\DATA_READ:read_counter[1]~q\ & (!\DATA_READ:read_counter[0]~DUPLICATE_q\ & (\adc_sdo~input_o\ & \DATA_READ:read_counter[2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[1]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\,
	datac => \ALT_INV_adc_sdo~input_o\,
	datad => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datae => ALT_INV_rx_data(7),
	dataf => \ALT_INV_DATA_READ:read_counter[3]~q\,
	combout => \rx_data[7]~7_combout\);

-- Location: LABCELL_X64_Y6_N27
\rx_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[7]~feeder_combout\ = \rx_data[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx_data[7]~7_combout\,
	combout => \rx_data[7]~feeder_combout\);

-- Location: FF_X64_Y6_N29
\rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \rx_data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(7));

-- Location: FF_X61_Y6_N26
\outputs[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(7),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[7]~reg0_q\);

-- Location: LABCELL_X63_Y5_N48
\rx_data[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[8]~8_combout\ = ( \adc_sdo~input_o\ & ( \DATA_READ:read_counter[0]~q\ & ( ((!\DATA_READ:read_counter[2]~q\ & (!\DATA_READ:read_counter[3]~q\ & \DATA_READ:read_counter[1]~q\))) # (rx_data(8)) ) ) ) # ( !\adc_sdo~input_o\ & ( 
-- \DATA_READ:read_counter[0]~q\ & ( (rx_data(8) & (((!\DATA_READ:read_counter[1]~q\) # (\DATA_READ:read_counter[3]~q\)) # (\DATA_READ:read_counter[2]~q\))) ) ) ) # ( \adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( rx_data(8) ) ) ) # ( 
-- !\adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( rx_data(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datab => ALT_INV_rx_data(8),
	datac => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[1]~q\,
	datae => \ALT_INV_adc_sdo~input_o\,
	dataf => \ALT_INV_DATA_READ:read_counter[0]~q\,
	combout => \rx_data[8]~8_combout\);

-- Location: FF_X63_Y5_N32
\rx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(8));

-- Location: FF_X61_Y6_N56
\outputs[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(8),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[8]~reg0_q\);

-- Location: LABCELL_X64_Y6_N30
\rx_data[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[9]~9_combout\ = ( \adc_sdo~input_o\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(9) ) ) ) # ( !\adc_sdo~input_o\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(9) ) ) ) # ( \adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( 
-- ((\DATA_READ:read_counter[1]~q\ & (!\DATA_READ:read_counter[3]~q\ & !\DATA_READ:read_counter[2]~q\))) # (rx_data(9)) ) ) ) # ( !\adc_sdo~input_o\ & ( !\DATA_READ:read_counter[0]~q\ & ( (rx_data(9) & ((!\DATA_READ:read_counter[1]~q\) # 
-- ((\DATA_READ:read_counter[2]~q\) # (\DATA_READ:read_counter[3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101011101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_data(9),
	datab => \ALT_INV_DATA_READ:read_counter[1]~q\,
	datac => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datad => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datae => \ALT_INV_adc_sdo~input_o\,
	dataf => \ALT_INV_DATA_READ:read_counter[0]~q\,
	combout => \rx_data[9]~9_combout\);

-- Location: FF_X64_Y6_N23
\rx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[9]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(9));

-- Location: FF_X61_Y6_N14
\outputs[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(9),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[9]~reg0_q\);

-- Location: LABCELL_X64_Y6_N48
\rx_data[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[10]~10_combout\ = ( \DATA_READ:read_counter[1]~q\ & ( \DATA_READ:read_counter[2]~q\ & ( rx_data(10) ) ) ) # ( !\DATA_READ:read_counter[1]~q\ & ( \DATA_READ:read_counter[2]~q\ & ( rx_data(10) ) ) ) # ( \DATA_READ:read_counter[1]~q\ & ( 
-- !\DATA_READ:read_counter[2]~q\ & ( rx_data(10) ) ) ) # ( !\DATA_READ:read_counter[1]~q\ & ( !\DATA_READ:read_counter[2]~q\ & ( (!\DATA_READ:read_counter[3]~q\ & ((!\DATA_READ:read_counter[0]~DUPLICATE_q\ & ((rx_data(10)))) # 
-- (\DATA_READ:read_counter[0]~DUPLICATE_q\ & (\adc_sdo~input_o\)))) # (\DATA_READ:read_counter[3]~q\ & (((rx_data(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datab => \ALT_INV_DATA_READ:read_counter[0]~DUPLICATE_q\,
	datac => \ALT_INV_adc_sdo~input_o\,
	datad => ALT_INV_rx_data(10),
	datae => \ALT_INV_DATA_READ:read_counter[1]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[2]~q\,
	combout => \rx_data[10]~10_combout\);

-- Location: LABCELL_X64_Y6_N57
\rx_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[10]~feeder_combout\ = \rx_data[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rx_data[10]~10_combout\,
	combout => \rx_data[10]~feeder_combout\);

-- Location: FF_X64_Y6_N59
\rx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	d => \rx_data[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(10));

-- Location: LABCELL_X61_Y6_N42
\outputs[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outputs[10]~reg0feeder_combout\ = ( rx_data(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rx_data(10),
	combout => \outputs[10]~reg0feeder_combout\);

-- Location: FF_X61_Y6_N44
\outputs[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \outputs[10]~reg0feeder_combout\,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[10]~reg0_q\);

-- Location: LABCELL_X64_Y6_N0
\rx_data[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[11]~11_combout\ = ( \DATA_READ:read_counter[1]~q\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(11) ) ) ) # ( !\DATA_READ:read_counter[1]~q\ & ( \DATA_READ:read_counter[0]~q\ & ( rx_data(11) ) ) ) # ( \DATA_READ:read_counter[1]~q\ & ( 
-- !\DATA_READ:read_counter[0]~q\ & ( rx_data(11) ) ) ) # ( !\DATA_READ:read_counter[1]~q\ & ( !\DATA_READ:read_counter[0]~q\ & ( (!\DATA_READ:read_counter[3]~q\ & ((!\DATA_READ:read_counter[2]~q\ & ((\adc_sdo~input_o\))) # (\DATA_READ:read_counter[2]~q\ & 
-- (rx_data(11))))) # (\DATA_READ:read_counter[3]~q\ & (rx_data(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_READ:read_counter[3]~q\,
	datab => ALT_INV_rx_data(11),
	datac => \ALT_INV_adc_sdo~input_o\,
	datad => \ALT_INV_DATA_READ:read_counter[2]~q\,
	datae => \ALT_INV_DATA_READ:read_counter[1]~q\,
	dataf => \ALT_INV_DATA_READ:read_counter[0]~q\,
	combout => \rx_data[11]~11_combout\);

-- Location: FF_X64_Y6_N53
\rx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \adc_sck~reg0_q\,
	asdata => \rx_data[11]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(11));

-- Location: FF_X61_Y6_N5
\outputs[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(11),
	sload => VCC,
	ena => \outputs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputs[11]~reg0_q\);

-- Location: LABCELL_X61_Y6_N57
\quad_segment7_1|bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~2_combout\ = ( \outputs[11]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[8]~reg0_q\ & (\outputs[6]~reg0_q\ & (!\outputs[9]~reg0_q\ $ (\outputs[7]~reg0_q\)))) # (\outputs[8]~reg0_q\ & (!\outputs[6]~reg0_q\ & (!\outputs[9]~reg0_q\ & 
-- \outputs[7]~reg0_q\))) ) ) ) # ( !\outputs[11]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[9]~reg0_q\ & (!\outputs[8]~reg0_q\ & (\outputs[6]~reg0_q\ & \outputs[7]~reg0_q\))) # (\outputs[9]~reg0_q\ & (!\outputs[7]~reg0_q\ & (!\outputs[8]~reg0_q\ $ 
-- (\outputs[6]~reg0_q\)))) ) ) ) # ( \outputs[11]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (!\outputs[9]~reg0_q\ & (\outputs[7]~reg0_q\ & (!\outputs[8]~reg0_q\ $ (\outputs[6]~reg0_q\)))) # (\outputs[9]~reg0_q\ & (\outputs[8]~reg0_q\ & (!\outputs[6]~reg0_q\ & 
-- !\outputs[7]~reg0_q\))) ) ) ) # ( !\outputs[11]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (!\outputs[8]~reg0_q\ & (\outputs[6]~reg0_q\ & (\outputs[9]~reg0_q\ & !\outputs[7]~reg0_q\))) # (\outputs[8]~reg0_q\ & (!\outputs[6]~reg0_q\ & (!\outputs[9]~reg0_q\ $ 
-- (\outputs[7]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000100000001001001000000001001001000000010000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[8]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[9]~reg0_q\,
	datad => \ALT_INV_outputs[7]~reg0_q\,
	datae => \ALT_INV_outputs[11]~reg0_q\,
	dataf => \ALT_INV_outputs[10]~reg0_q\,
	combout => \quad_segment7_1|bcd~2_combout\);

-- Location: LABCELL_X61_Y6_N48
\quad_segment7_1|bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~1_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & ((!\outputs[7]~reg0_q\ & (!\outputs[6]~reg0_q\ & \outputs[9]~reg0_q\)) # (\outputs[7]~reg0_q\ & ((!\outputs[9]~reg0_q\))))) # 
-- (\outputs[11]~reg0_q\ & ((!\outputs[7]~reg0_q\ $ (\outputs[9]~reg0_q\)))) ) ) ) # ( !\outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & ((!\outputs[6]~reg0_q\ & (\outputs[7]~reg0_q\ & !\outputs[9]~reg0_q\)) # (\outputs[6]~reg0_q\ & 
-- (!\outputs[7]~reg0_q\ $ (\outputs[9]~reg0_q\))))) # (\outputs[11]~reg0_q\ & ((!\outputs[6]~reg0_q\ & (!\outputs[7]~reg0_q\ $ (\outputs[9]~reg0_q\))) # (\outputs[6]~reg0_q\ & (!\outputs[7]~reg0_q\ & \outputs[9]~reg0_q\)))) ) ) ) # ( \outputs[8]~reg0_q\ & ( 
-- !\outputs[10]~reg0_q\ & ( (!\outputs[6]~reg0_q\ & ((!\outputs[11]~reg0_q\ & (!\outputs[7]~reg0_q\ & \outputs[9]~reg0_q\)) # (\outputs[11]~reg0_q\ & (\outputs[7]~reg0_q\ & !\outputs[9]~reg0_q\)))) # (\outputs[6]~reg0_q\ & (!\outputs[11]~reg0_q\ $ 
-- (!\outputs[7]~reg0_q\ $ (\outputs[9]~reg0_q\)))) ) ) ) # ( !\outputs[8]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & ((!\outputs[7]~reg0_q\ & (!\outputs[6]~reg0_q\ & \outputs[9]~reg0_q\)) # (\outputs[7]~reg0_q\ & 
-- ((!\outputs[9]~reg0_q\))))) # (\outputs[11]~reg0_q\ & ((!\outputs[7]~reg0_q\ $ (\outputs[9]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010000101000101101010000101101000000101100101101010000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[11]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[7]~reg0_q\,
	datad => \ALT_INV_outputs[9]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[10]~reg0_q\,
	combout => \quad_segment7_1|bcd~1_combout\);

-- Location: LABCELL_X61_Y6_N18
\quad_segment7_1|bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~0_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & (!\outputs[6]~reg0_q\ $ (((!\outputs[9]~reg0_q\) # (\outputs[7]~reg0_q\))))) # (\outputs[11]~reg0_q\ & (\outputs[6]~reg0_q\ & 
-- ((!\outputs[7]~reg0_q\) # (\outputs[9]~reg0_q\)))) ) ) ) # ( !\outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & (!\outputs[6]~reg0_q\ & ((!\outputs[9]~reg0_q\) # (\outputs[7]~reg0_q\)))) # (\outputs[11]~reg0_q\ & 
-- (!\outputs[6]~reg0_q\ $ (((\outputs[7]~reg0_q\ & !\outputs[9]~reg0_q\))))) ) ) ) # ( \outputs[8]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & ((!\outputs[6]~reg0_q\ & (\outputs[7]~reg0_q\ & !\outputs[9]~reg0_q\)) # (\outputs[6]~reg0_q\ & 
-- (!\outputs[7]~reg0_q\ & \outputs[9]~reg0_q\)))) # (\outputs[11]~reg0_q\ & (!\outputs[6]~reg0_q\ & ((!\outputs[9]~reg0_q\) # (\outputs[7]~reg0_q\)))) ) ) ) # ( !\outputs[8]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & 
-- (!\outputs[6]~reg0_q\ $ (((!\outputs[9]~reg0_q\) # (\outputs[7]~reg0_q\))))) # (\outputs[11]~reg0_q\ & (\outputs[6]~reg0_q\ & ((!\outputs[7]~reg0_q\) # (\outputs[9]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010010011010011000010010011001001010011000011001010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[11]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[7]~reg0_q\,
	datad => \ALT_INV_outputs[9]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[10]~reg0_q\,
	combout => \quad_segment7_1|bcd~0_combout\);

-- Location: LABCELL_X65_Y4_N30
\quad_segment7_1|bcd~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~3_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \outputs[5]~reg0_q\ & ( (!\outputs[3]~reg0_q\ & (!\outputs[4]~reg0_q\ & ((\quad_segment7_1|bcd~1_combout\) # (\quad_segment7_1|bcd~2_combout\)))) # (\outputs[3]~reg0_q\ & 
-- (!\outputs[4]~reg0_q\ $ (((\quad_segment7_1|bcd~1_combout\) # (\quad_segment7_1|bcd~2_combout\))))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( \outputs[5]~reg0_q\ & ( (!\outputs[3]~reg0_q\ & (!\quad_segment7_1|bcd~1_combout\ & ((\outputs[4]~reg0_q\) # 
-- (\quad_segment7_1|bcd~2_combout\)))) # (\outputs[3]~reg0_q\ & (((\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( \quad_segment7_1|bcd~0_combout\ & ( !\outputs[5]~reg0_q\ & ( (!\quad_segment7_1|bcd~1_combout\ & (!\outputs[3]~reg0_q\ $ 
-- (((!\quad_segment7_1|bcd~2_combout\ & \outputs[4]~reg0_q\))))) # (\quad_segment7_1|bcd~1_combout\ & (!\outputs[3]~reg0_q\ & ((\outputs[4]~reg0_q\)))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( !\outputs[5]~reg0_q\ & ( (!\quad_segment7_1|bcd~2_combout\ 
-- & (!\outputs[3]~reg0_q\ $ ((!\quad_segment7_1|bcd~1_combout\)))) # (\quad_segment7_1|bcd~2_combout\ & (\outputs[3]~reg0_q\ & ((!\outputs[4]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101001000101000000110101000100101101001010110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[3]~reg0_q\,
	datab => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_outputs[4]~reg0_q\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_outputs[5]~reg0_q\,
	combout => \quad_segment7_1|bcd~3_combout\);

-- Location: LABCELL_X64_Y5_N0
\quad_segment7_1|bcd~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~4_combout\ = ( \quad_segment7_1|bcd~2_combout\ & ( \quad_segment7_1|bcd~1_combout\ & ( (!\quad_segment7_1|bcd~0_combout\ & (!\outputs[4]~reg0_q\ $ (((\outputs[5]~reg0_q\))))) # (\quad_segment7_1|bcd~0_combout\ & ((!\outputs[4]~reg0_q\ 
-- & (!\outputs[3]~reg0_q\ & \outputs[5]~reg0_q\)) # (\outputs[4]~reg0_q\ & (\outputs[3]~reg0_q\ & !\outputs[5]~reg0_q\)))) ) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( \quad_segment7_1|bcd~1_combout\ & ( (!\outputs[4]~reg0_q\ & ((!\outputs[3]~reg0_q\ & 
-- (\outputs[5]~reg0_q\ & \quad_segment7_1|bcd~0_combout\)) # (\outputs[3]~reg0_q\ & (!\outputs[5]~reg0_q\ & !\quad_segment7_1|bcd~0_combout\)))) # (\outputs[4]~reg0_q\ & (!\quad_segment7_1|bcd~0_combout\ $ (((\outputs[3]~reg0_q\ & !\outputs[5]~reg0_q\))))) 
-- ) ) ) # ( \quad_segment7_1|bcd~2_combout\ & ( !\quad_segment7_1|bcd~1_combout\ & ( (!\outputs[4]~reg0_q\ & (((!\outputs[5]~reg0_q\ & !\quad_segment7_1|bcd~0_combout\)) # (\outputs[3]~reg0_q\))) # (\outputs[4]~reg0_q\ & (!\outputs[3]~reg0_q\ & 
-- (!\outputs[5]~reg0_q\ $ (!\quad_segment7_1|bcd~0_combout\)))) ) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( !\quad_segment7_1|bcd~1_combout\ & ( (!\outputs[4]~reg0_q\ & (\quad_segment7_1|bcd~0_combout\ & ((!\outputs[3]~reg0_q\) # (\outputs[5]~reg0_q\)))) 
-- # (\outputs[4]~reg0_q\ & (!\quad_segment7_1|bcd~0_combout\ & ((!\outputs[5]~reg0_q\) # (\outputs[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110001010101001100110001001100101000110001010010100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[4]~reg0_q\,
	datab => \ALT_INV_outputs[3]~reg0_q\,
	datac => \ALT_INV_outputs[5]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|bcd~4_combout\);

-- Location: LABCELL_X64_Y5_N48
\quad_segment7_1|bcd~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~5_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \outputs[4]~reg0_q\ & ( (!\outputs[3]~reg0_q\ & (!\quad_segment7_1|bcd~1_combout\ & (!\outputs[5]~reg0_q\ $ (!\quad_segment7_1|bcd~2_combout\)))) ) ) ) # ( 
-- !\quad_segment7_1|bcd~0_combout\ & ( \outputs[4]~reg0_q\ & ( (!\quad_segment7_1|bcd~1_combout\ & (\quad_segment7_1|bcd~2_combout\ & (!\outputs[5]~reg0_q\ $ (\outputs[3]~reg0_q\)))) # (\quad_segment7_1|bcd~1_combout\ & (!\outputs[5]~reg0_q\ & 
-- (!\outputs[3]~reg0_q\ $ (!\quad_segment7_1|bcd~2_combout\)))) ) ) ) # ( \quad_segment7_1|bcd~0_combout\ & ( !\outputs[4]~reg0_q\ & ( (!\outputs[3]~reg0_q\ & (!\outputs[5]~reg0_q\ & ((\quad_segment7_1|bcd~1_combout\) # (\quad_segment7_1|bcd~2_combout\)))) 
-- # (\outputs[3]~reg0_q\ & (!\outputs[5]~reg0_q\ $ (((\quad_segment7_1|bcd~1_combout\))))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( !\outputs[4]~reg0_q\ & ( (\outputs[5]~reg0_q\ & (!\outputs[3]~reg0_q\ & (!\quad_segment7_1|bcd~2_combout\ & 
-- !\quad_segment7_1|bcd~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000001010101001100100001001001010000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[5]~reg0_q\,
	datab => \ALT_INV_outputs[3]~reg0_q\,
	datac => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_outputs[4]~reg0_q\,
	combout => \quad_segment7_1|bcd~5_combout\);

-- Location: LABCELL_X65_Y5_N36
\quad_segment7_1|digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[3]~2_combout\ = ( \quad_segment7_1|bcd~5_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (!\quad_segment7_1|bcd~4_combout\ & (\outputs[2]~reg0_q\ & \outputs[1]~reg0_q\))) # (\quad_segment7_1|bcd~3_combout\ & ((!\outputs[2]~reg0_q\ 
-- & (!\quad_segment7_1|bcd~4_combout\)) # (\outputs[2]~reg0_q\ & ((!\outputs[1]~reg0_q\))))) ) ) # ( !\quad_segment7_1|bcd~5_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (\quad_segment7_1|bcd~4_combout\ & (!\outputs[2]~reg0_q\ & \outputs[1]~reg0_q\))) # 
-- (\quad_segment7_1|bcd~3_combout\ & (!\outputs[1]~reg0_q\ & (!\quad_segment7_1|bcd~4_combout\ $ (\outputs[2]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100100000010001010100100001000001001000000100010101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	datac => \ALT_INV_outputs[2]~reg0_q\,
	datad => \ALT_INV_outputs[1]~reg0_q\,
	datae => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	combout => \quad_segment7_1|digit1[3]~2_combout\);

-- Location: LABCELL_X65_Y5_N30
\quad_segment7_1|digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[1]~0_combout\ = ( \quad_segment7_1|bcd~4_combout\ & ( (!\outputs[2]~reg0_q\ & (!\outputs[1]~reg0_q\ $ (\quad_segment7_1|bcd~3_combout\))) # (\outputs[2]~reg0_q\ & (\outputs[1]~reg0_q\ & !\quad_segment7_1|bcd~3_combout\)) ) ) # ( 
-- !\quad_segment7_1|bcd~4_combout\ & ( (!\quad_segment7_1|bcd~5_combout\ & ((!\outputs[1]~reg0_q\ & (\outputs[2]~reg0_q\ & \quad_segment7_1|bcd~3_combout\)) # (\outputs[1]~reg0_q\ & ((!\quad_segment7_1|bcd~3_combout\))))) # (\quad_segment7_1|bcd~5_combout\ 
-- & (((!\outputs[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001110000001111000111000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[2]~reg0_q\,
	datab => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_outputs[1]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|digit1[1]~0_combout\);

-- Location: LABCELL_X65_Y5_N33
\quad_segment7_1|digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[2]~1_combout\ = ( \quad_segment7_1|bcd~4_combout\ & ( (!\outputs[2]~reg0_q\ & ((!\quad_segment7_1|bcd~5_combout\ $ (\outputs[1]~reg0_q\)) # (\quad_segment7_1|bcd~3_combout\))) ) ) # ( !\quad_segment7_1|bcd~4_combout\ & ( 
-- (!\quad_segment7_1|bcd~5_combout\ & (\outputs[2]~reg0_q\ & ((!\quad_segment7_1|bcd~3_combout\) # (\outputs[1]~reg0_q\)))) # (\quad_segment7_1|bcd~5_combout\ & (!\outputs[2]~reg0_q\ $ ((!\outputs[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000010110010101100001011010000010101010101000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[2]~reg0_q\,
	datab => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_outputs[1]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|digit1[2]~1_combout\);

-- Location: LABCELL_X65_Y5_N21
\quad_segment7_1|LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux6~0_combout\ = ( \quad_segment7_1|digit1[2]~1_combout\ & ( (!\quad_segment7_1|digit1[3]~2_combout\ & (!\outputs[0]~reg0_q\ & !\quad_segment7_1|digit1[1]~0_combout\)) ) ) # ( !\quad_segment7_1|digit1[2]~1_combout\ & ( 
-- (!\quad_segment7_1|digit1[3]~2_combout\ & (\outputs[0]~reg0_q\ & !\quad_segment7_1|digit1[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X65_Y5_N24
\quad_segment7_1|LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux5~0_combout\ = ( \outputs[1]~reg0_q\ & ( \quad_segment7_1|bcd~4_combout\ & ( (!\outputs[2]~reg0_q\ & ((!\quad_segment7_1|bcd~3_combout\ & (\outputs[0]~reg0_q\ & \quad_segment7_1|bcd~5_combout\)) # 
-- (\quad_segment7_1|bcd~3_combout\ & (!\outputs[0]~reg0_q\)))) ) ) ) # ( !\outputs[1]~reg0_q\ & ( \quad_segment7_1|bcd~4_combout\ & ( (!\outputs[2]~reg0_q\ & ((!\quad_segment7_1|bcd~3_combout\ & (!\outputs[0]~reg0_q\ & !\quad_segment7_1|bcd~5_combout\)) # 
-- (\quad_segment7_1|bcd~3_combout\ & (\outputs[0]~reg0_q\)))) ) ) ) # ( \outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( (!\outputs[2]~reg0_q\ & (((\outputs[0]~reg0_q\ & \quad_segment7_1|bcd~5_combout\)))) # (\outputs[2]~reg0_q\ & 
-- (!\quad_segment7_1|bcd~5_combout\ & (!\quad_segment7_1|bcd~3_combout\ $ (\outputs[0]~reg0_q\)))) ) ) ) # ( !\outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( (\outputs[2]~reg0_q\ & ((!\outputs[0]~reg0_q\ & ((\quad_segment7_1|bcd~5_combout\))) # 
-- (\outputs[0]~reg0_q\ & (!\quad_segment7_1|bcd~3_combout\ & !\quad_segment7_1|bcd~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001100000010010011000010010000000100000100000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \ALT_INV_outputs[2]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datae => \ALT_INV_outputs[1]~reg0_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X65_Y5_N6
\quad_segment7_1|LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux4~0_combout\ = ( \outputs[1]~reg0_q\ & ( \quad_segment7_1|bcd~4_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (!\outputs[0]~reg0_q\ & \outputs[2]~reg0_q\)) ) ) ) # ( !\outputs[1]~reg0_q\ & ( 
-- \quad_segment7_1|bcd~4_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (!\outputs[0]~reg0_q\ & (!\outputs[2]~reg0_q\ & \quad_segment7_1|bcd~5_combout\))) ) ) ) # ( \outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( 
-- (!\quad_segment7_1|bcd~3_combout\ & (!\outputs[0]~reg0_q\ & (!\outputs[2]~reg0_q\ & !\quad_segment7_1|bcd~5_combout\))) ) ) ) # ( !\outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( (!\outputs[0]~reg0_q\ & ((!\outputs[2]~reg0_q\ & 
-- ((\quad_segment7_1|bcd~5_combout\))) # (\outputs[2]~reg0_q\ & (\quad_segment7_1|bcd~3_combout\ & !\quad_segment7_1|bcd~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000000100000000000000000000000100000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \ALT_INV_outputs[2]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datae => \ALT_INV_outputs[1]~reg0_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X65_Y5_N0
\quad_segment7_1|LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux3~0_combout\ = ( \quad_segment7_1|digit1[1]~0_combout\ & ( (\quad_segment7_1|digit1[2]~1_combout\ & (\outputs[0]~reg0_q\ & !\quad_segment7_1|digit1[3]~2_combout\)) ) ) # ( !\quad_segment7_1|digit1[1]~0_combout\ & ( 
-- (!\quad_segment7_1|digit1[3]~2_combout\ & (!\quad_segment7_1|digit1[2]~1_combout\ $ (!\outputs[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X65_Y5_N54
\quad_segment7_1|LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux2~0_combout\ = ( \outputs[1]~reg0_q\ & ( \quad_segment7_1|bcd~4_combout\ & ( ((!\quad_segment7_1|bcd~3_combout\ & (!\outputs[2]~reg0_q\ & \quad_segment7_1|bcd~5_combout\))) # (\outputs[0]~reg0_q\) ) ) ) # ( 
-- !\outputs[1]~reg0_q\ & ( \quad_segment7_1|bcd~4_combout\ & ( ((\quad_segment7_1|bcd~3_combout\ & !\outputs[2]~reg0_q\)) # (\outputs[0]~reg0_q\) ) ) ) # ( \outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( ((!\outputs[2]~reg0_q\ & 
-- ((\quad_segment7_1|bcd~5_combout\))) # (\outputs[2]~reg0_q\ & (\quad_segment7_1|bcd~3_combout\ & !\quad_segment7_1|bcd~5_combout\))) # (\outputs[0]~reg0_q\) ) ) ) # ( !\outputs[1]~reg0_q\ & ( !\quad_segment7_1|bcd~4_combout\ & ( 
-- ((!\quad_segment7_1|bcd~3_combout\ & (\outputs[2]~reg0_q\ & !\quad_segment7_1|bcd~5_combout\))) # (\outputs[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011001101111111001101110011011100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \ALT_INV_outputs[2]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datae => \ALT_INV_outputs[1]~reg0_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X65_Y5_N3
\quad_segment7_1|LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux1~0_combout\ = ( \quad_segment7_1|digit1[1]~0_combout\ & ( (!\quad_segment7_1|digit1[3]~2_combout\ & ((!\quad_segment7_1|digit1[2]~1_combout\) # (\outputs[0]~reg0_q\))) ) ) # ( !\quad_segment7_1|digit1[1]~0_combout\ & ( 
-- (!\quad_segment7_1|digit1[2]~1_combout\ & (\outputs[0]~reg0_q\ & !\quad_segment7_1|digit1[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X65_Y5_N51
\quad_segment7_1|LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux0~0_combout\ = ( \quad_segment7_1|digit1[2]~1_combout\ & ( ((!\outputs[0]~reg0_q\) # (!\quad_segment7_1|digit1[1]~0_combout\)) # (\quad_segment7_1|digit1[3]~2_combout\) ) ) # ( !\quad_segment7_1|digit1[2]~1_combout\ & ( 
-- (\quad_segment7_1|digit1[1]~0_combout\) # (\quad_segment7_1|digit1[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datab => \ALT_INV_outputs[0]~reg0_q\,
	datac => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y5_N6
\quad_segment7_1|bcd~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~8_combout\ = ( \outputs[4]~reg0_q\ & ( (!\quad_segment7_1|bcd~2_combout\ & (!\quad_segment7_1|bcd~0_combout\ $ (((!\quad_segment7_1|bcd~1_combout\) # (\outputs[5]~reg0_q\))))) # (\quad_segment7_1|bcd~2_combout\ & 
-- (!\quad_segment7_1|bcd~1_combout\ $ (((\outputs[5]~reg0_q\ & \quad_segment7_1|bcd~0_combout\))))) ) ) # ( !\outputs[4]~reg0_q\ & ( (!\quad_segment7_1|bcd~2_combout\ & ((!\quad_segment7_1|bcd~1_combout\ & (\outputs[5]~reg0_q\ & 
-- \quad_segment7_1|bcd~0_combout\)) # (\quad_segment7_1|bcd~1_combout\ & (!\outputs[5]~reg0_q\ & !\quad_segment7_1|bcd~0_combout\)))) # (\quad_segment7_1|bcd~2_combout\ & (!\quad_segment7_1|bcd~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010001001100011001000100110001100100110010110110010011001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \ALT_INV_outputs[5]~reg0_q\,
	datad => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_outputs[4]~reg0_q\,
	combout => \quad_segment7_1|bcd~8_combout\);

-- Location: LABCELL_X61_Y6_N27
\quad_segment7_1|bcd~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~11_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & ((!\outputs[11]~reg0_q\) # ((!\outputs[7]~reg0_q\ & !\outputs[6]~reg0_q\)))) # (\outputs[10]~reg0_q\ & (((\outputs[11]~reg0_q\)))) ) ) ) # ( 
-- !\outputs[8]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & ((\outputs[11]~reg0_q\) # (\outputs[7]~reg0_q\))) ) ) ) # ( \outputs[8]~reg0_q\ & ( !\outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\) ) ) ) # ( 
-- !\outputs[8]~reg0_q\ & ( !\outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & (\outputs[7]~reg0_q\ & (\outputs[6]~reg0_q\ & \outputs[11]~reg0_q\))) # (\outputs[10]~reg0_q\ & (((!\outputs[11]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010000000000001111000001010000111100001111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[7]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[10]~reg0_q\,
	datad => \ALT_INV_outputs[11]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[9]~reg0_q\,
	combout => \quad_segment7_1|bcd~11_combout\);

-- Location: LABCELL_X61_Y6_N6
\quad_segment7_1|bcd~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~12_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[11]~reg0_q\ & !\outputs[9]~reg0_q\) ) ) ) # ( !\outputs[8]~reg0_q\ & ( \outputs[10]~reg0_q\ & ( (!\outputs[7]~reg0_q\ & ((!\outputs[11]~reg0_q\ & 
-- (!\outputs[6]~reg0_q\ & \outputs[9]~reg0_q\)) # (\outputs[11]~reg0_q\ & ((!\outputs[9]~reg0_q\))))) ) ) ) # ( \outputs[8]~reg0_q\ & ( !\outputs[10]~reg0_q\ & ( (\outputs[11]~reg0_q\ & (\outputs[9]~reg0_q\ & ((\outputs[7]~reg0_q\) # 
-- (\outputs[6]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001010101010000100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[11]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[7]~reg0_q\,
	datad => \ALT_INV_outputs[9]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[10]~reg0_q\,
	combout => \quad_segment7_1|bcd~12_combout\);

-- Location: LABCELL_X65_Y4_N57
\quad_segment7_1|bcd~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~7_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \outputs[5]~reg0_q\ & ( (!\outputs[4]~reg0_q\ & (((\quad_segment7_1|bcd~1_combout\)))) # (\outputs[4]~reg0_q\ & (\outputs[3]~reg0_q\ & (!\quad_segment7_1|bcd~2_combout\ & 
-- !\quad_segment7_1|bcd~1_combout\))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( \outputs[5]~reg0_q\ & ( (!\quad_segment7_1|bcd~1_combout\ & (((\quad_segment7_1|bcd~2_combout\) # (\outputs[4]~reg0_q\)) # (\outputs[3]~reg0_q\))) ) ) ) # ( 
-- \quad_segment7_1|bcd~0_combout\ & ( !\outputs[5]~reg0_q\ & ( (!\outputs[4]~reg0_q\ & (((!\quad_segment7_1|bcd~1_combout\)) # (\outputs[3]~reg0_q\))) # (\outputs[4]~reg0_q\ & (((!\outputs[3]~reg0_q\ & \quad_segment7_1|bcd~2_combout\)) # 
-- (\quad_segment7_1|bcd~1_combout\))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( !\outputs[5]~reg0_q\ & ( (!\quad_segment7_1|bcd~2_combout\ & (((\quad_segment7_1|bcd~1_combout\)))) # (\quad_segment7_1|bcd~2_combout\ & (\outputs[3]~reg0_q\ & 
-- (\outputs[4]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001110011100111011101111111000000000001000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[3]~reg0_q\,
	datab => \ALT_INV_outputs[4]~reg0_q\,
	datac => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_outputs[5]~reg0_q\,
	combout => \quad_segment7_1|bcd~7_combout\);

-- Location: LABCELL_X65_Y4_N24
\quad_segment7_1|bcd~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~9_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ (\quad_segment7_1|bcd~1_combout\) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ (((\outputs[5]~reg0_q\ & 
-- \quad_segment7_1|bcd~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100111001001110000111100001111001001110010011100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[5]~reg0_q\,
	datab => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|bcd~9_combout\);

-- Location: LABCELL_X61_Y6_N0
\quad_segment7_1|bcd~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~10_combout\ = ( \outputs[11]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( (!\outputs[8]~reg0_q\) # ((!\outputs[6]~reg0_q\ & (!\outputs[7]~reg0_q\ & !\outputs[10]~reg0_q\))) ) ) ) # ( !\outputs[11]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( 
-- (!\outputs[8]~reg0_q\ & (((!\outputs[7]~reg0_q\ & !\outputs[10]~reg0_q\)))) # (\outputs[8]~reg0_q\ & (\outputs[7]~reg0_q\ & ((\outputs[10]~reg0_q\) # (\outputs[6]~reg0_q\)))) ) ) ) # ( \outputs[11]~reg0_q\ & ( !\outputs[9]~reg0_q\ & ( 
-- (!\outputs[8]~reg0_q\ & (!\outputs[10]~reg0_q\ & ((!\outputs[6]~reg0_q\) # (!\outputs[7]~reg0_q\)))) # (\outputs[8]~reg0_q\ & (\outputs[6]~reg0_q\ & (\outputs[7]~reg0_q\ & \outputs[10]~reg0_q\))) ) ) ) # ( !\outputs[11]~reg0_q\ & ( !\outputs[9]~reg0_q\ & 
-- ( (!\outputs[8]~reg0_q\ & (((\outputs[10]~reg0_q\)))) # (\outputs[8]~reg0_q\ & (!\outputs[10]~reg0_q\ & ((\outputs[7]~reg0_q\) # (\outputs[6]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110101010101010000000000110100001000001011110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[8]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[7]~reg0_q\,
	datad => \ALT_INV_outputs[10]~reg0_q\,
	datae => \ALT_INV_outputs[11]~reg0_q\,
	dataf => \ALT_INV_outputs[9]~reg0_q\,
	combout => \quad_segment7_1|bcd~10_combout\);

-- Location: LABCELL_X61_Y2_N36
\quad_segment7_1|bcd~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~15_combout\ = ( \quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~11_combout\ & ((!\quad_segment7_1|bcd~7_combout\ & ((\quad_segment7_1|bcd~12_combout\))) # 
-- (\quad_segment7_1|bcd~7_combout\ & (!\quad_segment7_1|bcd~8_combout\)))) # (\quad_segment7_1|bcd~11_combout\ & (!\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~7_combout\)))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( 
-- \quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & (\quad_segment7_1|bcd~11_combout\ & ((\quad_segment7_1|bcd~7_combout\)))) # (\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~11_combout\ & (!\quad_segment7_1|bcd~12_combout\ 
-- & !\quad_segment7_1|bcd~7_combout\))) ) ) ) # ( \quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( (\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~12_combout\ & (\quad_segment7_1|bcd~11_combout\ & 
-- \quad_segment7_1|bcd~7_combout\)) # (\quad_segment7_1|bcd~12_combout\ & ((!\quad_segment7_1|bcd~7_combout\))))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~11_combout\ & 
-- ((!\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~12_combout\ & !\quad_segment7_1|bcd~7_combout\)) # (\quad_segment7_1|bcd~8_combout\ & (\quad_segment7_1|bcd~12_combout\ & \quad_segment7_1|bcd~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000100000001010001000001000000001000100010111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~8_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~7_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	combout => \quad_segment7_1|bcd~15_combout\);

-- Location: LABCELL_X61_Y2_N6
\quad_segment7_1|bcd~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~14_combout\ = ( \quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~11_combout\ & (!\quad_segment7_1|bcd~12_combout\ $ 
-- (\quad_segment7_1|bcd~7_combout\)))) # (\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~11_combout\ & (\quad_segment7_1|bcd~12_combout\ & !\quad_segment7_1|bcd~7_combout\)) # (\quad_segment7_1|bcd~11_combout\ & 
-- ((\quad_segment7_1|bcd~7_combout\))))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~11_combout\ & ((!\quad_segment7_1|bcd~12_combout\) # 
-- (\quad_segment7_1|bcd~7_combout\))) # (\quad_segment7_1|bcd~11_combout\ & ((!\quad_segment7_1|bcd~7_combout\))))) ) ) ) # ( \quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( !\quad_segment7_1|bcd~8_combout\ $ 
-- (((!\quad_segment7_1|bcd~12_combout\ & ((!\quad_segment7_1|bcd~11_combout\) # (!\quad_segment7_1|bcd~7_combout\))))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & 
-- (!\quad_segment7_1|bcd~11_combout\ & (\quad_segment7_1|bcd~12_combout\ & \quad_segment7_1|bcd~7_combout\))) # (\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~12_combout\ $ (!\quad_segment7_1|bcd~7_combout\)) # 
-- (\quad_segment7_1|bcd~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101011001010110100110101010100010100010001000010000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~8_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~7_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	combout => \quad_segment7_1|bcd~14_combout\);

-- Location: LABCELL_X61_Y2_N24
\quad_segment7_1|bcd~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~13_combout\ = ( \quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~11_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~10_combout\ & (!\quad_segment7_1|bcd~7_combout\ $ 
-- (\quad_segment7_1|bcd~12_combout\)))) # (\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~7_combout\ & ((!\quad_segment7_1|bcd~12_combout\) # (\quad_segment7_1|bcd~10_combout\)))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( 
-- \quad_segment7_1|bcd~11_combout\ & ( !\quad_segment7_1|bcd~7_combout\ $ (((!\quad_segment7_1|bcd~10_combout\) # (\quad_segment7_1|bcd~8_combout\))) ) ) ) # ( \quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~11_combout\ & ( 
-- (!\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~7_combout\ $ (((!\quad_segment7_1|bcd~10_combout\))))) # (\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~7_combout\ & (\quad_segment7_1|bcd~12_combout\ & 
-- \quad_segment7_1|bcd~10_combout\)) # (\quad_segment7_1|bcd~7_combout\ & (!\quad_segment7_1|bcd~12_combout\)))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~11_combout\ & ( (!\quad_segment7_1|bcd~7_combout\ & 
-- ((!\quad_segment7_1|bcd~8_combout\ & (\quad_segment7_1|bcd~12_combout\)) # (\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~10_combout\))))) # (\quad_segment7_1|bcd~7_combout\ & (\quad_segment7_1|bcd~10_combout\ & 
-- (!\quad_segment7_1|bcd~8_combout\ $ (\quad_segment7_1|bcd~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000101001001100101001110000110011100110011100001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~8_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~7_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	combout => \quad_segment7_1|bcd~13_combout\);

-- Location: LABCELL_X65_Y5_N42
\quad_segment7_1|bcd~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~6_combout\ = ( \quad_segment7_1|bcd~4_combout\ & ( !\quad_segment7_1|bcd~5_combout\ $ (((\outputs[2]~reg0_q\) # (\quad_segment7_1|bcd~3_combout\))) ) ) # ( !\quad_segment7_1|bcd~4_combout\ & ( !\quad_segment7_1|bcd~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_outputs[2]~reg0_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|bcd~6_combout\);

-- Location: LABCELL_X61_Y2_N18
\quad_segment7_1|digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[3]~3_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( (!\quad_segment7_1|bcd~14_combout\ & (\quad_segment7_1|bcd~15_combout\ & \quad_segment7_1|bcd~13_combout\)) # (\quad_segment7_1|bcd~14_combout\ & 
-- ((!\quad_segment7_1|bcd~13_combout\))) ) ) # ( !\quad_segment7_1|bcd~6_combout\ & ( (\quad_segment7_1|bcd~15_combout\ & !\quad_segment7_1|bcd~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000110100001101000011010000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|digit2[3]~3_combout\);

-- Location: LABCELL_X65_Y5_N45
\quad_segment7_1|digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[0]~0_combout\ = ( \quad_segment7_1|bcd~4_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (!\quad_segment7_1|bcd~5_combout\ & ((!\outputs[2]~reg0_q\)))) # (\quad_segment7_1|bcd~3_combout\ & (((\outputs[1]~reg0_q\ & 
-- \outputs[2]~reg0_q\)))) ) ) # ( !\quad_segment7_1|bcd~4_combout\ & ( (!\quad_segment7_1|bcd~3_combout\ & (\quad_segment7_1|bcd~5_combout\)) # (\quad_segment7_1|bcd~3_combout\ & ((!\quad_segment7_1|bcd~5_combout\ & ((\outputs[2]~reg0_q\) # 
-- (\outputs[1]~reg0_q\))) # (\quad_segment7_1|bcd~5_combout\ & ((!\outputs[1]~reg0_q\) # (!\outputs[2]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101110110001101110111011010001000000001011000100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~3_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~5_combout\,
	datac => \ALT_INV_outputs[1]~reg0_q\,
	datad => \ALT_INV_outputs[2]~reg0_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~4_combout\,
	combout => \quad_segment7_1|digit2[0]~0_combout\);

-- Location: LABCELL_X61_Y2_N57
\quad_segment7_1|digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[1]~1_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( ((\quad_segment7_1|bcd~13_combout\ & \quad_segment7_1|bcd~14_combout\)) # (\quad_segment7_1|bcd~15_combout\) ) ) # ( !\quad_segment7_1|bcd~6_combout\ & ( 
-- (!\quad_segment7_1|bcd~14_combout\ & !\quad_segment7_1|bcd~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|digit2[1]~1_combout\);

-- Location: LABCELL_X61_Y2_N48
\quad_segment7_1|digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[2]~2_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( (!\quad_segment7_1|bcd~13_combout\ & ((\quad_segment7_1|bcd~15_combout\))) # (\quad_segment7_1|bcd~13_combout\ & (!\quad_segment7_1|bcd~14_combout\ & 
-- !\quad_segment7_1|bcd~15_combout\)) ) ) # ( !\quad_segment7_1|bcd~6_combout\ & ( \quad_segment7_1|bcd~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101001010010010100100101001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|digit2[2]~2_combout\);

-- Location: LABCELL_X61_Y2_N15
\quad_segment7_1|second_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux6~0_combout\ = ( \quad_segment7_1|digit2[2]~2_combout\ & ( (!\quad_segment7_1|digit2[3]~3_combout\ & (!\quad_segment7_1|digit2[0]~0_combout\ & !\quad_segment7_1|digit2[1]~1_combout\)) ) ) # ( 
-- !\quad_segment7_1|digit2[2]~2_combout\ & ( (!\quad_segment7_1|digit2[3]~3_combout\ & (\quad_segment7_1|digit2[0]~0_combout\ & !\quad_segment7_1|digit2[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	combout => \quad_segment7_1|second_segment7|Mux6~0_combout\);

-- Location: LABCELL_X61_Y2_N30
\quad_segment7_1|second_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux5~0_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( (!\quad_segment7_1|bcd~13_combout\ & (((\quad_segment7_1|bcd~15_combout\ & !\quad_segment7_1|digit2[0]~0_combout\)))) # (\quad_segment7_1|bcd~13_combout\ & 
-- (!\quad_segment7_1|bcd~14_combout\ & (!\quad_segment7_1|bcd~15_combout\ & \quad_segment7_1|digit2[0]~0_combout\))) ) ) # ( !\quad_segment7_1|bcd~6_combout\ & ( (\quad_segment7_1|bcd~13_combout\ & (!\quad_segment7_1|digit2[0]~0_combout\ $ 
-- (((\quad_segment7_1|bcd~15_combout\) # (\quad_segment7_1|bcd~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010100001010010000000000101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|second_segment7|Mux5~0_combout\);

-- Location: LABCELL_X61_Y2_N33
\quad_segment7_1|second_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux4~0_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( (\quad_segment7_1|bcd~13_combout\ & (!\quad_segment7_1|digit2[0]~0_combout\ & ((\quad_segment7_1|bcd~15_combout\) # (\quad_segment7_1|bcd~14_combout\)))) ) ) # ( 
-- !\quad_segment7_1|bcd~6_combout\ & ( (!\quad_segment7_1|bcd~13_combout\ & (!\quad_segment7_1|bcd~14_combout\ & (!\quad_segment7_1|digit2[0]~0_combout\ & !\quad_segment7_1|bcd~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|second_segment7|Mux4~0_combout\);

-- Location: LABCELL_X61_Y2_N0
\quad_segment7_1|second_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux3~0_combout\ = ( !\quad_segment7_1|digit2[3]~3_combout\ & ( (!\quad_segment7_1|digit2[0]~0_combout\ & (\quad_segment7_1|digit2[2]~2_combout\ & !\quad_segment7_1|digit2[1]~1_combout\)) # 
-- (\quad_segment7_1|digit2[0]~0_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ $ (\quad_segment7_1|digit2[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \quad_segment7_1|second_segment7|Mux3~0_combout\);

-- Location: LABCELL_X61_Y2_N54
\quad_segment7_1|second_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux2~0_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( ((\quad_segment7_1|bcd~13_combout\ & (!\quad_segment7_1|bcd~14_combout\ & !\quad_segment7_1|bcd~15_combout\))) # (\quad_segment7_1|digit2[0]~0_combout\) ) ) # ( 
-- !\quad_segment7_1|bcd~6_combout\ & ( ((\quad_segment7_1|bcd~13_combout\ & ((\quad_segment7_1|bcd~15_combout\) # (\quad_segment7_1|bcd~14_combout\)))) # (\quad_segment7_1|digit2[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111101000000111111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|second_segment7|Mux2~0_combout\);

-- Location: LABCELL_X61_Y2_N12
\quad_segment7_1|second_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux1~0_combout\ = ( !\quad_segment7_1|digit2[3]~3_combout\ & ( (!\quad_segment7_1|digit2[0]~0_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ & \quad_segment7_1|digit2[1]~1_combout\)) # 
-- (\quad_segment7_1|digit2[0]~0_combout\ & ((!\quad_segment7_1|digit2[2]~2_combout\) # (\quad_segment7_1|digit2[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \quad_segment7_1|second_segment7|Mux1~0_combout\);

-- Location: LABCELL_X61_Y2_N3
\quad_segment7_1|second_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux0~0_combout\ = ( \quad_segment7_1|digit2[2]~2_combout\ & ( ((!\quad_segment7_1|digit2[0]~0_combout\) # (!\quad_segment7_1|digit2[1]~1_combout\)) # (\quad_segment7_1|digit2[3]~3_combout\) ) ) # ( 
-- !\quad_segment7_1|digit2[2]~2_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\) # (\quad_segment7_1|digit2[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	combout => \quad_segment7_1|second_segment7|Mux0~0_combout\);

-- Location: LABCELL_X61_Y2_N51
\quad_segment7_1|digit3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit3[0]~0_combout\ = ( \quad_segment7_1|bcd~6_combout\ & ( !\quad_segment7_1|bcd~15_combout\ $ (((\quad_segment7_1|bcd~13_combout\ & \quad_segment7_1|bcd~14_combout\))) ) ) # ( !\quad_segment7_1|bcd~6_combout\ & ( 
-- !\quad_segment7_1|bcd~14_combout\ $ (\quad_segment7_1|bcd~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~13_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~14_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~15_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~6_combout\,
	combout => \quad_segment7_1|digit3[0]~0_combout\);

-- Location: LABCELL_X61_Y6_N15
\quad_segment7_1|bcd~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~19_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( !\outputs[10]~reg0_q\ $ (!\outputs[11]~reg0_q\) ) ) ) # ( !\outputs[8]~reg0_q\ & ( \outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & (((\outputs[11]~reg0_q\)))) # 
-- (\outputs[10]~reg0_q\ & (!\outputs[11]~reg0_q\ & ((\outputs[6]~reg0_q\) # (\outputs[7]~reg0_q\)))) ) ) ) # ( \outputs[8]~reg0_q\ & ( !\outputs[9]~reg0_q\ & ( (!\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\) ) ) ) # ( !\outputs[8]~reg0_q\ & ( 
-- !\outputs[9]~reg0_q\ & ( (\outputs[11]~reg0_q\ & ((!\outputs[7]~reg0_q\) # (!\outputs[10]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111000000000111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outputs[7]~reg0_q\,
	datab => \ALT_INV_outputs[6]~reg0_q\,
	datac => \ALT_INV_outputs[10]~reg0_q\,
	datad => \ALT_INV_outputs[11]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[9]~reg0_q\,
	combout => \quad_segment7_1|bcd~19_combout\);

-- Location: LABCELL_X61_Y6_N39
\quad_segment7_1|LessThan13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LessThan13~0_combout\ = ( \outputs[8]~reg0_q\ & ( \outputs[7]~reg0_q\ & ( (\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\) ) ) ) # ( !\outputs[8]~reg0_q\ & ( \outputs[7]~reg0_q\ & ( (\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\) ) ) ) # ( 
-- \outputs[8]~reg0_q\ & ( !\outputs[7]~reg0_q\ & ( (\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\) ) ) ) # ( !\outputs[8]~reg0_q\ & ( !\outputs[7]~reg0_q\ & ( (\outputs[9]~reg0_q\ & (\outputs[10]~reg0_q\ & \outputs[11]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_outputs[9]~reg0_q\,
	datac => \ALT_INV_outputs[10]~reg0_q\,
	datad => \ALT_INV_outputs[11]~reg0_q\,
	datae => \ALT_INV_outputs[8]~reg0_q\,
	dataf => \ALT_INV_outputs[7]~reg0_q\,
	combout => \quad_segment7_1|LessThan13~0_combout\);

-- Location: LABCELL_X61_Y6_N33
\quad_segment7_1|bcd~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~18_combout\ = ( \quad_segment7_1|bcd~12_combout\ & ( (\quad_segment7_1|bcd~11_combout\ & ((!\quad_segment7_1|bcd~9_combout\) # (\quad_segment7_1|bcd~10_combout\))) ) ) # ( !\quad_segment7_1|bcd~12_combout\ & ( 
-- (!\quad_segment7_1|bcd~11_combout\) # ((!\quad_segment7_1|bcd~10_combout\ & \quad_segment7_1|bcd~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111101000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	combout => \quad_segment7_1|bcd~18_combout\);

-- Location: LABCELL_X61_Y2_N42
\quad_segment7_1|bcd~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~16_combout\ = ( \quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~8_combout\ & ((!\quad_segment7_1|bcd~11_combout\) # ((\quad_segment7_1|bcd~7_combout\)))) # 
-- (\quad_segment7_1|bcd~8_combout\ & (((\quad_segment7_1|bcd~12_combout\ & !\quad_segment7_1|bcd~7_combout\)) # (\quad_segment7_1|bcd~11_combout\))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( \quad_segment7_1|bcd~10_combout\ & ( 
-- (!\quad_segment7_1|bcd~8_combout\ & (\quad_segment7_1|bcd~11_combout\)) # (\quad_segment7_1|bcd~8_combout\ & (!\quad_segment7_1|bcd~11_combout\ & (!\quad_segment7_1|bcd~12_combout\ & \quad_segment7_1|bcd~7_combout\))) ) ) ) # ( 
-- \quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~12_combout\ & (((\quad_segment7_1|bcd~11_combout\)))) # (\quad_segment7_1|bcd~12_combout\ & (\quad_segment7_1|bcd~8_combout\ & 
-- ((\quad_segment7_1|bcd~7_combout\)))) ) ) ) # ( !\quad_segment7_1|bcd~9_combout\ & ( !\quad_segment7_1|bcd~10_combout\ & ( (!\quad_segment7_1|bcd~11_combout\ & (((\quad_segment7_1|bcd~7_combout\) # (\quad_segment7_1|bcd~12_combout\)) # 
-- (\quad_segment7_1|bcd~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100001100000011010100100010011000101001110110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~8_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~7_combout\,
	datae => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	combout => \quad_segment7_1|bcd~16_combout\);

-- Location: LABCELL_X61_Y6_N30
\quad_segment7_1|bcd~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~17_combout\ = ( \quad_segment7_1|bcd~8_combout\ & ( (!\quad_segment7_1|bcd~12_combout\ & (!\quad_segment7_1|bcd~10_combout\ $ (((!\quad_segment7_1|bcd~9_combout\) # (!\quad_segment7_1|bcd~11_combout\))))) # 
-- (\quad_segment7_1|bcd~12_combout\ & (!\quad_segment7_1|bcd~11_combout\ $ (((\quad_segment7_1|bcd~10_combout\ & !\quad_segment7_1|bcd~9_combout\))))) ) ) # ( !\quad_segment7_1|bcd~8_combout\ & ( (!\quad_segment7_1|bcd~12_combout\ & 
-- ((!\quad_segment7_1|bcd~10_combout\ & (\quad_segment7_1|bcd~9_combout\ & \quad_segment7_1|bcd~11_combout\)) # (\quad_segment7_1|bcd~10_combout\ & (!\quad_segment7_1|bcd~9_combout\ & !\quad_segment7_1|bcd~11_combout\)))) # (\quad_segment7_1|bcd~12_combout\ 
-- & (((!\quad_segment7_1|bcd~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100001000011100110000100001100111010110000110011101011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~10_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~12_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~9_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~11_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~8_combout\,
	combout => \quad_segment7_1|bcd~17_combout\);

-- Location: LABCELL_X67_Y10_N6
\quad_segment7_1|digit3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit3[2]~2_combout\ = ( \quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~19_combout\ & ((!\quad_segment7_1|LessThan13~0_combout\ & ((\quad_segment7_1|bcd~16_combout\) # (\quad_segment7_1|bcd~18_combout\))) # 
-- (\quad_segment7_1|LessThan13~0_combout\ & ((!\quad_segment7_1|bcd~18_combout\) # (!\quad_segment7_1|bcd~16_combout\))))) # (\quad_segment7_1|bcd~19_combout\ & (\quad_segment7_1|LessThan13~0_combout\ & (\quad_segment7_1|bcd~18_combout\))) ) ) # ( 
-- !\quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~19_combout\ & (\quad_segment7_1|LessThan13~0_combout\ & (\quad_segment7_1|bcd~18_combout\ & \quad_segment7_1|bcd~16_combout\))) # (\quad_segment7_1|bcd~19_combout\ & 
-- ((!\quad_segment7_1|LessThan13~0_combout\ & ((!\quad_segment7_1|bcd~18_combout\) # (!\quad_segment7_1|bcd~16_combout\))) # (\quad_segment7_1|LessThan13~0_combout\ & (!\quad_segment7_1|bcd~18_combout\ & !\quad_segment7_1|bcd~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000010010101000100001000101011101010010010101110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datab => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	combout => \quad_segment7_1|digit3[2]~2_combout\);

-- Location: LABCELL_X67_Y10_N27
\quad_segment7_1|digit3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit3[1]~1_combout\ = ( \quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~19_combout\ & (!\quad_segment7_1|bcd~18_combout\ $ (!\quad_segment7_1|bcd~16_combout\ $ (!\quad_segment7_1|LessThan13~0_combout\)))) # 
-- (\quad_segment7_1|bcd~19_combout\ & (\quad_segment7_1|bcd~16_combout\ & ((\quad_segment7_1|LessThan13~0_combout\) # (\quad_segment7_1|bcd~18_combout\)))) ) ) # ( !\quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~18_combout\ & 
-- ((!\quad_segment7_1|bcd~16_combout\ & (\quad_segment7_1|bcd~19_combout\ & \quad_segment7_1|LessThan13~0_combout\)) # (\quad_segment7_1|bcd~16_combout\ & (!\quad_segment7_1|bcd~19_combout\ $ (!\quad_segment7_1|LessThan13~0_combout\))))) # 
-- (\quad_segment7_1|bcd~18_combout\ & (!\quad_segment7_1|bcd~16_combout\ $ (!\quad_segment7_1|bcd~19_combout\ $ (\quad_segment7_1|LessThan13~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001101001000101100110100110010001011000111001000101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datad => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	combout => \quad_segment7_1|digit3[1]~1_combout\);

-- Location: LABCELL_X67_Y10_N48
\quad_segment7_1|digit3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit3[3]~3_combout\ = ( \quad_segment7_1|LessThan13~0_combout\ & ( \quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~19_combout\ & (\quad_segment7_1|bcd~18_combout\ & \quad_segment7_1|bcd~16_combout\)) ) ) ) # ( 
-- !\quad_segment7_1|LessThan13~0_combout\ & ( \quad_segment7_1|bcd~17_combout\ & ( (\quad_segment7_1|bcd~19_combout\ & (!\quad_segment7_1|bcd~18_combout\ & !\quad_segment7_1|bcd~16_combout\)) ) ) ) # ( \quad_segment7_1|LessThan13~0_combout\ & ( 
-- !\quad_segment7_1|bcd~17_combout\ & ( (\quad_segment7_1|bcd~19_combout\ & (!\quad_segment7_1|bcd~18_combout\ & \quad_segment7_1|bcd~16_combout\)) ) ) ) # ( !\quad_segment7_1|LessThan13~0_combout\ & ( !\quad_segment7_1|bcd~17_combout\ & ( 
-- (!\quad_segment7_1|bcd~19_combout\ & (!\quad_segment7_1|bcd~18_combout\ & !\quad_segment7_1|bcd~16_combout\)) # (\quad_segment7_1|bcd~19_combout\ & (\quad_segment7_1|bcd~18_combout\ & \quad_segment7_1|bcd~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000011000000000011000000110000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	datae => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	combout => \quad_segment7_1|digit3[3]~3_combout\);

-- Location: LABCELL_X67_Y10_N21
\quad_segment7_1|third_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux6~0_combout\ = ( !\quad_segment7_1|digit3[1]~1_combout\ & ( !\quad_segment7_1|digit3[3]~3_combout\ & ( !\quad_segment7_1|digit3[0]~0_combout\ $ (\quad_segment7_1|digit3[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	datae => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[3]~3_combout\,
	combout => \quad_segment7_1|third_segment7|Mux6~0_combout\);

-- Location: LABCELL_X67_Y10_N24
\quad_segment7_1|third_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux5~0_combout\ = ( \quad_segment7_1|digit3[2]~2_combout\ & ( !\quad_segment7_1|digit3[0]~0_combout\ $ (\quad_segment7_1|digit3[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	combout => \quad_segment7_1|third_segment7|Mux5~0_combout\);

-- Location: LABCELL_X67_Y10_N36
\quad_segment7_1|third_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux4~0_combout\ = ( \quad_segment7_1|digit3[1]~1_combout\ & ( (!\quad_segment7_1|digit3[2]~2_combout\ & \quad_segment7_1|digit3[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	datae => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	combout => \quad_segment7_1|third_segment7|Mux4~0_combout\);

-- Location: LABCELL_X67_Y10_N54
\quad_segment7_1|third_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux3~0_combout\ = ( \quad_segment7_1|digit3[2]~2_combout\ & ( (!\quad_segment7_1|digit3[3]~3_combout\ & (!\quad_segment7_1|digit3[0]~0_combout\ $ (!\quad_segment7_1|digit3[1]~1_combout\))) ) ) # ( 
-- !\quad_segment7_1|digit3[2]~2_combout\ & ( (!\quad_segment7_1|digit3[0]~0_combout\ & (!\quad_segment7_1|digit3[3]~3_combout\ & !\quad_segment7_1|digit3[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit3[3]~3_combout\,
	datad => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	combout => \quad_segment7_1|third_segment7|Mux3~0_combout\);

-- Location: LABCELL_X67_Y10_N15
\quad_segment7_1|third_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux2~0_combout\ = ( \quad_segment7_1|digit3[0]~0_combout\ & ( (!\quad_segment7_1|digit3[1]~1_combout\ & \quad_segment7_1|digit3[2]~2_combout\) ) ) # ( !\quad_segment7_1|digit3[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	combout => \quad_segment7_1|third_segment7|Mux2~0_combout\);

-- Location: LABCELL_X67_Y10_N57
\quad_segment7_1|third_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux1~0_combout\ = ( !\quad_segment7_1|digit3[3]~3_combout\ & ( (!\quad_segment7_1|digit3[0]~0_combout\ & ((!\quad_segment7_1|digit3[2]~2_combout\) # (\quad_segment7_1|digit3[1]~1_combout\))) # 
-- (\quad_segment7_1|digit3[0]~0_combout\ & (!\quad_segment7_1|digit3[2]~2_combout\ & \quad_segment7_1|digit3[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111010101000001111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	datad => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[3]~3_combout\,
	combout => \quad_segment7_1|third_segment7|Mux1~0_combout\);

-- Location: LABCELL_X67_Y10_N12
\quad_segment7_1|third_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux0~0_combout\ = ( \quad_segment7_1|digit3[3]~3_combout\ ) # ( !\quad_segment7_1|digit3[3]~3_combout\ & ( (!\quad_segment7_1|digit3[1]~1_combout\ & (\quad_segment7_1|digit3[2]~2_combout\)) # 
-- (\quad_segment7_1|digit3[1]~1_combout\ & ((!\quad_segment7_1|digit3[2]~2_combout\) # (\quad_segment7_1|digit3[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101100111011001110110011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit3[1]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit3[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_digit3[0]~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit3[3]~3_combout\,
	combout => \quad_segment7_1|third_segment7|Mux0~0_combout\);

-- Location: LABCELL_X67_Y10_N33
\quad_segment7_1|MSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux6~0_combout\ = ( \quad_segment7_1|LessThan13~0_combout\ & ( \quad_segment7_1|bcd~17_combout\ & ( !\quad_segment7_1|bcd~18_combout\ $ (\quad_segment7_1|bcd~19_combout\) ) ) ) # ( !\quad_segment7_1|LessThan13~0_combout\ & ( 
-- \quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~18_combout\ & !\quad_segment7_1|bcd~19_combout\) ) ) ) # ( \quad_segment7_1|LessThan13~0_combout\ & ( !\quad_segment7_1|bcd~17_combout\ & ( !\quad_segment7_1|bcd~18_combout\ $ 
-- (\quad_segment7_1|bcd~19_combout\) ) ) ) # ( !\quad_segment7_1|LessThan13~0_combout\ & ( !\quad_segment7_1|bcd~17_combout\ & ( (!\quad_segment7_1|bcd~18_combout\ & (\quad_segment7_1|bcd~16_combout\ & !\quad_segment7_1|bcd~19_combout\)) # 
-- (\quad_segment7_1|bcd~18_combout\ & ((\quad_segment7_1|bcd~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101101001011010010110100000101000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datae => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X67_Y10_N9
\quad_segment7_1|MSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux5~0_combout\ = ( !\quad_segment7_1|bcd~18_combout\ & ( (\quad_segment7_1|bcd~19_combout\ & \quad_segment7_1|LessThan13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datac => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X67_Y10_N0
\quad_segment7_1|MSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux4~0_combout\ = ( \quad_segment7_1|bcd~19_combout\ & ( (!\quad_segment7_1|LessThan13~0_combout\ & ((!\quad_segment7_1|bcd~17_combout\ & (!\quad_segment7_1|bcd~18_combout\)) # (\quad_segment7_1|bcd~17_combout\ & 
-- ((!\quad_segment7_1|bcd~16_combout\) # (\quad_segment7_1|bcd~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000100100001001100010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	datab => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X67_Y10_N3
\quad_segment7_1|MSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux2~0_combout\ = ( \quad_segment7_1|bcd~18_combout\ & ( ((!\quad_segment7_1|bcd~17_combout\ & \quad_segment7_1|bcd~19_combout\)) # (\quad_segment7_1|LessThan13~0_combout\) ) ) # ( !\quad_segment7_1|bcd~18_combout\ & ( 
-- (!\quad_segment7_1|bcd~17_combout\ & (((!\quad_segment7_1|bcd~19_combout\ & \quad_segment7_1|bcd~16_combout\)) # (\quad_segment7_1|LessThan13~0_combout\))) # (\quad_segment7_1|bcd~17_combout\ & ((!\quad_segment7_1|bcd~19_combout\) # 
-- ((!\quad_segment7_1|LessThan13~0_combout\ & \quad_segment7_1|bcd~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001011110110011100101111011000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	datab => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X67_Y10_N42
\quad_segment7_1|MSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux1~0_combout\ = ( \quad_segment7_1|bcd~19_combout\ & ( !\quad_segment7_1|LessThan13~0_combout\ ) ) # ( !\quad_segment7_1|bcd~19_combout\ & ( (!\quad_segment7_1|LessThan13~0_combout\ & (!\quad_segment7_1|bcd~18_combout\ & 
-- ((\quad_segment7_1|bcd~16_combout\) # (\quad_segment7_1|bcd~17_combout\)))) # (\quad_segment7_1|LessThan13~0_combout\ & (((\quad_segment7_1|bcd~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111000011010000111100001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	datab => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	datad => \quad_segment7_1|ALT_INV_bcd~16_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X67_Y10_N45
\quad_segment7_1|MSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|MSB_segment7|Mux0~0_combout\ = ( \quad_segment7_1|bcd~18_combout\ & ( (!\quad_segment7_1|LessThan13~0_combout\ & ((!\quad_segment7_1|bcd~17_combout\) # (!\quad_segment7_1|bcd~19_combout\))) ) ) # ( !\quad_segment7_1|bcd~18_combout\ & ( 
-- (!\quad_segment7_1|LessThan13~0_combout\ & !\quad_segment7_1|bcd~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~17_combout\,
	datab => \quad_segment7_1|ALT_INV_LessThan13~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~19_combout\,
	dataf => \quad_segment7_1|ALT_INV_bcd~18_combout\,
	combout => \quad_segment7_1|MSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X63_Y2_N0
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


