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

-- DATE "12/10/2015 13:49:04"

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

ENTITY 	spi IS
    PORT (
	clk : IN std_logic;
	sclk : OUT std_logic;
	reset_n : IN std_logic;
	cs : OUT std_logic;
	sdio : INOUT std_logic;
	test : OUT std_logic;
	convst : OUT std_logic;
	adc_sck : OUT std_logic;
	adc_sdo : INOUT std_logic;
	adc_sdi : OUT std_logic;
	adc_sdot : INOUT std_logic;
	sinitial : OUT std_logic;
	swait_input : OUT std_logic;
	ssend : OUT std_logic;
	swait_while_busy : OUT std_logic;
	swait_between_sent : OUT std_logic;
	ena : IN std_logic
	);
END spi;

-- Design Ports Information
-- sclk	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- convst	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sck	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sdi	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinitial	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swait_input	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssend	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swait_while_busy	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swait_between_sent	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdio	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sdo	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_sdot	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi IS
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
SIGNAL ww_sclk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_test : std_logic;
SIGNAL ww_convst : std_logic;
SIGNAL ww_adc_sck : std_logic;
SIGNAL ww_adc_sdi : std_logic;
SIGNAL ww_sinitial : std_logic;
SIGNAL ww_swait_input : std_logic;
SIGNAL ww_ssend : std_logic;
SIGNAL ww_swait_while_busy : std_logic;
SIGNAL ww_swait_between_sent : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL \adc_sdo~input_o\ : std_logic;
SIGNAL \adc_sdot~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \st7735|clk_toggles~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \st7735|Add4~17_sumout\ : std_logic;
SIGNAL \st7735|count~5_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \st7735|busy~1_combout\ : std_logic;
SIGNAL \st7735|busy~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.wait_while_busy~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.wait_between_sent~q\ : std_logic;
SIGNAL \counter[31]~0_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.initial~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.wait_input~q\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.send_spi~q\ : std_logic;
SIGNAL \enable~0_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \st7735|count[30]~1_combout\ : std_logic;
SIGNAL \st7735|Add4~18\ : std_logic;
SIGNAL \st7735|Add4~117_sumout\ : std_logic;
SIGNAL \st7735|count~31_combout\ : std_logic;
SIGNAL \st7735|Add4~118\ : std_logic;
SIGNAL \st7735|Add4~13_sumout\ : std_logic;
SIGNAL \st7735|count~4_combout\ : std_logic;
SIGNAL \st7735|Add4~14\ : std_logic;
SIGNAL \st7735|Add4~121_sumout\ : std_logic;
SIGNAL \st7735|count~32_combout\ : std_logic;
SIGNAL \st7735|Add4~122\ : std_logic;
SIGNAL \st7735|Add4~9_sumout\ : std_logic;
SIGNAL \st7735|count~3_combout\ : std_logic;
SIGNAL \st7735|Add4~10\ : std_logic;
SIGNAL \st7735|Add4~5_sumout\ : std_logic;
SIGNAL \st7735|count~2_combout\ : std_logic;
SIGNAL \st7735|Add4~6\ : std_logic;
SIGNAL \st7735|Add4~1_sumout\ : std_logic;
SIGNAL \st7735|count~0_combout\ : std_logic;
SIGNAL \st7735|Equal1~0_combout\ : std_logic;
SIGNAL \st7735|count[31]~18_combout\ : std_logic;
SIGNAL \st7735|Add4~2\ : std_logic;
SIGNAL \st7735|Add4~41_sumout\ : std_logic;
SIGNAL \st7735|count~11_combout\ : std_logic;
SIGNAL \st7735|Add4~42\ : std_logic;
SIGNAL \st7735|Add4~37_sumout\ : std_logic;
SIGNAL \st7735|count~10_combout\ : std_logic;
SIGNAL \st7735|Add4~38\ : std_logic;
SIGNAL \st7735|Add4~33_sumout\ : std_logic;
SIGNAL \st7735|count~9_combout\ : std_logic;
SIGNAL \st7735|Add4~34\ : std_logic;
SIGNAL \st7735|Add4~29_sumout\ : std_logic;
SIGNAL \st7735|count~8_combout\ : std_logic;
SIGNAL \st7735|Add4~30\ : std_logic;
SIGNAL \st7735|Add4~25_sumout\ : std_logic;
SIGNAL \st7735|count~7_combout\ : std_logic;
SIGNAL \st7735|Add4~26\ : std_logic;
SIGNAL \st7735|Add4~21_sumout\ : std_logic;
SIGNAL \st7735|count~6_combout\ : std_logic;
SIGNAL \st7735|Add4~22\ : std_logic;
SIGNAL \st7735|Add4~65_sumout\ : std_logic;
SIGNAL \st7735|count~17_combout\ : std_logic;
SIGNAL \st7735|Add4~66\ : std_logic;
SIGNAL \st7735|Add4~61_sumout\ : std_logic;
SIGNAL \st7735|count~16_combout\ : std_logic;
SIGNAL \st7735|Add4~62\ : std_logic;
SIGNAL \st7735|Add4~57_sumout\ : std_logic;
SIGNAL \st7735|count~15_combout\ : std_logic;
SIGNAL \st7735|Add4~58\ : std_logic;
SIGNAL \st7735|Add4~53_sumout\ : std_logic;
SIGNAL \st7735|count~14_combout\ : std_logic;
SIGNAL \st7735|Add4~54\ : std_logic;
SIGNAL \st7735|Add4~49_sumout\ : std_logic;
SIGNAL \st7735|count~13_combout\ : std_logic;
SIGNAL \st7735|Add4~50\ : std_logic;
SIGNAL \st7735|Add4~45_sumout\ : std_logic;
SIGNAL \st7735|count~12_combout\ : std_logic;
SIGNAL \st7735|Add4~46\ : std_logic;
SIGNAL \st7735|Add4~89_sumout\ : std_logic;
SIGNAL \st7735|count~24_combout\ : std_logic;
SIGNAL \st7735|Add4~90\ : std_logic;
SIGNAL \st7735|Add4~85_sumout\ : std_logic;
SIGNAL \st7735|count~23_combout\ : std_logic;
SIGNAL \st7735|Add4~86\ : std_logic;
SIGNAL \st7735|Add4~81_sumout\ : std_logic;
SIGNAL \st7735|count~22_combout\ : std_logic;
SIGNAL \st7735|Add4~82\ : std_logic;
SIGNAL \st7735|Add4~77_sumout\ : std_logic;
SIGNAL \st7735|count~21_combout\ : std_logic;
SIGNAL \st7735|Add4~78\ : std_logic;
SIGNAL \st7735|Add4~73_sumout\ : std_logic;
SIGNAL \st7735|count~20_combout\ : std_logic;
SIGNAL \st7735|Add4~74\ : std_logic;
SIGNAL \st7735|Add4~69_sumout\ : std_logic;
SIGNAL \st7735|count~19_combout\ : std_logic;
SIGNAL \st7735|Equal1~3_combout\ : std_logic;
SIGNAL \st7735|Add4~70\ : std_logic;
SIGNAL \st7735|Add4~113_sumout\ : std_logic;
SIGNAL \st7735|count~30_combout\ : std_logic;
SIGNAL \st7735|Add4~114\ : std_logic;
SIGNAL \st7735|Add4~109_sumout\ : std_logic;
SIGNAL \st7735|count~29_combout\ : std_logic;
SIGNAL \st7735|Add4~110\ : std_logic;
SIGNAL \st7735|Add4~105_sumout\ : std_logic;
SIGNAL \st7735|count~28_combout\ : std_logic;
SIGNAL \st7735|Add4~106\ : std_logic;
SIGNAL \st7735|Add4~101_sumout\ : std_logic;
SIGNAL \st7735|count~27_combout\ : std_logic;
SIGNAL \st7735|Add4~102\ : std_logic;
SIGNAL \st7735|Add4~97_sumout\ : std_logic;
SIGNAL \st7735|count~26_combout\ : std_logic;
SIGNAL \st7735|Add4~98\ : std_logic;
SIGNAL \st7735|Add4~93_sumout\ : std_logic;
SIGNAL \st7735|count~25_combout\ : std_logic;
SIGNAL \st7735|Add4~94\ : std_logic;
SIGNAL \st7735|Add4~125_sumout\ : std_logic;
SIGNAL \st7735|count[31]~33_combout\ : std_logic;
SIGNAL \st7735|Equal1~5_combout\ : std_logic;
SIGNAL \st7735|Equal1~4_combout\ : std_logic;
SIGNAL \st7735|Equal1~1_combout\ : std_logic;
SIGNAL \st7735|Equal1~2_combout\ : std_logic;
SIGNAL \st7735|Equal1~6_combout\ : std_logic;
SIGNAL \st7735|sclk~1_combout\ : std_logic;
SIGNAL \st7735|Add1~2_combout\ : std_logic;
SIGNAL \st7735|Add1~1_combout\ : std_logic;
SIGNAL \st7735|Add1~4_combout\ : std_logic;
SIGNAL \st7735|Add1~3_combout\ : std_logic;
SIGNAL \st7735|Add1~0_combout\ : std_logic;
SIGNAL \st7735|Equal2~1_combout\ : std_logic;
SIGNAL \st7735|busy~0_combout\ : std_logic;
SIGNAL \st7735|state~q\ : std_logic;
SIGNAL \st7735|clk_ratio[1]~0_combout\ : std_logic;
SIGNAL \st7735|assert_data~0_combout\ : std_logic;
SIGNAL \st7735|assert_data~q\ : std_logic;
SIGNAL \st7735|cmd_buffer[5]~1_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \st7735|cmd_buffer[1]~6_combout\ : std_logic;
SIGNAL \st7735|cmd_buffer~5_combout\ : std_logic;
SIGNAL \st7735|cmd_buffer[5]~2_combout\ : std_logic;
SIGNAL \st7735|cmd_buffer~4_combout\ : std_logic;
SIGNAL \st7735|cmd_buffer~3_combout\ : std_logic;
SIGNAL \st7735|cmd_buffer~0_combout\ : std_logic;
SIGNAL \st7735|process_0~1_combout\ : std_logic;
SIGNAL \st7735|sdio~1_combout\ : std_logic;
SIGNAL \st7735|sdio~2_combout\ : std_logic;
SIGNAL \st7735|sdio~3_combout\ : std_logic;
SIGNAL \st7735|sdio~reg0_q\ : std_logic;
SIGNAL \st7735|Equal2~0_combout\ : std_logic;
SIGNAL \st7735|sdio~4_combout\ : std_logic;
SIGNAL \st7735|sdio~en_q\ : std_logic;
SIGNAL \sdio~input_o\ : std_logic;
SIGNAL \st7735|ss_n~0_combout\ : std_logic;
SIGNAL \st7735|process_0~0_combout\ : std_logic;
SIGNAL \st7735|sclk~0_combout\ : std_logic;
SIGNAL \st7735|sclk~q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \test$latch~combout\ : std_logic;
SIGNAL \st7735|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \st7735|ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \st7735|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \st7735|clk_ratio\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \st7735|cmd_buffer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL spi_cmd : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \st7735|ALT_INV_clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL ALT_INV_spi_cmd : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_enable~combout\ : std_logic;
SIGNAL \ALT_INV_test$latch~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \st7735|ALT_INV_cmd_buffer\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \st7735|ALT_INV_cmd_buffer[5]~1_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~125_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~121_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~117_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~113_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~109_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~105_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~101_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~97_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~93_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~89_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~85_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~81_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~77_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~73_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~69_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~65_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \st7735|ALT_INV_sdio~2_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_assert_data~q\ : std_logic;
SIGNAL \ALT_INV_enable~0_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_count[31]~18_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_busy~0_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_busy~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \st7735|ALT_INV_clk_ratio\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \st7735|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \st7735|ALT_INV_ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \st7735|ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_state.wait_between_sent~q\ : std_logic;
SIGNAL \ALT_INV_state.wait_while_busy~q\ : std_logic;
SIGNAL \ALT_INV_state.send_spi~q\ : std_logic;
SIGNAL \ALT_INV_state.wait_input~q\ : std_logic;
SIGNAL \ALT_INV_state.initial~q\ : std_logic;
SIGNAL \st7735|ALT_INV_sclk~q\ : std_logic;

