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

-- DATE "12/15/2015 15:43:24"

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

ENTITY 	servo2 IS
    PORT (
	clk : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_output_parallel : BUFFER std_logic;
	pwm_output_incremental : BUFFER std_logic;
	enable_pwm : IN std_logic;
	reset_pwm : IN std_logic;
	changeup : IN std_logic;
	changedown : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END servo2;

-- Design Ports Information
-- pwm_output_parallel	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_incremental	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- duty[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_pwm	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- changedown	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- changeup	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_pwm	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF servo2 IS
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
SIGNAL ww_pwm_output_parallel : std_logic;
SIGNAL ww_pwm_output_incremental : std_logic;
SIGNAL ww_enable_pwm : std_logic;
SIGNAL ww_reset_pwm : std_logic;
SIGNAL ww_changeup : std_logic;
SIGNAL ww_changedown : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|Mult0~8_AY_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_AY_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|Mult0~8_resulta\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~9\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~10\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~11\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~12\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~13\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~14\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~15\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~16\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~22\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~23\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~24\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~25\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~26\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~27\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~28\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~29\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~30\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~31\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~32\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~33\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~34\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~35\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~36\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~37\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~38\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~39\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~40\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~41\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~42\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~43\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~44\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~45\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~46\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~47\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~48\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~49\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~50\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~51\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~52\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~53\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~54\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~55\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~56\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~57\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~58\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~59\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~60\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~61\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~62\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~63\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~64\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~65\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~66\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~67\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~68\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~69\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~70\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~71\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~8_resulta\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~9\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~10\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~11\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~12\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~13\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~14\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~15\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~16\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~22\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~23\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~24\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~25\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~26\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~27\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~28\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~29\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~30\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~31\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~32\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~33\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~34\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~35\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~36\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~37\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~38\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~39\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~40\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~41\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~42\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~43\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~44\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~45\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~46\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~47\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~48\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~49\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~50\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~51\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~52\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~53\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~54\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~55\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~56\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~57\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~58\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~59\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~60\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~61\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~62\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~63\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~64\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~65\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~66\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~67\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~68\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~69\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~70\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~71\ : std_logic;
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
SIGNAL \servo_parallel_input|pwm_1|Mult0~19\ : std_logic;
SIGNAL \enable_pwm~input_o\ : std_logic;
SIGNAL \reset_pwm~input_o\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[0]~5_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[2]~4_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[3]~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count~3_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Equal0~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|half_duty[0]~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~20\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Equal1~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~21\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~17\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Mult0~18\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Equal1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|pwm_out~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Add1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|Equal2~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|pwm_out~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|pwm_out~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|pwm_out~q\ : std_logic;
SIGNAL \changeup~input_o\ : std_logic;
SIGNAL \changedown~input_o\ : std_logic;
SIGNAL \servo_incremental_input|lastChangeup~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|lastChangeup~q\ : std_logic;
SIGNAL \servo_incremental_input|lastChangedown~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|lastChangedown~q\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[3]~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~1_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~2\ : std_logic;
SIGNAL \servo_incremental_input|Add0~5_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~6\ : std_logic;
SIGNAL \servo_incremental_input|Add0~9_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~10\ : std_logic;
SIGNAL \servo_incremental_input|Add0~13_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~14\ : std_logic;
SIGNAL \servo_incremental_input|Add0~17_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~18\ : std_logic;
SIGNAL \servo_incremental_input|Add0~21_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~22\ : std_logic;
SIGNAL \servo_incremental_input|Add0~29_sumout\ : std_logic;
SIGNAL \servo_incremental_input|duty_value[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|Add0~30\ : std_logic;
SIGNAL \servo_incremental_input|Add0~25_sumout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~20\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~19\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Equal1~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~21\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~17\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Mult0~18\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Add1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|pwm_out~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Equal2~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|pwm_out~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|Equal1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|pwm_out~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|pwm_out~q\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|bcd~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|bcd~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|bcd~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|bcd~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|bcd~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|bcd~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|half_duty_new\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|half_duty_new\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|half_duty\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|half_duty\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_enable_pwm~input_o\ : std_logic;
SIGNAL \ALT_INV_changeup~input_o\ : std_logic;
SIGNAL \ALT_INV_changedown~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_pwm~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[0]~input_o\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_lastChangeup~q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_lastChangedown~q\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_half_duty\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_half_duty\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \servo_incremental_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\ : std_logic;
SIGNAL \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\ : std_logic;
SIGNAL \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\ : std_logic;
SIGNAL \servo_incremental_input|pwm_1|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \servo_parallel_input|pwm_1|ALT_INV_Mult0~20\ : std_logic;

BEGIN

ww_clk <= clk;
ww_duty <= duty;
pwm_output_parallel <= ww_pwm_output_parallel;
pwm_output_incremental <= ww_pwm_output_incremental;
ww_enable_pwm <= enable_pwm;
ww_reset_pwm <= reset_pwm;
ww_changeup <= changeup;
ww_changedown <= changedown;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\servo_parallel_input|pwm_1|Mult0~8_AX_bus\ <= (\duty[7]~input_o\ & \duty[6]~input_o\ & \duty[5]~input_o\ & \duty[4]~input_o\ & \duty[3]~input_o\ & \duty[2]~input_o\ & \duty[1]~input_o\ & \duty[0]~input_o\);

\servo_parallel_input|pwm_1|Mult0~8_AY_bus\ <= (vcc & vcc & gnd & gnd & vcc & gnd);

\servo_parallel_input|pwm_1|Mult0~8_resulta\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(0);
\servo_parallel_input|pwm_1|Mult0~9\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(1);
\servo_parallel_input|pwm_1|Mult0~10\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(2);
\servo_parallel_input|pwm_1|Mult0~11\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(3);
\servo_parallel_input|pwm_1|Mult0~12\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(4);
\servo_parallel_input|pwm_1|Mult0~13\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(5);
\servo_parallel_input|pwm_1|Mult0~14\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(6);
\servo_parallel_input|pwm_1|Mult0~15\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(7);
\servo_parallel_input|pwm_1|Mult0~16\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(8);
\servo_parallel_input|pwm_1|Mult0~17\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(9);
\servo_parallel_input|pwm_1|Mult0~18\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(10);
\servo_parallel_input|pwm_1|Mult0~19\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(11);
\servo_parallel_input|pwm_1|Mult0~20\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(12);
\servo_parallel_input|pwm_1|Mult0~21\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(13);
\servo_parallel_input|pwm_1|Mult0~22\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(14);
\servo_parallel_input|pwm_1|Mult0~23\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(15);
\servo_parallel_input|pwm_1|Mult0~24\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(16);
\servo_parallel_input|pwm_1|Mult0~25\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(17);
\servo_parallel_input|pwm_1|Mult0~26\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(18);
\servo_parallel_input|pwm_1|Mult0~27\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(19);
\servo_parallel_input|pwm_1|Mult0~28\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(20);
\servo_parallel_input|pwm_1|Mult0~29\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(21);
\servo_parallel_input|pwm_1|Mult0~30\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(22);
\servo_parallel_input|pwm_1|Mult0~31\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(23);
\servo_parallel_input|pwm_1|Mult0~32\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(24);
\servo_parallel_input|pwm_1|Mult0~33\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(25);
\servo_parallel_input|pwm_1|Mult0~34\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(26);
\servo_parallel_input|pwm_1|Mult0~35\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(27);
\servo_parallel_input|pwm_1|Mult0~36\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(28);
\servo_parallel_input|pwm_1|Mult0~37\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(29);
\servo_parallel_input|pwm_1|Mult0~38\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(30);
\servo_parallel_input|pwm_1|Mult0~39\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(31);
\servo_parallel_input|pwm_1|Mult0~40\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(32);
\servo_parallel_input|pwm_1|Mult0~41\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(33);
\servo_parallel_input|pwm_1|Mult0~42\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(34);
\servo_parallel_input|pwm_1|Mult0~43\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(35);
\servo_parallel_input|pwm_1|Mult0~44\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(36);
\servo_parallel_input|pwm_1|Mult0~45\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(37);
\servo_parallel_input|pwm_1|Mult0~46\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(38);
\servo_parallel_input|pwm_1|Mult0~47\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(39);
\servo_parallel_input|pwm_1|Mult0~48\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(40);
\servo_parallel_input|pwm_1|Mult0~49\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(41);
\servo_parallel_input|pwm_1|Mult0~50\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(42);
\servo_parallel_input|pwm_1|Mult0~51\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(43);
\servo_parallel_input|pwm_1|Mult0~52\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(44);
\servo_parallel_input|pwm_1|Mult0~53\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(45);
\servo_parallel_input|pwm_1|Mult0~54\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(46);
\servo_parallel_input|pwm_1|Mult0~55\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(47);
\servo_parallel_input|pwm_1|Mult0~56\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(48);
\servo_parallel_input|pwm_1|Mult0~57\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(49);
\servo_parallel_input|pwm_1|Mult0~58\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(50);
\servo_parallel_input|pwm_1|Mult0~59\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(51);
\servo_parallel_input|pwm_1|Mult0~60\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(52);
\servo_parallel_input|pwm_1|Mult0~61\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(53);
\servo_parallel_input|pwm_1|Mult0~62\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(54);
\servo_parallel_input|pwm_1|Mult0~63\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(55);
\servo_parallel_input|pwm_1|Mult0~64\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(56);
\servo_parallel_input|pwm_1|Mult0~65\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(57);
\servo_parallel_input|pwm_1|Mult0~66\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(58);
\servo_parallel_input|pwm_1|Mult0~67\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(59);
\servo_parallel_input|pwm_1|Mult0~68\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(60);
\servo_parallel_input|pwm_1|Mult0~69\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(61);
\servo_parallel_input|pwm_1|Mult0~70\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(62);
\servo_parallel_input|pwm_1|Mult0~71\ <= \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\(63);

\servo_incremental_input|pwm_1|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\servo_incremental_input|pwm_1|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\servo_incremental_input|pwm_1|Mult0~8_ENA_bus\ <= (vcc & vcc & \servo_incremental_input|duty_value[3]~0_combout\);

\servo_incremental_input|pwm_1|Mult0~8_AX_bus\ <= (\servo_incremental_input|Add0~25_sumout\ & \servo_incremental_input|Add0~29_sumout\ & \servo_incremental_input|Add0~21_sumout\ & \servo_incremental_input|Add0~17_sumout\ & 
\servo_incremental_input|Add0~13_sumout\ & \servo_incremental_input|Add0~9_sumout\ & \servo_incremental_input|Add0~5_sumout\ & \servo_incremental_input|Add0~1_sumout\);

\servo_incremental_input|pwm_1|Mult0~8_AY_bus\ <= (vcc & vcc & gnd & gnd & vcc & gnd);

\servo_incremental_input|pwm_1|Mult0~8_resulta\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(0);
\servo_incremental_input|pwm_1|Mult0~9\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(1);
\servo_incremental_input|pwm_1|Mult0~10\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(2);
\servo_incremental_input|pwm_1|Mult0~11\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(3);
\servo_incremental_input|pwm_1|Mult0~12\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(4);
\servo_incremental_input|pwm_1|Mult0~13\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(5);
\servo_incremental_input|pwm_1|Mult0~14\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(6);
\servo_incremental_input|pwm_1|Mult0~15\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(7);
\servo_incremental_input|pwm_1|Mult0~16\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(8);
\servo_incremental_input|pwm_1|Mult0~17\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(9);
\servo_incremental_input|pwm_1|Mult0~18\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(10);
\servo_incremental_input|pwm_1|Mult0~19\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(11);
\servo_incremental_input|pwm_1|Mult0~20\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(12);
\servo_incremental_input|pwm_1|Mult0~21\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(13);
\servo_incremental_input|pwm_1|Mult0~22\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(14);
\servo_incremental_input|pwm_1|Mult0~23\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(15);
\servo_incremental_input|pwm_1|Mult0~24\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(16);
\servo_incremental_input|pwm_1|Mult0~25\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(17);
\servo_incremental_input|pwm_1|Mult0~26\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(18);
\servo_incremental_input|pwm_1|Mult0~27\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(19);
\servo_incremental_input|pwm_1|Mult0~28\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(20);
\servo_incremental_input|pwm_1|Mult0~29\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(21);
\servo_incremental_input|pwm_1|Mult0~30\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(22);
\servo_incremental_input|pwm_1|Mult0~31\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(23);
\servo_incremental_input|pwm_1|Mult0~32\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(24);
\servo_incremental_input|pwm_1|Mult0~33\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(25);
\servo_incremental_input|pwm_1|Mult0~34\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(26);
\servo_incremental_input|pwm_1|Mult0~35\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(27);
\servo_incremental_input|pwm_1|Mult0~36\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(28);
\servo_incremental_input|pwm_1|Mult0~37\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(29);
\servo_incremental_input|pwm_1|Mult0~38\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(30);
\servo_incremental_input|pwm_1|Mult0~39\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(31);
\servo_incremental_input|pwm_1|Mult0~40\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(32);
\servo_incremental_input|pwm_1|Mult0~41\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(33);
\servo_incremental_input|pwm_1|Mult0~42\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(34);
\servo_incremental_input|pwm_1|Mult0~43\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(35);
\servo_incremental_input|pwm_1|Mult0~44\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(36);
\servo_incremental_input|pwm_1|Mult0~45\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(37);
\servo_incremental_input|pwm_1|Mult0~46\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(38);
\servo_incremental_input|pwm_1|Mult0~47\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(39);
\servo_incremental_input|pwm_1|Mult0~48\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(40);
\servo_incremental_input|pwm_1|Mult0~49\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(41);
\servo_incremental_input|pwm_1|Mult0~50\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(42);
\servo_incremental_input|pwm_1|Mult0~51\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(43);
\servo_incremental_input|pwm_1|Mult0~52\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(44);
\servo_incremental_input|pwm_1|Mult0~53\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(45);
\servo_incremental_input|pwm_1|Mult0~54\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(46);
\servo_incremental_input|pwm_1|Mult0~55\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(47);
\servo_incremental_input|pwm_1|Mult0~56\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(48);
\servo_incremental_input|pwm_1|Mult0~57\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(49);
\servo_incremental_input|pwm_1|Mult0~58\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(50);
\servo_incremental_input|pwm_1|Mult0~59\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(51);
\servo_incremental_input|pwm_1|Mult0~60\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(52);
\servo_incremental_input|pwm_1|Mult0~61\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(53);
\servo_incremental_input|pwm_1|Mult0~62\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(54);
\servo_incremental_input|pwm_1|Mult0~63\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(55);
\servo_incremental_input|pwm_1|Mult0~64\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(56);
\servo_incremental_input|pwm_1|Mult0~65\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(57);
\servo_incremental_input|pwm_1|Mult0~66\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(58);
\servo_incremental_input|pwm_1|Mult0~67\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(59);
\servo_incremental_input|pwm_1|Mult0~68\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(60);
\servo_incremental_input|pwm_1|Mult0~69\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(61);
\servo_incremental_input|pwm_1|Mult0~70\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(62);
\servo_incremental_input|pwm_1|Mult0~71\ <= \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\(63);
\servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\;
\servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\;
\servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\ <= NOT \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\;
\servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\ <= NOT \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\;
\servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\ <= NOT \servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\;
\ALT_INV_enable_pwm~input_o\ <= NOT \enable_pwm~input_o\;
\ALT_INV_changeup~input_o\ <= NOT \changeup~input_o\;
\ALT_INV_changedown~input_o\ <= NOT \changedown~input_o\;
\ALT_INV_reset_pwm~input_o\ <= NOT \reset_pwm~input_o\;
\ALT_INV_duty[6]~input_o\ <= NOT \duty[6]~input_o\;
\ALT_INV_duty[7]~input_o\ <= NOT \duty[7]~input_o\;
\ALT_INV_duty[5]~input_o\ <= NOT \duty[5]~input_o\;
\ALT_INV_duty[4]~input_o\ <= NOT \duty[4]~input_o\;
\ALT_INV_duty[3]~input_o\ <= NOT \duty[3]~input_o\;
\ALT_INV_duty[2]~input_o\ <= NOT \duty[2]~input_o\;
\ALT_INV_duty[1]~input_o\ <= NOT \duty[1]~input_o\;
\ALT_INV_duty[0]~input_o\ <= NOT \duty[0]~input_o\;
\servo_parallel_input|pwm_1|ALT_INV_Equal0~0_combout\ <= NOT \servo_parallel_input|pwm_1|Equal0~0_combout\;
\servo_incremental_input|ALT_INV_lastChangeup~q\ <= NOT \servo_incremental_input|lastChangeup~q\;
\servo_incremental_input|ALT_INV_lastChangedown~q\ <= NOT \servo_incremental_input|lastChangedown~q\;
\servo_incremental_input|pwm_1|ALT_INV_Equal1~1_combout\ <= NOT \servo_incremental_input|pwm_1|Equal1~1_combout\;
\servo_incremental_input|pwm_1|ALT_INV_Equal1~0_combout\ <= NOT \servo_incremental_input|pwm_1|Equal1~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_pwm_out~1_combout\ <= NOT \servo_incremental_input|pwm_1|pwm_out~1_combout\;
\servo_incremental_input|pwm_1|ALT_INV_pwm_out~0_combout\ <= NOT \servo_incremental_input|pwm_1|pwm_out~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_Add1~0_combout\ <= NOT \servo_incremental_input|pwm_1|Add1~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_Equal2~0_combout\ <= NOT \servo_incremental_input|pwm_1|Equal2~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_half_duty\(3) <= NOT \servo_incremental_input|pwm_1|half_duty\(3);
\servo_incremental_input|pwm_1|ALT_INV_half_duty\(2) <= NOT \servo_incremental_input|pwm_1|half_duty\(2);
\servo_incremental_input|pwm_1|ALT_INV_half_duty\(1) <= NOT \servo_incremental_input|pwm_1|half_duty\(1);
\servo_incremental_input|pwm_1|ALT_INV_half_duty\(0) <= NOT \servo_incremental_input|pwm_1|half_duty\(0);
\servo_incremental_input|pwm_1|ALT_INV_half_duty\(4) <= NOT \servo_incremental_input|pwm_1|half_duty\(4);
\servo_parallel_input|pwm_1|ALT_INV_Equal1~1_combout\ <= NOT \servo_parallel_input|pwm_1|Equal1~1_combout\;
\servo_parallel_input|pwm_1|ALT_INV_Equal1~0_combout\ <= NOT \servo_parallel_input|pwm_1|Equal1~0_combout\;
\servo_parallel_input|pwm_1|ALT_INV_pwm_out~1_combout\ <= NOT \servo_parallel_input|pwm_1|pwm_out~1_combout\;
\servo_parallel_input|pwm_1|ALT_INV_pwm_out~0_combout\ <= NOT \servo_parallel_input|pwm_1|pwm_out~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_count\(2) <= NOT \servo_incremental_input|pwm_1|count\(2);
\servo_incremental_input|pwm_1|ALT_INV_count\(1) <= NOT \servo_incremental_input|pwm_1|count\(1);
\servo_incremental_input|pwm_1|ALT_INV_count\(0) <= NOT \servo_incremental_input|pwm_1|count\(0);
\servo_parallel_input|pwm_1|ALT_INV_Add1~0_combout\ <= NOT \servo_parallel_input|pwm_1|Add1~0_combout\;
\servo_parallel_input|pwm_1|ALT_INV_Equal2~0_combout\ <= NOT \servo_parallel_input|pwm_1|Equal2~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_count\(3) <= NOT \servo_incremental_input|pwm_1|count\(3);
\servo_parallel_input|pwm_1|ALT_INV_half_duty\(3) <= NOT \servo_parallel_input|pwm_1|half_duty\(3);
\servo_parallel_input|pwm_1|ALT_INV_half_duty\(2) <= NOT \servo_parallel_input|pwm_1|half_duty\(2);
\servo_parallel_input|pwm_1|ALT_INV_half_duty\(1) <= NOT \servo_parallel_input|pwm_1|half_duty\(1);
\servo_parallel_input|pwm_1|ALT_INV_half_duty\(0) <= NOT \servo_parallel_input|pwm_1|half_duty\(0);
\servo_incremental_input|pwm_1|ALT_INV_count\(5) <= NOT \servo_incremental_input|pwm_1|count\(5);
\servo_incremental_input|pwm_1|ALT_INV_count\(4) <= NOT \servo_incremental_input|pwm_1|count\(4);
\servo_parallel_input|pwm_1|ALT_INV_half_duty\(4) <= NOT \servo_parallel_input|pwm_1|half_duty\(4);
\servo_incremental_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\;
\servo_incremental_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\ <= NOT \servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\ <= NOT \servo_incremental_input|quad_segment7_1|bcd~2_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\ <= NOT \servo_incremental_input|quad_segment7_1|bcd~1_combout\;
\servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\ <= NOT \servo_incremental_input|quad_segment7_1|bcd~0_combout\;
\servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[6]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[7]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[5]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[4]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[3]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[2]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[1]~_Duplicate_1_q\;
\servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\ <= NOT \servo_incremental_input|duty_value[0]~_Duplicate_1_q\;
\servo_parallel_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\;
\servo_parallel_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\ <= NOT \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\ <= NOT \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\ <= NOT \servo_parallel_input|quad_segment7_1|bcd~2_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\ <= NOT \servo_parallel_input|quad_segment7_1|bcd~1_combout\;
\servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\ <= NOT \servo_parallel_input|quad_segment7_1|bcd~0_combout\;
\servo_incremental_input|pwm_1|ALT_INV_pwm_out~q\ <= NOT \servo_incremental_input|pwm_1|pwm_out~q\;
\servo_parallel_input|pwm_1|ALT_INV_pwm_out~q\ <= NOT \servo_parallel_input|pwm_1|pwm_out~q\;
\servo_parallel_input|pwm_1|ALT_INV_Mult0~21\ <= NOT \servo_parallel_input|pwm_1|Mult0~21\;
\servo_parallel_input|pwm_1|ALT_INV_Mult0~20\ <= NOT \servo_parallel_input|pwm_1|Mult0~20\;

-- Location: IOOBUF_X68_Y32_N62
\pwm_output_parallel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_parallel_input|pwm_1|pwm_out~q\,
	devoe => ww_devoe,
	o => ww_pwm_output_parallel);

-- Location: IOOBUF_X68_Y37_N22
\pwm_output_incremental~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_incremental_input|pwm_1|pwm_out~q\,
	devoe => ww_devoe,
	o => ww_pwm_output_incremental);

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\,
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
	i => \servo_parallel_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|LSB_segment7|ALT_INV_Mux0~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\,
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
	i => \servo_incremental_input|quad_segment7_1|MSB_segment7|ALT_INV_Mux0~0_combout\,
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

-- Location: IOIBUF_X68_Y14_N44
\duty[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: IOIBUF_X68_Y37_N38
\duty[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X68_Y40_N44
\duty[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: IOIBUF_X68_Y37_N55
\duty[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(3),
	o => \duty[3]~input_o\);

-- Location: IOIBUF_X68_Y40_N61
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

-- Location: DSP_X66_Y3_N0
\servo_parallel_input|pwm_1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 6,
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
	ax => \servo_parallel_input|pwm_1|Mult0~8_AX_bus\,
	ay => \servo_parallel_input|pwm_1|Mult0~8_AY_bus\,
	resulta => \servo_parallel_input|pwm_1|Mult0~8_RESULTA_bus\);

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

-- Location: FF_X64_Y4_N47
\servo_parallel_input|pwm_1|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|Mult0~19\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty_new\(2));

-- Location: LABCELL_X65_Y4_N6
\servo_incremental_input|pwm_1|count[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count[0]~5_combout\ = !\servo_incremental_input|pwm_1|count\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \servo_incremental_input|pwm_1|ALT_INV_count\(0),
	combout => \servo_incremental_input|pwm_1|count[0]~5_combout\);

-- Location: FF_X65_Y4_N7
\servo_incremental_input|pwm_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count[0]~5_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(0));

-- Location: LABCELL_X65_Y4_N51
\servo_incremental_input|pwm_1|count[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count[2]~4_combout\ = ( \servo_incremental_input|pwm_1|count\(0) & ( !\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ $ (!\servo_incremental_input|pwm_1|count\(2)) ) ) # ( !\servo_incremental_input|pwm_1|count\(0) & ( 
-- \servo_incremental_input|pwm_1|count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(0),
	combout => \servo_incremental_input|pwm_1|count[2]~4_combout\);

-- Location: FF_X65_Y4_N53
\servo_incremental_input|pwm_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count[2]~4_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(2));

