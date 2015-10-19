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

-- DATE "10/16/2015 20:53:50"

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

ENTITY 	servo IS
    PORT (
	clk : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_output : OUT std_logic_vector(0 DOWNTO 0);
	enable_pwm : IN std_logic;
	reset_pwm : IN std_logic;
	increase : IN std_logic;
	decrease : IN std_logic;
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
END servo;

-- Design Ports Information
-- pwm_output[0]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- increase	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decrease	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- duty[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_pwm	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_pwm	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF servo IS
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
SIGNAL ww_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_output : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_enable_pwm : std_logic;
SIGNAL ww_reset_pwm : std_logic;
SIGNAL ww_increase : std_logic;
SIGNAL ww_decrease : std_logic;
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
SIGNAL \pwm_1|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_1|Mult0~9\ : std_logic;
SIGNAL \pwm_1|Mult0~10\ : std_logic;
SIGNAL \pwm_1|Mult0~11\ : std_logic;
SIGNAL \pwm_1|Mult0~12\ : std_logic;
SIGNAL \pwm_1|Mult0~13\ : std_logic;
SIGNAL \pwm_1|Mult0~14\ : std_logic;
SIGNAL \pwm_1|Mult0~15\ : std_logic;
SIGNAL \pwm_1|Mult0~16\ : std_logic;
SIGNAL \pwm_1|Mult0~36\ : std_logic;
SIGNAL \pwm_1|Mult0~37\ : std_logic;
SIGNAL \pwm_1|Mult0~38\ : std_logic;
SIGNAL \pwm_1|Mult0~39\ : std_logic;
SIGNAL \pwm_1|Mult0~40\ : std_logic;
SIGNAL \pwm_1|Mult0~41\ : std_logic;
SIGNAL \pwm_1|Mult0~42\ : std_logic;
SIGNAL \pwm_1|Mult0~43\ : std_logic;
SIGNAL \pwm_1|Mult0~44\ : std_logic;
SIGNAL \pwm_1|Mult0~45\ : std_logic;
SIGNAL \pwm_1|Mult0~46\ : std_logic;
SIGNAL \pwm_1|Mult0~47\ : std_logic;
SIGNAL \pwm_1|Mult0~48\ : std_logic;
SIGNAL \pwm_1|Mult0~49\ : std_logic;
SIGNAL \pwm_1|Mult0~50\ : std_logic;
SIGNAL \pwm_1|Mult0~51\ : std_logic;
SIGNAL \pwm_1|Mult0~52\ : std_logic;
SIGNAL \pwm_1|Mult0~53\ : std_logic;
SIGNAL \pwm_1|Mult0~54\ : std_logic;
SIGNAL \pwm_1|Mult0~55\ : std_logic;
SIGNAL \pwm_1|Mult0~56\ : std_logic;
SIGNAL \pwm_1|Mult0~57\ : std_logic;
SIGNAL \pwm_1|Mult0~58\ : std_logic;
SIGNAL \pwm_1|Mult0~59\ : std_logic;
SIGNAL \pwm_1|Mult0~60\ : std_logic;
SIGNAL \pwm_1|Mult0~61\ : std_logic;
SIGNAL \pwm_1|Mult0~62\ : std_logic;
SIGNAL \pwm_1|Mult0~63\ : std_logic;
SIGNAL \pwm_1|Mult0~64\ : std_logic;
SIGNAL \pwm_1|Mult0~65\ : std_logic;
SIGNAL \pwm_1|Mult0~66\ : std_logic;
SIGNAL \pwm_1|Mult0~67\ : std_logic;
SIGNAL \pwm_1|Mult0~68\ : std_logic;
SIGNAL \pwm_1|Mult0~69\ : std_logic;
SIGNAL \pwm_1|Mult0~70\ : std_logic;
SIGNAL \pwm_1|Mult0~71\ : std_logic;
SIGNAL \increase~input_o\ : std_logic;
SIGNAL \decrease~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pwm_1|Add0~61_sumout\ : std_logic;
SIGNAL \reset_pwm~input_o\ : std_logic;
SIGNAL \pwm_1|count[0][19]~q\ : std_logic;
SIGNAL \pwm_1|Add0~58\ : std_logic;
SIGNAL \pwm_1|Add0~49_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][13]~q\ : std_logic;
SIGNAL \pwm_1|Add0~50\ : std_logic;
SIGNAL \pwm_1|Add0~29_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][14]~q\ : std_logic;
SIGNAL \pwm_1|Add0~30\ : std_logic;
SIGNAL \pwm_1|Add0~33_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][15]~q\ : std_logic;
SIGNAL \pwm_1|Add0~34\ : std_logic;
SIGNAL \pwm_1|Add0~21_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][16]~q\ : std_logic;
SIGNAL \pwm_1|Add0~22\ : std_logic;
SIGNAL \pwm_1|Add0~25_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][17]~q\ : std_logic;
SIGNAL \pwm_1|Add0~26\ : std_logic;
SIGNAL \pwm_1|Add0~5_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][18]~q\ : std_logic;
SIGNAL \pwm_1|Add0~6\ : std_logic;
SIGNAL \pwm_1|Add0~1_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][19]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_1|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_1|Equal0~2_combout\ : std_logic;
SIGNAL \pwm_1|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_1|Equal0~3_combout\ : std_logic;
SIGNAL \pwm_1|count[0][0]~q\ : std_logic;
SIGNAL \pwm_1|Add0~62\ : std_logic;
SIGNAL \pwm_1|Add0~65_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][1]~q\ : std_logic;
SIGNAL \pwm_1|Add0~66\ : std_logic;
SIGNAL \pwm_1|Add0~69_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][2]~q\ : std_logic;
SIGNAL \pwm_1|Add0~70\ : std_logic;
SIGNAL \pwm_1|Add0~37_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][3]~q\ : std_logic;
SIGNAL \pwm_1|Add0~38\ : std_logic;
SIGNAL \pwm_1|Add0~41_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][4]~q\ : std_logic;
SIGNAL \pwm_1|Add0~42\ : std_logic;
SIGNAL \pwm_1|Add0~45_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][5]~q\ : std_logic;
SIGNAL \pwm_1|Add0~46\ : std_logic;
SIGNAL \pwm_1|Add0~9_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][6]~q\ : std_logic;
SIGNAL \pwm_1|Add0~10\ : std_logic;
SIGNAL \pwm_1|Add0~13_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][7]~q\ : std_logic;
SIGNAL \pwm_1|Add0~14\ : std_logic;
SIGNAL \pwm_1|Add0~17_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][8]~q\ : std_logic;
SIGNAL \pwm_1|Add0~18\ : std_logic;
SIGNAL \pwm_1|Add0~73_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][9]~q\ : std_logic;
SIGNAL \pwm_1|Add0~74\ : std_logic;
SIGNAL \pwm_1|Add0~77_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][10]~q\ : std_logic;
SIGNAL \pwm_1|Add0~78\ : std_logic;
SIGNAL \pwm_1|Add0~53_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][11]~q\ : std_logic;
SIGNAL \pwm_1|Add0~54\ : std_logic;
SIGNAL \pwm_1|Add0~57_sumout\ : std_logic;
SIGNAL \pwm_1|count[0][12]~q\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \duty[3]~input_o\ : std_logic;
SIGNAL \duty[4]~input_o\ : std_logic;
SIGNAL \duty[5]~input_o\ : std_logic;
SIGNAL \duty[6]~input_o\ : std_logic;
SIGNAL \duty[7]~input_o\ : std_logic;
SIGNAL \pwm_1|Mult0~29\ : std_logic;
SIGNAL \pwm_1|half_duty_new[12]~feeder_combout\ : std_logic;
SIGNAL \enable_pwm~input_o\ : std_logic;
SIGNAL \pwm_1|half_duty[0][0]~0_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~28\ : std_logic;
SIGNAL \pwm_1|half_duty_new[11]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~27\ : std_logic;
SIGNAL \pwm_1|half_duty_new[10]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~26\ : std_logic;
SIGNAL \pwm_1|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~25\ : std_logic;
SIGNAL \pwm_1|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~24\ : std_logic;
SIGNAL \pwm_1|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~23\ : std_logic;
SIGNAL \pwm_1|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~22\ : std_logic;
SIGNAL \pwm_1|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~21\ : std_logic;
SIGNAL \pwm_1|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~20\ : std_logic;
SIGNAL \pwm_1|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~19\ : std_logic;
SIGNAL \pwm_1|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~18\ : std_logic;
SIGNAL \pwm_1|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~17\ : std_logic;
SIGNAL \pwm_1|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_1|Add1~62\ : std_logic;
SIGNAL \pwm_1|Add1~66\ : std_logic;
SIGNAL \pwm_1|Add1~38\ : std_logic;
SIGNAL \pwm_1|Add1~42\ : std_logic;
SIGNAL \pwm_1|Add1~46\ : std_logic;
SIGNAL \pwm_1|Add1~10\ : std_logic;
SIGNAL \pwm_1|Add1~14\ : std_logic;
SIGNAL \pwm_1|Add1~18\ : std_logic;
SIGNAL \pwm_1|Add1~70\ : std_logic;
SIGNAL \pwm_1|Add1~74\ : std_logic;
SIGNAL \pwm_1|Add1~50\ : std_logic;
SIGNAL \pwm_1|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_1|Mult0~30\ : std_logic;
SIGNAL \pwm_1|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_1|Add1~54\ : std_logic;
SIGNAL \pwm_1|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_1|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_1|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_1|count[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_1|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~33\ : std_logic;
SIGNAL \pwm_1|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~31\ : std_logic;
SIGNAL \pwm_1|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~32\ : std_logic;
SIGNAL \pwm_1|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_1|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~34\ : std_logic;
SIGNAL \pwm_1|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~35\ : std_logic;
SIGNAL \pwm_1|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_1|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_1|Add1~58\ : std_logic;
SIGNAL \pwm_1|Add1~30\ : std_logic;
SIGNAL \pwm_1|Add1~34\ : std_logic;
SIGNAL \pwm_1|Add1~22\ : std_logic;
SIGNAL \pwm_1|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_1|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_1|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_1|Add1~26\ : std_logic;
SIGNAL \pwm_1|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_1|Add1~2\ : std_logic;
SIGNAL \pwm_1|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_1|pwm_out~7_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[3]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[2]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[1]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux0~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LessThan25~0_combout\ : std_logic;
SIGNAL \pwm_1|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_1|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_1|ALT_INV_count[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_enable_pwm~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_pwm~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[0]~input_o\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_LessThan25~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|second_segment7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[1]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit2[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[3]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[2]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_digit1[1]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|ALT_INV_bcd~0_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_1|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][10]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][9]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][2]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][1]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][0]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][12]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][11]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][13]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][5]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][4]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][3]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][15]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][14]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][17]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][16]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][8]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][7]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][6]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][18]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_count[0][19]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_duty <= duty;
pwm_output <= ww_pwm_output;
ww_enable_pwm <= enable_pwm;
ww_reset_pwm <= reset_pwm;
ww_increase <= increase;
ww_decrease <= decrease;
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

\pwm_1|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_1|Mult0~8_AY_bus\ <= (\duty[7]~input_o\ & \duty[6]~input_o\ & \duty[5]~input_o\ & \duty[4]~input_o\ & \duty[3]~input_o\ & \duty[2]~input_o\ & \duty[1]~input_o\ & \duty[0]~input_o\);