BEGIN

ww_clk <= clk;
sclk <= ww_sclk;
ww_reset_n <= reset_n;
cs <= ww_cs;
test <= ww_test;
convst <= ww_convst;
adc_sck <= ww_adc_sck;
adc_sdi <= ww_adc_sdi;
sinitial <= ww_sinitial;
swait_input <= ww_swait_input;
ssend <= ww_ssend;
swait_while_busy <= ww_swait_while_busy;
swait_between_sent <= ww_swait_between_sent;
ww_ena <= ena;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(29) <= NOT counter(29);
ALT_INV_counter(30) <= NOT counter(30);
ALT_INV_counter(31) <= NOT counter(31);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
\st7735|ALT_INV_clk_toggles\(3) <= NOT \st7735|clk_toggles\(3);
\st7735|ALT_INV_clk_toggles\(4) <= NOT \st7735|clk_toggles\(4);
\st7735|ALT_INV_clk_toggles\(1) <= NOT \st7735|clk_toggles\(1);
\st7735|ALT_INV_clk_toggles\(2) <= NOT \st7735|clk_toggles\(2);
\st7735|ALT_INV_clk_toggles\(5) <= NOT \st7735|clk_toggles\(5);
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
ALT_INV_spi_cmd(1) <= NOT spi_cmd(1);
\ALT_INV_enable~combout\ <= NOT \enable~combout\;
\ALT_INV_test$latch~combout\ <= NOT \test$latch~combout\;
\ALT_INV_WideOr5~combout\ <= NOT \WideOr5~combout\;
\st7735|ALT_INV_cmd_buffer\(1) <= NOT \st7735|cmd_buffer\(1);
\st7735|ALT_INV_cmd_buffer\(2) <= NOT \st7735|cmd_buffer\(2);
\st7735|ALT_INV_cmd_buffer\(3) <= NOT \st7735|cmd_buffer\(3);
\st7735|ALT_INV_cmd_buffer[5]~1_combout\ <= NOT \st7735|cmd_buffer[5]~1_combout\;
\st7735|ALT_INV_cmd_buffer\(4) <= NOT \st7735|cmd_buffer\(4);
\st7735|ALT_INV_Add4~125_sumout\ <= NOT \st7735|Add4~125_sumout\;
\st7735|ALT_INV_Add4~121_sumout\ <= NOT \st7735|Add4~121_sumout\;
\st7735|ALT_INV_Add4~117_sumout\ <= NOT \st7735|Add4~117_sumout\;
\st7735|ALT_INV_Add4~113_sumout\ <= NOT \st7735|Add4~113_sumout\;
\st7735|ALT_INV_Add4~109_sumout\ <= NOT \st7735|Add4~109_sumout\;
\st7735|ALT_INV_Add4~105_sumout\ <= NOT \st7735|Add4~105_sumout\;
\st7735|ALT_INV_Add4~101_sumout\ <= NOT \st7735|Add4~101_sumout\;
\st7735|ALT_INV_Add4~97_sumout\ <= NOT \st7735|Add4~97_sumout\;
\st7735|ALT_INV_Add4~93_sumout\ <= NOT \st7735|Add4~93_sumout\;
\st7735|ALT_INV_Add4~89_sumout\ <= NOT \st7735|Add4~89_sumout\;
\st7735|ALT_INV_Add4~85_sumout\ <= NOT \st7735|Add4~85_sumout\;
\st7735|ALT_INV_Add4~81_sumout\ <= NOT \st7735|Add4~81_sumout\;
\st7735|ALT_INV_Add4~77_sumout\ <= NOT \st7735|Add4~77_sumout\;
\st7735|ALT_INV_Add4~73_sumout\ <= NOT \st7735|Add4~73_sumout\;
\st7735|ALT_INV_Add4~69_sumout\ <= NOT \st7735|Add4~69_sumout\;
\st7735|ALT_INV_Add4~65_sumout\ <= NOT \st7735|Add4~65_sumout\;
\st7735|ALT_INV_Add4~61_sumout\ <= NOT \st7735|Add4~61_sumout\;
\st7735|ALT_INV_Add4~57_sumout\ <= NOT \st7735|Add4~57_sumout\;
\st7735|ALT_INV_Add4~53_sumout\ <= NOT \st7735|Add4~53_sumout\;
\st7735|ALT_INV_Add4~49_sumout\ <= NOT \st7735|Add4~49_sumout\;
\st7735|ALT_INV_Add4~45_sumout\ <= NOT \st7735|Add4~45_sumout\;
\st7735|ALT_INV_Add4~41_sumout\ <= NOT \st7735|Add4~41_sumout\;
\st7735|ALT_INV_Add4~37_sumout\ <= NOT \st7735|Add4~37_sumout\;
\st7735|ALT_INV_Add4~33_sumout\ <= NOT \st7735|Add4~33_sumout\;
\st7735|ALT_INV_Add4~29_sumout\ <= NOT \st7735|Add4~29_sumout\;
\st7735|ALT_INV_Add4~25_sumout\ <= NOT \st7735|Add4~25_sumout\;
\st7735|ALT_INV_Add4~21_sumout\ <= NOT \st7735|Add4~21_sumout\;
\st7735|ALT_INV_Add4~17_sumout\ <= NOT \st7735|Add4~17_sumout\;
\st7735|ALT_INV_Add4~13_sumout\ <= NOT \st7735|Add4~13_sumout\;
\st7735|ALT_INV_Add4~9_sumout\ <= NOT \st7735|Add4~9_sumout\;
\st7735|ALT_INV_Add4~5_sumout\ <= NOT \st7735|Add4~5_sumout\;
\st7735|ALT_INV_Add4~1_sumout\ <= NOT \st7735|Add4~1_sumout\;
ALT_INV_counter(12) <= NOT counter(12);
\st7735|ALT_INV_sdio~2_combout\ <= NOT \st7735|sdio~2_combout\;
\st7735|ALT_INV_process_0~1_combout\ <= NOT \st7735|process_0~1_combout\;
\st7735|ALT_INV_assert_data~q\ <= NOT \st7735|assert_data~q\;
\st7735|ALT_INV_cmd_buffer\(5) <= NOT \st7735|cmd_buffer\(5);
\ALT_INV_enable~0_combout\ <= NOT \enable~0_combout\;
\st7735|ALT_INV_count[31]~18_combout\ <= NOT \st7735|count[31]~18_combout\;
\st7735|ALT_INV_busy~0_combout\ <= NOT \st7735|busy~0_combout\;
\st7735|ALT_INV_Equal2~1_combout\ <= NOT \st7735|Equal2~1_combout\;
\st7735|ALT_INV_busy~q\ <= NOT \st7735|busy~q\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;
\st7735|ALT_INV_Equal1~6_combout\ <= NOT \st7735|Equal1~6_combout\;
\st7735|ALT_INV_Equal1~5_combout\ <= NOT \st7735|Equal1~5_combout\;
\st7735|ALT_INV_count\(31) <= NOT \st7735|count\(31);
\st7735|ALT_INV_count\(3) <= NOT \st7735|count\(3);
\st7735|ALT_INV_count\(1) <= NOT \st7735|count\(1);
\st7735|ALT_INV_clk_ratio\(1) <= NOT \st7735|clk_ratio\(1);
\st7735|ALT_INV_Equal1~4_combout\ <= NOT \st7735|Equal1~4_combout\;
\st7735|ALT_INV_count\(25) <= NOT \st7735|count\(25);
\st7735|ALT_INV_count\(26) <= NOT \st7735|count\(26);
\st7735|ALT_INV_count\(27) <= NOT \st7735|count\(27);
\st7735|ALT_INV_count\(28) <= NOT \st7735|count\(28);
\st7735|ALT_INV_count\(29) <= NOT \st7735|count\(29);
\st7735|ALT_INV_count\(30) <= NOT \st7735|count\(30);
\st7735|ALT_INV_Equal1~3_combout\ <= NOT \st7735|Equal1~3_combout\;
\st7735|ALT_INV_count\(19) <= NOT \st7735|count\(19);
\st7735|ALT_INV_count\(20) <= NOT \st7735|count\(20);
\st7735|ALT_INV_count\(21) <= NOT \st7735|count\(21);
\st7735|ALT_INV_count\(22) <= NOT \st7735|count\(22);
\st7735|ALT_INV_count\(23) <= NOT \st7735|count\(23);
\st7735|ALT_INV_count\(24) <= NOT \st7735|count\(24);
\st7735|ALT_INV_Equal1~2_combout\ <= NOT \st7735|Equal1~2_combout\;
\st7735|ALT_INV_count\(13) <= NOT \st7735|count\(13);
\st7735|ALT_INV_count\(14) <= NOT \st7735|count\(14);
\st7735|ALT_INV_count\(15) <= NOT \st7735|count\(15);
\st7735|ALT_INV_count\(16) <= NOT \st7735|count\(16);
\st7735|ALT_INV_count\(17) <= NOT \st7735|count\(17);
\st7735|ALT_INV_count\(18) <= NOT \st7735|count\(18);
\st7735|ALT_INV_Equal1~1_combout\ <= NOT \st7735|Equal1~1_combout\;
\st7735|ALT_INV_count\(7) <= NOT \st7735|count\(7);
\st7735|ALT_INV_count\(8) <= NOT \st7735|count\(8);
\st7735|ALT_INV_count\(9) <= NOT \st7735|count\(9);
\st7735|ALT_INV_count\(10) <= NOT \st7735|count\(10);
\st7735|ALT_INV_count\(11) <= NOT \st7735|count\(11);
\st7735|ALT_INV_count\(12) <= NOT \st7735|count\(12);
\st7735|ALT_INV_Equal1~0_combout\ <= NOT \st7735|Equal1~0_combout\;
\st7735|ALT_INV_count\(0) <= NOT \st7735|count\(0);
\st7735|ALT_INV_count\(2) <= NOT \st7735|count\(2);
\st7735|ALT_INV_count\(4) <= NOT \st7735|count\(4);
\st7735|ALT_INV_count\(5) <= NOT \st7735|count\(5);
\st7735|ALT_INV_count\(6) <= NOT \st7735|count\(6);
\st7735|ALT_INV_process_0~0_combout\ <= NOT \st7735|process_0~0_combout\;
\st7735|ALT_INV_Equal2~0_combout\ <= NOT \st7735|Equal2~0_combout\;
\st7735|ALT_INV_clk_toggles\(0) <= NOT \st7735|clk_toggles\(0);
\st7735|ALT_INV_ss_n\(0) <= NOT \st7735|ss_n\(0);
\st7735|ALT_INV_state~q\ <= NOT \st7735|state~q\;
\ALT_INV_state.wait_between_sent~q\ <= NOT \state.wait_between_sent~q\;
\ALT_INV_state.wait_while_busy~q\ <= NOT \state.wait_while_busy~q\;
\ALT_INV_state.send_spi~q\ <= NOT \state.send_spi~q\;
\ALT_INV_state.wait_input~q\ <= NOT \state.wait_input~q\;
\ALT_INV_state.initial~q\ <= NOT \state.initial~q\;
\st7735|ALT_INV_sclk~q\ <= NOT \st7735|sclk~q\;