-- Location: FF_X65_Y4_N49
\servo_incremental_input|pwm_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count[3]~2_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(3));

-- Location: LABCELL_X65_Y4_N48
\servo_incremental_input|pwm_1|count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count[3]~2_combout\ = ( \servo_incremental_input|pwm_1|count\(0) & ( !\servo_incremental_input|pwm_1|count\(3) $ (((!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\) # (!\servo_incremental_input|pwm_1|count\(2)))) ) ) # 
-- ( !\servo_incremental_input|pwm_1|count\(0) & ( \servo_incremental_input|pwm_1|count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	datad => \servo_incremental_input|pwm_1|ALT_INV_count\(3),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(0),
	combout => \servo_incremental_input|pwm_1|count[3]~2_combout\);

-- Location: FF_X65_Y4_N50
\servo_incremental_input|pwm_1|count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count[3]~2_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\);

-- Location: FF_X65_Y4_N8
\servo_incremental_input|pwm_1|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count[0]~5_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\);

-- Location: FF_X64_Y4_N26
\servo_incremental_input|pwm_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~0_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(4));

-- Location: FF_X65_Y4_N44
\servo_incremental_input|pwm_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~1_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(5));

-- Location: FF_X65_Y4_N13
\servo_incremental_input|pwm_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~3_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count\(1));