\pwm_1|Mult0~8_resulta\ <= \pwm_1|Mult0~8_RESULTA_bus\(0);
\pwm_1|Mult0~9\ <= \pwm_1|Mult0~8_RESULTA_bus\(1);
\pwm_1|Mult0~10\ <= \pwm_1|Mult0~8_RESULTA_bus\(2);
\pwm_1|Mult0~11\ <= \pwm_1|Mult0~8_RESULTA_bus\(3);
\pwm_1|Mult0~12\ <= \pwm_1|Mult0~8_RESULTA_bus\(4);
\pwm_1|Mult0~13\ <= \pwm_1|Mult0~8_RESULTA_bus\(5);
\pwm_1|Mult0~14\ <= \pwm_1|Mult0~8_RESULTA_bus\(6);
\pwm_1|Mult0~15\ <= \pwm_1|Mult0~8_RESULTA_bus\(7);
\pwm_1|Mult0~16\ <= \pwm_1|Mult0~8_RESULTA_bus\(8);
\pwm_1|Mult0~17\ <= \pwm_1|Mult0~8_RESULTA_bus\(9);
\pwm_1|Mult0~18\ <= \pwm_1|Mult0~8_RESULTA_bus\(10);
\pwm_1|Mult0~19\ <= \pwm_1|Mult0~8_RESULTA_bus\(11);
\pwm_1|Mult0~20\ <= \pwm_1|Mult0~8_RESULTA_bus\(12);
\pwm_1|Mult0~21\ <= \pwm_1|Mult0~8_RESULTA_bus\(13);
\pwm_1|Mult0~22\ <= \pwm_1|Mult0~8_RESULTA_bus\(14);
\pwm_1|Mult0~23\ <= \pwm_1|Mult0~8_RESULTA_bus\(15);
\pwm_1|Mult0~24\ <= \pwm_1|Mult0~8_RESULTA_bus\(16);
\pwm_1|Mult0~25\ <= \pwm_1|Mult0~8_RESULTA_bus\(17);
\pwm_1|Mult0~26\ <= \pwm_1|Mult0~8_RESULTA_bus\(18);
\pwm_1|Mult0~27\ <= \pwm_1|Mult0~8_RESULTA_bus\(19);
\pwm_1|Mult0~28\ <= \pwm_1|Mult0~8_RESULTA_bus\(20);
\pwm_1|Mult0~29\ <= \pwm_1|Mult0~8_RESULTA_bus\(21);
\pwm_1|Mult0~30\ <= \pwm_1|Mult0~8_RESULTA_bus\(22);
\pwm_1|Mult0~31\ <= \pwm_1|Mult0~8_RESULTA_bus\(23);
\pwm_1|Mult0~32\ <= \pwm_1|Mult0~8_RESULTA_bus\(24);
\pwm_1|Mult0~33\ <= \pwm_1|Mult0~8_RESULTA_bus\(25);
\pwm_1|Mult0~34\ <= \pwm_1|Mult0~8_RESULTA_bus\(26);
\pwm_1|Mult0~35\ <= \pwm_1|Mult0~8_RESULTA_bus\(27);
\pwm_1|Mult0~36\ <= \pwm_1|Mult0~8_RESULTA_bus\(28);
\pwm_1|Mult0~37\ <= \pwm_1|Mult0~8_RESULTA_bus\(29);
\pwm_1|Mult0~38\ <= \pwm_1|Mult0~8_RESULTA_bus\(30);
\pwm_1|Mult0~39\ <= \pwm_1|Mult0~8_RESULTA_bus\(31);
\pwm_1|Mult0~40\ <= \pwm_1|Mult0~8_RESULTA_bus\(32);
\pwm_1|Mult0~41\ <= \pwm_1|Mult0~8_RESULTA_bus\(33);
\pwm_1|Mult0~42\ <= \pwm_1|Mult0~8_RESULTA_bus\(34);
\pwm_1|Mult0~43\ <= \pwm_1|Mult0~8_RESULTA_bus\(35);
\pwm_1|Mult0~44\ <= \pwm_1|Mult0~8_RESULTA_bus\(36);
\pwm_1|Mult0~45\ <= \pwm_1|Mult0~8_RESULTA_bus\(37);
\pwm_1|Mult0~46\ <= \pwm_1|Mult0~8_RESULTA_bus\(38);
\pwm_1|Mult0~47\ <= \pwm_1|Mult0~8_RESULTA_bus\(39);
\pwm_1|Mult0~48\ <= \pwm_1|Mult0~8_RESULTA_bus\(40);
\pwm_1|Mult0~49\ <= \pwm_1|Mult0~8_RESULTA_bus\(41);
\pwm_1|Mult0~50\ <= \pwm_1|Mult0~8_RESULTA_bus\(42);
\pwm_1|Mult0~51\ <= \pwm_1|Mult0~8_RESULTA_bus\(43);
\pwm_1|Mult0~52\ <= \pwm_1|Mult0~8_RESULTA_bus\(44);
\pwm_1|Mult0~53\ <= \pwm_1|Mult0~8_RESULTA_bus\(45);
\pwm_1|Mult0~54\ <= \pwm_1|Mult0~8_RESULTA_bus\(46);
\pwm_1|Mult0~55\ <= \pwm_1|Mult0~8_RESULTA_bus\(47);
\pwm_1|Mult0~56\ <= \pwm_1|Mult0~8_RESULTA_bus\(48);
\pwm_1|Mult0~57\ <= \pwm_1|Mult0~8_RESULTA_bus\(49);
\pwm_1|Mult0~58\ <= \pwm_1|Mult0~8_RESULTA_bus\(50);
\pwm_1|Mult0~59\ <= \pwm_1|Mult0~8_RESULTA_bus\(51);
\pwm_1|Mult0~60\ <= \pwm_1|Mult0~8_RESULTA_bus\(52);
\pwm_1|Mult0~61\ <= \pwm_1|Mult0~8_RESULTA_bus\(53);
\pwm_1|Mult0~62\ <= \pwm_1|Mult0~8_RESULTA_bus\(54);
\pwm_1|Mult0~63\ <= \pwm_1|Mult0~8_RESULTA_bus\(55);
\pwm_1|Mult0~64\ <= \pwm_1|Mult0~8_RESULTA_bus\(56);
\pwm_1|Mult0~65\ <= \pwm_1|Mult0~8_RESULTA_bus\(57);
\pwm_1|Mult0~66\ <= \pwm_1|Mult0~8_RESULTA_bus\(58);
\pwm_1|Mult0~67\ <= \pwm_1|Mult0~8_RESULTA_bus\(59);
\pwm_1|Mult0~68\ <= \pwm_1|Mult0~8_RESULTA_bus\(60);
\pwm_1|Mult0~69\ <= \pwm_1|Mult0~8_RESULTA_bus\(61);
\pwm_1|Mult0~70\ <= \pwm_1|Mult0~8_RESULTA_bus\(62);
\pwm_1|Mult0~71\ <= \pwm_1|Mult0~8_RESULTA_bus\(63);
\pwm_1|ALT_INV_count[0][11]~DUPLICATE_q\ <= NOT \pwm_1|count[0][11]~DUPLICATE_q\;
\pwm_1|ALT_INV_count[0][19]~DUPLICATE_q\ <= NOT \pwm_1|count[0][19]~DUPLICATE_q\;
\ALT_INV_enable_pwm~input_o\ <= NOT \enable_pwm~input_o\;
\ALT_INV_reset_pwm~input_o\ <= NOT \reset_pwm~input_o\;
\ALT_INV_duty[6]~input_o\ <= NOT \duty[6]~input_o\;
\ALT_INV_duty[7]~input_o\ <= NOT \duty[7]~input_o\;
\ALT_INV_duty[5]~input_o\ <= NOT \duty[5]~input_o\;
\ALT_INV_duty[4]~input_o\ <= NOT \duty[4]~input_o\;
\ALT_INV_duty[3]~input_o\ <= NOT \duty[3]~input_o\;
\ALT_INV_duty[2]~input_o\ <= NOT \duty[2]~input_o\;
\ALT_INV_duty[1]~input_o\ <= NOT \duty[1]~input_o\;
\ALT_INV_duty[0]~input_o\ <= NOT \duty[0]~input_o\;
\pwm_1|ALT_INV_pwm_out~8_combout\ <= NOT \pwm_1|pwm_out~8_combout\;
\pwm_1|ALT_INV_Equal0~2_combout\ <= NOT \pwm_1|Equal0~2_combout\;
\pwm_1|ALT_INV_Equal0~1_combout\ <= NOT \pwm_1|Equal0~1_combout\;
\pwm_1|ALT_INV_Equal0~0_combout\ <= NOT \pwm_1|Equal0~0_combout\;
\pwm_1|ALT_INV_Equal1~8_combout\ <= NOT \pwm_1|Equal1~8_combout\;
\pwm_1|ALT_INV_Equal1~7_combout\ <= NOT \pwm_1|Equal1~7_combout\;
\pwm_1|ALT_INV_Equal1~6_combout\ <= NOT \pwm_1|Equal1~6_combout\;
\pwm_1|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_1|half_duty[0][3]~q\;
\pwm_1|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_1|half_duty[0][2]~q\;
\pwm_1|ALT_INV_Equal1~5_combout\ <= NOT \pwm_1|Equal1~5_combout\;
\pwm_1|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_1|half_duty[0][1]~q\;
\pwm_1|ALT_INV_Equal1~4_combout\ <= NOT \pwm_1|Equal1~4_combout\;
\pwm_1|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_1|half_duty[0][7]~q\;
\pwm_1|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_1|half_duty[0][6]~q\;
\pwm_1|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_1|half_duty[0][5]~q\;
\pwm_1|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_1|half_duty[0][4]~q\;
\pwm_1|ALT_INV_Equal1~3_combout\ <= NOT \pwm_1|Equal1~3_combout\;
\pwm_1|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_1|half_duty[0][10]~q\;
\pwm_1|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_1|half_duty[0][9]~q\;
\pwm_1|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_1|half_duty[0][8]~q\;
\pwm_1|ALT_INV_Equal1~2_combout\ <= NOT \pwm_1|Equal1~2_combout\;
\pwm_1|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_1|half_duty[0][13]~q\;
\pwm_1|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_1|half_duty[0][12]~q\;
\pwm_1|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_1|half_duty[0][11]~q\;
\pwm_1|ALT_INV_Equal1~1_combout\ <= NOT \pwm_1|Equal1~1_combout\;
\pwm_1|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_1|half_duty[0][16]~q\;
\pwm_1|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_1|half_duty[0][15]~q\;
\pwm_1|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_1|half_duty[0][14]~q\;
\pwm_1|ALT_INV_Equal1~0_combout\ <= NOT \pwm_1|Equal1~0_combout\;
\pwm_1|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_1|half_duty[0][18]~q\;
\pwm_1|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_1|half_duty[0][17]~q\;
\pwm_1|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_1|pwm_out~6_combout\;
\pwm_1|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_1|pwm_out~5_combout\;
\pwm_1|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_1|half_duty[0][0]~q\;
\pwm_1|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_1|pwm_out~4_combout\;
\pwm_1|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_1|pwm_out~3_combout\;
\pwm_1|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_1|pwm_out~2_combout\;
\pwm_1|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_1|pwm_out~1_combout\;
\pwm_1|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_1|pwm_out~0_combout\;
\quad_segment7_1|ALT_INV_LessThan25~0_combout\ <= NOT \quad_segment7_1|LessThan25~0_combout\;
\quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\ <= NOT \quad_segment7_1|third_segment7|Mux0~0_combout\;
\quad_segment7_1|second_segment7|ALT_INV_Mux6~0_combout\ <= NOT \quad_segment7_1|second_segment7|Mux6~0_combout\;
\quad_segment7_1|ALT_INV_digit2[3]~3_combout\ <= NOT \quad_segment7_1|digit2[3]~3_combout\;
\quad_segment7_1|ALT_INV_digit2[2]~2_combout\ <= NOT \quad_segment7_1|digit2[2]~2_combout\;
\quad_segment7_1|ALT_INV_digit2[1]~1_combout\ <= NOT \quad_segment7_1|digit2[1]~1_combout\;
\quad_segment7_1|ALT_INV_digit2[0]~0_combout\ <= NOT \quad_segment7_1|digit2[0]~0_combout\;
\quad_segment7_1|LSB_segment7|ALT_INV_Mux6~0_combout\ <= NOT \quad_segment7_1|LSB_segment7|Mux6~0_combout\;
\quad_segment7_1|ALT_INV_digit1[3]~2_combout\ <= NOT \quad_segment7_1|digit1[3]~2_combout\;
\quad_segment7_1|ALT_INV_digit1[2]~1_combout\ <= NOT \quad_segment7_1|digit1[2]~1_combout\;
\quad_segment7_1|ALT_INV_digit1[1]~0_combout\ <= NOT \quad_segment7_1|digit1[1]~0_combout\;
\quad_segment7_1|ALT_INV_bcd~2_combout\ <= NOT \quad_segment7_1|bcd~2_combout\;
\quad_segment7_1|ALT_INV_bcd~1_combout\ <= NOT \quad_segment7_1|bcd~1_combout\;
\quad_segment7_1|ALT_INV_bcd~0_combout\ <= NOT \quad_segment7_1|bcd~0_combout\;
\pwm_1|ALT_INV_pwm_out\(0) <= NOT \pwm_1|pwm_out\(0);
\pwm_1|ALT_INV_Mult0~34\ <= NOT \pwm_1|Mult0~34\;
\pwm_1|ALT_INV_Mult0~33\ <= NOT \pwm_1|Mult0~33\;
\pwm_1|ALT_INV_Mult0~30\ <= NOT \pwm_1|Mult0~30\;
\pwm_1|ALT_INV_Mult0~29\ <= NOT \pwm_1|Mult0~29\;
\pwm_1|ALT_INV_Mult0~28\ <= NOT \pwm_1|Mult0~28\;
\pwm_1|ALT_INV_Mult0~27\ <= NOT \pwm_1|Mult0~27\;
\pwm_1|ALT_INV_Mult0~25\ <= NOT \pwm_1|Mult0~25\;
\pwm_1|ALT_INV_Mult0~23\ <= NOT \pwm_1|Mult0~23\;
\pwm_1|ALT_INV_Mult0~21\ <= NOT \pwm_1|Mult0~21\;
\pwm_1|ALT_INV_Mult0~19\ <= NOT \pwm_1|Mult0~19\;
\pwm_1|ALT_INV_Mult0~18\ <= NOT \pwm_1|Mult0~18\;
\pwm_1|ALT_INV_Mult0~17\ <= NOT \pwm_1|Mult0~17\;
\pwm_1|ALT_INV_Add1~73_sumout\ <= NOT \pwm_1|Add1~73_sumout\;
\pwm_1|ALT_INV_Add1~69_sumout\ <= NOT \pwm_1|Add1~69_sumout\;
\pwm_1|ALT_INV_count[0][10]~q\ <= NOT \pwm_1|count[0][10]~q\;
\pwm_1|ALT_INV_count[0][9]~q\ <= NOT \pwm_1|count[0][9]~q\;
\pwm_1|ALT_INV_Add1~65_sumout\ <= NOT \pwm_1|Add1~65_sumout\;
\pwm_1|ALT_INV_Add1~61_sumout\ <= NOT \pwm_1|Add1~61_sumout\;
\pwm_1|ALT_INV_count[0][2]~q\ <= NOT \pwm_1|count[0][2]~q\;
\pwm_1|ALT_INV_count[0][1]~q\ <= NOT \pwm_1|count[0][1]~q\;
\pwm_1|ALT_INV_count[0][0]~q\ <= NOT \pwm_1|count[0][0]~q\;
\pwm_1|ALT_INV_Add1~57_sumout\ <= NOT \pwm_1|Add1~57_sumout\;
\pwm_1|ALT_INV_Add1~53_sumout\ <= NOT \pwm_1|Add1~53_sumout\;
\pwm_1|ALT_INV_count[0][12]~q\ <= NOT \pwm_1|count[0][12]~q\;
\pwm_1|ALT_INV_Add1~49_sumout\ <= NOT \pwm_1|Add1~49_sumout\;
\pwm_1|ALT_INV_count[0][11]~q\ <= NOT \pwm_1|count[0][11]~q\;
\pwm_1|ALT_INV_count[0][13]~q\ <= NOT \pwm_1|count[0][13]~q\;
\pwm_1|ALT_INV_Add1~45_sumout\ <= NOT \pwm_1|Add1~45_sumout\;
\pwm_1|ALT_INV_Add1~41_sumout\ <= NOT \pwm_1|Add1~41_sumout\;
\pwm_1|ALT_INV_Add1~37_sumout\ <= NOT \pwm_1|Add1~37_sumout\;
\pwm_1|ALT_INV_count[0][5]~q\ <= NOT \pwm_1|count[0][5]~q\;
\pwm_1|ALT_INV_count[0][4]~q\ <= NOT \pwm_1|count[0][4]~q\;
\pwm_1|ALT_INV_count[0][3]~q\ <= NOT \pwm_1|count[0][3]~q\;
\pwm_1|ALT_INV_Add1~33_sumout\ <= NOT \pwm_1|Add1~33_sumout\;
\pwm_1|ALT_INV_Add1~29_sumout\ <= NOT \pwm_1|Add1~29_sumout\;
\pwm_1|ALT_INV_count[0][15]~q\ <= NOT \pwm_1|count[0][15]~q\;
\pwm_1|ALT_INV_count[0][14]~q\ <= NOT \pwm_1|count[0][14]~q\;
\pwm_1|ALT_INV_Add1~25_sumout\ <= NOT \pwm_1|Add1~25_sumout\;
\pwm_1|ALT_INV_Add1~21_sumout\ <= NOT \pwm_1|Add1~21_sumout\;
\pwm_1|ALT_INV_count[0][17]~q\ <= NOT \pwm_1|count[0][17]~q\;
\pwm_1|ALT_INV_count[0][16]~q\ <= NOT \pwm_1|count[0][16]~q\;
\pwm_1|ALT_INV_Add1~17_sumout\ <= NOT \pwm_1|Add1~17_sumout\;
\pwm_1|ALT_INV_Add1~13_sumout\ <= NOT \pwm_1|Add1~13_sumout\;
\pwm_1|ALT_INV_Add1~9_sumout\ <= NOT \pwm_1|Add1~9_sumout\;
\pwm_1|ALT_INV_count[0][8]~q\ <= NOT \pwm_1|count[0][8]~q\;
\pwm_1|ALT_INV_count[0][7]~q\ <= NOT \pwm_1|count[0][7]~q\;
\pwm_1|ALT_INV_count[0][6]~q\ <= NOT \pwm_1|count[0][6]~q\;
\pwm_1|ALT_INV_Add1~5_sumout\ <= NOT \pwm_1|Add1~5_sumout\;
\pwm_1|ALT_INV_Add1~1_sumout\ <= NOT \pwm_1|Add1~1_sumout\;
\pwm_1|ALT_INV_count[0][18]~q\ <= NOT \pwm_1|count[0][18]~q\;
\pwm_1|ALT_INV_count[0][19]~q\ <= NOT \pwm_1|count[0][19]~q\;