-- Location: IOOBUF_X7_Y0_N53
\sclk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \st7735|sclk~q\,
	devoe => ww_devoe,
	o => ww_sclk);

-- Location: IOOBUF_X4_Y0_N36
\cs~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_cs);

-- Location: IOOBUF_X18_Y0_N53
\test~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \test$latch~combout\,
	devoe => ww_devoe,
	o => ww_test);

-- Location: IOOBUF_X66_Y0_N36
\convst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => \st7735|sclk~q\,
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
	i => \sdio~input_o\,
	devoe => ww_devoe,
	o => ww_adc_sdi);

-- Location: IOOBUF_X4_Y0_N2
\sinitial~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.initial~q\,
	devoe => ww_devoe,
	o => ww_sinitial);

-- Location: IOOBUF_X6_Y0_N19
\swait_input~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.wait_input~q\,
	devoe => ww_devoe,
	o => ww_swait_input);

-- Location: IOOBUF_X7_Y0_N19
\ssend~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.send_spi~q\,
	devoe => ww_devoe,
	o => ww_ssend);

-- Location: IOOBUF_X68_Y12_N22
\swait_while_busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.wait_while_busy~q\,
	devoe => ww_devoe,
	o => ww_swait_while_busy);

-- Location: IOOBUF_X68_Y13_N5
\swait_between_sent~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.wait_between_sent~q\,
	devoe => ww_devoe,
	o => ww_swait_between_sent);

-- Location: IOOBUF_X68_Y12_N5
\sdio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \st7735|sdio~reg0_q\,
	oe => \st7735|sdio~en_q\,
	devoe => ww_devoe,
	o => sdio);

-- Location: IOOBUF_X15_Y0_N36
\adc_sdo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sdio~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => adc_sdo);

-- Location: IOOBUF_X6_Y0_N36
\adc_sdot~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sdio~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => adc_sdot);

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

-- Location: LABCELL_X17_Y2_N9
\st7735|clk_toggles~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|clk_toggles~0_combout\ = ( \st7735|state~q\ & ( !\st7735|clk_toggles\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_clk_toggles\(0),
	dataf => \st7735|ALT_INV_state~q\,
	combout => \st7735|clk_toggles~0_combout\);

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

-- Location: LABCELL_X18_Y3_N0
\st7735|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~17_sumout\ = SUM(( \st7735|count\(0) ) + ( VCC ) + ( !VCC ))
-- \st7735|Add4~18\ = CARRY(( \st7735|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(0),
	cin => GND,
	sumout => \st7735|Add4~17_sumout\,
	cout => \st7735|Add4~18\);

-- Location: MLABCELL_X19_Y3_N15
\st7735|count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~5_combout\ = ( \st7735|state~q\ & ( \st7735|Equal1~6_combout\ ) ) # ( \st7735|state~q\ & ( !\st7735|Equal1~6_combout\ & ( \st7735|Add4~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_Add4~17_sumout\,
	datae => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~5_combout\);

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

-- Location: LABCELL_X22_Y2_N0
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~90\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X17_Y2_N51
\st7735|busy~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|busy~1_combout\ = ( !\st7735|busy~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \st7735|ALT_INV_busy~0_combout\,
	combout => \st7735|busy~1_combout\);

-- Location: FF_X17_Y2_N53
\st7735|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|busy~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|busy~q\);

-- Location: LABCELL_X18_Y1_N9
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.wait_while_busy~q\ & ( \state.send_spi~q\ ) ) # ( !\state.wait_while_busy~q\ & ( \state.send_spi~q\ ) ) # ( \state.wait_while_busy~q\ & ( !\state.send_spi~q\ & ( !\st7735|busy~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_busy~q\,
	datae => \ALT_INV_state.wait_while_busy~q\,
	dataf => \ALT_INV_state.send_spi~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X18_Y1_N11
\state.wait_while_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_while_busy~q\);

-- Location: LABCELL_X18_Y1_N3
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Equal0~6_combout\ & ( \state.wait_between_sent~q\ & ( (\st7735|busy~q\ & \state.wait_while_busy~q\) ) ) ) # ( !\Equal0~6_combout\ & ( \state.wait_between_sent~q\ ) ) # ( \Equal0~6_combout\ & ( !\state.wait_between_sent~q\ & ( 
-- (\st7735|busy~q\ & \state.wait_while_busy~q\) ) ) ) # ( !\Equal0~6_combout\ & ( !\state.wait_between_sent~q\ & ( (\st7735|busy~q\ & \state.wait_while_busy~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_busy~q\,
	datac => \ALT_INV_state.wait_while_busy~q\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_state.wait_between_sent~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X18_Y1_N59
\state.wait_between_sent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_between_sent~q\);