-- Location: LABCELL_X65_Y4_N42
\servo_incremental_input|pwm_1|count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count~1_combout\ = ( \servo_incremental_input|pwm_1|count\(5) & ( \servo_incremental_input|pwm_1|count\(1) & ( (!\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\) # 
-- ((!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\) # ((!\servo_incremental_input|pwm_1|count\(2)) # (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\))) ) ) ) # ( !\servo_incremental_input|pwm_1|count\(5) & ( 
-- \servo_incremental_input|pwm_1|count\(1) & ( (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|count\(2) & 
-- \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\))) ) ) ) # ( \servo_incremental_input|pwm_1|count\(5) & ( !\servo_incremental_input|pwm_1|count\(1) & ( ((!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\) # 
-- ((!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\) # (\servo_incremental_input|pwm_1|count\(2)))) # (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	datae => \servo_incremental_input|pwm_1|ALT_INV_count\(5),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(1),
	combout => \servo_incremental_input|pwm_1|count~1_combout\);

-- Location: FF_X65_Y4_N43
\servo_incremental_input|pwm_1|count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~1_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N24
\servo_incremental_input|pwm_1|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count~0_combout\ = ( \servo_incremental_input|pwm_1|count\(4) & ( \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\) # ((!\servo_incremental_input|pwm_1|count\(2) 
-- & ((\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\) # (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\))) # (\servo_incremental_input|pwm_1|count\(2) & ((!\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\) # 
-- (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\)))) ) ) ) # ( !\servo_incremental_input|pwm_1|count\(4) & ( \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( (\servo_incremental_input|pwm_1|count\(2) & 
-- (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) ) # ( \servo_incremental_input|pwm_1|count\(4) & ( 
-- !\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( (!\servo_incremental_input|pwm_1|count\(2)) # ((!\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\) # ((!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\) # 
-- (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) ) # ( !\servo_incremental_input|pwm_1|count\(4) & ( !\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( (\servo_incremental_input|pwm_1|count\(2) & 
-- (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011111011111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datae => \servo_incremental_input|pwm_1|ALT_INV_count\(4),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\,
	combout => \servo_incremental_input|pwm_1|count~0_combout\);