-- Location: IOOBUF_X68_Y37_N39
\pwm_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_1|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output(0));

-- Location: IOOBUF_X66_Y0_N2
\HEX00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \quad_segment7_1|LSB_segment7|Mux0~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux3~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|LSB_segment7|ALT_INV_Mux6~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux0~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux1~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux2~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux3~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux4~0_combout\,
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
	i => \quad_segment7_1|second_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|second_segment7|ALT_INV_Mux6~0_combout\,
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
	i => \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\,
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
	i => GND,
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
	i => \quad_segment7_1|third_segment7|Mux0~1_combout\,
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
	i => \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \quad_segment7_1|third_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \quad_segment7_1|third_segment7|Mux5~0_combout\,
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
	i => \quad_segment7_1|ALT_INV_LessThan25~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX36);

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

-- Location: LABCELL_X33_Y1_N0
\pwm_1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~61_sumout\ = SUM(( \pwm_1|count[0][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \pwm_1|Add0~62\ = CARRY(( \pwm_1|count[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][0]~q\,
	cin => GND,
	sumout => \pwm_1|Add0~61_sumout\,
	cout => \pwm_1|Add0~62\);

-- Location: IOIBUF_X21_Y0_N1
\reset_pwm~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_pwm,
	o => \reset_pwm~input_o\);

-- Location: FF_X33_Y1_N59
\pwm_1|count[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~1_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][19]~q\);

-- Location: LABCELL_X33_Y1_N36
\pwm_1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~57_sumout\ = SUM(( \pwm_1|count[0][12]~q\ ) + ( GND ) + ( \pwm_1|Add0~54\ ))
-- \pwm_1|Add0~58\ = CARRY(( \pwm_1|count[0][12]~q\ ) + ( GND ) + ( \pwm_1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][12]~q\,
	cin => \pwm_1|Add0~54\,
	sumout => \pwm_1|Add0~57_sumout\,
	cout => \pwm_1|Add0~58\);

-- Location: LABCELL_X33_Y1_N39
\pwm_1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~49_sumout\ = SUM(( \pwm_1|count[0][13]~q\ ) + ( GND ) + ( \pwm_1|Add0~58\ ))
-- \pwm_1|Add0~50\ = CARRY(( \pwm_1|count[0][13]~q\ ) + ( GND ) + ( \pwm_1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][13]~q\,
	cin => \pwm_1|Add0~58\,
	sumout => \pwm_1|Add0~49_sumout\,
	cout => \pwm_1|Add0~50\);

-- Location: FF_X33_Y1_N41
\pwm_1|count[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~49_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][13]~q\);

-- Location: LABCELL_X33_Y1_N42
\pwm_1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~29_sumout\ = SUM(( \pwm_1|count[0][14]~q\ ) + ( GND ) + ( \pwm_1|Add0~50\ ))
-- \pwm_1|Add0~30\ = CARRY(( \pwm_1|count[0][14]~q\ ) + ( GND ) + ( \pwm_1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][14]~q\,
	cin => \pwm_1|Add0~50\,
	sumout => \pwm_1|Add0~29_sumout\,
	cout => \pwm_1|Add0~30\);

-- Location: FF_X33_Y1_N43
\pwm_1|count[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~29_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][14]~q\);

-- Location: LABCELL_X33_Y1_N45
\pwm_1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~33_sumout\ = SUM(( \pwm_1|count[0][15]~q\ ) + ( GND ) + ( \pwm_1|Add0~30\ ))
-- \pwm_1|Add0~34\ = CARRY(( \pwm_1|count[0][15]~q\ ) + ( GND ) + ( \pwm_1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][15]~q\,
	cin => \pwm_1|Add0~30\,
	sumout => \pwm_1|Add0~33_sumout\,
	cout => \pwm_1|Add0~34\);

-- Location: FF_X33_Y1_N46
\pwm_1|count[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~33_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][15]~q\);

-- Location: LABCELL_X33_Y1_N48
\pwm_1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~21_sumout\ = SUM(( \pwm_1|count[0][16]~q\ ) + ( GND ) + ( \pwm_1|Add0~34\ ))
-- \pwm_1|Add0~22\ = CARRY(( \pwm_1|count[0][16]~q\ ) + ( GND ) + ( \pwm_1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][16]~q\,
	cin => \pwm_1|Add0~34\,
	sumout => \pwm_1|Add0~21_sumout\,
	cout => \pwm_1|Add0~22\);

-- Location: FF_X33_Y1_N50
\pwm_1|count[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~21_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][16]~q\);

-- Location: LABCELL_X33_Y1_N51
\pwm_1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~25_sumout\ = SUM(( \pwm_1|count[0][17]~q\ ) + ( GND ) + ( \pwm_1|Add0~22\ ))
-- \pwm_1|Add0~26\ = CARRY(( \pwm_1|count[0][17]~q\ ) + ( GND ) + ( \pwm_1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][17]~q\,
	cin => \pwm_1|Add0~22\,
	sumout => \pwm_1|Add0~25_sumout\,
	cout => \pwm_1|Add0~26\);

-- Location: FF_X33_Y1_N52
\pwm_1|count[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~25_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][17]~q\);

-- Location: LABCELL_X33_Y1_N54
\pwm_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~5_sumout\ = SUM(( \pwm_1|count[0][18]~q\ ) + ( GND ) + ( \pwm_1|Add0~26\ ))
-- \pwm_1|Add0~6\ = CARRY(( \pwm_1|count[0][18]~q\ ) + ( GND ) + ( \pwm_1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][18]~q\,
	cin => \pwm_1|Add0~26\,
	sumout => \pwm_1|Add0~5_sumout\,
	cout => \pwm_1|Add0~6\);

-- Location: FF_X33_Y1_N55
\pwm_1|count[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~5_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][18]~q\);

-- Location: LABCELL_X33_Y1_N57
\pwm_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~1_sumout\ = SUM(( \pwm_1|count[0][19]~q\ ) + ( GND ) + ( \pwm_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][19]~q\,
	cin => \pwm_1|Add0~6\,
	sumout => \pwm_1|Add0~1_sumout\);