-- Location: LABCELL_X18_Y1_N48
\counter[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[31]~0_combout\ = ( \state.wait_between_sent~q\ & ( \reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.wait_between_sent~q\,
	combout => \counter[31]~0_combout\);

-- Location: FF_X22_Y2_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X22_Y2_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X22_Y2_N4
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X22_Y2_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~6\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~86\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X22_Y2_N7
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X22_Y2_N9
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(3),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X22_Y2_N10
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X22_Y2_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X22_Y2_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X22_Y2_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X22_Y2_N16
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X22_Y2_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X22_Y2_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X22_Y2_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X22_Y2_N22
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X22_Y2_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X22_Y2_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X22_Y2_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X22_Y2_N28
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X22_Y2_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X22_Y2_N31
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X22_Y2_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X22_Y2_N34
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X22_Y2_N36
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~126\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add0~50\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X22_Y2_N37
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X22_Y2_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~46\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(13),
	cin => \Add0~126\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X22_Y2_N40
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X22_Y2_N42
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X22_Y2_N43
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X22_Y2_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X22_Y2_N46
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X22_Y2_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(16),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X22_Y2_N49
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X22_Y2_N51
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X22_Y2_N52
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X22_Y2_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(18),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X22_Y2_N56
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X22_Y2_N57
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(19),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X22_Y2_N58
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X22_Y1_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(20),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X22_Y1_N2
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X22_Y1_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(21),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X22_Y1_N5
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X22_Y1_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(22),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X22_Y1_N8
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X22_Y1_N9
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~82\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(23),
	cin => \Add0~58\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X22_Y1_N11
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X22_Y1_N12
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~122\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(24),
	cin => \Add0~82\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X22_Y1_N14
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X22_Y1_N15
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(25),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X22_Y1_N17
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LABCELL_X22_Y1_N18
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(26),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X22_Y1_N20
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LABCELL_X22_Y1_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(27) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( counter(27) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(27),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X22_Y1_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LABCELL_X22_Y1_N24
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter(28) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter(28) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(28),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X22_Y1_N26
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LABCELL_X22_Y1_N36
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !counter(27) & ( !counter(12) & ( (!counter(28) & (!counter(24) & (!counter(26) & !counter(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(28),
	datab => ALT_INV_counter(24),
	datac => ALT_INV_counter(26),
	datad => ALT_INV_counter(25),
	datae => ALT_INV_counter(27),
	dataf => ALT_INV_counter(12),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X22_Y1_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( counter(29) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(29),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X22_Y1_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LABCELL_X22_Y1_N30
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(30) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter(30) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(30),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X22_Y1_N32
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LABCELL_X22_Y1_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(31) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(31),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\);

-- Location: FF_X22_Y1_N35
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LABCELL_X22_Y1_N42
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !counter(1) & ( !counter(0) & ( (!counter(31) & (!counter(30) & (!counter(29) & !counter(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(31),
	datab => ALT_INV_counter(30),
	datac => ALT_INV_counter(29),
	datad => ALT_INV_counter(23),
	datae => ALT_INV_counter(1),
	dataf => ALT_INV_counter(0),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X22_Y1_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !counter(17) & ( !counter(19) & ( (!counter(21) & (!counter(22) & (!counter(20) & !counter(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	datab => ALT_INV_counter(22),
	datac => ALT_INV_counter(20),
	datad => ALT_INV_counter(18),
	datae => ALT_INV_counter(17),
	dataf => ALT_INV_counter(19),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X23_Y2_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !counter(2) & ( counter(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(3),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X23_Y2_N21
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !counter(4) & ( counter(8) & ( (counter(9) & (counter(6) & (counter(5) & counter(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(9),
	datab => ALT_INV_counter(6),
	datac => ALT_INV_counter(5),
	datad => ALT_INV_counter(7),
	datae => ALT_INV_counter(4),
	dataf => ALT_INV_counter(8),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X23_Y2_N12
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !counter(14) & ( !counter(10) & ( (!counter(15) & (!counter(16) & (!counter(13) & !counter(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(15),
	datab => ALT_INV_counter(16),
	datac => ALT_INV_counter(13),
	datad => ALT_INV_counter(11),
	datae => ALT_INV_counter(14),
	dataf => ALT_INV_counter(10),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X22_Y1_N54
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X18_Y1_N18
\state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~11_combout\ = ( \state.wait_between_sent~q\ & ( !\Equal0~6_combout\ ) ) # ( !\state.wait_between_sent~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_state.wait_between_sent~q\,
	combout => \state~11_combout\);

-- Location: FF_X18_Y1_N20
\state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.initial~q\);

-- Location: LABCELL_X18_Y1_N27
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.wait_input~q\ & ( (!\state.initial~q\) # (!\ena~input_o\) ) ) # ( !\state.wait_input~q\ & ( !\state.initial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.initial~q\,
	datab => \ALT_INV_ena~input_o\,
	dataf => \ALT_INV_state.wait_input~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X18_Y1_N50
\state.wait_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_input~q\);

-- Location: LABCELL_X18_Y1_N24
\state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~12_combout\ = ( \state.wait_input~q\ & ( \ena~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena~input_o\,
	dataf => \ALT_INV_state.wait_input~q\,
	combout => \state~12_combout\);

-- Location: FF_X18_Y1_N26
\state.send_spi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.send_spi~q\);

-- Location: LABCELL_X18_Y1_N12
\enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable~0_combout\ = ( \state.wait_input~q\ ) # ( !\state.wait_input~q\ & ( \state.wait_while_busy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.wait_while_busy~q\,
	dataf => \ALT_INV_state.wait_input~q\,
	combout => \enable~0_combout\);

-- Location: LABCELL_X17_Y3_N15
enable : cyclonev_lcell_comb
-- Equation(s):
-- \enable~combout\ = ( \enable~0_combout\ & ( \enable~combout\ ) ) # ( !\enable~0_combout\ & ( \state.send_spi~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.send_spi~q\,
	datac => \ALT_INV_enable~combout\,
	dataf => \ALT_INV_enable~0_combout\,
	combout => \enable~combout\);

-- Location: LABCELL_X17_Y3_N12
\st7735|count[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count[30]~1_combout\ = ( \enable~combout\ & ( \reset_n~input_o\ ) ) # ( !\enable~combout\ & ( (\reset_n~input_o\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset_n~input_o\,
	datad => \st7735|ALT_INV_state~q\,
	dataf => \ALT_INV_enable~combout\,
	combout => \st7735|count[30]~1_combout\);

-- Location: FF_X18_Y3_N53
\st7735|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|count~5_combout\,
	sload => VCC,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(0));

-- Location: LABCELL_X18_Y3_N3
\st7735|Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~117_sumout\ = SUM(( \st7735|count\(1) ) + ( GND ) + ( \st7735|Add4~18\ ))
-- \st7735|Add4~118\ = CARRY(( \st7735|count\(1) ) + ( GND ) + ( \st7735|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(1),
	cin => \st7735|Add4~18\,
	sumout => \st7735|Add4~117_sumout\,
	cout => \st7735|Add4~118\);

-- Location: LABCELL_X17_Y3_N18
\st7735|count~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~31_combout\ = ( \st7735|Equal1~6_combout\ & ( !\st7735|state~q\ ) ) # ( !\st7735|Equal1~6_combout\ & ( (!\st7735|state~q\) # (\st7735|Add4~117_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_state~q\,
	datac => \st7735|ALT_INV_Add4~117_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~31_combout\);

-- Location: FF_X17_Y3_N20
\st7735|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~31_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(1));

-- Location: LABCELL_X18_Y3_N6
\st7735|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~13_sumout\ = SUM(( \st7735|count\(2) ) + ( GND ) + ( \st7735|Add4~118\ ))
-- \st7735|Add4~14\ = CARRY(( \st7735|count\(2) ) + ( GND ) + ( \st7735|Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(2),
	cin => \st7735|Add4~118\,
	sumout => \st7735|Add4~13_sumout\,
	cout => \st7735|Add4~14\);

-- Location: MLABCELL_X19_Y3_N3
\st7735|count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~4_combout\ = ( \st7735|Add4~13_sumout\ & ( !\st7735|Equal1~6_combout\ & ( \st7735|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	datae => \st7735|ALT_INV_Add4~13_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~4_combout\);

-- Location: FF_X19_Y3_N5
\st7735|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~4_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(2));

-- Location: LABCELL_X18_Y3_N9
\st7735|Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~121_sumout\ = SUM(( \st7735|count\(3) ) + ( GND ) + ( \st7735|Add4~14\ ))
-- \st7735|Add4~122\ = CARRY(( \st7735|count\(3) ) + ( GND ) + ( \st7735|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(3),
	cin => \st7735|Add4~14\,
	sumout => \st7735|Add4~121_sumout\,
	cout => \st7735|Add4~122\);

-- Location: LABCELL_X17_Y3_N54
\st7735|count~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~32_combout\ = ( \st7735|Equal1~6_combout\ & ( !\st7735|state~q\ ) ) # ( !\st7735|Equal1~6_combout\ & ( (!\st7735|state~q\) # (\st7735|Add4~121_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_state~q\,
	datac => \st7735|ALT_INV_Add4~121_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~32_combout\);

-- Location: FF_X17_Y3_N56
\st7735|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~32_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(3));

-- Location: LABCELL_X18_Y3_N12
\st7735|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~9_sumout\ = SUM(( \st7735|count\(4) ) + ( GND ) + ( \st7735|Add4~122\ ))
-- \st7735|Add4~10\ = CARRY(( \st7735|count\(4) ) + ( GND ) + ( \st7735|Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(4),
	cin => \st7735|Add4~122\,
	sumout => \st7735|Add4~9_sumout\,
	cout => \st7735|Add4~10\);

-- Location: MLABCELL_X19_Y3_N6
\st7735|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~3_combout\ = ( \st7735|Add4~9_sumout\ & ( !\st7735|Equal1~6_combout\ & ( \st7735|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_state~q\,
	datae => \st7735|ALT_INV_Add4~9_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~3_combout\);

-- Location: FF_X19_Y3_N8
\st7735|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~3_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(4));

-- Location: LABCELL_X18_Y3_N15
\st7735|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~5_sumout\ = SUM(( \st7735|count\(5) ) + ( GND ) + ( \st7735|Add4~10\ ))
-- \st7735|Add4~6\ = CARRY(( \st7735|count\(5) ) + ( GND ) + ( \st7735|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(5),
	cin => \st7735|Add4~10\,
	sumout => \st7735|Add4~5_sumout\,
	cout => \st7735|Add4~6\);

-- Location: MLABCELL_X19_Y3_N54
\st7735|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~2_combout\ = ( \st7735|Add4~5_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_Equal1~6_combout\,
	datac => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~5_sumout\,
	combout => \st7735|count~2_combout\);

-- Location: FF_X19_Y3_N56
\st7735|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~2_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(5));

-- Location: LABCELL_X18_Y3_N18
\st7735|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~1_sumout\ = SUM(( \st7735|count\(6) ) + ( GND ) + ( \st7735|Add4~6\ ))
-- \st7735|Add4~2\ = CARRY(( \st7735|count\(6) ) + ( GND ) + ( \st7735|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(6),
	cin => \st7735|Add4~6\,
	sumout => \st7735|Add4~1_sumout\,
	cout => \st7735|Add4~2\);

-- Location: MLABCELL_X19_Y3_N30
\st7735|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~0_combout\ = ( \st7735|Add4~1_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_Equal1~6_combout\,
	datac => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~1_sumout\,
	combout => \st7735|count~0_combout\);

-- Location: FF_X19_Y3_N32
\st7735|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~0_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(6));

-- Location: MLABCELL_X19_Y3_N27
\st7735|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~0_combout\ = ( !\st7735|count\(0) & ( (!\st7735|count\(5) & (!\st7735|count\(4) & (!\st7735|count\(6) & !\st7735|count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(5),
	datab => \st7735|ALT_INV_count\(4),
	datac => \st7735|ALT_INV_count\(6),
	datad => \st7735|ALT_INV_count\(2),
	dataf => \st7735|ALT_INV_count\(0),
	combout => \st7735|Equal1~0_combout\);

-- Location: LABCELL_X17_Y3_N45
\st7735|count[31]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count[31]~18_combout\ = ( !\st7735|Equal1~6_combout\ & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count[31]~18_combout\);

-- Location: LABCELL_X18_Y3_N21
\st7735|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~41_sumout\ = SUM(( \st7735|count\(7) ) + ( GND ) + ( \st7735|Add4~2\ ))
-- \st7735|Add4~42\ = CARRY(( \st7735|count\(7) ) + ( GND ) + ( \st7735|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(7),
	cin => \st7735|Add4~2\,
	sumout => \st7735|Add4~41_sumout\,
	cout => \st7735|Add4~42\);

-- Location: LABCELL_X17_Y1_N36
\st7735|count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~11_combout\ = ( \st7735|Add4~41_sumout\ & ( (\st7735|state~q\ & !\st7735|Equal1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_state~q\,
	datac => \st7735|ALT_INV_Equal1~6_combout\,
	dataf => \st7735|ALT_INV_Add4~41_sumout\,
	combout => \st7735|count~11_combout\);

-- Location: FF_X17_Y1_N38
\st7735|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~11_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(7));

-- Location: LABCELL_X18_Y3_N24
\st7735|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~37_sumout\ = SUM(( \st7735|count\(8) ) + ( GND ) + ( \st7735|Add4~42\ ))
-- \st7735|Add4~38\ = CARRY(( \st7735|count\(8) ) + ( GND ) + ( \st7735|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(8),
	cin => \st7735|Add4~42\,
	sumout => \st7735|Add4~37_sumout\,
	cout => \st7735|Add4~38\);

-- Location: LABCELL_X17_Y1_N21
\st7735|count~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~10_combout\ = ( \st7735|Add4~37_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~37_sumout\,
	combout => \st7735|count~10_combout\);

-- Location: FF_X17_Y1_N23
\st7735|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~10_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(8));

-- Location: LABCELL_X18_Y3_N27
\st7735|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~33_sumout\ = SUM(( \st7735|count\(9) ) + ( GND ) + ( \st7735|Add4~38\ ))
-- \st7735|Add4~34\ = CARRY(( \st7735|count\(9) ) + ( GND ) + ( \st7735|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(9),
	cin => \st7735|Add4~38\,
	sumout => \st7735|Add4~33_sumout\,
	cout => \st7735|Add4~34\);

-- Location: LABCELL_X17_Y1_N42
\st7735|count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~9_combout\ = ( \st7735|Add4~33_sumout\ & ( (\st7735|state~q\ & !\st7735|Equal1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_state~q\,
	datac => \st7735|ALT_INV_Equal1~6_combout\,
	dataf => \st7735|ALT_INV_Add4~33_sumout\,
	combout => \st7735|count~9_combout\);

-- Location: FF_X17_Y1_N44
\st7735|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~9_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(9));

-- Location: LABCELL_X18_Y3_N30
\st7735|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~29_sumout\ = SUM(( \st7735|count\(10) ) + ( GND ) + ( \st7735|Add4~34\ ))
-- \st7735|Add4~30\ = CARRY(( \st7735|count\(10) ) + ( GND ) + ( \st7735|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(10),
	cin => \st7735|Add4~34\,
	sumout => \st7735|Add4~29_sumout\,
	cout => \st7735|Add4~30\);

-- Location: LABCELL_X17_Y1_N12
\st7735|count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~8_combout\ = ( \st7735|Add4~29_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~29_sumout\,
	combout => \st7735|count~8_combout\);

-- Location: FF_X17_Y1_N14
\st7735|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~8_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(10));

-- Location: LABCELL_X18_Y3_N33
\st7735|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~25_sumout\ = SUM(( \st7735|count\(11) ) + ( GND ) + ( \st7735|Add4~30\ ))
-- \st7735|Add4~26\ = CARRY(( \st7735|count\(11) ) + ( GND ) + ( \st7735|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(11),
	cin => \st7735|Add4~30\,
	sumout => \st7735|Add4~25_sumout\,
	cout => \st7735|Add4~26\);

-- Location: LABCELL_X17_Y1_N9
\st7735|count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~7_combout\ = ( \st7735|Add4~25_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~25_sumout\,
	combout => \st7735|count~7_combout\);

-- Location: FF_X17_Y1_N11
\st7735|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~7_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(11));

-- Location: LABCELL_X18_Y3_N36
\st7735|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~21_sumout\ = SUM(( \st7735|count\(12) ) + ( GND ) + ( \st7735|Add4~26\ ))
-- \st7735|Add4~22\ = CARRY(( \st7735|count\(12) ) + ( GND ) + ( \st7735|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(12),
	cin => \st7735|Add4~26\,
	sumout => \st7735|Add4~21_sumout\,
	cout => \st7735|Add4~22\);

-- Location: LABCELL_X17_Y1_N57
\st7735|count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~6_combout\ = ( \st7735|Add4~21_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~21_sumout\,
	combout => \st7735|count~6_combout\);

-- Location: FF_X17_Y1_N59
\st7735|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~6_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(12));

-- Location: LABCELL_X18_Y3_N39
\st7735|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~65_sumout\ = SUM(( \st7735|count\(13) ) + ( GND ) + ( \st7735|Add4~22\ ))
-- \st7735|Add4~66\ = CARRY(( \st7735|count\(13) ) + ( GND ) + ( \st7735|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(13),
	cin => \st7735|Add4~22\,
	sumout => \st7735|Add4~65_sumout\,
	cout => \st7735|Add4~66\);

-- Location: LABCELL_X17_Y1_N27
\st7735|count~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~17_combout\ = ( \st7735|Add4~65_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datac => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~65_sumout\,
	combout => \st7735|count~17_combout\);

-- Location: FF_X17_Y1_N29
\st7735|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~17_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(13));

-- Location: LABCELL_X18_Y3_N42
\st7735|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~61_sumout\ = SUM(( \st7735|count\(14) ) + ( GND ) + ( \st7735|Add4~66\ ))
-- \st7735|Add4~62\ = CARRY(( \st7735|count\(14) ) + ( GND ) + ( \st7735|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(14),
	cin => \st7735|Add4~66\,
	sumout => \st7735|Add4~61_sumout\,
	cout => \st7735|Add4~62\);

-- Location: LABCELL_X17_Y1_N33
\st7735|count~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~16_combout\ = ( \st7735|Add4~61_sumout\ & ( !\st7735|Equal1~6_combout\ & ( \st7735|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_state~q\,
	datae => \st7735|ALT_INV_Add4~61_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~16_combout\);

-- Location: FF_X17_Y1_N35
\st7735|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~16_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(14));

-- Location: LABCELL_X18_Y3_N45
\st7735|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~57_sumout\ = SUM(( \st7735|count\(15) ) + ( GND ) + ( \st7735|Add4~62\ ))
-- \st7735|Add4~58\ = CARRY(( \st7735|count\(15) ) + ( GND ) + ( \st7735|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(15),
	cin => \st7735|Add4~62\,
	sumout => \st7735|Add4~57_sumout\,
	cout => \st7735|Add4~58\);

-- Location: LABCELL_X17_Y1_N15
\st7735|count~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~15_combout\ = ( \st7735|Add4~57_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~57_sumout\,
	combout => \st7735|count~15_combout\);

-- Location: FF_X17_Y1_N17
\st7735|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~15_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(15));

-- Location: LABCELL_X18_Y3_N48
\st7735|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~53_sumout\ = SUM(( \st7735|count\(16) ) + ( GND ) + ( \st7735|Add4~58\ ))
-- \st7735|Add4~54\ = CARRY(( \st7735|count\(16) ) + ( GND ) + ( \st7735|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_count\(16),
	cin => \st7735|Add4~58\,
	sumout => \st7735|Add4~53_sumout\,
	cout => \st7735|Add4~54\);

-- Location: LABCELL_X17_Y1_N54
\st7735|count~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~14_combout\ = ( \st7735|Add4~53_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~53_sumout\,
	combout => \st7735|count~14_combout\);

-- Location: FF_X17_Y1_N56
\st7735|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~14_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(16));

-- Location: LABCELL_X18_Y3_N51
\st7735|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~49_sumout\ = SUM(( \st7735|count\(17) ) + ( GND ) + ( \st7735|Add4~54\ ))
-- \st7735|Add4~50\ = CARRY(( \st7735|count\(17) ) + ( GND ) + ( \st7735|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(17),
	cin => \st7735|Add4~54\,
	sumout => \st7735|Add4~49_sumout\,
	cout => \st7735|Add4~50\);

-- Location: LABCELL_X17_Y1_N6
\st7735|count~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~13_combout\ = ( \st7735|Add4~49_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~49_sumout\,
	combout => \st7735|count~13_combout\);

-- Location: FF_X17_Y1_N8
\st7735|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~13_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(17));

-- Location: LABCELL_X18_Y3_N54
\st7735|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~45_sumout\ = SUM(( \st7735|count\(18) ) + ( GND ) + ( \st7735|Add4~50\ ))
-- \st7735|Add4~46\ = CARRY(( \st7735|count\(18) ) + ( GND ) + ( \st7735|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(18),
	cin => \st7735|Add4~50\,
	sumout => \st7735|Add4~45_sumout\,
	cout => \st7735|Add4~46\);

-- Location: LABCELL_X17_Y1_N18
\st7735|count~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~12_combout\ = ( \st7735|Add4~45_sumout\ & ( (!\st7735|Equal1~6_combout\ & \st7735|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~6_combout\,
	datab => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_Add4~45_sumout\,
	combout => \st7735|count~12_combout\);

-- Location: FF_X17_Y1_N20
\st7735|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~12_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(18));

-- Location: LABCELL_X18_Y3_N57
\st7735|Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~89_sumout\ = SUM(( \st7735|count\(19) ) + ( GND ) + ( \st7735|Add4~46\ ))
-- \st7735|Add4~90\ = CARRY(( \st7735|count\(19) ) + ( GND ) + ( \st7735|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(19),
	cin => \st7735|Add4~46\,
	sumout => \st7735|Add4~89_sumout\,
	cout => \st7735|Add4~90\);

-- Location: LABCELL_X17_Y3_N6
\st7735|count~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~24_combout\ = ( !\st7735|Equal1~6_combout\ & ( (\st7735|state~q\ & \st7735|Add4~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_state~q\,
	datad => \st7735|ALT_INV_Add4~89_sumout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|count~24_combout\);

-- Location: FF_X17_Y3_N8
\st7735|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~24_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(19));

-- Location: LABCELL_X18_Y2_N0
\st7735|Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~85_sumout\ = SUM(( \st7735|count\(20) ) + ( GND ) + ( \st7735|Add4~90\ ))
-- \st7735|Add4~86\ = CARRY(( \st7735|count\(20) ) + ( GND ) + ( \st7735|Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(20),
	cin => \st7735|Add4~90\,
	sumout => \st7735|Add4~85_sumout\,
	cout => \st7735|Add4~86\);

-- Location: LABCELL_X17_Y3_N9
\st7735|count~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~23_combout\ = ( \st7735|Add4~85_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~85_sumout\,
	combout => \st7735|count~23_combout\);

-- Location: FF_X17_Y3_N11
\st7735|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~23_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(20));

-- Location: LABCELL_X18_Y2_N3
\st7735|Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~81_sumout\ = SUM(( \st7735|count\(21) ) + ( GND ) + ( \st7735|Add4~86\ ))
-- \st7735|Add4~82\ = CARRY(( \st7735|count\(21) ) + ( GND ) + ( \st7735|Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(21),
	cin => \st7735|Add4~86\,
	sumout => \st7735|Add4~81_sumout\,
	cout => \st7735|Add4~82\);

-- Location: LABCELL_X17_Y3_N0
\st7735|count~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~22_combout\ = ( \st7735|Add4~81_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~81_sumout\,
	combout => \st7735|count~22_combout\);

-- Location: FF_X17_Y3_N2
\st7735|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~22_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(21));

-- Location: LABCELL_X18_Y2_N6
\st7735|Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~77_sumout\ = SUM(( \st7735|count\(22) ) + ( GND ) + ( \st7735|Add4~82\ ))
-- \st7735|Add4~78\ = CARRY(( \st7735|count\(22) ) + ( GND ) + ( \st7735|Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(22),
	cin => \st7735|Add4~82\,
	sumout => \st7735|Add4~77_sumout\,
	cout => \st7735|Add4~78\);

-- Location: LABCELL_X17_Y3_N3
\st7735|count~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~21_combout\ = ( \st7735|Add4~77_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~77_sumout\,
	combout => \st7735|count~21_combout\);

-- Location: FF_X17_Y3_N5
\st7735|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~21_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(22));

-- Location: LABCELL_X18_Y2_N9
\st7735|Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~73_sumout\ = SUM(( \st7735|count\(23) ) + ( GND ) + ( \st7735|Add4~78\ ))
-- \st7735|Add4~74\ = CARRY(( \st7735|count\(23) ) + ( GND ) + ( \st7735|Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(23),
	cin => \st7735|Add4~78\,
	sumout => \st7735|Add4~73_sumout\,
	cout => \st7735|Add4~74\);

-- Location: LABCELL_X17_Y3_N57
\st7735|count~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~20_combout\ = ( \st7735|Add4~73_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~73_sumout\,
	combout => \st7735|count~20_combout\);

-- Location: FF_X17_Y3_N59
\st7735|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~20_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(23));

-- Location: LABCELL_X18_Y2_N12
\st7735|Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~69_sumout\ = SUM(( \st7735|count\(24) ) + ( GND ) + ( \st7735|Add4~74\ ))
-- \st7735|Add4~70\ = CARRY(( \st7735|count\(24) ) + ( GND ) + ( \st7735|Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(24),
	cin => \st7735|Add4~74\,
	sumout => \st7735|Add4~69_sumout\,
	cout => \st7735|Add4~70\);

-- Location: LABCELL_X17_Y3_N42
\st7735|count~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~19_combout\ = ( \st7735|Add4~69_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~69_sumout\,
	combout => \st7735|count~19_combout\);

-- Location: FF_X17_Y3_N44
\st7735|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~19_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(24));

-- Location: LABCELL_X17_Y3_N39
\st7735|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~3_combout\ = ( !\st7735|count\(23) & ( !\st7735|count\(20) & ( (!\st7735|count\(21) & (!\st7735|count\(24) & (!\st7735|count\(19) & !\st7735|count\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(21),
	datab => \st7735|ALT_INV_count\(24),
	datac => \st7735|ALT_INV_count\(19),
	datad => \st7735|ALT_INV_count\(22),
	datae => \st7735|ALT_INV_count\(23),
	dataf => \st7735|ALT_INV_count\(20),
	combout => \st7735|Equal1~3_combout\);

-- Location: LABCELL_X18_Y2_N15
\st7735|Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~113_sumout\ = SUM(( \st7735|count\(25) ) + ( GND ) + ( \st7735|Add4~70\ ))
-- \st7735|Add4~114\ = CARRY(( \st7735|count\(25) ) + ( GND ) + ( \st7735|Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(25),
	cin => \st7735|Add4~70\,
	sumout => \st7735|Add4~113_sumout\,
	cout => \st7735|Add4~114\);

-- Location: LABCELL_X18_Y2_N51
\st7735|count~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~30_combout\ = ( \st7735|Add4~113_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~113_sumout\,
	combout => \st7735|count~30_combout\);

-- Location: FF_X18_Y2_N53
\st7735|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~30_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(25));

-- Location: LABCELL_X18_Y2_N18
\st7735|Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~109_sumout\ = SUM(( \st7735|count\(26) ) + ( GND ) + ( \st7735|Add4~114\ ))
-- \st7735|Add4~110\ = CARRY(( \st7735|count\(26) ) + ( GND ) + ( \st7735|Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_count\(26),
	cin => \st7735|Add4~114\,
	sumout => \st7735|Add4~109_sumout\,
	cout => \st7735|Add4~110\);

-- Location: LABCELL_X18_Y2_N39
\st7735|count~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~29_combout\ = ( \st7735|Add4~109_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~109_sumout\,
	combout => \st7735|count~29_combout\);

-- Location: FF_X18_Y2_N41
\st7735|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~29_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(26));

-- Location: LABCELL_X18_Y2_N21
\st7735|Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~105_sumout\ = SUM(( \st7735|count\(27) ) + ( GND ) + ( \st7735|Add4~110\ ))
-- \st7735|Add4~106\ = CARRY(( \st7735|count\(27) ) + ( GND ) + ( \st7735|Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(27),
	cin => \st7735|Add4~110\,
	sumout => \st7735|Add4~105_sumout\,
	cout => \st7735|Add4~106\);

-- Location: LABCELL_X18_Y2_N42
\st7735|count~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~28_combout\ = ( \st7735|Add4~105_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~105_sumout\,
	combout => \st7735|count~28_combout\);

-- Location: FF_X18_Y2_N44
\st7735|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~28_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(27));

-- Location: LABCELL_X18_Y2_N24
\st7735|Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~101_sumout\ = SUM(( \st7735|count\(28) ) + ( GND ) + ( \st7735|Add4~106\ ))
-- \st7735|Add4~102\ = CARRY(( \st7735|count\(28) ) + ( GND ) + ( \st7735|Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(28),
	cin => \st7735|Add4~106\,
	sumout => \st7735|Add4~101_sumout\,
	cout => \st7735|Add4~102\);

-- Location: LABCELL_X18_Y2_N48
\st7735|count~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~27_combout\ = ( \st7735|Add4~101_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~101_sumout\,
	combout => \st7735|count~27_combout\);

-- Location: FF_X18_Y2_N50
\st7735|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~27_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(28));

-- Location: LABCELL_X18_Y2_N27
\st7735|Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~97_sumout\ = SUM(( \st7735|count\(29) ) + ( GND ) + ( \st7735|Add4~102\ ))
-- \st7735|Add4~98\ = CARRY(( \st7735|count\(29) ) + ( GND ) + ( \st7735|Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(29),
	cin => \st7735|Add4~102\,
	sumout => \st7735|Add4~97_sumout\,
	cout => \st7735|Add4~98\);

-- Location: LABCELL_X18_Y2_N45
\st7735|count~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~26_combout\ = ( \st7735|Add4~97_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~97_sumout\,
	combout => \st7735|count~26_combout\);

-- Location: FF_X18_Y2_N47
\st7735|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~26_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(29));

-- Location: LABCELL_X18_Y2_N30
\st7735|Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~93_sumout\ = SUM(( \st7735|count\(30) ) + ( GND ) + ( \st7735|Add4~98\ ))
-- \st7735|Add4~94\ = CARRY(( \st7735|count\(30) ) + ( GND ) + ( \st7735|Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_count\(30),
	cin => \st7735|Add4~98\,
	sumout => \st7735|Add4~93_sumout\,
	cout => \st7735|Add4~94\);

-- Location: LABCELL_X18_Y2_N36
\st7735|count~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count~25_combout\ = ( \st7735|Add4~93_sumout\ & ( \st7735|count[31]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count[31]~18_combout\,
	dataf => \st7735|ALT_INV_Add4~93_sumout\,
	combout => \st7735|count~25_combout\);

-- Location: FF_X18_Y2_N38
\st7735|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count~25_combout\,
	ena => \st7735|count[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(30));

-- Location: LABCELL_X18_Y2_N33
\st7735|Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add4~125_sumout\ = SUM(( !\st7735|count\(31) ) + ( GND ) + ( \st7735|Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_count\(31),
	cin => \st7735|Add4~94\,
	sumout => \st7735|Add4~125_sumout\);

-- Location: LABCELL_X17_Y2_N54
\st7735|count[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|count[31]~33_combout\ = ( \st7735|count\(31) & ( \st7735|Add4~125_sumout\ & ( (!\st7735|count[31]~18_combout\) # (!\reset_n~input_o\) ) ) ) # ( !\st7735|count\(31) & ( \st7735|Add4~125_sumout\ & ( (!\st7735|count[31]~18_combout\ & 
-- (\reset_n~input_o\ & ((\st7735|state~q\) # (\enable~combout\)))) ) ) ) # ( \st7735|count\(31) & ( !\st7735|Add4~125_sumout\ ) ) # ( !\st7735|count\(31) & ( !\st7735|Add4~125_sumout\ & ( (\reset_n~input_o\ & ((\st7735|state~q\) # (\enable~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111111111111111111100000000001010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count[31]~18_combout\,
	datab => \ALT_INV_enable~combout\,
	datac => \st7735|ALT_INV_state~q\,
	datad => \ALT_INV_reset_n~input_o\,
	datae => \st7735|ALT_INV_count\(31),
	dataf => \st7735|ALT_INV_Add4~125_sumout\,
	combout => \st7735|count[31]~33_combout\);

-- Location: FF_X17_Y2_N56
\st7735|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|count[31]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|count\(31));

-- Location: LABCELL_X17_Y3_N30
\st7735|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~5_combout\ = ( \st7735|count\(1) & ( (\st7735|clk_ratio\(1) & (\st7735|count\(3) & \st7735|count\(31))) ) ) # ( !\st7735|count\(1) & ( (!\st7735|clk_ratio\(1) & (!\st7735|count\(3) & !\st7735|count\(31))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_ratio\(1),
	datac => \st7735|ALT_INV_count\(3),
	datad => \st7735|ALT_INV_count\(31),
	dataf => \st7735|ALT_INV_count\(1),
	combout => \st7735|Equal1~5_combout\);

-- Location: LABCELL_X18_Y2_N54
\st7735|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~4_combout\ = ( !\st7735|count\(29) & ( !\st7735|count\(28) & ( (!\st7735|count\(30) & (!\st7735|count\(27) & (!\st7735|count\(25) & !\st7735|count\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(30),
	datab => \st7735|ALT_INV_count\(27),
	datac => \st7735|ALT_INV_count\(25),
	datad => \st7735|ALT_INV_count\(26),
	datae => \st7735|ALT_INV_count\(29),
	dataf => \st7735|ALT_INV_count\(28),
	combout => \st7735|Equal1~4_combout\);

-- Location: LABCELL_X17_Y1_N48
\st7735|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~1_combout\ = ( !\st7735|count\(12) & ( !\st7735|count\(11) & ( (!\st7735|count\(8) & (!\st7735|count\(9) & (!\st7735|count\(7) & !\st7735|count\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(8),
	datab => \st7735|ALT_INV_count\(9),
	datac => \st7735|ALT_INV_count\(7),
	datad => \st7735|ALT_INV_count\(10),
	datae => \st7735|ALT_INV_count\(12),
	dataf => \st7735|ALT_INV_count\(11),
	combout => \st7735|Equal1~1_combout\);

-- Location: LABCELL_X17_Y1_N0
\st7735|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~2_combout\ = ( !\st7735|count\(16) & ( !\st7735|count\(15) & ( (!\st7735|count\(13) & (!\st7735|count\(14) & (!\st7735|count\(18) & !\st7735|count\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_count\(13),
	datab => \st7735|ALT_INV_count\(14),
	datac => \st7735|ALT_INV_count\(18),
	datad => \st7735|ALT_INV_count\(17),
	datae => \st7735|ALT_INV_count\(16),
	dataf => \st7735|ALT_INV_count\(15),
	combout => \st7735|Equal1~2_combout\);

-- Location: LABCELL_X17_Y3_N27
\st7735|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal1~6_combout\ = ( \st7735|Equal1~1_combout\ & ( \st7735|Equal1~2_combout\ & ( (\st7735|Equal1~0_combout\ & (\st7735|Equal1~3_combout\ & (\st7735|Equal1~5_combout\ & \st7735|Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal1~0_combout\,
	datab => \st7735|ALT_INV_Equal1~3_combout\,
	datac => \st7735|ALT_INV_Equal1~5_combout\,
	datad => \st7735|ALT_INV_Equal1~4_combout\,
	datae => \st7735|ALT_INV_Equal1~1_combout\,
	dataf => \st7735|ALT_INV_Equal1~2_combout\,
	combout => \st7735|Equal1~6_combout\);

-- Location: LABCELL_X17_Y3_N51
\st7735|sclk~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sclk~1_combout\ = ( \st7735|Equal1~6_combout\ & ( \enable~combout\ & ( \reset_n~input_o\ ) ) ) # ( !\st7735|Equal1~6_combout\ & ( \enable~combout\ & ( (\reset_n~input_o\ & !\st7735|state~q\) ) ) ) # ( \st7735|Equal1~6_combout\ & ( 
-- !\enable~combout\ & ( (\reset_n~input_o\ & \st7735|state~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \st7735|ALT_INV_state~q\,
	datae => \st7735|ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_enable~combout\,
	combout => \st7735|sclk~1_combout\);

-- Location: FF_X17_Y2_N11
\st7735|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|clk_toggles~0_combout\,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(0));

-- Location: LABCELL_X17_Y2_N6
\st7735|Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add1~2_combout\ = ( \st7735|clk_toggles\(0) & ( !\st7735|clk_toggles\(1) ) ) # ( !\st7735|clk_toggles\(0) & ( \st7735|clk_toggles\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_clk_toggles\(1),
	dataf => \st7735|ALT_INV_clk_toggles\(0),
	combout => \st7735|Add1~2_combout\);

-- Location: FF_X17_Y2_N8
\st7735|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|Add1~2_combout\,
	sclr => \st7735|ALT_INV_state~q\,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(1));

-- Location: LABCELL_X17_Y2_N39
\st7735|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add1~1_combout\ = ( \st7735|clk_toggles\(0) & ( !\st7735|clk_toggles\(1) $ (!\st7735|clk_toggles\(2)) ) ) # ( !\st7735|clk_toggles\(0) & ( \st7735|clk_toggles\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_clk_toggles\(1),
	datad => \st7735|ALT_INV_clk_toggles\(2),
	dataf => \st7735|ALT_INV_clk_toggles\(0),
	combout => \st7735|Add1~1_combout\);

-- Location: FF_X17_Y2_N41
\st7735|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|Add1~1_combout\,
	sclr => \st7735|ALT_INV_state~q\,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(2));

-- Location: MLABCELL_X19_Y2_N36
\st7735|Add1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add1~4_combout\ = ( \st7735|clk_toggles\(2) & ( \st7735|clk_toggles\(3) & ( (!\st7735|clk_toggles\(0)) # (!\st7735|clk_toggles\(1)) ) ) ) # ( !\st7735|clk_toggles\(2) & ( \st7735|clk_toggles\(3) ) ) # ( \st7735|clk_toggles\(2) & ( 
-- !\st7735|clk_toggles\(3) & ( (\st7735|clk_toggles\(0) & \st7735|clk_toggles\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \st7735|ALT_INV_clk_toggles\(0),
	datac => \st7735|ALT_INV_clk_toggles\(1),
	datae => \st7735|ALT_INV_clk_toggles\(2),
	dataf => \st7735|ALT_INV_clk_toggles\(3),
	combout => \st7735|Add1~4_combout\);

-- Location: FF_X18_Y3_N14
\st7735|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|Add1~4_combout\,
	sclr => \st7735|ALT_INV_state~q\,
	sload => VCC,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(3));

-- Location: MLABCELL_X19_Y2_N18
\st7735|Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add1~3_combout\ = ( \st7735|clk_toggles\(2) & ( \st7735|clk_toggles\(3) & ( !\st7735|clk_toggles\(4) $ (((!\st7735|clk_toggles\(1)) # (!\st7735|clk_toggles\(0)))) ) ) ) # ( !\st7735|clk_toggles\(2) & ( \st7735|clk_toggles\(3) & ( 
-- \st7735|clk_toggles\(4) ) ) ) # ( \st7735|clk_toggles\(2) & ( !\st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(4) ) ) ) # ( !\st7735|clk_toggles\(2) & ( !\st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(1),
	datab => \st7735|ALT_INV_clk_toggles\(0),
	datac => \st7735|ALT_INV_clk_toggles\(4),
	datae => \st7735|ALT_INV_clk_toggles\(2),
	dataf => \st7735|ALT_INV_clk_toggles\(3),
	combout => \st7735|Add1~3_combout\);

-- Location: FF_X17_Y3_N38
\st7735|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|Add1~3_combout\,
	sclr => \st7735|ALT_INV_state~q\,
	sload => VCC,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(4));

-- Location: MLABCELL_X19_Y2_N24
\st7735|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Add1~0_combout\ = ( \st7735|clk_toggles\(1) & ( \st7735|clk_toggles\(3) & ( !\st7735|clk_toggles\(5) $ (((!\st7735|clk_toggles\(0)) # ((!\st7735|clk_toggles\(4)) # (!\st7735|clk_toggles\(2))))) ) ) ) # ( !\st7735|clk_toggles\(1) & ( 
-- \st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(5) ) ) ) # ( \st7735|clk_toggles\(1) & ( !\st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(5) ) ) ) # ( !\st7735|clk_toggles\(1) & ( !\st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(5),
	datab => \st7735|ALT_INV_clk_toggles\(0),
	datac => \st7735|ALT_INV_clk_toggles\(4),
	datad => \st7735|ALT_INV_clk_toggles\(2),
	datae => \st7735|ALT_INV_clk_toggles\(1),
	dataf => \st7735|ALT_INV_clk_toggles\(3),
	combout => \st7735|Add1~0_combout\);

-- Location: FF_X17_Y3_N26
\st7735|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|Add1~0_combout\,
	sclr => \st7735|ALT_INV_state~q\,
	sload => VCC,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_toggles\(5));

-- Location: LABCELL_X17_Y2_N24
\st7735|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal2~1_combout\ = ( !\st7735|clk_toggles\(3) & ( \st7735|clk_toggles\(5) & ( (\st7735|clk_toggles\(2) & (!\st7735|clk_toggles\(1) & (!\st7735|clk_toggles\(4) & \st7735|clk_toggles\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(2),
	datab => \st7735|ALT_INV_clk_toggles\(1),
	datac => \st7735|ALT_INV_clk_toggles\(4),
	datad => \st7735|ALT_INV_clk_toggles\(0),
	datae => \st7735|ALT_INV_clk_toggles\(3),
	dataf => \st7735|ALT_INV_clk_toggles\(5),
	combout => \st7735|Equal2~1_combout\);

-- Location: LABCELL_X17_Y2_N33
\st7735|busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|busy~0_combout\ = ( \enable~combout\ & ( (!\st7735|state~q\) # ((!\st7735|Equal2~1_combout\) # (!\st7735|Equal1~6_combout\)) ) ) # ( !\enable~combout\ & ( (\st7735|state~q\ & ((!\st7735|Equal2~1_combout\) # (!\st7735|Equal1~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	datac => \st7735|ALT_INV_Equal2~1_combout\,
	datad => \st7735|ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_enable~combout\,
	combout => \st7735|busy~0_combout\);

-- Location: FF_X17_Y2_N50
\st7735|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|busy~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|state~q\);

-- Location: LABCELL_X17_Y3_N21
\st7735|clk_ratio[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|clk_ratio[1]~0_combout\ = ( \enable~combout\ & ( ((!\st7735|state~q\ & \reset_n~input_o\)) # (\st7735|clk_ratio\(1)) ) ) # ( !\enable~combout\ & ( \st7735|clk_ratio\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_ratio\(1),
	datab => \st7735|ALT_INV_state~q\,
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_enable~combout\,
	combout => \st7735|clk_ratio[1]~0_combout\);

-- Location: FF_X17_Y3_N50
\st7735|clk_ratio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \st7735|clk_ratio[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|clk_ratio\(1));

-- Location: LABCELL_X17_Y3_N33
\st7735|assert_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|assert_data~0_combout\ = ( \st7735|state~q\ & ( !\st7735|assert_data~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \st7735|ALT_INV_assert_data~q\,
	dataf => \st7735|ALT_INV_state~q\,
	combout => \st7735|assert_data~0_combout\);

-- Location: FF_X17_Y3_N35
\st7735|assert_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|assert_data~0_combout\,
	ena => \st7735|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|assert_data~q\);

-- Location: MLABCELL_X19_Y3_N48
\st7735|cmd_buffer[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer[5]~1_combout\ = ( \st7735|clk_ratio\(1) & ( \st7735|assert_data~q\ & ( (!\st7735|clk_toggles\(5) & (!\st7735|clk_toggles\(4) & ((!\st7735|clk_toggles\(3)) # (!\st7735|clk_toggles\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(3),
	datab => \st7735|ALT_INV_clk_toggles\(5),
	datac => \st7735|ALT_INV_clk_toggles\(4),
	datad => \st7735|ALT_INV_clk_toggles\(2),
	datae => \st7735|ALT_INV_clk_ratio\(1),
	dataf => \st7735|ALT_INV_assert_data~q\,
	combout => \st7735|cmd_buffer[5]~1_combout\);

-- Location: LABCELL_X18_Y1_N33
WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ( \state.wait_between_sent~q\ & ( \state.wait_input~q\ ) ) # ( !\state.wait_between_sent~q\ & ( \state.wait_input~q\ ) ) # ( \state.wait_between_sent~q\ & ( !\state.wait_input~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.wait_between_sent~q\,
	dataf => \ALT_INV_state.wait_input~q\,
	combout => \WideOr5~combout\);

-- Location: LABCELL_X18_Y1_N21
\spi_cmd[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- spi_cmd(1) = ( \WideOr5~combout\ & ( spi_cmd(1) ) ) # ( !\WideOr5~combout\ & ( \state.send_spi~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.send_spi~q\,
	datad => ALT_INV_spi_cmd(1),
	dataf => \ALT_INV_WideOr5~combout\,
	combout => spi_cmd(1));

-- Location: MLABCELL_X19_Y3_N42
\st7735|cmd_buffer[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer[1]~6_combout\ = ( !\st7735|state~q\ & ( (!\reset_n~input_o\ & ((((\st7735|cmd_buffer\(1)))))) # (\reset_n~input_o\ & (((!\enable~combout\ & ((\st7735|cmd_buffer\(1)))) # (\enable~combout\ & (spi_cmd(1)))))) ) ) # ( \st7735|state~q\ & ( 
-- (\st7735|cmd_buffer\(1) & ((!\reset_n~input_o\) # ((!\st7735|Equal1~6_combout\) # ((!\st7735|cmd_buffer[5]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111000000101101011110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \st7735|ALT_INV_Equal1~6_combout\,
	datac => \st7735|ALT_INV_cmd_buffer[5]~1_combout\,
	datad => \st7735|ALT_INV_cmd_buffer\(1),
	datae => \st7735|ALT_INV_state~q\,
	dataf => \ALT_INV_enable~combout\,
	datag => ALT_INV_spi_cmd(1),
	combout => \st7735|cmd_buffer[1]~6_combout\);

-- Location: FF_X19_Y3_N44
\st7735|cmd_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|cmd_buffer[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|cmd_buffer\(1));

-- Location: MLABCELL_X19_Y3_N36
\st7735|cmd_buffer~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer~5_combout\ = ( \st7735|cmd_buffer\(1) & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_cmd_buffer\(1),
	combout => \st7735|cmd_buffer~5_combout\);

-- Location: MLABCELL_X19_Y3_N39
\st7735|cmd_buffer[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer[5]~2_combout\ = ( \st7735|Equal1~6_combout\ & ( (\reset_n~input_o\ & ((!\st7735|state~q\ & (\enable~combout\)) # (\st7735|state~q\ & ((\st7735|cmd_buffer[5]~1_combout\))))) ) ) # ( !\st7735|Equal1~6_combout\ & ( (!\st7735|state~q\ & 
-- (\enable~combout\ & \reset_n~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000001110000001000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	datab => \ALT_INV_enable~combout\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \st7735|ALT_INV_cmd_buffer[5]~1_combout\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|cmd_buffer[5]~2_combout\);

-- Location: FF_X19_Y3_N37
\st7735|cmd_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|cmd_buffer~5_combout\,
	ena => \st7735|cmd_buffer[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|cmd_buffer\(2));

-- Location: MLABCELL_X19_Y3_N24
\st7735|cmd_buffer~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer~4_combout\ = ( \st7735|cmd_buffer\(2) & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_cmd_buffer\(2),
	combout => \st7735|cmd_buffer~4_combout\);

-- Location: FF_X19_Y3_N25
\st7735|cmd_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|cmd_buffer~4_combout\,
	ena => \st7735|cmd_buffer[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|cmd_buffer\(3));

-- Location: MLABCELL_X19_Y3_N21
\st7735|cmd_buffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer~3_combout\ = ( \st7735|cmd_buffer\(3) & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_cmd_buffer\(3),
	combout => \st7735|cmd_buffer~3_combout\);

-- Location: FF_X19_Y3_N22
\st7735|cmd_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|cmd_buffer~3_combout\,
	ena => \st7735|cmd_buffer[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|cmd_buffer\(4));

-- Location: MLABCELL_X19_Y3_N18
\st7735|cmd_buffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|cmd_buffer~0_combout\ = ( \st7735|cmd_buffer\(4) & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	dataf => \st7735|ALT_INV_cmd_buffer\(4),
	combout => \st7735|cmd_buffer~0_combout\);

-- Location: FF_X19_Y3_N19
\st7735|cmd_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|cmd_buffer~0_combout\,
	ena => \st7735|cmd_buffer[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|cmd_buffer\(5));

-- Location: LABCELL_X17_Y2_N0
\st7735|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|process_0~1_combout\ = ( \st7735|clk_toggles\(0) & ( (\st7735|clk_toggles\(3) & ((!\st7735|clk_ratio\(1)) # (\st7735|clk_toggles\(2)))) ) ) # ( !\st7735|clk_toggles\(0) & ( (\st7735|clk_toggles\(3) & ((!\st7735|clk_toggles\(2) & 
-- (!\st7735|clk_ratio\(1) & \st7735|clk_toggles\(1))) # (\st7735|clk_toggles\(2) & ((!\st7735|clk_ratio\(1)) # (\st7735|clk_toggles\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010001000100000101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(3),
	datab => \st7735|ALT_INV_clk_toggles\(2),
	datac => \st7735|ALT_INV_clk_ratio\(1),
	datad => \st7735|ALT_INV_clk_toggles\(1),
	dataf => \st7735|ALT_INV_clk_toggles\(0),
	combout => \st7735|process_0~1_combout\);

-- Location: LABCELL_X17_Y2_N18
\st7735|sdio~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sdio~1_combout\ = ( \st7735|process_0~1_combout\ & ( \st7735|clk_toggles\(5) & ( (\st7735|cmd_buffer\(5) & !\st7735|assert_data~q\) ) ) ) # ( !\st7735|process_0~1_combout\ & ( \st7735|clk_toggles\(5) & ( (\st7735|cmd_buffer\(5) & 
-- !\st7735|assert_data~q\) ) ) ) # ( \st7735|process_0~1_combout\ & ( !\st7735|clk_toggles\(5) & ( (\st7735|cmd_buffer\(5) & !\st7735|assert_data~q\) ) ) ) # ( !\st7735|process_0~1_combout\ & ( !\st7735|clk_toggles\(5) & ( (\st7735|cmd_buffer\(5) & 
-- ((!\st7735|assert_data~q\) # ((\st7735|clk_ratio\(1) & !\st7735|clk_toggles\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_ratio\(1),
	datab => \st7735|ALT_INV_cmd_buffer\(5),
	datac => \st7735|ALT_INV_assert_data~q\,
	datad => \st7735|ALT_INV_clk_toggles\(4),
	datae => \st7735|ALT_INV_process_0~1_combout\,
	dataf => \st7735|ALT_INV_clk_toggles\(5),
	combout => \st7735|sdio~1_combout\);

-- Location: LABCELL_X17_Y2_N42
\st7735|sdio~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sdio~2_combout\ = ( !\st7735|process_0~1_combout\ & ( !\st7735|clk_toggles\(5) & ( (\st7735|clk_toggles\(3) & (\st7735|clk_toggles\(2) & (\st7735|clk_ratio\(1) & !\st7735|clk_toggles\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(3),
	datab => \st7735|ALT_INV_clk_toggles\(2),
	datac => \st7735|ALT_INV_clk_ratio\(1),
	datad => \st7735|ALT_INV_clk_toggles\(4),
	datae => \st7735|ALT_INV_process_0~1_combout\,
	dataf => \st7735|ALT_INV_clk_toggles\(5),
	combout => \st7735|sdio~2_combout\);

-- Location: LABCELL_X17_Y2_N36
\st7735|sdio~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sdio~3_combout\ = ( \st7735|Equal1~6_combout\ & ( ((!\st7735|state~q\) # ((!\st7735|sdio~2_combout\ & \st7735|assert_data~q\))) # (\st7735|Equal2~1_combout\) ) ) # ( !\st7735|Equal1~6_combout\ & ( !\st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111111011111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal2~1_combout\,
	datab => \st7735|ALT_INV_sdio~2_combout\,
	datac => \st7735|ALT_INV_state~q\,
	datad => \st7735|ALT_INV_assert_data~q\,
	dataf => \st7735|ALT_INV_Equal1~6_combout\,
	combout => \st7735|sdio~3_combout\);

-- Location: FF_X17_Y2_N19
\st7735|sdio~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|sdio~1_combout\,
	ena => \st7735|sdio~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|sdio~reg0_q\);

-- Location: LABCELL_X17_Y2_N3
\st7735|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|Equal2~0_combout\ = ( !\st7735|clk_toggles\(4) & ( !\st7735|clk_toggles\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_clk_toggles\(3),
	dataf => \st7735|ALT_INV_clk_toggles\(4),
	combout => \st7735|Equal2~0_combout\);

-- Location: LABCELL_X17_Y2_N12
\st7735|sdio~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sdio~4_combout\ = ( \st7735|clk_toggles\(1) & ( \st7735|clk_toggles\(2) & ( \st7735|state~q\ ) ) ) # ( !\st7735|clk_toggles\(1) & ( \st7735|clk_toggles\(2) & ( (\st7735|state~q\ & ((!\st7735|Equal2~0_combout\) # ((!\st7735|clk_toggles\(5)) # 
-- (!\st7735|clk_toggles\(0))))) ) ) ) # ( \st7735|clk_toggles\(1) & ( !\st7735|clk_toggles\(2) & ( \st7735|state~q\ ) ) ) # ( !\st7735|clk_toggles\(1) & ( !\st7735|clk_toggles\(2) & ( \st7735|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_Equal2~0_combout\,
	datab => \st7735|ALT_INV_clk_toggles\(5),
	datac => \st7735|ALT_INV_state~q\,
	datad => \st7735|ALT_INV_clk_toggles\(0),
	datae => \st7735|ALT_INV_clk_toggles\(1),
	dataf => \st7735|ALT_INV_clk_toggles\(2),
	combout => \st7735|sdio~4_combout\);

-- Location: FF_X17_Y2_N13
\st7735|sdio~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|sdio~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \st7735|sdio~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|sdio~en_q\);

-- Location: IOIBUF_X68_Y12_N4
\sdio~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sdio,
	o => \sdio~input_o\);

-- Location: LABCELL_X17_Y2_N30
\st7735|ss_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|ss_n~0_combout\ = ( \st7735|Equal2~1_combout\ & ( (\st7735|state~q\ & !\st7735|Equal1~6_combout\) ) ) # ( !\st7735|Equal2~1_combout\ & ( \st7735|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	datad => \st7735|ALT_INV_Equal1~6_combout\,
	dataf => \st7735|ALT_INV_Equal2~1_combout\,
	combout => \st7735|ss_n~0_combout\);

-- Location: FF_X17_Y2_N31
\st7735|ss_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|ss_n~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|ss_n\(0));

-- Location: MLABCELL_X19_Y2_N30
\st7735|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|process_0~0_combout\ = ( \st7735|clk_toggles\(1) & ( \st7735|Equal2~0_combout\ & ( (\st7735|ss_n\(0) & ((!\st7735|clk_toggles\(5)) # (!\st7735|clk_toggles\(2)))) ) ) ) # ( !\st7735|clk_toggles\(1) & ( \st7735|Equal2~0_combout\ & ( 
-- (\st7735|ss_n\(0) & ((!\st7735|clk_toggles\(0)) # ((!\st7735|clk_toggles\(5)) # (!\st7735|clk_toggles\(2))))) ) ) ) # ( \st7735|clk_toggles\(1) & ( !\st7735|Equal2~0_combout\ & ( (\st7735|ss_n\(0) & !\st7735|clk_toggles\(5)) ) ) ) # ( 
-- !\st7735|clk_toggles\(1) & ( !\st7735|Equal2~0_combout\ & ( (\st7735|ss_n\(0) & !\st7735|clk_toggles\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101010101000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_ss_n\(0),
	datab => \st7735|ALT_INV_clk_toggles\(0),
	datac => \st7735|ALT_INV_clk_toggles\(5),
	datad => \st7735|ALT_INV_clk_toggles\(2),
	datae => \st7735|ALT_INV_clk_toggles\(1),
	dataf => \st7735|ALT_INV_Equal2~0_combout\,
	combout => \st7735|process_0~0_combout\);

-- Location: MLABCELL_X19_Y2_N15
\st7735|sclk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \st7735|sclk~0_combout\ = ( \st7735|sclk~q\ & ( \enable~combout\ & ( (!\reset_n~input_o\) # ((\st7735|state~q\ & ((!\st7735|Equal1~6_combout\) # (!\st7735|process_0~0_combout\)))) ) ) ) # ( !\st7735|sclk~q\ & ( \enable~combout\ & ( (\st7735|state~q\ & 
-- (\st7735|Equal1~6_combout\ & (\st7735|process_0~0_combout\ & \reset_n~input_o\))) ) ) ) # ( \st7735|sclk~q\ & ( !\enable~combout\ & ( (!\st7735|state~q\) # ((!\st7735|Equal1~6_combout\) # ((!\st7735|process_0~0_combout\) # (!\reset_n~input_o\))) ) ) ) # ( 
-- !\st7735|sclk~q\ & ( !\enable~combout\ & ( (\st7735|state~q\ & (\st7735|Equal1~6_combout\ & (\st7735|process_0~0_combout\ & \reset_n~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011111111101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \st7735|ALT_INV_state~q\,
	datab => \st7735|ALT_INV_Equal1~6_combout\,
	datac => \st7735|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_reset_n~input_o\,
	datae => \st7735|ALT_INV_sclk~q\,
	dataf => \ALT_INV_enable~combout\,
	combout => \st7735|sclk~0_combout\);

-- Location: FF_X19_Y2_N17
\st7735|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \st7735|sclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st7735|sclk~q\);

-- Location: LABCELL_X18_Y1_N36
WideOr3 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ( \state.send_spi~q\ ) # ( !\state.send_spi~q\ & ( \state.wait_input~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.wait_input~q\,
	dataf => \ALT_INV_state.send_spi~q\,
	combout => \WideOr3~combout\);

-- Location: LABCELL_X18_Y1_N42
\test$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \test$latch~combout\ = ( \WideOr3~combout\ & ( \state.wait_while_busy~q\ & ( \test$latch~combout\ ) ) ) # ( !\WideOr3~combout\ & ( \state.wait_while_busy~q\ ) ) # ( \WideOr3~combout\ & ( !\state.wait_while_busy~q\ & ( \test$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_test$latch~combout\,
	datae => \ALT_INV_WideOr3~combout\,
	dataf => \ALT_INV_state.wait_while_busy~q\,
	combout => \test$latch~combout\);

-- Location: IOIBUF_X15_Y0_N35
\adc_sdo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => adc_sdo,
	o => \adc_sdo~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\adc_sdot~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => adc_sdot,
	o => \adc_sdot~input_o\);

-- Location: LABCELL_X23_Y14_N0
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