-- Location: FF_X64_Y4_N25
\servo_incremental_input|pwm_1|count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~0_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y4_N12
\servo_incremental_input|pwm_1|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|count~3_combout\ = ( !\servo_incremental_input|pwm_1|count\(1) & ( \servo_incremental_input|pwm_1|count\(0) & ( ((!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\) # ((!\servo_incremental_input|pwm_1|count\(5)) # 
-- (\servo_incremental_input|pwm_1|count\(2)))) # (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\) ) ) ) # ( \servo_incremental_input|pwm_1|count\(1) & ( !\servo_incremental_input|pwm_1|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	datad => \servo_incremental_input|pwm_1|ALT_INV_count\(5),
	datae => \servo_incremental_input|pwm_1|ALT_INV_count\(1),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(0),
	combout => \servo_incremental_input|pwm_1|count~3_combout\);

-- Location: FF_X65_Y4_N14
\servo_incremental_input|pwm_1|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|count~3_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y4_N54
\servo_parallel_input|pwm_1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|Equal0~0_combout\ = ( \servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ & ( (!\servo_incremental_input|pwm_1|count\(3) & (!\servo_incremental_input|pwm_1|count\(2) & \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_incremental_input|pwm_1|ALT_INV_count\(3),
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	combout => \servo_parallel_input|pwm_1|Equal0~0_combout\);

-- Location: LABCELL_X65_Y4_N57
\servo_parallel_input|pwm_1|half_duty[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|half_duty[0]~0_combout\ = ( \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( (\reset_pwm~input_o\ & (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & \servo_parallel_input|pwm_1|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_pwm~input_o\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \servo_parallel_input|pwm_1|ALT_INV_Equal0~0_combout\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\);

-- Location: FF_X64_Y4_N50
\servo_parallel_input|pwm_1|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|half_duty_new\(2),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty\(2));

-- Location: LABCELL_X64_Y4_N0
\servo_parallel_input|pwm_1|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|half_duty_new[3]~feeder_combout\ = ( \servo_parallel_input|pwm_1|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \servo_parallel_input|pwm_1|ALT_INV_Mult0~20\,
	combout => \servo_parallel_input|pwm_1|half_duty_new[3]~feeder_combout\);

-- Location: FF_X64_Y4_N2
\servo_parallel_input|pwm_1|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_parallel_input|pwm_1|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty_new\(3));

-- Location: FF_X64_Y4_N32
\servo_parallel_input|pwm_1|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|half_duty_new\(3),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty\(3));

-- Location: LABCELL_X64_Y4_N33
\servo_parallel_input|pwm_1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|Equal1~1_combout\ = ( \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & ( \servo_incremental_input|pwm_1|count\(2) & ( (\servo_parallel_input|pwm_1|half_duty\(2) & \servo_parallel_input|pwm_1|half_duty\(3)) ) ) ) # ( 
-- !\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & ( \servo_incremental_input|pwm_1|count\(2) & ( (\servo_parallel_input|pwm_1|half_duty\(2) & !\servo_parallel_input|pwm_1|half_duty\(3)) ) ) ) # ( \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ 
-- & ( !\servo_incremental_input|pwm_1|count\(2) & ( (!\servo_parallel_input|pwm_1|half_duty\(2) & \servo_parallel_input|pwm_1|half_duty\(3)) ) ) ) # ( !\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & ( !\servo_incremental_input|pwm_1|count\(2) & ( 
-- (!\servo_parallel_input|pwm_1|half_duty\(2) & !\servo_parallel_input|pwm_1|half_duty\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(2),
	datac => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(3),
	datae => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	combout => \servo_parallel_input|pwm_1|Equal1~1_combout\);

-- Location: LABCELL_X64_Y4_N3
\servo_parallel_input|pwm_1|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|half_duty_new[4]~feeder_combout\ = ( \servo_parallel_input|pwm_1|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \servo_parallel_input|pwm_1|ALT_INV_Mult0~21\,
	combout => \servo_parallel_input|pwm_1|half_duty_new[4]~feeder_combout\);

-- Location: FF_X64_Y4_N5
\servo_parallel_input|pwm_1|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_parallel_input|pwm_1|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty_new\(4));

-- Location: FF_X64_Y4_N8
\servo_parallel_input|pwm_1|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|half_duty_new\(4),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty\(4));

-- Location: FF_X64_Y4_N20
\servo_parallel_input|pwm_1|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty_new\(0));

-- Location: FF_X64_Y4_N56
\servo_parallel_input|pwm_1|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|half_duty_new\(0),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty\(0));

-- Location: FF_X64_Y4_N41
\servo_parallel_input|pwm_1|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|Mult0~18\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty_new\(1));

-- Location: FF_X64_Y4_N59
\servo_parallel_input|pwm_1|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_parallel_input|pwm_1|half_duty_new\(1),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|half_duty\(1));

-- Location: LABCELL_X64_Y4_N42
\servo_parallel_input|pwm_1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|Equal1~0_combout\ = ( \servo_parallel_input|pwm_1|half_duty\(1) & ( !\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( (\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & 
-- (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ $ (\servo_parallel_input|pwm_1|half_duty\(0)))) ) ) ) # ( !\servo_parallel_input|pwm_1|half_duty\(1) & ( !\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & ( 
-- (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ $ (\servo_parallel_input|pwm_1|half_duty\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(0),
	datae => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(1),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\,
	combout => \servo_parallel_input|pwm_1|Equal1~0_combout\);

-- Location: LABCELL_X64_Y4_N21
\servo_parallel_input|pwm_1|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|pwm_out~0_combout\ = ( \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( \servo_incremental_input|pwm_1|count\(2) & ( (\servo_parallel_input|pwm_1|half_duty\(0) & ((!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & 
-- (!\servo_parallel_input|pwm_1|half_duty\(1) & \servo_parallel_input|pwm_1|half_duty\(2))) # (\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & (\servo_parallel_input|pwm_1|half_duty\(1) & !\servo_parallel_input|pwm_1|half_duty\(2))))) ) ) ) # ( 
-- !\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( \servo_incremental_input|pwm_1|count\(2) & ( (!\servo_parallel_input|pwm_1|half_duty\(0) & (\servo_parallel_input|pwm_1|half_duty\(2) & (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ $ 
-- (!\servo_parallel_input|pwm_1|half_duty\(1))))) ) ) ) # ( \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( !\servo_incremental_input|pwm_1|count\(2) & ( (\servo_parallel_input|pwm_1|half_duty\(0) & 
-- ((!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & (!\servo_parallel_input|pwm_1|half_duty\(1) & !\servo_parallel_input|pwm_1|half_duty\(2))) # (\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ & (\servo_parallel_input|pwm_1|half_duty\(1) & 
-- \servo_parallel_input|pwm_1|half_duty\(2))))) ) ) ) # ( !\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( !\servo_incremental_input|pwm_1|count\(2) & ( (!\servo_parallel_input|pwm_1|half_duty\(0) & (!\servo_parallel_input|pwm_1|half_duty\(2) & 
-- (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ $ (!\servo_parallel_input|pwm_1|half_duty\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000010000000000000100000000001010000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(0),
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(1),
	datad => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(2),
	datae => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	combout => \servo_parallel_input|pwm_1|pwm_out~0_combout\);

-- Location: LABCELL_X64_Y4_N36
\servo_parallel_input|pwm_1|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|Add1~0_combout\ = ( \servo_parallel_input|pwm_1|half_duty\(1) & ( !\servo_parallel_input|pwm_1|half_duty\(2) & ( (!\servo_parallel_input|pwm_1|half_duty\(3) & !\servo_parallel_input|pwm_1|half_duty\(0)) ) ) ) # ( 
-- !\servo_parallel_input|pwm_1|half_duty\(1) & ( !\servo_parallel_input|pwm_1|half_duty\(2) & ( !\servo_parallel_input|pwm_1|half_duty\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(3),
	datac => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(0),
	datae => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(1),
	dataf => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(2),
	combout => \servo_parallel_input|pwm_1|Add1~0_combout\);

-- Location: LABCELL_X64_Y4_N51
\servo_parallel_input|pwm_1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|Equal2~0_combout\ = ( \servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & ( !\servo_parallel_input|pwm_1|half_duty\(3) $ (((!\servo_parallel_input|pwm_1|half_duty\(2) & ((!\servo_parallel_input|pwm_1|half_duty\(0)) # 
-- (!\servo_parallel_input|pwm_1|half_duty\(1)))))) ) ) # ( !\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\ & ( !\servo_parallel_input|pwm_1|half_duty\(3) $ ((((\servo_parallel_input|pwm_1|half_duty\(0) & \servo_parallel_input|pwm_1|half_duty\(1))) # 
-- (\servo_parallel_input|pwm_1|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000100001111000111101111000011100001000011110001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(0),
	datab => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(1),
	datac => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(3),
	datad => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(2),
	datae => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	combout => \servo_parallel_input|pwm_1|Equal2~0_combout\);

-- Location: LABCELL_X64_Y4_N6
\servo_parallel_input|pwm_1|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|pwm_out~1_combout\ = ( \servo_parallel_input|pwm_1|half_duty\(4) & ( \servo_parallel_input|pwm_1|Equal2~0_combout\ & ( (\servo_parallel_input|pwm_1|pwm_out~0_combout\ & ((!\servo_parallel_input|pwm_1|Add1~0_combout\ & 
-- (!\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & \servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\)) # (\servo_parallel_input|pwm_1|Add1~0_combout\ & (\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & 
-- !\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\)))) ) ) ) # ( !\servo_parallel_input|pwm_1|half_duty\(4) & ( \servo_parallel_input|pwm_1|Equal2~0_combout\ & ( (\servo_parallel_input|pwm_1|pwm_out~0_combout\ & 
-- (\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & (!\servo_parallel_input|pwm_1|Add1~0_combout\ $ (\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000010000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|pwm_1|ALT_INV_pwm_out~0_combout\,
	datab => \servo_parallel_input|pwm_1|ALT_INV_Add1~0_combout\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\,
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	datae => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(4),
	dataf => \servo_parallel_input|pwm_1|ALT_INV_Equal2~0_combout\,
	combout => \servo_parallel_input|pwm_1|pwm_out~1_combout\);

-- Location: LABCELL_X64_Y4_N12
\servo_parallel_input|pwm_1|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|pwm_1|pwm_out~2_combout\ = ( \servo_parallel_input|pwm_1|pwm_out~q\ & ( \servo_parallel_input|pwm_1|pwm_out~1_combout\ & ( (!\servo_parallel_input|pwm_1|Equal1~1_combout\) # ((!\servo_parallel_input|pwm_1|Equal1~0_combout\) # 
-- (!\servo_parallel_input|pwm_1|half_duty\(4) $ (!\servo_incremental_input|pwm_1|count\(4)))) ) ) ) # ( !\servo_parallel_input|pwm_1|pwm_out~q\ & ( \servo_parallel_input|pwm_1|pwm_out~1_combout\ & ( (!\servo_parallel_input|pwm_1|Equal1~1_combout\) # 
-- ((!\servo_parallel_input|pwm_1|Equal1~0_combout\) # (!\servo_parallel_input|pwm_1|half_duty\(4) $ (!\servo_incremental_input|pwm_1|count\(4)))) ) ) ) # ( \servo_parallel_input|pwm_1|pwm_out~q\ & ( !\servo_parallel_input|pwm_1|pwm_out~1_combout\ & ( 
-- (!\servo_parallel_input|pwm_1|Equal1~1_combout\) # ((!\servo_parallel_input|pwm_1|Equal1~0_combout\) # (!\servo_parallel_input|pwm_1|half_duty\(4) $ (!\servo_incremental_input|pwm_1|count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111011111111101111101111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|pwm_1|ALT_INV_Equal1~1_combout\,
	datab => \servo_parallel_input|pwm_1|ALT_INV_half_duty\(4),
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(4),
	datad => \servo_parallel_input|pwm_1|ALT_INV_Equal1~0_combout\,
	datae => \servo_parallel_input|pwm_1|ALT_INV_pwm_out~q\,
	dataf => \servo_parallel_input|pwm_1|ALT_INV_pwm_out~1_combout\,
	combout => \servo_parallel_input|pwm_1|pwm_out~2_combout\);

-- Location: FF_X64_Y4_N13
\servo_parallel_input|pwm_1|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_parallel_input|pwm_1|pwm_out~2_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_parallel_input|pwm_1|pwm_out~q\);