-- Location: FF_X33_Y1_N58
\pwm_1|count[0][19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~1_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][19]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y1_N54
\pwm_1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal0~1_combout\ = ( !\pwm_1|count[0][13]~q\ & ( !\pwm_1|count[0][12]~q\ & ( (!\pwm_1|count[0][11]~q\ & (\pwm_1|count[0][17]~q\ & (!\pwm_1|count[0][15]~q\ & \pwm_1|count[0][16]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][11]~q\,
	datab => \pwm_1|ALT_INV_count[0][17]~q\,
	datac => \pwm_1|ALT_INV_count[0][15]~q\,
	datad => \pwm_1|ALT_INV_count[0][16]~q\,
	datae => \pwm_1|ALT_INV_count[0][13]~q\,
	dataf => \pwm_1|ALT_INV_count[0][12]~q\,
	combout => \pwm_1|Equal0~1_combout\);

-- Location: LABCELL_X35_Y1_N30
\pwm_1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal0~2_combout\ = ( !\pwm_1|count[0][6]~q\ & ( !\pwm_1|count[0][10]~q\ & ( (!\pwm_1|count[0][8]~q\ & (\pwm_1|count[0][9]~q\ & (\pwm_1|count[0][5]~q\ & !\pwm_1|count[0][7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][8]~q\,
	datab => \pwm_1|ALT_INV_count[0][9]~q\,
	datac => \pwm_1|ALT_INV_count[0][5]~q\,
	datad => \pwm_1|ALT_INV_count[0][7]~q\,
	datae => \pwm_1|ALT_INV_count[0][6]~q\,
	dataf => \pwm_1|ALT_INV_count[0][10]~q\,
	combout => \pwm_1|Equal0~2_combout\);

-- Location: MLABCELL_X37_Y1_N48
\pwm_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal0~0_combout\ = ( \pwm_1|count[0][3]~q\ & ( \pwm_1|count[0][14]~q\ & ( (\pwm_1|count[0][0]~q\ & (\pwm_1|count[0][4]~q\ & (\pwm_1|count[0][2]~q\ & \pwm_1|count[0][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][0]~q\,
	datab => \pwm_1|ALT_INV_count[0][4]~q\,
	datac => \pwm_1|ALT_INV_count[0][2]~q\,
	datad => \pwm_1|ALT_INV_count[0][1]~q\,
	datae => \pwm_1|ALT_INV_count[0][3]~q\,
	dataf => \pwm_1|ALT_INV_count[0][14]~q\,
	combout => \pwm_1|Equal0~0_combout\);

-- Location: LABCELL_X36_Y2_N36
\pwm_1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal0~3_combout\ = ( \pwm_1|Equal0~2_combout\ & ( \pwm_1|Equal0~0_combout\ & ( (\pwm_1|count[0][19]~DUPLICATE_q\ & (\pwm_1|count[0][18]~q\ & \pwm_1|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_1|ALT_INV_count[0][19]~DUPLICATE_q\,
	datac => \pwm_1|ALT_INV_count[0][18]~q\,
	datad => \pwm_1|ALT_INV_Equal0~1_combout\,
	datae => \pwm_1|ALT_INV_Equal0~2_combout\,
	dataf => \pwm_1|ALT_INV_Equal0~0_combout\,
	combout => \pwm_1|Equal0~3_combout\);

-- Location: FF_X33_Y1_N1
\pwm_1|count[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~61_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][0]~q\);

-- Location: LABCELL_X33_Y1_N3
\pwm_1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~65_sumout\ = SUM(( \pwm_1|count[0][1]~q\ ) + ( GND ) + ( \pwm_1|Add0~62\ ))
-- \pwm_1|Add0~66\ = CARRY(( \pwm_1|count[0][1]~q\ ) + ( GND ) + ( \pwm_1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][1]~q\,
	cin => \pwm_1|Add0~62\,
	sumout => \pwm_1|Add0~65_sumout\,
	cout => \pwm_1|Add0~66\);

-- Location: FF_X33_Y1_N4
\pwm_1|count[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~65_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][1]~q\);

-- Location: LABCELL_X33_Y1_N6
\pwm_1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~69_sumout\ = SUM(( \pwm_1|count[0][2]~q\ ) + ( GND ) + ( \pwm_1|Add0~66\ ))
-- \pwm_1|Add0~70\ = CARRY(( \pwm_1|count[0][2]~q\ ) + ( GND ) + ( \pwm_1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][2]~q\,
	cin => \pwm_1|Add0~66\,
	sumout => \pwm_1|Add0~69_sumout\,
	cout => \pwm_1|Add0~70\);

-- Location: FF_X33_Y1_N7
\pwm_1|count[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~69_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][2]~q\);

-- Location: LABCELL_X33_Y1_N9
\pwm_1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~37_sumout\ = SUM(( \pwm_1|count[0][3]~q\ ) + ( GND ) + ( \pwm_1|Add0~70\ ))
-- \pwm_1|Add0~38\ = CARRY(( \pwm_1|count[0][3]~q\ ) + ( GND ) + ( \pwm_1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][3]~q\,
	cin => \pwm_1|Add0~70\,
	sumout => \pwm_1|Add0~37_sumout\,
	cout => \pwm_1|Add0~38\);

-- Location: FF_X33_Y1_N10
\pwm_1|count[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~37_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][3]~q\);

-- Location: LABCELL_X33_Y1_N12
\pwm_1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~41_sumout\ = SUM(( \pwm_1|count[0][4]~q\ ) + ( GND ) + ( \pwm_1|Add0~38\ ))
-- \pwm_1|Add0~42\ = CARRY(( \pwm_1|count[0][4]~q\ ) + ( GND ) + ( \pwm_1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][4]~q\,
	cin => \pwm_1|Add0~38\,
	sumout => \pwm_1|Add0~41_sumout\,
	cout => \pwm_1|Add0~42\);

-- Location: FF_X33_Y1_N13
\pwm_1|count[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~41_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][4]~q\);

-- Location: LABCELL_X33_Y1_N15
\pwm_1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~45_sumout\ = SUM(( \pwm_1|count[0][5]~q\ ) + ( GND ) + ( \pwm_1|Add0~42\ ))
-- \pwm_1|Add0~46\ = CARRY(( \pwm_1|count[0][5]~q\ ) + ( GND ) + ( \pwm_1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][5]~q\,
	cin => \pwm_1|Add0~42\,
	sumout => \pwm_1|Add0~45_sumout\,
	cout => \pwm_1|Add0~46\);

-- Location: FF_X33_Y1_N16
\pwm_1|count[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~45_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][5]~q\);

-- Location: LABCELL_X33_Y1_N18
\pwm_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~9_sumout\ = SUM(( \pwm_1|count[0][6]~q\ ) + ( GND ) + ( \pwm_1|Add0~46\ ))
-- \pwm_1|Add0~10\ = CARRY(( \pwm_1|count[0][6]~q\ ) + ( GND ) + ( \pwm_1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][6]~q\,
	cin => \pwm_1|Add0~46\,
	sumout => \pwm_1|Add0~9_sumout\,
	cout => \pwm_1|Add0~10\);

-- Location: FF_X33_Y1_N19
\pwm_1|count[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~9_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][6]~q\);

-- Location: LABCELL_X33_Y1_N21
\pwm_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~13_sumout\ = SUM(( \pwm_1|count[0][7]~q\ ) + ( GND ) + ( \pwm_1|Add0~10\ ))
-- \pwm_1|Add0~14\ = CARRY(( \pwm_1|count[0][7]~q\ ) + ( GND ) + ( \pwm_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][7]~q\,
	cin => \pwm_1|Add0~10\,
	sumout => \pwm_1|Add0~13_sumout\,
	cout => \pwm_1|Add0~14\);

-- Location: FF_X33_Y1_N22
\pwm_1|count[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~13_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][7]~q\);

-- Location: LABCELL_X33_Y1_N24
\pwm_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~17_sumout\ = SUM(( \pwm_1|count[0][8]~q\ ) + ( GND ) + ( \pwm_1|Add0~14\ ))
-- \pwm_1|Add0~18\ = CARRY(( \pwm_1|count[0][8]~q\ ) + ( GND ) + ( \pwm_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][8]~q\,
	cin => \pwm_1|Add0~14\,
	sumout => \pwm_1|Add0~17_sumout\,
	cout => \pwm_1|Add0~18\);

-- Location: FF_X33_Y1_N25
\pwm_1|count[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~17_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][8]~q\);

-- Location: LABCELL_X33_Y1_N27
\pwm_1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~73_sumout\ = SUM(( \pwm_1|count[0][9]~q\ ) + ( GND ) + ( \pwm_1|Add0~18\ ))
-- \pwm_1|Add0~74\ = CARRY(( \pwm_1|count[0][9]~q\ ) + ( GND ) + ( \pwm_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][9]~q\,
	cin => \pwm_1|Add0~18\,
	sumout => \pwm_1|Add0~73_sumout\,
	cout => \pwm_1|Add0~74\);

-- Location: FF_X33_Y1_N28
\pwm_1|count[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~73_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][9]~q\);

-- Location: LABCELL_X33_Y1_N30
\pwm_1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~77_sumout\ = SUM(( \pwm_1|count[0][10]~q\ ) + ( GND ) + ( \pwm_1|Add0~74\ ))
-- \pwm_1|Add0~78\ = CARRY(( \pwm_1|count[0][10]~q\ ) + ( GND ) + ( \pwm_1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][10]~q\,
	cin => \pwm_1|Add0~74\,
	sumout => \pwm_1|Add0~77_sumout\,
	cout => \pwm_1|Add0~78\);

-- Location: FF_X33_Y1_N31
\pwm_1|count[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~77_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][10]~q\);

-- Location: LABCELL_X33_Y1_N33
\pwm_1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add0~53_sumout\ = SUM(( \pwm_1|count[0][11]~q\ ) + ( GND ) + ( \pwm_1|Add0~78\ ))
-- \pwm_1|Add0~54\ = CARRY(( \pwm_1|count[0][11]~q\ ) + ( GND ) + ( \pwm_1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_count[0][11]~q\,
	cin => \pwm_1|Add0~78\,
	sumout => \pwm_1|Add0~53_sumout\,
	cout => \pwm_1|Add0~54\);

-- Location: FF_X33_Y1_N35
\pwm_1|count[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~53_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][11]~q\);

-- Location: FF_X33_Y1_N37
\pwm_1|count[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~57_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][12]~q\);

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

-- Location: DSP_X34_Y3_N0
\pwm_1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
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
	operation_mode => "m27x27",
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
	ax => \pwm_1|Mult0~8_AX_bus\,
	ay => \pwm_1|Mult0~8_AY_bus\,
	resulta => \pwm_1|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X36_Y3_N45
\pwm_1|half_duty_new[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[12]~feeder_combout\ = ( \pwm_1|Mult0~29\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~29\,
	combout => \pwm_1|half_duty_new[12]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N35
\enable_pwm~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable_pwm,
	o => \enable_pwm~input_o\);

-- Location: FF_X36_Y3_N46
\pwm_1|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[12]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(12));

-- Location: LABCELL_X36_Y2_N45
\pwm_1|half_duty[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty[0][0]~0_combout\ = ( \pwm_1|Equal0~2_combout\ & ( \pwm_1|Equal0~0_combout\ & ( (\reset_pwm~input_o\ & (\pwm_1|Equal0~1_combout\ & (\pwm_1|count[0][18]~q\ & \pwm_1|count[0][19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_pwm~input_o\,
	datab => \pwm_1|ALT_INV_Equal0~1_combout\,
	datac => \pwm_1|ALT_INV_count[0][18]~q\,
	datad => \pwm_1|ALT_INV_count[0][19]~DUPLICATE_q\,
	datae => \pwm_1|ALT_INV_Equal0~2_combout\,
	dataf => \pwm_1|ALT_INV_Equal0~0_combout\,
	combout => \pwm_1|half_duty[0][0]~0_combout\);

-- Location: FF_X36_Y1_N34
\pwm_1|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][12]~q\);

-- Location: LABCELL_X36_Y3_N0
\pwm_1|half_duty_new[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[11]~feeder_combout\ = ( \pwm_1|Mult0~28\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~28\,
	combout => \pwm_1|half_duty_new[11]~feeder_combout\);

-- Location: FF_X36_Y3_N2
\pwm_1|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[11]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(11));

-- Location: FF_X36_Y1_N31
\pwm_1|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][11]~q\);

-- Location: LABCELL_X36_Y3_N3
\pwm_1|half_duty_new[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[10]~feeder_combout\ = ( \pwm_1|Mult0~27\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~27\,
	combout => \pwm_1|half_duty_new[10]~feeder_combout\);

-- Location: FF_X36_Y3_N4
\pwm_1|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[10]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(10));

-- Location: FF_X36_Y1_N28
\pwm_1|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][10]~q\);

-- Location: FF_X36_Y3_N37
\pwm_1|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(9));

-- Location: FF_X36_Y1_N25
\pwm_1|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][9]~q\);

-- Location: LABCELL_X36_Y3_N21
\pwm_1|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[8]~feeder_combout\ = ( \pwm_1|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~25\,
	combout => \pwm_1|half_duty_new[8]~feeder_combout\);

-- Location: FF_X36_Y3_N23
\pwm_1|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(8));

-- Location: FF_X36_Y1_N22
\pwm_1|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][8]~q\);

-- Location: FF_X36_Y3_N29
\pwm_1|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~24\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(7));

-- Location: FF_X36_Y1_N19
\pwm_1|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][7]~q\);

-- Location: LABCELL_X36_Y3_N12
\pwm_1|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[6]~feeder_combout\ = ( \pwm_1|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~23\,
	combout => \pwm_1|half_duty_new[6]~feeder_combout\);

-- Location: FF_X36_Y3_N13
\pwm_1|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(6));

-- Location: FF_X36_Y1_N16
\pwm_1|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][6]~q\);

-- Location: FF_X36_Y3_N34
\pwm_1|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~22\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(5));

-- Location: FF_X36_Y1_N13
\pwm_1|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][5]~q\);

-- Location: LABCELL_X36_Y3_N39
\pwm_1|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[4]~feeder_combout\ = ( \pwm_1|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~21\,
	combout => \pwm_1|half_duty_new[4]~feeder_combout\);

-- Location: FF_X36_Y3_N40
\pwm_1|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(4));

-- Location: FF_X36_Y1_N10
\pwm_1|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][4]~q\);

-- Location: FF_X36_Y1_N59
\pwm_1|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(3));

-- Location: FF_X36_Y1_N7
\pwm_1|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][3]~q\);

-- Location: LABCELL_X36_Y3_N57
\pwm_1|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[2]~feeder_combout\ = ( \pwm_1|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~19\,
	combout => \pwm_1|half_duty_new[2]~feeder_combout\);

-- Location: FF_X36_Y3_N58
\pwm_1|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(2));

-- Location: FF_X36_Y1_N5
\pwm_1|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][2]~q\);

-- Location: LABCELL_X36_Y3_N54
\pwm_1|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[1]~feeder_combout\ = ( \pwm_1|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~18\,
	combout => \pwm_1|half_duty_new[1]~feeder_combout\);

-- Location: FF_X36_Y3_N55
\pwm_1|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(1));

-- Location: FF_X37_Y1_N8
\pwm_1|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][1]~q\);

-- Location: LABCELL_X36_Y3_N24
\pwm_1|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[0]~feeder_combout\ = ( \pwm_1|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~17\,
	combout => \pwm_1|half_duty_new[0]~feeder_combout\);

-- Location: FF_X36_Y3_N26
\pwm_1|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(0));

-- Location: FF_X36_Y1_N2
\pwm_1|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][0]~q\);

-- Location: LABCELL_X36_Y1_N0
\pwm_1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~61_sumout\ = SUM(( !\pwm_1|half_duty[0][0]~q\ ) + ( !\pwm_1|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_1|Add1~62\ = CARRY(( !\pwm_1|half_duty[0][0]~q\ ) + ( !\pwm_1|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_1|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_1|Add1~61_sumout\,
	cout => \pwm_1|Add1~62\);

-- Location: LABCELL_X36_Y1_N3
\pwm_1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~65_sumout\ = SUM(( !\pwm_1|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_1|Add1~62\ ))
-- \pwm_1|Add1~66\ = CARRY(( !\pwm_1|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_1|Add1~62\,
	sumout => \pwm_1|Add1~65_sumout\,
	cout => \pwm_1|Add1~66\);

-- Location: LABCELL_X36_Y1_N6
\pwm_1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~37_sumout\ = SUM(( !\pwm_1|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_1|Add1~66\ ))
-- \pwm_1|Add1~38\ = CARRY(( !\pwm_1|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_1|Add1~66\,
	sumout => \pwm_1|Add1~37_sumout\,
	cout => \pwm_1|Add1~38\);

-- Location: LABCELL_X36_Y1_N9
\pwm_1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~41_sumout\ = SUM(( !\pwm_1|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_1|Add1~38\ ))
-- \pwm_1|Add1~42\ = CARRY(( !\pwm_1|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_1|Add1~38\,
	sumout => \pwm_1|Add1~41_sumout\,
	cout => \pwm_1|Add1~42\);

-- Location: LABCELL_X36_Y1_N12
\pwm_1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~45_sumout\ = SUM(( !\pwm_1|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_1|Add1~42\ ))
-- \pwm_1|Add1~46\ = CARRY(( !\pwm_1|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_1|Add1~42\,
	sumout => \pwm_1|Add1~45_sumout\,
	cout => \pwm_1|Add1~46\);

-- Location: LABCELL_X36_Y1_N15
\pwm_1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~9_sumout\ = SUM(( !\pwm_1|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_1|Add1~46\ ))
-- \pwm_1|Add1~10\ = CARRY(( !\pwm_1|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_1|Add1~46\,
	sumout => \pwm_1|Add1~9_sumout\,
	cout => \pwm_1|Add1~10\);

-- Location: LABCELL_X36_Y1_N18
\pwm_1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~13_sumout\ = SUM(( !\pwm_1|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_1|Add1~10\ ))
-- \pwm_1|Add1~14\ = CARRY(( !\pwm_1|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_1|Add1~10\,
	sumout => \pwm_1|Add1~13_sumout\,
	cout => \pwm_1|Add1~14\);

-- Location: LABCELL_X36_Y1_N21
\pwm_1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~17_sumout\ = SUM(( !\pwm_1|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_1|Add1~14\ ))
-- \pwm_1|Add1~18\ = CARRY(( !\pwm_1|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_1|Add1~14\,
	sumout => \pwm_1|Add1~17_sumout\,
	cout => \pwm_1|Add1~18\);

-- Location: LABCELL_X36_Y1_N24
\pwm_1|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~69_sumout\ = SUM(( !\pwm_1|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_1|Add1~18\ ))
-- \pwm_1|Add1~70\ = CARRY(( !\pwm_1|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_1|Add1~18\,
	sumout => \pwm_1|Add1~69_sumout\,
	cout => \pwm_1|Add1~70\);

-- Location: LABCELL_X36_Y1_N27
\pwm_1|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~73_sumout\ = SUM(( !\pwm_1|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_1|Add1~70\ ))
-- \pwm_1|Add1~74\ = CARRY(( !\pwm_1|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_1|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_1|Add1~70\,
	sumout => \pwm_1|Add1~73_sumout\,
	cout => \pwm_1|Add1~74\);

-- Location: LABCELL_X36_Y1_N30
\pwm_1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~49_sumout\ = SUM(( !\pwm_1|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_1|Add1~74\ ))
-- \pwm_1|Add1~50\ = CARRY(( !\pwm_1|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_1|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_1|Add1~74\,
	sumout => \pwm_1|Add1~49_sumout\,
	cout => \pwm_1|Add1~50\);

-- Location: LABCELL_X36_Y1_N33
\pwm_1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~53_sumout\ = SUM(( !\pwm_1|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_1|Add1~50\ ))
-- \pwm_1|Add1~54\ = CARRY(( !\pwm_1|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_1|Add1~50\,
	sumout => \pwm_1|Add1~53_sumout\,
	cout => \pwm_1|Add1~54\);

-- Location: LABCELL_X36_Y3_N18
\pwm_1|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[13]~feeder_combout\ = ( \pwm_1|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~30\,
	combout => \pwm_1|half_duty_new[13]~feeder_combout\);

-- Location: FF_X36_Y3_N19
\pwm_1|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(13));

-- Location: FF_X36_Y1_N37
\pwm_1|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][13]~q\);

-- Location: LABCELL_X36_Y1_N36
\pwm_1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~57_sumout\ = SUM(( !\pwm_1|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_1|Add1~54\ ))
-- \pwm_1|Add1~58\ = CARRY(( !\pwm_1|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_1|Add1~54\,
	sumout => \pwm_1|Add1~57_sumout\,
	cout => \pwm_1|Add1~58\);

-- Location: MLABCELL_X37_Y1_N0
\pwm_1|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~5_combout\ = ( \pwm_1|half_duty[0][0]~q\ & ( \pwm_1|Add1~65_sumout\ & ( (\pwm_1|count[0][2]~q\ & (\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ (\pwm_1|Add1~61_sumout\)))) ) ) ) # ( !\pwm_1|half_duty[0][0]~q\ & ( \pwm_1|Add1~65_sumout\ 
-- & ( (\pwm_1|count[0][2]~q\ & (!\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ (\pwm_1|Add1~61_sumout\)))) ) ) ) # ( \pwm_1|half_duty[0][0]~q\ & ( !\pwm_1|Add1~65_sumout\ & ( (!\pwm_1|count[0][2]~q\ & (\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ 
-- (\pwm_1|Add1~61_sumout\)))) ) ) ) # ( !\pwm_1|half_duty[0][0]~q\ & ( !\pwm_1|Add1~65_sumout\ & ( (!\pwm_1|count[0][2]~q\ & (!\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ (\pwm_1|Add1~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][2]~q\,
	datab => \pwm_1|ALT_INV_count[0][1]~q\,
	datac => \pwm_1|ALT_INV_count[0][0]~q\,
	datad => \pwm_1|ALT_INV_Add1~61_sumout\,
	datae => \pwm_1|ALT_INV_half_duty[0][0]~q\,
	dataf => \pwm_1|ALT_INV_Add1~65_sumout\,
	combout => \pwm_1|pwm_out~5_combout\);

-- Location: LABCELL_X35_Y1_N18
\pwm_1|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~8_combout\ = ( \pwm_1|Add1~73_sumout\ & ( \pwm_1|Add1~49_sumout\ & ( (\pwm_1|count[0][10]~q\ & (\pwm_1|count[0][11]~q\ & (!\pwm_1|count[0][9]~q\ $ (\pwm_1|Add1~69_sumout\)))) ) ) ) # ( !\pwm_1|Add1~73_sumout\ & ( \pwm_1|Add1~49_sumout\ & ( 
-- (!\pwm_1|count[0][10]~q\ & (\pwm_1|count[0][11]~q\ & (!\pwm_1|count[0][9]~q\ $ (\pwm_1|Add1~69_sumout\)))) ) ) ) # ( \pwm_1|Add1~73_sumout\ & ( !\pwm_1|Add1~49_sumout\ & ( (\pwm_1|count[0][10]~q\ & (!\pwm_1|count[0][11]~q\ & (!\pwm_1|count[0][9]~q\ $ 
-- (\pwm_1|Add1~69_sumout\)))) ) ) ) # ( !\pwm_1|Add1~73_sumout\ & ( !\pwm_1|Add1~49_sumout\ & ( (!\pwm_1|count[0][10]~q\ & (!\pwm_1|count[0][11]~q\ & (!\pwm_1|count[0][9]~q\ $ (\pwm_1|Add1~69_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][10]~q\,
	datab => \pwm_1|ALT_INV_count[0][9]~q\,
	datac => \pwm_1|ALT_INV_count[0][11]~q\,
	datad => \pwm_1|ALT_INV_Add1~69_sumout\,
	datae => \pwm_1|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~49_sumout\,
	combout => \pwm_1|pwm_out~8_combout\);

-- Location: LABCELL_X35_Y1_N48
\pwm_1|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~6_combout\ = ( \pwm_1|pwm_out~5_combout\ & ( \pwm_1|pwm_out~8_combout\ & ( (!\pwm_1|count[0][12]~q\ & (!\pwm_1|Add1~53_sumout\ & (!\pwm_1|count[0][13]~q\ $ (\pwm_1|Add1~57_sumout\)))) # (\pwm_1|count[0][12]~q\ & (\pwm_1|Add1~53_sumout\ & 
-- (!\pwm_1|count[0][13]~q\ $ (\pwm_1|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][12]~q\,
	datab => \pwm_1|ALT_INV_count[0][13]~q\,
	datac => \pwm_1|ALT_INV_Add1~53_sumout\,
	datad => \pwm_1|ALT_INV_Add1~57_sumout\,
	datae => \pwm_1|ALT_INV_pwm_out~5_combout\,
	dataf => \pwm_1|ALT_INV_pwm_out~8_combout\,
	combout => \pwm_1|pwm_out~6_combout\);

-- Location: FF_X33_Y1_N34
\pwm_1|count[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|Add0~53_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|count[0][11]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N42
\pwm_1|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~2_combout\ = ( \pwm_1|half_duty[0][12]~q\ & ( \pwm_1|count[0][11]~DUPLICATE_q\ & ( (\pwm_1|count[0][12]~q\ & (\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|count[0][13]~q\ $ (\pwm_1|half_duty[0][13]~q\)))) ) ) ) # ( !\pwm_1|half_duty[0][12]~q\ & ( 
-- \pwm_1|count[0][11]~DUPLICATE_q\ & ( (!\pwm_1|count[0][12]~q\ & (\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|count[0][13]~q\ $ (\pwm_1|half_duty[0][13]~q\)))) ) ) ) # ( \pwm_1|half_duty[0][12]~q\ & ( !\pwm_1|count[0][11]~DUPLICATE_q\ & ( (\pwm_1|count[0][12]~q\ 
-- & (!\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|count[0][13]~q\ $ (\pwm_1|half_duty[0][13]~q\)))) ) ) ) # ( !\pwm_1|half_duty[0][12]~q\ & ( !\pwm_1|count[0][11]~DUPLICATE_q\ & ( (!\pwm_1|count[0][12]~q\ & (!\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|count[0][13]~q\ 
-- $ (\pwm_1|half_duty[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][12]~q\,
	datab => \pwm_1|ALT_INV_count[0][13]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][11]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][13]~q\,
	datae => \pwm_1|ALT_INV_half_duty[0][12]~q\,
	dataf => \pwm_1|ALT_INV_count[0][11]~DUPLICATE_q\,
	combout => \pwm_1|Equal1~2_combout\);