-- Location: IOIBUF_X21_Y0_N18
\changeup~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_changeup,
	o => \changeup~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\changedown~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_changedown,
	o => \changedown~input_o\);

-- Location: LABCELL_X64_Y5_N21
\servo_incremental_input|lastChangeup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|lastChangeup~0_combout\ = !\changeup~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changeup~input_o\,
	combout => \servo_incremental_input|lastChangeup~0_combout\);

-- Location: FF_X64_Y5_N23
\servo_incremental_input|lastChangeup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|lastChangeup~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|lastChangeup~q\);

-- Location: LABCELL_X64_Y5_N24
\servo_incremental_input|lastChangedown~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|lastChangedown~0_combout\ = ( !\changedown~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_changedown~input_o\,
	combout => \servo_incremental_input|lastChangedown~0_combout\);

-- Location: FF_X64_Y5_N26
\servo_incremental_input|lastChangedown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|lastChangedown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|lastChangedown~q\);

-- Location: LABCELL_X64_Y5_N18
\servo_incremental_input|duty_value[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|duty_value[3]~0_combout\ = ( \servo_incremental_input|lastChangedown~q\ & ( (!\changeup~input_o\ & !\servo_incremental_input|lastChangeup~q\) ) ) # ( !\servo_incremental_input|lastChangedown~q\ & ( (!\changedown~input_o\) # 
-- ((!\changeup~input_o\ & !\servo_incremental_input|lastChangeup~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changeup~input_o\,
	datac => \ALT_INV_changedown~input_o\,
	datad => \servo_incremental_input|ALT_INV_lastChangeup~q\,
	dataf => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	combout => \servo_incremental_input|duty_value[3]~0_combout\);

-- Location: FF_X65_Y5_N32
\servo_incremental_input|duty_value[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|Add0~1_sumout\,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[0]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N30
\servo_incremental_input|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~1_sumout\ = SUM(( \servo_incremental_input|duty_value[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \servo_incremental_input|Add0~2\ = CARRY(( \servo_incremental_input|duty_value[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \servo_incremental_input|Add0~1_sumout\,
	cout => \servo_incremental_input|Add0~2\);

-- Location: FF_X65_Y5_N14
\servo_incremental_input|duty_value[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|Add0~5_sumout\,
	sload => VCC,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[1]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N33
\servo_incremental_input|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~5_sumout\ = SUM(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~2\ ))
-- \servo_incremental_input|Add0~6\ = CARRY(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datab => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	cin => \servo_incremental_input|Add0~2\,
	sumout => \servo_incremental_input|Add0~5_sumout\,
	cout => \servo_incremental_input|Add0~6\);

-- Location: FF_X65_Y5_N8
\servo_incremental_input|duty_value[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|Add0~9_sumout\,
	sload => VCC,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[2]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N36
\servo_incremental_input|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~9_sumout\ = SUM(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[2]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~6\ ))
-- \servo_incremental_input|Add0~10\ = CARRY(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[2]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	cin => \servo_incremental_input|Add0~6\,
	sumout => \servo_incremental_input|Add0~9_sumout\,
	cout => \servo_incremental_input|Add0~10\);

-- Location: FF_X65_Y5_N11
\servo_incremental_input|duty_value[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|Add0~13_sumout\,
	sload => VCC,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[3]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N39
\servo_incremental_input|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~13_sumout\ = SUM(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[3]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~10\ ))
-- \servo_incremental_input|Add0~14\ = CARRY(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[3]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datac => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	cin => \servo_incremental_input|Add0~10\,
	sumout => \servo_incremental_input|Add0~13_sumout\,
	cout => \servo_incremental_input|Add0~14\);

-- Location: FF_X65_Y5_N17
\servo_incremental_input|duty_value[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|Add0~17_sumout\,
	sload => VCC,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[4]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N42
\servo_incremental_input|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~17_sumout\ = SUM(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~14\ ))
-- \servo_incremental_input|Add0~18\ = CARRY(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datad => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	cin => \servo_incremental_input|Add0~14\,
	sumout => \servo_incremental_input|Add0~17_sumout\,
	cout => \servo_incremental_input|Add0~18\);

-- Location: FF_X65_Y5_N35
\servo_incremental_input|duty_value[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|Add0~21_sumout\,
	sload => VCC,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[5]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N45
\servo_incremental_input|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~21_sumout\ = SUM(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[5]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~18\ ))
-- \servo_incremental_input|Add0~22\ = CARRY(( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|duty_value[5]~_Duplicate_1_q\ ) + ( \servo_incremental_input|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datac => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	cin => \servo_incremental_input|Add0~18\,
	sumout => \servo_incremental_input|Add0~21_sumout\,
	cout => \servo_incremental_input|Add0~22\);

-- Location: FF_X65_Y5_N50
\servo_incremental_input|duty_value[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|Add0~29_sumout\,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[6]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N48
\servo_incremental_input|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~29_sumout\ = SUM(( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ ) + ( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|Add0~22\ ))
-- \servo_incremental_input|Add0~30\ = CARRY(( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ ) + ( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datab => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	cin => \servo_incremental_input|Add0~22\,
	sumout => \servo_incremental_input|Add0~29_sumout\,
	cout => \servo_incremental_input|Add0~30\);

-- Location: FF_X65_Y5_N53
\servo_incremental_input|duty_value[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|Add0~25_sumout\,
	ena => \servo_incremental_input|duty_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|duty_value[7]~_Duplicate_1_q\);

-- Location: LABCELL_X65_Y5_N51
\servo_incremental_input|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|Add0~25_sumout\ = SUM(( \servo_incremental_input|duty_value[7]~_Duplicate_1_q\ ) + ( (!\changedown~input_o\ & !\servo_incremental_input|lastChangedown~q\) ) + ( \servo_incremental_input|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_changedown~input_o\,
	datab => \servo_incremental_input|ALT_INV_lastChangedown~q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	cin => \servo_incremental_input|Add0~30\,
	sumout => \servo_incremental_input|Add0~25_sumout\);

-- Location: DSP_X66_Y5_N0
\servo_incremental_input|pwm_1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 6,
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
	aclr => \servo_incremental_input|pwm_1|Mult0~8_ACLR_bus\,
	clk => \servo_incremental_input|pwm_1|Mult0~8_CLK_bus\,
	ena => \servo_incremental_input|pwm_1|Mult0~8_ENA_bus\,
	ax => \servo_incremental_input|pwm_1|Mult0~8_AX_bus\,
	ay => \servo_incremental_input|pwm_1|Mult0~8_AY_bus\,
	resulta => \servo_incremental_input|pwm_1|Mult0~8_RESULTA_bus\);

-- Location: FF_X65_Y5_N58
\servo_incremental_input|pwm_1|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty_new\(3));

-- Location: FF_X65_Y4_N35
\servo_incremental_input|pwm_1|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|half_duty_new\(3),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty\(3));

-- Location: FF_X65_Y5_N28
\servo_incremental_input|pwm_1|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|Mult0~19\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty_new\(2));

-- Location: FF_X65_Y4_N26
\servo_incremental_input|pwm_1|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|half_duty_new\(2),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty\(2));

-- Location: LABCELL_X65_Y4_N18
\servo_incremental_input|pwm_1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|Equal1~1_combout\ = ( \servo_incremental_input|pwm_1|count\(2) & ( (\servo_incremental_input|pwm_1|half_duty\(2) & (!\servo_incremental_input|pwm_1|half_duty\(3) $ (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\))) ) ) 
-- # ( !\servo_incremental_input|pwm_1|count\(2) & ( (!\servo_incremental_input|pwm_1|half_duty\(2) & (!\servo_incremental_input|pwm_1|half_duty\(3) $ (\servo_incremental_input|pwm_1|count[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(3),
	datab => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(2),
	datac => \servo_incremental_input|pwm_1|ALT_INV_count[3]~DUPLICATE_q\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	combout => \servo_incremental_input|pwm_1|Equal1~1_combout\);

-- Location: FF_X65_Y5_N41
\servo_incremental_input|pwm_1|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|Mult0~21\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty_new\(4));

-- Location: FF_X65_Y4_N31
\servo_incremental_input|pwm_1|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|half_duty_new\(4),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty\(4));

-- Location: FF_X65_Y5_N4
\servo_incremental_input|pwm_1|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty_new\(0));

-- Location: FF_X65_Y4_N29
\servo_incremental_input|pwm_1|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|half_duty_new\(0),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty\(0));

-- Location: FF_X65_Y5_N22
\servo_incremental_input|pwm_1|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|Mult0~18\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty_new\(1));

-- Location: FF_X65_Y4_N23
\servo_incremental_input|pwm_1|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \servo_incremental_input|pwm_1|half_duty_new\(1),
	sload => VCC,
	ena => \servo_parallel_input|pwm_1|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|half_duty\(1));