-- Location: MLABCELL_X37_Y1_N18
\pwm_1|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~3_combout\ = ( \pwm_1|count[0][9]~q\ & ( \pwm_1|count[0][10]~q\ & ( (\pwm_1|half_duty[0][9]~q\ & (\pwm_1|half_duty[0][10]~q\ & (!\pwm_1|half_duty[0][8]~q\ $ (\pwm_1|count[0][8]~q\)))) ) ) ) # ( !\pwm_1|count[0][9]~q\ & ( 
-- \pwm_1|count[0][10]~q\ & ( (!\pwm_1|half_duty[0][9]~q\ & (\pwm_1|half_duty[0][10]~q\ & (!\pwm_1|half_duty[0][8]~q\ $ (\pwm_1|count[0][8]~q\)))) ) ) ) # ( \pwm_1|count[0][9]~q\ & ( !\pwm_1|count[0][10]~q\ & ( (\pwm_1|half_duty[0][9]~q\ & 
-- (!\pwm_1|half_duty[0][10]~q\ & (!\pwm_1|half_duty[0][8]~q\ $ (\pwm_1|count[0][8]~q\)))) ) ) ) # ( !\pwm_1|count[0][9]~q\ & ( !\pwm_1|count[0][10]~q\ & ( (!\pwm_1|half_duty[0][9]~q\ & (!\pwm_1|half_duty[0][10]~q\ & (!\pwm_1|half_duty[0][8]~q\ $ 
-- (\pwm_1|count[0][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][8]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][9]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][10]~q\,
	datad => \pwm_1|ALT_INV_count[0][8]~q\,
	datae => \pwm_1|ALT_INV_count[0][9]~q\,
	dataf => \pwm_1|ALT_INV_count[0][10]~q\,
	combout => \pwm_1|Equal1~3_combout\);

-- Location: LABCELL_X36_Y3_N42
\pwm_1|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[16]~feeder_combout\ = ( \pwm_1|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~33\,
	combout => \pwm_1|half_duty_new[16]~feeder_combout\);

-- Location: FF_X36_Y3_N43
\pwm_1|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(16));

-- Location: FF_X36_Y1_N46
\pwm_1|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][16]~q\);

-- Location: FF_X36_Y3_N49
\pwm_1|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(14));

-- Location: FF_X36_Y1_N40
\pwm_1|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][14]~q\);

-- Location: FF_X36_Y1_N56
\pwm_1|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~32\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(15));

-- Location: FF_X36_Y1_N43
\pwm_1|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][15]~q\);

-- Location: MLABCELL_X37_Y1_N30
\pwm_1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~1_combout\ = ( \pwm_1|half_duty[0][15]~q\ & ( \pwm_1|count[0][14]~q\ & ( (\pwm_1|count[0][15]~q\ & (\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][16]~q\ $ (\pwm_1|count[0][16]~q\)))) ) ) ) # ( !\pwm_1|half_duty[0][15]~q\ & ( 
-- \pwm_1|count[0][14]~q\ & ( (!\pwm_1|count[0][15]~q\ & (\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][16]~q\ $ (\pwm_1|count[0][16]~q\)))) ) ) ) # ( \pwm_1|half_duty[0][15]~q\ & ( !\pwm_1|count[0][14]~q\ & ( (\pwm_1|count[0][15]~q\ & 
-- (!\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][16]~q\ $ (\pwm_1|count[0][16]~q\)))) ) ) ) # ( !\pwm_1|half_duty[0][15]~q\ & ( !\pwm_1|count[0][14]~q\ & ( (!\pwm_1|count[0][15]~q\ & (!\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][16]~q\ $ 
-- (\pwm_1|count[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][16]~q\,
	datab => \pwm_1|ALT_INV_count[0][15]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][14]~q\,
	datad => \pwm_1|ALT_INV_count[0][16]~q\,
	datae => \pwm_1|ALT_INV_half_duty[0][15]~q\,
	dataf => \pwm_1|ALT_INV_count[0][14]~q\,
	combout => \pwm_1|Equal1~1_combout\);

-- Location: MLABCELL_X37_Y1_N9
\pwm_1|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~5_combout\ = ( \pwm_1|half_duty[0][0]~q\ & ( !\pwm_1|count[0][19]~DUPLICATE_q\ & ( (\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ (\pwm_1|half_duty[0][1]~q\))) ) ) ) # ( !\pwm_1|half_duty[0][0]~q\ & ( !\pwm_1|count[0][19]~DUPLICATE_q\ & 
-- ( (!\pwm_1|count[0][0]~q\ & (!\pwm_1|count[0][1]~q\ $ (\pwm_1|half_duty[0][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010010000010100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][0]~q\,
	datab => \pwm_1|ALT_INV_count[0][1]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][1]~q\,
	datae => \pwm_1|ALT_INV_half_duty[0][0]~q\,
	dataf => \pwm_1|ALT_INV_count[0][19]~DUPLICATE_q\,
	combout => \pwm_1|Equal1~5_combout\);

-- Location: MLABCELL_X37_Y1_N36
\pwm_1|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~6_combout\ = ( \pwm_1|count[0][2]~q\ & ( \pwm_1|half_duty[0][2]~q\ & ( !\pwm_1|half_duty[0][3]~q\ $ (\pwm_1|count[0][3]~q\) ) ) ) # ( !\pwm_1|count[0][2]~q\ & ( !\pwm_1|half_duty[0][2]~q\ & ( !\pwm_1|half_duty[0][3]~q\ $ 
-- (\pwm_1|count[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][3]~q\,
	datac => \pwm_1|ALT_INV_count[0][3]~q\,
	datae => \pwm_1|ALT_INV_count[0][2]~q\,
	dataf => \pwm_1|ALT_INV_half_duty[0][2]~q\,
	combout => \pwm_1|Equal1~6_combout\);

-- Location: MLABCELL_X37_Y1_N24
\pwm_1|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~4_combout\ = ( \pwm_1|half_duty[0][5]~q\ & ( \pwm_1|count[0][5]~q\ & ( (!\pwm_1|count[0][7]~q\ & (!\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|count[0][6]~q\ $ (\pwm_1|half_duty[0][6]~q\)))) # (\pwm_1|count[0][7]~q\ & (\pwm_1|half_duty[0][7]~q\ & 
-- (!\pwm_1|count[0][6]~q\ $ (\pwm_1|half_duty[0][6]~q\)))) ) ) ) # ( !\pwm_1|half_duty[0][5]~q\ & ( !\pwm_1|count[0][5]~q\ & ( (!\pwm_1|count[0][7]~q\ & (!\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|count[0][6]~q\ $ (\pwm_1|half_duty[0][6]~q\)))) # 
-- (\pwm_1|count[0][7]~q\ & (\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|count[0][6]~q\ $ (\pwm_1|half_duty[0][6]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][7]~q\,
	datab => \pwm_1|ALT_INV_count[0][6]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][7]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][6]~q\,
	datae => \pwm_1|ALT_INV_half_duty[0][5]~q\,
	dataf => \pwm_1|ALT_INV_count[0][5]~q\,
	combout => \pwm_1|Equal1~4_combout\);

-- Location: MLABCELL_X37_Y1_N54
\pwm_1|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~7_combout\ = ( \pwm_1|Equal1~6_combout\ & ( \pwm_1|Equal1~4_combout\ & ( (\pwm_1|Equal1~5_combout\ & (!\pwm_1|half_duty[0][4]~q\ $ (\pwm_1|count[0][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][4]~q\,
	datab => \pwm_1|ALT_INV_count[0][4]~q\,
	datad => \pwm_1|ALT_INV_Equal1~5_combout\,
	datae => \pwm_1|ALT_INV_Equal1~6_combout\,
	dataf => \pwm_1|ALT_INV_Equal1~4_combout\,
	combout => \pwm_1|Equal1~7_combout\);

-- Location: LABCELL_X36_Y3_N9
\pwm_1|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[17]~feeder_combout\ = ( \pwm_1|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~34\,
	combout => \pwm_1|half_duty_new[17]~feeder_combout\);

-- Location: FF_X36_Y3_N10
\pwm_1|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(17));

-- Location: FF_X36_Y1_N49
\pwm_1|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][17]~q\);

-- Location: FF_X36_Y3_N7
\pwm_1|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~35\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(18));

-- Location: FF_X36_Y1_N52
\pwm_1|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_1|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][18]~q\);

-- Location: LABCELL_X35_Y1_N45
\pwm_1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~0_combout\ = ( \pwm_1|half_duty[0][18]~q\ & ( (\pwm_1|count[0][18]~q\ & (!\pwm_1|count[0][17]~q\ $ (\pwm_1|half_duty[0][17]~q\))) ) ) # ( !\pwm_1|half_duty[0][18]~q\ & ( (!\pwm_1|count[0][18]~q\ & (!\pwm_1|count[0][17]~q\ $ 
-- (\pwm_1|half_duty[0][17]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][18]~q\,
	datac => \pwm_1|ALT_INV_count[0][17]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][17]~q\,
	dataf => \pwm_1|ALT_INV_half_duty[0][18]~q\,
	combout => \pwm_1|Equal1~0_combout\);

-- Location: MLABCELL_X37_Y1_N12
\pwm_1|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~8_combout\ = ( \pwm_1|Equal1~7_combout\ & ( \pwm_1|Equal1~0_combout\ & ( (\pwm_1|Equal1~2_combout\ & (\pwm_1|Equal1~3_combout\ & \pwm_1|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_1|ALT_INV_Equal1~2_combout\,
	datac => \pwm_1|ALT_INV_Equal1~3_combout\,
	datad => \pwm_1|ALT_INV_Equal1~1_combout\,
	datae => \pwm_1|ALT_INV_Equal1~7_combout\,
	dataf => \pwm_1|ALT_INV_Equal1~0_combout\,
	combout => \pwm_1|Equal1~8_combout\);

-- Location: LABCELL_X36_Y1_N39
\pwm_1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~29_sumout\ = SUM(( !\pwm_1|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_1|Add1~58\ ))
-- \pwm_1|Add1~30\ = CARRY(( !\pwm_1|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_1|Add1~58\,
	sumout => \pwm_1|Add1~29_sumout\,
	cout => \pwm_1|Add1~30\);

-- Location: LABCELL_X36_Y1_N42
\pwm_1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~33_sumout\ = SUM(( !\pwm_1|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_1|Add1~30\ ))
-- \pwm_1|Add1~34\ = CARRY(( !\pwm_1|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_1|Add1~30\,
	sumout => \pwm_1|Add1~33_sumout\,
	cout => \pwm_1|Add1~34\);

-- Location: LABCELL_X36_Y1_N45
\pwm_1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~21_sumout\ = SUM(( !\pwm_1|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_1|Add1~34\ ))
-- \pwm_1|Add1~22\ = CARRY(( !\pwm_1|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_1|Add1~34\,
	sumout => \pwm_1|Add1~21_sumout\,
	cout => \pwm_1|Add1~22\);

-- Location: LABCELL_X36_Y1_N48
\pwm_1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~25_sumout\ = SUM(( !\pwm_1|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_1|Add1~22\ ))
-- \pwm_1|Add1~26\ = CARRY(( !\pwm_1|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_1|Add1~22\,
	sumout => \pwm_1|Add1~25_sumout\,
	cout => \pwm_1|Add1~26\);

-- Location: LABCELL_X35_Y1_N24
\pwm_1|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~2_combout\ = ( \pwm_1|Add1~25_sumout\ & ( \pwm_1|Add1~21_sumout\ & ( (\pwm_1|count[0][17]~q\ & \pwm_1|count[0][16]~q\) ) ) ) # ( !\pwm_1|Add1~25_sumout\ & ( \pwm_1|Add1~21_sumout\ & ( (!\pwm_1|count[0][17]~q\ & \pwm_1|count[0][16]~q\) ) ) ) 
-- # ( \pwm_1|Add1~25_sumout\ & ( !\pwm_1|Add1~21_sumout\ & ( (\pwm_1|count[0][17]~q\ & !\pwm_1|count[0][16]~q\) ) ) ) # ( !\pwm_1|Add1~25_sumout\ & ( !\pwm_1|Add1~21_sumout\ & ( (!\pwm_1|count[0][17]~q\ & !\pwm_1|count[0][16]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000000000000110011000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_1|ALT_INV_count[0][17]~q\,
	datad => \pwm_1|ALT_INV_count[0][16]~q\,
	datae => \pwm_1|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~21_sumout\,
	combout => \pwm_1|pwm_out~2_combout\);

-- Location: LABCELL_X35_Y1_N0
\pwm_1|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~3_combout\ = ( \pwm_1|Add1~37_sumout\ & ( \pwm_1|Add1~41_sumout\ & ( (\pwm_1|count[0][3]~q\ & (\pwm_1|count[0][4]~q\ & (!\pwm_1|count[0][5]~q\ $ (\pwm_1|Add1~45_sumout\)))) ) ) ) # ( !\pwm_1|Add1~37_sumout\ & ( \pwm_1|Add1~41_sumout\ & ( 
-- (!\pwm_1|count[0][3]~q\ & (\pwm_1|count[0][4]~q\ & (!\pwm_1|count[0][5]~q\ $ (\pwm_1|Add1~45_sumout\)))) ) ) ) # ( \pwm_1|Add1~37_sumout\ & ( !\pwm_1|Add1~41_sumout\ & ( (\pwm_1|count[0][3]~q\ & (!\pwm_1|count[0][4]~q\ & (!\pwm_1|count[0][5]~q\ $ 
-- (\pwm_1|Add1~45_sumout\)))) ) ) ) # ( !\pwm_1|Add1~37_sumout\ & ( !\pwm_1|Add1~41_sumout\ & ( (!\pwm_1|count[0][3]~q\ & (!\pwm_1|count[0][4]~q\ & (!\pwm_1|count[0][5]~q\ $ (\pwm_1|Add1~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][3]~q\,
	datab => \pwm_1|ALT_INV_count[0][4]~q\,
	datac => \pwm_1|ALT_INV_count[0][5]~q\,
	datad => \pwm_1|ALT_INV_Add1~45_sumout\,
	datae => \pwm_1|ALT_INV_Add1~37_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~41_sumout\,
	combout => \pwm_1|pwm_out~3_combout\);