-- Location: LABCELL_X65_Y4_N36
\servo_incremental_input|pwm_1|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|Add1~0_combout\ = ( !\servo_incremental_input|pwm_1|half_duty\(2) & ( (!\servo_incremental_input|pwm_1|half_duty\(3) & ((!\servo_incremental_input|pwm_1|half_duty\(0)) # (!\servo_incremental_input|pwm_1|half_duty\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(0),
	datac => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(3),
	datad => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(1),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(2),
	combout => \servo_incremental_input|pwm_1|Add1~0_combout\);

-- Location: LABCELL_X65_Y4_N24
\servo_incremental_input|pwm_1|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|pwm_out~0_combout\ = ( \servo_incremental_input|pwm_1|half_duty\(2) & ( \servo_incremental_input|pwm_1|count\(2) & ( (!\servo_incremental_input|pwm_1|half_duty\(0) & (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & 
-- (!\servo_incremental_input|pwm_1|half_duty\(1) $ (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\)))) # (\servo_incremental_input|pwm_1|half_duty\(0) & (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & 
-- (!\servo_incremental_input|pwm_1|half_duty\(1) & !\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) ) # ( !\servo_incremental_input|pwm_1|half_duty\(2) & ( \servo_incremental_input|pwm_1|count\(2) & ( 
-- (\servo_incremental_input|pwm_1|half_duty\(0) & (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|half_duty\(1) & \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) ) # ( 
-- \servo_incremental_input|pwm_1|half_duty\(2) & ( !\servo_incremental_input|pwm_1|count\(2) & ( (\servo_incremental_input|pwm_1|half_duty\(0) & (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & (\servo_incremental_input|pwm_1|half_duty\(1) & 
-- \servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) ) # ( !\servo_incremental_input|pwm_1|half_duty\(2) & ( !\servo_incremental_input|pwm_1|count\(2) & ( (!\servo_incremental_input|pwm_1|half_duty\(0) & 
-- (!\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & (!\servo_incremental_input|pwm_1|half_duty\(1) $ (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\)))) # (\servo_incremental_input|pwm_1|half_duty\(0) & 
-- (\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & (!\servo_incremental_input|pwm_1|half_duty\(1) & !\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000000000000000000000100000000000000010001100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(0),
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(1),
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datae => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(2),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count\(2),
	combout => \servo_incremental_input|pwm_1|pwm_out~0_combout\);

-- Location: LABCELL_X65_Y4_N9
\servo_incremental_input|pwm_1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|Equal2~0_combout\ = ( \servo_incremental_input|pwm_1|half_duty\(3) & ( !\servo_incremental_input|pwm_1|count\(3) $ (((!\servo_incremental_input|pwm_1|half_duty\(2) & ((!\servo_incremental_input|pwm_1|half_duty\(0)) # 
-- (!\servo_incremental_input|pwm_1|half_duty\(1)))))) ) ) # ( !\servo_incremental_input|pwm_1|half_duty\(3) & ( !\servo_incremental_input|pwm_1|count\(3) $ ((((\servo_incremental_input|pwm_1|half_duty\(0) & \servo_incremental_input|pwm_1|half_duty\(1))) # 
-- (\servo_incremental_input|pwm_1|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001110010011110000111001001100111100011011000011110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(0),
	datab => \servo_incremental_input|pwm_1|ALT_INV_count\(3),
	datac => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(2),
	datad => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(1),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(3),
	combout => \servo_incremental_input|pwm_1|Equal2~0_combout\);

-- Location: LABCELL_X65_Y4_N30
\servo_incremental_input|pwm_1|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|pwm_out~1_combout\ = ( \servo_incremental_input|pwm_1|half_duty\(4) & ( \servo_incremental_input|pwm_1|Equal2~0_combout\ & ( (\servo_incremental_input|pwm_1|pwm_out~0_combout\ & 
-- ((!\servo_incremental_input|pwm_1|Add1~0_combout\ & (\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ & !\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\)) # (\servo_incremental_input|pwm_1|Add1~0_combout\ & 
-- (!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ & \servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\)))) ) ) ) # ( !\servo_incremental_input|pwm_1|half_duty\(4) & ( \servo_incremental_input|pwm_1|Equal2~0_combout\ & ( 
-- (\servo_incremental_input|pwm_1|pwm_out~0_combout\ & (\servo_incremental_input|pwm_1|count[5]~DUPLICATE_q\ & (!\servo_incremental_input|pwm_1|Add1~0_combout\ $ (\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010010000001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_Add1~0_combout\,
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_pwm_out~0_combout\,
	datad => \servo_incremental_input|pwm_1|ALT_INV_count[5]~DUPLICATE_q\,
	datae => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(4),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_Equal2~0_combout\,
	combout => \servo_incremental_input|pwm_1|pwm_out~1_combout\);

-- Location: LABCELL_X65_Y4_N39
\servo_incremental_input|pwm_1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|Equal1~0_combout\ = ( \servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( (\servo_incremental_input|pwm_1|half_duty\(0) & (!\servo_incremental_input|pwm_1|count\(5) & 
-- (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ $ (\servo_incremental_input|pwm_1|half_duty\(1))))) ) ) # ( !\servo_incremental_input|pwm_1|count[0]~DUPLICATE_q\ & ( (!\servo_incremental_input|pwm_1|half_duty\(0) & 
-- (!\servo_incremental_input|pwm_1|count\(5) & (!\servo_incremental_input|pwm_1|count[1]~DUPLICATE_q\ $ (\servo_incremental_input|pwm_1|half_duty\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100000000010000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(0),
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_count\(5),
	datad => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(1),
	dataf => \servo_incremental_input|pwm_1|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \servo_incremental_input|pwm_1|Equal1~0_combout\);

-- Location: LABCELL_X65_Y4_N0
\servo_incremental_input|pwm_1|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|pwm_1|pwm_out~2_combout\ = ( \servo_incremental_input|pwm_1|pwm_out~q\ & ( \servo_incremental_input|pwm_1|Equal1~0_combout\ & ( (!\servo_incremental_input|pwm_1|Equal1~1_combout\) # 
-- (!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ $ (!\servo_incremental_input|pwm_1|half_duty\(4))) ) ) ) # ( !\servo_incremental_input|pwm_1|pwm_out~q\ & ( \servo_incremental_input|pwm_1|Equal1~0_combout\ & ( 
-- (\servo_incremental_input|pwm_1|pwm_out~1_combout\ & ((!\servo_incremental_input|pwm_1|Equal1~1_combout\) # (!\servo_incremental_input|pwm_1|count[4]~DUPLICATE_q\ $ (!\servo_incremental_input|pwm_1|half_duty\(4))))) ) ) ) # ( 
-- \servo_incremental_input|pwm_1|pwm_out~q\ & ( !\servo_incremental_input|pwm_1|Equal1~0_combout\ ) ) # ( !\servo_incremental_input|pwm_1|pwm_out~q\ & ( !\servo_incremental_input|pwm_1|Equal1~0_combout\ & ( \servo_incremental_input|pwm_1|pwm_out~1_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000101111101011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|pwm_1|ALT_INV_Equal1~1_combout\,
	datab => \servo_incremental_input|pwm_1|ALT_INV_count[4]~DUPLICATE_q\,
	datac => \servo_incremental_input|pwm_1|ALT_INV_half_duty\(4),
	datad => \servo_incremental_input|pwm_1|ALT_INV_pwm_out~1_combout\,
	datae => \servo_incremental_input|pwm_1|ALT_INV_pwm_out~q\,
	dataf => \servo_incremental_input|pwm_1|ALT_INV_Equal1~0_combout\,
	combout => \servo_incremental_input|pwm_1|pwm_out~2_combout\);

-- Location: FF_X65_Y4_N1
\servo_incremental_input|pwm_1|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \servo_incremental_input|pwm_1|pwm_out~2_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_incremental_input|pwm_1|pwm_out~q\);

-- Location: LABCELL_X67_Y5_N48
\servo_parallel_input|quad_segment7_1|bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|bcd~0_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[2]~input_o\ & ((!\duty[3]~input_o\) # (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & (!\duty[2]~input_o\ $ 
-- (((\duty[7]~input_o\) # (\duty[3]~input_o\))))) ) ) ) # ( !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[2]~input_o\ & ((\duty[7]~input_o\) # (\duty[3]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & 
-- (\duty[2]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & (!\duty[2]~input_o\ & \duty[7]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[2]~input_o\ $ (((\duty[3]~input_o\ & \duty[7]~input_o\))))) # 
-- (\duty[5]~input_o\ & (!\duty[2]~input_o\ & ((\duty[7]~input_o\) # (\duty[3]~input_o\)))) ) ) ) # ( !\duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[2]~input_o\ & ((!\duty[3]~input_o\) # (!\duty[7]~input_o\)))) # 
-- (\duty[5]~input_o\ & (!\duty[2]~input_o\ $ (((\duty[7]~input_o\) # (\duty[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100001101101100001101001000100100101100000100101100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|bcd~0_combout\);

-- Location: LABCELL_X67_Y5_N36
\servo_parallel_input|quad_segment7_1|bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|bcd~2_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[3]~input_o\ & (!\duty[2]~input_o\ & \duty[7]~input_o\))) # (\duty[5]~input_o\ & (!\duty[3]~input_o\ & (\duty[2]~input_o\ & 
-- !\duty[7]~input_o\))) ) ) ) # ( !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[2]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & (\duty[2]~input_o\ & \duty[7]~input_o\)))) # (\duty[5]~input_o\ & 
-- (!\duty[2]~input_o\ & (!\duty[3]~input_o\ $ (!\duty[7]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[2]~input_o\ & (!\duty[3]~input_o\ $ (!\duty[7]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ 
-- & (!\duty[2]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & (\duty[2]~input_o\ & \duty[7]~input_o\)))) ) ) ) # ( !\duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[3]~input_o\ & (!\duty[2]~input_o\ & \duty[7]~input_o\))) # 
-- (\duty[5]~input_o\ & (!\duty[3]~input_o\ & (\duty[2]~input_o\ & !\duty[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000010000100000100110010000010000100000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|bcd~2_combout\);

-- Location: LABCELL_X67_Y5_N18
\servo_parallel_input|quad_segment7_1|bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|bcd~1_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[3]~input_o\ $ (((!\duty[7]~input_o\))))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[2]~input_o\ & 
-- !\duty[7]~input_o\)) # (\duty[3]~input_o\ & ((\duty[7]~input_o\))))) ) ) ) # ( !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[2]~input_o\ & ((!\duty[5]~input_o\ & (\duty[3]~input_o\ & \duty[7]~input_o\)) # (\duty[5]~input_o\ & (!\duty[3]~input_o\ & 
-- !\duty[7]~input_o\)))) # (\duty[2]~input_o\ & (!\duty[5]~input_o\ $ (!\duty[3]~input_o\ $ (\duty[7]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[2]~input_o\ $ 
-- (!\duty[7]~input_o\))) # (\duty[3]~input_o\ & (!\duty[2]~input_o\ & !\duty[7]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (\duty[2]~input_o\ & \duty[7]~input_o\)) # (\duty[3]~input_o\ & (!\duty[2]~input_o\ $ (!\duty[7]~input_o\))))) ) ) ) # 
-- ( !\duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[3]~input_o\ $ (((!\duty[7]~input_o\))))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[2]~input_o\ & !\duty[7]~input_o\)) # (\duty[3]~input_o\ & ((\duty[7]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001010011001001010011001010001000110001010010110001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|bcd~1_combout\);

-- Location: LABCELL_X67_Y5_N6
\servo_parallel_input|quad_segment7_1|digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ = ( \servo_parallel_input|quad_segment7_1|bcd~1_combout\ & ( (!\duty[1]~input_o\ & (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & \servo_parallel_input|quad_segment7_1|bcd~2_combout\)) # 
-- (\duty[1]~input_o\ & (\servo_parallel_input|quad_segment7_1|bcd~0_combout\)) ) ) # ( !\servo_parallel_input|quad_segment7_1|bcd~1_combout\ & ( !\servo_parallel_input|quad_segment7_1|bcd~0_combout\ $ 
-- (((!\servo_parallel_input|quad_segment7_1|bcd~2_combout\) # (\duty[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[1]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\);

-- Location: LABCELL_X64_Y2_N39
\servo_parallel_input|quad_segment7_1|digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ = ( \duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & !\servo_parallel_input|quad_segment7_1|bcd~1_combout\) ) ) # ( !\duty[1]~input_o\ & ( 
-- ((\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & \servo_parallel_input|quad_segment7_1|bcd~1_combout\)) # (\servo_parallel_input|quad_segment7_1|bcd~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\);

-- Location: LABCELL_X64_Y2_N18
\servo_parallel_input|quad_segment7_1|digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ = ( \duty[1]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & !\servo_parallel_input|quad_segment7_1|bcd~1_combout\) ) ) # ( !\duty[1]~input_o\ & ( 
-- (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & ((\servo_parallel_input|quad_segment7_1|bcd~1_combout\))) # (\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & (\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & 
-- !\servo_parallel_input|quad_segment7_1|bcd~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100000000111100110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\);

-- Location: LABCELL_X64_Y2_N3
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\ = ( !\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ $ (!\duty[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y2_N6
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\ = ( \duty[1]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & (!\duty[0]~input_o\ $ (((\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # 
-- (\servo_parallel_input|quad_segment7_1|bcd~2_combout\))))) ) ) # ( !\duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & (\duty[0]~input_o\ & (!\servo_parallel_input|quad_segment7_1|bcd~1_combout\ & 
-- \servo_parallel_input|quad_segment7_1|bcd~0_combout\))) # (\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & (!\duty[0]~input_o\ & ((!\servo_parallel_input|quad_segment7_1|bcd~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100000010001000010000000000000100100110000000010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y2_N9
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\ = ( \duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ & (!\duty[0]~input_o\ & (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & 
-- !\servo_parallel_input|quad_segment7_1|bcd~1_combout\))) ) ) # ( !\duty[1]~input_o\ & ( (!\duty[0]~input_o\ & (\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & ((\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # 
-- (\servo_parallel_input|quad_segment7_1|bcd~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y2_N0
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ & ( (\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ & (\duty[0]~input_o\ & 
-- !\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\)) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ $ (!\duty[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y2_N36
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\ = ( \duty[0]~input_o\ ) # ( !\duty[0]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & (!\duty[1]~input_o\ $ (((\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # 
-- (\servo_parallel_input|quad_segment7_1|bcd~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010011000000001001001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \ALT_INV_duty[1]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \ALT_INV_duty[0]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y2_N48
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ & 
-- ((!\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\) # (\duty[0]~input_o\))) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ & (\duty[0]~input_o\ & 
-- !\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y2_N51
\servo_parallel_input|quad_segment7_1|LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ ) # ( !\servo_parallel_input|quad_segment7_1|digit1[3]~2_combout\ & ( 
-- (!\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ & ((\servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\))) # (\servo_parallel_input|quad_segment7_1|digit1[2]~1_combout\ & ((!\duty[0]~input_o\) # 
-- (!\servo_parallel_input|quad_segment7_1|digit1[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \servo_parallel_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X67_Y5_N24
\servo_parallel_input|quad_segment7_1|digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (\duty[3]~input_o\ & ((!\duty[5]~input_o\ & (\duty[2]~input_o\ & \duty[7]~input_o\)) # (\duty[5]~input_o\ & ((!\duty[7]~input_o\))))) ) ) ) # ( 
-- !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (!\duty[7]~input_o\ & ((\duty[2]~input_o\) # (\duty[3]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\ & (!\duty[2]~input_o\ & \duty[7]~input_o\)) # (\duty[3]~input_o\ & 
-- (\duty[2]~input_o\ & !\duty[7]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( !\duty[5]~input_o\ $ (\duty[7]~input_o\) ) ) ) # ( !\duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (\duty[7]~input_o\ & 
-- ((!\duty[3]~input_o\) # (!\duty[2]~input_o\)))) # (\duty[5]~input_o\ & ((!\duty[3]~input_o\) # ((\duty[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111101101010100101010100101011010000000001000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\);

-- Location: LABCELL_X67_Y5_N54
\servo_parallel_input|quad_segment7_1|digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (\duty[5]~input_o\ & \duty[7]~input_o\) ) ) ) # ( !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & (((\duty[7]~input_o\)))) # 
-- (\duty[5]~input_o\ & ((!\duty[7]~input_o\) # ((!\duty[3]~input_o\ & !\duty[2]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[5]~input_o\ & !\duty[7]~input_o\) ) ) ) # ( !\duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( 
-- (!\duty[5]~input_o\ & (\duty[3]~input_o\ & (\duty[2]~input_o\ & \duty[7]~input_o\))) # (\duty[5]~input_o\ & (((\duty[7]~input_o\)) # (\duty[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010111101010100000000001010101111010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\);

-- Location: LABCELL_X64_Y2_N54
\servo_parallel_input|quad_segment7_1|digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\ = ( \duty[1]~input_o\ & ( !\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (\servo_parallel_input|quad_segment7_1|bcd~1_combout\) ) ) # ( !\duty[1]~input_o\ & ( 
-- !\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((\servo_parallel_input|quad_segment7_1|bcd~0_combout\ & \servo_parallel_input|quad_segment7_1|bcd~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000011111100001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\);

-- Location: LABCELL_X67_Y5_N0
\servo_parallel_input|quad_segment7_1|digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ = ( \duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (!\duty[5]~input_o\ & !\duty[7]~input_o\) ) ) ) # ( !\duty[6]~input_o\ & ( \duty[4]~input_o\ & ( (\duty[5]~input_o\ & (\duty[7]~input_o\ & 
-- ((\duty[2]~input_o\) # (\duty[3]~input_o\)))) ) ) ) # ( \duty[6]~input_o\ & ( !\duty[4]~input_o\ & ( (!\duty[3]~input_o\ & ((!\duty[5]~input_o\ & ((\duty[7]~input_o\))) # (\duty[5]~input_o\ & (!\duty[2]~input_o\ & !\duty[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001000100000000000000101011010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[5]~input_o\,
	datab => \ALT_INV_duty[3]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	datad => \ALT_INV_duty[7]~input_o\,
	datae => \ALT_INV_duty[6]~input_o\,
	dataf => \ALT_INV_duty[4]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\);

-- Location: LABCELL_X64_Y2_N27
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\ = ( !\servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ $ (\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y2_N30
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( \duty[1]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|bcd~1_combout\ $ (\servo_parallel_input|quad_segment7_1|bcd~2_combout\))) ) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( \duty[1]~input_o\ & ( 
-- (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & (!\servo_parallel_input|quad_segment7_1|bcd~1_combout\ $ (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\))) ) ) ) # ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( 
-- !\duty[1]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((\servo_parallel_input|quad_segment7_1|bcd~1_combout\ & 
-- \servo_parallel_input|quad_segment7_1|bcd~0_combout\))))) ) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( !\duty[1]~input_o\ & ( (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((!\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011110000000001110000100000000010110100000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y2_N12
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( \duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|bcd~1_combout\ $ (\servo_parallel_input|quad_segment7_1|bcd~2_combout\))) ) ) ) # ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( !\duty[1]~input_o\ & ( 
-- (!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((\servo_parallel_input|quad_segment7_1|bcd~1_combout\ & \servo_parallel_input|quad_segment7_1|bcd~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010000000000000000000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y2_N24
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\ = ( !\servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & !\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\)) # (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & (!\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ $ 
-- (!\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100110000110000110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y2_N42
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( \duty[1]~input_o\ & ( !\servo_parallel_input|quad_segment7_1|bcd~1_combout\ $ 
-- (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\) ) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( \duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|bcd~1_combout\ $ 
-- (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\)) # (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\) ) ) ) # ( \servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( !\duty[1]~input_o\ & ( 
-- !\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((!\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\))) ) ) ) # ( !\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ( 
-- !\duty[1]~input_o\ & ( (!\servo_parallel_input|quad_segment7_1|bcd~2_combout\ $ (((!\servo_parallel_input|quad_segment7_1|bcd~1_combout\) # (!\servo_parallel_input|quad_segment7_1|bcd~0_combout\)))) # 
-- (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011111111000111100001111001011010111111110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \ALT_INV_duty[1]~input_o\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y2_N21
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\ = ( !\servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ & ( (!\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & 
-- (!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\ & !\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\)) # (\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ((!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\) # 
-- (!\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y2_N57
\servo_parallel_input|quad_segment7_1|MSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\ = ( \servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ ) # ( !\servo_parallel_input|quad_segment7_1|digit2[3]~3_combout\ & ( 
-- (!\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & (\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\)) # (\servo_parallel_input|quad_segment7_1|digit2[1]~1_combout\ & ((!\servo_parallel_input|quad_segment7_1|digit2[2]~2_combout\) # 
-- (\servo_parallel_input|quad_segment7_1|digit2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011111010110100101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \servo_parallel_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_parallel_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X65_Y5_N24
\servo_incremental_input|quad_segment7_1|bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|bcd~2_combout\ = ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( 
-- \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # 
-- (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ $ (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) ) ) ) # ( 
-- \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ $ (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000100001000001100000011000001000010000001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|bcd~2_combout\);

-- Location: LABCELL_X65_Y5_N18
\servo_incremental_input|quad_segment7_1|bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|bcd~1_combout\ = ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) ) ) ) # ( 
-- !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) ) ) ) # ( 
-- \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ $ (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ 
-- (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101010100101010100100010100100101001100101000100101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|bcd~1_combout\);

-- Location: LABCELL_X65_Y5_N6
\servo_incremental_input|quad_segment7_1|bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|bcd~0_combout\ = ( \servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ $ (((!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\))))) ) ) ) # ( !\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & ( 
-- \servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) # 
-- (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\) # 
-- (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\)))) ) ) ) # ( \servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & 
-- (!\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ $ (((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) # (\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) ) ) ) # ( !\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & ( 
-- !\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\ & 
-- \servo_incremental_input|duty_value[4]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\)))) # 
-- (\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ $ (((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100100100101100000100101100001101101100001101001000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|bcd~0_combout\);

-- Location: LABCELL_X64_Y5_N48
\servo_incremental_input|quad_segment7_1|digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & !\servo_incremental_input|quad_segment7_1|bcd~1_combout\) ) ) # ( 
-- !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( ((\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\)) # (\servo_incremental_input|quad_segment7_1|bcd~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\);

-- Location: LABCELL_X64_Y5_N51
\servo_incremental_input|quad_segment7_1|digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & !\servo_incremental_input|quad_segment7_1|bcd~1_combout\) ) ) # ( 
-- !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & (\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\)) # 
-- (\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & ((!\servo_incremental_input|quad_segment7_1|bcd~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010000000011110101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\);

-- Location: LABCELL_X64_Y5_N57
\servo_incremental_input|quad_segment7_1|digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( \servo_incremental_input|quad_segment7_1|bcd~0_combout\ ) ) # ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( 
-- (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\)) # (\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & 
-- ((!\servo_incremental_input|quad_segment7_1|bcd~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000000001100111100000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\);

-- Location: LABCELL_X64_Y5_N27
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\ = ( \servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & ( (!\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ & !\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\)) ) ) # ( !\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & ( 
-- (!\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & (!\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ & \servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y5_N6
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (\servo_incremental_input|quad_segment7_1|bcd~0_combout\ & (!\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ $ 
-- (((\servo_incremental_input|quad_segment7_1|bcd~2_combout\) # (\servo_incremental_input|quad_segment7_1|bcd~1_combout\))))) ) ) # ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & 
-- (((\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & !\servo_incremental_input|quad_segment7_1|bcd~0_combout\)))) # (\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001000000000010100100000000000000100101010000000010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y5_N9
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & !\servo_incremental_input|quad_segment7_1|bcd~0_combout\))) ) ) # ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|quad_segment7_1|bcd~0_combout\ & ((\servo_incremental_input|quad_segment7_1|bcd~2_combout\) # (\servo_incremental_input|quad_segment7_1|bcd~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X64_Y5_N12
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\ = ( \servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & ( (!\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\ $ (\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\))) ) ) # ( !\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & ( 
-- (\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\ & (!\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & !\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y5_N30
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( ((\servo_incremental_input|quad_segment7_1|bcd~0_combout\ & ((\servo_incremental_input|quad_segment7_1|bcd~1_combout\) # 
-- (\servo_incremental_input|quad_segment7_1|bcd~2_combout\)))) # (\servo_incremental_input|duty_value[0]~_Duplicate_1_q\) ) ) # ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( ((!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\))) # (\servo_incremental_input|duty_value[0]~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X64_Y5_N15
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & ( (!\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ & 
-- ((!\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\) # (\servo_incremental_input|duty_value[0]~_Duplicate_1_q\))) ) ) # ( !\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & ( 
-- (\servo_incremental_input|duty_value[0]~_Duplicate_1_q\ & (!\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\ & !\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X64_Y5_N54
\servo_incremental_input|quad_segment7_1|LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ ) # ( !\servo_incremental_input|quad_segment7_1|digit1[3]~2_combout\ & ( 
-- (!\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & ((\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\))) # (\servo_incremental_input|quad_segment7_1|digit1[1]~0_combout\ & 
-- ((!\servo_incremental_input|duty_value[0]~_Duplicate_1_q\) # (!\servo_incremental_input|quad_segment7_1|digit1[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111010010101011111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datac => \servo_incremental_input|ALT_INV_duty_value[0]~_Duplicate_1_q\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \servo_incremental_input|quad_segment7_1|LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X65_Y5_N54
\servo_incremental_input|quad_segment7_1|digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ = ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[5]~_Duplicate_1_q\)))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ $ 
-- (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) ) ) ) # ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( 
-- (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\) # ((!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101000101001001001010001010100101101001010000000000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\);

-- Location: LABCELL_X65_Y5_N12
\servo_incremental_input|quad_segment7_1|digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ = ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- \servo_incremental_input|duty_value[5]~_Duplicate_1_q\) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) ) ) ) # ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\) # ((!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & 
-- (((\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)))) # (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & (((\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- \servo_incremental_input|duty_value[3]~_Duplicate_1_q\)) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100011111010111100101101010100000101000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\);