-- Location: LABCELL_X35_Y1_N6
\pwm_1|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~4_combout\ = ( \pwm_1|Add1~33_sumout\ & ( \pwm_1|Add1~29_sumout\ & ( (\pwm_1|count[0][15]~q\ & (\pwm_1|count[0][14]~q\ & \pwm_1|pwm_out~3_combout\)) ) ) ) # ( !\pwm_1|Add1~33_sumout\ & ( \pwm_1|Add1~29_sumout\ & ( (!\pwm_1|count[0][15]~q\ & 
-- (\pwm_1|count[0][14]~q\ & \pwm_1|pwm_out~3_combout\)) ) ) ) # ( \pwm_1|Add1~33_sumout\ & ( !\pwm_1|Add1~29_sumout\ & ( (\pwm_1|count[0][15]~q\ & (!\pwm_1|count[0][14]~q\ & \pwm_1|pwm_out~3_combout\)) ) ) ) # ( !\pwm_1|Add1~33_sumout\ & ( 
-- !\pwm_1|Add1~29_sumout\ & ( (!\pwm_1|count[0][15]~q\ & (!\pwm_1|count[0][14]~q\ & \pwm_1|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000001000000010000000010000000100000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][15]~q\,
	datab => \pwm_1|ALT_INV_count[0][14]~q\,
	datac => \pwm_1|ALT_INV_pwm_out~3_combout\,
	datae => \pwm_1|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~29_sumout\,
	combout => \pwm_1|pwm_out~4_combout\);

-- Location: LABCELL_X36_Y1_N51
\pwm_1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~1_sumout\ = SUM(( !\pwm_1|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_1|Add1~26\ ))
-- \pwm_1|Add1~2\ = CARRY(( !\pwm_1|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_1|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_1|Add1~26\,
	sumout => \pwm_1|Add1~1_sumout\,
	cout => \pwm_1|Add1~2\);

-- Location: LABCELL_X35_Y1_N36
\pwm_1|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~0_combout\ = ( \pwm_1|Add1~9_sumout\ & ( \pwm_1|Add1~17_sumout\ & ( (\pwm_1|count[0][8]~q\ & (\pwm_1|count[0][6]~q\ & (!\pwm_1|count[0][7]~q\ $ (\pwm_1|Add1~13_sumout\)))) ) ) ) # ( !\pwm_1|Add1~9_sumout\ & ( \pwm_1|Add1~17_sumout\ & ( 
-- (\pwm_1|count[0][8]~q\ & (!\pwm_1|count[0][6]~q\ & (!\pwm_1|count[0][7]~q\ $ (\pwm_1|Add1~13_sumout\)))) ) ) ) # ( \pwm_1|Add1~9_sumout\ & ( !\pwm_1|Add1~17_sumout\ & ( (!\pwm_1|count[0][8]~q\ & (\pwm_1|count[0][6]~q\ & (!\pwm_1|count[0][7]~q\ $ 
-- (\pwm_1|Add1~13_sumout\)))) ) ) ) # ( !\pwm_1|Add1~9_sumout\ & ( !\pwm_1|Add1~17_sumout\ & ( (!\pwm_1|count[0][8]~q\ & (!\pwm_1|count[0][6]~q\ & (!\pwm_1|count[0][7]~q\ $ (\pwm_1|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][8]~q\,
	datab => \pwm_1|ALT_INV_count[0][6]~q\,
	datac => \pwm_1|ALT_INV_count[0][7]~q\,
	datad => \pwm_1|ALT_INV_Add1~13_sumout\,
	datae => \pwm_1|ALT_INV_Add1~9_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~17_sumout\,
	combout => \pwm_1|pwm_out~0_combout\);

-- Location: LABCELL_X36_Y1_N54
\pwm_1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_1|Add1~2\,
	sumout => \pwm_1|Add1~5_sumout\);

-- Location: LABCELL_X35_Y1_N42
\pwm_1|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~1_combout\ = ( \pwm_1|Add1~5_sumout\ & ( (!\pwm_1|count[0][19]~q\ & (\pwm_1|pwm_out~0_combout\ & (!\pwm_1|count[0][18]~q\ $ (\pwm_1|Add1~1_sumout\)))) ) ) # ( !\pwm_1|Add1~5_sumout\ & ( (\pwm_1|count[0][19]~q\ & (\pwm_1|pwm_out~0_combout\ & 
-- (!\pwm_1|count[0][18]~q\ $ (\pwm_1|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000100000000100001000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_count[0][18]~q\,
	datab => \pwm_1|ALT_INV_count[0][19]~q\,
	datac => \pwm_1|ALT_INV_Add1~1_sumout\,
	datad => \pwm_1|ALT_INV_pwm_out~0_combout\,
	dataf => \pwm_1|ALT_INV_Add1~5_sumout\,
	combout => \pwm_1|pwm_out~1_combout\);

-- Location: LABCELL_X35_Y1_N12
\pwm_1|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~7_combout\ = ( \pwm_1|pwm_out\(0) & ( \pwm_1|pwm_out~1_combout\ & ( !\pwm_1|Equal1~8_combout\ ) ) ) # ( !\pwm_1|pwm_out\(0) & ( \pwm_1|pwm_out~1_combout\ & ( (\pwm_1|pwm_out~6_combout\ & (!\pwm_1|Equal1~8_combout\ & 
-- (\pwm_1|pwm_out~2_combout\ & \pwm_1|pwm_out~4_combout\))) ) ) ) # ( \pwm_1|pwm_out\(0) & ( !\pwm_1|pwm_out~1_combout\ & ( !\pwm_1|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_pwm_out~6_combout\,
	datab => \pwm_1|ALT_INV_Equal1~8_combout\,
	datac => \pwm_1|ALT_INV_pwm_out~2_combout\,
	datad => \pwm_1|ALT_INV_pwm_out~4_combout\,
	datae => \pwm_1|ALT_INV_pwm_out\(0),
	dataf => \pwm_1|ALT_INV_pwm_out~1_combout\,
	combout => \pwm_1|pwm_out~7_combout\);

-- Location: FF_X35_Y1_N13
\pwm_1|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|pwm_out~7_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|pwm_out\(0));

-- Location: LABCELL_X63_Y1_N12
\quad_segment7_1|bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~2_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[3]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\))) # (\duty[5]~input_o\ & (!\duty[3]~input_o\ & (\duty[6]~input_o\ & !\duty[7]~input_o\))) ) 
-- ) ) # ( !\duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[6]~input_o\ & (!\duty[3]~input_o\ $ (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[6]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & 
-- (\duty[6]~input_o\ & \duty[7]~input_o\)))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[6]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & (\duty[6]~input_o\ & \duty[7]~input_o\)))) # 
-- (\duty[5]~input_o\ & (!\duty[6]~input_o\ & (!\duty[3]~input_o\ $ (!\duty[7]~input_o\)))) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[3]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\))) # (\duty[5]~input_o\ & 
-- (!\duty[3]~input_o\ & (\duty[6]~input_o\ & !\duty[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000100100000100001001000010000010010000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|bcd~2_combout\);

-- Location: LABCELL_X63_Y1_N48
\quad_segment7_1|bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~0_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[6]~input_o\ & ((!\duty[3]~input_o\) # (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ $ (((\duty[7]~input_o\) # 
-- (\duty[3]~input_o\))))) ) ) ) # ( !\duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[6]~input_o\ $ (((\duty[3]~input_o\ & \duty[7]~input_o\))))) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ & ((\duty[7]~input_o\) # 
-- (\duty[3]~input_o\)))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[6]~input_o\ & ((\duty[7]~input_o\) # (\duty[3]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (\duty[6]~input_o\ & !\duty[7]~input_o\)) 
-- # (\duty[3]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\)))) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[6]~input_o\ & ((!\duty[3]~input_o\) # (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & 
-- (!\duty[6]~input_o\ $ (((\duty[7]~input_o\) # (\duty[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100001101001001001011000010110000110100100100101100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|bcd~0_combout\);

-- Location: LABCELL_X63_Y1_N54
\quad_segment7_1|bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~1_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[3]~input_o\ $ (((!\duty[7]~input_o\))))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[6]~input_o\ & !\duty[7]~input_o\)) # 
-- (\duty[3]~input_o\ & ((\duty[7]~input_o\))))) ) ) ) # ( !\duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[6]~input_o\ $ (!\duty[7]~input_o\))) # (\duty[3]~input_o\ & (!\duty[6]~input_o\ & 
-- !\duty[7]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (\duty[6]~input_o\ & \duty[7]~input_o\)) # (\duty[3]~input_o\ & (!\duty[6]~input_o\ $ (!\duty[7]~input_o\))))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[6]~input_o\ 
-- & ((!\duty[5]~input_o\ & (\duty[3]~input_o\ & \duty[7]~input_o\)) # (\duty[5]~input_o\ & (!\duty[3]~input_o\ & !\duty[7]~input_o\)))) # (\duty[6]~input_o\ & (!\duty[5]~input_o\ $ (!\duty[3]~input_o\ $ (\duty[7]~input_o\)))) ) ) ) # ( !\duty[4]~input_o\ & 
-- ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[3]~input_o\ $ (((!\duty[7]~input_o\))))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[6]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & ((\duty[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001010011001010001100010100100101001100101000110001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|bcd~1_combout\);

-- Location: LABCELL_X64_Y1_N57
\quad_segment7_1|digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[3]~2_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( (!\quad_segment7_1|bcd~0_combout\ & !\duty[1]~input_o\) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( (\quad_segment7_1|bcd~2_combout\ & ((\duty[1]~input_o\) # 
-- (\quad_segment7_1|bcd~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|digit1[3]~2_combout\);

-- Location: LABCELL_X64_Y1_N54
\quad_segment7_1|digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[2]~1_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( (!\quad_segment7_1|bcd~0_combout\ & (\quad_segment7_1|bcd~2_combout\ & !\duty[1]~input_o\)) # (\quad_segment7_1|bcd~0_combout\ & ((\duty[1]~input_o\))) ) ) # ( 
-- !\quad_segment7_1|bcd~1_combout\ & ( !\quad_segment7_1|bcd~0_combout\ $ (((!\quad_segment7_1|bcd~2_combout\) # (\duty[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110011011001100011001101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|digit1[2]~1_combout\);

-- Location: LABCELL_X64_Y1_N15
\quad_segment7_1|digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[1]~0_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( (!\duty[1]~input_o\ & ((\quad_segment7_1|bcd~0_combout\) # (\quad_segment7_1|bcd~2_combout\))) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ 
-- (!\duty[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|digit1[1]~0_combout\);

-- Location: LABCELL_X64_Y1_N27
\quad_segment7_1|LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux0~0_combout\ = ( !\quad_segment7_1|digit1[1]~0_combout\ & ( (!\quad_segment7_1|digit1[3]~2_combout\ & (!\duty[0]~input_o\ $ (!\quad_segment7_1|digit1[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[0]~input_o\,
	datac => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datad => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y1_N42
\quad_segment7_1|LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux1~0_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( (!\quad_segment7_1|bcd~0_combout\ & (\quad_segment7_1|bcd~2_combout\ & (!\duty[0]~input_o\ & !\duty[1]~input_o\))) # (\quad_segment7_1|bcd~0_combout\ & 
-- (((\duty[0]~input_o\ & \duty[1]~input_o\)))) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( (!\quad_segment7_1|bcd~2_combout\ & (\quad_segment7_1|bcd~0_combout\ & (!\duty[0]~input_o\ $ (!\duty[1]~input_o\)))) # (\quad_segment7_1|bcd~2_combout\ & 
-- ((!\quad_segment7_1|bcd~0_combout\ & (!\duty[0]~input_o\ & !\duty[1]~input_o\)) # (\quad_segment7_1|bcd~0_combout\ & (\duty[0]~input_o\ & \duty[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100001010000100010000101000000000000110100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty[0]~input_o\,
	datad => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y1_N45
\quad_segment7_1|LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux2~0_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( (\quad_segment7_1|bcd~0_combout\ & (!\duty[1]~input_o\ & !\duty[0]~input_o\)) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( (!\duty[0]~input_o\ & 
-- ((!\quad_segment7_1|bcd~2_combout\ & (!\quad_segment7_1|bcd~0_combout\ & \duty[1]~input_o\)) # (\quad_segment7_1|bcd~2_combout\ & (\quad_segment7_1|bcd~0_combout\ & !\duty[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000000000110000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty[1]~input_o\,
	datad => \ALT_INV_duty[0]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y1_N48
\quad_segment7_1|LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux3~0_combout\ = (!\quad_segment7_1|digit1[3]~2_combout\ & ((!\quad_segment7_1|digit1[2]~1_combout\ & (!\quad_segment7_1|digit1[1]~0_combout\ & \duty[0]~input_o\)) # (\quad_segment7_1|digit1[2]~1_combout\ & 
-- (!\quad_segment7_1|digit1[1]~0_combout\ $ (\duty[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000000010010010000000001001001000000000100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datac => \ALT_INV_duty[0]~input_o\,
	datad => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y1_N24
\quad_segment7_1|LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux4~0_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( ((\quad_segment7_1|bcd~0_combout\ & \duty[1]~input_o\)) # (\duty[0]~input_o\) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( ((\quad_segment7_1|bcd~0_combout\ & 
-- (!\quad_segment7_1|bcd~2_combout\ $ (\duty[1]~input_o\)))) # (\duty[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010111011101010101011101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[0]~input_o\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y1_N51
\quad_segment7_1|LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux5~0_combout\ = (!\quad_segment7_1|digit1[3]~2_combout\ & ((!\quad_segment7_1|digit1[2]~1_combout\ & ((\duty[0]~input_o\) # (\quad_segment7_1|digit1[1]~0_combout\))) # (\quad_segment7_1|digit1[2]~1_combout\ & 
-- (\quad_segment7_1|digit1[1]~0_combout\ & \duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000001000001011000000100000101100000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datac => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datad => \ALT_INV_duty[0]~input_o\,
	combout => \quad_segment7_1|LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y1_N18
\quad_segment7_1|LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux6~0_combout\ = ( \quad_segment7_1|digit1[3]~2_combout\ & ( \quad_segment7_1|digit1[1]~0_combout\ ) ) # ( !\quad_segment7_1|digit1[3]~2_combout\ & ( \quad_segment7_1|digit1[1]~0_combout\ & ( (!\duty[0]~input_o\) # 
-- (!\quad_segment7_1|digit1[2]~1_combout\) ) ) ) # ( \quad_segment7_1|digit1[3]~2_combout\ & ( !\quad_segment7_1|digit1[1]~0_combout\ ) ) # ( !\quad_segment7_1|digit1[3]~2_combout\ & ( !\quad_segment7_1|digit1[1]~0_combout\ & ( 
-- \quad_segment7_1|digit1[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[0]~input_o\,
	datac => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datae => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X63_Y1_N24
\quad_segment7_1|digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[2]~2_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\)) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ $ (\duty[7]~input_o\))) ) ) ) # ( !\duty[4]~input_o\ & ( 
-- \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[6]~input_o\ & (\duty[3]~input_o\ & \duty[7]~input_o\)) # (\duty[6]~input_o\ & ((!\duty[7]~input_o\))))) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ & ((\duty[7]~input_o\) # (\duty[3]~input_o\)))) ) ) ) # 
-- ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (((!\duty[6]~input_o\ & \duty[7]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[6]~input_o\ & ((!\duty[3]~input_o\) # (!\duty[7]~input_o\))) # (\duty[6]~input_o\ & ((\duty[7]~input_o\))))) 
-- ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (((\duty[6]~input_o\ & !\duty[7]~input_o\)))) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ & ((\duty[7]~input_o\) # (\duty[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001010000010100001110010100011010011100000101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|digit2[2]~2_combout\);

-- Location: LABCELL_X63_Y1_N30
\quad_segment7_1|digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[1]~1_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[6]~input_o\ & ((!\duty[7]~input_o\))) # (\duty[6]~input_o\ & (\duty[3]~input_o\ & \duty[7]~input_o\)))) # (\duty[5]~input_o\ & 
-- (\duty[3]~input_o\ & ((!\duty[7]~input_o\)))) ) ) ) # ( !\duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[6]~input_o\ & (!\duty[3]~input_o\ & \duty[7]~input_o\)) # (\duty[6]~input_o\ & ((!\duty[7]~input_o\))))) # 
-- (\duty[5]~input_o\ & (((!\duty[3]~input_o\ & !\duty[6]~input_o\)) # (\duty[7]~input_o\))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[3]~input_o\ & (\duty[5]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\))) # (\duty[3]~input_o\ & 
-- (!\duty[7]~input_o\ & (!\duty[5]~input_o\ $ (\duty[6]~input_o\)))) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[6]~input_o\ $ (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & (((!\duty[3]~input_o\ & 
-- !\duty[6]~input_o\)) # (\duty[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101011110101001000010100000001001010110101011011000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|digit2[1]~1_combout\);

-- Location: LABCELL_X63_Y1_N6
\quad_segment7_1|digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[3]~3_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[6]~input_o\ & !\duty[7]~input_o\)) # (\duty[5]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\)) ) ) ) # ( !\duty[4]~input_o\ & ( 
-- \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[3]~input_o\ & (\duty[6]~input_o\ & \duty[7]~input_o\))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[5]~input_o\ & (((\duty[6]~input_o\ & !\duty[7]~input_o\)))) # (\duty[5]~input_o\ & 
-- (\duty[3]~input_o\ & (!\duty[6]~input_o\ & \duty[7]~input_o\))) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[3]~input_o\ & (\duty[6]~input_o\ & (!\duty[5]~input_o\ $ (!\duty[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000010100001000000000000000010000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|digit2[3]~3_combout\);

-- Location: LABCELL_X64_Y1_N12
\quad_segment7_1|digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[0]~0_combout\ = ( \quad_segment7_1|bcd~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ (((\duty[1]~input_o\) # (\quad_segment7_1|bcd~0_combout\))) ) ) # ( !\quad_segment7_1|bcd~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|digit2[0]~0_combout\);

-- Location: LABCELL_X63_Y1_N3
\quad_segment7_1|second_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux0~0_combout\ = ( \quad_segment7_1|digit2[0]~0_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|digit2[1]~1_combout\ & !\quad_segment7_1|digit2[3]~3_combout\)) ) ) # ( 
-- !\quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|digit2[1]~1_combout\ & !\quad_segment7_1|digit2[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux0~0_combout\);

-- Location: LABCELL_X64_Y1_N0
\quad_segment7_1|second_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux1~0_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \quad_segment7_1|digit2[1]~1_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (\quad_segment7_1|bcd~1_combout\))) ) ) ) # ( 
-- !\quad_segment7_1|bcd~0_combout\ & ( \quad_segment7_1|digit2[1]~1_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (((\quad_segment7_1|bcd~1_combout\ & \duty[1]~input_o\))))) ) ) ) # ( 
-- \quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|digit2[1]~1_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\))) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( 
-- !\quad_segment7_1|digit2[1]~1_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (((!\quad_segment7_1|bcd~1_combout\) # (!\duty[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010010000100100001001000100010001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \quad_segment7_1|second_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y1_N6
\quad_segment7_1|second_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux2~0_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \quad_segment7_1|digit2[1]~1_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (\quad_segment7_1|bcd~1_combout\))) ) ) ) # ( 
-- !\quad_segment7_1|bcd~0_combout\ & ( \quad_segment7_1|digit2[1]~1_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (((\quad_segment7_1|bcd~1_combout\ & \duty[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \quad_segment7_1|second_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y1_N36
\quad_segment7_1|second_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux3~0_combout\ = ( \quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[1]~1_combout\ & (\quad_segment7_1|digit2[2]~2_combout\ & !\quad_segment7_1|digit2[3]~3_combout\)) ) ) # ( 
-- !\quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[3]~3_combout\ & (!\quad_segment7_1|digit2[1]~1_combout\ $ (\quad_segment7_1|digit2[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y1_N30
\quad_segment7_1|second_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux4~0_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( \quad_segment7_1|digit2[1]~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( 
-- \quad_segment7_1|digit2[1]~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ $ (((!\quad_segment7_1|bcd~1_combout\) # (!\duty[1]~input_o\))) ) ) ) # ( \quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|digit2[1]~1_combout\ & ( 
-- (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\)) # (\quad_segment7_1|digit2[2]~2_combout\) ) ) ) # ( !\quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|digit2[1]~1_combout\ & ( (!\quad_segment7_1|bcd~2_combout\ $ 
-- (((!\quad_segment7_1|bcd~1_combout\) # (!\duty[1]~input_o\)))) # (\quad_segment7_1|digit2[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111011011110110111101101010101010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_duty[1]~input_o\,
	datae => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \quad_segment7_1|second_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y1_N39
\quad_segment7_1|second_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux5~0_combout\ = ( \quad_segment7_1|digit2[0]~0_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ & !\quad_segment7_1|digit2[3]~3_combout\)) ) ) # ( 
-- !\quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[3]~3_combout\ & ((!\quad_segment7_1|digit2[2]~2_combout\) # (\quad_segment7_1|digit2[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000110111010000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux5~0_combout\);

-- Location: LABCELL_X63_Y1_N0
\quad_segment7_1|second_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux6~0_combout\ = ( \quad_segment7_1|digit2[0]~0_combout\ & ( ((\quad_segment7_1|digit2[3]~3_combout\) # (\quad_segment7_1|digit2[1]~1_combout\)) # (\quad_segment7_1|digit2[2]~2_combout\) ) ) # ( 
-- !\quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\ $ (!\quad_segment7_1|digit2[1]~1_combout\)) # (\quad_segment7_1|digit2[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux6~0_combout\);

-- Location: LABCELL_X63_Y1_N18
\quad_segment7_1|third_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux0~0_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( (!\duty[6]~input_o\ & ((!\duty[7]~input_o\))) # (\duty[6]~input_o\ & ((!\duty[5]~input_o\) # (\duty[7]~input_o\))) ) ) ) # ( !\duty[4]~input_o\ & ( 
-- \duty[2]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[7]~input_o\) # ((\duty[3]~input_o\ & \duty[6]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[6]~input_o\ $ (\duty[7]~input_o\)))) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[6]~input_o\ 
-- & ((!\duty[7]~input_o\))) # (\duty[6]~input_o\ & ((!\duty[5]~input_o\) # (\duty[7]~input_o\))) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( (!\duty[6]~input_o\ & (((!\duty[7]~input_o\)))) # (\duty[6]~input_o\ & ((!\duty[5]~input_o\ & 
-- ((!\duty[7]~input_o\) # (\duty[3]~input_o\))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\) # (\duty[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000111111110100000111111111010000001111111101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|third_segment7|Mux0~0_combout\);

-- Location: LABCELL_X63_Y1_N36
\quad_segment7_1|third_segment7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux0~1_combout\ = ( \duty[6]~input_o\ & ( (\duty[7]~input_o\ & (((\duty[4]~input_o\) # (\duty[3]~input_o\)) # (\duty[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[7]~input_o\,
	datad => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[6]~input_o\,
	combout => \quad_segment7_1|third_segment7|Mux0~1_combout\);

-- Location: LABCELL_X63_Y1_N42
\quad_segment7_1|third_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux5~0_combout\ = ( \duty[4]~input_o\ & ( \duty[2]~input_o\ & ( ((\duty[5]~input_o\ & \duty[6]~input_o\)) # (\duty[7]~input_o\) ) ) ) # ( !\duty[4]~input_o\ & ( \duty[2]~input_o\ & ( ((\duty[5]~input_o\ & 
-- \duty[6]~input_o\)) # (\duty[7]~input_o\) ) ) ) # ( \duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( ((\duty[5]~input_o\ & \duty[6]~input_o\)) # (\duty[7]~input_o\) ) ) ) # ( !\duty[4]~input_o\ & ( !\duty[2]~input_o\ & ( ((\duty[5]~input_o\ & 
-- (\duty[3]~input_o\ & \duty[6]~input_o\))) # (\duty[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000001011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[6]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[4]~input_o\,
	dataf => \ALT_INV_duty[2]~input_o\,
	combout => \quad_segment7_1|third_segment7|Mux5~0_combout\);

-- Location: LABCELL_X63_Y1_N39
\quad_segment7_1|LessThan25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LessThan25~0_combout\ = ( \duty[6]~input_o\ & ( (\duty[7]~input_o\ & (((\duty[4]~input_o\) # (\duty[3]~input_o\)) # (\duty[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[4]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	dataf => \ALT_INV_duty[6]~input_o\,
	combout => \quad_segment7_1|LessThan25~0_combout\);

-- Location: IOIBUF_X21_Y0_N18
\increase~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increase,
	o => \increase~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\decrease~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decrease,
	o => \decrease~input_o\);

-- Location: LABCELL_X43_Y55_N3
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