-- Location: LABCELL_X65_Y5_N0
\servo_incremental_input|quad_segment7_1|digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\ = ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[7]~_Duplicate_1_q\) ) ) ) # ( !\servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( \servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (!\servo_incremental_input|duty_value[3]~_Duplicate_1_q\ & 
-- ((!\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & ((\servo_incremental_input|duty_value[7]~_Duplicate_1_q\))) # (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & (!\servo_incremental_input|duty_value[2]~_Duplicate_1_q\ & 
-- !\servo_incremental_input|duty_value[7]~_Duplicate_1_q\)))) ) ) ) # ( \servo_incremental_input|duty_value[4]~_Duplicate_1_q\ & ( !\servo_incremental_input|duty_value[6]~_Duplicate_1_q\ & ( (\servo_incremental_input|duty_value[5]~_Duplicate_1_q\ & 
-- (\servo_incremental_input|duty_value[7]~_Duplicate_1_q\ & ((\servo_incremental_input|duty_value[3]~_Duplicate_1_q\) # (\servo_incremental_input|duty_value[2]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000010101001010000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|ALT_INV_duty_value[5]~_Duplicate_1_q\,
	datab => \servo_incremental_input|ALT_INV_duty_value[2]~_Duplicate_1_q\,
	datac => \servo_incremental_input|ALT_INV_duty_value[7]~_Duplicate_1_q\,
	datad => \servo_incremental_input|ALT_INV_duty_value[3]~_Duplicate_1_q\,
	datae => \servo_incremental_input|ALT_INV_duty_value[4]~_Duplicate_1_q\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[6]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\);

-- Location: LABCELL_X64_Y5_N33
\servo_incremental_input|quad_segment7_1|digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ = ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( !\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (\servo_incremental_input|quad_segment7_1|bcd~1_combout\) ) ) # ( 
-- !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( !\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (((\servo_incremental_input|quad_segment7_1|bcd~1_combout\ & \servo_incremental_input|quad_segment7_1|bcd~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010011001101010101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\);

-- Location: LABCELL_X67_Y5_N33
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & ( (!\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & 
-- (\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & !\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\)) ) ) # ( !\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & ( 
-- (!\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & (!\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & !\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X64_Y5_N36
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( 
-- !\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ $ (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (\servo_incremental_input|quad_segment7_1|bcd~1_combout\)) ) ) ) # ( \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ 
-- & ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( !\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ $ (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (((\servo_incremental_input|quad_segment7_1|bcd~0_combout\ & 
-- \servo_incremental_input|quad_segment7_1|bcd~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110100100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X64_Y5_N42
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\ = ( !\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( 
-- (\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (\servo_incremental_input|quad_segment7_1|bcd~1_combout\))) ) ) ) # ( 
-- !\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ 
-- (((\servo_incremental_input|quad_segment7_1|bcd~0_combout\ & \servo_incremental_input|quad_segment7_1|bcd~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000001000000000000000001000100000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X67_Y5_N12
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\ = ( !\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\ & ( (!\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ $ (\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\))) # (\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & 
-- (\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & !\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001010010010100100101001001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X64_Y5_N0
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( 
-- (!\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\) # (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\)) ) ) ) # ( 
-- !\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( \servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( !\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\) ) ) ) # ( 
-- \servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( (!\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\) # (!\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ 
-- (((!\servo_incremental_input|quad_segment7_1|bcd~0_combout\) # (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & ( 
-- !\servo_incremental_input|duty_value[1]~_Duplicate_1_q\ & ( !\servo_incremental_input|quad_segment7_1|bcd~2_combout\ $ (((!\servo_incremental_input|quad_segment7_1|bcd~0_combout\) # (!\servo_incremental_input|quad_segment7_1|bcd~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100101110111011111000110011110011001011101111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_bcd~1_combout\,
	datae => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	dataf => \servo_incremental_input|ALT_INV_duty_value[1]~_Duplicate_1_q\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X67_Y5_N42
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\ = ( !\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\ & ( (!\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & 
-- ((!\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\) # (\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\))) # (\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\ & 
-- (!\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\ & \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010001110100011101000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X67_Y5_N9
\servo_incremental_input|quad_segment7_1|MSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\ = ( \servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & ( ((!\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\) # 
-- (\servo_incremental_input|quad_segment7_1|digit2[0]~0_combout\)) # (\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\) ) ) # ( !\servo_incremental_input|quad_segment7_1|digit2[1]~1_combout\ & ( 
-- (\servo_incremental_input|quad_segment7_1|digit2[2]~2_combout\) # (\servo_incremental_input|quad_segment7_1|digit2[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	datac => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datad => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	dataf => \servo_incremental_input|quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \servo_incremental_input|quad_segment7_1|MSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X46_Y54_N0
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


