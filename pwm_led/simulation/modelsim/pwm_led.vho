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

-- DATE "12/08/2015 12:19:34"

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

ENTITY 	pwm_led IS
    PORT (
	clk : IN std_logic;
	pwm_output_0 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_1 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_2 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_3 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_4 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_5 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_6 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_7 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_8 : BUFFER std_logic_vector(0 DOWNTO 0);
	pwm_output_9 : BUFFER std_logic_vector(0 DOWNTO 0);
	enable_pwm : IN std_logic;
	reset_pwm : IN std_logic;
	changeup : IN std_logic;
	changedown : IN std_logic;
	HEX00 : BUFFER std_logic;
	HEX01 : BUFFER std_logic;
	HEX02 : BUFFER std_logic;
	HEX03 : BUFFER std_logic;
	HEX04 : BUFFER std_logic;
	HEX05 : BUFFER std_logic;
	HEX06 : BUFFER std_logic;
	HEX10 : BUFFER std_logic;
	HEX11 : BUFFER std_logic;
	HEX12 : BUFFER std_logic;
	HEX13 : BUFFER std_logic;
	HEX14 : BUFFER std_logic;
	HEX15 : BUFFER std_logic;
	HEX16 : BUFFER std_logic;
	HEX20 : BUFFER std_logic;
	HEX21 : BUFFER std_logic;
	HEX22 : BUFFER std_logic;
	HEX23 : BUFFER std_logic;
	HEX24 : BUFFER std_logic;
	HEX25 : BUFFER std_logic;
	HEX26 : BUFFER std_logic;
	HEX30 : BUFFER std_logic;
	HEX31 : BUFFER std_logic;
	HEX32 : BUFFER std_logic;
	HEX33 : BUFFER std_logic;
	HEX34 : BUFFER std_logic;
	HEX35 : BUFFER std_logic;
	HEX36 : BUFFER std_logic
	);
END pwm_led;

-- Design Ports Information
-- pwm_output_0[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_1[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_2[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_3[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_4[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_5[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_6[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_7[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_8[0]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_output_9[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_pwm	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- changeup	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- changedown	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_pwm	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm_led IS
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
SIGNAL ww_pwm_output_0 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_1 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_2 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_3 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_4 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_5 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_6 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_7 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_8 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_output_9 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_enable_pwm : std_logic;
SIGNAL ww_reset_pwm : std_logic;
SIGNAL ww_changeup : std_logic;
SIGNAL ww_changedown : std_logic;
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
SIGNAL \pwm_0|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_2|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_3|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_4|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_5|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_6|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_7|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_8|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm_9|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwm_0|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_0|Mult0~9\ : std_logic;
SIGNAL \pwm_0|Mult0~10\ : std_logic;
SIGNAL \pwm_0|Mult0~11\ : std_logic;
SIGNAL \pwm_0|Mult0~12\ : std_logic;
SIGNAL \pwm_0|Mult0~13\ : std_logic;
SIGNAL \pwm_0|Mult0~14\ : std_logic;
SIGNAL \pwm_0|Mult0~15\ : std_logic;
SIGNAL \pwm_0|Mult0~16\ : std_logic;
SIGNAL \pwm_0|Mult0~36\ : std_logic;
SIGNAL \pwm_0|Mult0~37\ : std_logic;
SIGNAL \pwm_0|Mult0~38\ : std_logic;
SIGNAL \pwm_0|Mult0~39\ : std_logic;
SIGNAL \pwm_0|Mult0~40\ : std_logic;
SIGNAL \pwm_0|Mult0~41\ : std_logic;
SIGNAL \pwm_0|Mult0~42\ : std_logic;
SIGNAL \pwm_0|Mult0~43\ : std_logic;
SIGNAL \pwm_0|Mult0~44\ : std_logic;
SIGNAL \pwm_0|Mult0~45\ : std_logic;
SIGNAL \pwm_0|Mult0~46\ : std_logic;
SIGNAL \pwm_0|Mult0~47\ : std_logic;
SIGNAL \pwm_0|Mult0~48\ : std_logic;
SIGNAL \pwm_0|Mult0~49\ : std_logic;
SIGNAL \pwm_0|Mult0~50\ : std_logic;
SIGNAL \pwm_0|Mult0~51\ : std_logic;
SIGNAL \pwm_0|Mult0~52\ : std_logic;
SIGNAL \pwm_0|Mult0~53\ : std_logic;
SIGNAL \pwm_0|Mult0~54\ : std_logic;
SIGNAL \pwm_0|Mult0~55\ : std_logic;
SIGNAL \pwm_0|Mult0~56\ : std_logic;
SIGNAL \pwm_0|Mult0~57\ : std_logic;
SIGNAL \pwm_0|Mult0~58\ : std_logic;
SIGNAL \pwm_0|Mult0~59\ : std_logic;
SIGNAL \pwm_0|Mult0~60\ : std_logic;
SIGNAL \pwm_0|Mult0~61\ : std_logic;
SIGNAL \pwm_0|Mult0~62\ : std_logic;
SIGNAL \pwm_0|Mult0~63\ : std_logic;
SIGNAL \pwm_0|Mult0~64\ : std_logic;
SIGNAL \pwm_0|Mult0~65\ : std_logic;
SIGNAL \pwm_0|Mult0~66\ : std_logic;
SIGNAL \pwm_0|Mult0~67\ : std_logic;
SIGNAL \pwm_0|Mult0~68\ : std_logic;
SIGNAL \pwm_0|Mult0~69\ : std_logic;
SIGNAL \pwm_0|Mult0~70\ : std_logic;
SIGNAL \pwm_0|Mult0~71\ : std_logic;
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
SIGNAL \pwm_2|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_2|Mult0~9\ : std_logic;
SIGNAL \pwm_2|Mult0~10\ : std_logic;
SIGNAL \pwm_2|Mult0~11\ : std_logic;
SIGNAL \pwm_2|Mult0~12\ : std_logic;
SIGNAL \pwm_2|Mult0~13\ : std_logic;
SIGNAL \pwm_2|Mult0~14\ : std_logic;
SIGNAL \pwm_2|Mult0~15\ : std_logic;
SIGNAL \pwm_2|Mult0~16\ : std_logic;
SIGNAL \pwm_2|Mult0~36\ : std_logic;
SIGNAL \pwm_2|Mult0~37\ : std_logic;
SIGNAL \pwm_2|Mult0~38\ : std_logic;
SIGNAL \pwm_2|Mult0~39\ : std_logic;
SIGNAL \pwm_2|Mult0~40\ : std_logic;
SIGNAL \pwm_2|Mult0~41\ : std_logic;
SIGNAL \pwm_2|Mult0~42\ : std_logic;
SIGNAL \pwm_2|Mult0~43\ : std_logic;
SIGNAL \pwm_2|Mult0~44\ : std_logic;
SIGNAL \pwm_2|Mult0~45\ : std_logic;
SIGNAL \pwm_2|Mult0~46\ : std_logic;
SIGNAL \pwm_2|Mult0~47\ : std_logic;
SIGNAL \pwm_2|Mult0~48\ : std_logic;
SIGNAL \pwm_2|Mult0~49\ : std_logic;
SIGNAL \pwm_2|Mult0~50\ : std_logic;
SIGNAL \pwm_2|Mult0~51\ : std_logic;
SIGNAL \pwm_2|Mult0~52\ : std_logic;
SIGNAL \pwm_2|Mult0~53\ : std_logic;
SIGNAL \pwm_2|Mult0~54\ : std_logic;
SIGNAL \pwm_2|Mult0~55\ : std_logic;
SIGNAL \pwm_2|Mult0~56\ : std_logic;
SIGNAL \pwm_2|Mult0~57\ : std_logic;
SIGNAL \pwm_2|Mult0~58\ : std_logic;
SIGNAL \pwm_2|Mult0~59\ : std_logic;
SIGNAL \pwm_2|Mult0~60\ : std_logic;
SIGNAL \pwm_2|Mult0~61\ : std_logic;
SIGNAL \pwm_2|Mult0~62\ : std_logic;
SIGNAL \pwm_2|Mult0~63\ : std_logic;
SIGNAL \pwm_2|Mult0~64\ : std_logic;
SIGNAL \pwm_2|Mult0~65\ : std_logic;
SIGNAL \pwm_2|Mult0~66\ : std_logic;
SIGNAL \pwm_2|Mult0~67\ : std_logic;
SIGNAL \pwm_2|Mult0~68\ : std_logic;
SIGNAL \pwm_2|Mult0~69\ : std_logic;
SIGNAL \pwm_2|Mult0~70\ : std_logic;
SIGNAL \pwm_2|Mult0~71\ : std_logic;
SIGNAL \pwm_3|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_3|Mult0~9\ : std_logic;
SIGNAL \pwm_3|Mult0~10\ : std_logic;
SIGNAL \pwm_3|Mult0~11\ : std_logic;
SIGNAL \pwm_3|Mult0~12\ : std_logic;
SIGNAL \pwm_3|Mult0~13\ : std_logic;
SIGNAL \pwm_3|Mult0~14\ : std_logic;
SIGNAL \pwm_3|Mult0~15\ : std_logic;
SIGNAL \pwm_3|Mult0~16\ : std_logic;
SIGNAL \pwm_3|Mult0~36\ : std_logic;
SIGNAL \pwm_3|Mult0~37\ : std_logic;
SIGNAL \pwm_3|Mult0~38\ : std_logic;
SIGNAL \pwm_3|Mult0~39\ : std_logic;
SIGNAL \pwm_3|Mult0~40\ : std_logic;
SIGNAL \pwm_3|Mult0~41\ : std_logic;
SIGNAL \pwm_3|Mult0~42\ : std_logic;
SIGNAL \pwm_3|Mult0~43\ : std_logic;
SIGNAL \pwm_3|Mult0~44\ : std_logic;
SIGNAL \pwm_3|Mult0~45\ : std_logic;
SIGNAL \pwm_3|Mult0~46\ : std_logic;
SIGNAL \pwm_3|Mult0~47\ : std_logic;
SIGNAL \pwm_3|Mult0~48\ : std_logic;
SIGNAL \pwm_3|Mult0~49\ : std_logic;
SIGNAL \pwm_3|Mult0~50\ : std_logic;
SIGNAL \pwm_3|Mult0~51\ : std_logic;
SIGNAL \pwm_3|Mult0~52\ : std_logic;
SIGNAL \pwm_3|Mult0~53\ : std_logic;
SIGNAL \pwm_3|Mult0~54\ : std_logic;
SIGNAL \pwm_3|Mult0~55\ : std_logic;
SIGNAL \pwm_3|Mult0~56\ : std_logic;
SIGNAL \pwm_3|Mult0~57\ : std_logic;
SIGNAL \pwm_3|Mult0~58\ : std_logic;
SIGNAL \pwm_3|Mult0~59\ : std_logic;
SIGNAL \pwm_3|Mult0~60\ : std_logic;
SIGNAL \pwm_3|Mult0~61\ : std_logic;
SIGNAL \pwm_3|Mult0~62\ : std_logic;
SIGNAL \pwm_3|Mult0~63\ : std_logic;
SIGNAL \pwm_3|Mult0~64\ : std_logic;
SIGNAL \pwm_3|Mult0~65\ : std_logic;
SIGNAL \pwm_3|Mult0~66\ : std_logic;
SIGNAL \pwm_3|Mult0~67\ : std_logic;
SIGNAL \pwm_3|Mult0~68\ : std_logic;
SIGNAL \pwm_3|Mult0~69\ : std_logic;
SIGNAL \pwm_3|Mult0~70\ : std_logic;
SIGNAL \pwm_3|Mult0~71\ : std_logic;
SIGNAL \pwm_4|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_4|Mult0~9\ : std_logic;
SIGNAL \pwm_4|Mult0~10\ : std_logic;
SIGNAL \pwm_4|Mult0~11\ : std_logic;
SIGNAL \pwm_4|Mult0~12\ : std_logic;
SIGNAL \pwm_4|Mult0~13\ : std_logic;
SIGNAL \pwm_4|Mult0~14\ : std_logic;
SIGNAL \pwm_4|Mult0~15\ : std_logic;
SIGNAL \pwm_4|Mult0~16\ : std_logic;
SIGNAL \pwm_4|Mult0~36\ : std_logic;
SIGNAL \pwm_4|Mult0~37\ : std_logic;
SIGNAL \pwm_4|Mult0~38\ : std_logic;
SIGNAL \pwm_4|Mult0~39\ : std_logic;
SIGNAL \pwm_4|Mult0~40\ : std_logic;
SIGNAL \pwm_4|Mult0~41\ : std_logic;
SIGNAL \pwm_4|Mult0~42\ : std_logic;
SIGNAL \pwm_4|Mult0~43\ : std_logic;
SIGNAL \pwm_4|Mult0~44\ : std_logic;
SIGNAL \pwm_4|Mult0~45\ : std_logic;
SIGNAL \pwm_4|Mult0~46\ : std_logic;
SIGNAL \pwm_4|Mult0~47\ : std_logic;
SIGNAL \pwm_4|Mult0~48\ : std_logic;
SIGNAL \pwm_4|Mult0~49\ : std_logic;
SIGNAL \pwm_4|Mult0~50\ : std_logic;
SIGNAL \pwm_4|Mult0~51\ : std_logic;
SIGNAL \pwm_4|Mult0~52\ : std_logic;
SIGNAL \pwm_4|Mult0~53\ : std_logic;
SIGNAL \pwm_4|Mult0~54\ : std_logic;
SIGNAL \pwm_4|Mult0~55\ : std_logic;
SIGNAL \pwm_4|Mult0~56\ : std_logic;
SIGNAL \pwm_4|Mult0~57\ : std_logic;
SIGNAL \pwm_4|Mult0~58\ : std_logic;
SIGNAL \pwm_4|Mult0~59\ : std_logic;
SIGNAL \pwm_4|Mult0~60\ : std_logic;
SIGNAL \pwm_4|Mult0~61\ : std_logic;
SIGNAL \pwm_4|Mult0~62\ : std_logic;
SIGNAL \pwm_4|Mult0~63\ : std_logic;
SIGNAL \pwm_4|Mult0~64\ : std_logic;
SIGNAL \pwm_4|Mult0~65\ : std_logic;
SIGNAL \pwm_4|Mult0~66\ : std_logic;
SIGNAL \pwm_4|Mult0~67\ : std_logic;
SIGNAL \pwm_4|Mult0~68\ : std_logic;
SIGNAL \pwm_4|Mult0~69\ : std_logic;
SIGNAL \pwm_4|Mult0~70\ : std_logic;
SIGNAL \pwm_4|Mult0~71\ : std_logic;
SIGNAL \pwm_5|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_5|Mult0~9\ : std_logic;
SIGNAL \pwm_5|Mult0~10\ : std_logic;
SIGNAL \pwm_5|Mult0~11\ : std_logic;
SIGNAL \pwm_5|Mult0~12\ : std_logic;
SIGNAL \pwm_5|Mult0~13\ : std_logic;
SIGNAL \pwm_5|Mult0~14\ : std_logic;
SIGNAL \pwm_5|Mult0~15\ : std_logic;
SIGNAL \pwm_5|Mult0~16\ : std_logic;
SIGNAL \pwm_5|Mult0~36\ : std_logic;
SIGNAL \pwm_5|Mult0~37\ : std_logic;
SIGNAL \pwm_5|Mult0~38\ : std_logic;
SIGNAL \pwm_5|Mult0~39\ : std_logic;
SIGNAL \pwm_5|Mult0~40\ : std_logic;
SIGNAL \pwm_5|Mult0~41\ : std_logic;
SIGNAL \pwm_5|Mult0~42\ : std_logic;
SIGNAL \pwm_5|Mult0~43\ : std_logic;
SIGNAL \pwm_5|Mult0~44\ : std_logic;
SIGNAL \pwm_5|Mult0~45\ : std_logic;
SIGNAL \pwm_5|Mult0~46\ : std_logic;
SIGNAL \pwm_5|Mult0~47\ : std_logic;
SIGNAL \pwm_5|Mult0~48\ : std_logic;
SIGNAL \pwm_5|Mult0~49\ : std_logic;
SIGNAL \pwm_5|Mult0~50\ : std_logic;
SIGNAL \pwm_5|Mult0~51\ : std_logic;
SIGNAL \pwm_5|Mult0~52\ : std_logic;
SIGNAL \pwm_5|Mult0~53\ : std_logic;
SIGNAL \pwm_5|Mult0~54\ : std_logic;
SIGNAL \pwm_5|Mult0~55\ : std_logic;
SIGNAL \pwm_5|Mult0~56\ : std_logic;
SIGNAL \pwm_5|Mult0~57\ : std_logic;
SIGNAL \pwm_5|Mult0~58\ : std_logic;
SIGNAL \pwm_5|Mult0~59\ : std_logic;
SIGNAL \pwm_5|Mult0~60\ : std_logic;
SIGNAL \pwm_5|Mult0~61\ : std_logic;
SIGNAL \pwm_5|Mult0~62\ : std_logic;
SIGNAL \pwm_5|Mult0~63\ : std_logic;
SIGNAL \pwm_5|Mult0~64\ : std_logic;
SIGNAL \pwm_5|Mult0~65\ : std_logic;
SIGNAL \pwm_5|Mult0~66\ : std_logic;
SIGNAL \pwm_5|Mult0~67\ : std_logic;
SIGNAL \pwm_5|Mult0~68\ : std_logic;
SIGNAL \pwm_5|Mult0~69\ : std_logic;
SIGNAL \pwm_5|Mult0~70\ : std_logic;
SIGNAL \pwm_5|Mult0~71\ : std_logic;
SIGNAL \pwm_6|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_6|Mult0~9\ : std_logic;
SIGNAL \pwm_6|Mult0~10\ : std_logic;
SIGNAL \pwm_6|Mult0~11\ : std_logic;
SIGNAL \pwm_6|Mult0~12\ : std_logic;
SIGNAL \pwm_6|Mult0~13\ : std_logic;
SIGNAL \pwm_6|Mult0~14\ : std_logic;
SIGNAL \pwm_6|Mult0~15\ : std_logic;
SIGNAL \pwm_6|Mult0~16\ : std_logic;
SIGNAL \pwm_6|Mult0~36\ : std_logic;
SIGNAL \pwm_6|Mult0~37\ : std_logic;
SIGNAL \pwm_6|Mult0~38\ : std_logic;
SIGNAL \pwm_6|Mult0~39\ : std_logic;
SIGNAL \pwm_6|Mult0~40\ : std_logic;
SIGNAL \pwm_6|Mult0~41\ : std_logic;
SIGNAL \pwm_6|Mult0~42\ : std_logic;
SIGNAL \pwm_6|Mult0~43\ : std_logic;
SIGNAL \pwm_6|Mult0~44\ : std_logic;
SIGNAL \pwm_6|Mult0~45\ : std_logic;
SIGNAL \pwm_6|Mult0~46\ : std_logic;
SIGNAL \pwm_6|Mult0~47\ : std_logic;
SIGNAL \pwm_6|Mult0~48\ : std_logic;
SIGNAL \pwm_6|Mult0~49\ : std_logic;
SIGNAL \pwm_6|Mult0~50\ : std_logic;
SIGNAL \pwm_6|Mult0~51\ : std_logic;
SIGNAL \pwm_6|Mult0~52\ : std_logic;
SIGNAL \pwm_6|Mult0~53\ : std_logic;
SIGNAL \pwm_6|Mult0~54\ : std_logic;
SIGNAL \pwm_6|Mult0~55\ : std_logic;
SIGNAL \pwm_6|Mult0~56\ : std_logic;
SIGNAL \pwm_6|Mult0~57\ : std_logic;
SIGNAL \pwm_6|Mult0~58\ : std_logic;
SIGNAL \pwm_6|Mult0~59\ : std_logic;
SIGNAL \pwm_6|Mult0~60\ : std_logic;
SIGNAL \pwm_6|Mult0~61\ : std_logic;
SIGNAL \pwm_6|Mult0~62\ : std_logic;
SIGNAL \pwm_6|Mult0~63\ : std_logic;
SIGNAL \pwm_6|Mult0~64\ : std_logic;
SIGNAL \pwm_6|Mult0~65\ : std_logic;
SIGNAL \pwm_6|Mult0~66\ : std_logic;
SIGNAL \pwm_6|Mult0~67\ : std_logic;
SIGNAL \pwm_6|Mult0~68\ : std_logic;
SIGNAL \pwm_6|Mult0~69\ : std_logic;
SIGNAL \pwm_6|Mult0~70\ : std_logic;
SIGNAL \pwm_6|Mult0~71\ : std_logic;
SIGNAL \pwm_7|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_7|Mult0~9\ : std_logic;
SIGNAL \pwm_7|Mult0~10\ : std_logic;
SIGNAL \pwm_7|Mult0~11\ : std_logic;
SIGNAL \pwm_7|Mult0~12\ : std_logic;
SIGNAL \pwm_7|Mult0~13\ : std_logic;
SIGNAL \pwm_7|Mult0~14\ : std_logic;
SIGNAL \pwm_7|Mult0~15\ : std_logic;
SIGNAL \pwm_7|Mult0~16\ : std_logic;
SIGNAL \pwm_7|Mult0~36\ : std_logic;
SIGNAL \pwm_7|Mult0~37\ : std_logic;
SIGNAL \pwm_7|Mult0~38\ : std_logic;
SIGNAL \pwm_7|Mult0~39\ : std_logic;
SIGNAL \pwm_7|Mult0~40\ : std_logic;
SIGNAL \pwm_7|Mult0~41\ : std_logic;
SIGNAL \pwm_7|Mult0~42\ : std_logic;
SIGNAL \pwm_7|Mult0~43\ : std_logic;
SIGNAL \pwm_7|Mult0~44\ : std_logic;
SIGNAL \pwm_7|Mult0~45\ : std_logic;
SIGNAL \pwm_7|Mult0~46\ : std_logic;
SIGNAL \pwm_7|Mult0~47\ : std_logic;
SIGNAL \pwm_7|Mult0~48\ : std_logic;
SIGNAL \pwm_7|Mult0~49\ : std_logic;
SIGNAL \pwm_7|Mult0~50\ : std_logic;
SIGNAL \pwm_7|Mult0~51\ : std_logic;
SIGNAL \pwm_7|Mult0~52\ : std_logic;
SIGNAL \pwm_7|Mult0~53\ : std_logic;
SIGNAL \pwm_7|Mult0~54\ : std_logic;
SIGNAL \pwm_7|Mult0~55\ : std_logic;
SIGNAL \pwm_7|Mult0~56\ : std_logic;
SIGNAL \pwm_7|Mult0~57\ : std_logic;
SIGNAL \pwm_7|Mult0~58\ : std_logic;
SIGNAL \pwm_7|Mult0~59\ : std_logic;
SIGNAL \pwm_7|Mult0~60\ : std_logic;
SIGNAL \pwm_7|Mult0~61\ : std_logic;
SIGNAL \pwm_7|Mult0~62\ : std_logic;
SIGNAL \pwm_7|Mult0~63\ : std_logic;
SIGNAL \pwm_7|Mult0~64\ : std_logic;
SIGNAL \pwm_7|Mult0~65\ : std_logic;
SIGNAL \pwm_7|Mult0~66\ : std_logic;
SIGNAL \pwm_7|Mult0~67\ : std_logic;
SIGNAL \pwm_7|Mult0~68\ : std_logic;
SIGNAL \pwm_7|Mult0~69\ : std_logic;
SIGNAL \pwm_7|Mult0~70\ : std_logic;
SIGNAL \pwm_7|Mult0~71\ : std_logic;
SIGNAL \pwm_8|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_8|Mult0~9\ : std_logic;
SIGNAL \pwm_8|Mult0~10\ : std_logic;
SIGNAL \pwm_8|Mult0~11\ : std_logic;
SIGNAL \pwm_8|Mult0~12\ : std_logic;
SIGNAL \pwm_8|Mult0~13\ : std_logic;
SIGNAL \pwm_8|Mult0~14\ : std_logic;
SIGNAL \pwm_8|Mult0~15\ : std_logic;
SIGNAL \pwm_8|Mult0~16\ : std_logic;
SIGNAL \pwm_8|Mult0~36\ : std_logic;
SIGNAL \pwm_8|Mult0~37\ : std_logic;
SIGNAL \pwm_8|Mult0~38\ : std_logic;
SIGNAL \pwm_8|Mult0~39\ : std_logic;
SIGNAL \pwm_8|Mult0~40\ : std_logic;
SIGNAL \pwm_8|Mult0~41\ : std_logic;
SIGNAL \pwm_8|Mult0~42\ : std_logic;
SIGNAL \pwm_8|Mult0~43\ : std_logic;
SIGNAL \pwm_8|Mult0~44\ : std_logic;
SIGNAL \pwm_8|Mult0~45\ : std_logic;
SIGNAL \pwm_8|Mult0~46\ : std_logic;
SIGNAL \pwm_8|Mult0~47\ : std_logic;
SIGNAL \pwm_8|Mult0~48\ : std_logic;
SIGNAL \pwm_8|Mult0~49\ : std_logic;
SIGNAL \pwm_8|Mult0~50\ : std_logic;
SIGNAL \pwm_8|Mult0~51\ : std_logic;
SIGNAL \pwm_8|Mult0~52\ : std_logic;
SIGNAL \pwm_8|Mult0~53\ : std_logic;
SIGNAL \pwm_8|Mult0~54\ : std_logic;
SIGNAL \pwm_8|Mult0~55\ : std_logic;
SIGNAL \pwm_8|Mult0~56\ : std_logic;
SIGNAL \pwm_8|Mult0~57\ : std_logic;
SIGNAL \pwm_8|Mult0~58\ : std_logic;
SIGNAL \pwm_8|Mult0~59\ : std_logic;
SIGNAL \pwm_8|Mult0~60\ : std_logic;
SIGNAL \pwm_8|Mult0~61\ : std_logic;
SIGNAL \pwm_8|Mult0~62\ : std_logic;
SIGNAL \pwm_8|Mult0~63\ : std_logic;
SIGNAL \pwm_8|Mult0~64\ : std_logic;
SIGNAL \pwm_8|Mult0~65\ : std_logic;
SIGNAL \pwm_8|Mult0~66\ : std_logic;
SIGNAL \pwm_8|Mult0~67\ : std_logic;
SIGNAL \pwm_8|Mult0~68\ : std_logic;
SIGNAL \pwm_8|Mult0~69\ : std_logic;
SIGNAL \pwm_8|Mult0~70\ : std_logic;
SIGNAL \pwm_8|Mult0~71\ : std_logic;
SIGNAL \pwm_9|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm_9|Mult0~9\ : std_logic;
SIGNAL \pwm_9|Mult0~10\ : std_logic;
SIGNAL \pwm_9|Mult0~11\ : std_logic;
SIGNAL \pwm_9|Mult0~12\ : std_logic;
SIGNAL \pwm_9|Mult0~13\ : std_logic;
SIGNAL \pwm_9|Mult0~14\ : std_logic;
SIGNAL \pwm_9|Mult0~15\ : std_logic;
SIGNAL \pwm_9|Mult0~16\ : std_logic;
SIGNAL \pwm_9|Mult0~36\ : std_logic;
SIGNAL \pwm_9|Mult0~37\ : std_logic;
SIGNAL \pwm_9|Mult0~38\ : std_logic;
SIGNAL \pwm_9|Mult0~39\ : std_logic;
SIGNAL \pwm_9|Mult0~40\ : std_logic;
SIGNAL \pwm_9|Mult0~41\ : std_logic;
SIGNAL \pwm_9|Mult0~42\ : std_logic;
SIGNAL \pwm_9|Mult0~43\ : std_logic;
SIGNAL \pwm_9|Mult0~44\ : std_logic;
SIGNAL \pwm_9|Mult0~45\ : std_logic;
SIGNAL \pwm_9|Mult0~46\ : std_logic;
SIGNAL \pwm_9|Mult0~47\ : std_logic;
SIGNAL \pwm_9|Mult0~48\ : std_logic;
SIGNAL \pwm_9|Mult0~49\ : std_logic;
SIGNAL \pwm_9|Mult0~50\ : std_logic;
SIGNAL \pwm_9|Mult0~51\ : std_logic;
SIGNAL \pwm_9|Mult0~52\ : std_logic;
SIGNAL \pwm_9|Mult0~53\ : std_logic;
SIGNAL \pwm_9|Mult0~54\ : std_logic;
SIGNAL \pwm_9|Mult0~55\ : std_logic;
SIGNAL \pwm_9|Mult0~56\ : std_logic;
SIGNAL \pwm_9|Mult0~57\ : std_logic;
SIGNAL \pwm_9|Mult0~58\ : std_logic;
SIGNAL \pwm_9|Mult0~59\ : std_logic;
SIGNAL \pwm_9|Mult0~60\ : std_logic;
SIGNAL \pwm_9|Mult0~61\ : std_logic;
SIGNAL \pwm_9|Mult0~62\ : std_logic;
SIGNAL \pwm_9|Mult0~63\ : std_logic;
SIGNAL \pwm_9|Mult0~64\ : std_logic;
SIGNAL \pwm_9|Mult0~65\ : std_logic;
SIGNAL \pwm_9|Mult0~66\ : std_logic;
SIGNAL \pwm_9|Mult0~67\ : std_logic;
SIGNAL \pwm_9|Mult0~68\ : std_logic;
SIGNAL \pwm_9|Mult0~69\ : std_logic;
SIGNAL \pwm_9|Mult0~70\ : std_logic;
SIGNAL \pwm_9|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pwm_0|Add0~61_sumout\ : std_logic;
SIGNAL \reset_pwm~input_o\ : std_logic;
SIGNAL \pwm_0|Add0~30\ : std_logic;
SIGNAL \pwm_0|Add0~33_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][15]~q\ : std_logic;
SIGNAL \pwm_0|Add0~34\ : std_logic;
SIGNAL \pwm_0|Add0~21_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][16]~q\ : std_logic;
SIGNAL \pwm_0|Add0~22\ : std_logic;
SIGNAL \pwm_0|Add0~25_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][17]~q\ : std_logic;
SIGNAL \pwm_0|Add0~26\ : std_logic;
SIGNAL \pwm_0|Add0~5_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][18]~q\ : std_logic;
SIGNAL \pwm_0|Add0~6\ : std_logic;
SIGNAL \pwm_0|Add0~1_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][19]~q\ : std_logic;
SIGNAL \pwm_0|count[0][16]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|count[0][17]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_0|count[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|count[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Equal0~2_combout\ : std_logic;
SIGNAL \pwm_0|count[0][18]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Equal0~1_combout\ : std_logic;
SIGNAL \pwm_0|Equal0~3_combout\ : std_logic;
SIGNAL \pwm_0|count[0][0]~q\ : std_logic;
SIGNAL \pwm_0|Add0~62\ : std_logic;
SIGNAL \pwm_0|Add0~65_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][1]~q\ : std_logic;
SIGNAL \pwm_0|Add0~66\ : std_logic;
SIGNAL \pwm_0|Add0~69_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][2]~q\ : std_logic;
SIGNAL \pwm_0|Add0~70\ : std_logic;
SIGNAL \pwm_0|Add0~37_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][3]~q\ : std_logic;
SIGNAL \pwm_0|Add0~38\ : std_logic;
SIGNAL \pwm_0|Add0~41_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][4]~q\ : std_logic;
SIGNAL \pwm_0|Add0~42\ : std_logic;
SIGNAL \pwm_0|Add0~45_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][5]~q\ : std_logic;
SIGNAL \pwm_0|Add0~46\ : std_logic;
SIGNAL \pwm_0|Add0~9_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][6]~q\ : std_logic;
SIGNAL \pwm_0|Add0~10\ : std_logic;
SIGNAL \pwm_0|Add0~13_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][7]~q\ : std_logic;
SIGNAL \pwm_0|Add0~14\ : std_logic;
SIGNAL \pwm_0|Add0~17_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][8]~q\ : std_logic;
SIGNAL \pwm_0|Add0~18\ : std_logic;
SIGNAL \pwm_0|Add0~73_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][9]~q\ : std_logic;
SIGNAL \pwm_0|Add0~74\ : std_logic;
SIGNAL \pwm_0|Add0~77_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][10]~q\ : std_logic;
SIGNAL \pwm_0|Add0~78\ : std_logic;
SIGNAL \pwm_0|Add0~53_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][11]~q\ : std_logic;
SIGNAL \pwm_0|Add0~54\ : std_logic;
SIGNAL \pwm_0|Add0~57_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][12]~q\ : std_logic;
SIGNAL \pwm_0|Add0~58\ : std_logic;
SIGNAL \pwm_0|Add0~49_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][13]~q\ : std_logic;
SIGNAL \pwm_0|Add0~50\ : std_logic;
SIGNAL \pwm_0|Add0~29_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][14]~q\ : std_logic;
SIGNAL \pwm_0|count[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|count[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \changeup~input_o\ : std_logic;
SIGNAL \lastChangeup~0_combout\ : std_logic;
SIGNAL \lastChangeup~q\ : std_logic;
SIGNAL \changedown~input_o\ : std_logic;
SIGNAL \lastChangedown~0_combout\ : std_logic;
SIGNAL \lastChangedown~q\ : std_logic;
SIGNAL \duty_value[0]~0_combout\ : std_logic;
SIGNAL \duty_value[0]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \duty_value[1]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \duty_value[2]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \duty_value[3]~_Duplicate_10feeder_combout\ : std_logic;
SIGNAL \duty_value[3]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \duty_value[4]~_Duplicate_10feeder_combout\ : std_logic;
SIGNAL \duty_value[4]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \duty_value[5]~_Duplicate_10feeder_combout\ : std_logic;
SIGNAL \duty_value[5]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \duty_value[6]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \duty_value[7]~_Duplicate_10_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \pwm_0|Mult0~20\ : std_logic;
SIGNAL \enable_pwm~input_o\ : std_logic;
SIGNAL \pwm_0|half_duty[0][0]~0_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~19\ : std_logic;
SIGNAL \pwm_0|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~18\ : std_logic;
SIGNAL \pwm_0|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~17\ : std_logic;
SIGNAL \pwm_0|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_0|Add1~62\ : std_logic;
SIGNAL \pwm_0|Add1~66\ : std_logic;
SIGNAL \pwm_0|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_0|Mult0~22\ : std_logic;
SIGNAL \pwm_0|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~21\ : std_logic;
SIGNAL \pwm_0|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_0|Add1~38\ : std_logic;
SIGNAL \pwm_0|Add1~42\ : std_logic;
SIGNAL \pwm_0|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_0|Mult0~32\ : std_logic;
SIGNAL \pwm_0|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~31\ : std_logic;
SIGNAL \pwm_0|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~30\ : std_logic;
SIGNAL \pwm_0|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~29\ : std_logic;
SIGNAL \pwm_0|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~28\ : std_logic;
SIGNAL \pwm_0|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~27\ : std_logic;
SIGNAL \pwm_0|half_duty_new[10]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~26\ : std_logic;
SIGNAL \pwm_0|half_duty_new[9]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~25\ : std_logic;
SIGNAL \pwm_0|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~24\ : std_logic;
SIGNAL \pwm_0|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~23\ : std_logic;
SIGNAL \pwm_0|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_0|Add1~46\ : std_logic;
SIGNAL \pwm_0|Add1~10\ : std_logic;
SIGNAL \pwm_0|Add1~14\ : std_logic;
SIGNAL \pwm_0|Add1~18\ : std_logic;
SIGNAL \pwm_0|Add1~70\ : std_logic;
SIGNAL \pwm_0|Add1~74\ : std_logic;
SIGNAL \pwm_0|Add1~50\ : std_logic;
SIGNAL \pwm_0|Add1~54\ : std_logic;
SIGNAL \pwm_0|Add1~58\ : std_logic;
SIGNAL \pwm_0|Add1~30\ : std_logic;
SIGNAL \pwm_0|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_0|Mult0~33\ : std_logic;
SIGNAL \pwm_0|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_0|count[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_0|Mult0~35\ : std_logic;
SIGNAL \pwm_0|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_0|Mult0~34\ : std_logic;
SIGNAL \pwm_0|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_0|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_0|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_0|count[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_0|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_0|Add1~34\ : std_logic;
SIGNAL \pwm_0|Add1~22\ : std_logic;
SIGNAL \pwm_0|Add1~26\ : std_logic;
SIGNAL \pwm_0|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_0|Add1~2\ : std_logic;
SIGNAL \pwm_0|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_0|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_0|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_0|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_0|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_0|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_0|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_0|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_0|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_0|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_0|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_0|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~28\ : std_logic;
SIGNAL \pwm_1|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~27\ : std_logic;
SIGNAL \pwm_1|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~26\ : std_logic;
SIGNAL \pwm_1|half_duty_new[9]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~25\ : std_logic;
SIGNAL \pwm_1|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~24\ : std_logic;
SIGNAL \pwm_1|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~23\ : std_logic;
SIGNAL \pwm_1|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~22\ : std_logic;
SIGNAL \pwm_1|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~21\ : std_logic;
SIGNAL \pwm_1|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~20\ : std_logic;
SIGNAL \pwm_1|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~19\ : std_logic;
SIGNAL \pwm_1|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~18\ : std_logic;
SIGNAL \pwm_1|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~17\ : std_logic;
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
SIGNAL \pwm_1|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_1|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_1|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_1|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~30\ : std_logic;
SIGNAL \pwm_1|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~29\ : std_logic;
SIGNAL \pwm_1|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_1|Add1~50\ : std_logic;
SIGNAL \pwm_1|Add1~54\ : std_logic;
SIGNAL \pwm_1|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_1|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_1|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~34\ : std_logic;
SIGNAL \pwm_1|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~35\ : std_logic;
SIGNAL \pwm_1|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_1|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_1|Mult0~32\ : std_logic;
SIGNAL \pwm_1|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_1|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~33\ : std_logic;
SIGNAL \pwm_1|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_1|Mult0~31\ : std_logic;
SIGNAL \pwm_1|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_1|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_1|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_1|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_0|count[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_1|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_1|Add1~58\ : std_logic;
SIGNAL \pwm_1|Add1~30\ : std_logic;
SIGNAL \pwm_1|Add1~34\ : std_logic;
SIGNAL \pwm_1|Add1~22\ : std_logic;
SIGNAL \pwm_1|Add1~26\ : std_logic;
SIGNAL \pwm_1|Add1~2\ : std_logic;
SIGNAL \pwm_1|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_1|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_1|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_1|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_1|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_1|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_1|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_2|Mult0~20\ : std_logic;
SIGNAL \pwm_2|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~19\ : std_logic;
SIGNAL \pwm_2|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~18\ : std_logic;
SIGNAL \pwm_2|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~17\ : std_logic;
SIGNAL \pwm_2|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_2|Add1~62\ : std_logic;
SIGNAL \pwm_2|Add1~66\ : std_logic;
SIGNAL \pwm_2|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_2|Mult0~21\ : std_logic;
SIGNAL \pwm_2|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_2|Add1~38\ : std_logic;
SIGNAL \pwm_2|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_2|Mult0~22\ : std_logic;
SIGNAL \pwm_2|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_2|Add1~42\ : std_logic;
SIGNAL \pwm_2|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_2|Mult0~32\ : std_logic;
SIGNAL \pwm_2|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~31\ : std_logic;
SIGNAL \pwm_2|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~30\ : std_logic;
SIGNAL \pwm_2|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~29\ : std_logic;
SIGNAL \pwm_2|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~28\ : std_logic;
SIGNAL \pwm_2|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~27\ : std_logic;
SIGNAL \pwm_2|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~26\ : std_logic;
SIGNAL \pwm_2|half_duty_new[9]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~25\ : std_logic;
SIGNAL \pwm_2|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~24\ : std_logic;
SIGNAL \pwm_2|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~23\ : std_logic;
SIGNAL \pwm_2|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_2|Add1~46\ : std_logic;
SIGNAL \pwm_2|Add1~10\ : std_logic;
SIGNAL \pwm_2|Add1~14\ : std_logic;
SIGNAL \pwm_2|Add1~18\ : std_logic;
SIGNAL \pwm_2|Add1~70\ : std_logic;
SIGNAL \pwm_2|Add1~74\ : std_logic;
SIGNAL \pwm_2|Add1~50\ : std_logic;
SIGNAL \pwm_2|Add1~54\ : std_logic;
SIGNAL \pwm_2|Add1~58\ : std_logic;
SIGNAL \pwm_2|Add1~30\ : std_logic;
SIGNAL \pwm_2|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_2|Mult0~34\ : std_logic;
SIGNAL \pwm_2|half_duty[0][17]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_2|Mult0~35\ : std_logic;
SIGNAL \pwm_2|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_2|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_2|Mult0~33\ : std_logic;
SIGNAL \pwm_2|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_2|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_2|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_0|count[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_2|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_2|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_2|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_2|Add1~34\ : std_logic;
SIGNAL \pwm_2|Add1~22\ : std_logic;
SIGNAL \pwm_2|Add1~26\ : std_logic;
SIGNAL \pwm_2|Add1~2\ : std_logic;
SIGNAL \pwm_2|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_2|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_2|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_2|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_2|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_2|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_2|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_2|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_2|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_2|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_2|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_2|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_3|Mult0~19\ : std_logic;
SIGNAL \pwm_3|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~18\ : std_logic;
SIGNAL \pwm_3|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~17\ : std_logic;
SIGNAL \pwm_3|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_3|Add1~62\ : std_logic;
SIGNAL \pwm_3|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_3|Mult0~29\ : std_logic;
SIGNAL \pwm_3|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~28\ : std_logic;
SIGNAL \pwm_3|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~27\ : std_logic;
SIGNAL \pwm_3|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~26\ : std_logic;
SIGNAL \pwm_3|half_duty_new[9]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~25\ : std_logic;
SIGNAL \pwm_3|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~24\ : std_logic;
SIGNAL \pwm_3|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~23\ : std_logic;
SIGNAL \pwm_3|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~22\ : std_logic;
SIGNAL \pwm_3|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~21\ : std_logic;
SIGNAL \pwm_3|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~20\ : std_logic;
SIGNAL \pwm_3|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_3|Add1~66\ : std_logic;
SIGNAL \pwm_3|Add1~38\ : std_logic;
SIGNAL \pwm_3|Add1~42\ : std_logic;
SIGNAL \pwm_3|Add1~46\ : std_logic;
SIGNAL \pwm_3|Add1~10\ : std_logic;
SIGNAL \pwm_3|Add1~14\ : std_logic;
SIGNAL \pwm_3|Add1~18\ : std_logic;
SIGNAL \pwm_3|Add1~70\ : std_logic;
SIGNAL \pwm_3|Add1~74\ : std_logic;
SIGNAL \pwm_3|Add1~50\ : std_logic;
SIGNAL \pwm_3|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_3|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_3|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_3|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_3|Mult0~30\ : std_logic;
SIGNAL \pwm_3|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_3|Add1~54\ : std_logic;
SIGNAL \pwm_3|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_3|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_3|Mult0~34\ : std_logic;
SIGNAL \pwm_3|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~33\ : std_logic;
SIGNAL \pwm_3|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~32\ : std_logic;
SIGNAL \pwm_3|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_3|Mult0~31\ : std_logic;
SIGNAL \pwm_3|half_duty_new[14]~feeder_combout\ : std_logic;
SIGNAL \pwm_3|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_3|Add1~58\ : std_logic;
SIGNAL \pwm_3|Add1~30\ : std_logic;
SIGNAL \pwm_3|Add1~34\ : std_logic;
SIGNAL \pwm_3|Add1~22\ : std_logic;
SIGNAL \pwm_3|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_3|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_3|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_3|Mult0~35\ : std_logic;
SIGNAL \pwm_3|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_3|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_3|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_3|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_3|Add1~26\ : std_logic;
SIGNAL \pwm_3|Add1~2\ : std_logic;
SIGNAL \pwm_3|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_3|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_3|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_3|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_4|Mult0~21\ : std_logic;
SIGNAL \pwm_4|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~20\ : std_logic;
SIGNAL \pwm_4|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~19\ : std_logic;
SIGNAL \pwm_4|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~18\ : std_logic;
SIGNAL \pwm_4|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][1]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~17\ : std_logic;
SIGNAL \pwm_4|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_4|Add1~62\ : std_logic;
SIGNAL \pwm_4|Add1~66\ : std_logic;
SIGNAL \pwm_4|Add1~38\ : std_logic;
SIGNAL \pwm_4|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_4|Mult0~22\ : std_logic;
SIGNAL \pwm_4|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_4|Add1~42\ : std_logic;
SIGNAL \pwm_4|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_4|Mult0~32\ : std_logic;
SIGNAL \pwm_4|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~31\ : std_logic;
SIGNAL \pwm_4|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~30\ : std_logic;
SIGNAL \pwm_4|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~29\ : std_logic;
SIGNAL \pwm_4|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~28\ : std_logic;
SIGNAL \pwm_4|half_duty_new[11]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~27\ : std_logic;
SIGNAL \pwm_4|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~26\ : std_logic;
SIGNAL \pwm_4|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~25\ : std_logic;
SIGNAL \pwm_4|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~24\ : std_logic;
SIGNAL \pwm_4|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~23\ : std_logic;
SIGNAL \pwm_4|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_4|Add1~46\ : std_logic;
SIGNAL \pwm_4|Add1~10\ : std_logic;
SIGNAL \pwm_4|Add1~14\ : std_logic;
SIGNAL \pwm_4|Add1~18\ : std_logic;
SIGNAL \pwm_4|Add1~70\ : std_logic;
SIGNAL \pwm_4|Add1~74\ : std_logic;
SIGNAL \pwm_4|Add1~50\ : std_logic;
SIGNAL \pwm_4|Add1~54\ : std_logic;
SIGNAL \pwm_4|Add1~58\ : std_logic;
SIGNAL \pwm_4|Add1~30\ : std_logic;
SIGNAL \pwm_4|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_4|Mult0~33\ : std_logic;
SIGNAL \pwm_4|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_4|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_4|Mult0~34\ : std_logic;
SIGNAL \pwm_4|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_4|Mult0~35\ : std_logic;
SIGNAL \pwm_4|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_4|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_4|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_4|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_4|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_4|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_4|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_4|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_4|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_4|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_4|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_4|Add1~34\ : std_logic;
SIGNAL \pwm_4|Add1~22\ : std_logic;
SIGNAL \pwm_4|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_4|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_4|Add1~26\ : std_logic;
SIGNAL \pwm_4|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_4|Add1~2\ : std_logic;
SIGNAL \pwm_4|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_4|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_4|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_5|Mult0~17\ : std_logic;
SIGNAL \pwm_5|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~19\ : std_logic;
SIGNAL \pwm_5|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~18\ : std_logic;
SIGNAL \pwm_5|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_5|Add1~62\ : std_logic;
SIGNAL \pwm_5|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_5|Mult0~30\ : std_logic;
SIGNAL \pwm_5|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~29\ : std_logic;
SIGNAL \pwm_5|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~28\ : std_logic;
SIGNAL \pwm_5|half_duty_new[11]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~27\ : std_logic;
SIGNAL \pwm_5|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~26\ : std_logic;
SIGNAL \pwm_5|half_duty_new[9]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~25\ : std_logic;
SIGNAL \pwm_5|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~24\ : std_logic;
SIGNAL \pwm_5|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~23\ : std_logic;
SIGNAL \pwm_5|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~22\ : std_logic;
SIGNAL \pwm_5|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~21\ : std_logic;
SIGNAL \pwm_5|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~20\ : std_logic;
SIGNAL \pwm_5|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_5|Add1~66\ : std_logic;
SIGNAL \pwm_5|Add1~38\ : std_logic;
SIGNAL \pwm_5|Add1~42\ : std_logic;
SIGNAL \pwm_5|Add1~46\ : std_logic;
SIGNAL \pwm_5|Add1~10\ : std_logic;
SIGNAL \pwm_5|Add1~14\ : std_logic;
SIGNAL \pwm_5|Add1~18\ : std_logic;
SIGNAL \pwm_5|Add1~70\ : std_logic;
SIGNAL \pwm_5|Add1~74\ : std_logic;
SIGNAL \pwm_5|Add1~50\ : std_logic;
SIGNAL \pwm_5|Add1~54\ : std_logic;
SIGNAL \pwm_5|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_5|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_5|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_5|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_5|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_5|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_5|Mult0~32\ : std_logic;
SIGNAL \pwm_5|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~33\ : std_logic;
SIGNAL \pwm_5|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~31\ : std_logic;
SIGNAL \pwm_5|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_5|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_5|Mult0~35\ : std_logic;
SIGNAL \pwm_5|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_5|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_5|Mult0~34\ : std_logic;
SIGNAL \pwm_5|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_5|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_5|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_5|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_5|Add1~58\ : std_logic;
SIGNAL \pwm_5|Add1~30\ : std_logic;
SIGNAL \pwm_5|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_5|Add1~34\ : std_logic;
SIGNAL \pwm_5|Add1~22\ : std_logic;
SIGNAL \pwm_5|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_5|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_5|Add1~26\ : std_logic;
SIGNAL \pwm_5|Add1~2\ : std_logic;
SIGNAL \pwm_5|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_5|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_5|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_5|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~32\ : std_logic;
SIGNAL \pwm_6|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~33\ : std_logic;
SIGNAL \pwm_6|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~31\ : std_logic;
SIGNAL \pwm_6|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~29\ : std_logic;
SIGNAL \pwm_6|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~30\ : std_logic;
SIGNAL \pwm_6|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~28\ : std_logic;
SIGNAL \pwm_6|half_duty_new[11]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~27\ : std_logic;
SIGNAL \pwm_6|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~26\ : std_logic;
SIGNAL \pwm_6|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~25\ : std_logic;
SIGNAL \pwm_6|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~20\ : std_logic;
SIGNAL \pwm_6|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~19\ : std_logic;
SIGNAL \pwm_6|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~21\ : std_logic;
SIGNAL \pwm_6|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~18\ : std_logic;
SIGNAL \pwm_6|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~17\ : std_logic;
SIGNAL \pwm_6|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~22\ : std_logic;
SIGNAL \pwm_6|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~23\ : std_logic;
SIGNAL \pwm_6|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~24\ : std_logic;
SIGNAL \pwm_6|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_6|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_6|Mult0~35\ : std_logic;
SIGNAL \pwm_6|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_6|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_6|Mult0~34\ : std_logic;
SIGNAL \pwm_6|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_6|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_6|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_6|Add1~62\ : std_logic;
SIGNAL \pwm_6|Add1~66\ : std_logic;
SIGNAL \pwm_6|Add1~38\ : std_logic;
SIGNAL \pwm_6|Add1~42\ : std_logic;
SIGNAL \pwm_6|Add1~46\ : std_logic;
SIGNAL \pwm_6|Add1~10\ : std_logic;
SIGNAL \pwm_6|Add1~14\ : std_logic;
SIGNAL \pwm_6|Add1~18\ : std_logic;
SIGNAL \pwm_6|Add1~70\ : std_logic;
SIGNAL \pwm_6|Add1~74\ : std_logic;
SIGNAL \pwm_6|Add1~50\ : std_logic;
SIGNAL \pwm_6|Add1~54\ : std_logic;
SIGNAL \pwm_6|Add1~58\ : std_logic;
SIGNAL \pwm_6|Add1~30\ : std_logic;
SIGNAL \pwm_6|Add1~34\ : std_logic;
SIGNAL \pwm_6|Add1~22\ : std_logic;
SIGNAL \pwm_6|Add1~26\ : std_logic;
SIGNAL \pwm_6|Add1~2\ : std_logic;
SIGNAL \pwm_6|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_6|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_6|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_6|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_6|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_6|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_6|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_6|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_6|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_6|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_6|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_6|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_6|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_6|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_6|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_7|Mult0~23\ : std_logic;
SIGNAL \pwm_7|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~22\ : std_logic;
SIGNAL \pwm_7|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~21\ : std_logic;
SIGNAL \pwm_7|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~20\ : std_logic;
SIGNAL \pwm_7|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~19\ : std_logic;
SIGNAL \pwm_7|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~18\ : std_logic;
SIGNAL \pwm_7|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][1]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~17\ : std_logic;
SIGNAL \pwm_7|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_7|Add1~62\ : std_logic;
SIGNAL \pwm_7|Add1~66\ : std_logic;
SIGNAL \pwm_7|Add1~38\ : std_logic;
SIGNAL \pwm_7|Add1~42\ : std_logic;
SIGNAL \pwm_7|Add1~46\ : std_logic;
SIGNAL \pwm_7|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_7|Mult0~25\ : std_logic;
SIGNAL \pwm_7|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~24\ : std_logic;
SIGNAL \pwm_7|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_7|Add1~10\ : std_logic;
SIGNAL \pwm_7|Add1~14\ : std_logic;
SIGNAL \pwm_7|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_7|Mult0~35\ : std_logic;
SIGNAL \pwm_7|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~34\ : std_logic;
SIGNAL \pwm_7|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~33\ : std_logic;
SIGNAL \pwm_7|half_duty_new[16]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~32\ : std_logic;
SIGNAL \pwm_7|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~31\ : std_logic;
SIGNAL \pwm_7|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~30\ : std_logic;
SIGNAL \pwm_7|half_duty_new[13]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~29\ : std_logic;
SIGNAL \pwm_7|half_duty_new[12]~feeder_combout\ : std_logic;
SIGNAL \pwm_7|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~28\ : std_logic;
SIGNAL \pwm_7|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~27\ : std_logic;
SIGNAL \pwm_7|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_7|Mult0~26\ : std_logic;
SIGNAL \pwm_7|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_7|Add1~18\ : std_logic;
SIGNAL \pwm_7|Add1~70\ : std_logic;
SIGNAL \pwm_7|Add1~74\ : std_logic;
SIGNAL \pwm_7|Add1~50\ : std_logic;
SIGNAL \pwm_7|Add1~54\ : std_logic;
SIGNAL \pwm_7|Add1~58\ : std_logic;
SIGNAL \pwm_7|Add1~30\ : std_logic;
SIGNAL \pwm_7|Add1~34\ : std_logic;
SIGNAL \pwm_7|Add1~22\ : std_logic;
SIGNAL \pwm_7|Add1~26\ : std_logic;
SIGNAL \pwm_7|Add1~2\ : std_logic;
SIGNAL \pwm_7|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_7|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_7|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_7|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_7|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_7|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_7|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_7|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_7|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_7|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_7|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_7|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_7|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_7|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_7|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_8|Mult0~22\ : std_logic;
SIGNAL \pwm_8|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~21\ : std_logic;
SIGNAL \pwm_8|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~20\ : std_logic;
SIGNAL \pwm_8|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~19\ : std_logic;
SIGNAL \pwm_8|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~18\ : std_logic;
SIGNAL \pwm_8|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][1]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~17\ : std_logic;
SIGNAL \pwm_8|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_8|Add1~62\ : std_logic;
SIGNAL \pwm_8|Add1~66\ : std_logic;
SIGNAL \pwm_8|Add1~38\ : std_logic;
SIGNAL \pwm_8|Add1~42\ : std_logic;
SIGNAL \pwm_8|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_8|Mult0~32\ : std_logic;
SIGNAL \pwm_8|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~31\ : std_logic;
SIGNAL \pwm_8|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~30\ : std_logic;
SIGNAL \pwm_8|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~29\ : std_logic;
SIGNAL \pwm_8|half_duty_new[12]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~28\ : std_logic;
SIGNAL \pwm_8|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~27\ : std_logic;
SIGNAL \pwm_8|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~26\ : std_logic;
SIGNAL \pwm_8|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~25\ : std_logic;
SIGNAL \pwm_8|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~24\ : std_logic;
SIGNAL \pwm_8|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~23\ : std_logic;
SIGNAL \pwm_8|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_8|Add1~46\ : std_logic;
SIGNAL \pwm_8|Add1~10\ : std_logic;
SIGNAL \pwm_8|Add1~14\ : std_logic;
SIGNAL \pwm_8|Add1~18\ : std_logic;
SIGNAL \pwm_8|Add1~70\ : std_logic;
SIGNAL \pwm_8|Add1~74\ : std_logic;
SIGNAL \pwm_8|Add1~50\ : std_logic;
SIGNAL \pwm_8|Add1~54\ : std_logic;
SIGNAL \pwm_8|Add1~58\ : std_logic;
SIGNAL \pwm_8|Add1~30\ : std_logic;
SIGNAL \pwm_8|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_8|Mult0~35\ : std_logic;
SIGNAL \pwm_8|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_8|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_8|Mult0~34\ : std_logic;
SIGNAL \pwm_8|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_8|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_8|Mult0~33\ : std_logic;
SIGNAL \pwm_8|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_8|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_8|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_8|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_8|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_8|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_8|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_8|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_8|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_8|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_8|Add1~34\ : std_logic;
SIGNAL \pwm_8|Add1~22\ : std_logic;
SIGNAL \pwm_8|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_8|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_8|Add1~26\ : std_logic;
SIGNAL \pwm_8|Add1~2\ : std_logic;
SIGNAL \pwm_8|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_8|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_8|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_8|pwm_out~8_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~25\ : std_logic;
SIGNAL \pwm_9|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~27\ : std_logic;
SIGNAL \pwm_9|half_duty_new[10]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~26\ : std_logic;
SIGNAL \pwm_9|half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~3_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~34\ : std_logic;
SIGNAL \pwm_9|half_duty_new[17]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~35\ : std_logic;
SIGNAL \pwm_9|half_duty_new[18]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~30\ : std_logic;
SIGNAL \pwm_9|half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~28\ : std_logic;
SIGNAL \pwm_9|half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~29\ : std_logic;
SIGNAL \pwm_9|half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~2_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~32\ : std_logic;
SIGNAL \pwm_9|half_duty_new[15]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~33\ : std_logic;
SIGNAL \pwm_9|half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~31\ : std_logic;
SIGNAL \pwm_9|half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~1_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~24\ : std_logic;
SIGNAL \pwm_9|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~23\ : std_logic;
SIGNAL \pwm_9|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~22\ : std_logic;
SIGNAL \pwm_9|half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~4_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~20\ : std_logic;
SIGNAL \pwm_9|half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~19\ : std_logic;
SIGNAL \pwm_9|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~6_combout\ : std_logic;
SIGNAL \pwm_9|Mult0~21\ : std_logic;
SIGNAL \pwm_9|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~17\ : std_logic;
SIGNAL \pwm_9|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_9|Mult0~18\ : std_logic;
SIGNAL \pwm_9|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][1]~feeder_combout\ : std_logic;
SIGNAL \pwm_9|half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_9|Equal1~5_combout\ : std_logic;
SIGNAL \pwm_9|Equal1~7_combout\ : std_logic;
SIGNAL \pwm_9|Equal1~8_combout\ : std_logic;
SIGNAL \pwm_9|Add1~62\ : std_logic;
SIGNAL \pwm_9|Add1~66\ : std_logic;
SIGNAL \pwm_9|Add1~38\ : std_logic;
SIGNAL \pwm_9|Add1~42\ : std_logic;
SIGNAL \pwm_9|Add1~46\ : std_logic;
SIGNAL \pwm_9|Add1~10\ : std_logic;
SIGNAL \pwm_9|Add1~14\ : std_logic;
SIGNAL \pwm_9|Add1~18\ : std_logic;
SIGNAL \pwm_9|Add1~70\ : std_logic;
SIGNAL \pwm_9|Add1~74\ : std_logic;
SIGNAL \pwm_9|Add1~50\ : std_logic;
SIGNAL \pwm_9|Add1~54\ : std_logic;
SIGNAL \pwm_9|Add1~58\ : std_logic;
SIGNAL \pwm_9|Add1~30\ : std_logic;
SIGNAL \pwm_9|Add1~34\ : std_logic;
SIGNAL \pwm_9|Add1~22\ : std_logic;
SIGNAL \pwm_9|Add1~25_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~21_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_9|Add1~26\ : std_logic;
SIGNAL \pwm_9|Add1~1_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~2\ : std_logic;
SIGNAL \pwm_9|Add1~5_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~9_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~17_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~13_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_9|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_9|Add1~45_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~41_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~37_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_9|Add1~33_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~29_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_9|Add1~57_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~49_sumout\ : std_logic;
SIGNAL \pwm_9|Equal2~0_combout\ : std_logic;
SIGNAL \pwm_9|Add1~73_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~69_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_9|Add1~53_sumout\ : std_logic;
SIGNAL \pwm_9|Equal2~1_combout\ : std_logic;
SIGNAL \pwm_9|Add1~61_sumout\ : std_logic;
SIGNAL \pwm_9|Add1~65_sumout\ : std_logic;
SIGNAL \pwm_9|pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_9|pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_9|pwm_out~8_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|bcd~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[2]~1_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[3]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit1[1]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux0~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux1~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux2~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux3~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux4~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux5~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|LSB_segment7|Mux6~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[2]~2_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[0]~0_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[3]~3_combout\ : std_logic;
SIGNAL \quad_segment7_1|digit2[1]~1_combout\ : std_logic;
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
SIGNAL \pwm_6|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_7|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_0|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_1|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_2|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_3|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_4|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_5|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_7|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_8|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_9|half_duty_new\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm_0|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_1|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_2|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_3|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_4|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_5|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_6|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_8|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_9|pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_0|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty_new\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \pwm_8|ALT_INV_half_duty_new\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \pwm_7|ALT_INV_half_duty_new\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \pwm_4|ALT_INV_half_duty_new\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \pwm_2|ALT_INV_half_duty_new\ : std_logic_vector(17 DOWNTO 17);
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][10]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][9]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][2]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][1]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][0]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][12]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][11]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][13]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][5]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][4]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][3]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][15]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][14]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][17]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][16]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][8]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][7]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][6]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][18]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][19]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][16]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_enable_pwm~input_o\ : std_logic;
SIGNAL \ALT_INV_changedown~input_o\ : std_logic;
SIGNAL \ALT_INV_changeup~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_pwm~input_o\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_lastChangedown~q\ : std_logic;
SIGNAL \ALT_INV_lastChangeup~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_8|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_7|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_6|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_5|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_4|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_3|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_2|ALT_INV_pwm_out~0_combout\ : std_logic;
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
SIGNAL \pwm_1|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_1|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][3]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][2]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][1]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][7]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][6]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][5]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][4]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][10]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][9]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][8]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][13]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][12]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][11]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][16]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][15]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][14]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][18]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][17]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~7_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~6_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~5_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_half_duty[0][0]~q\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~4_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_0|ALT_INV_pwm_out~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_duty_value[6]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1]~_Duplicate_10_q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0]~_Duplicate_10_q\ : std_logic;
SIGNAL \pwm_9|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_8|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_7|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_6|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_5|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_4|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_3|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_2|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_1|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_0|ALT_INV_pwm_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwm_9|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_9|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_8|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_7|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_6|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_5|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm_4|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_3|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_2|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm_1|ALT_INV_Mult0~18\ : std_logic;

BEGIN

ww_clk <= clk;
pwm_output_0 <= ww_pwm_output_0;
pwm_output_1 <= ww_pwm_output_1;
pwm_output_2 <= ww_pwm_output_2;
pwm_output_3 <= ww_pwm_output_3;
pwm_output_4 <= ww_pwm_output_4;
pwm_output_5 <= ww_pwm_output_5;
pwm_output_6 <= ww_pwm_output_6;
pwm_output_7 <= ww_pwm_output_7;
pwm_output_8 <= ww_pwm_output_8;
pwm_output_9 <= ww_pwm_output_9;
ww_enable_pwm <= enable_pwm;
ww_reset_pwm <= reset_pwm;
ww_changeup <= changeup;
ww_changedown <= changedown;
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

\pwm_0|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_0|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_0|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_0|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_0|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_0|Mult0~8_resulta\ <= \pwm_0|Mult0~8_RESULTA_bus\(0);
\pwm_0|Mult0~9\ <= \pwm_0|Mult0~8_RESULTA_bus\(1);
\pwm_0|Mult0~10\ <= \pwm_0|Mult0~8_RESULTA_bus\(2);
\pwm_0|Mult0~11\ <= \pwm_0|Mult0~8_RESULTA_bus\(3);
\pwm_0|Mult0~12\ <= \pwm_0|Mult0~8_RESULTA_bus\(4);
\pwm_0|Mult0~13\ <= \pwm_0|Mult0~8_RESULTA_bus\(5);
\pwm_0|Mult0~14\ <= \pwm_0|Mult0~8_RESULTA_bus\(6);
\pwm_0|Mult0~15\ <= \pwm_0|Mult0~8_RESULTA_bus\(7);
\pwm_0|Mult0~16\ <= \pwm_0|Mult0~8_RESULTA_bus\(8);
\pwm_0|Mult0~17\ <= \pwm_0|Mult0~8_RESULTA_bus\(9);
\pwm_0|Mult0~18\ <= \pwm_0|Mult0~8_RESULTA_bus\(10);
\pwm_0|Mult0~19\ <= \pwm_0|Mult0~8_RESULTA_bus\(11);
\pwm_0|Mult0~20\ <= \pwm_0|Mult0~8_RESULTA_bus\(12);
\pwm_0|Mult0~21\ <= \pwm_0|Mult0~8_RESULTA_bus\(13);
\pwm_0|Mult0~22\ <= \pwm_0|Mult0~8_RESULTA_bus\(14);
\pwm_0|Mult0~23\ <= \pwm_0|Mult0~8_RESULTA_bus\(15);
\pwm_0|Mult0~24\ <= \pwm_0|Mult0~8_RESULTA_bus\(16);
\pwm_0|Mult0~25\ <= \pwm_0|Mult0~8_RESULTA_bus\(17);
\pwm_0|Mult0~26\ <= \pwm_0|Mult0~8_RESULTA_bus\(18);
\pwm_0|Mult0~27\ <= \pwm_0|Mult0~8_RESULTA_bus\(19);
\pwm_0|Mult0~28\ <= \pwm_0|Mult0~8_RESULTA_bus\(20);
\pwm_0|Mult0~29\ <= \pwm_0|Mult0~8_RESULTA_bus\(21);
\pwm_0|Mult0~30\ <= \pwm_0|Mult0~8_RESULTA_bus\(22);
\pwm_0|Mult0~31\ <= \pwm_0|Mult0~8_RESULTA_bus\(23);
\pwm_0|Mult0~32\ <= \pwm_0|Mult0~8_RESULTA_bus\(24);
\pwm_0|Mult0~33\ <= \pwm_0|Mult0~8_RESULTA_bus\(25);
\pwm_0|Mult0~34\ <= \pwm_0|Mult0~8_RESULTA_bus\(26);
\pwm_0|Mult0~35\ <= \pwm_0|Mult0~8_RESULTA_bus\(27);
\pwm_0|Mult0~36\ <= \pwm_0|Mult0~8_RESULTA_bus\(28);
\pwm_0|Mult0~37\ <= \pwm_0|Mult0~8_RESULTA_bus\(29);
\pwm_0|Mult0~38\ <= \pwm_0|Mult0~8_RESULTA_bus\(30);
\pwm_0|Mult0~39\ <= \pwm_0|Mult0~8_RESULTA_bus\(31);
\pwm_0|Mult0~40\ <= \pwm_0|Mult0~8_RESULTA_bus\(32);
\pwm_0|Mult0~41\ <= \pwm_0|Mult0~8_RESULTA_bus\(33);
\pwm_0|Mult0~42\ <= \pwm_0|Mult0~8_RESULTA_bus\(34);
\pwm_0|Mult0~43\ <= \pwm_0|Mult0~8_RESULTA_bus\(35);
\pwm_0|Mult0~44\ <= \pwm_0|Mult0~8_RESULTA_bus\(36);
\pwm_0|Mult0~45\ <= \pwm_0|Mult0~8_RESULTA_bus\(37);
\pwm_0|Mult0~46\ <= \pwm_0|Mult0~8_RESULTA_bus\(38);
\pwm_0|Mult0~47\ <= \pwm_0|Mult0~8_RESULTA_bus\(39);
\pwm_0|Mult0~48\ <= \pwm_0|Mult0~8_RESULTA_bus\(40);
\pwm_0|Mult0~49\ <= \pwm_0|Mult0~8_RESULTA_bus\(41);
\pwm_0|Mult0~50\ <= \pwm_0|Mult0~8_RESULTA_bus\(42);
\pwm_0|Mult0~51\ <= \pwm_0|Mult0~8_RESULTA_bus\(43);
\pwm_0|Mult0~52\ <= \pwm_0|Mult0~8_RESULTA_bus\(44);
\pwm_0|Mult0~53\ <= \pwm_0|Mult0~8_RESULTA_bus\(45);
\pwm_0|Mult0~54\ <= \pwm_0|Mult0~8_RESULTA_bus\(46);
\pwm_0|Mult0~55\ <= \pwm_0|Mult0~8_RESULTA_bus\(47);
\pwm_0|Mult0~56\ <= \pwm_0|Mult0~8_RESULTA_bus\(48);
\pwm_0|Mult0~57\ <= \pwm_0|Mult0~8_RESULTA_bus\(49);
\pwm_0|Mult0~58\ <= \pwm_0|Mult0~8_RESULTA_bus\(50);
\pwm_0|Mult0~59\ <= \pwm_0|Mult0~8_RESULTA_bus\(51);
\pwm_0|Mult0~60\ <= \pwm_0|Mult0~8_RESULTA_bus\(52);
\pwm_0|Mult0~61\ <= \pwm_0|Mult0~8_RESULTA_bus\(53);
\pwm_0|Mult0~62\ <= \pwm_0|Mult0~8_RESULTA_bus\(54);
\pwm_0|Mult0~63\ <= \pwm_0|Mult0~8_RESULTA_bus\(55);
\pwm_0|Mult0~64\ <= \pwm_0|Mult0~8_RESULTA_bus\(56);
\pwm_0|Mult0~65\ <= \pwm_0|Mult0~8_RESULTA_bus\(57);
\pwm_0|Mult0~66\ <= \pwm_0|Mult0~8_RESULTA_bus\(58);
\pwm_0|Mult0~67\ <= \pwm_0|Mult0~8_RESULTA_bus\(59);
\pwm_0|Mult0~68\ <= \pwm_0|Mult0~8_RESULTA_bus\(60);
\pwm_0|Mult0~69\ <= \pwm_0|Mult0~8_RESULTA_bus\(61);
\pwm_0|Mult0~70\ <= \pwm_0|Mult0~8_RESULTA_bus\(62);
\pwm_0|Mult0~71\ <= \pwm_0|Mult0~8_RESULTA_bus\(63);

\pwm_1|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_1|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_1|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_1|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_1|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

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

\pwm_2|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_2|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_2|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_2|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_2|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_2|Mult0~8_resulta\ <= \pwm_2|Mult0~8_RESULTA_bus\(0);
\pwm_2|Mult0~9\ <= \pwm_2|Mult0~8_RESULTA_bus\(1);
\pwm_2|Mult0~10\ <= \pwm_2|Mult0~8_RESULTA_bus\(2);
\pwm_2|Mult0~11\ <= \pwm_2|Mult0~8_RESULTA_bus\(3);
\pwm_2|Mult0~12\ <= \pwm_2|Mult0~8_RESULTA_bus\(4);
\pwm_2|Mult0~13\ <= \pwm_2|Mult0~8_RESULTA_bus\(5);
\pwm_2|Mult0~14\ <= \pwm_2|Mult0~8_RESULTA_bus\(6);
\pwm_2|Mult0~15\ <= \pwm_2|Mult0~8_RESULTA_bus\(7);
\pwm_2|Mult0~16\ <= \pwm_2|Mult0~8_RESULTA_bus\(8);
\pwm_2|Mult0~17\ <= \pwm_2|Mult0~8_RESULTA_bus\(9);
\pwm_2|Mult0~18\ <= \pwm_2|Mult0~8_RESULTA_bus\(10);
\pwm_2|Mult0~19\ <= \pwm_2|Mult0~8_RESULTA_bus\(11);
\pwm_2|Mult0~20\ <= \pwm_2|Mult0~8_RESULTA_bus\(12);
\pwm_2|Mult0~21\ <= \pwm_2|Mult0~8_RESULTA_bus\(13);
\pwm_2|Mult0~22\ <= \pwm_2|Mult0~8_RESULTA_bus\(14);
\pwm_2|Mult0~23\ <= \pwm_2|Mult0~8_RESULTA_bus\(15);
\pwm_2|Mult0~24\ <= \pwm_2|Mult0~8_RESULTA_bus\(16);
\pwm_2|Mult0~25\ <= \pwm_2|Mult0~8_RESULTA_bus\(17);
\pwm_2|Mult0~26\ <= \pwm_2|Mult0~8_RESULTA_bus\(18);
\pwm_2|Mult0~27\ <= \pwm_2|Mult0~8_RESULTA_bus\(19);
\pwm_2|Mult0~28\ <= \pwm_2|Mult0~8_RESULTA_bus\(20);
\pwm_2|Mult0~29\ <= \pwm_2|Mult0~8_RESULTA_bus\(21);
\pwm_2|Mult0~30\ <= \pwm_2|Mult0~8_RESULTA_bus\(22);
\pwm_2|Mult0~31\ <= \pwm_2|Mult0~8_RESULTA_bus\(23);
\pwm_2|Mult0~32\ <= \pwm_2|Mult0~8_RESULTA_bus\(24);
\pwm_2|Mult0~33\ <= \pwm_2|Mult0~8_RESULTA_bus\(25);
\pwm_2|Mult0~34\ <= \pwm_2|Mult0~8_RESULTA_bus\(26);
\pwm_2|Mult0~35\ <= \pwm_2|Mult0~8_RESULTA_bus\(27);
\pwm_2|Mult0~36\ <= \pwm_2|Mult0~8_RESULTA_bus\(28);
\pwm_2|Mult0~37\ <= \pwm_2|Mult0~8_RESULTA_bus\(29);
\pwm_2|Mult0~38\ <= \pwm_2|Mult0~8_RESULTA_bus\(30);
\pwm_2|Mult0~39\ <= \pwm_2|Mult0~8_RESULTA_bus\(31);
\pwm_2|Mult0~40\ <= \pwm_2|Mult0~8_RESULTA_bus\(32);
\pwm_2|Mult0~41\ <= \pwm_2|Mult0~8_RESULTA_bus\(33);
\pwm_2|Mult0~42\ <= \pwm_2|Mult0~8_RESULTA_bus\(34);
\pwm_2|Mult0~43\ <= \pwm_2|Mult0~8_RESULTA_bus\(35);
\pwm_2|Mult0~44\ <= \pwm_2|Mult0~8_RESULTA_bus\(36);
\pwm_2|Mult0~45\ <= \pwm_2|Mult0~8_RESULTA_bus\(37);
\pwm_2|Mult0~46\ <= \pwm_2|Mult0~8_RESULTA_bus\(38);
\pwm_2|Mult0~47\ <= \pwm_2|Mult0~8_RESULTA_bus\(39);
\pwm_2|Mult0~48\ <= \pwm_2|Mult0~8_RESULTA_bus\(40);
\pwm_2|Mult0~49\ <= \pwm_2|Mult0~8_RESULTA_bus\(41);
\pwm_2|Mult0~50\ <= \pwm_2|Mult0~8_RESULTA_bus\(42);
\pwm_2|Mult0~51\ <= \pwm_2|Mult0~8_RESULTA_bus\(43);
\pwm_2|Mult0~52\ <= \pwm_2|Mult0~8_RESULTA_bus\(44);
\pwm_2|Mult0~53\ <= \pwm_2|Mult0~8_RESULTA_bus\(45);
\pwm_2|Mult0~54\ <= \pwm_2|Mult0~8_RESULTA_bus\(46);
\pwm_2|Mult0~55\ <= \pwm_2|Mult0~8_RESULTA_bus\(47);
\pwm_2|Mult0~56\ <= \pwm_2|Mult0~8_RESULTA_bus\(48);
\pwm_2|Mult0~57\ <= \pwm_2|Mult0~8_RESULTA_bus\(49);
\pwm_2|Mult0~58\ <= \pwm_2|Mult0~8_RESULTA_bus\(50);
\pwm_2|Mult0~59\ <= \pwm_2|Mult0~8_RESULTA_bus\(51);
\pwm_2|Mult0~60\ <= \pwm_2|Mult0~8_RESULTA_bus\(52);
\pwm_2|Mult0~61\ <= \pwm_2|Mult0~8_RESULTA_bus\(53);
\pwm_2|Mult0~62\ <= \pwm_2|Mult0~8_RESULTA_bus\(54);
\pwm_2|Mult0~63\ <= \pwm_2|Mult0~8_RESULTA_bus\(55);
\pwm_2|Mult0~64\ <= \pwm_2|Mult0~8_RESULTA_bus\(56);
\pwm_2|Mult0~65\ <= \pwm_2|Mult0~8_RESULTA_bus\(57);
\pwm_2|Mult0~66\ <= \pwm_2|Mult0~8_RESULTA_bus\(58);
\pwm_2|Mult0~67\ <= \pwm_2|Mult0~8_RESULTA_bus\(59);
\pwm_2|Mult0~68\ <= \pwm_2|Mult0~8_RESULTA_bus\(60);
\pwm_2|Mult0~69\ <= \pwm_2|Mult0~8_RESULTA_bus\(61);
\pwm_2|Mult0~70\ <= \pwm_2|Mult0~8_RESULTA_bus\(62);
\pwm_2|Mult0~71\ <= \pwm_2|Mult0~8_RESULTA_bus\(63);

\pwm_3|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_3|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_3|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_3|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_3|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_3|Mult0~8_resulta\ <= \pwm_3|Mult0~8_RESULTA_bus\(0);
\pwm_3|Mult0~9\ <= \pwm_3|Mult0~8_RESULTA_bus\(1);
\pwm_3|Mult0~10\ <= \pwm_3|Mult0~8_RESULTA_bus\(2);
\pwm_3|Mult0~11\ <= \pwm_3|Mult0~8_RESULTA_bus\(3);
\pwm_3|Mult0~12\ <= \pwm_3|Mult0~8_RESULTA_bus\(4);
\pwm_3|Mult0~13\ <= \pwm_3|Mult0~8_RESULTA_bus\(5);
\pwm_3|Mult0~14\ <= \pwm_3|Mult0~8_RESULTA_bus\(6);
\pwm_3|Mult0~15\ <= \pwm_3|Mult0~8_RESULTA_bus\(7);
\pwm_3|Mult0~16\ <= \pwm_3|Mult0~8_RESULTA_bus\(8);
\pwm_3|Mult0~17\ <= \pwm_3|Mult0~8_RESULTA_bus\(9);
\pwm_3|Mult0~18\ <= \pwm_3|Mult0~8_RESULTA_bus\(10);
\pwm_3|Mult0~19\ <= \pwm_3|Mult0~8_RESULTA_bus\(11);
\pwm_3|Mult0~20\ <= \pwm_3|Mult0~8_RESULTA_bus\(12);
\pwm_3|Mult0~21\ <= \pwm_3|Mult0~8_RESULTA_bus\(13);
\pwm_3|Mult0~22\ <= \pwm_3|Mult0~8_RESULTA_bus\(14);
\pwm_3|Mult0~23\ <= \pwm_3|Mult0~8_RESULTA_bus\(15);
\pwm_3|Mult0~24\ <= \pwm_3|Mult0~8_RESULTA_bus\(16);
\pwm_3|Mult0~25\ <= \pwm_3|Mult0~8_RESULTA_bus\(17);
\pwm_3|Mult0~26\ <= \pwm_3|Mult0~8_RESULTA_bus\(18);
\pwm_3|Mult0~27\ <= \pwm_3|Mult0~8_RESULTA_bus\(19);
\pwm_3|Mult0~28\ <= \pwm_3|Mult0~8_RESULTA_bus\(20);
\pwm_3|Mult0~29\ <= \pwm_3|Mult0~8_RESULTA_bus\(21);
\pwm_3|Mult0~30\ <= \pwm_3|Mult0~8_RESULTA_bus\(22);
\pwm_3|Mult0~31\ <= \pwm_3|Mult0~8_RESULTA_bus\(23);
\pwm_3|Mult0~32\ <= \pwm_3|Mult0~8_RESULTA_bus\(24);
\pwm_3|Mult0~33\ <= \pwm_3|Mult0~8_RESULTA_bus\(25);
\pwm_3|Mult0~34\ <= \pwm_3|Mult0~8_RESULTA_bus\(26);
\pwm_3|Mult0~35\ <= \pwm_3|Mult0~8_RESULTA_bus\(27);
\pwm_3|Mult0~36\ <= \pwm_3|Mult0~8_RESULTA_bus\(28);
\pwm_3|Mult0~37\ <= \pwm_3|Mult0~8_RESULTA_bus\(29);
\pwm_3|Mult0~38\ <= \pwm_3|Mult0~8_RESULTA_bus\(30);
\pwm_3|Mult0~39\ <= \pwm_3|Mult0~8_RESULTA_bus\(31);
\pwm_3|Mult0~40\ <= \pwm_3|Mult0~8_RESULTA_bus\(32);
\pwm_3|Mult0~41\ <= \pwm_3|Mult0~8_RESULTA_bus\(33);
\pwm_3|Mult0~42\ <= \pwm_3|Mult0~8_RESULTA_bus\(34);
\pwm_3|Mult0~43\ <= \pwm_3|Mult0~8_RESULTA_bus\(35);
\pwm_3|Mult0~44\ <= \pwm_3|Mult0~8_RESULTA_bus\(36);
\pwm_3|Mult0~45\ <= \pwm_3|Mult0~8_RESULTA_bus\(37);
\pwm_3|Mult0~46\ <= \pwm_3|Mult0~8_RESULTA_bus\(38);
\pwm_3|Mult0~47\ <= \pwm_3|Mult0~8_RESULTA_bus\(39);
\pwm_3|Mult0~48\ <= \pwm_3|Mult0~8_RESULTA_bus\(40);
\pwm_3|Mult0~49\ <= \pwm_3|Mult0~8_RESULTA_bus\(41);
\pwm_3|Mult0~50\ <= \pwm_3|Mult0~8_RESULTA_bus\(42);
\pwm_3|Mult0~51\ <= \pwm_3|Mult0~8_RESULTA_bus\(43);
\pwm_3|Mult0~52\ <= \pwm_3|Mult0~8_RESULTA_bus\(44);
\pwm_3|Mult0~53\ <= \pwm_3|Mult0~8_RESULTA_bus\(45);
\pwm_3|Mult0~54\ <= \pwm_3|Mult0~8_RESULTA_bus\(46);
\pwm_3|Mult0~55\ <= \pwm_3|Mult0~8_RESULTA_bus\(47);
\pwm_3|Mult0~56\ <= \pwm_3|Mult0~8_RESULTA_bus\(48);
\pwm_3|Mult0~57\ <= \pwm_3|Mult0~8_RESULTA_bus\(49);
\pwm_3|Mult0~58\ <= \pwm_3|Mult0~8_RESULTA_bus\(50);
\pwm_3|Mult0~59\ <= \pwm_3|Mult0~8_RESULTA_bus\(51);
\pwm_3|Mult0~60\ <= \pwm_3|Mult0~8_RESULTA_bus\(52);
\pwm_3|Mult0~61\ <= \pwm_3|Mult0~8_RESULTA_bus\(53);
\pwm_3|Mult0~62\ <= \pwm_3|Mult0~8_RESULTA_bus\(54);
\pwm_3|Mult0~63\ <= \pwm_3|Mult0~8_RESULTA_bus\(55);
\pwm_3|Mult0~64\ <= \pwm_3|Mult0~8_RESULTA_bus\(56);
\pwm_3|Mult0~65\ <= \pwm_3|Mult0~8_RESULTA_bus\(57);
\pwm_3|Mult0~66\ <= \pwm_3|Mult0~8_RESULTA_bus\(58);
\pwm_3|Mult0~67\ <= \pwm_3|Mult0~8_RESULTA_bus\(59);
\pwm_3|Mult0~68\ <= \pwm_3|Mult0~8_RESULTA_bus\(60);
\pwm_3|Mult0~69\ <= \pwm_3|Mult0~8_RESULTA_bus\(61);
\pwm_3|Mult0~70\ <= \pwm_3|Mult0~8_RESULTA_bus\(62);
\pwm_3|Mult0~71\ <= \pwm_3|Mult0~8_RESULTA_bus\(63);

\pwm_4|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_4|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_4|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_4|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_4|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_4|Mult0~8_resulta\ <= \pwm_4|Mult0~8_RESULTA_bus\(0);
\pwm_4|Mult0~9\ <= \pwm_4|Mult0~8_RESULTA_bus\(1);
\pwm_4|Mult0~10\ <= \pwm_4|Mult0~8_RESULTA_bus\(2);
\pwm_4|Mult0~11\ <= \pwm_4|Mult0~8_RESULTA_bus\(3);
\pwm_4|Mult0~12\ <= \pwm_4|Mult0~8_RESULTA_bus\(4);
\pwm_4|Mult0~13\ <= \pwm_4|Mult0~8_RESULTA_bus\(5);
\pwm_4|Mult0~14\ <= \pwm_4|Mult0~8_RESULTA_bus\(6);
\pwm_4|Mult0~15\ <= \pwm_4|Mult0~8_RESULTA_bus\(7);
\pwm_4|Mult0~16\ <= \pwm_4|Mult0~8_RESULTA_bus\(8);
\pwm_4|Mult0~17\ <= \pwm_4|Mult0~8_RESULTA_bus\(9);
\pwm_4|Mult0~18\ <= \pwm_4|Mult0~8_RESULTA_bus\(10);
\pwm_4|Mult0~19\ <= \pwm_4|Mult0~8_RESULTA_bus\(11);
\pwm_4|Mult0~20\ <= \pwm_4|Mult0~8_RESULTA_bus\(12);
\pwm_4|Mult0~21\ <= \pwm_4|Mult0~8_RESULTA_bus\(13);
\pwm_4|Mult0~22\ <= \pwm_4|Mult0~8_RESULTA_bus\(14);
\pwm_4|Mult0~23\ <= \pwm_4|Mult0~8_RESULTA_bus\(15);
\pwm_4|Mult0~24\ <= \pwm_4|Mult0~8_RESULTA_bus\(16);
\pwm_4|Mult0~25\ <= \pwm_4|Mult0~8_RESULTA_bus\(17);
\pwm_4|Mult0~26\ <= \pwm_4|Mult0~8_RESULTA_bus\(18);
\pwm_4|Mult0~27\ <= \pwm_4|Mult0~8_RESULTA_bus\(19);
\pwm_4|Mult0~28\ <= \pwm_4|Mult0~8_RESULTA_bus\(20);
\pwm_4|Mult0~29\ <= \pwm_4|Mult0~8_RESULTA_bus\(21);
\pwm_4|Mult0~30\ <= \pwm_4|Mult0~8_RESULTA_bus\(22);
\pwm_4|Mult0~31\ <= \pwm_4|Mult0~8_RESULTA_bus\(23);
\pwm_4|Mult0~32\ <= \pwm_4|Mult0~8_RESULTA_bus\(24);
\pwm_4|Mult0~33\ <= \pwm_4|Mult0~8_RESULTA_bus\(25);
\pwm_4|Mult0~34\ <= \pwm_4|Mult0~8_RESULTA_bus\(26);
\pwm_4|Mult0~35\ <= \pwm_4|Mult0~8_RESULTA_bus\(27);
\pwm_4|Mult0~36\ <= \pwm_4|Mult0~8_RESULTA_bus\(28);
\pwm_4|Mult0~37\ <= \pwm_4|Mult0~8_RESULTA_bus\(29);
\pwm_4|Mult0~38\ <= \pwm_4|Mult0~8_RESULTA_bus\(30);
\pwm_4|Mult0~39\ <= \pwm_4|Mult0~8_RESULTA_bus\(31);
\pwm_4|Mult0~40\ <= \pwm_4|Mult0~8_RESULTA_bus\(32);
\pwm_4|Mult0~41\ <= \pwm_4|Mult0~8_RESULTA_bus\(33);
\pwm_4|Mult0~42\ <= \pwm_4|Mult0~8_RESULTA_bus\(34);
\pwm_4|Mult0~43\ <= \pwm_4|Mult0~8_RESULTA_bus\(35);
\pwm_4|Mult0~44\ <= \pwm_4|Mult0~8_RESULTA_bus\(36);
\pwm_4|Mult0~45\ <= \pwm_4|Mult0~8_RESULTA_bus\(37);
\pwm_4|Mult0~46\ <= \pwm_4|Mult0~8_RESULTA_bus\(38);
\pwm_4|Mult0~47\ <= \pwm_4|Mult0~8_RESULTA_bus\(39);
\pwm_4|Mult0~48\ <= \pwm_4|Mult0~8_RESULTA_bus\(40);
\pwm_4|Mult0~49\ <= \pwm_4|Mult0~8_RESULTA_bus\(41);
\pwm_4|Mult0~50\ <= \pwm_4|Mult0~8_RESULTA_bus\(42);
\pwm_4|Mult0~51\ <= \pwm_4|Mult0~8_RESULTA_bus\(43);
\pwm_4|Mult0~52\ <= \pwm_4|Mult0~8_RESULTA_bus\(44);
\pwm_4|Mult0~53\ <= \pwm_4|Mult0~8_RESULTA_bus\(45);
\pwm_4|Mult0~54\ <= \pwm_4|Mult0~8_RESULTA_bus\(46);
\pwm_4|Mult0~55\ <= \pwm_4|Mult0~8_RESULTA_bus\(47);
\pwm_4|Mult0~56\ <= \pwm_4|Mult0~8_RESULTA_bus\(48);
\pwm_4|Mult0~57\ <= \pwm_4|Mult0~8_RESULTA_bus\(49);
\pwm_4|Mult0~58\ <= \pwm_4|Mult0~8_RESULTA_bus\(50);
\pwm_4|Mult0~59\ <= \pwm_4|Mult0~8_RESULTA_bus\(51);
\pwm_4|Mult0~60\ <= \pwm_4|Mult0~8_RESULTA_bus\(52);
\pwm_4|Mult0~61\ <= \pwm_4|Mult0~8_RESULTA_bus\(53);
\pwm_4|Mult0~62\ <= \pwm_4|Mult0~8_RESULTA_bus\(54);
\pwm_4|Mult0~63\ <= \pwm_4|Mult0~8_RESULTA_bus\(55);
\pwm_4|Mult0~64\ <= \pwm_4|Mult0~8_RESULTA_bus\(56);
\pwm_4|Mult0~65\ <= \pwm_4|Mult0~8_RESULTA_bus\(57);
\pwm_4|Mult0~66\ <= \pwm_4|Mult0~8_RESULTA_bus\(58);
\pwm_4|Mult0~67\ <= \pwm_4|Mult0~8_RESULTA_bus\(59);
\pwm_4|Mult0~68\ <= \pwm_4|Mult0~8_RESULTA_bus\(60);
\pwm_4|Mult0~69\ <= \pwm_4|Mult0~8_RESULTA_bus\(61);
\pwm_4|Mult0~70\ <= \pwm_4|Mult0~8_RESULTA_bus\(62);
\pwm_4|Mult0~71\ <= \pwm_4|Mult0~8_RESULTA_bus\(63);

\pwm_5|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_5|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_5|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_5|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_5|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_5|Mult0~8_resulta\ <= \pwm_5|Mult0~8_RESULTA_bus\(0);
\pwm_5|Mult0~9\ <= \pwm_5|Mult0~8_RESULTA_bus\(1);
\pwm_5|Mult0~10\ <= \pwm_5|Mult0~8_RESULTA_bus\(2);
\pwm_5|Mult0~11\ <= \pwm_5|Mult0~8_RESULTA_bus\(3);
\pwm_5|Mult0~12\ <= \pwm_5|Mult0~8_RESULTA_bus\(4);
\pwm_5|Mult0~13\ <= \pwm_5|Mult0~8_RESULTA_bus\(5);
\pwm_5|Mult0~14\ <= \pwm_5|Mult0~8_RESULTA_bus\(6);
\pwm_5|Mult0~15\ <= \pwm_5|Mult0~8_RESULTA_bus\(7);
\pwm_5|Mult0~16\ <= \pwm_5|Mult0~8_RESULTA_bus\(8);
\pwm_5|Mult0~17\ <= \pwm_5|Mult0~8_RESULTA_bus\(9);
\pwm_5|Mult0~18\ <= \pwm_5|Mult0~8_RESULTA_bus\(10);
\pwm_5|Mult0~19\ <= \pwm_5|Mult0~8_RESULTA_bus\(11);
\pwm_5|Mult0~20\ <= \pwm_5|Mult0~8_RESULTA_bus\(12);
\pwm_5|Mult0~21\ <= \pwm_5|Mult0~8_RESULTA_bus\(13);
\pwm_5|Mult0~22\ <= \pwm_5|Mult0~8_RESULTA_bus\(14);
\pwm_5|Mult0~23\ <= \pwm_5|Mult0~8_RESULTA_bus\(15);
\pwm_5|Mult0~24\ <= \pwm_5|Mult0~8_RESULTA_bus\(16);
\pwm_5|Mult0~25\ <= \pwm_5|Mult0~8_RESULTA_bus\(17);
\pwm_5|Mult0~26\ <= \pwm_5|Mult0~8_RESULTA_bus\(18);
\pwm_5|Mult0~27\ <= \pwm_5|Mult0~8_RESULTA_bus\(19);
\pwm_5|Mult0~28\ <= \pwm_5|Mult0~8_RESULTA_bus\(20);
\pwm_5|Mult0~29\ <= \pwm_5|Mult0~8_RESULTA_bus\(21);
\pwm_5|Mult0~30\ <= \pwm_5|Mult0~8_RESULTA_bus\(22);
\pwm_5|Mult0~31\ <= \pwm_5|Mult0~8_RESULTA_bus\(23);
\pwm_5|Mult0~32\ <= \pwm_5|Mult0~8_RESULTA_bus\(24);
\pwm_5|Mult0~33\ <= \pwm_5|Mult0~8_RESULTA_bus\(25);
\pwm_5|Mult0~34\ <= \pwm_5|Mult0~8_RESULTA_bus\(26);
\pwm_5|Mult0~35\ <= \pwm_5|Mult0~8_RESULTA_bus\(27);
\pwm_5|Mult0~36\ <= \pwm_5|Mult0~8_RESULTA_bus\(28);
\pwm_5|Mult0~37\ <= \pwm_5|Mult0~8_RESULTA_bus\(29);
\pwm_5|Mult0~38\ <= \pwm_5|Mult0~8_RESULTA_bus\(30);
\pwm_5|Mult0~39\ <= \pwm_5|Mult0~8_RESULTA_bus\(31);
\pwm_5|Mult0~40\ <= \pwm_5|Mult0~8_RESULTA_bus\(32);
\pwm_5|Mult0~41\ <= \pwm_5|Mult0~8_RESULTA_bus\(33);
\pwm_5|Mult0~42\ <= \pwm_5|Mult0~8_RESULTA_bus\(34);
\pwm_5|Mult0~43\ <= \pwm_5|Mult0~8_RESULTA_bus\(35);
\pwm_5|Mult0~44\ <= \pwm_5|Mult0~8_RESULTA_bus\(36);
\pwm_5|Mult0~45\ <= \pwm_5|Mult0~8_RESULTA_bus\(37);
\pwm_5|Mult0~46\ <= \pwm_5|Mult0~8_RESULTA_bus\(38);
\pwm_5|Mult0~47\ <= \pwm_5|Mult0~8_RESULTA_bus\(39);
\pwm_5|Mult0~48\ <= \pwm_5|Mult0~8_RESULTA_bus\(40);
\pwm_5|Mult0~49\ <= \pwm_5|Mult0~8_RESULTA_bus\(41);
\pwm_5|Mult0~50\ <= \pwm_5|Mult0~8_RESULTA_bus\(42);
\pwm_5|Mult0~51\ <= \pwm_5|Mult0~8_RESULTA_bus\(43);
\pwm_5|Mult0~52\ <= \pwm_5|Mult0~8_RESULTA_bus\(44);
\pwm_5|Mult0~53\ <= \pwm_5|Mult0~8_RESULTA_bus\(45);
\pwm_5|Mult0~54\ <= \pwm_5|Mult0~8_RESULTA_bus\(46);
\pwm_5|Mult0~55\ <= \pwm_5|Mult0~8_RESULTA_bus\(47);
\pwm_5|Mult0~56\ <= \pwm_5|Mult0~8_RESULTA_bus\(48);
\pwm_5|Mult0~57\ <= \pwm_5|Mult0~8_RESULTA_bus\(49);
\pwm_5|Mult0~58\ <= \pwm_5|Mult0~8_RESULTA_bus\(50);
\pwm_5|Mult0~59\ <= \pwm_5|Mult0~8_RESULTA_bus\(51);
\pwm_5|Mult0~60\ <= \pwm_5|Mult0~8_RESULTA_bus\(52);
\pwm_5|Mult0~61\ <= \pwm_5|Mult0~8_RESULTA_bus\(53);
\pwm_5|Mult0~62\ <= \pwm_5|Mult0~8_RESULTA_bus\(54);
\pwm_5|Mult0~63\ <= \pwm_5|Mult0~8_RESULTA_bus\(55);
\pwm_5|Mult0~64\ <= \pwm_5|Mult0~8_RESULTA_bus\(56);
\pwm_5|Mult0~65\ <= \pwm_5|Mult0~8_RESULTA_bus\(57);
\pwm_5|Mult0~66\ <= \pwm_5|Mult0~8_RESULTA_bus\(58);
\pwm_5|Mult0~67\ <= \pwm_5|Mult0~8_RESULTA_bus\(59);
\pwm_5|Mult0~68\ <= \pwm_5|Mult0~8_RESULTA_bus\(60);
\pwm_5|Mult0~69\ <= \pwm_5|Mult0~8_RESULTA_bus\(61);
\pwm_5|Mult0~70\ <= \pwm_5|Mult0~8_RESULTA_bus\(62);
\pwm_5|Mult0~71\ <= \pwm_5|Mult0~8_RESULTA_bus\(63);

\pwm_6|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_6|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_6|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_6|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_6|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_6|Mult0~8_resulta\ <= \pwm_6|Mult0~8_RESULTA_bus\(0);
\pwm_6|Mult0~9\ <= \pwm_6|Mult0~8_RESULTA_bus\(1);
\pwm_6|Mult0~10\ <= \pwm_6|Mult0~8_RESULTA_bus\(2);
\pwm_6|Mult0~11\ <= \pwm_6|Mult0~8_RESULTA_bus\(3);
\pwm_6|Mult0~12\ <= \pwm_6|Mult0~8_RESULTA_bus\(4);
\pwm_6|Mult0~13\ <= \pwm_6|Mult0~8_RESULTA_bus\(5);
\pwm_6|Mult0~14\ <= \pwm_6|Mult0~8_RESULTA_bus\(6);
\pwm_6|Mult0~15\ <= \pwm_6|Mult0~8_RESULTA_bus\(7);
\pwm_6|Mult0~16\ <= \pwm_6|Mult0~8_RESULTA_bus\(8);
\pwm_6|Mult0~17\ <= \pwm_6|Mult0~8_RESULTA_bus\(9);
\pwm_6|Mult0~18\ <= \pwm_6|Mult0~8_RESULTA_bus\(10);
\pwm_6|Mult0~19\ <= \pwm_6|Mult0~8_RESULTA_bus\(11);
\pwm_6|Mult0~20\ <= \pwm_6|Mult0~8_RESULTA_bus\(12);
\pwm_6|Mult0~21\ <= \pwm_6|Mult0~8_RESULTA_bus\(13);
\pwm_6|Mult0~22\ <= \pwm_6|Mult0~8_RESULTA_bus\(14);
\pwm_6|Mult0~23\ <= \pwm_6|Mult0~8_RESULTA_bus\(15);
\pwm_6|Mult0~24\ <= \pwm_6|Mult0~8_RESULTA_bus\(16);
\pwm_6|Mult0~25\ <= \pwm_6|Mult0~8_RESULTA_bus\(17);
\pwm_6|Mult0~26\ <= \pwm_6|Mult0~8_RESULTA_bus\(18);
\pwm_6|Mult0~27\ <= \pwm_6|Mult0~8_RESULTA_bus\(19);
\pwm_6|Mult0~28\ <= \pwm_6|Mult0~8_RESULTA_bus\(20);
\pwm_6|Mult0~29\ <= \pwm_6|Mult0~8_RESULTA_bus\(21);
\pwm_6|Mult0~30\ <= \pwm_6|Mult0~8_RESULTA_bus\(22);
\pwm_6|Mult0~31\ <= \pwm_6|Mult0~8_RESULTA_bus\(23);
\pwm_6|Mult0~32\ <= \pwm_6|Mult0~8_RESULTA_bus\(24);
\pwm_6|Mult0~33\ <= \pwm_6|Mult0~8_RESULTA_bus\(25);
\pwm_6|Mult0~34\ <= \pwm_6|Mult0~8_RESULTA_bus\(26);
\pwm_6|Mult0~35\ <= \pwm_6|Mult0~8_RESULTA_bus\(27);
\pwm_6|Mult0~36\ <= \pwm_6|Mult0~8_RESULTA_bus\(28);
\pwm_6|Mult0~37\ <= \pwm_6|Mult0~8_RESULTA_bus\(29);
\pwm_6|Mult0~38\ <= \pwm_6|Mult0~8_RESULTA_bus\(30);
\pwm_6|Mult0~39\ <= \pwm_6|Mult0~8_RESULTA_bus\(31);
\pwm_6|Mult0~40\ <= \pwm_6|Mult0~8_RESULTA_bus\(32);
\pwm_6|Mult0~41\ <= \pwm_6|Mult0~8_RESULTA_bus\(33);
\pwm_6|Mult0~42\ <= \pwm_6|Mult0~8_RESULTA_bus\(34);
\pwm_6|Mult0~43\ <= \pwm_6|Mult0~8_RESULTA_bus\(35);
\pwm_6|Mult0~44\ <= \pwm_6|Mult0~8_RESULTA_bus\(36);
\pwm_6|Mult0~45\ <= \pwm_6|Mult0~8_RESULTA_bus\(37);
\pwm_6|Mult0~46\ <= \pwm_6|Mult0~8_RESULTA_bus\(38);
\pwm_6|Mult0~47\ <= \pwm_6|Mult0~8_RESULTA_bus\(39);
\pwm_6|Mult0~48\ <= \pwm_6|Mult0~8_RESULTA_bus\(40);
\pwm_6|Mult0~49\ <= \pwm_6|Mult0~8_RESULTA_bus\(41);
\pwm_6|Mult0~50\ <= \pwm_6|Mult0~8_RESULTA_bus\(42);
\pwm_6|Mult0~51\ <= \pwm_6|Mult0~8_RESULTA_bus\(43);
\pwm_6|Mult0~52\ <= \pwm_6|Mult0~8_RESULTA_bus\(44);
\pwm_6|Mult0~53\ <= \pwm_6|Mult0~8_RESULTA_bus\(45);
\pwm_6|Mult0~54\ <= \pwm_6|Mult0~8_RESULTA_bus\(46);
\pwm_6|Mult0~55\ <= \pwm_6|Mult0~8_RESULTA_bus\(47);
\pwm_6|Mult0~56\ <= \pwm_6|Mult0~8_RESULTA_bus\(48);
\pwm_6|Mult0~57\ <= \pwm_6|Mult0~8_RESULTA_bus\(49);
\pwm_6|Mult0~58\ <= \pwm_6|Mult0~8_RESULTA_bus\(50);
\pwm_6|Mult0~59\ <= \pwm_6|Mult0~8_RESULTA_bus\(51);
\pwm_6|Mult0~60\ <= \pwm_6|Mult0~8_RESULTA_bus\(52);
\pwm_6|Mult0~61\ <= \pwm_6|Mult0~8_RESULTA_bus\(53);
\pwm_6|Mult0~62\ <= \pwm_6|Mult0~8_RESULTA_bus\(54);
\pwm_6|Mult0~63\ <= \pwm_6|Mult0~8_RESULTA_bus\(55);
\pwm_6|Mult0~64\ <= \pwm_6|Mult0~8_RESULTA_bus\(56);
\pwm_6|Mult0~65\ <= \pwm_6|Mult0~8_RESULTA_bus\(57);
\pwm_6|Mult0~66\ <= \pwm_6|Mult0~8_RESULTA_bus\(58);
\pwm_6|Mult0~67\ <= \pwm_6|Mult0~8_RESULTA_bus\(59);
\pwm_6|Mult0~68\ <= \pwm_6|Mult0~8_RESULTA_bus\(60);
\pwm_6|Mult0~69\ <= \pwm_6|Mult0~8_RESULTA_bus\(61);
\pwm_6|Mult0~70\ <= \pwm_6|Mult0~8_RESULTA_bus\(62);
\pwm_6|Mult0~71\ <= \pwm_6|Mult0~8_RESULTA_bus\(63);

\pwm_7|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_7|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_7|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_7|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_7|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_7|Mult0~8_resulta\ <= \pwm_7|Mult0~8_RESULTA_bus\(0);
\pwm_7|Mult0~9\ <= \pwm_7|Mult0~8_RESULTA_bus\(1);
\pwm_7|Mult0~10\ <= \pwm_7|Mult0~8_RESULTA_bus\(2);
\pwm_7|Mult0~11\ <= \pwm_7|Mult0~8_RESULTA_bus\(3);
\pwm_7|Mult0~12\ <= \pwm_7|Mult0~8_RESULTA_bus\(4);
\pwm_7|Mult0~13\ <= \pwm_7|Mult0~8_RESULTA_bus\(5);
\pwm_7|Mult0~14\ <= \pwm_7|Mult0~8_RESULTA_bus\(6);
\pwm_7|Mult0~15\ <= \pwm_7|Mult0~8_RESULTA_bus\(7);
\pwm_7|Mult0~16\ <= \pwm_7|Mult0~8_RESULTA_bus\(8);
\pwm_7|Mult0~17\ <= \pwm_7|Mult0~8_RESULTA_bus\(9);
\pwm_7|Mult0~18\ <= \pwm_7|Mult0~8_RESULTA_bus\(10);
\pwm_7|Mult0~19\ <= \pwm_7|Mult0~8_RESULTA_bus\(11);
\pwm_7|Mult0~20\ <= \pwm_7|Mult0~8_RESULTA_bus\(12);
\pwm_7|Mult0~21\ <= \pwm_7|Mult0~8_RESULTA_bus\(13);
\pwm_7|Mult0~22\ <= \pwm_7|Mult0~8_RESULTA_bus\(14);
\pwm_7|Mult0~23\ <= \pwm_7|Mult0~8_RESULTA_bus\(15);
\pwm_7|Mult0~24\ <= \pwm_7|Mult0~8_RESULTA_bus\(16);
\pwm_7|Mult0~25\ <= \pwm_7|Mult0~8_RESULTA_bus\(17);
\pwm_7|Mult0~26\ <= \pwm_7|Mult0~8_RESULTA_bus\(18);
\pwm_7|Mult0~27\ <= \pwm_7|Mult0~8_RESULTA_bus\(19);
\pwm_7|Mult0~28\ <= \pwm_7|Mult0~8_RESULTA_bus\(20);
\pwm_7|Mult0~29\ <= \pwm_7|Mult0~8_RESULTA_bus\(21);
\pwm_7|Mult0~30\ <= \pwm_7|Mult0~8_RESULTA_bus\(22);
\pwm_7|Mult0~31\ <= \pwm_7|Mult0~8_RESULTA_bus\(23);
\pwm_7|Mult0~32\ <= \pwm_7|Mult0~8_RESULTA_bus\(24);
\pwm_7|Mult0~33\ <= \pwm_7|Mult0~8_RESULTA_bus\(25);
\pwm_7|Mult0~34\ <= \pwm_7|Mult0~8_RESULTA_bus\(26);
\pwm_7|Mult0~35\ <= \pwm_7|Mult0~8_RESULTA_bus\(27);
\pwm_7|Mult0~36\ <= \pwm_7|Mult0~8_RESULTA_bus\(28);
\pwm_7|Mult0~37\ <= \pwm_7|Mult0~8_RESULTA_bus\(29);
\pwm_7|Mult0~38\ <= \pwm_7|Mult0~8_RESULTA_bus\(30);
\pwm_7|Mult0~39\ <= \pwm_7|Mult0~8_RESULTA_bus\(31);
\pwm_7|Mult0~40\ <= \pwm_7|Mult0~8_RESULTA_bus\(32);
\pwm_7|Mult0~41\ <= \pwm_7|Mult0~8_RESULTA_bus\(33);
\pwm_7|Mult0~42\ <= \pwm_7|Mult0~8_RESULTA_bus\(34);
\pwm_7|Mult0~43\ <= \pwm_7|Mult0~8_RESULTA_bus\(35);
\pwm_7|Mult0~44\ <= \pwm_7|Mult0~8_RESULTA_bus\(36);
\pwm_7|Mult0~45\ <= \pwm_7|Mult0~8_RESULTA_bus\(37);
\pwm_7|Mult0~46\ <= \pwm_7|Mult0~8_RESULTA_bus\(38);
\pwm_7|Mult0~47\ <= \pwm_7|Mult0~8_RESULTA_bus\(39);
\pwm_7|Mult0~48\ <= \pwm_7|Mult0~8_RESULTA_bus\(40);
\pwm_7|Mult0~49\ <= \pwm_7|Mult0~8_RESULTA_bus\(41);
\pwm_7|Mult0~50\ <= \pwm_7|Mult0~8_RESULTA_bus\(42);
\pwm_7|Mult0~51\ <= \pwm_7|Mult0~8_RESULTA_bus\(43);
\pwm_7|Mult0~52\ <= \pwm_7|Mult0~8_RESULTA_bus\(44);
\pwm_7|Mult0~53\ <= \pwm_7|Mult0~8_RESULTA_bus\(45);
\pwm_7|Mult0~54\ <= \pwm_7|Mult0~8_RESULTA_bus\(46);
\pwm_7|Mult0~55\ <= \pwm_7|Mult0~8_RESULTA_bus\(47);
\pwm_7|Mult0~56\ <= \pwm_7|Mult0~8_RESULTA_bus\(48);
\pwm_7|Mult0~57\ <= \pwm_7|Mult0~8_RESULTA_bus\(49);
\pwm_7|Mult0~58\ <= \pwm_7|Mult0~8_RESULTA_bus\(50);
\pwm_7|Mult0~59\ <= \pwm_7|Mult0~8_RESULTA_bus\(51);
\pwm_7|Mult0~60\ <= \pwm_7|Mult0~8_RESULTA_bus\(52);
\pwm_7|Mult0~61\ <= \pwm_7|Mult0~8_RESULTA_bus\(53);
\pwm_7|Mult0~62\ <= \pwm_7|Mult0~8_RESULTA_bus\(54);
\pwm_7|Mult0~63\ <= \pwm_7|Mult0~8_RESULTA_bus\(55);
\pwm_7|Mult0~64\ <= \pwm_7|Mult0~8_RESULTA_bus\(56);
\pwm_7|Mult0~65\ <= \pwm_7|Mult0~8_RESULTA_bus\(57);
\pwm_7|Mult0~66\ <= \pwm_7|Mult0~8_RESULTA_bus\(58);
\pwm_7|Mult0~67\ <= \pwm_7|Mult0~8_RESULTA_bus\(59);
\pwm_7|Mult0~68\ <= \pwm_7|Mult0~8_RESULTA_bus\(60);
\pwm_7|Mult0~69\ <= \pwm_7|Mult0~8_RESULTA_bus\(61);
\pwm_7|Mult0~70\ <= \pwm_7|Mult0~8_RESULTA_bus\(62);
\pwm_7|Mult0~71\ <= \pwm_7|Mult0~8_RESULTA_bus\(63);

\pwm_8|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_8|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_8|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_8|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_8|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_8|Mult0~8_resulta\ <= \pwm_8|Mult0~8_RESULTA_bus\(0);
\pwm_8|Mult0~9\ <= \pwm_8|Mult0~8_RESULTA_bus\(1);
\pwm_8|Mult0~10\ <= \pwm_8|Mult0~8_RESULTA_bus\(2);
\pwm_8|Mult0~11\ <= \pwm_8|Mult0~8_RESULTA_bus\(3);
\pwm_8|Mult0~12\ <= \pwm_8|Mult0~8_RESULTA_bus\(4);
\pwm_8|Mult0~13\ <= \pwm_8|Mult0~8_RESULTA_bus\(5);
\pwm_8|Mult0~14\ <= \pwm_8|Mult0~8_RESULTA_bus\(6);
\pwm_8|Mult0~15\ <= \pwm_8|Mult0~8_RESULTA_bus\(7);
\pwm_8|Mult0~16\ <= \pwm_8|Mult0~8_RESULTA_bus\(8);
\pwm_8|Mult0~17\ <= \pwm_8|Mult0~8_RESULTA_bus\(9);
\pwm_8|Mult0~18\ <= \pwm_8|Mult0~8_RESULTA_bus\(10);
\pwm_8|Mult0~19\ <= \pwm_8|Mult0~8_RESULTA_bus\(11);
\pwm_8|Mult0~20\ <= \pwm_8|Mult0~8_RESULTA_bus\(12);
\pwm_8|Mult0~21\ <= \pwm_8|Mult0~8_RESULTA_bus\(13);
\pwm_8|Mult0~22\ <= \pwm_8|Mult0~8_RESULTA_bus\(14);
\pwm_8|Mult0~23\ <= \pwm_8|Mult0~8_RESULTA_bus\(15);
\pwm_8|Mult0~24\ <= \pwm_8|Mult0~8_RESULTA_bus\(16);
\pwm_8|Mult0~25\ <= \pwm_8|Mult0~8_RESULTA_bus\(17);
\pwm_8|Mult0~26\ <= \pwm_8|Mult0~8_RESULTA_bus\(18);
\pwm_8|Mult0~27\ <= \pwm_8|Mult0~8_RESULTA_bus\(19);
\pwm_8|Mult0~28\ <= \pwm_8|Mult0~8_RESULTA_bus\(20);
\pwm_8|Mult0~29\ <= \pwm_8|Mult0~8_RESULTA_bus\(21);
\pwm_8|Mult0~30\ <= \pwm_8|Mult0~8_RESULTA_bus\(22);
\pwm_8|Mult0~31\ <= \pwm_8|Mult0~8_RESULTA_bus\(23);
\pwm_8|Mult0~32\ <= \pwm_8|Mult0~8_RESULTA_bus\(24);
\pwm_8|Mult0~33\ <= \pwm_8|Mult0~8_RESULTA_bus\(25);
\pwm_8|Mult0~34\ <= \pwm_8|Mult0~8_RESULTA_bus\(26);
\pwm_8|Mult0~35\ <= \pwm_8|Mult0~8_RESULTA_bus\(27);
\pwm_8|Mult0~36\ <= \pwm_8|Mult0~8_RESULTA_bus\(28);
\pwm_8|Mult0~37\ <= \pwm_8|Mult0~8_RESULTA_bus\(29);
\pwm_8|Mult0~38\ <= \pwm_8|Mult0~8_RESULTA_bus\(30);
\pwm_8|Mult0~39\ <= \pwm_8|Mult0~8_RESULTA_bus\(31);
\pwm_8|Mult0~40\ <= \pwm_8|Mult0~8_RESULTA_bus\(32);
\pwm_8|Mult0~41\ <= \pwm_8|Mult0~8_RESULTA_bus\(33);
\pwm_8|Mult0~42\ <= \pwm_8|Mult0~8_RESULTA_bus\(34);
\pwm_8|Mult0~43\ <= \pwm_8|Mult0~8_RESULTA_bus\(35);
\pwm_8|Mult0~44\ <= \pwm_8|Mult0~8_RESULTA_bus\(36);
\pwm_8|Mult0~45\ <= \pwm_8|Mult0~8_RESULTA_bus\(37);
\pwm_8|Mult0~46\ <= \pwm_8|Mult0~8_RESULTA_bus\(38);
\pwm_8|Mult0~47\ <= \pwm_8|Mult0~8_RESULTA_bus\(39);
\pwm_8|Mult0~48\ <= \pwm_8|Mult0~8_RESULTA_bus\(40);
\pwm_8|Mult0~49\ <= \pwm_8|Mult0~8_RESULTA_bus\(41);
\pwm_8|Mult0~50\ <= \pwm_8|Mult0~8_RESULTA_bus\(42);
\pwm_8|Mult0~51\ <= \pwm_8|Mult0~8_RESULTA_bus\(43);
\pwm_8|Mult0~52\ <= \pwm_8|Mult0~8_RESULTA_bus\(44);
\pwm_8|Mult0~53\ <= \pwm_8|Mult0~8_RESULTA_bus\(45);
\pwm_8|Mult0~54\ <= \pwm_8|Mult0~8_RESULTA_bus\(46);
\pwm_8|Mult0~55\ <= \pwm_8|Mult0~8_RESULTA_bus\(47);
\pwm_8|Mult0~56\ <= \pwm_8|Mult0~8_RESULTA_bus\(48);
\pwm_8|Mult0~57\ <= \pwm_8|Mult0~8_RESULTA_bus\(49);
\pwm_8|Mult0~58\ <= \pwm_8|Mult0~8_RESULTA_bus\(50);
\pwm_8|Mult0~59\ <= \pwm_8|Mult0~8_RESULTA_bus\(51);
\pwm_8|Mult0~60\ <= \pwm_8|Mult0~8_RESULTA_bus\(52);
\pwm_8|Mult0~61\ <= \pwm_8|Mult0~8_RESULTA_bus\(53);
\pwm_8|Mult0~62\ <= \pwm_8|Mult0~8_RESULTA_bus\(54);
\pwm_8|Mult0~63\ <= \pwm_8|Mult0~8_RESULTA_bus\(55);
\pwm_8|Mult0~64\ <= \pwm_8|Mult0~8_RESULTA_bus\(56);
\pwm_8|Mult0~65\ <= \pwm_8|Mult0~8_RESULTA_bus\(57);
\pwm_8|Mult0~66\ <= \pwm_8|Mult0~8_RESULTA_bus\(58);
\pwm_8|Mult0~67\ <= \pwm_8|Mult0~8_RESULTA_bus\(59);
\pwm_8|Mult0~68\ <= \pwm_8|Mult0~8_RESULTA_bus\(60);
\pwm_8|Mult0~69\ <= \pwm_8|Mult0~8_RESULTA_bus\(61);
\pwm_8|Mult0~70\ <= \pwm_8|Mult0~8_RESULTA_bus\(62);
\pwm_8|Mult0~71\ <= \pwm_8|Mult0~8_RESULTA_bus\(63);

\pwm_9|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\pwm_9|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\pwm_9|Mult0~8_ENA_bus\ <= (vcc & vcc & \duty_value[0]~0_combout\);

\pwm_9|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\pwm_9|Mult0~8_AY_bus\ <= (\Add0~25_sumout\ & \Add0~29_sumout\ & \Add0~21_sumout\ & \Add0~17_sumout\ & \Add0~13_sumout\ & \Add0~9_sumout\ & \Add0~5_sumout\ & \Add0~1_sumout\);

\pwm_9|Mult0~8_resulta\ <= \pwm_9|Mult0~8_RESULTA_bus\(0);
\pwm_9|Mult0~9\ <= \pwm_9|Mult0~8_RESULTA_bus\(1);
\pwm_9|Mult0~10\ <= \pwm_9|Mult0~8_RESULTA_bus\(2);
\pwm_9|Mult0~11\ <= \pwm_9|Mult0~8_RESULTA_bus\(3);
\pwm_9|Mult0~12\ <= \pwm_9|Mult0~8_RESULTA_bus\(4);
\pwm_9|Mult0~13\ <= \pwm_9|Mult0~8_RESULTA_bus\(5);
\pwm_9|Mult0~14\ <= \pwm_9|Mult0~8_RESULTA_bus\(6);
\pwm_9|Mult0~15\ <= \pwm_9|Mult0~8_RESULTA_bus\(7);
\pwm_9|Mult0~16\ <= \pwm_9|Mult0~8_RESULTA_bus\(8);
\pwm_9|Mult0~17\ <= \pwm_9|Mult0~8_RESULTA_bus\(9);
\pwm_9|Mult0~18\ <= \pwm_9|Mult0~8_RESULTA_bus\(10);
\pwm_9|Mult0~19\ <= \pwm_9|Mult0~8_RESULTA_bus\(11);
\pwm_9|Mult0~20\ <= \pwm_9|Mult0~8_RESULTA_bus\(12);
\pwm_9|Mult0~21\ <= \pwm_9|Mult0~8_RESULTA_bus\(13);
\pwm_9|Mult0~22\ <= \pwm_9|Mult0~8_RESULTA_bus\(14);
\pwm_9|Mult0~23\ <= \pwm_9|Mult0~8_RESULTA_bus\(15);
\pwm_9|Mult0~24\ <= \pwm_9|Mult0~8_RESULTA_bus\(16);
\pwm_9|Mult0~25\ <= \pwm_9|Mult0~8_RESULTA_bus\(17);
\pwm_9|Mult0~26\ <= \pwm_9|Mult0~8_RESULTA_bus\(18);
\pwm_9|Mult0~27\ <= \pwm_9|Mult0~8_RESULTA_bus\(19);
\pwm_9|Mult0~28\ <= \pwm_9|Mult0~8_RESULTA_bus\(20);
\pwm_9|Mult0~29\ <= \pwm_9|Mult0~8_RESULTA_bus\(21);
\pwm_9|Mult0~30\ <= \pwm_9|Mult0~8_RESULTA_bus\(22);
\pwm_9|Mult0~31\ <= \pwm_9|Mult0~8_RESULTA_bus\(23);
\pwm_9|Mult0~32\ <= \pwm_9|Mult0~8_RESULTA_bus\(24);
\pwm_9|Mult0~33\ <= \pwm_9|Mult0~8_RESULTA_bus\(25);
\pwm_9|Mult0~34\ <= \pwm_9|Mult0~8_RESULTA_bus\(26);
\pwm_9|Mult0~35\ <= \pwm_9|Mult0~8_RESULTA_bus\(27);
\pwm_9|Mult0~36\ <= \pwm_9|Mult0~8_RESULTA_bus\(28);
\pwm_9|Mult0~37\ <= \pwm_9|Mult0~8_RESULTA_bus\(29);
\pwm_9|Mult0~38\ <= \pwm_9|Mult0~8_RESULTA_bus\(30);
\pwm_9|Mult0~39\ <= \pwm_9|Mult0~8_RESULTA_bus\(31);
\pwm_9|Mult0~40\ <= \pwm_9|Mult0~8_RESULTA_bus\(32);
\pwm_9|Mult0~41\ <= \pwm_9|Mult0~8_RESULTA_bus\(33);
\pwm_9|Mult0~42\ <= \pwm_9|Mult0~8_RESULTA_bus\(34);
\pwm_9|Mult0~43\ <= \pwm_9|Mult0~8_RESULTA_bus\(35);
\pwm_9|Mult0~44\ <= \pwm_9|Mult0~8_RESULTA_bus\(36);
\pwm_9|Mult0~45\ <= \pwm_9|Mult0~8_RESULTA_bus\(37);
\pwm_9|Mult0~46\ <= \pwm_9|Mult0~8_RESULTA_bus\(38);
\pwm_9|Mult0~47\ <= \pwm_9|Mult0~8_RESULTA_bus\(39);
\pwm_9|Mult0~48\ <= \pwm_9|Mult0~8_RESULTA_bus\(40);
\pwm_9|Mult0~49\ <= \pwm_9|Mult0~8_RESULTA_bus\(41);
\pwm_9|Mult0~50\ <= \pwm_9|Mult0~8_RESULTA_bus\(42);
\pwm_9|Mult0~51\ <= \pwm_9|Mult0~8_RESULTA_bus\(43);
\pwm_9|Mult0~52\ <= \pwm_9|Mult0~8_RESULTA_bus\(44);
\pwm_9|Mult0~53\ <= \pwm_9|Mult0~8_RESULTA_bus\(45);
\pwm_9|Mult0~54\ <= \pwm_9|Mult0~8_RESULTA_bus\(46);
\pwm_9|Mult0~55\ <= \pwm_9|Mult0~8_RESULTA_bus\(47);
\pwm_9|Mult0~56\ <= \pwm_9|Mult0~8_RESULTA_bus\(48);
\pwm_9|Mult0~57\ <= \pwm_9|Mult0~8_RESULTA_bus\(49);
\pwm_9|Mult0~58\ <= \pwm_9|Mult0~8_RESULTA_bus\(50);
\pwm_9|Mult0~59\ <= \pwm_9|Mult0~8_RESULTA_bus\(51);
\pwm_9|Mult0~60\ <= \pwm_9|Mult0~8_RESULTA_bus\(52);
\pwm_9|Mult0~61\ <= \pwm_9|Mult0~8_RESULTA_bus\(53);
\pwm_9|Mult0~62\ <= \pwm_9|Mult0~8_RESULTA_bus\(54);
\pwm_9|Mult0~63\ <= \pwm_9|Mult0~8_RESULTA_bus\(55);
\pwm_9|Mult0~64\ <= \pwm_9|Mult0~8_RESULTA_bus\(56);
\pwm_9|Mult0~65\ <= \pwm_9|Mult0~8_RESULTA_bus\(57);
\pwm_9|Mult0~66\ <= \pwm_9|Mult0~8_RESULTA_bus\(58);
\pwm_9|Mult0~67\ <= \pwm_9|Mult0~8_RESULTA_bus\(59);
\pwm_9|Mult0~68\ <= \pwm_9|Mult0~8_RESULTA_bus\(60);
\pwm_9|Mult0~69\ <= \pwm_9|Mult0~8_RESULTA_bus\(61);
\pwm_9|Mult0~70\ <= \pwm_9|Mult0~8_RESULTA_bus\(62);
\pwm_9|Mult0~71\ <= \pwm_9|Mult0~8_RESULTA_bus\(63);
\pwm_0|ALT_INV_Mult0~34\ <= NOT \pwm_0|Mult0~34\;
\pwm_0|ALT_INV_Mult0~30\ <= NOT \pwm_0|Mult0~30\;
\pwm_0|ALT_INV_Mult0~27\ <= NOT \pwm_0|Mult0~27\;
\pwm_0|ALT_INV_Mult0~26\ <= NOT \pwm_0|Mult0~26\;
\pwm_0|ALT_INV_Mult0~24\ <= NOT \pwm_0|Mult0~24\;
\pwm_0|ALT_INV_Mult0~23\ <= NOT \pwm_0|Mult0~23\;
\pwm_0|ALT_INV_Mult0~22\ <= NOT \pwm_0|Mult0~22\;
\pwm_0|ALT_INV_Mult0~21\ <= NOT \pwm_0|Mult0~21\;
\pwm_0|ALT_INV_Mult0~19\ <= NOT \pwm_0|Mult0~19\;
\pwm_0|ALT_INV_Mult0~17\ <= NOT \pwm_0|Mult0~17\;
\pwm_9|ALT_INV_half_duty_new\(1) <= NOT \pwm_9|half_duty_new\(1);
\pwm_8|ALT_INV_half_duty_new\(1) <= NOT \pwm_8|half_duty_new\(1);
\pwm_7|ALT_INV_half_duty_new\(1) <= NOT \pwm_7|half_duty_new\(1);
\pwm_4|ALT_INV_half_duty_new\(1) <= NOT \pwm_4|half_duty_new\(1);
\pwm_2|ALT_INV_half_duty_new\(17) <= NOT \pwm_2|half_duty_new\(17);
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\pwm_9|ALT_INV_Add1~73_sumout\ <= NOT \pwm_9|Add1~73_sumout\;
\pwm_9|ALT_INV_Add1~69_sumout\ <= NOT \pwm_9|Add1~69_sumout\;
\pwm_9|ALT_INV_Add1~65_sumout\ <= NOT \pwm_9|Add1~65_sumout\;
\pwm_9|ALT_INV_Add1~61_sumout\ <= NOT \pwm_9|Add1~61_sumout\;
\pwm_9|ALT_INV_Add1~57_sumout\ <= NOT \pwm_9|Add1~57_sumout\;
\pwm_9|ALT_INV_Add1~53_sumout\ <= NOT \pwm_9|Add1~53_sumout\;
\pwm_9|ALT_INV_Add1~49_sumout\ <= NOT \pwm_9|Add1~49_sumout\;
\pwm_9|ALT_INV_Add1~45_sumout\ <= NOT \pwm_9|Add1~45_sumout\;
\pwm_9|ALT_INV_Add1~41_sumout\ <= NOT \pwm_9|Add1~41_sumout\;
\pwm_9|ALT_INV_Add1~37_sumout\ <= NOT \pwm_9|Add1~37_sumout\;
\pwm_9|ALT_INV_Add1~33_sumout\ <= NOT \pwm_9|Add1~33_sumout\;
\pwm_9|ALT_INV_Add1~29_sumout\ <= NOT \pwm_9|Add1~29_sumout\;
\pwm_9|ALT_INV_Add1~25_sumout\ <= NOT \pwm_9|Add1~25_sumout\;
\pwm_9|ALT_INV_Add1~21_sumout\ <= NOT \pwm_9|Add1~21_sumout\;
\pwm_9|ALT_INV_Add1~17_sumout\ <= NOT \pwm_9|Add1~17_sumout\;
\pwm_9|ALT_INV_Add1~13_sumout\ <= NOT \pwm_9|Add1~13_sumout\;
\pwm_9|ALT_INV_Add1~9_sumout\ <= NOT \pwm_9|Add1~9_sumout\;
\pwm_9|ALT_INV_Add1~5_sumout\ <= NOT \pwm_9|Add1~5_sumout\;
\pwm_9|ALT_INV_Add1~1_sumout\ <= NOT \pwm_9|Add1~1_sumout\;
\pwm_8|ALT_INV_Add1~73_sumout\ <= NOT \pwm_8|Add1~73_sumout\;
\pwm_8|ALT_INV_Add1~69_sumout\ <= NOT \pwm_8|Add1~69_sumout\;
\pwm_8|ALT_INV_Add1~65_sumout\ <= NOT \pwm_8|Add1~65_sumout\;
\pwm_8|ALT_INV_Add1~61_sumout\ <= NOT \pwm_8|Add1~61_sumout\;
\pwm_8|ALT_INV_Add1~57_sumout\ <= NOT \pwm_8|Add1~57_sumout\;
\pwm_8|ALT_INV_Add1~53_sumout\ <= NOT \pwm_8|Add1~53_sumout\;
\pwm_8|ALT_INV_Add1~49_sumout\ <= NOT \pwm_8|Add1~49_sumout\;
\pwm_8|ALT_INV_Add1~45_sumout\ <= NOT \pwm_8|Add1~45_sumout\;
\pwm_8|ALT_INV_Add1~41_sumout\ <= NOT \pwm_8|Add1~41_sumout\;
\pwm_8|ALT_INV_Add1~37_sumout\ <= NOT \pwm_8|Add1~37_sumout\;
\pwm_8|ALT_INV_Add1~33_sumout\ <= NOT \pwm_8|Add1~33_sumout\;
\pwm_8|ALT_INV_Add1~29_sumout\ <= NOT \pwm_8|Add1~29_sumout\;
\pwm_8|ALT_INV_Add1~25_sumout\ <= NOT \pwm_8|Add1~25_sumout\;
\pwm_8|ALT_INV_Add1~21_sumout\ <= NOT \pwm_8|Add1~21_sumout\;
\pwm_8|ALT_INV_Add1~17_sumout\ <= NOT \pwm_8|Add1~17_sumout\;
\pwm_8|ALT_INV_Add1~13_sumout\ <= NOT \pwm_8|Add1~13_sumout\;
\pwm_8|ALT_INV_Add1~9_sumout\ <= NOT \pwm_8|Add1~9_sumout\;
\pwm_8|ALT_INV_Add1~5_sumout\ <= NOT \pwm_8|Add1~5_sumout\;
\pwm_8|ALT_INV_Add1~1_sumout\ <= NOT \pwm_8|Add1~1_sumout\;
\pwm_7|ALT_INV_Add1~73_sumout\ <= NOT \pwm_7|Add1~73_sumout\;
\pwm_7|ALT_INV_Add1~69_sumout\ <= NOT \pwm_7|Add1~69_sumout\;
\pwm_7|ALT_INV_Add1~65_sumout\ <= NOT \pwm_7|Add1~65_sumout\;
\pwm_7|ALT_INV_Add1~61_sumout\ <= NOT \pwm_7|Add1~61_sumout\;
\pwm_7|ALT_INV_Add1~57_sumout\ <= NOT \pwm_7|Add1~57_sumout\;
\pwm_7|ALT_INV_Add1~53_sumout\ <= NOT \pwm_7|Add1~53_sumout\;
\pwm_7|ALT_INV_Add1~49_sumout\ <= NOT \pwm_7|Add1~49_sumout\;
\pwm_7|ALT_INV_Add1~45_sumout\ <= NOT \pwm_7|Add1~45_sumout\;
\pwm_7|ALT_INV_Add1~41_sumout\ <= NOT \pwm_7|Add1~41_sumout\;
\pwm_7|ALT_INV_Add1~37_sumout\ <= NOT \pwm_7|Add1~37_sumout\;
\pwm_7|ALT_INV_Add1~33_sumout\ <= NOT \pwm_7|Add1~33_sumout\;
\pwm_7|ALT_INV_Add1~29_sumout\ <= NOT \pwm_7|Add1~29_sumout\;
\pwm_7|ALT_INV_Add1~25_sumout\ <= NOT \pwm_7|Add1~25_sumout\;
\pwm_7|ALT_INV_Add1~21_sumout\ <= NOT \pwm_7|Add1~21_sumout\;
\pwm_7|ALT_INV_Add1~17_sumout\ <= NOT \pwm_7|Add1~17_sumout\;
\pwm_7|ALT_INV_Add1~13_sumout\ <= NOT \pwm_7|Add1~13_sumout\;
\pwm_7|ALT_INV_Add1~9_sumout\ <= NOT \pwm_7|Add1~9_sumout\;
\pwm_7|ALT_INV_Add1~5_sumout\ <= NOT \pwm_7|Add1~5_sumout\;
\pwm_7|ALT_INV_Add1~1_sumout\ <= NOT \pwm_7|Add1~1_sumout\;
\pwm_6|ALT_INV_Add1~73_sumout\ <= NOT \pwm_6|Add1~73_sumout\;
\pwm_6|ALT_INV_Add1~69_sumout\ <= NOT \pwm_6|Add1~69_sumout\;
\pwm_6|ALT_INV_Add1~65_sumout\ <= NOT \pwm_6|Add1~65_sumout\;
\pwm_6|ALT_INV_Add1~61_sumout\ <= NOT \pwm_6|Add1~61_sumout\;
\pwm_6|ALT_INV_Add1~57_sumout\ <= NOT \pwm_6|Add1~57_sumout\;
\pwm_6|ALT_INV_Add1~53_sumout\ <= NOT \pwm_6|Add1~53_sumout\;
\pwm_6|ALT_INV_Add1~49_sumout\ <= NOT \pwm_6|Add1~49_sumout\;
\pwm_6|ALT_INV_Add1~45_sumout\ <= NOT \pwm_6|Add1~45_sumout\;
\pwm_6|ALT_INV_Add1~41_sumout\ <= NOT \pwm_6|Add1~41_sumout\;
\pwm_6|ALT_INV_Add1~37_sumout\ <= NOT \pwm_6|Add1~37_sumout\;
\pwm_6|ALT_INV_Add1~33_sumout\ <= NOT \pwm_6|Add1~33_sumout\;
\pwm_6|ALT_INV_Add1~29_sumout\ <= NOT \pwm_6|Add1~29_sumout\;
\pwm_6|ALT_INV_Add1~25_sumout\ <= NOT \pwm_6|Add1~25_sumout\;
\pwm_6|ALT_INV_Add1~21_sumout\ <= NOT \pwm_6|Add1~21_sumout\;
\pwm_6|ALT_INV_Add1~17_sumout\ <= NOT \pwm_6|Add1~17_sumout\;
\pwm_6|ALT_INV_Add1~13_sumout\ <= NOT \pwm_6|Add1~13_sumout\;
\pwm_6|ALT_INV_Add1~9_sumout\ <= NOT \pwm_6|Add1~9_sumout\;
\pwm_6|ALT_INV_Add1~5_sumout\ <= NOT \pwm_6|Add1~5_sumout\;
\pwm_6|ALT_INV_Add1~1_sumout\ <= NOT \pwm_6|Add1~1_sumout\;
\pwm_5|ALT_INV_Add1~73_sumout\ <= NOT \pwm_5|Add1~73_sumout\;
\pwm_5|ALT_INV_Add1~69_sumout\ <= NOT \pwm_5|Add1~69_sumout\;
\pwm_5|ALT_INV_Add1~65_sumout\ <= NOT \pwm_5|Add1~65_sumout\;
\pwm_5|ALT_INV_Add1~61_sumout\ <= NOT \pwm_5|Add1~61_sumout\;
\pwm_5|ALT_INV_Add1~57_sumout\ <= NOT \pwm_5|Add1~57_sumout\;
\pwm_5|ALT_INV_Add1~53_sumout\ <= NOT \pwm_5|Add1~53_sumout\;
\pwm_5|ALT_INV_Add1~49_sumout\ <= NOT \pwm_5|Add1~49_sumout\;
\pwm_5|ALT_INV_Add1~45_sumout\ <= NOT \pwm_5|Add1~45_sumout\;
\pwm_5|ALT_INV_Add1~41_sumout\ <= NOT \pwm_5|Add1~41_sumout\;
\pwm_5|ALT_INV_Add1~37_sumout\ <= NOT \pwm_5|Add1~37_sumout\;
\pwm_5|ALT_INV_Add1~33_sumout\ <= NOT \pwm_5|Add1~33_sumout\;
\pwm_5|ALT_INV_Add1~29_sumout\ <= NOT \pwm_5|Add1~29_sumout\;
\pwm_5|ALT_INV_Add1~25_sumout\ <= NOT \pwm_5|Add1~25_sumout\;
\pwm_5|ALT_INV_Add1~21_sumout\ <= NOT \pwm_5|Add1~21_sumout\;
\pwm_5|ALT_INV_Add1~17_sumout\ <= NOT \pwm_5|Add1~17_sumout\;
\pwm_5|ALT_INV_Add1~13_sumout\ <= NOT \pwm_5|Add1~13_sumout\;
\pwm_5|ALT_INV_Add1~9_sumout\ <= NOT \pwm_5|Add1~9_sumout\;
\pwm_5|ALT_INV_Add1~5_sumout\ <= NOT \pwm_5|Add1~5_sumout\;
\pwm_5|ALT_INV_Add1~1_sumout\ <= NOT \pwm_5|Add1~1_sumout\;
\pwm_4|ALT_INV_Add1~73_sumout\ <= NOT \pwm_4|Add1~73_sumout\;
\pwm_4|ALT_INV_Add1~69_sumout\ <= NOT \pwm_4|Add1~69_sumout\;
\pwm_4|ALT_INV_Add1~65_sumout\ <= NOT \pwm_4|Add1~65_sumout\;
\pwm_4|ALT_INV_Add1~61_sumout\ <= NOT \pwm_4|Add1~61_sumout\;
\pwm_4|ALT_INV_Add1~57_sumout\ <= NOT \pwm_4|Add1~57_sumout\;
\pwm_4|ALT_INV_Add1~53_sumout\ <= NOT \pwm_4|Add1~53_sumout\;
\pwm_4|ALT_INV_Add1~49_sumout\ <= NOT \pwm_4|Add1~49_sumout\;
\pwm_4|ALT_INV_Add1~45_sumout\ <= NOT \pwm_4|Add1~45_sumout\;
\pwm_4|ALT_INV_Add1~41_sumout\ <= NOT \pwm_4|Add1~41_sumout\;
\pwm_4|ALT_INV_Add1~37_sumout\ <= NOT \pwm_4|Add1~37_sumout\;
\pwm_4|ALT_INV_Add1~33_sumout\ <= NOT \pwm_4|Add1~33_sumout\;
\pwm_4|ALT_INV_Add1~29_sumout\ <= NOT \pwm_4|Add1~29_sumout\;
\pwm_4|ALT_INV_Add1~25_sumout\ <= NOT \pwm_4|Add1~25_sumout\;
\pwm_4|ALT_INV_Add1~21_sumout\ <= NOT \pwm_4|Add1~21_sumout\;
\pwm_4|ALT_INV_Add1~17_sumout\ <= NOT \pwm_4|Add1~17_sumout\;
\pwm_4|ALT_INV_Add1~13_sumout\ <= NOT \pwm_4|Add1~13_sumout\;
\pwm_4|ALT_INV_Add1~9_sumout\ <= NOT \pwm_4|Add1~9_sumout\;
\pwm_4|ALT_INV_Add1~5_sumout\ <= NOT \pwm_4|Add1~5_sumout\;
\pwm_4|ALT_INV_Add1~1_sumout\ <= NOT \pwm_4|Add1~1_sumout\;
\pwm_3|ALT_INV_Add1~73_sumout\ <= NOT \pwm_3|Add1~73_sumout\;
\pwm_3|ALT_INV_Add1~69_sumout\ <= NOT \pwm_3|Add1~69_sumout\;
\pwm_3|ALT_INV_Add1~65_sumout\ <= NOT \pwm_3|Add1~65_sumout\;
\pwm_3|ALT_INV_Add1~61_sumout\ <= NOT \pwm_3|Add1~61_sumout\;
\pwm_3|ALT_INV_Add1~57_sumout\ <= NOT \pwm_3|Add1~57_sumout\;
\pwm_3|ALT_INV_Add1~53_sumout\ <= NOT \pwm_3|Add1~53_sumout\;
\pwm_3|ALT_INV_Add1~49_sumout\ <= NOT \pwm_3|Add1~49_sumout\;
\pwm_3|ALT_INV_Add1~45_sumout\ <= NOT \pwm_3|Add1~45_sumout\;
\pwm_3|ALT_INV_Add1~41_sumout\ <= NOT \pwm_3|Add1~41_sumout\;
\pwm_3|ALT_INV_Add1~37_sumout\ <= NOT \pwm_3|Add1~37_sumout\;
\pwm_3|ALT_INV_Add1~33_sumout\ <= NOT \pwm_3|Add1~33_sumout\;
\pwm_3|ALT_INV_Add1~29_sumout\ <= NOT \pwm_3|Add1~29_sumout\;
\pwm_3|ALT_INV_Add1~25_sumout\ <= NOT \pwm_3|Add1~25_sumout\;
\pwm_3|ALT_INV_Add1~21_sumout\ <= NOT \pwm_3|Add1~21_sumout\;
\pwm_3|ALT_INV_Add1~17_sumout\ <= NOT \pwm_3|Add1~17_sumout\;
\pwm_3|ALT_INV_Add1~13_sumout\ <= NOT \pwm_3|Add1~13_sumout\;
\pwm_3|ALT_INV_Add1~9_sumout\ <= NOT \pwm_3|Add1~9_sumout\;
\pwm_3|ALT_INV_Add1~5_sumout\ <= NOT \pwm_3|Add1~5_sumout\;
\pwm_3|ALT_INV_Add1~1_sumout\ <= NOT \pwm_3|Add1~1_sumout\;
\pwm_2|ALT_INV_Add1~73_sumout\ <= NOT \pwm_2|Add1~73_sumout\;
\pwm_2|ALT_INV_Add1~69_sumout\ <= NOT \pwm_2|Add1~69_sumout\;
\pwm_2|ALT_INV_Add1~65_sumout\ <= NOT \pwm_2|Add1~65_sumout\;
\pwm_2|ALT_INV_Add1~61_sumout\ <= NOT \pwm_2|Add1~61_sumout\;
\pwm_2|ALT_INV_Add1~57_sumout\ <= NOT \pwm_2|Add1~57_sumout\;
\pwm_2|ALT_INV_Add1~53_sumout\ <= NOT \pwm_2|Add1~53_sumout\;
\pwm_2|ALT_INV_Add1~49_sumout\ <= NOT \pwm_2|Add1~49_sumout\;
\pwm_2|ALT_INV_Add1~45_sumout\ <= NOT \pwm_2|Add1~45_sumout\;
\pwm_2|ALT_INV_Add1~41_sumout\ <= NOT \pwm_2|Add1~41_sumout\;
\pwm_2|ALT_INV_Add1~37_sumout\ <= NOT \pwm_2|Add1~37_sumout\;
\pwm_2|ALT_INV_Add1~33_sumout\ <= NOT \pwm_2|Add1~33_sumout\;
\pwm_2|ALT_INV_Add1~29_sumout\ <= NOT \pwm_2|Add1~29_sumout\;
\pwm_2|ALT_INV_Add1~25_sumout\ <= NOT \pwm_2|Add1~25_sumout\;
\pwm_2|ALT_INV_Add1~21_sumout\ <= NOT \pwm_2|Add1~21_sumout\;
\pwm_2|ALT_INV_Add1~17_sumout\ <= NOT \pwm_2|Add1~17_sumout\;
\pwm_2|ALT_INV_Add1~13_sumout\ <= NOT \pwm_2|Add1~13_sumout\;
\pwm_2|ALT_INV_Add1~9_sumout\ <= NOT \pwm_2|Add1~9_sumout\;
\pwm_2|ALT_INV_Add1~5_sumout\ <= NOT \pwm_2|Add1~5_sumout\;
\pwm_2|ALT_INV_Add1~1_sumout\ <= NOT \pwm_2|Add1~1_sumout\;
\pwm_1|ALT_INV_Add1~73_sumout\ <= NOT \pwm_1|Add1~73_sumout\;
\pwm_1|ALT_INV_Add1~69_sumout\ <= NOT \pwm_1|Add1~69_sumout\;
\pwm_1|ALT_INV_Add1~65_sumout\ <= NOT \pwm_1|Add1~65_sumout\;
\pwm_1|ALT_INV_Add1~61_sumout\ <= NOT \pwm_1|Add1~61_sumout\;
\pwm_1|ALT_INV_Add1~57_sumout\ <= NOT \pwm_1|Add1~57_sumout\;
\pwm_1|ALT_INV_Add1~53_sumout\ <= NOT \pwm_1|Add1~53_sumout\;
\pwm_1|ALT_INV_Add1~49_sumout\ <= NOT \pwm_1|Add1~49_sumout\;
\pwm_1|ALT_INV_Add1~45_sumout\ <= NOT \pwm_1|Add1~45_sumout\;
\pwm_1|ALT_INV_Add1~41_sumout\ <= NOT \pwm_1|Add1~41_sumout\;
\pwm_1|ALT_INV_Add1~37_sumout\ <= NOT \pwm_1|Add1~37_sumout\;
\pwm_1|ALT_INV_Add1~33_sumout\ <= NOT \pwm_1|Add1~33_sumout\;
\pwm_1|ALT_INV_Add1~29_sumout\ <= NOT \pwm_1|Add1~29_sumout\;
\pwm_1|ALT_INV_Add1~25_sumout\ <= NOT \pwm_1|Add1~25_sumout\;
\pwm_1|ALT_INV_Add1~21_sumout\ <= NOT \pwm_1|Add1~21_sumout\;
\pwm_1|ALT_INV_Add1~17_sumout\ <= NOT \pwm_1|Add1~17_sumout\;
\pwm_1|ALT_INV_Add1~13_sumout\ <= NOT \pwm_1|Add1~13_sumout\;
\pwm_1|ALT_INV_Add1~9_sumout\ <= NOT \pwm_1|Add1~9_sumout\;
\pwm_1|ALT_INV_Add1~5_sumout\ <= NOT \pwm_1|Add1~5_sumout\;
\pwm_1|ALT_INV_Add1~1_sumout\ <= NOT \pwm_1|Add1~1_sumout\;
\pwm_0|ALT_INV_Add1~73_sumout\ <= NOT \pwm_0|Add1~73_sumout\;
\pwm_0|ALT_INV_Add1~69_sumout\ <= NOT \pwm_0|Add1~69_sumout\;
\pwm_0|ALT_INV_count[0][10]~q\ <= NOT \pwm_0|count[0][10]~q\;
\pwm_0|ALT_INV_count[0][9]~q\ <= NOT \pwm_0|count[0][9]~q\;
\pwm_0|ALT_INV_Add1~65_sumout\ <= NOT \pwm_0|Add1~65_sumout\;
\pwm_0|ALT_INV_Add1~61_sumout\ <= NOT \pwm_0|Add1~61_sumout\;
\pwm_0|ALT_INV_count[0][2]~q\ <= NOT \pwm_0|count[0][2]~q\;
\pwm_0|ALT_INV_count[0][1]~q\ <= NOT \pwm_0|count[0][1]~q\;
\pwm_0|ALT_INV_count[0][0]~q\ <= NOT \pwm_0|count[0][0]~q\;
\pwm_0|ALT_INV_Add1~57_sumout\ <= NOT \pwm_0|Add1~57_sumout\;
\pwm_0|ALT_INV_Add1~53_sumout\ <= NOT \pwm_0|Add1~53_sumout\;
\pwm_0|ALT_INV_count[0][12]~q\ <= NOT \pwm_0|count[0][12]~q\;
\pwm_0|ALT_INV_Add1~49_sumout\ <= NOT \pwm_0|Add1~49_sumout\;
\pwm_0|ALT_INV_count[0][11]~q\ <= NOT \pwm_0|count[0][11]~q\;
\pwm_0|ALT_INV_count[0][13]~q\ <= NOT \pwm_0|count[0][13]~q\;
\pwm_0|ALT_INV_Add1~45_sumout\ <= NOT \pwm_0|Add1~45_sumout\;
\pwm_0|ALT_INV_Add1~41_sumout\ <= NOT \pwm_0|Add1~41_sumout\;
\pwm_0|ALT_INV_Add1~37_sumout\ <= NOT \pwm_0|Add1~37_sumout\;
\pwm_0|ALT_INV_count[0][5]~q\ <= NOT \pwm_0|count[0][5]~q\;
\pwm_0|ALT_INV_count[0][4]~q\ <= NOT \pwm_0|count[0][4]~q\;
\pwm_0|ALT_INV_count[0][3]~q\ <= NOT \pwm_0|count[0][3]~q\;
\pwm_0|ALT_INV_Add1~33_sumout\ <= NOT \pwm_0|Add1~33_sumout\;
\pwm_0|ALT_INV_Add1~29_sumout\ <= NOT \pwm_0|Add1~29_sumout\;
\pwm_0|ALT_INV_count[0][15]~q\ <= NOT \pwm_0|count[0][15]~q\;
\pwm_0|ALT_INV_count[0][14]~q\ <= NOT \pwm_0|count[0][14]~q\;
\pwm_0|ALT_INV_Add1~25_sumout\ <= NOT \pwm_0|Add1~25_sumout\;
\pwm_0|ALT_INV_Add1~21_sumout\ <= NOT \pwm_0|Add1~21_sumout\;
\pwm_0|ALT_INV_count[0][17]~q\ <= NOT \pwm_0|count[0][17]~q\;
\pwm_0|ALT_INV_count[0][16]~q\ <= NOT \pwm_0|count[0][16]~q\;
\pwm_0|ALT_INV_Add1~17_sumout\ <= NOT \pwm_0|Add1~17_sumout\;
\pwm_0|ALT_INV_Add1~13_sumout\ <= NOT \pwm_0|Add1~13_sumout\;
\pwm_0|ALT_INV_Add1~9_sumout\ <= NOT \pwm_0|Add1~9_sumout\;
\pwm_0|ALT_INV_count[0][8]~q\ <= NOT \pwm_0|count[0][8]~q\;
\pwm_0|ALT_INV_count[0][7]~q\ <= NOT \pwm_0|count[0][7]~q\;
\pwm_0|ALT_INV_count[0][6]~q\ <= NOT \pwm_0|count[0][6]~q\;
\pwm_0|ALT_INV_Add1~5_sumout\ <= NOT \pwm_0|Add1~5_sumout\;
\pwm_0|ALT_INV_Add1~1_sumout\ <= NOT \pwm_0|Add1~1_sumout\;
\pwm_0|ALT_INV_count[0][18]~q\ <= NOT \pwm_0|count[0][18]~q\;
\pwm_0|ALT_INV_count[0][19]~q\ <= NOT \pwm_0|count[0][19]~q\;
\pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\ <= NOT \pwm_0|count[0][9]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\ <= NOT \pwm_0|count[0][2]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\ <= NOT \pwm_0|count[0][1]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\ <= NOT \pwm_0|count[0][5]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\ <= NOT \pwm_0|count[0][4]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][15]~DUPLICATE_q\ <= NOT \pwm_0|count[0][15]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\ <= NOT \pwm_0|count[0][17]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][16]~DUPLICATE_q\ <= NOT \pwm_0|count[0][16]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\ <= NOT \pwm_0|count[0][8]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\ <= NOT \pwm_0|count[0][7]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\ <= NOT \pwm_0|count[0][6]~DUPLICATE_q\;
\pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\ <= NOT \pwm_0|count[0][18]~DUPLICATE_q\;
\ALT_INV_enable_pwm~input_o\ <= NOT \enable_pwm~input_o\;
\ALT_INV_changedown~input_o\ <= NOT \changedown~input_o\;
\ALT_INV_changeup~input_o\ <= NOT \changeup~input_o\;
\ALT_INV_reset_pwm~input_o\ <= NOT \reset_pwm~input_o\;
\pwm_0|ALT_INV_Equal0~2_combout\ <= NOT \pwm_0|Equal0~2_combout\;
\pwm_0|ALT_INV_Equal0~1_combout\ <= NOT \pwm_0|Equal0~1_combout\;
\pwm_0|ALT_INV_Equal0~0_combout\ <= NOT \pwm_0|Equal0~0_combout\;
\ALT_INV_lastChangedown~q\ <= NOT \lastChangedown~q\;
\ALT_INV_lastChangeup~q\ <= NOT \lastChangeup~q\;
\pwm_9|ALT_INV_Equal1~8_combout\ <= NOT \pwm_9|Equal1~8_combout\;
\pwm_9|ALT_INV_Equal1~7_combout\ <= NOT \pwm_9|Equal1~7_combout\;
\pwm_9|ALT_INV_Equal1~6_combout\ <= NOT \pwm_9|Equal1~6_combout\;
\pwm_9|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_9|half_duty[0][3]~q\;
\pwm_9|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_9|half_duty[0][2]~q\;
\pwm_9|ALT_INV_Equal1~5_combout\ <= NOT \pwm_9|Equal1~5_combout\;
\pwm_9|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_9|half_duty[0][1]~q\;
\pwm_9|ALT_INV_Equal1~4_combout\ <= NOT \pwm_9|Equal1~4_combout\;
\pwm_9|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_9|half_duty[0][7]~q\;
\pwm_9|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_9|half_duty[0][6]~q\;
\pwm_9|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_9|half_duty[0][5]~q\;
\pwm_9|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_9|half_duty[0][4]~q\;
\pwm_9|ALT_INV_Equal1~3_combout\ <= NOT \pwm_9|Equal1~3_combout\;
\pwm_9|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_9|half_duty[0][10]~q\;
\pwm_9|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_9|half_duty[0][9]~q\;
\pwm_9|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_9|half_duty[0][8]~q\;
\pwm_9|ALT_INV_Equal1~2_combout\ <= NOT \pwm_9|Equal1~2_combout\;
\pwm_9|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_9|half_duty[0][13]~q\;
\pwm_9|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_9|half_duty[0][12]~q\;
\pwm_9|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_9|half_duty[0][11]~q\;
\pwm_9|ALT_INV_Equal1~1_combout\ <= NOT \pwm_9|Equal1~1_combout\;
\pwm_9|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_9|half_duty[0][16]~q\;
\pwm_9|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_9|half_duty[0][15]~q\;
\pwm_9|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_9|half_duty[0][14]~q\;
\pwm_9|ALT_INV_Equal1~0_combout\ <= NOT \pwm_9|Equal1~0_combout\;
\pwm_9|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_9|half_duty[0][18]~q\;
\pwm_9|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_9|half_duty[0][17]~q\;
\pwm_9|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_9|pwm_out~7_combout\;
\pwm_9|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_9|pwm_out~6_combout\;
\pwm_9|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_9|pwm_out~5_combout\;
\pwm_9|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_9|half_duty[0][0]~q\;
\pwm_9|ALT_INV_Equal2~1_combout\ <= NOT \pwm_9|Equal2~1_combout\;
\pwm_9|ALT_INV_Equal2~0_combout\ <= NOT \pwm_9|Equal2~0_combout\;
\pwm_9|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_9|pwm_out~4_combout\;
\pwm_9|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_9|pwm_out~3_combout\;
\pwm_9|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_9|pwm_out~2_combout\;
\pwm_9|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_9|pwm_out~1_combout\;
\pwm_9|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_9|pwm_out~0_combout\;
\pwm_8|ALT_INV_Equal1~8_combout\ <= NOT \pwm_8|Equal1~8_combout\;
\pwm_8|ALT_INV_Equal1~7_combout\ <= NOT \pwm_8|Equal1~7_combout\;
\pwm_8|ALT_INV_Equal1~6_combout\ <= NOT \pwm_8|Equal1~6_combout\;
\pwm_8|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_8|half_duty[0][3]~q\;
\pwm_8|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_8|half_duty[0][2]~q\;
\pwm_8|ALT_INV_Equal1~5_combout\ <= NOT \pwm_8|Equal1~5_combout\;
\pwm_8|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_8|half_duty[0][1]~q\;
\pwm_8|ALT_INV_Equal1~4_combout\ <= NOT \pwm_8|Equal1~4_combout\;
\pwm_8|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_8|half_duty[0][7]~q\;
\pwm_8|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_8|half_duty[0][6]~q\;
\pwm_8|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_8|half_duty[0][5]~q\;
\pwm_8|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_8|half_duty[0][4]~q\;
\pwm_8|ALT_INV_Equal1~3_combout\ <= NOT \pwm_8|Equal1~3_combout\;
\pwm_8|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_8|half_duty[0][10]~q\;
\pwm_8|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_8|half_duty[0][9]~q\;
\pwm_8|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_8|half_duty[0][8]~q\;
\pwm_8|ALT_INV_Equal1~2_combout\ <= NOT \pwm_8|Equal1~2_combout\;
\pwm_8|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_8|half_duty[0][13]~q\;
\pwm_8|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_8|half_duty[0][12]~q\;
\pwm_8|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_8|half_duty[0][11]~q\;
\pwm_8|ALT_INV_Equal1~1_combout\ <= NOT \pwm_8|Equal1~1_combout\;
\pwm_8|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_8|half_duty[0][16]~q\;
\pwm_8|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_8|half_duty[0][15]~q\;
\pwm_8|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_8|half_duty[0][14]~q\;
\pwm_8|ALT_INV_Equal1~0_combout\ <= NOT \pwm_8|Equal1~0_combout\;
\pwm_8|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_8|half_duty[0][18]~q\;
\pwm_8|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_8|half_duty[0][17]~q\;
\pwm_8|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_8|pwm_out~7_combout\;
\pwm_8|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_8|pwm_out~6_combout\;
\pwm_8|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_8|pwm_out~5_combout\;
\pwm_8|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_8|half_duty[0][0]~q\;
\pwm_8|ALT_INV_Equal2~1_combout\ <= NOT \pwm_8|Equal2~1_combout\;
\pwm_8|ALT_INV_Equal2~0_combout\ <= NOT \pwm_8|Equal2~0_combout\;
\pwm_8|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_8|pwm_out~4_combout\;
\pwm_8|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_8|pwm_out~3_combout\;
\pwm_8|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_8|pwm_out~2_combout\;
\pwm_8|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_8|pwm_out~1_combout\;
\pwm_8|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_8|pwm_out~0_combout\;
\pwm_7|ALT_INV_Equal1~8_combout\ <= NOT \pwm_7|Equal1~8_combout\;
\pwm_7|ALT_INV_Equal1~7_combout\ <= NOT \pwm_7|Equal1~7_combout\;
\pwm_7|ALT_INV_Equal1~6_combout\ <= NOT \pwm_7|Equal1~6_combout\;
\pwm_7|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_7|half_duty[0][3]~q\;
\pwm_7|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_7|half_duty[0][2]~q\;
\pwm_7|ALT_INV_Equal1~5_combout\ <= NOT \pwm_7|Equal1~5_combout\;
\pwm_7|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_7|half_duty[0][1]~q\;
\pwm_7|ALT_INV_Equal1~4_combout\ <= NOT \pwm_7|Equal1~4_combout\;
\pwm_7|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_7|half_duty[0][7]~q\;
\pwm_7|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_7|half_duty[0][6]~q\;
\pwm_7|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_7|half_duty[0][5]~q\;
\pwm_7|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_7|half_duty[0][4]~q\;
\pwm_7|ALT_INV_Equal1~3_combout\ <= NOT \pwm_7|Equal1~3_combout\;
\pwm_7|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_7|half_duty[0][10]~q\;
\pwm_7|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_7|half_duty[0][9]~q\;
\pwm_7|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_7|half_duty[0][8]~q\;
\pwm_7|ALT_INV_Equal1~2_combout\ <= NOT \pwm_7|Equal1~2_combout\;
\pwm_7|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_7|half_duty[0][13]~q\;
\pwm_7|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_7|half_duty[0][12]~q\;
\pwm_7|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_7|half_duty[0][11]~q\;
\pwm_7|ALT_INV_Equal1~1_combout\ <= NOT \pwm_7|Equal1~1_combout\;
\pwm_7|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_7|half_duty[0][16]~q\;
\pwm_7|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_7|half_duty[0][15]~q\;
\pwm_7|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_7|half_duty[0][14]~q\;
\pwm_7|ALT_INV_Equal1~0_combout\ <= NOT \pwm_7|Equal1~0_combout\;
\pwm_7|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_7|half_duty[0][18]~q\;
\pwm_7|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_7|half_duty[0][17]~q\;
\pwm_7|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_7|pwm_out~7_combout\;
\pwm_7|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_7|pwm_out~6_combout\;
\pwm_7|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_7|pwm_out~5_combout\;
\pwm_7|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_7|half_duty[0][0]~q\;
\pwm_7|ALT_INV_Equal2~1_combout\ <= NOT \pwm_7|Equal2~1_combout\;
\pwm_7|ALT_INV_Equal2~0_combout\ <= NOT \pwm_7|Equal2~0_combout\;
\pwm_7|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_7|pwm_out~4_combout\;
\pwm_7|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_7|pwm_out~3_combout\;
\pwm_7|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_7|pwm_out~2_combout\;
\pwm_7|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_7|pwm_out~1_combout\;
\pwm_7|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_7|pwm_out~0_combout\;
\pwm_6|ALT_INV_Equal1~8_combout\ <= NOT \pwm_6|Equal1~8_combout\;
\pwm_6|ALT_INV_Equal1~7_combout\ <= NOT \pwm_6|Equal1~7_combout\;
\pwm_6|ALT_INV_Equal1~6_combout\ <= NOT \pwm_6|Equal1~6_combout\;
\pwm_6|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_6|half_duty[0][3]~q\;
\pwm_6|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_6|half_duty[0][2]~q\;
\pwm_6|ALT_INV_Equal1~5_combout\ <= NOT \pwm_6|Equal1~5_combout\;
\pwm_6|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_6|half_duty[0][1]~q\;
\pwm_6|ALT_INV_Equal1~4_combout\ <= NOT \pwm_6|Equal1~4_combout\;
\pwm_6|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_6|half_duty[0][7]~q\;
\pwm_6|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_6|half_duty[0][6]~q\;
\pwm_6|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_6|half_duty[0][5]~q\;
\pwm_6|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_6|half_duty[0][4]~q\;
\pwm_6|ALT_INV_Equal1~3_combout\ <= NOT \pwm_6|Equal1~3_combout\;
\pwm_6|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_6|half_duty[0][10]~q\;
\pwm_6|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_6|half_duty[0][9]~q\;
\pwm_6|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_6|half_duty[0][8]~q\;
\pwm_6|ALT_INV_Equal1~2_combout\ <= NOT \pwm_6|Equal1~2_combout\;
\pwm_6|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_6|half_duty[0][13]~q\;
\pwm_6|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_6|half_duty[0][12]~q\;
\pwm_6|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_6|half_duty[0][11]~q\;
\pwm_6|ALT_INV_Equal1~1_combout\ <= NOT \pwm_6|Equal1~1_combout\;
\pwm_6|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_6|half_duty[0][16]~q\;
\pwm_6|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_6|half_duty[0][15]~q\;
\pwm_6|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_6|half_duty[0][14]~q\;
\pwm_6|ALT_INV_Equal1~0_combout\ <= NOT \pwm_6|Equal1~0_combout\;
\pwm_6|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_6|half_duty[0][18]~q\;
\pwm_6|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_6|half_duty[0][17]~q\;
\pwm_6|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_6|pwm_out~7_combout\;
\pwm_6|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_6|pwm_out~6_combout\;
\pwm_6|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_6|pwm_out~5_combout\;
\pwm_6|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_6|half_duty[0][0]~q\;
\pwm_6|ALT_INV_Equal2~1_combout\ <= NOT \pwm_6|Equal2~1_combout\;
\pwm_6|ALT_INV_Equal2~0_combout\ <= NOT \pwm_6|Equal2~0_combout\;
\pwm_6|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_6|pwm_out~4_combout\;
\pwm_6|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_6|pwm_out~3_combout\;
\pwm_6|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_6|pwm_out~2_combout\;
\pwm_6|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_6|pwm_out~1_combout\;
\pwm_6|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_6|pwm_out~0_combout\;
\pwm_5|ALT_INV_Equal1~8_combout\ <= NOT \pwm_5|Equal1~8_combout\;
\pwm_5|ALT_INV_Equal1~7_combout\ <= NOT \pwm_5|Equal1~7_combout\;
\pwm_5|ALT_INV_Equal1~6_combout\ <= NOT \pwm_5|Equal1~6_combout\;
\pwm_5|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_5|half_duty[0][3]~q\;
\pwm_5|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_5|half_duty[0][2]~q\;
\pwm_5|ALT_INV_Equal1~5_combout\ <= NOT \pwm_5|Equal1~5_combout\;
\pwm_5|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_5|half_duty[0][1]~q\;
\pwm_5|ALT_INV_Equal1~4_combout\ <= NOT \pwm_5|Equal1~4_combout\;
\pwm_5|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_5|half_duty[0][7]~q\;
\pwm_5|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_5|half_duty[0][6]~q\;
\pwm_5|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_5|half_duty[0][5]~q\;
\pwm_5|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_5|half_duty[0][4]~q\;
\pwm_5|ALT_INV_Equal1~3_combout\ <= NOT \pwm_5|Equal1~3_combout\;
\pwm_5|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_5|half_duty[0][10]~q\;
\pwm_5|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_5|half_duty[0][9]~q\;
\pwm_5|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_5|half_duty[0][8]~q\;
\pwm_5|ALT_INV_Equal1~2_combout\ <= NOT \pwm_5|Equal1~2_combout\;
\pwm_5|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_5|half_duty[0][13]~q\;
\pwm_5|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_5|half_duty[0][12]~q\;
\pwm_5|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_5|half_duty[0][11]~q\;
\pwm_5|ALT_INV_Equal1~1_combout\ <= NOT \pwm_5|Equal1~1_combout\;
\pwm_5|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_5|half_duty[0][16]~q\;
\pwm_5|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_5|half_duty[0][15]~q\;
\pwm_5|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_5|half_duty[0][14]~q\;
\pwm_5|ALT_INV_Equal1~0_combout\ <= NOT \pwm_5|Equal1~0_combout\;
\pwm_5|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_5|half_duty[0][18]~q\;
\pwm_5|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_5|half_duty[0][17]~q\;
\pwm_5|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_5|pwm_out~7_combout\;
\pwm_5|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_5|pwm_out~6_combout\;
\pwm_5|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_5|pwm_out~5_combout\;
\pwm_5|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_5|half_duty[0][0]~q\;
\pwm_5|ALT_INV_Equal2~1_combout\ <= NOT \pwm_5|Equal2~1_combout\;
\pwm_5|ALT_INV_Equal2~0_combout\ <= NOT \pwm_5|Equal2~0_combout\;
\pwm_5|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_5|pwm_out~4_combout\;
\pwm_5|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_5|pwm_out~3_combout\;
\pwm_5|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_5|pwm_out~2_combout\;
\pwm_5|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_5|pwm_out~1_combout\;
\pwm_5|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_5|pwm_out~0_combout\;
\pwm_4|ALT_INV_Equal1~8_combout\ <= NOT \pwm_4|Equal1~8_combout\;
\pwm_4|ALT_INV_Equal1~7_combout\ <= NOT \pwm_4|Equal1~7_combout\;
\pwm_4|ALT_INV_Equal1~6_combout\ <= NOT \pwm_4|Equal1~6_combout\;
\pwm_4|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_4|half_duty[0][3]~q\;
\pwm_4|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_4|half_duty[0][2]~q\;
\pwm_4|ALT_INV_Equal1~5_combout\ <= NOT \pwm_4|Equal1~5_combout\;
\pwm_4|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_4|half_duty[0][1]~q\;
\pwm_4|ALT_INV_Equal1~4_combout\ <= NOT \pwm_4|Equal1~4_combout\;
\pwm_4|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_4|half_duty[0][7]~q\;
\pwm_4|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_4|half_duty[0][6]~q\;
\pwm_4|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_4|half_duty[0][5]~q\;
\pwm_4|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_4|half_duty[0][4]~q\;
\pwm_4|ALT_INV_Equal1~3_combout\ <= NOT \pwm_4|Equal1~3_combout\;
\pwm_4|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_4|half_duty[0][10]~q\;
\pwm_4|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_4|half_duty[0][9]~q\;
\pwm_4|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_4|half_duty[0][8]~q\;
\pwm_4|ALT_INV_Equal1~2_combout\ <= NOT \pwm_4|Equal1~2_combout\;
\pwm_4|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_4|half_duty[0][13]~q\;
\pwm_4|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_4|half_duty[0][12]~q\;
\pwm_4|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_4|half_duty[0][11]~q\;
\pwm_4|ALT_INV_Equal1~1_combout\ <= NOT \pwm_4|Equal1~1_combout\;
\pwm_4|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_4|half_duty[0][16]~q\;
\pwm_4|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_4|half_duty[0][15]~q\;
\pwm_4|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_4|half_duty[0][14]~q\;
\pwm_4|ALT_INV_Equal1~0_combout\ <= NOT \pwm_4|Equal1~0_combout\;
\pwm_4|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_4|half_duty[0][18]~q\;
\pwm_4|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_4|half_duty[0][17]~q\;
\pwm_4|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_4|pwm_out~7_combout\;
\pwm_4|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_4|pwm_out~6_combout\;
\pwm_4|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_4|pwm_out~5_combout\;
\pwm_4|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_4|half_duty[0][0]~q\;
\pwm_4|ALT_INV_Equal2~1_combout\ <= NOT \pwm_4|Equal2~1_combout\;
\pwm_4|ALT_INV_Equal2~0_combout\ <= NOT \pwm_4|Equal2~0_combout\;
\pwm_4|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_4|pwm_out~4_combout\;
\pwm_4|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_4|pwm_out~3_combout\;
\pwm_4|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_4|pwm_out~2_combout\;
\pwm_4|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_4|pwm_out~1_combout\;
\pwm_4|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_4|pwm_out~0_combout\;
\pwm_3|ALT_INV_Equal1~8_combout\ <= NOT \pwm_3|Equal1~8_combout\;
\pwm_3|ALT_INV_Equal1~7_combout\ <= NOT \pwm_3|Equal1~7_combout\;
\pwm_3|ALT_INV_Equal1~6_combout\ <= NOT \pwm_3|Equal1~6_combout\;
\pwm_3|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_3|half_duty[0][3]~q\;
\pwm_3|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_3|half_duty[0][2]~q\;
\pwm_3|ALT_INV_Equal1~5_combout\ <= NOT \pwm_3|Equal1~5_combout\;
\pwm_3|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_3|half_duty[0][1]~q\;
\pwm_3|ALT_INV_Equal1~4_combout\ <= NOT \pwm_3|Equal1~4_combout\;
\pwm_3|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_3|half_duty[0][7]~q\;
\pwm_3|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_3|half_duty[0][6]~q\;
\pwm_3|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_3|half_duty[0][5]~q\;
\pwm_3|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_3|half_duty[0][4]~q\;
\pwm_3|ALT_INV_Equal1~3_combout\ <= NOT \pwm_3|Equal1~3_combout\;
\pwm_3|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_3|half_duty[0][10]~q\;
\pwm_3|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_3|half_duty[0][9]~q\;
\pwm_3|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_3|half_duty[0][8]~q\;
\pwm_3|ALT_INV_Equal1~2_combout\ <= NOT \pwm_3|Equal1~2_combout\;
\pwm_3|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_3|half_duty[0][13]~q\;
\pwm_3|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_3|half_duty[0][12]~q\;
\pwm_3|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_3|half_duty[0][11]~q\;
\pwm_3|ALT_INV_Equal1~1_combout\ <= NOT \pwm_3|Equal1~1_combout\;
\pwm_3|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_3|half_duty[0][16]~q\;
\pwm_3|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_3|half_duty[0][15]~q\;
\pwm_3|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_3|half_duty[0][14]~q\;
\pwm_3|ALT_INV_Equal1~0_combout\ <= NOT \pwm_3|Equal1~0_combout\;
\pwm_3|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_3|half_duty[0][18]~q\;
\pwm_3|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_3|half_duty[0][17]~q\;
\pwm_3|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_3|pwm_out~7_combout\;
\pwm_3|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_3|pwm_out~6_combout\;
\pwm_3|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_3|pwm_out~5_combout\;
\pwm_3|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_3|half_duty[0][0]~q\;
\pwm_3|ALT_INV_Equal2~1_combout\ <= NOT \pwm_3|Equal2~1_combout\;
\pwm_3|ALT_INV_Equal2~0_combout\ <= NOT \pwm_3|Equal2~0_combout\;
\pwm_3|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_3|pwm_out~4_combout\;
\pwm_3|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_3|pwm_out~3_combout\;
\pwm_3|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_3|pwm_out~2_combout\;
\pwm_3|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_3|pwm_out~1_combout\;
\pwm_3|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_3|pwm_out~0_combout\;
\pwm_2|ALT_INV_Equal1~8_combout\ <= NOT \pwm_2|Equal1~8_combout\;
\pwm_2|ALT_INV_Equal1~7_combout\ <= NOT \pwm_2|Equal1~7_combout\;
\pwm_2|ALT_INV_Equal1~6_combout\ <= NOT \pwm_2|Equal1~6_combout\;
\pwm_2|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_2|half_duty[0][3]~q\;
\pwm_2|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_2|half_duty[0][2]~q\;
\pwm_2|ALT_INV_Equal1~5_combout\ <= NOT \pwm_2|Equal1~5_combout\;
\pwm_2|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_2|half_duty[0][1]~q\;
\pwm_2|ALT_INV_Equal1~4_combout\ <= NOT \pwm_2|Equal1~4_combout\;
\pwm_2|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_2|half_duty[0][7]~q\;
\pwm_2|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_2|half_duty[0][6]~q\;
\pwm_2|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_2|half_duty[0][5]~q\;
\pwm_2|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_2|half_duty[0][4]~q\;
\pwm_2|ALT_INV_Equal1~3_combout\ <= NOT \pwm_2|Equal1~3_combout\;
\pwm_2|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_2|half_duty[0][10]~q\;
\pwm_2|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_2|half_duty[0][9]~q\;
\pwm_2|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_2|half_duty[0][8]~q\;
\pwm_2|ALT_INV_Equal1~2_combout\ <= NOT \pwm_2|Equal1~2_combout\;
\pwm_2|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_2|half_duty[0][13]~q\;
\pwm_2|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_2|half_duty[0][12]~q\;
\pwm_2|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_2|half_duty[0][11]~q\;
\pwm_2|ALT_INV_Equal1~1_combout\ <= NOT \pwm_2|Equal1~1_combout\;
\pwm_2|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_2|half_duty[0][16]~q\;
\pwm_2|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_2|half_duty[0][15]~q\;
\pwm_2|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_2|half_duty[0][14]~q\;
\pwm_2|ALT_INV_Equal1~0_combout\ <= NOT \pwm_2|Equal1~0_combout\;
\pwm_2|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_2|half_duty[0][18]~q\;
\pwm_2|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_2|half_duty[0][17]~q\;
\pwm_2|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_2|pwm_out~7_combout\;
\pwm_2|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_2|pwm_out~6_combout\;
\pwm_2|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_2|pwm_out~5_combout\;
\pwm_2|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_2|half_duty[0][0]~q\;
\pwm_2|ALT_INV_Equal2~1_combout\ <= NOT \pwm_2|Equal2~1_combout\;
\pwm_2|ALT_INV_Equal2~0_combout\ <= NOT \pwm_2|Equal2~0_combout\;
\pwm_2|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_2|pwm_out~4_combout\;
\pwm_2|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_2|pwm_out~3_combout\;
\pwm_2|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_2|pwm_out~2_combout\;
\pwm_2|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_2|pwm_out~1_combout\;
\pwm_2|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_2|pwm_out~0_combout\;
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
\pwm_1|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_1|pwm_out~7_combout\;
\pwm_1|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_1|pwm_out~6_combout\;
\pwm_1|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_1|pwm_out~5_combout\;
\pwm_1|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_1|half_duty[0][0]~q\;
\pwm_1|ALT_INV_Equal2~1_combout\ <= NOT \pwm_1|Equal2~1_combout\;
\pwm_1|ALT_INV_Equal2~0_combout\ <= NOT \pwm_1|Equal2~0_combout\;
\pwm_1|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_1|pwm_out~4_combout\;
\pwm_1|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_1|pwm_out~3_combout\;
\pwm_1|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_1|pwm_out~2_combout\;
\pwm_1|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_1|pwm_out~1_combout\;
\pwm_1|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_1|pwm_out~0_combout\;
\pwm_0|ALT_INV_Equal1~8_combout\ <= NOT \pwm_0|Equal1~8_combout\;
\pwm_0|ALT_INV_Equal1~7_combout\ <= NOT \pwm_0|Equal1~7_combout\;
\pwm_0|ALT_INV_Equal1~6_combout\ <= NOT \pwm_0|Equal1~6_combout\;
\pwm_0|ALT_INV_half_duty[0][3]~q\ <= NOT \pwm_0|half_duty[0][3]~q\;
\pwm_0|ALT_INV_half_duty[0][2]~q\ <= NOT \pwm_0|half_duty[0][2]~q\;
\pwm_0|ALT_INV_Equal1~5_combout\ <= NOT \pwm_0|Equal1~5_combout\;
\pwm_0|ALT_INV_half_duty[0][1]~q\ <= NOT \pwm_0|half_duty[0][1]~q\;
\pwm_0|ALT_INV_Equal1~4_combout\ <= NOT \pwm_0|Equal1~4_combout\;
\pwm_0|ALT_INV_half_duty[0][7]~q\ <= NOT \pwm_0|half_duty[0][7]~q\;
\pwm_0|ALT_INV_half_duty[0][6]~q\ <= NOT \pwm_0|half_duty[0][6]~q\;
\pwm_0|ALT_INV_half_duty[0][5]~q\ <= NOT \pwm_0|half_duty[0][5]~q\;
\pwm_0|ALT_INV_half_duty[0][4]~q\ <= NOT \pwm_0|half_duty[0][4]~q\;
\pwm_0|ALT_INV_Equal1~3_combout\ <= NOT \pwm_0|Equal1~3_combout\;
\pwm_0|ALT_INV_half_duty[0][10]~q\ <= NOT \pwm_0|half_duty[0][10]~q\;
\pwm_0|ALT_INV_half_duty[0][9]~q\ <= NOT \pwm_0|half_duty[0][9]~q\;
\pwm_0|ALT_INV_half_duty[0][8]~q\ <= NOT \pwm_0|half_duty[0][8]~q\;
\pwm_0|ALT_INV_Equal1~2_combout\ <= NOT \pwm_0|Equal1~2_combout\;
\pwm_0|ALT_INV_half_duty[0][13]~q\ <= NOT \pwm_0|half_duty[0][13]~q\;
\pwm_0|ALT_INV_half_duty[0][12]~q\ <= NOT \pwm_0|half_duty[0][12]~q\;
\pwm_0|ALT_INV_half_duty[0][11]~q\ <= NOT \pwm_0|half_duty[0][11]~q\;
\pwm_0|ALT_INV_Equal1~1_combout\ <= NOT \pwm_0|Equal1~1_combout\;
\pwm_0|ALT_INV_half_duty[0][16]~q\ <= NOT \pwm_0|half_duty[0][16]~q\;
\pwm_0|ALT_INV_half_duty[0][15]~q\ <= NOT \pwm_0|half_duty[0][15]~q\;
\pwm_0|ALT_INV_half_duty[0][14]~q\ <= NOT \pwm_0|half_duty[0][14]~q\;
\pwm_0|ALT_INV_Equal1~0_combout\ <= NOT \pwm_0|Equal1~0_combout\;
\pwm_0|ALT_INV_half_duty[0][18]~q\ <= NOT \pwm_0|half_duty[0][18]~q\;
\pwm_0|ALT_INV_half_duty[0][17]~q\ <= NOT \pwm_0|half_duty[0][17]~q\;
\pwm_0|ALT_INV_pwm_out~7_combout\ <= NOT \pwm_0|pwm_out~7_combout\;
\pwm_0|ALT_INV_pwm_out~6_combout\ <= NOT \pwm_0|pwm_out~6_combout\;
\pwm_0|ALT_INV_pwm_out~5_combout\ <= NOT \pwm_0|pwm_out~5_combout\;
\pwm_0|ALT_INV_half_duty[0][0]~q\ <= NOT \pwm_0|half_duty[0][0]~q\;
\pwm_0|ALT_INV_Equal2~1_combout\ <= NOT \pwm_0|Equal2~1_combout\;
\pwm_0|ALT_INV_Equal2~0_combout\ <= NOT \pwm_0|Equal2~0_combout\;
\pwm_0|ALT_INV_pwm_out~4_combout\ <= NOT \pwm_0|pwm_out~4_combout\;
\pwm_0|ALT_INV_pwm_out~3_combout\ <= NOT \pwm_0|pwm_out~3_combout\;
\pwm_0|ALT_INV_pwm_out~2_combout\ <= NOT \pwm_0|pwm_out~2_combout\;
\pwm_0|ALT_INV_pwm_out~1_combout\ <= NOT \pwm_0|pwm_out~1_combout\;
\pwm_0|ALT_INV_pwm_out~0_combout\ <= NOT \pwm_0|pwm_out~0_combout\;
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
\ALT_INV_duty_value[6]~_Duplicate_10_q\ <= NOT \duty_value[6]~_Duplicate_10_q\;
\ALT_INV_duty_value[7]~_Duplicate_10_q\ <= NOT \duty_value[7]~_Duplicate_10_q\;
\ALT_INV_duty_value[5]~_Duplicate_10_q\ <= NOT \duty_value[5]~_Duplicate_10_q\;
\ALT_INV_duty_value[4]~_Duplicate_10_q\ <= NOT \duty_value[4]~_Duplicate_10_q\;
\ALT_INV_duty_value[3]~_Duplicate_10_q\ <= NOT \duty_value[3]~_Duplicate_10_q\;
\ALT_INV_duty_value[2]~_Duplicate_10_q\ <= NOT \duty_value[2]~_Duplicate_10_q\;
\ALT_INV_duty_value[1]~_Duplicate_10_q\ <= NOT \duty_value[1]~_Duplicate_10_q\;
\ALT_INV_duty_value[0]~_Duplicate_10_q\ <= NOT \duty_value[0]~_Duplicate_10_q\;
\pwm_9|ALT_INV_pwm_out\(0) <= NOT \pwm_9|pwm_out\(0);
\pwm_8|ALT_INV_pwm_out\(0) <= NOT \pwm_8|pwm_out\(0);
\pwm_7|ALT_INV_pwm_out\(0) <= NOT \pwm_7|pwm_out\(0);
\pwm_6|ALT_INV_pwm_out\(0) <= NOT \pwm_6|pwm_out\(0);
\pwm_5|ALT_INV_pwm_out\(0) <= NOT \pwm_5|pwm_out\(0);
\pwm_4|ALT_INV_pwm_out\(0) <= NOT \pwm_4|pwm_out\(0);
\pwm_3|ALT_INV_pwm_out\(0) <= NOT \pwm_3|pwm_out\(0);
\pwm_2|ALT_INV_pwm_out\(0) <= NOT \pwm_2|pwm_out\(0);
\pwm_1|ALT_INV_pwm_out\(0) <= NOT \pwm_1|pwm_out\(0);
\pwm_0|ALT_INV_pwm_out\(0) <= NOT \pwm_0|pwm_out\(0);
\pwm_9|ALT_INV_Mult0~35\ <= NOT \pwm_9|Mult0~35\;
\pwm_9|ALT_INV_Mult0~34\ <= NOT \pwm_9|Mult0~34\;
\pwm_9|ALT_INV_Mult0~32\ <= NOT \pwm_9|Mult0~32\;
\pwm_9|ALT_INV_Mult0~27\ <= NOT \pwm_9|Mult0~27\;
\pwm_9|ALT_INV_Mult0~25\ <= NOT \pwm_9|Mult0~25\;
\pwm_9|ALT_INV_Mult0~24\ <= NOT \pwm_9|Mult0~24\;
\pwm_9|ALT_INV_Mult0~23\ <= NOT \pwm_9|Mult0~23\;
\pwm_9|ALT_INV_Mult0~21\ <= NOT \pwm_9|Mult0~21\;
\pwm_9|ALT_INV_Mult0~19\ <= NOT \pwm_9|Mult0~19\;
\pwm_9|ALT_INV_Mult0~18\ <= NOT \pwm_9|Mult0~18\;
\pwm_9|ALT_INV_Mult0~17\ <= NOT \pwm_9|Mult0~17\;
\pwm_8|ALT_INV_Mult0~35\ <= NOT \pwm_8|Mult0~35\;
\pwm_8|ALT_INV_Mult0~32\ <= NOT \pwm_8|Mult0~32\;
\pwm_8|ALT_INV_Mult0~29\ <= NOT \pwm_8|Mult0~29\;
\pwm_8|ALT_INV_Mult0~24\ <= NOT \pwm_8|Mult0~24\;
\pwm_8|ALT_INV_Mult0~23\ <= NOT \pwm_8|Mult0~23\;
\pwm_8|ALT_INV_Mult0~21\ <= NOT \pwm_8|Mult0~21\;
\pwm_8|ALT_INV_Mult0~19\ <= NOT \pwm_8|Mult0~19\;
\pwm_8|ALT_INV_Mult0~18\ <= NOT \pwm_8|Mult0~18\;
\pwm_7|ALT_INV_Mult0~35\ <= NOT \pwm_7|Mult0~35\;
\pwm_7|ALT_INV_Mult0~34\ <= NOT \pwm_7|Mult0~34\;
\pwm_7|ALT_INV_Mult0~33\ <= NOT \pwm_7|Mult0~33\;
\pwm_7|ALT_INV_Mult0~32\ <= NOT \pwm_7|Mult0~32\;
\pwm_7|ALT_INV_Mult0~30\ <= NOT \pwm_7|Mult0~30\;
\pwm_7|ALT_INV_Mult0~29\ <= NOT \pwm_7|Mult0~29\;
\pwm_7|ALT_INV_Mult0~25\ <= NOT \pwm_7|Mult0~25\;
\pwm_7|ALT_INV_Mult0~23\ <= NOT \pwm_7|Mult0~23\;
\pwm_7|ALT_INV_Mult0~22\ <= NOT \pwm_7|Mult0~22\;
\pwm_7|ALT_INV_Mult0~20\ <= NOT \pwm_7|Mult0~20\;
\pwm_7|ALT_INV_Mult0~19\ <= NOT \pwm_7|Mult0~19\;
\pwm_7|ALT_INV_Mult0~18\ <= NOT \pwm_7|Mult0~18\;
\pwm_6|ALT_INV_Mult0~35\ <= NOT \pwm_6|Mult0~35\;
\pwm_6|ALT_INV_Mult0~33\ <= NOT \pwm_6|Mult0~33\;
\pwm_6|ALT_INV_Mult0~32\ <= NOT \pwm_6|Mult0~32\;
\pwm_6|ALT_INV_Mult0~28\ <= NOT \pwm_6|Mult0~28\;
\pwm_6|ALT_INV_Mult0~25\ <= NOT \pwm_6|Mult0~25\;
\pwm_6|ALT_INV_Mult0~24\ <= NOT \pwm_6|Mult0~24\;
\pwm_6|ALT_INV_Mult0~23\ <= NOT \pwm_6|Mult0~23\;
\pwm_6|ALT_INV_Mult0~22\ <= NOT \pwm_6|Mult0~22\;
\pwm_6|ALT_INV_Mult0~21\ <= NOT \pwm_6|Mult0~21\;
\pwm_6|ALT_INV_Mult0~20\ <= NOT \pwm_6|Mult0~20\;
\pwm_6|ALT_INV_Mult0~19\ <= NOT \pwm_6|Mult0~19\;
\pwm_6|ALT_INV_Mult0~18\ <= NOT \pwm_6|Mult0~18\;
\pwm_5|ALT_INV_Mult0~35\ <= NOT \pwm_5|Mult0~35\;
\pwm_5|ALT_INV_Mult0~33\ <= NOT \pwm_5|Mult0~33\;
\pwm_5|ALT_INV_Mult0~28\ <= NOT \pwm_5|Mult0~28\;
\pwm_5|ALT_INV_Mult0~26\ <= NOT \pwm_5|Mult0~26\;
\pwm_5|ALT_INV_Mult0~24\ <= NOT \pwm_5|Mult0~24\;
\pwm_5|ALT_INV_Mult0~23\ <= NOT \pwm_5|Mult0~23\;
\pwm_5|ALT_INV_Mult0~22\ <= NOT \pwm_5|Mult0~22\;
\pwm_5|ALT_INV_Mult0~20\ <= NOT \pwm_5|Mult0~20\;
\pwm_5|ALT_INV_Mult0~19\ <= NOT \pwm_5|Mult0~19\;
\pwm_5|ALT_INV_Mult0~18\ <= NOT \pwm_5|Mult0~18\;
\pwm_5|ALT_INV_Mult0~17\ <= NOT \pwm_5|Mult0~17\;
\pwm_4|ALT_INV_Mult0~35\ <= NOT \pwm_4|Mult0~35\;
\pwm_4|ALT_INV_Mult0~34\ <= NOT \pwm_4|Mult0~34\;
\pwm_4|ALT_INV_Mult0~33\ <= NOT \pwm_4|Mult0~33\;
\pwm_4|ALT_INV_Mult0~32\ <= NOT \pwm_4|Mult0~32\;
\pwm_4|ALT_INV_Mult0~30\ <= NOT \pwm_4|Mult0~30\;
\pwm_4|ALT_INV_Mult0~28\ <= NOT \pwm_4|Mult0~28\;
\pwm_4|ALT_INV_Mult0~25\ <= NOT \pwm_4|Mult0~25\;
\pwm_4|ALT_INV_Mult0~24\ <= NOT \pwm_4|Mult0~24\;
\pwm_4|ALT_INV_Mult0~22\ <= NOT \pwm_4|Mult0~22\;
\pwm_4|ALT_INV_Mult0~20\ <= NOT \pwm_4|Mult0~20\;
\pwm_4|ALT_INV_Mult0~18\ <= NOT \pwm_4|Mult0~18\;
\pwm_3|ALT_INV_Mult0~34\ <= NOT \pwm_3|Mult0~34\;
\pwm_3|ALT_INV_Mult0~32\ <= NOT \pwm_3|Mult0~32\;
\pwm_3|ALT_INV_Mult0~31\ <= NOT \pwm_3|Mult0~31\;
\pwm_3|ALT_INV_Mult0~30\ <= NOT \pwm_3|Mult0~30\;
\pwm_3|ALT_INV_Mult0~26\ <= NOT \pwm_3|Mult0~26\;
\pwm_3|ALT_INV_Mult0~25\ <= NOT \pwm_3|Mult0~25\;
\pwm_3|ALT_INV_Mult0~23\ <= NOT \pwm_3|Mult0~23\;
\pwm_3|ALT_INV_Mult0~22\ <= NOT \pwm_3|Mult0~22\;
\pwm_3|ALT_INV_Mult0~21\ <= NOT \pwm_3|Mult0~21\;
\pwm_3|ALT_INV_Mult0~19\ <= NOT \pwm_3|Mult0~19\;
\pwm_3|ALT_INV_Mult0~18\ <= NOT \pwm_3|Mult0~18\;
\pwm_2|ALT_INV_Mult0~33\ <= NOT \pwm_2|Mult0~33\;
\pwm_2|ALT_INV_Mult0~32\ <= NOT \pwm_2|Mult0~32\;
\pwm_2|ALT_INV_Mult0~30\ <= NOT \pwm_2|Mult0~30\;
\pwm_2|ALT_INV_Mult0~26\ <= NOT \pwm_2|Mult0~26\;
\pwm_2|ALT_INV_Mult0~25\ <= NOT \pwm_2|Mult0~25\;
\pwm_2|ALT_INV_Mult0~24\ <= NOT \pwm_2|Mult0~24\;
\pwm_2|ALT_INV_Mult0~23\ <= NOT \pwm_2|Mult0~23\;
\pwm_2|ALT_INV_Mult0~21\ <= NOT \pwm_2|Mult0~21\;
\pwm_2|ALT_INV_Mult0~18\ <= NOT \pwm_2|Mult0~18\;
\pwm_1|ALT_INV_Mult0~35\ <= NOT \pwm_1|Mult0~35\;
\pwm_1|ALT_INV_Mult0~34\ <= NOT \pwm_1|Mult0~34\;
\pwm_1|ALT_INV_Mult0~32\ <= NOT \pwm_1|Mult0~32\;
\pwm_1|ALT_INV_Mult0~30\ <= NOT \pwm_1|Mult0~30\;
\pwm_1|ALT_INV_Mult0~26\ <= NOT \pwm_1|Mult0~26\;
\pwm_1|ALT_INV_Mult0~25\ <= NOT \pwm_1|Mult0~25\;
\pwm_1|ALT_INV_Mult0~24\ <= NOT \pwm_1|Mult0~24\;
\pwm_1|ALT_INV_Mult0~23\ <= NOT \pwm_1|Mult0~23\;
\pwm_1|ALT_INV_Mult0~22\ <= NOT \pwm_1|Mult0~22\;
\pwm_1|ALT_INV_Mult0~21\ <= NOT \pwm_1|Mult0~21\;
\pwm_1|ALT_INV_Mult0~20\ <= NOT \pwm_1|Mult0~20\;
\pwm_1|ALT_INV_Mult0~19\ <= NOT \pwm_1|Mult0~19\;
\pwm_1|ALT_INV_Mult0~18\ <= NOT \pwm_1|Mult0~18\;

-- Location: IOOBUF_X12_Y61_N19
\pwm_output_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_0|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_0(0));

-- Location: IOOBUF_X12_Y61_N36
\pwm_output_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_1|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_1(0));

-- Location: IOOBUF_X14_Y61_N2
\pwm_output_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_2|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_2(0));

-- Location: IOOBUF_X12_Y61_N2
\pwm_output_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_3|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_3(0));

-- Location: IOOBUF_X12_Y61_N53
\pwm_output_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_4|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_4(0));

-- Location: IOOBUF_X14_Y61_N19
\pwm_output_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_5|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_5(0));

-- Location: IOOBUF_X14_Y61_N36
\pwm_output_6[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_6|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_6(0));

-- Location: IOOBUF_X15_Y61_N53
\pwm_output_7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_7|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_7(0));

-- Location: IOOBUF_X15_Y61_N36
\pwm_output_8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_8|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_8(0));

-- Location: IOOBUF_X14_Y61_N53
\pwm_output_9[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_9|pwm_out\(0),
	devoe => ww_devoe,
	o => ww_pwm_output_9(0));

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

-- Location: MLABCELL_X19_Y14_N0
\pwm_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~61_sumout\ = SUM(( \pwm_0|count[0][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \pwm_0|Add0~62\ = CARRY(( \pwm_0|count[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][0]~q\,
	cin => GND,
	sumout => \pwm_0|Add0~61_sumout\,
	cout => \pwm_0|Add0~62\);

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

-- Location: MLABCELL_X19_Y14_N42
\pwm_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~29_sumout\ = SUM(( \pwm_0|count[0][14]~q\ ) + ( GND ) + ( \pwm_0|Add0~50\ ))
-- \pwm_0|Add0~30\ = CARRY(( \pwm_0|count[0][14]~q\ ) + ( GND ) + ( \pwm_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][14]~q\,
	cin => \pwm_0|Add0~50\,
	sumout => \pwm_0|Add0~29_sumout\,
	cout => \pwm_0|Add0~30\);

-- Location: MLABCELL_X19_Y14_N45
\pwm_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~33_sumout\ = SUM(( \pwm_0|count[0][15]~q\ ) + ( GND ) + ( \pwm_0|Add0~30\ ))
-- \pwm_0|Add0~34\ = CARRY(( \pwm_0|count[0][15]~q\ ) + ( GND ) + ( \pwm_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][15]~q\,
	cin => \pwm_0|Add0~30\,
	sumout => \pwm_0|Add0~33_sumout\,
	cout => \pwm_0|Add0~34\);

-- Location: FF_X19_Y14_N47
\pwm_0|count[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~33_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][15]~q\);

-- Location: MLABCELL_X19_Y14_N48
\pwm_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~21_sumout\ = SUM(( \pwm_0|count[0][16]~q\ ) + ( GND ) + ( \pwm_0|Add0~34\ ))
-- \pwm_0|Add0~22\ = CARRY(( \pwm_0|count[0][16]~q\ ) + ( GND ) + ( \pwm_0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][16]~q\,
	cin => \pwm_0|Add0~34\,
	sumout => \pwm_0|Add0~21_sumout\,
	cout => \pwm_0|Add0~22\);

-- Location: FF_X19_Y14_N49
\pwm_0|count[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~21_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][16]~q\);

-- Location: MLABCELL_X19_Y14_N51
\pwm_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~25_sumout\ = SUM(( \pwm_0|count[0][17]~q\ ) + ( GND ) + ( \pwm_0|Add0~22\ ))
-- \pwm_0|Add0~26\ = CARRY(( \pwm_0|count[0][17]~q\ ) + ( GND ) + ( \pwm_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][17]~q\,
	cin => \pwm_0|Add0~22\,
	sumout => \pwm_0|Add0~25_sumout\,
	cout => \pwm_0|Add0~26\);

-- Location: FF_X19_Y14_N52
\pwm_0|count[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~25_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][17]~q\);

-- Location: MLABCELL_X19_Y14_N54
\pwm_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~5_sumout\ = SUM(( \pwm_0|count[0][18]~q\ ) + ( GND ) + ( \pwm_0|Add0~26\ ))
-- \pwm_0|Add0~6\ = CARRY(( \pwm_0|count[0][18]~q\ ) + ( GND ) + ( \pwm_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][18]~q\,
	cin => \pwm_0|Add0~26\,
	sumout => \pwm_0|Add0~5_sumout\,
	cout => \pwm_0|Add0~6\);

-- Location: FF_X19_Y14_N55
\pwm_0|count[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~5_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][18]~q\);

-- Location: MLABCELL_X19_Y14_N57
\pwm_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~1_sumout\ = SUM(( \pwm_0|count[0][19]~q\ ) + ( GND ) + ( \pwm_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][19]~q\,
	cin => \pwm_0|Add0~6\,
	sumout => \pwm_0|Add0~1_sumout\);

-- Location: FF_X19_Y14_N59
\pwm_0|count[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~1_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][19]~q\);

-- Location: FF_X19_Y14_N50
\pwm_0|count[0][16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~21_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][16]~DUPLICATE_q\);

-- Location: FF_X19_Y14_N53
\pwm_0|count[0][17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~25_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][17]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y14_N18
\pwm_0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal0~0_combout\ = ( \pwm_0|count[0][16]~DUPLICATE_q\ & ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( (!\pwm_0|count[0][15]~q\ & (\pwm_0|count[0][19]~q\ & (\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][13]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][15]~q\,
	datab => \pwm_0|ALT_INV_count[0][19]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][13]~q\,
	datae => \pwm_0|ALT_INV_count[0][16]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	combout => \pwm_0|Equal0~0_combout\);

-- Location: FF_X19_Y14_N5
\pwm_0|count[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~65_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][1]~DUPLICATE_q\);

-- Location: FF_X19_Y14_N26
\pwm_0|count[0][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~17_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][8]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y14_N30
\pwm_0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal0~2_combout\ = ( !\pwm_0|count[0][7]~q\ & ( \pwm_0|count[0][4]~q\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][5]~q\ & \pwm_0|count[0][9]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][5]~q\,
	datad => \pwm_0|ALT_INV_count[0][9]~q\,
	datae => \pwm_0|ALT_INV_count[0][7]~q\,
	dataf => \pwm_0|ALT_INV_count[0][4]~q\,
	combout => \pwm_0|Equal0~2_combout\);

-- Location: FF_X19_Y14_N56
\pwm_0|count[0][18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~5_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][18]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y14_N12
\pwm_0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal0~1_combout\ = ( \pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][10]~q\ & ( (\pwm_0|count[0][0]~q\ & (!\pwm_0|count[0][6]~q\ & (\pwm_0|count[0][3]~q\ & \pwm_0|count[0][18]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][0]~q\,
	datab => \pwm_0|ALT_INV_count[0][6]~q\,
	datac => \pwm_0|ALT_INV_count[0][3]~q\,
	datad => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][2]~q\,
	dataf => \pwm_0|ALT_INV_count[0][10]~q\,
	combout => \pwm_0|Equal0~1_combout\);

-- Location: LABCELL_X18_Y14_N48
\pwm_0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal0~3_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_0|Equal0~1_combout\ & ( (\pwm_0|Equal0~0_combout\ & (\pwm_0|Equal0~2_combout\ & !\pwm_0|count[0][11]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_Equal0~0_combout\,
	datab => \pwm_0|ALT_INV_Equal0~2_combout\,
	datac => \pwm_0|ALT_INV_count[0][11]~q\,
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_0|ALT_INV_Equal0~1_combout\,
	combout => \pwm_0|Equal0~3_combout\);

-- Location: FF_X19_Y14_N2
\pwm_0|count[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~61_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][0]~q\);

-- Location: MLABCELL_X19_Y14_N3
\pwm_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~65_sumout\ = SUM(( \pwm_0|count[0][1]~q\ ) + ( GND ) + ( \pwm_0|Add0~62\ ))
-- \pwm_0|Add0~66\ = CARRY(( \pwm_0|count[0][1]~q\ ) + ( GND ) + ( \pwm_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][1]~q\,
	cin => \pwm_0|Add0~62\,
	sumout => \pwm_0|Add0~65_sumout\,
	cout => \pwm_0|Add0~66\);

-- Location: FF_X19_Y14_N4
\pwm_0|count[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~65_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][1]~q\);

-- Location: MLABCELL_X19_Y14_N6
\pwm_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~69_sumout\ = SUM(( \pwm_0|count[0][2]~q\ ) + ( GND ) + ( \pwm_0|Add0~66\ ))
-- \pwm_0|Add0~70\ = CARRY(( \pwm_0|count[0][2]~q\ ) + ( GND ) + ( \pwm_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][2]~q\,
	cin => \pwm_0|Add0~66\,
	sumout => \pwm_0|Add0~69_sumout\,
	cout => \pwm_0|Add0~70\);

-- Location: FF_X19_Y14_N8
\pwm_0|count[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~69_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][2]~q\);

-- Location: MLABCELL_X19_Y14_N9
\pwm_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~37_sumout\ = SUM(( \pwm_0|count[0][3]~q\ ) + ( GND ) + ( \pwm_0|Add0~70\ ))
-- \pwm_0|Add0~38\ = CARRY(( \pwm_0|count[0][3]~q\ ) + ( GND ) + ( \pwm_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	cin => \pwm_0|Add0~70\,
	sumout => \pwm_0|Add0~37_sumout\,
	cout => \pwm_0|Add0~38\);

-- Location: FF_X19_Y14_N10
\pwm_0|count[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~37_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][3]~q\);

-- Location: MLABCELL_X19_Y14_N12
\pwm_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~41_sumout\ = SUM(( \pwm_0|count[0][4]~q\ ) + ( GND ) + ( \pwm_0|Add0~38\ ))
-- \pwm_0|Add0~42\ = CARRY(( \pwm_0|count[0][4]~q\ ) + ( GND ) + ( \pwm_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][4]~q\,
	cin => \pwm_0|Add0~38\,
	sumout => \pwm_0|Add0~41_sumout\,
	cout => \pwm_0|Add0~42\);

-- Location: FF_X19_Y14_N13
\pwm_0|count[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~41_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][4]~q\);

-- Location: MLABCELL_X19_Y14_N15
\pwm_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~45_sumout\ = SUM(( \pwm_0|count[0][5]~q\ ) + ( GND ) + ( \pwm_0|Add0~42\ ))
-- \pwm_0|Add0~46\ = CARRY(( \pwm_0|count[0][5]~q\ ) + ( GND ) + ( \pwm_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][5]~q\,
	cin => \pwm_0|Add0~42\,
	sumout => \pwm_0|Add0~45_sumout\,
	cout => \pwm_0|Add0~46\);

-- Location: FF_X19_Y14_N17
\pwm_0|count[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~45_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][5]~q\);

-- Location: MLABCELL_X19_Y14_N18
\pwm_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~9_sumout\ = SUM(( \pwm_0|count[0][6]~q\ ) + ( GND ) + ( \pwm_0|Add0~46\ ))
-- \pwm_0|Add0~10\ = CARRY(( \pwm_0|count[0][6]~q\ ) + ( GND ) + ( \pwm_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][6]~q\,
	cin => \pwm_0|Add0~46\,
	sumout => \pwm_0|Add0~9_sumout\,
	cout => \pwm_0|Add0~10\);

-- Location: FF_X19_Y14_N20
\pwm_0|count[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~9_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][6]~q\);

-- Location: MLABCELL_X19_Y14_N21
\pwm_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~13_sumout\ = SUM(( \pwm_0|count[0][7]~q\ ) + ( GND ) + ( \pwm_0|Add0~10\ ))
-- \pwm_0|Add0~14\ = CARRY(( \pwm_0|count[0][7]~q\ ) + ( GND ) + ( \pwm_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][7]~q\,
	cin => \pwm_0|Add0~10\,
	sumout => \pwm_0|Add0~13_sumout\,
	cout => \pwm_0|Add0~14\);

-- Location: FF_X19_Y14_N23
\pwm_0|count[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~13_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][7]~q\);

-- Location: MLABCELL_X19_Y14_N24
\pwm_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~17_sumout\ = SUM(( \pwm_0|count[0][8]~q\ ) + ( GND ) + ( \pwm_0|Add0~14\ ))
-- \pwm_0|Add0~18\ = CARRY(( \pwm_0|count[0][8]~q\ ) + ( GND ) + ( \pwm_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][8]~q\,
	cin => \pwm_0|Add0~14\,
	sumout => \pwm_0|Add0~17_sumout\,
	cout => \pwm_0|Add0~18\);

-- Location: FF_X19_Y14_N25
\pwm_0|count[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~17_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][8]~q\);

-- Location: MLABCELL_X19_Y14_N27
\pwm_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~73_sumout\ = SUM(( \pwm_0|count[0][9]~q\ ) + ( GND ) + ( \pwm_0|Add0~18\ ))
-- \pwm_0|Add0~74\ = CARRY(( \pwm_0|count[0][9]~q\ ) + ( GND ) + ( \pwm_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][9]~q\,
	cin => \pwm_0|Add0~18\,
	sumout => \pwm_0|Add0~73_sumout\,
	cout => \pwm_0|Add0~74\);

-- Location: FF_X19_Y14_N29
\pwm_0|count[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~73_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][9]~q\);

-- Location: MLABCELL_X19_Y14_N30
\pwm_0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~77_sumout\ = SUM(( \pwm_0|count[0][10]~q\ ) + ( GND ) + ( \pwm_0|Add0~74\ ))
-- \pwm_0|Add0~78\ = CARRY(( \pwm_0|count[0][10]~q\ ) + ( GND ) + ( \pwm_0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][10]~q\,
	cin => \pwm_0|Add0~74\,
	sumout => \pwm_0|Add0~77_sumout\,
	cout => \pwm_0|Add0~78\);

-- Location: FF_X19_Y14_N31
\pwm_0|count[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~77_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][10]~q\);

-- Location: MLABCELL_X19_Y14_N33
\pwm_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~53_sumout\ = SUM(( \pwm_0|count[0][11]~q\ ) + ( GND ) + ( \pwm_0|Add0~78\ ))
-- \pwm_0|Add0~54\ = CARRY(( \pwm_0|count[0][11]~q\ ) + ( GND ) + ( \pwm_0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][11]~q\,
	cin => \pwm_0|Add0~78\,
	sumout => \pwm_0|Add0~53_sumout\,
	cout => \pwm_0|Add0~54\);

-- Location: FF_X19_Y14_N34
\pwm_0|count[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~53_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][11]~q\);

-- Location: MLABCELL_X19_Y14_N36
\pwm_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~57_sumout\ = SUM(( \pwm_0|count[0][12]~q\ ) + ( GND ) + ( \pwm_0|Add0~54\ ))
-- \pwm_0|Add0~58\ = CARRY(( \pwm_0|count[0][12]~q\ ) + ( GND ) + ( \pwm_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][12]~q\,
	cin => \pwm_0|Add0~54\,
	sumout => \pwm_0|Add0~57_sumout\,
	cout => \pwm_0|Add0~58\);

-- Location: FF_X19_Y14_N38
\pwm_0|count[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~57_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][12]~q\);

-- Location: MLABCELL_X19_Y14_N39
\pwm_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add0~49_sumout\ = SUM(( \pwm_0|count[0][13]~q\ ) + ( GND ) + ( \pwm_0|Add0~58\ ))
-- \pwm_0|Add0~50\ = CARRY(( \pwm_0|count[0][13]~q\ ) + ( GND ) + ( \pwm_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_count[0][13]~q\,
	cin => \pwm_0|Add0~58\,
	sumout => \pwm_0|Add0~49_sumout\,
	cout => \pwm_0|Add0~50\);

-- Location: FF_X19_Y14_N41
\pwm_0|count[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~49_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][13]~q\);

-- Location: FF_X19_Y14_N43
\pwm_0|count[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~29_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][14]~q\);

-- Location: FF_X19_Y14_N16
\pwm_0|count[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~45_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][5]~DUPLICATE_q\);

-- Location: FF_X19_Y14_N14
\pwm_0|count[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~41_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][4]~DUPLICATE_q\);

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

-- Location: LABCELL_X22_Y10_N42
\lastChangeup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lastChangeup~0_combout\ = !\changeup~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_changeup~input_o\,
	combout => \lastChangeup~0_combout\);

-- Location: FF_X22_Y10_N4
lastChangeup : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lastChangeup~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastChangeup~q\);

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

-- Location: LABCELL_X22_Y10_N48
\lastChangedown~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lastChangedown~0_combout\ = ( !\changedown~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_changedown~input_o\,
	combout => \lastChangedown~0_combout\);

-- Location: FF_X22_Y10_N50
lastChangedown : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lastChangedown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastChangedown~q\);

-- Location: LABCELL_X22_Y10_N45
\duty_value[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[0]~0_combout\ = ( \lastChangedown~q\ & ( (!\changeup~input_o\ & !\lastChangeup~q\) ) ) # ( !\lastChangedown~q\ & ( (!\changedown~input_o\) # ((!\changeup~input_o\ & !\lastChangeup~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_changeup~input_o\,
	datac => \ALT_INV_lastChangeup~q\,
	datad => \ALT_INV_changedown~input_o\,
	dataf => \ALT_INV_lastChangedown~q\,
	combout => \duty_value[0]~0_combout\);

-- Location: FF_X22_Y10_N29
\duty_value[0]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sload => VCC,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \duty_value[0]~_Duplicate_10_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \duty_value[0]~_Duplicate_10_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X22_Y10_N44
\duty_value[1]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	sload => VCC,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \duty_value[1]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \duty_value[1]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lastChangedown~q\,
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X22_Y10_N26
\duty_value[2]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	sload => VCC,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \duty_value[2]~_Duplicate_10_q\ ) + ( (\changedown~input_o\) # (\lastChangedown~q\) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \duty_value[2]~_Duplicate_10_q\ ) + ( (\changedown~input_o\) # (\lastChangedown~q\) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lastChangedown~q\,
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X22_Y10_N39
\duty_value[3]~_Duplicate_10feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[3]~_Duplicate_10feeder_combout\ = ( \Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \duty_value[3]~_Duplicate_10feeder_combout\);

-- Location: FF_X22_Y10_N41
\duty_value[3]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[3]~_Duplicate_10feeder_combout\,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \duty_value[3]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \duty_value[3]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lastChangedown~q\,
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X22_Y10_N36
\duty_value[4]~_Duplicate_10feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[4]~_Duplicate_10feeder_combout\ = ( \Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \duty_value[4]~_Duplicate_10feeder_combout\);

-- Location: FF_X22_Y10_N38
\duty_value[4]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[4]~_Duplicate_10feeder_combout\,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \duty_value[4]~_Duplicate_10_q\ ) + ( (!\changedown~input_o\ & !\lastChangedown~q\) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \duty_value[4]~_Duplicate_10_q\ ) + ( (!\changedown~input_o\ & !\lastChangedown~q\) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_lastChangedown~q\,
	datad => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X22_Y10_N54
\duty_value[5]~_Duplicate_10feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[5]~_Duplicate_10feeder_combout\ = ( \Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \duty_value[5]~_Duplicate_10feeder_combout\);

-- Location: FF_X22_Y10_N56
\duty_value[5]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[5]~_Duplicate_10feeder_combout\,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \duty_value[5]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \duty_value[5]~_Duplicate_10_q\ ) + ( (!\lastChangedown~q\ & !\changedown~input_o\) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lastChangedown~q\,
	datab => \ALT_INV_changedown~input_o\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X22_Y10_N20
\duty_value[6]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N18
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \duty_value[6]~_Duplicate_10_q\ ) + ( (!\changedown~input_o\ & !\lastChangedown~q\) ) + ( \Add0~22\ ))
-- \Add0~30\ = CARRY(( \duty_value[6]~_Duplicate_10_q\ ) + ( (!\changedown~input_o\ & !\lastChangedown~q\) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_lastChangedown~q\,
	datad => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	cin => \Add0~22\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X22_Y10_N8
\duty_value[7]~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	sload => VCC,
	ena => \duty_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7]~_Duplicate_10_q\);

-- Location: LABCELL_X22_Y10_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \duty_value[7]~_Duplicate_10_q\ ) + ( (!\changedown~input_o\ & !\lastChangedown~q\) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_changedown~input_o\,
	datac => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	dataf => \ALT_INV_lastChangedown~q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\);

-- Location: DSP_X16_Y15_N0
\pwm_0|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_0|Mult0~8_ACLR_bus\,
	clk => \pwm_0|Mult0~8_CLK_bus\,
	ena => \pwm_0|Mult0~8_ENA_bus\,
	ax => \pwm_0|Mult0~8_AX_bus\,
	ay => \pwm_0|Mult0~8_AY_bus\,
	resulta => \pwm_0|Mult0~8_RESULTA_bus\);

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

-- Location: FF_X17_Y15_N34
\pwm_0|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(3));

-- Location: LABCELL_X18_Y14_N6
\pwm_0|half_duty[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty[0][0]~0_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_0|Equal0~0_combout\ & ( (!\pwm_0|count[0][11]~q\ & (\pwm_0|Equal0~1_combout\ & (\reset_pwm~input_o\ & \pwm_0|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][11]~q\,
	datab => \pwm_0|ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_reset_pwm~input_o\,
	datad => \pwm_0|ALT_INV_Equal0~2_combout\,
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_0|ALT_INV_Equal0~0_combout\,
	combout => \pwm_0|half_duty[0][0]~0_combout\);

-- Location: FF_X18_Y15_N7
\pwm_0|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][3]~q\);

-- Location: LABCELL_X17_Y15_N48
\pwm_0|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[2]~feeder_combout\ = ( \pwm_0|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~19\,
	combout => \pwm_0|half_duty_new[2]~feeder_combout\);

-- Location: FF_X17_Y15_N49
\pwm_0|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(2));

-- Location: FF_X18_Y15_N5
\pwm_0|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][2]~q\);

-- Location: FF_X17_Y15_N43
\pwm_0|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~18\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(1));

-- Location: FF_X18_Y15_N59
\pwm_0|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][1]~q\);

-- Location: LABCELL_X17_Y15_N39
\pwm_0|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[0]~feeder_combout\ = ( \pwm_0|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~17\,
	combout => \pwm_0|half_duty_new[0]~feeder_combout\);

-- Location: FF_X17_Y15_N40
\pwm_0|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(0));

-- Location: FF_X18_Y15_N2
\pwm_0|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][0]~q\);

-- Location: LABCELL_X18_Y15_N0
\pwm_0|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~61_sumout\ = SUM(( !\pwm_0|half_duty[0][0]~q\ ) + ( !\pwm_0|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_0|Add1~62\ = CARRY(( !\pwm_0|half_duty[0][0]~q\ ) + ( !\pwm_0|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_0|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_0|Add1~61_sumout\,
	cout => \pwm_0|Add1~62\);

-- Location: LABCELL_X18_Y15_N3
\pwm_0|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~65_sumout\ = SUM(( !\pwm_0|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_0|Add1~62\ ))
-- \pwm_0|Add1~66\ = CARRY(( !\pwm_0|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_0|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_0|Add1~62\,
	sumout => \pwm_0|Add1~65_sumout\,
	cout => \pwm_0|Add1~66\);

-- Location: LABCELL_X18_Y15_N6
\pwm_0|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~37_sumout\ = SUM(( !\pwm_0|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_0|Add1~66\ ))
-- \pwm_0|Add1~38\ = CARRY(( !\pwm_0|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_0|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_0|Add1~66\,
	sumout => \pwm_0|Add1~37_sumout\,
	cout => \pwm_0|Add1~38\);

-- Location: LABCELL_X17_Y15_N12
\pwm_0|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[5]~feeder_combout\ = ( \pwm_0|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~22\,
	combout => \pwm_0|half_duty_new[5]~feeder_combout\);

-- Location: FF_X17_Y15_N13
\pwm_0|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(5));

-- Location: FF_X18_Y15_N14
\pwm_0|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][5]~q\);

-- Location: LABCELL_X17_Y15_N57
\pwm_0|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[4]~feeder_combout\ = ( \pwm_0|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~21\,
	combout => \pwm_0|half_duty_new[4]~feeder_combout\);

-- Location: FF_X17_Y15_N58
\pwm_0|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(4));

-- Location: FF_X18_Y15_N11
\pwm_0|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][4]~q\);

-- Location: LABCELL_X18_Y15_N9
\pwm_0|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~41_sumout\ = SUM(( !\pwm_0|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_0|Add1~38\ ))
-- \pwm_0|Add1~42\ = CARRY(( !\pwm_0|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_0|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_0|Add1~38\,
	sumout => \pwm_0|Add1~41_sumout\,
	cout => \pwm_0|Add1~42\);

-- Location: LABCELL_X18_Y15_N12
\pwm_0|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~45_sumout\ = SUM(( !\pwm_0|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_0|Add1~42\ ))
-- \pwm_0|Add1~46\ = CARRY(( !\pwm_0|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_0|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_0|Add1~42\,
	sumout => \pwm_0|Add1~45_sumout\,
	cout => \pwm_0|Add1~46\);

-- Location: MLABCELL_X19_Y15_N42
\pwm_0|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~3_combout\ = ( \pwm_0|Add1~45_sumout\ & ( \pwm_0|Add1~41_sumout\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_0|Add1~37_sumout\)))) ) ) ) # ( !\pwm_0|Add1~45_sumout\ & ( 
-- \pwm_0|Add1~41_sumout\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_0|Add1~37_sumout\)))) ) ) ) # ( \pwm_0|Add1~45_sumout\ & ( !\pwm_0|Add1~41_sumout\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_0|Add1~37_sumout\)))) ) ) ) # ( !\pwm_0|Add1~45_sumout\ & ( !\pwm_0|Add1~41_sumout\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ 
-- (\pwm_0|Add1~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][3]~q\,
	datab => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_Add1~37_sumout\,
	datae => \pwm_0|ALT_INV_Add1~45_sumout\,
	dataf => \pwm_0|ALT_INV_Add1~41_sumout\,
	combout => \pwm_0|pwm_out~3_combout\);

-- Location: FF_X17_Y15_N37
\pwm_0|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~32\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(15));

-- Location: FF_X18_Y15_N44
\pwm_0|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][15]~q\);

-- Location: FF_X17_Y15_N31
\pwm_0|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(14));

-- Location: FF_X18_Y15_N41
\pwm_0|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][14]~q\);

-- Location: LABCELL_X17_Y15_N15
\pwm_0|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[13]~feeder_combout\ = ( \pwm_0|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~30\,
	combout => \pwm_0|half_duty_new[13]~feeder_combout\);

-- Location: FF_X17_Y15_N16
\pwm_0|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(13));

-- Location: FF_X18_Y15_N38
\pwm_0|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][13]~q\);

-- Location: FF_X17_Y15_N7
\pwm_0|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(12));

-- Location: FF_X18_Y15_N35
\pwm_0|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][12]~q\);

-- Location: FF_X17_Y15_N28
\pwm_0|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(11));

-- Location: FF_X18_Y15_N32
\pwm_0|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][11]~q\);

-- Location: LABCELL_X17_Y15_N9
\pwm_0|half_duty_new[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[10]~feeder_combout\ = ( \pwm_0|Mult0~27\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~27\,
	combout => \pwm_0|half_duty_new[10]~feeder_combout\);

-- Location: FF_X17_Y15_N10
\pwm_0|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[10]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(10));

-- Location: FF_X18_Y15_N28
\pwm_0|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][10]~q\);

-- Location: LABCELL_X17_Y15_N21
\pwm_0|half_duty_new[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[9]~feeder_combout\ = ( \pwm_0|Mult0~26\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~26\,
	combout => \pwm_0|half_duty_new[9]~feeder_combout\);

-- Location: FF_X17_Y15_N22
\pwm_0|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[9]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(9));

-- Location: FF_X18_Y15_N26
\pwm_0|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][9]~q\);

-- Location: FF_X17_Y15_N1
\pwm_0|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~25\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(8));

-- Location: FF_X18_Y15_N23
\pwm_0|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][8]~q\);

-- Location: LABCELL_X17_Y15_N51
\pwm_0|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[7]~feeder_combout\ = ( \pwm_0|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~24\,
	combout => \pwm_0|half_duty_new[7]~feeder_combout\);

-- Location: FF_X17_Y15_N52
\pwm_0|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(7));

-- Location: FF_X18_Y15_N20
\pwm_0|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][7]~q\);

-- Location: LABCELL_X17_Y15_N18
\pwm_0|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[6]~feeder_combout\ = ( \pwm_0|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~23\,
	combout => \pwm_0|half_duty_new[6]~feeder_combout\);

-- Location: FF_X17_Y15_N19
\pwm_0|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(6));

-- Location: FF_X18_Y15_N17
\pwm_0|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][6]~q\);

-- Location: LABCELL_X18_Y15_N15
\pwm_0|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~9_sumout\ = SUM(( !\pwm_0|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_0|Add1~46\ ))
-- \pwm_0|Add1~10\ = CARRY(( !\pwm_0|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_0|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_0|Add1~46\,
	sumout => \pwm_0|Add1~9_sumout\,
	cout => \pwm_0|Add1~10\);

-- Location: LABCELL_X18_Y15_N18
\pwm_0|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~13_sumout\ = SUM(( !\pwm_0|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_0|Add1~10\ ))
-- \pwm_0|Add1~14\ = CARRY(( !\pwm_0|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_0|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_0|Add1~10\,
	sumout => \pwm_0|Add1~13_sumout\,
	cout => \pwm_0|Add1~14\);

-- Location: LABCELL_X18_Y15_N21
\pwm_0|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~17_sumout\ = SUM(( !\pwm_0|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_0|Add1~14\ ))
-- \pwm_0|Add1~18\ = CARRY(( !\pwm_0|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_0|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_0|Add1~14\,
	sumout => \pwm_0|Add1~17_sumout\,
	cout => \pwm_0|Add1~18\);

-- Location: LABCELL_X18_Y15_N24
\pwm_0|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~69_sumout\ = SUM(( !\pwm_0|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_0|Add1~18\ ))
-- \pwm_0|Add1~70\ = CARRY(( !\pwm_0|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_0|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_0|Add1~18\,
	sumout => \pwm_0|Add1~69_sumout\,
	cout => \pwm_0|Add1~70\);

-- Location: LABCELL_X18_Y15_N27
\pwm_0|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~73_sumout\ = SUM(( !\pwm_0|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_0|Add1~70\ ))
-- \pwm_0|Add1~74\ = CARRY(( !\pwm_0|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_0|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_0|Add1~70\,
	sumout => \pwm_0|Add1~73_sumout\,
	cout => \pwm_0|Add1~74\);

-- Location: LABCELL_X18_Y15_N30
\pwm_0|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~49_sumout\ = SUM(( !\pwm_0|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_0|Add1~74\ ))
-- \pwm_0|Add1~50\ = CARRY(( !\pwm_0|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_0|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_0|Add1~74\,
	sumout => \pwm_0|Add1~49_sumout\,
	cout => \pwm_0|Add1~50\);

-- Location: LABCELL_X18_Y15_N33
\pwm_0|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~53_sumout\ = SUM(( !\pwm_0|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_0|Add1~50\ ))
-- \pwm_0|Add1~54\ = CARRY(( !\pwm_0|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_0|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_0|Add1~50\,
	sumout => \pwm_0|Add1~53_sumout\,
	cout => \pwm_0|Add1~54\);

-- Location: LABCELL_X18_Y15_N36
\pwm_0|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~57_sumout\ = SUM(( !\pwm_0|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_0|Add1~54\ ))
-- \pwm_0|Add1~58\ = CARRY(( !\pwm_0|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_0|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_0|Add1~54\,
	sumout => \pwm_0|Add1~57_sumout\,
	cout => \pwm_0|Add1~58\);

-- Location: LABCELL_X18_Y15_N39
\pwm_0|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~29_sumout\ = SUM(( !\pwm_0|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_0|Add1~58\ ))
-- \pwm_0|Add1~30\ = CARRY(( !\pwm_0|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_0|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_0|Add1~58\,
	sumout => \pwm_0|Add1~29_sumout\,
	cout => \pwm_0|Add1~30\);

-- Location: LABCELL_X18_Y15_N42
\pwm_0|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~33_sumout\ = SUM(( !\pwm_0|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_0|Add1~30\ ))
-- \pwm_0|Add1~34\ = CARRY(( !\pwm_0|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_0|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_0|Add1~30\,
	sumout => \pwm_0|Add1~33_sumout\,
	cout => \pwm_0|Add1~34\);

-- Location: MLABCELL_X19_Y15_N24
\pwm_0|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~4_combout\ = ( \pwm_0|Add1~33_sumout\ & ( \pwm_0|Add1~29_sumout\ & ( (\pwm_0|count[0][14]~q\ & (\pwm_0|count[0][15]~q\ & \pwm_0|pwm_out~3_combout\)) ) ) ) # ( !\pwm_0|Add1~33_sumout\ & ( \pwm_0|Add1~29_sumout\ & ( (\pwm_0|count[0][14]~q\ & 
-- (!\pwm_0|count[0][15]~q\ & \pwm_0|pwm_out~3_combout\)) ) ) ) # ( \pwm_0|Add1~33_sumout\ & ( !\pwm_0|Add1~29_sumout\ & ( (!\pwm_0|count[0][14]~q\ & (\pwm_0|count[0][15]~q\ & \pwm_0|pwm_out~3_combout\)) ) ) ) # ( !\pwm_0|Add1~33_sumout\ & ( 
-- !\pwm_0|Add1~29_sumout\ & ( (!\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][15]~q\ & \pwm_0|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000110000000000001100000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][14]~q\,
	datac => \pwm_0|ALT_INV_count[0][15]~q\,
	datad => \pwm_0|ALT_INV_pwm_out~3_combout\,
	datae => \pwm_0|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_0|ALT_INV_Add1~29_sumout\,
	combout => \pwm_0|pwm_out~4_combout\);

-- Location: LABCELL_X17_Y15_N3
\pwm_0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~2_combout\ = ( \pwm_0|half_duty[0][13]~q\ & ( \pwm_0|half_duty[0][12]~q\ & ( (\pwm_0|count[0][13]~q\ & (\pwm_0|count[0][12]~q\ & (!\pwm_0|count[0][11]~q\ $ (\pwm_0|half_duty[0][11]~q\)))) ) ) ) # ( !\pwm_0|half_duty[0][13]~q\ & ( 
-- \pwm_0|half_duty[0][12]~q\ & ( (!\pwm_0|count[0][13]~q\ & (\pwm_0|count[0][12]~q\ & (!\pwm_0|count[0][11]~q\ $ (\pwm_0|half_duty[0][11]~q\)))) ) ) ) # ( \pwm_0|half_duty[0][13]~q\ & ( !\pwm_0|half_duty[0][12]~q\ & ( (\pwm_0|count[0][13]~q\ & 
-- (!\pwm_0|count[0][12]~q\ & (!\pwm_0|count[0][11]~q\ $ (\pwm_0|half_duty[0][11]~q\)))) ) ) ) # ( !\pwm_0|half_duty[0][13]~q\ & ( !\pwm_0|half_duty[0][12]~q\ & ( (!\pwm_0|count[0][13]~q\ & (!\pwm_0|count[0][12]~q\ & (!\pwm_0|count[0][11]~q\ $ 
-- (\pwm_0|half_duty[0][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][11]~q\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_0|ALT_INV_count[0][12]~q\,
	datad => \pwm_0|ALT_INV_half_duty[0][11]~q\,
	datae => \pwm_0|ALT_INV_half_duty[0][13]~q\,
	dataf => \pwm_0|ALT_INV_half_duty[0][12]~q\,
	combout => \pwm_0|Equal1~2_combout\);

-- Location: FF_X17_Y15_N25
\pwm_0|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~33\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(16));

-- Location: FF_X18_Y15_N46
\pwm_0|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][16]~q\);

-- Location: FF_X19_Y14_N46
\pwm_0|count[0][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~33_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][15]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y13_N51
\pwm_0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~1_combout\ = ( \pwm_0|count[0][15]~DUPLICATE_q\ & ( \pwm_0|count[0][14]~q\ & ( (\pwm_0|half_duty[0][15]~q\ & (\pwm_0|half_duty[0][14]~q\ & (!\pwm_0|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~DUPLICATE_q\ 
-- & ( \pwm_0|count[0][14]~q\ & ( (!\pwm_0|half_duty[0][15]~q\ & (\pwm_0|half_duty[0][14]~q\ & (!\pwm_0|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~DUPLICATE_q\ & ( !\pwm_0|count[0][14]~q\ & ( (\pwm_0|half_duty[0][15]~q\ & 
-- (!\pwm_0|half_duty[0][14]~q\ & (!\pwm_0|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~DUPLICATE_q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_0|half_duty[0][15]~q\ & (!\pwm_0|half_duty[0][14]~q\ & 
-- (!\pwm_0|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_half_duty[0][15]~q\,
	datab => \pwm_0|ALT_INV_half_duty[0][16]~q\,
	datac => \pwm_0|ALT_INV_half_duty[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][16]~q\,
	datae => \pwm_0|ALT_INV_count[0][15]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][14]~q\,
	combout => \pwm_0|Equal1~1_combout\);

-- Location: LABCELL_X18_Y14_N0
\pwm_0|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~5_combout\ = ( !\pwm_0|count[0][19]~q\ & ( \pwm_0|half_duty[0][1]~q\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_0|half_duty[0][0]~q\))) ) ) ) # ( !\pwm_0|count[0][19]~q\ & ( !\pwm_0|half_duty[0][1]~q\ & ( 
-- (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_0|half_duty[0][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000000000000000000000001001000010010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][0]~q\,
	datab => \pwm_0|ALT_INV_half_duty[0][0]~q\,
	datac => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][19]~q\,
	dataf => \pwm_0|ALT_INV_half_duty[0][1]~q\,
	combout => \pwm_0|Equal1~5_combout\);

-- Location: LABCELL_X18_Y14_N24
\pwm_0|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~6_combout\ = ( \pwm_0|half_duty[0][2]~q\ & ( (\pwm_0|count[0][2]~q\ & (!\pwm_0|half_duty[0][3]~q\ $ (\pwm_0|count[0][3]~q\))) ) ) # ( !\pwm_0|half_duty[0][2]~q\ & ( (!\pwm_0|count[0][2]~q\ & (!\pwm_0|half_duty[0][3]~q\ $ 
-- (\pwm_0|count[0][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_half_duty[0][3]~q\,
	datac => \pwm_0|ALT_INV_count[0][2]~q\,
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	dataf => \pwm_0|ALT_INV_half_duty[0][2]~q\,
	combout => \pwm_0|Equal1~6_combout\);

-- Location: LABCELL_X18_Y14_N42
\pwm_0|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~4_combout\ = ( \pwm_0|half_duty[0][5]~q\ & ( \pwm_0|half_duty[0][6]~q\ & ( (\pwm_0|count[0][6]~q\ & (\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_0|half_duty[0][7]~q\)))) ) ) ) # ( !\pwm_0|half_duty[0][5]~q\ & ( 
-- \pwm_0|half_duty[0][6]~q\ & ( (\pwm_0|count[0][6]~q\ & (!\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_0|half_duty[0][7]~q\)))) ) ) ) # ( \pwm_0|half_duty[0][5]~q\ & ( !\pwm_0|half_duty[0][6]~q\ & ( (!\pwm_0|count[0][6]~q\ & 
-- (\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_0|half_duty[0][7]~q\)))) ) ) ) # ( !\pwm_0|half_duty[0][5]~q\ & ( !\pwm_0|half_duty[0][6]~q\ & ( (!\pwm_0|count[0][6]~q\ & (!\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][7]~q\ $ 
-- (\pwm_0|half_duty[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~q\,
	datab => \pwm_0|ALT_INV_count[0][6]~q\,
	datac => \pwm_0|ALT_INV_count[0][5]~q\,
	datad => \pwm_0|ALT_INV_half_duty[0][7]~q\,
	datae => \pwm_0|ALT_INV_half_duty[0][5]~q\,
	dataf => \pwm_0|ALT_INV_half_duty[0][6]~q\,
	combout => \pwm_0|Equal1~4_combout\);

-- Location: LABCELL_X18_Y14_N54
\pwm_0|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~7_combout\ = ( \pwm_0|half_duty[0][4]~q\ & ( \pwm_0|Equal1~4_combout\ & ( (\pwm_0|Equal1~5_combout\ & (\pwm_0|count[0][4]~q\ & \pwm_0|Equal1~6_combout\)) ) ) ) # ( !\pwm_0|half_duty[0][4]~q\ & ( \pwm_0|Equal1~4_combout\ & ( 
-- (\pwm_0|Equal1~5_combout\ & (!\pwm_0|count[0][4]~q\ & \pwm_0|Equal1~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_Equal1~5_combout\,
	datab => \pwm_0|ALT_INV_count[0][4]~q\,
	datac => \pwm_0|ALT_INV_Equal1~6_combout\,
	datae => \pwm_0|ALT_INV_half_duty[0][4]~q\,
	dataf => \pwm_0|ALT_INV_Equal1~4_combout\,
	combout => \pwm_0|Equal1~7_combout\);

-- Location: FF_X17_Y15_N4
\pwm_0|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|Mult0~35\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(18));

-- Location: FF_X18_Y15_N53
\pwm_0|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][18]~q\);

-- Location: LABCELL_X17_Y15_N54
\pwm_0|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|half_duty_new[17]~feeder_combout\ = ( \pwm_0|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_0|ALT_INV_Mult0~34\,
	combout => \pwm_0|half_duty_new[17]~feeder_combout\);

-- Location: FF_X17_Y15_N55
\pwm_0|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty_new\(17));

-- Location: FF_X18_Y15_N49
\pwm_0|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_0|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|half_duty[0][17]~q\);

-- Location: LABCELL_X18_Y14_N27
\pwm_0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~0_combout\ = ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( (\pwm_0|half_duty[0][17]~q\ & (!\pwm_0|half_duty[0][18]~q\ $ (\pwm_0|count[0][18]~DUPLICATE_q\))) ) ) # ( !\pwm_0|count[0][17]~DUPLICATE_q\ & ( (!\pwm_0|half_duty[0][17]~q\ & 
-- (!\pwm_0|half_duty[0][18]~q\ $ (\pwm_0|count[0][18]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_half_duty[0][18]~q\,
	datac => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_half_duty[0][17]~q\,
	dataf => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	combout => \pwm_0|Equal1~0_combout\);

-- Location: FF_X19_Y14_N28
\pwm_0|count[0][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~73_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][9]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y15_N33
\pwm_0|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~3_combout\ = ( \pwm_0|count[0][10]~q\ & ( \pwm_0|half_duty[0][9]~q\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & (\pwm_0|half_duty[0][10]~q\ & (!\pwm_0|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][10]~q\ & ( 
-- \pwm_0|half_duty[0][9]~q\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & (!\pwm_0|half_duty[0][10]~q\ & (!\pwm_0|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( \pwm_0|count[0][10]~q\ & ( !\pwm_0|half_duty[0][9]~q\ & ( 
-- (!\pwm_0|count[0][9]~DUPLICATE_q\ & (\pwm_0|half_duty[0][10]~q\ & (!\pwm_0|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][10]~q\ & ( !\pwm_0|half_duty[0][9]~q\ & ( (!\pwm_0|count[0][9]~DUPLICATE_q\ & 
-- (!\pwm_0|half_duty[0][10]~q\ & (!\pwm_0|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_half_duty[0][8]~q\,
	datab => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_half_duty[0][10]~q\,
	datae => \pwm_0|ALT_INV_count[0][10]~q\,
	dataf => \pwm_0|ALT_INV_half_duty[0][9]~q\,
	combout => \pwm_0|Equal1~3_combout\);

-- Location: LABCELL_X18_Y14_N36
\pwm_0|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal1~8_combout\ = ( \pwm_0|Equal1~0_combout\ & ( \pwm_0|Equal1~3_combout\ & ( (\pwm_0|Equal1~2_combout\ & (\pwm_0|Equal1~1_combout\ & \pwm_0|Equal1~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_Equal1~2_combout\,
	datab => \pwm_0|ALT_INV_Equal1~1_combout\,
	datac => \pwm_0|ALT_INV_Equal1~7_combout\,
	datae => \pwm_0|ALT_INV_Equal1~0_combout\,
	dataf => \pwm_0|ALT_INV_Equal1~3_combout\,
	combout => \pwm_0|Equal1~8_combout\);

-- Location: LABCELL_X18_Y15_N45
\pwm_0|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~21_sumout\ = SUM(( !\pwm_0|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_0|Add1~34\ ))
-- \pwm_0|Add1~22\ = CARRY(( !\pwm_0|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_0|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_0|Add1~34\,
	sumout => \pwm_0|Add1~21_sumout\,
	cout => \pwm_0|Add1~22\);

-- Location: LABCELL_X18_Y15_N48
\pwm_0|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~25_sumout\ = SUM(( !\pwm_0|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_0|Add1~22\ ))
-- \pwm_0|Add1~26\ = CARRY(( !\pwm_0|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_0|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_0|Add1~22\,
	sumout => \pwm_0|Add1~25_sumout\,
	cout => \pwm_0|Add1~26\);

-- Location: LABCELL_X18_Y15_N51
\pwm_0|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~1_sumout\ = SUM(( !\pwm_0|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_0|Add1~26\ ))
-- \pwm_0|Add1~2\ = CARRY(( !\pwm_0|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_0|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_0|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_0|Add1~26\,
	sumout => \pwm_0|Add1~1_sumout\,
	cout => \pwm_0|Add1~2\);

-- Location: FF_X19_Y14_N19
\pwm_0|count[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~9_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][6]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y15_N54
\pwm_0|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~0_combout\ = ( \pwm_0|Add1~17_sumout\ & ( \pwm_0|Add1~13_sumout\ & ( (\pwm_0|count[0][7]~q\ & (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|Add1~17_sumout\ & ( 
-- \pwm_0|Add1~13_sumout\ & ( (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( \pwm_0|Add1~17_sumout\ & ( !\pwm_0|Add1~13_sumout\ & ( (!\pwm_0|count[0][7]~q\ & 
-- (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|Add1~17_sumout\ & ( !\pwm_0|Add1~13_sumout\ & ( (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|Add1~9_sumout\ $ 
-- (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~q\,
	datab => \pwm_0|ALT_INV_Add1~9_sumout\,
	datac => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_0|ALT_INV_Add1~13_sumout\,
	combout => \pwm_0|pwm_out~0_combout\);

-- Location: LABCELL_X18_Y15_N54
\pwm_0|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_0|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_0|Add1~2\,
	sumout => \pwm_0|Add1~5_sumout\);

-- Location: MLABCELL_X19_Y15_N36
\pwm_0|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~1_combout\ = ( \pwm_0|pwm_out~0_combout\ & ( \pwm_0|Add1~5_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~q\ $ (\pwm_0|Add1~1_sumout\))) ) ) ) # ( \pwm_0|pwm_out~0_combout\ & ( !\pwm_0|Add1~5_sumout\ & ( 
-- (\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~q\ $ (\pwm_0|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000010100000100000000000000001000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_0|ALT_INV_count[0][18]~q\,
	datac => \pwm_0|ALT_INV_Add1~1_sumout\,
	datae => \pwm_0|ALT_INV_pwm_out~0_combout\,
	dataf => \pwm_0|ALT_INV_Add1~5_sumout\,
	combout => \pwm_0|pwm_out~1_combout\);

-- Location: MLABCELL_X19_Y15_N6
\pwm_0|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~5_combout\ = ( \pwm_0|count[0][0]~q\ & ( \pwm_0|Add1~61_sumout\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (\pwm_0|half_duty[0][0]~q\ & (!\pwm_0|count[0][2]~q\ $ (\pwm_0|Add1~65_sumout\)))) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( 
-- \pwm_0|Add1~61_sumout\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|half_duty[0][0]~q\ & (!\pwm_0|count[0][2]~q\ $ (\pwm_0|Add1~65_sumout\)))) ) ) ) # ( \pwm_0|count[0][0]~q\ & ( !\pwm_0|Add1~61_sumout\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & 
-- (\pwm_0|half_duty[0][0]~q\ & (!\pwm_0|count[0][2]~q\ $ (\pwm_0|Add1~65_sumout\)))) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( !\pwm_0|Add1~61_sumout\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|half_duty[0][0]~q\ & (!\pwm_0|count[0][2]~q\ $ 
-- (\pwm_0|Add1~65_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][2]~q\,
	datac => \pwm_0|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_0|ALT_INV_Add1~65_sumout\,
	datae => \pwm_0|ALT_INV_count[0][0]~q\,
	dataf => \pwm_0|ALT_INV_Add1~61_sumout\,
	combout => \pwm_0|pwm_out~5_combout\);

-- Location: MLABCELL_X19_Y15_N0
\pwm_0|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~6_combout\ = ( \pwm_0|Add1~73_sumout\ & ( \pwm_0|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_0|Add1~73_sumout\ & ( \pwm_0|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( \pwm_0|Add1~73_sumout\ & ( !\pwm_0|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_0|Add1~73_sumout\ & ( !\pwm_0|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][10]~q\,
	datac => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_0|ALT_INV_Add1~69_sumout\,
	combout => \pwm_0|pwm_out~6_combout\);

-- Location: MLABCELL_X19_Y15_N21
\pwm_0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_0|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_0|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_0|ALT_INV_Add1~49_sumout\,
	combout => \pwm_0|Equal2~0_combout\);

-- Location: MLABCELL_X19_Y15_N51
\pwm_0|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|Equal2~1_combout\ = ( \pwm_0|Add1~53_sumout\ & ( !\pwm_0|count[0][12]~q\ ) ) # ( !\pwm_0|Add1~53_sumout\ & ( \pwm_0|count[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_0|ALT_INV_count[0][12]~q\,
	datae => \pwm_0|ALT_INV_Add1~53_sumout\,
	combout => \pwm_0|Equal2~1_combout\);

-- Location: MLABCELL_X19_Y15_N30
\pwm_0|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~7_combout\ = ( !\pwm_0|Equal2~0_combout\ & ( !\pwm_0|Equal2~1_combout\ & ( (\pwm_0|pwm_out~5_combout\ & (\pwm_0|pwm_out~6_combout\ & (!\pwm_0|Add1~57_sumout\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_Add1~57_sumout\,
	datab => \pwm_0|ALT_INV_pwm_out~5_combout\,
	datac => \pwm_0|ALT_INV_pwm_out~6_combout\,
	datad => \pwm_0|ALT_INV_count[0][13]~q\,
	datae => \pwm_0|ALT_INV_Equal2~0_combout\,
	dataf => \pwm_0|ALT_INV_Equal2~1_combout\,
	combout => \pwm_0|pwm_out~7_combout\);

-- Location: LABCELL_X17_Y15_N45
\pwm_0|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~2_combout\ = ( \pwm_0|Add1~25_sumout\ & ( \pwm_0|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_0|Add1~25_sumout\ & ( \pwm_0|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_0|Add1~25_sumout\ & ( !\pwm_0|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_0|Add1~25_sumout\ & ( !\pwm_0|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_0|ALT_INV_Add1~21_sumout\,
	combout => \pwm_0|pwm_out~2_combout\);

-- Location: MLABCELL_X19_Y15_N12
\pwm_0|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_0|pwm_out~8_combout\ = ( \pwm_0|pwm_out\(0) & ( \pwm_0|pwm_out~2_combout\ & ( !\pwm_0|Equal1~8_combout\ ) ) ) # ( !\pwm_0|pwm_out\(0) & ( \pwm_0|pwm_out~2_combout\ & ( (\pwm_0|pwm_out~4_combout\ & (!\pwm_0|Equal1~8_combout\ & 
-- (\pwm_0|pwm_out~1_combout\ & \pwm_0|pwm_out~7_combout\))) ) ) ) # ( \pwm_0|pwm_out\(0) & ( !\pwm_0|pwm_out~2_combout\ & ( !\pwm_0|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_pwm_out~4_combout\,
	datab => \pwm_0|ALT_INV_Equal1~8_combout\,
	datac => \pwm_0|ALT_INV_pwm_out~1_combout\,
	datad => \pwm_0|ALT_INV_pwm_out~7_combout\,
	datae => \pwm_0|ALT_INV_pwm_out\(0),
	dataf => \pwm_0|ALT_INV_pwm_out~2_combout\,
	combout => \pwm_0|pwm_out~8_combout\);

-- Location: FF_X19_Y15_N13
\pwm_0|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|pwm_out\(0));

-- Location: DSP_X16_Y9_N0
\pwm_1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_1|Mult0~8_ACLR_bus\,
	clk => \pwm_1|Mult0~8_CLK_bus\,
	ena => \pwm_1|Mult0~8_ENA_bus\,
	ax => \pwm_1|Mult0~8_AX_bus\,
	ay => \pwm_1|Mult0~8_AY_bus\,
	resulta => \pwm_1|Mult0~8_RESULTA_bus\);

-- Location: FF_X15_Y9_N35
\pwm_1|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(11));

-- Location: FF_X15_Y12_N31
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][11]~q\);

-- Location: FF_X15_Y9_N25
\pwm_1|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(10));

-- Location: FF_X15_Y12_N28
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][10]~q\);

-- Location: LABCELL_X15_Y9_N36
\pwm_1|half_duty_new[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[9]~feeder_combout\ = ( \pwm_1|Mult0~26\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~26\,
	combout => \pwm_1|half_duty_new[9]~feeder_combout\);

-- Location: FF_X15_Y9_N37
\pwm_1|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[9]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(9));

-- Location: FF_X15_Y12_N25
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][9]~q\);

-- Location: LABCELL_X15_Y9_N9
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

-- Location: FF_X15_Y9_N10
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

-- Location: FF_X15_Y12_N22
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][8]~q\);

-- Location: LABCELL_X17_Y9_N15
\pwm_1|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[7]~feeder_combout\ = ( \pwm_1|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~24\,
	combout => \pwm_1|half_duty_new[7]~feeder_combout\);

-- Location: FF_X17_Y9_N16
\pwm_1|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(7));

-- Location: FF_X15_Y12_N19
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][7]~q\);

-- Location: LABCELL_X15_Y9_N12
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

-- Location: FF_X15_Y9_N14
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

-- Location: FF_X15_Y12_N16
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][6]~q\);

-- Location: LABCELL_X15_Y9_N48
\pwm_1|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[5]~feeder_combout\ = ( \pwm_1|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~22\,
	combout => \pwm_1|half_duty_new[5]~feeder_combout\);

-- Location: FF_X15_Y9_N49
\pwm_1|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(5));

-- Location: FF_X15_Y12_N13
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][5]~q\);

-- Location: LABCELL_X17_Y9_N30
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

-- Location: FF_X17_Y9_N31
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

-- Location: FF_X15_Y12_N10
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][4]~q\);

-- Location: LABCELL_X15_Y9_N15
\pwm_1|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[3]~feeder_combout\ = ( \pwm_1|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~20\,
	combout => \pwm_1|half_duty_new[3]~feeder_combout\);

-- Location: FF_X15_Y9_N16
\pwm_1|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(3));

-- Location: FF_X15_Y12_N7
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][3]~q\);

-- Location: LABCELL_X15_Y9_N54
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

-- Location: FF_X15_Y9_N55
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

-- Location: FF_X15_Y12_N4
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][2]~q\);

-- Location: LABCELL_X15_Y9_N0
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

-- Location: FF_X15_Y9_N2
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

-- Location: FF_X15_Y12_N50
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][1]~q\);

-- Location: FF_X15_Y9_N5
\pwm_1|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(0));

-- Location: FF_X15_Y12_N2
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][0]~q\);

-- Location: LABCELL_X15_Y12_N0
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

-- Location: LABCELL_X15_Y12_N3
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

-- Location: LABCELL_X15_Y12_N6
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

-- Location: LABCELL_X15_Y12_N9
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

-- Location: LABCELL_X15_Y12_N12
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

-- Location: LABCELL_X15_Y12_N15
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

-- Location: LABCELL_X15_Y12_N18
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

-- Location: LABCELL_X15_Y12_N21
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

-- Location: LABCELL_X15_Y12_N24
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

-- Location: LABCELL_X15_Y12_N27
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

-- Location: LABCELL_X15_Y12_N30
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

-- Location: MLABCELL_X14_Y12_N3
\pwm_1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_1|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_1|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_1|ALT_INV_Add1~49_sumout\,
	combout => \pwm_1|Equal2~0_combout\);

-- Location: MLABCELL_X14_Y12_N36
\pwm_1|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~6_combout\ = ( \pwm_1|Add1~73_sumout\ & ( \pwm_1|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_1|Add1~73_sumout\ & ( \pwm_1|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) ) # 
-- ( \pwm_1|Add1~73_sumout\ & ( !\pwm_1|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_1|Add1~73_sumout\ & ( !\pwm_1|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][9]~q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_1|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~69_sumout\,
	combout => \pwm_1|pwm_out~6_combout\);

-- Location: LABCELL_X13_Y12_N0
\pwm_1|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~5_combout\ = ( \pwm_1|Add1~61_sumout\ & ( \pwm_0|count[0][2]~q\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (\pwm_1|Add1~65_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_1|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_1|Add1~61_sumout\ & ( 
-- \pwm_0|count[0][2]~q\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & (\pwm_1|Add1~65_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_1|half_duty[0][0]~q\)))) ) ) ) # ( \pwm_1|Add1~61_sumout\ & ( !\pwm_0|count[0][2]~q\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & 
-- (!\pwm_1|Add1~65_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_1|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_1|Add1~61_sumout\ & ( !\pwm_0|count[0][2]~q\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_1|Add1~65_sumout\ & (!\pwm_0|count[0][0]~q\ $ 
-- (\pwm_1|half_duty[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][0]~q\,
	datab => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datac => \pwm_1|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_1|ALT_INV_Add1~65_sumout\,
	datae => \pwm_1|ALT_INV_Add1~61_sumout\,
	dataf => \pwm_0|ALT_INV_count[0][2]~q\,
	combout => \pwm_1|pwm_out~5_combout\);

-- Location: LABCELL_X15_Y9_N51
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

-- Location: FF_X15_Y9_N52
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

-- Location: FF_X15_Y12_N37
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][13]~q\);

-- Location: FF_X15_Y9_N43
\pwm_1|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(12));

-- Location: FF_X15_Y12_N35
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][12]~q\);

-- Location: LABCELL_X15_Y12_N33
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

-- Location: LABCELL_X15_Y12_N36
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

-- Location: MLABCELL_X14_Y12_N9
\pwm_1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal2~1_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_1|Add1~53_sumout\ ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_1|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_1|ALT_INV_Add1~53_sumout\,
	combout => \pwm_1|Equal2~1_combout\);

-- Location: MLABCELL_X14_Y12_N54
\pwm_1|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~7_combout\ = ( \pwm_1|Add1~57_sumout\ & ( !\pwm_1|Equal2~1_combout\ & ( (!\pwm_1|Equal2~0_combout\ & (\pwm_0|count[0][13]~q\ & (\pwm_1|pwm_out~6_combout\ & \pwm_1|pwm_out~5_combout\))) ) ) ) # ( !\pwm_1|Add1~57_sumout\ & ( 
-- !\pwm_1|Equal2~1_combout\ & ( (!\pwm_1|Equal2~0_combout\ & (!\pwm_0|count[0][13]~q\ & (\pwm_1|pwm_out~6_combout\ & \pwm_1|pwm_out~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_Equal2~0_combout\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_1|ALT_INV_pwm_out~6_combout\,
	datad => \pwm_1|ALT_INV_pwm_out~5_combout\,
	datae => \pwm_1|ALT_INV_Add1~57_sumout\,
	dataf => \pwm_1|ALT_INV_Equal2~1_combout\,
	combout => \pwm_1|pwm_out~7_combout\);

-- Location: LABCELL_X13_Y12_N36
\pwm_1|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~6_combout\ = ( \pwm_0|count[0][2]~q\ & ( (\pwm_1|half_duty[0][2]~q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_1|half_duty[0][3]~q\))) ) ) # ( !\pwm_0|count[0][2]~q\ & ( (!\pwm_1|half_duty[0][2]~q\ & (!\pwm_0|count[0][3]~q\ $ 
-- (\pwm_1|half_duty[0][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][3]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][3]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][2]~q\,
	dataf => \pwm_0|ALT_INV_count[0][2]~q\,
	combout => \pwm_1|Equal1~6_combout\);

-- Location: LABCELL_X13_Y12_N12
\pwm_1|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~4_combout\ = ( \pwm_1|half_duty[0][5]~q\ & ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_0|count[0][7]~q\ & (!\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) # (\pwm_0|count[0][7]~q\ & 
-- (\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_1|half_duty[0][5]~q\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_0|count[0][7]~q\ & (!\pwm_1|half_duty[0][7]~q\ & 
-- (!\pwm_1|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) # (\pwm_0|count[0][7]~q\ & (\pwm_1|half_duty[0][7]~q\ & (!\pwm_1|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][7]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][6]~q\,
	datad => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datae => \pwm_1|ALT_INV_half_duty[0][5]~q\,
	dataf => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	combout => \pwm_1|Equal1~4_combout\);

-- Location: LABCELL_X13_Y12_N18
\pwm_1|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~5_combout\ = ( \pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_1|half_duty[0][1]~q\ & \pwm_1|half_duty[0][0]~q\)) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( 
-- (!\pwm_0|count[0][19]~q\ & (\pwm_1|half_duty[0][1]~q\ & !\pwm_1|half_duty[0][0]~q\)) ) ) ) # ( \pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_1|half_duty[0][1]~q\ & \pwm_1|half_duty[0][0]~q\)) ) ) ) # ( 
-- !\pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_1|half_duty[0][1]~q\ & !\pwm_1|half_duty[0][0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000010000000100000100000001000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][1]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][0]~q\,
	datae => \pwm_0|ALT_INV_count[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_1|Equal1~5_combout\);

-- Location: LABCELL_X13_Y12_N6
\pwm_1|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~7_combout\ = ( \pwm_1|Equal1~5_combout\ & ( (\pwm_1|Equal1~6_combout\ & (\pwm_1|Equal1~4_combout\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_1|half_duty[0][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_Equal1~6_combout\,
	datab => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datac => \pwm_1|ALT_INV_half_duty[0][4]~q\,
	datad => \pwm_1|ALT_INV_Equal1~4_combout\,
	dataf => \pwm_1|ALT_INV_Equal1~5_combout\,
	combout => \pwm_1|Equal1~7_combout\);

-- Location: LABCELL_X15_Y9_N30
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

-- Location: FF_X15_Y9_N31
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

-- Location: FF_X13_Y12_N56
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][17]~q\);

-- Location: LABCELL_X15_Y9_N27
\pwm_1|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[18]~feeder_combout\ = ( \pwm_1|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~35\,
	combout => \pwm_1|half_duty_new[18]~feeder_combout\);

-- Location: FF_X15_Y9_N29
\pwm_1|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(18));

-- Location: FF_X15_Y12_N52
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][18]~q\);

-- Location: LABCELL_X13_Y12_N51
\pwm_1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~0_combout\ = ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( \pwm_0|count[0][18]~DUPLICATE_q\ & ( (\pwm_1|half_duty[0][17]~q\ & \pwm_1|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~DUPLICATE_q\ & ( \pwm_0|count[0][18]~DUPLICATE_q\ & ( 
-- (!\pwm_1|half_duty[0][17]~q\ & \pwm_1|half_duty[0][18]~q\) ) ) ) # ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( !\pwm_0|count[0][18]~DUPLICATE_q\ & ( (\pwm_1|half_duty[0][17]~q\ & !\pwm_1|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][18]~DUPLICATE_q\ & ( (!\pwm_1|half_duty[0][17]~q\ & !\pwm_1|half_duty[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][17]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][18]~q\,
	datae => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	combout => \pwm_1|Equal1~0_combout\);

-- Location: LABCELL_X13_Y12_N42
\pwm_1|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~3_combout\ = ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( \pwm_0|count[0][9]~q\ & ( (\pwm_1|half_duty[0][8]~q\ & (\pwm_1|half_duty[0][9]~q\ & (!\pwm_1|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( !\pwm_0|count[0][8]~DUPLICATE_q\ & ( 
-- \pwm_0|count[0][9]~q\ & ( (!\pwm_1|half_duty[0][8]~q\ & (\pwm_1|half_duty[0][9]~q\ & (!\pwm_1|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( !\pwm_0|count[0][9]~q\ & ( (\pwm_1|half_duty[0][8]~q\ & 
-- (!\pwm_1|half_duty[0][9]~q\ & (!\pwm_1|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( !\pwm_0|count[0][8]~DUPLICATE_q\ & ( !\pwm_0|count[0][9]~q\ & ( (!\pwm_1|half_duty[0][8]~q\ & (!\pwm_1|half_duty[0][9]~q\ & (!\pwm_1|half_duty[0][10]~q\ $ 
-- (\pwm_0|count[0][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][8]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][10]~q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datad => \pwm_1|ALT_INV_half_duty[0][9]~q\,
	datae => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][9]~q\,
	combout => \pwm_1|Equal1~3_combout\);

-- Location: LABCELL_X17_Y9_N36
\pwm_1|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|half_duty_new[15]~feeder_combout\ = ( \pwm_1|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_1|ALT_INV_Mult0~32\,
	combout => \pwm_1|half_duty_new[15]~feeder_combout\);

-- Location: FF_X17_Y9_N37
\pwm_1|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(15));

-- Location: FF_X15_Y12_N43
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][15]~q\);

-- Location: FF_X15_Y9_N41
\pwm_1|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_1|Mult0~33\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty_new\(16));

-- Location: FF_X15_Y12_N46
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][16]~q\);

-- Location: FF_X15_Y9_N19
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

-- Location: FF_X15_Y12_N40
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
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|half_duty[0][14]~q\);

-- Location: LABCELL_X13_Y11_N36
\pwm_1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~1_combout\ = ( \pwm_0|count[0][16]~q\ & ( \pwm_0|count[0][14]~q\ & ( (\pwm_1|half_duty[0][16]~q\ & (\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_0|count[0][16]~q\ & ( 
-- \pwm_0|count[0][14]~q\ & ( (!\pwm_1|half_duty[0][16]~q\ & (\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( \pwm_0|count[0][16]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (\pwm_1|half_duty[0][16]~q\ & 
-- (!\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_0|count[0][16]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_1|half_duty[0][16]~q\ & (!\pwm_1|half_duty[0][14]~q\ & (!\pwm_1|half_duty[0][15]~q\ $ 
-- (\pwm_0|count[0][15]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][15]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][16]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][15]~q\,
	datae => \pwm_0|ALT_INV_count[0][16]~q\,
	dataf => \pwm_0|ALT_INV_count[0][14]~q\,
	combout => \pwm_1|Equal1~1_combout\);

-- Location: LABCELL_X17_Y12_N48
\pwm_1|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~2_combout\ = ( \pwm_0|count[0][12]~q\ & ( \pwm_0|count[0][11]~q\ & ( (\pwm_1|half_duty[0][12]~q\ & (\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][12]~q\ & ( 
-- \pwm_0|count[0][11]~q\ & ( (!\pwm_1|half_duty[0][12]~q\ & (\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (\pwm_1|half_duty[0][12]~q\ & 
-- (!\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (!\pwm_1|half_duty[0][12]~q\ & (!\pwm_1|half_duty[0][11]~q\ & (!\pwm_1|half_duty[0][13]~q\ $ 
-- (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_half_duty[0][12]~q\,
	datab => \pwm_1|ALT_INV_half_duty[0][11]~q\,
	datac => \pwm_1|ALT_INV_half_duty[0][13]~q\,
	datad => \pwm_0|ALT_INV_count[0][13]~q\,
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_0|ALT_INV_count[0][11]~q\,
	combout => \pwm_1|Equal1~2_combout\);

-- Location: LABCELL_X13_Y12_N24
\pwm_1|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Equal1~8_combout\ = ( \pwm_1|Equal1~1_combout\ & ( \pwm_1|Equal1~2_combout\ & ( (\pwm_1|Equal1~7_combout\ & (\pwm_1|Equal1~0_combout\ & \pwm_1|Equal1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_1|ALT_INV_Equal1~7_combout\,
	datac => \pwm_1|ALT_INV_Equal1~0_combout\,
	datad => \pwm_1|ALT_INV_Equal1~3_combout\,
	datae => \pwm_1|ALT_INV_Equal1~1_combout\,
	dataf => \pwm_1|ALT_INV_Equal1~2_combout\,
	combout => \pwm_1|Equal1~8_combout\);

-- Location: FF_X19_Y14_N22
\pwm_0|count[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~13_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][7]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y12_N18
\pwm_1|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~0_combout\ = ( \pwm_1|Add1~9_sumout\ & ( \pwm_1|Add1~13_sumout\ & ( (\pwm_0|count[0][7]~DUPLICATE_q\ & (\pwm_0|count[0][6]~q\ & (!\pwm_1|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_1|Add1~9_sumout\ & ( 
-- \pwm_1|Add1~13_sumout\ & ( (\pwm_0|count[0][7]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~q\ & (!\pwm_1|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( \pwm_1|Add1~9_sumout\ & ( !\pwm_1|Add1~13_sumout\ & ( (!\pwm_0|count[0][7]~DUPLICATE_q\ & 
-- (\pwm_0|count[0][6]~q\ & (!\pwm_1|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_1|Add1~9_sumout\ & ( !\pwm_1|Add1~13_sumout\ & ( (!\pwm_0|count[0][7]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~q\ & (!\pwm_1|Add1~17_sumout\ $ 
-- (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_Add1~17_sumout\,
	datab => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][6]~q\,
	datae => \pwm_1|ALT_INV_Add1~9_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~13_sumout\,
	combout => \pwm_1|pwm_out~0_combout\);

-- Location: LABCELL_X15_Y12_N39
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

-- Location: LABCELL_X15_Y12_N42
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

-- Location: LABCELL_X15_Y12_N45
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

-- Location: LABCELL_X15_Y12_N48
\pwm_1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|Add1~25_sumout\ = SUM(( !\pwm_1|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_1|Add1~22\ ))
-- \pwm_1|Add1~26\ = CARRY(( !\pwm_1|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_1|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_1|Add1~22\,
	sumout => \pwm_1|Add1~25_sumout\,
	cout => \pwm_1|Add1~26\);

-- Location: LABCELL_X15_Y12_N51
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

-- Location: LABCELL_X15_Y12_N54
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

-- Location: MLABCELL_X14_Y12_N24
\pwm_1|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~1_combout\ = ( \pwm_1|Add1~5_sumout\ & ( \pwm_1|Add1~1_sumout\ & ( (\pwm_1|pwm_out~0_combout\ & (!\pwm_0|count[0][19]~q\ & \pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( !\pwm_1|Add1~5_sumout\ & ( \pwm_1|Add1~1_sumout\ & ( 
-- (\pwm_1|pwm_out~0_combout\ & (\pwm_0|count[0][19]~q\ & \pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( \pwm_1|Add1~5_sumout\ & ( !\pwm_1|Add1~1_sumout\ & ( (\pwm_1|pwm_out~0_combout\ & (!\pwm_0|count[0][19]~q\ & !\pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( 
-- !\pwm_1|Add1~5_sumout\ & ( !\pwm_1|Add1~1_sumout\ & ( (\pwm_1|pwm_out~0_combout\ & (\pwm_0|count[0][19]~q\ & !\pwm_0|count[0][18]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000010001000000000000000000000100010000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_pwm_out~0_combout\,
	datab => \pwm_0|ALT_INV_count[0][19]~q\,
	datad => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datae => \pwm_1|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~1_sumout\,
	combout => \pwm_1|pwm_out~1_combout\);

-- Location: MLABCELL_X14_Y12_N48
\pwm_1|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~3_combout\ = ( \pwm_1|Add1~37_sumout\ & ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_0|count[0][3]~q\ & (\pwm_1|Add1~45_sumout\ & (!\pwm_1|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_1|Add1~37_sumout\ & ( 
-- \pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_0|count[0][3]~q\ & (\pwm_1|Add1~45_sumout\ & (!\pwm_1|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( \pwm_1|Add1~37_sumout\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_0|count[0][3]~q\ & 
-- (!\pwm_1|Add1~45_sumout\ & (!\pwm_1|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_1|Add1~37_sumout\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_0|count[0][3]~q\ & (!\pwm_1|Add1~45_sumout\ & (!\pwm_1|Add1~41_sumout\ $ 
-- (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][3]~q\,
	datab => \pwm_1|ALT_INV_Add1~41_sumout\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datad => \pwm_1|ALT_INV_Add1~45_sumout\,
	datae => \pwm_1|ALT_INV_Add1~37_sumout\,
	dataf => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	combout => \pwm_1|pwm_out~3_combout\);

-- Location: MLABCELL_X14_Y12_N42
\pwm_1|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~4_combout\ = ( \pwm_1|Add1~33_sumout\ & ( \pwm_1|Add1~29_sumout\ & ( (\pwm_1|pwm_out~3_combout\ & (\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~DUPLICATE_q\)) ) ) ) # ( !\pwm_1|Add1~33_sumout\ & ( \pwm_1|Add1~29_sumout\ & ( 
-- (\pwm_1|pwm_out~3_combout\ & (\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~DUPLICATE_q\)) ) ) ) # ( \pwm_1|Add1~33_sumout\ & ( !\pwm_1|Add1~29_sumout\ & ( (\pwm_1|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~DUPLICATE_q\)) ) ) ) # 
-- ( !\pwm_1|Add1~33_sumout\ & ( !\pwm_1|Add1~29_sumout\ & ( (\pwm_1|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000001000000010000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_pwm_out~3_combout\,
	datab => \pwm_0|ALT_INV_count[0][14]~q\,
	datac => \pwm_0|ALT_INV_count[0][15]~DUPLICATE_q\,
	datae => \pwm_1|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~29_sumout\,
	combout => \pwm_1|pwm_out~4_combout\);

-- Location: MLABCELL_X14_Y12_N33
\pwm_1|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~2_combout\ = ( \pwm_1|Add1~25_sumout\ & ( (\pwm_0|count[0][17]~DUPLICATE_q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_1|Add1~21_sumout\))) ) ) # ( !\pwm_1|Add1~25_sumout\ & ( (!\pwm_0|count[0][17]~DUPLICATE_q\ & (!\pwm_0|count[0][16]~q\ $ 
-- (\pwm_1|Add1~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datad => \pwm_1|ALT_INV_Add1~21_sumout\,
	dataf => \pwm_1|ALT_INV_Add1~25_sumout\,
	combout => \pwm_1|pwm_out~2_combout\);

-- Location: MLABCELL_X14_Y12_N12
\pwm_1|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_1|pwm_out~8_combout\ = ( \pwm_1|pwm_out\(0) & ( \pwm_1|pwm_out~2_combout\ & ( !\pwm_1|Equal1~8_combout\ ) ) ) # ( !\pwm_1|pwm_out\(0) & ( \pwm_1|pwm_out~2_combout\ & ( (\pwm_1|pwm_out~7_combout\ & (!\pwm_1|Equal1~8_combout\ & 
-- (\pwm_1|pwm_out~1_combout\ & \pwm_1|pwm_out~4_combout\))) ) ) ) # ( \pwm_1|pwm_out\(0) & ( !\pwm_1|pwm_out~2_combout\ & ( !\pwm_1|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_1|ALT_INV_pwm_out~7_combout\,
	datab => \pwm_1|ALT_INV_Equal1~8_combout\,
	datac => \pwm_1|ALT_INV_pwm_out~1_combout\,
	datad => \pwm_1|ALT_INV_pwm_out~4_combout\,
	datae => \pwm_1|ALT_INV_pwm_out\(0),
	dataf => \pwm_1|ALT_INV_pwm_out~2_combout\,
	combout => \pwm_1|pwm_out~8_combout\);

-- Location: FF_X14_Y12_N13
\pwm_1|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_1|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_1|pwm_out\(0));

-- Location: DSP_X24_Y15_N0
\pwm_2|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_2|Mult0~8_ACLR_bus\,
	clk => \pwm_2|Mult0~8_CLK_bus\,
	ena => \pwm_2|Mult0~8_ENA_bus\,
	ax => \pwm_2|Mult0~8_AX_bus\,
	ay => \pwm_2|Mult0~8_AY_bus\,
	resulta => \pwm_2|Mult0~8_RESULTA_bus\);

-- Location: FF_X23_Y15_N40
\pwm_2|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(3));

-- Location: FF_X23_Y16_N7
\pwm_2|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][3]~q\);

-- Location: FF_X23_Y15_N26
\pwm_2|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~19\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(2));

-- Location: FF_X23_Y16_N4
\pwm_2|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][2]~q\);

-- Location: LABCELL_X23_Y15_N9
\pwm_2|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[1]~feeder_combout\ = ( \pwm_2|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~18\,
	combout => \pwm_2|half_duty_new[1]~feeder_combout\);

-- Location: FF_X23_Y15_N10
\pwm_2|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(1));

-- Location: FF_X23_Y16_N50
\pwm_2|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][1]~q\);

-- Location: FF_X23_Y15_N4
\pwm_2|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(0));

-- Location: FF_X23_Y16_N2
\pwm_2|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][0]~q\);

-- Location: LABCELL_X23_Y16_N0
\pwm_2|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~61_sumout\ = SUM(( !\pwm_2|half_duty[0][0]~q\ ) + ( !\pwm_2|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_2|Add1~62\ = CARRY(( !\pwm_2|half_duty[0][0]~q\ ) + ( !\pwm_2|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_2|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_2|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_2|Add1~61_sumout\,
	cout => \pwm_2|Add1~62\);

-- Location: LABCELL_X23_Y16_N3
\pwm_2|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~65_sumout\ = SUM(( !\pwm_2|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_2|Add1~62\ ))
-- \pwm_2|Add1~66\ = CARRY(( !\pwm_2|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_2|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_2|Add1~62\,
	sumout => \pwm_2|Add1~65_sumout\,
	cout => \pwm_2|Add1~66\);

-- Location: LABCELL_X23_Y16_N6
\pwm_2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~37_sumout\ = SUM(( !\pwm_2|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_2|Add1~66\ ))
-- \pwm_2|Add1~38\ = CARRY(( !\pwm_2|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_2|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_2|Add1~66\,
	sumout => \pwm_2|Add1~37_sumout\,
	cout => \pwm_2|Add1~38\);

-- Location: LABCELL_X23_Y15_N27
\pwm_2|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[4]~feeder_combout\ = ( \pwm_2|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~21\,
	combout => \pwm_2|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y15_N28
\pwm_2|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(4));

-- Location: FF_X23_Y16_N10
\pwm_2|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][4]~q\);

-- Location: LABCELL_X23_Y16_N9
\pwm_2|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~41_sumout\ = SUM(( !\pwm_2|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_2|Add1~38\ ))
-- \pwm_2|Add1~42\ = CARRY(( !\pwm_2|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_2|Add1~38\,
	sumout => \pwm_2|Add1~41_sumout\,
	cout => \pwm_2|Add1~42\);

-- Location: FF_X23_Y15_N46
\pwm_2|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~22\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(5));

-- Location: FF_X23_Y16_N13
\pwm_2|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][5]~q\);

-- Location: LABCELL_X23_Y16_N12
\pwm_2|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~45_sumout\ = SUM(( !\pwm_2|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_2|Add1~42\ ))
-- \pwm_2|Add1~46\ = CARRY(( !\pwm_2|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_2|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_2|Add1~42\,
	sumout => \pwm_2|Add1~45_sumout\,
	cout => \pwm_2|Add1~46\);

-- Location: LABCELL_X22_Y16_N3
\pwm_2|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~3_combout\ = ( \pwm_2|Add1~41_sumout\ & ( \pwm_2|Add1~45_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_2|Add1~37_sumout\)))) ) ) ) # ( !\pwm_2|Add1~41_sumout\ & ( 
-- \pwm_2|Add1~45_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_2|Add1~37_sumout\)))) ) ) ) # ( \pwm_2|Add1~41_sumout\ & ( !\pwm_2|Add1~45_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_2|Add1~37_sumout\)))) ) ) ) # ( !\pwm_2|Add1~41_sumout\ & ( !\pwm_2|Add1~45_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ 
-- (\pwm_2|Add1~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][3]~q\,
	datab => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datad => \pwm_2|ALT_INV_Add1~37_sumout\,
	datae => \pwm_2|ALT_INV_Add1~41_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~45_sumout\,
	combout => \pwm_2|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y15_N21
\pwm_2|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[15]~feeder_combout\ = ( \pwm_2|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~32\,
	combout => \pwm_2|half_duty_new[15]~feeder_combout\);

-- Location: FF_X23_Y15_N22
\pwm_2|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(15));

-- Location: FF_X23_Y16_N43
\pwm_2|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][15]~q\);

-- Location: FF_X23_Y15_N16
\pwm_2|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(14));

-- Location: FF_X23_Y16_N40
\pwm_2|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][14]~q\);

-- Location: LABCELL_X23_Y15_N33
\pwm_2|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[13]~feeder_combout\ = ( \pwm_2|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~30\,
	combout => \pwm_2|half_duty_new[13]~feeder_combout\);

-- Location: FF_X23_Y15_N35
\pwm_2|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(13));

-- Location: FF_X23_Y16_N37
\pwm_2|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][13]~q\);

-- Location: FF_X23_Y15_N49
\pwm_2|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(12));

-- Location: FF_X23_Y16_N34
\pwm_2|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][12]~q\);

-- Location: FF_X23_Y15_N2
\pwm_2|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(11));

-- Location: FF_X23_Y16_N31
\pwm_2|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][11]~q\);

-- Location: FF_X23_Y15_N7
\pwm_2|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(10));

-- Location: FF_X23_Y16_N28
\pwm_2|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][10]~q\);

-- Location: LABCELL_X23_Y15_N36
\pwm_2|half_duty_new[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[9]~feeder_combout\ = ( \pwm_2|Mult0~26\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~26\,
	combout => \pwm_2|half_duty_new[9]~feeder_combout\);

-- Location: FF_X23_Y15_N37
\pwm_2|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[9]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(9));

-- Location: FF_X23_Y16_N25
\pwm_2|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][9]~q\);

-- Location: LABCELL_X23_Y15_N30
\pwm_2|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[8]~feeder_combout\ = ( \pwm_2|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~25\,
	combout => \pwm_2|half_duty_new[8]~feeder_combout\);

-- Location: FF_X23_Y15_N31
\pwm_2|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(8));

-- Location: FF_X23_Y16_N22
\pwm_2|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][8]~q\);

-- Location: LABCELL_X23_Y15_N12
\pwm_2|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[7]~feeder_combout\ = ( \pwm_2|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~24\,
	combout => \pwm_2|half_duty_new[7]~feeder_combout\);

-- Location: FF_X23_Y15_N13
\pwm_2|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(7));

-- Location: FF_X23_Y16_N19
\pwm_2|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][7]~q\);

-- Location: MLABCELL_X25_Y15_N21
\pwm_2|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[6]~feeder_combout\ = ( \pwm_2|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~23\,
	combout => \pwm_2|half_duty_new[6]~feeder_combout\);

-- Location: FF_X25_Y15_N22
\pwm_2|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(6));

-- Location: FF_X23_Y16_N16
\pwm_2|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][6]~q\);

-- Location: LABCELL_X23_Y16_N15
\pwm_2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~9_sumout\ = SUM(( !\pwm_2|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_2|Add1~46\ ))
-- \pwm_2|Add1~10\ = CARRY(( !\pwm_2|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_2|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_2|Add1~46\,
	sumout => \pwm_2|Add1~9_sumout\,
	cout => \pwm_2|Add1~10\);

-- Location: LABCELL_X23_Y16_N18
\pwm_2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~13_sumout\ = SUM(( !\pwm_2|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_2|Add1~10\ ))
-- \pwm_2|Add1~14\ = CARRY(( !\pwm_2|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_2|Add1~10\,
	sumout => \pwm_2|Add1~13_sumout\,
	cout => \pwm_2|Add1~14\);

-- Location: LABCELL_X23_Y16_N21
\pwm_2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~17_sumout\ = SUM(( !\pwm_2|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_2|Add1~14\ ))
-- \pwm_2|Add1~18\ = CARRY(( !\pwm_2|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_2|Add1~14\,
	sumout => \pwm_2|Add1~17_sumout\,
	cout => \pwm_2|Add1~18\);

-- Location: LABCELL_X23_Y16_N24
\pwm_2|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~69_sumout\ = SUM(( !\pwm_2|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_2|Add1~18\ ))
-- \pwm_2|Add1~70\ = CARRY(( !\pwm_2|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_2|Add1~18\,
	sumout => \pwm_2|Add1~69_sumout\,
	cout => \pwm_2|Add1~70\);

-- Location: LABCELL_X23_Y16_N27
\pwm_2|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~73_sumout\ = SUM(( !\pwm_2|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_2|Add1~70\ ))
-- \pwm_2|Add1~74\ = CARRY(( !\pwm_2|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_2|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_2|Add1~70\,
	sumout => \pwm_2|Add1~73_sumout\,
	cout => \pwm_2|Add1~74\);

-- Location: LABCELL_X23_Y16_N30
\pwm_2|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~49_sumout\ = SUM(( !\pwm_2|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_2|Add1~74\ ))
-- \pwm_2|Add1~50\ = CARRY(( !\pwm_2|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_2|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_2|Add1~74\,
	sumout => \pwm_2|Add1~49_sumout\,
	cout => \pwm_2|Add1~50\);

-- Location: LABCELL_X23_Y16_N33
\pwm_2|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~53_sumout\ = SUM(( !\pwm_2|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_2|Add1~50\ ))
-- \pwm_2|Add1~54\ = CARRY(( !\pwm_2|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_2|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_2|Add1~50\,
	sumout => \pwm_2|Add1~53_sumout\,
	cout => \pwm_2|Add1~54\);

-- Location: LABCELL_X23_Y16_N36
\pwm_2|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~57_sumout\ = SUM(( !\pwm_2|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_2|Add1~54\ ))
-- \pwm_2|Add1~58\ = CARRY(( !\pwm_2|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_2|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_2|Add1~54\,
	sumout => \pwm_2|Add1~57_sumout\,
	cout => \pwm_2|Add1~58\);

-- Location: LABCELL_X23_Y16_N39
\pwm_2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~29_sumout\ = SUM(( !\pwm_2|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_2|Add1~58\ ))
-- \pwm_2|Add1~30\ = CARRY(( !\pwm_2|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_2|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_2|Add1~58\,
	sumout => \pwm_2|Add1~29_sumout\,
	cout => \pwm_2|Add1~30\);

-- Location: LABCELL_X23_Y16_N42
\pwm_2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~33_sumout\ = SUM(( !\pwm_2|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_2|Add1~30\ ))
-- \pwm_2|Add1~34\ = CARRY(( !\pwm_2|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_2|Add1~30\,
	sumout => \pwm_2|Add1~33_sumout\,
	cout => \pwm_2|Add1~34\);

-- Location: LABCELL_X22_Y16_N18
\pwm_2|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~4_combout\ = ( \pwm_2|Add1~33_sumout\ & ( \pwm_2|Add1~29_sumout\ & ( (\pwm_0|count[0][15]~q\ & (\pwm_2|pwm_out~3_combout\ & \pwm_0|count[0][14]~q\)) ) ) ) # ( !\pwm_2|Add1~33_sumout\ & ( \pwm_2|Add1~29_sumout\ & ( (!\pwm_0|count[0][15]~q\ & 
-- (\pwm_2|pwm_out~3_combout\ & \pwm_0|count[0][14]~q\)) ) ) ) # ( \pwm_2|Add1~33_sumout\ & ( !\pwm_2|Add1~29_sumout\ & ( (\pwm_0|count[0][15]~q\ & (\pwm_2|pwm_out~3_combout\ & !\pwm_0|count[0][14]~q\)) ) ) ) # ( !\pwm_2|Add1~33_sumout\ & ( 
-- !\pwm_2|Add1~29_sumout\ & ( (!\pwm_0|count[0][15]~q\ & (\pwm_2|pwm_out~3_combout\ & !\pwm_0|count[0][14]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000110000000000000000000011000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_2|ALT_INV_pwm_out~3_combout\,
	datad => \pwm_0|ALT_INV_count[0][14]~q\,
	datae => \pwm_2|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~29_sumout\,
	combout => \pwm_2|pwm_out~4_combout\);

-- Location: MLABCELL_X25_Y16_N0
\pwm_2|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~3_combout\ = ( \pwm_0|count[0][10]~q\ & ( \pwm_0|count[0][9]~DUPLICATE_q\ & ( (\pwm_2|half_duty[0][10]~q\ & (\pwm_2|half_duty[0][9]~q\ & (!\pwm_2|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~q\)))) ) ) ) # ( !\pwm_0|count[0][10]~q\ & ( 
-- \pwm_0|count[0][9]~DUPLICATE_q\ & ( (!\pwm_2|half_duty[0][10]~q\ & (\pwm_2|half_duty[0][9]~q\ & (!\pwm_2|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~q\)))) ) ) ) # ( \pwm_0|count[0][10]~q\ & ( !\pwm_0|count[0][9]~DUPLICATE_q\ & ( (\pwm_2|half_duty[0][10]~q\ 
-- & (!\pwm_2|half_duty[0][9]~q\ & (!\pwm_2|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~q\)))) ) ) ) # ( !\pwm_0|count[0][10]~q\ & ( !\pwm_0|count[0][9]~DUPLICATE_q\ & ( (!\pwm_2|half_duty[0][10]~q\ & (!\pwm_2|half_duty[0][9]~q\ & (!\pwm_2|half_duty[0][8]~q\ $ 
-- (\pwm_0|count[0][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_half_duty[0][10]~q\,
	datab => \pwm_2|ALT_INV_half_duty[0][9]~q\,
	datac => \pwm_2|ALT_INV_half_duty[0][8]~q\,
	datad => \pwm_0|ALT_INV_count[0][8]~q\,
	datae => \pwm_0|ALT_INV_count[0][10]~q\,
	dataf => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	combout => \pwm_2|Equal1~3_combout\);

-- Location: FF_X25_Y15_N37
\pwm_2|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~34\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(17));

-- Location: MLABCELL_X25_Y16_N30
\pwm_2|half_duty[0][17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty[0][17]~feeder_combout\ = ( \pwm_2|half_duty_new\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_half_duty_new\(17),
	combout => \pwm_2|half_duty[0][17]~feeder_combout\);

-- Location: FF_X25_Y16_N32
\pwm_2|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty[0][17]~feeder_combout\,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][17]~q\);

-- Location: FF_X23_Y15_N58
\pwm_2|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|Mult0~35\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(18));

-- Location: FF_X23_Y16_N52
\pwm_2|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][18]~q\);

-- Location: MLABCELL_X25_Y16_N15
\pwm_2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~0_combout\ = ( \pwm_0|count[0][17]~q\ & ( \pwm_2|half_duty[0][18]~q\ & ( (\pwm_2|half_duty[0][17]~q\ & \pwm_0|count[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~q\ & ( \pwm_2|half_duty[0][18]~q\ & ( (!\pwm_2|half_duty[0][17]~q\ & 
-- \pwm_0|count[0][18]~q\) ) ) ) # ( \pwm_0|count[0][17]~q\ & ( !\pwm_2|half_duty[0][18]~q\ & ( (\pwm_2|half_duty[0][17]~q\ & !\pwm_0|count[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~q\ & ( !\pwm_2|half_duty[0][18]~q\ & ( (!\pwm_2|half_duty[0][17]~q\ & 
-- !\pwm_0|count[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_2|ALT_INV_half_duty[0][17]~q\,
	datac => \pwm_0|ALT_INV_count[0][18]~q\,
	datae => \pwm_0|ALT_INV_count[0][17]~q\,
	dataf => \pwm_2|ALT_INV_half_duty[0][18]~q\,
	combout => \pwm_2|Equal1~0_combout\);

-- Location: LABCELL_X23_Y15_N18
\pwm_2|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|half_duty_new[16]~feeder_combout\ = ( \pwm_2|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_2|ALT_INV_Mult0~33\,
	combout => \pwm_2|half_duty_new[16]~feeder_combout\);

-- Location: FF_X23_Y15_N20
\pwm_2|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty_new\(16));

-- Location: FF_X23_Y16_N46
\pwm_2|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_2|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|half_duty[0][16]~q\);

-- Location: MLABCELL_X25_Y16_N42
\pwm_2|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~1_combout\ = ( \pwm_0|count[0][15]~q\ & ( \pwm_0|count[0][16]~q\ & ( (\pwm_2|half_duty[0][16]~q\ & (\pwm_2|half_duty[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ (\pwm_2|half_duty[0][14]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( 
-- \pwm_0|count[0][16]~q\ & ( (\pwm_2|half_duty[0][16]~q\ & (!\pwm_2|half_duty[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ (\pwm_2|half_duty[0][14]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][16]~q\ & ( (!\pwm_2|half_duty[0][16]~q\ & 
-- (\pwm_2|half_duty[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ (\pwm_2|half_duty[0][14]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][16]~q\ & ( (!\pwm_2|half_duty[0][16]~q\ & (!\pwm_2|half_duty[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ 
-- (\pwm_2|half_duty[0][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][14]~q\,
	datab => \pwm_2|ALT_INV_half_duty[0][14]~q\,
	datac => \pwm_2|ALT_INV_half_duty[0][16]~q\,
	datad => \pwm_2|ALT_INV_half_duty[0][15]~q\,
	datae => \pwm_0|ALT_INV_count[0][15]~q\,
	dataf => \pwm_0|ALT_INV_count[0][16]~q\,
	combout => \pwm_2|Equal1~1_combout\);

-- Location: LABCELL_X21_Y16_N51
\pwm_2|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~2_combout\ = ( \pwm_0|count[0][11]~q\ & ( \pwm_2|half_duty[0][11]~q\ & ( (!\pwm_2|half_duty[0][13]~q\ & (!\pwm_0|count[0][13]~q\ & (!\pwm_0|count[0][12]~q\ $ (\pwm_2|half_duty[0][12]~q\)))) # (\pwm_2|half_duty[0][13]~q\ & 
-- (\pwm_0|count[0][13]~q\ & (!\pwm_0|count[0][12]~q\ $ (\pwm_2|half_duty[0][12]~q\)))) ) ) ) # ( !\pwm_0|count[0][11]~q\ & ( !\pwm_2|half_duty[0][11]~q\ & ( (!\pwm_2|half_duty[0][13]~q\ & (!\pwm_0|count[0][13]~q\ & (!\pwm_0|count[0][12]~q\ $ 
-- (\pwm_2|half_duty[0][12]~q\)))) # (\pwm_2|half_duty[0][13]~q\ & (\pwm_0|count[0][13]~q\ & (!\pwm_0|count[0][12]~q\ $ (\pwm_2|half_duty[0][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_half_duty[0][13]~q\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_0|ALT_INV_count[0][12]~q\,
	datad => \pwm_2|ALT_INV_half_duty[0][12]~q\,
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_2|ALT_INV_half_duty[0][11]~q\,
	combout => \pwm_2|Equal1~2_combout\);

-- Location: MLABCELL_X25_Y16_N51
\pwm_2|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~5_combout\ = ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( \pwm_0|count[0][0]~q\ & ( (\pwm_2|half_duty[0][1]~q\ & (!\pwm_0|count[0][19]~q\ & \pwm_2|half_duty[0][0]~q\)) ) ) ) # ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( \pwm_0|count[0][0]~q\ & ( 
-- (!\pwm_2|half_duty[0][1]~q\ & (!\pwm_0|count[0][19]~q\ & \pwm_2|half_duty[0][0]~q\)) ) ) ) # ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( !\pwm_0|count[0][0]~q\ & ( (\pwm_2|half_duty[0][1]~q\ & (!\pwm_0|count[0][19]~q\ & !\pwm_2|half_duty[0][0]~q\)) ) ) ) # ( 
-- !\pwm_0|count[0][1]~DUPLICATE_q\ & ( !\pwm_0|count[0][0]~q\ & ( (!\pwm_2|half_duty[0][1]~q\ & (!\pwm_0|count[0][19]~q\ & !\pwm_2|half_duty[0][0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000010100000000000000000000101000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_half_duty[0][1]~q\,
	datac => \pwm_0|ALT_INV_count[0][19]~q\,
	datad => \pwm_2|ALT_INV_half_duty[0][0]~q\,
	datae => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][0]~q\,
	combout => \pwm_2|Equal1~5_combout\);

-- Location: FF_X19_Y14_N7
\pwm_0|count[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_0|Add0~69_sumout\,
	clrn => \reset_pwm~input_o\,
	sclr => \pwm_0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_0|count[0][2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y16_N6
\pwm_2|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~6_combout\ = ( \pwm_0|count[0][2]~DUPLICATE_q\ & ( \pwm_2|half_duty[0][2]~q\ & ( !\pwm_2|half_duty[0][3]~q\ $ (\pwm_0|count[0][3]~q\) ) ) ) # ( !\pwm_0|count[0][2]~DUPLICATE_q\ & ( !\pwm_2|half_duty[0][2]~q\ & ( !\pwm_2|half_duty[0][3]~q\ $ 
-- (\pwm_0|count[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_2|ALT_INV_half_duty[0][3]~q\,
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	dataf => \pwm_2|ALT_INV_half_duty[0][2]~q\,
	combout => \pwm_2|Equal1~6_combout\);

-- Location: MLABCELL_X25_Y16_N18
\pwm_2|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~4_combout\ = ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( \pwm_0|count[0][7]~q\ & ( (\pwm_2|half_duty[0][6]~q\ & (\pwm_2|half_duty[0][7]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_2|half_duty[0][5]~q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][6]~DUPLICATE_q\ & ( \pwm_0|count[0][7]~q\ & ( (!\pwm_2|half_duty[0][6]~q\ & (\pwm_2|half_duty[0][7]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_2|half_duty[0][5]~q\)))) ) ) ) # ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][7]~q\ & ( (\pwm_2|half_duty[0][6]~q\ & (!\pwm_2|half_duty[0][7]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_2|half_duty[0][5]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( !\pwm_0|count[0][7]~q\ & ( (!\pwm_2|half_duty[0][6]~q\ 
-- & (!\pwm_2|half_duty[0][7]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_2|half_duty[0][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datab => \pwm_2|ALT_INV_half_duty[0][5]~q\,
	datac => \pwm_2|ALT_INV_half_duty[0][6]~q\,
	datad => \pwm_2|ALT_INV_half_duty[0][7]~q\,
	datae => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][7]~q\,
	combout => \pwm_2|Equal1~4_combout\);

-- Location: MLABCELL_X25_Y16_N36
\pwm_2|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~7_combout\ = ( \pwm_2|half_duty[0][4]~q\ & ( \pwm_2|Equal1~4_combout\ & ( (\pwm_2|Equal1~5_combout\ & (\pwm_2|Equal1~6_combout\ & \pwm_0|count[0][4]~DUPLICATE_q\)) ) ) ) # ( !\pwm_2|half_duty[0][4]~q\ & ( \pwm_2|Equal1~4_combout\ & ( 
-- (\pwm_2|Equal1~5_combout\ & (\pwm_2|Equal1~6_combout\ & !\pwm_0|count[0][4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_Equal1~5_combout\,
	datab => \pwm_2|ALT_INV_Equal1~6_combout\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datae => \pwm_2|ALT_INV_half_duty[0][4]~q\,
	dataf => \pwm_2|ALT_INV_Equal1~4_combout\,
	combout => \pwm_2|Equal1~7_combout\);

-- Location: MLABCELL_X25_Y16_N57
\pwm_2|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal1~8_combout\ = ( \pwm_2|Equal1~7_combout\ & ( (\pwm_2|Equal1~3_combout\ & (\pwm_2|Equal1~0_combout\ & (\pwm_2|Equal1~1_combout\ & \pwm_2|Equal1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_Equal1~3_combout\,
	datab => \pwm_2|ALT_INV_Equal1~0_combout\,
	datac => \pwm_2|ALT_INV_Equal1~1_combout\,
	datad => \pwm_2|ALT_INV_Equal1~2_combout\,
	datae => \pwm_2|ALT_INV_Equal1~7_combout\,
	combout => \pwm_2|Equal1~8_combout\);

-- Location: LABCELL_X22_Y16_N30
\pwm_2|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~0_combout\ = ( \pwm_2|Add1~17_sumout\ & ( \pwm_2|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_2|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_2|Add1~17_sumout\ & ( 
-- \pwm_2|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_2|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( \pwm_2|Add1~17_sumout\ & ( !\pwm_2|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][7]~q\ & (!\pwm_2|Add1~9_sumout\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_2|Add1~17_sumout\ & ( !\pwm_2|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ & (!\pwm_2|Add1~9_sumout\ $ 
-- (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][7]~q\,
	datac => \pwm_2|ALT_INV_Add1~9_sumout\,
	datad => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datae => \pwm_2|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~13_sumout\,
	combout => \pwm_2|pwm_out~0_combout\);

-- Location: LABCELL_X23_Y16_N45
\pwm_2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~21_sumout\ = SUM(( !\pwm_2|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_2|Add1~34\ ))
-- \pwm_2|Add1~22\ = CARRY(( !\pwm_2|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_2|Add1~34\,
	sumout => \pwm_2|Add1~21_sumout\,
	cout => \pwm_2|Add1~22\);

-- Location: LABCELL_X23_Y16_N48
\pwm_2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~25_sumout\ = SUM(( !\pwm_2|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_2|Add1~22\ ))
-- \pwm_2|Add1~26\ = CARRY(( !\pwm_2|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_2|Add1~22\,
	sumout => \pwm_2|Add1~25_sumout\,
	cout => \pwm_2|Add1~26\);

-- Location: LABCELL_X23_Y16_N51
\pwm_2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~1_sumout\ = SUM(( !\pwm_2|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_2|Add1~26\ ))
-- \pwm_2|Add1~2\ = CARRY(( !\pwm_2|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_2|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_2|Add1~26\,
	sumout => \pwm_2|Add1~1_sumout\,
	cout => \pwm_2|Add1~2\);

-- Location: LABCELL_X23_Y16_N54
\pwm_2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_2|Add1~2\,
	sumout => \pwm_2|Add1~5_sumout\);

-- Location: LABCELL_X22_Y16_N48
\pwm_2|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~1_combout\ = ( \pwm_2|Add1~5_sumout\ & ( \pwm_2|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_0|count[0][18]~q\ & \pwm_2|pwm_out~0_combout\)) ) ) ) # ( !\pwm_2|Add1~5_sumout\ & ( \pwm_2|Add1~1_sumout\ & ( (\pwm_0|count[0][19]~q\ & 
-- (\pwm_0|count[0][18]~q\ & \pwm_2|pwm_out~0_combout\)) ) ) ) # ( \pwm_2|Add1~5_sumout\ & ( !\pwm_2|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~q\ & \pwm_2|pwm_out~0_combout\)) ) ) ) # ( !\pwm_2|Add1~5_sumout\ & ( 
-- !\pwm_2|Add1~1_sumout\ & ( (\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~q\ & \pwm_2|pwm_out~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000001100000000000000000000110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][19]~q\,
	datac => \pwm_0|ALT_INV_count[0][18]~q\,
	datad => \pwm_2|ALT_INV_pwm_out~0_combout\,
	datae => \pwm_2|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~1_sumout\,
	combout => \pwm_2|pwm_out~1_combout\);

-- Location: LABCELL_X22_Y16_N9
\pwm_2|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~2_combout\ = ( \pwm_2|Add1~25_sumout\ & ( \pwm_2|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_2|Add1~25_sumout\ & ( \pwm_2|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) 
-- # ( \pwm_2|Add1~25_sumout\ & ( !\pwm_2|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_2|Add1~25_sumout\ & ( !\pwm_2|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][17]~q\,
	datad => \pwm_0|ALT_INV_count[0][16]~q\,
	datae => \pwm_2|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~21_sumout\,
	combout => \pwm_2|pwm_out~2_combout\);

-- Location: MLABCELL_X25_Y16_N24
\pwm_2|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~5_combout\ = ( \pwm_2|Add1~65_sumout\ & ( \pwm_2|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~DUPLICATE_q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_2|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_2|Add1~65_sumout\ & ( 
-- \pwm_2|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~DUPLICATE_q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_2|half_duty[0][0]~q\)))) ) ) ) # ( \pwm_2|Add1~65_sumout\ & ( !\pwm_2|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_2|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_2|Add1~65_sumout\ & ( !\pwm_2|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~DUPLICATE_q\ & (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][0]~q\ 
-- $ (\pwm_2|half_duty[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][0]~q\,
	datac => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datad => \pwm_2|ALT_INV_half_duty[0][0]~q\,
	datae => \pwm_2|ALT_INV_Add1~65_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~61_sumout\,
	combout => \pwm_2|pwm_out~5_combout\);

-- Location: LABCELL_X22_Y16_N57
\pwm_2|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal2~1_combout\ = ( \pwm_2|Add1~53_sumout\ & ( !\pwm_0|count[0][12]~q\ ) ) # ( !\pwm_2|Add1~53_sumout\ & ( \pwm_0|count[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_2|ALT_INV_Add1~53_sumout\,
	combout => \pwm_2|Equal2~1_combout\);

-- Location: LABCELL_X22_Y16_N27
\pwm_2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|Equal2~0_combout\ = ( \pwm_2|Add1~49_sumout\ & ( !\pwm_0|count[0][11]~q\ ) ) # ( !\pwm_2|Add1~49_sumout\ & ( \pwm_0|count[0][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_2|ALT_INV_Add1~49_sumout\,
	combout => \pwm_2|Equal2~0_combout\);

-- Location: LABCELL_X22_Y16_N12
\pwm_2|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~6_combout\ = ( \pwm_2|Add1~73_sumout\ & ( \pwm_2|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_2|Add1~73_sumout\ & ( \pwm_2|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & 
-- !\pwm_0|count[0][10]~q\) ) ) ) # ( \pwm_2|Add1~73_sumout\ & ( !\pwm_2|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~DUPLICATE_q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_2|Add1~73_sumout\ & ( !\pwm_2|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~DUPLICATE_q\ & 
-- !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_2|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_2|ALT_INV_Add1~69_sumout\,
	combout => \pwm_2|pwm_out~6_combout\);

-- Location: LABCELL_X22_Y16_N42
\pwm_2|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~7_combout\ = ( !\pwm_2|Equal2~0_combout\ & ( \pwm_2|pwm_out~6_combout\ & ( (\pwm_2|pwm_out~5_combout\ & (!\pwm_2|Equal2~1_combout\ & (!\pwm_2|Add1~57_sumout\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_pwm_out~5_combout\,
	datab => \pwm_2|ALT_INV_Add1~57_sumout\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_2|ALT_INV_Equal2~1_combout\,
	datae => \pwm_2|ALT_INV_Equal2~0_combout\,
	dataf => \pwm_2|ALT_INV_pwm_out~6_combout\,
	combout => \pwm_2|pwm_out~7_combout\);

-- Location: LABCELL_X22_Y16_N36
\pwm_2|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_2|pwm_out~8_combout\ = ( \pwm_2|pwm_out\(0) & ( \pwm_2|pwm_out~7_combout\ & ( !\pwm_2|Equal1~8_combout\ ) ) ) # ( !\pwm_2|pwm_out\(0) & ( \pwm_2|pwm_out~7_combout\ & ( (\pwm_2|pwm_out~4_combout\ & (!\pwm_2|Equal1~8_combout\ & 
-- (\pwm_2|pwm_out~1_combout\ & \pwm_2|pwm_out~2_combout\))) ) ) ) # ( \pwm_2|pwm_out\(0) & ( !\pwm_2|pwm_out~7_combout\ & ( !\pwm_2|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_2|ALT_INV_pwm_out~4_combout\,
	datab => \pwm_2|ALT_INV_Equal1~8_combout\,
	datac => \pwm_2|ALT_INV_pwm_out~1_combout\,
	datad => \pwm_2|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_2|ALT_INV_pwm_out\(0),
	dataf => \pwm_2|ALT_INV_pwm_out~7_combout\,
	combout => \pwm_2|pwm_out~8_combout\);

-- Location: FF_X22_Y16_N37
\pwm_2|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_2|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_2|pwm_out\(0));

-- Location: DSP_X16_Y17_N0
\pwm_3|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_3|Mult0~8_ACLR_bus\,
	clk => \pwm_3|Mult0~8_CLK_bus\,
	ena => \pwm_3|Mult0~8_ENA_bus\,
	ax => \pwm_3|Mult0~8_AX_bus\,
	ay => \pwm_3|Mult0~8_AY_bus\,
	resulta => \pwm_3|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X15_Y17_N24
\pwm_3|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[2]~feeder_combout\ = ( \pwm_3|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~19\,
	combout => \pwm_3|half_duty_new[2]~feeder_combout\);

-- Location: FF_X15_Y17_N26
\pwm_3|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(2));

-- Location: FF_X14_Y17_N4
\pwm_3|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][2]~q\);

-- Location: LABCELL_X15_Y17_N45
\pwm_3|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[1]~feeder_combout\ = ( \pwm_3|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~18\,
	combout => \pwm_3|half_duty_new[1]~feeder_combout\);

-- Location: FF_X15_Y17_N47
\pwm_3|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(1));

-- Location: FF_X14_Y17_N59
\pwm_3|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][1]~q\);

-- Location: FF_X15_Y17_N29
\pwm_3|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(0));

-- Location: FF_X14_Y17_N2
\pwm_3|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][0]~q\);

-- Location: MLABCELL_X14_Y17_N0
\pwm_3|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~61_sumout\ = SUM(( !\pwm_3|half_duty[0][0]~q\ ) + ( !\pwm_3|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_3|Add1~62\ = CARRY(( !\pwm_3|half_duty[0][0]~q\ ) + ( !\pwm_3|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_3|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_3|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_3|Add1~61_sumout\,
	cout => \pwm_3|Add1~62\);

-- Location: MLABCELL_X14_Y17_N3
\pwm_3|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~65_sumout\ = SUM(( !\pwm_3|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_3|Add1~62\ ))
-- \pwm_3|Add1~66\ = CARRY(( !\pwm_3|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_3|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_3|Add1~62\,
	sumout => \pwm_3|Add1~65_sumout\,
	cout => \pwm_3|Add1~66\);

-- Location: LABCELL_X13_Y17_N54
\pwm_3|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~5_combout\ = ( \pwm_0|count[0][2]~DUPLICATE_q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_3|Add1~65_sumout\ & (\pwm_3|Add1~61_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_3|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_0|count[0][2]~DUPLICATE_q\ & 
-- ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_3|Add1~65_sumout\ & (\pwm_3|Add1~61_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_3|half_duty[0][0]~q\)))) ) ) ) # ( \pwm_0|count[0][2]~DUPLICATE_q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_3|Add1~65_sumout\ 
-- & (!\pwm_3|Add1~61_sumout\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_3|half_duty[0][0]~q\)))) ) ) ) # ( !\pwm_0|count[0][2]~DUPLICATE_q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_3|Add1~65_sumout\ & (!\pwm_3|Add1~61_sumout\ & (!\pwm_0|count[0][0]~q\ $ 
-- (\pwm_3|half_duty[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_Add1~65_sumout\,
	datab => \pwm_0|ALT_INV_count[0][0]~q\,
	datac => \pwm_3|ALT_INV_Add1~61_sumout\,
	datad => \pwm_3|ALT_INV_half_duty[0][0]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_3|pwm_out~5_combout\);

-- Location: FF_X15_Y17_N41
\pwm_3|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(12));

-- Location: FF_X14_Y17_N34
\pwm_3|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][12]~q\);

-- Location: FF_X15_Y17_N44
\pwm_3|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(11));

-- Location: FF_X14_Y17_N31
\pwm_3|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][11]~q\);

-- Location: FF_X15_Y17_N38
\pwm_3|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(10));

-- Location: FF_X14_Y17_N28
\pwm_3|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][10]~q\);

-- Location: LABCELL_X15_Y17_N30
\pwm_3|half_duty_new[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[9]~feeder_combout\ = ( \pwm_3|Mult0~26\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~26\,
	combout => \pwm_3|half_duty_new[9]~feeder_combout\);

-- Location: FF_X15_Y17_N32
\pwm_3|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[9]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(9));

-- Location: FF_X14_Y17_N25
\pwm_3|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][9]~q\);

-- Location: LABCELL_X15_Y17_N6
\pwm_3|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[8]~feeder_combout\ = ( \pwm_3|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~25\,
	combout => \pwm_3|half_duty_new[8]~feeder_combout\);

-- Location: FF_X15_Y17_N8
\pwm_3|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(8));

-- Location: FF_X14_Y17_N22
\pwm_3|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][8]~q\);

-- Location: FF_X15_Y17_N56
\pwm_3|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~24\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(7));

-- Location: FF_X14_Y17_N19
\pwm_3|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][7]~q\);

-- Location: LABCELL_X15_Y17_N18
\pwm_3|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[6]~feeder_combout\ = ( \pwm_3|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~23\,
	combout => \pwm_3|half_duty_new[6]~feeder_combout\);

-- Location: FF_X15_Y17_N20
\pwm_3|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(6));

-- Location: FF_X14_Y17_N16
\pwm_3|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][6]~q\);

-- Location: LABCELL_X15_Y17_N15
\pwm_3|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[5]~feeder_combout\ = ( \pwm_3|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~22\,
	combout => \pwm_3|half_duty_new[5]~feeder_combout\);

-- Location: FF_X15_Y17_N17
\pwm_3|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(5));

-- Location: FF_X14_Y17_N13
\pwm_3|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][5]~q\);

-- Location: LABCELL_X15_Y17_N33
\pwm_3|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[4]~feeder_combout\ = ( \pwm_3|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~21\,
	combout => \pwm_3|half_duty_new[4]~feeder_combout\);

-- Location: FF_X15_Y17_N35
\pwm_3|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(4));

-- Location: FF_X14_Y17_N11
\pwm_3|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][4]~q\);

-- Location: FF_X15_Y17_N14
\pwm_3|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(3));

-- Location: FF_X14_Y17_N8
\pwm_3|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][3]~q\);

-- Location: MLABCELL_X14_Y17_N6
\pwm_3|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~37_sumout\ = SUM(( !\pwm_3|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_3|Add1~66\ ))
-- \pwm_3|Add1~38\ = CARRY(( !\pwm_3|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_3|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_3|Add1~66\,
	sumout => \pwm_3|Add1~37_sumout\,
	cout => \pwm_3|Add1~38\);

-- Location: MLABCELL_X14_Y17_N9
\pwm_3|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~41_sumout\ = SUM(( !\pwm_3|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_3|Add1~38\ ))
-- \pwm_3|Add1~42\ = CARRY(( !\pwm_3|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_3|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_3|Add1~38\,
	sumout => \pwm_3|Add1~41_sumout\,
	cout => \pwm_3|Add1~42\);

-- Location: MLABCELL_X14_Y17_N12
\pwm_3|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~45_sumout\ = SUM(( !\pwm_3|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_3|Add1~42\ ))
-- \pwm_3|Add1~46\ = CARRY(( !\pwm_3|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_3|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_3|Add1~42\,
	sumout => \pwm_3|Add1~45_sumout\,
	cout => \pwm_3|Add1~46\);

-- Location: MLABCELL_X14_Y17_N15
\pwm_3|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~9_sumout\ = SUM(( !\pwm_3|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_3|Add1~46\ ))
-- \pwm_3|Add1~10\ = CARRY(( !\pwm_3|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_3|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_3|Add1~46\,
	sumout => \pwm_3|Add1~9_sumout\,
	cout => \pwm_3|Add1~10\);

-- Location: MLABCELL_X14_Y17_N18
\pwm_3|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~13_sumout\ = SUM(( !\pwm_3|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_3|Add1~10\ ))
-- \pwm_3|Add1~14\ = CARRY(( !\pwm_3|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_3|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_3|Add1~10\,
	sumout => \pwm_3|Add1~13_sumout\,
	cout => \pwm_3|Add1~14\);

-- Location: MLABCELL_X14_Y17_N21
\pwm_3|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~17_sumout\ = SUM(( !\pwm_3|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_3|Add1~14\ ))
-- \pwm_3|Add1~18\ = CARRY(( !\pwm_3|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_3|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_3|Add1~14\,
	sumout => \pwm_3|Add1~17_sumout\,
	cout => \pwm_3|Add1~18\);

-- Location: MLABCELL_X14_Y17_N24
\pwm_3|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~69_sumout\ = SUM(( !\pwm_3|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_3|Add1~18\ ))
-- \pwm_3|Add1~70\ = CARRY(( !\pwm_3|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_3|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_3|Add1~18\,
	sumout => \pwm_3|Add1~69_sumout\,
	cout => \pwm_3|Add1~70\);

-- Location: MLABCELL_X14_Y17_N27
\pwm_3|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~73_sumout\ = SUM(( !\pwm_3|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_3|Add1~70\ ))
-- \pwm_3|Add1~74\ = CARRY(( !\pwm_3|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_3|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_3|Add1~70\,
	sumout => \pwm_3|Add1~73_sumout\,
	cout => \pwm_3|Add1~74\);

-- Location: MLABCELL_X14_Y17_N30
\pwm_3|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~49_sumout\ = SUM(( !\pwm_3|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_3|Add1~74\ ))
-- \pwm_3|Add1~50\ = CARRY(( !\pwm_3|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_3|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_3|Add1~74\,
	sumout => \pwm_3|Add1~49_sumout\,
	cout => \pwm_3|Add1~50\);

-- Location: MLABCELL_X14_Y17_N33
\pwm_3|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~53_sumout\ = SUM(( !\pwm_3|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_3|Add1~50\ ))
-- \pwm_3|Add1~54\ = CARRY(( !\pwm_3|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_3|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_3|Add1~50\,
	sumout => \pwm_3|Add1~53_sumout\,
	cout => \pwm_3|Add1~54\);

-- Location: LABCELL_X13_Y17_N39
\pwm_3|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal2~1_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_3|Add1~53_sumout\ ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_3|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_3|ALT_INV_Add1~53_sumout\,
	combout => \pwm_3|Equal2~1_combout\);

-- Location: LABCELL_X13_Y17_N30
\pwm_3|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_3|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_3|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_3|ALT_INV_Add1~49_sumout\,
	combout => \pwm_3|Equal2~0_combout\);

-- Location: LABCELL_X17_Y17_N33
\pwm_3|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[13]~feeder_combout\ = ( \pwm_3|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~30\,
	combout => \pwm_3|half_duty_new[13]~feeder_combout\);

-- Location: FF_X17_Y17_N34
\pwm_3|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(13));

-- Location: FF_X14_Y17_N37
\pwm_3|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][13]~q\);

-- Location: MLABCELL_X14_Y17_N36
\pwm_3|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~57_sumout\ = SUM(( !\pwm_3|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_3|Add1~54\ ))
-- \pwm_3|Add1~58\ = CARRY(( !\pwm_3|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_3|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_3|Add1~54\,
	sumout => \pwm_3|Add1~57_sumout\,
	cout => \pwm_3|Add1~58\);

-- Location: LABCELL_X13_Y17_N48
\pwm_3|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~6_combout\ = ( \pwm_3|Add1~73_sumout\ & ( \pwm_3|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_3|Add1~73_sumout\ & ( \pwm_3|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( \pwm_3|Add1~73_sumout\ & ( !\pwm_3|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_3|Add1~73_sumout\ & ( !\pwm_3|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][10]~q\,
	datac => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datae => \pwm_3|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_3|ALT_INV_Add1~69_sumout\,
	combout => \pwm_3|pwm_out~6_combout\);

-- Location: LABCELL_X13_Y17_N18
\pwm_3|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~7_combout\ = ( \pwm_3|Add1~57_sumout\ & ( \pwm_3|pwm_out~6_combout\ & ( (\pwm_3|pwm_out~5_combout\ & (!\pwm_3|Equal2~1_combout\ & (\pwm_0|count[0][13]~q\ & !\pwm_3|Equal2~0_combout\))) ) ) ) # ( !\pwm_3|Add1~57_sumout\ & ( 
-- \pwm_3|pwm_out~6_combout\ & ( (\pwm_3|pwm_out~5_combout\ & (!\pwm_3|Equal2~1_combout\ & (!\pwm_0|count[0][13]~q\ & !\pwm_3|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_pwm_out~5_combout\,
	datab => \pwm_3|ALT_INV_Equal2~1_combout\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_3|ALT_INV_Equal2~0_combout\,
	datae => \pwm_3|ALT_INV_Add1~57_sumout\,
	dataf => \pwm_3|ALT_INV_pwm_out~6_combout\,
	combout => \pwm_3|pwm_out~7_combout\);

-- Location: LABCELL_X15_Y17_N9
\pwm_3|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[17]~feeder_combout\ = ( \pwm_3|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~34\,
	combout => \pwm_3|half_duty_new[17]~feeder_combout\);

-- Location: FF_X15_Y17_N11
\pwm_3|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(17));

-- Location: FF_X14_Y17_N49
\pwm_3|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][17]~q\);

-- Location: FF_X15_Y17_N2
\pwm_3|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~33\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(16));

-- Location: FF_X14_Y17_N46
\pwm_3|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][16]~q\);

-- Location: LABCELL_X15_Y17_N21
\pwm_3|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[15]~feeder_combout\ = ( \pwm_3|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~32\,
	combout => \pwm_3|half_duty_new[15]~feeder_combout\);

-- Location: FF_X15_Y17_N23
\pwm_3|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(15));

-- Location: FF_X14_Y17_N43
\pwm_3|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][15]~q\);

-- Location: LABCELL_X17_Y17_N27
\pwm_3|half_duty_new[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|half_duty_new[14]~feeder_combout\ = ( \pwm_3|Mult0~31\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_3|ALT_INV_Mult0~31\,
	combout => \pwm_3|half_duty_new[14]~feeder_combout\);

-- Location: FF_X17_Y17_N28
\pwm_3|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|half_duty_new[14]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(14));

-- Location: FF_X14_Y17_N40
\pwm_3|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][14]~q\);

-- Location: MLABCELL_X14_Y17_N39
\pwm_3|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~29_sumout\ = SUM(( !\pwm_3|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_3|Add1~58\ ))
-- \pwm_3|Add1~30\ = CARRY(( !\pwm_3|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_3|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_3|Add1~58\,
	sumout => \pwm_3|Add1~29_sumout\,
	cout => \pwm_3|Add1~30\);

-- Location: MLABCELL_X14_Y17_N42
\pwm_3|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~33_sumout\ = SUM(( !\pwm_3|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_3|Add1~30\ ))
-- \pwm_3|Add1~34\ = CARRY(( !\pwm_3|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_3|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_3|Add1~30\,
	sumout => \pwm_3|Add1~33_sumout\,
	cout => \pwm_3|Add1~34\);

-- Location: MLABCELL_X14_Y17_N45
\pwm_3|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~21_sumout\ = SUM(( !\pwm_3|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_3|Add1~34\ ))
-- \pwm_3|Add1~22\ = CARRY(( !\pwm_3|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_3|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_3|Add1~34\,
	sumout => \pwm_3|Add1~21_sumout\,
	cout => \pwm_3|Add1~22\);

-- Location: MLABCELL_X14_Y17_N48
\pwm_3|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~25_sumout\ = SUM(( !\pwm_3|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_3|Add1~22\ ))
-- \pwm_3|Add1~26\ = CARRY(( !\pwm_3|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_3|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_3|Add1~22\,
	sumout => \pwm_3|Add1~25_sumout\,
	cout => \pwm_3|Add1~26\);

-- Location: LABCELL_X13_Y17_N9
\pwm_3|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~2_combout\ = ( \pwm_3|Add1~25_sumout\ & ( \pwm_3|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~q\) ) ) ) # ( !\pwm_3|Add1~25_sumout\ & ( \pwm_3|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & !\pwm_0|count[0][17]~q\) ) ) ) 
-- # ( \pwm_3|Add1~25_sumout\ & ( !\pwm_3|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~q\) ) ) ) # ( !\pwm_3|Add1~25_sumout\ & ( !\pwm_3|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & !\pwm_0|count[0][17]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][17]~q\,
	datae => \pwm_3|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_3|ALT_INV_Add1~21_sumout\,
	combout => \pwm_3|pwm_out~2_combout\);

-- Location: LABCELL_X15_Y17_N3
\pwm_3|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~3_combout\ = ( \pwm_3|Add1~37_sumout\ & ( \pwm_3|Add1~45_sumout\ & ( (\pwm_0|count[0][5]~q\ & (\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_3|Add1~41_sumout\)))) ) ) ) # ( !\pwm_3|Add1~37_sumout\ & ( 
-- \pwm_3|Add1~45_sumout\ & ( (\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_3|Add1~41_sumout\)))) ) ) ) # ( \pwm_3|Add1~37_sumout\ & ( !\pwm_3|Add1~45_sumout\ & ( (!\pwm_0|count[0][5]~q\ & (\pwm_0|count[0][3]~q\ 
-- & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_3|Add1~41_sumout\)))) ) ) ) # ( !\pwm_3|Add1~37_sumout\ & ( !\pwm_3|Add1~45_sumout\ & ( (!\pwm_0|count[0][5]~q\ & (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_3|Add1~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][5]~q\,
	datac => \pwm_3|ALT_INV_Add1~41_sumout\,
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	datae => \pwm_3|ALT_INV_Add1~37_sumout\,
	dataf => \pwm_3|ALT_INV_Add1~45_sumout\,
	combout => \pwm_3|pwm_out~3_combout\);

-- Location: LABCELL_X13_Y17_N0
\pwm_3|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~4_combout\ = ( \pwm_3|Add1~33_sumout\ & ( \pwm_3|pwm_out~3_combout\ & ( (\pwm_0|count[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ (\pwm_3|Add1~29_sumout\))) ) ) ) # ( !\pwm_3|Add1~33_sumout\ & ( \pwm_3|pwm_out~3_combout\ & ( 
-- (!\pwm_0|count[0][15]~q\ & (!\pwm_0|count[0][14]~q\ $ (\pwm_3|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100100001000010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][14]~q\,
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_3|ALT_INV_Add1~29_sumout\,
	datae => \pwm_3|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_3|ALT_INV_pwm_out~3_combout\,
	combout => \pwm_3|pwm_out~4_combout\);

-- Location: LABCELL_X17_Y17_N18
\pwm_3|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~1_combout\ = ( \pwm_0|count[0][16]~q\ & ( \pwm_0|count[0][14]~q\ & ( (\pwm_3|half_duty[0][16]~q\ & (\pwm_3|half_duty[0][14]~q\ & (!\pwm_3|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_0|count[0][16]~q\ & ( 
-- \pwm_0|count[0][14]~q\ & ( (!\pwm_3|half_duty[0][16]~q\ & (\pwm_3|half_duty[0][14]~q\ & (!\pwm_3|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( \pwm_0|count[0][16]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (\pwm_3|half_duty[0][16]~q\ & 
-- (!\pwm_3|half_duty[0][14]~q\ & (!\pwm_3|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_0|count[0][16]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_3|half_duty[0][16]~q\ & (!\pwm_3|half_duty[0][14]~q\ & (!\pwm_3|half_duty[0][15]~q\ $ 
-- (\pwm_0|count[0][15]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_half_duty[0][15]~q\,
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_3|ALT_INV_half_duty[0][16]~q\,
	datad => \pwm_3|ALT_INV_half_duty[0][14]~q\,
	datae => \pwm_0|ALT_INV_count[0][16]~q\,
	dataf => \pwm_0|ALT_INV_count[0][14]~q\,
	combout => \pwm_3|Equal1~1_combout\);

-- Location: LABCELL_X15_Y17_N48
\pwm_3|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~3_combout\ = ( \pwm_0|count[0][9]~DUPLICATE_q\ & ( \pwm_0|count[0][10]~q\ & ( (\pwm_3|half_duty[0][10]~q\ & (\pwm_3|half_duty[0][9]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ $ (\pwm_3|half_duty[0][8]~q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][9]~DUPLICATE_q\ & ( \pwm_0|count[0][10]~q\ & ( (\pwm_3|half_duty[0][10]~q\ & (!\pwm_3|half_duty[0][9]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ $ (\pwm_3|half_duty[0][8]~q\)))) ) ) ) # ( \pwm_0|count[0][9]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][10]~q\ & ( (!\pwm_3|half_duty[0][10]~q\ & (\pwm_3|half_duty[0][9]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ $ (\pwm_3|half_duty[0][8]~q\)))) ) ) ) # ( !\pwm_0|count[0][9]~DUPLICATE_q\ & ( !\pwm_0|count[0][10]~q\ & ( 
-- (!\pwm_3|half_duty[0][10]~q\ & (!\pwm_3|half_duty[0][9]~q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ $ (\pwm_3|half_duty[0][8]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_half_duty[0][10]~q\,
	datab => \pwm_3|ALT_INV_half_duty[0][9]~q\,
	datac => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datad => \pwm_3|ALT_INV_half_duty[0][8]~q\,
	datae => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][10]~q\,
	combout => \pwm_3|Equal1~3_combout\);

-- Location: LABCELL_X17_Y17_N36
\pwm_3|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~2_combout\ = ( \pwm_3|half_duty[0][11]~q\ & ( \pwm_0|count[0][13]~q\ & ( (\pwm_3|half_duty[0][13]~q\ & (\pwm_0|count[0][11]~q\ & (!\pwm_3|half_duty[0][12]~q\ $ (\pwm_0|count[0][12]~q\)))) ) ) ) # ( !\pwm_3|half_duty[0][11]~q\ & ( 
-- \pwm_0|count[0][13]~q\ & ( (\pwm_3|half_duty[0][13]~q\ & (!\pwm_0|count[0][11]~q\ & (!\pwm_3|half_duty[0][12]~q\ $ (\pwm_0|count[0][12]~q\)))) ) ) ) # ( \pwm_3|half_duty[0][11]~q\ & ( !\pwm_0|count[0][13]~q\ & ( (!\pwm_3|half_duty[0][13]~q\ & 
-- (\pwm_0|count[0][11]~q\ & (!\pwm_3|half_duty[0][12]~q\ $ (\pwm_0|count[0][12]~q\)))) ) ) ) # ( !\pwm_3|half_duty[0][11]~q\ & ( !\pwm_0|count[0][13]~q\ & ( (!\pwm_3|half_duty[0][13]~q\ & (!\pwm_0|count[0][11]~q\ & (!\pwm_3|half_duty[0][12]~q\ $ 
-- (\pwm_0|count[0][12]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_half_duty[0][12]~q\,
	datab => \pwm_3|ALT_INV_half_duty[0][13]~q\,
	datac => \pwm_0|ALT_INV_count[0][11]~q\,
	datad => \pwm_0|ALT_INV_count[0][12]~q\,
	datae => \pwm_3|ALT_INV_half_duty[0][11]~q\,
	dataf => \pwm_0|ALT_INV_count[0][13]~q\,
	combout => \pwm_3|Equal1~2_combout\);

-- Location: FF_X15_Y17_N53
\pwm_3|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|Mult0~35\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty_new\(18));

-- Location: FF_X14_Y17_N52
\pwm_3|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_3|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|half_duty[0][18]~q\);

-- Location: LABCELL_X17_Y17_N0
\pwm_3|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~0_combout\ = ( \pwm_0|count[0][17]~q\ & ( \pwm_3|half_duty[0][17]~q\ & ( !\pwm_0|count[0][18]~q\ $ (\pwm_3|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~q\ & ( !\pwm_3|half_duty[0][17]~q\ & ( !\pwm_0|count[0][18]~q\ $ 
-- (\pwm_3|half_duty[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][18]~q\,
	datad => \pwm_3|ALT_INV_half_duty[0][18]~q\,
	datae => \pwm_0|ALT_INV_count[0][17]~q\,
	dataf => \pwm_3|ALT_INV_half_duty[0][17]~q\,
	combout => \pwm_3|Equal1~0_combout\);

-- Location: LABCELL_X17_Y17_N6
\pwm_3|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~5_combout\ = ( \pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_3|half_duty[0][0]~q\ & \pwm_3|half_duty[0][1]~q\)) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( 
-- (!\pwm_0|count[0][19]~q\ & (!\pwm_3|half_duty[0][0]~q\ & \pwm_3|half_duty[0][1]~q\)) ) ) ) # ( \pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_3|half_duty[0][0]~q\ & !\pwm_3|half_duty[0][1]~q\)) ) ) ) # ( 
-- !\pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_3|half_duty[0][0]~q\ & !\pwm_3|half_duty[0][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000011000000000000000000110000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][19]~q\,
	datac => \pwm_3|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_3|ALT_INV_half_duty[0][1]~q\,
	datae => \pwm_0|ALT_INV_count[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_3|Equal1~5_combout\);

-- Location: LABCELL_X17_Y17_N15
\pwm_3|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~6_combout\ = ( \pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (\pwm_3|half_duty[0][2]~q\ & \pwm_3|half_duty[0][3]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (!\pwm_3|half_duty[0][2]~q\ & 
-- \pwm_3|half_duty[0][3]~q\) ) ) ) # ( \pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (\pwm_3|half_duty[0][2]~q\ & !\pwm_3|half_duty[0][3]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (!\pwm_3|half_duty[0][2]~q\ & 
-- !\pwm_3|half_duty[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_half_duty[0][2]~q\,
	datad => \pwm_3|ALT_INV_half_duty[0][3]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~q\,
	dataf => \pwm_0|ALT_INV_count[0][3]~q\,
	combout => \pwm_3|Equal1~6_combout\);

-- Location: LABCELL_X15_Y17_N57
\pwm_3|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~4_combout\ = ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( \pwm_0|count[0][7]~q\ & ( (\pwm_3|half_duty[0][7]~q\ & (\pwm_3|half_duty[0][6]~q\ & (!\pwm_3|half_duty[0][5]~q\ $ (\pwm_0|count[0][5]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( 
-- \pwm_0|count[0][7]~q\ & ( (\pwm_3|half_duty[0][7]~q\ & (!\pwm_3|half_duty[0][6]~q\ & (!\pwm_3|half_duty[0][5]~q\ $ (\pwm_0|count[0][5]~q\)))) ) ) ) # ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( !\pwm_0|count[0][7]~q\ & ( (!\pwm_3|half_duty[0][7]~q\ & 
-- (\pwm_3|half_duty[0][6]~q\ & (!\pwm_3|half_duty[0][5]~q\ $ (\pwm_0|count[0][5]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( !\pwm_0|count[0][7]~q\ & ( (!\pwm_3|half_duty[0][7]~q\ & (!\pwm_3|half_duty[0][6]~q\ & (!\pwm_3|half_duty[0][5]~q\ $ 
-- (\pwm_0|count[0][5]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_half_duty[0][7]~q\,
	datab => \pwm_3|ALT_INV_half_duty[0][5]~q\,
	datac => \pwm_3|ALT_INV_half_duty[0][6]~q\,
	datad => \pwm_0|ALT_INV_count[0][5]~q\,
	datae => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][7]~q\,
	combout => \pwm_3|Equal1~4_combout\);

-- Location: LABCELL_X17_Y17_N42
\pwm_3|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~7_combout\ = ( \pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_3|Equal1~4_combout\ & ( (\pwm_3|Equal1~5_combout\ & (\pwm_3|half_duty[0][4]~q\ & \pwm_3|Equal1~6_combout\)) ) ) ) # ( !\pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_3|Equal1~4_combout\ & ( 
-- (\pwm_3|Equal1~5_combout\ & (!\pwm_3|half_duty[0][4]~q\ & \pwm_3|Equal1~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_3|ALT_INV_Equal1~5_combout\,
	datac => \pwm_3|ALT_INV_half_duty[0][4]~q\,
	datad => \pwm_3|ALT_INV_Equal1~6_combout\,
	datae => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	dataf => \pwm_3|ALT_INV_Equal1~4_combout\,
	combout => \pwm_3|Equal1~7_combout\);

-- Location: LABCELL_X17_Y17_N48
\pwm_3|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Equal1~8_combout\ = ( \pwm_3|Equal1~0_combout\ & ( \pwm_3|Equal1~7_combout\ & ( (\pwm_3|Equal1~1_combout\ & (\pwm_3|Equal1~3_combout\ & \pwm_3|Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_Equal1~1_combout\,
	datab => \pwm_3|ALT_INV_Equal1~3_combout\,
	datac => \pwm_3|ALT_INV_Equal1~2_combout\,
	datae => \pwm_3|ALT_INV_Equal1~0_combout\,
	dataf => \pwm_3|ALT_INV_Equal1~7_combout\,
	combout => \pwm_3|Equal1~8_combout\);

-- Location: LABCELL_X13_Y17_N42
\pwm_3|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~0_combout\ = ( \pwm_3|Add1~9_sumout\ & ( \pwm_3|Add1~17_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_3|Add1~13_sumout\)))) ) ) ) # ( !\pwm_3|Add1~9_sumout\ & ( 
-- \pwm_3|Add1~17_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_3|Add1~13_sumout\)))) ) ) ) # ( \pwm_3|Add1~9_sumout\ & ( !\pwm_3|Add1~17_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & 
-- (\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ $ (\pwm_3|Add1~13_sumout\)))) ) ) ) # ( !\pwm_3|Add1~9_sumout\ & ( !\pwm_3|Add1~17_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ $ 
-- (\pwm_3|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~q\,
	datab => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datad => \pwm_3|ALT_INV_Add1~13_sumout\,
	datae => \pwm_3|ALT_INV_Add1~9_sumout\,
	dataf => \pwm_3|ALT_INV_Add1~17_sumout\,
	combout => \pwm_3|pwm_out~0_combout\);

-- Location: MLABCELL_X14_Y17_N51
\pwm_3|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~1_sumout\ = SUM(( !\pwm_3|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_3|Add1~26\ ))
-- \pwm_3|Add1~2\ = CARRY(( !\pwm_3|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_3|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_3|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_3|Add1~26\,
	sumout => \pwm_3|Add1~1_sumout\,
	cout => \pwm_3|Add1~2\);

-- Location: MLABCELL_X14_Y17_N54
\pwm_3|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_3|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_3|Add1~2\,
	sumout => \pwm_3|Add1~5_sumout\);

-- Location: LABCELL_X13_Y17_N24
\pwm_3|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~1_combout\ = ( \pwm_3|Add1~5_sumout\ & ( \pwm_3|Add1~1_sumout\ & ( (\pwm_3|pwm_out~0_combout\ & (!\pwm_0|count[0][19]~q\ & \pwm_0|count[0][18]~q\)) ) ) ) # ( !\pwm_3|Add1~5_sumout\ & ( \pwm_3|Add1~1_sumout\ & ( (\pwm_3|pwm_out~0_combout\ & 
-- (\pwm_0|count[0][19]~q\ & \pwm_0|count[0][18]~q\)) ) ) ) # ( \pwm_3|Add1~5_sumout\ & ( !\pwm_3|Add1~1_sumout\ & ( (\pwm_3|pwm_out~0_combout\ & (!\pwm_0|count[0][19]~q\ & !\pwm_0|count[0][18]~q\)) ) ) ) # ( !\pwm_3|Add1~5_sumout\ & ( !\pwm_3|Add1~1_sumout\ 
-- & ( (\pwm_3|pwm_out~0_combout\ & (\pwm_0|count[0][19]~q\ & !\pwm_0|count[0][18]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000001100000000000000000000000000110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_3|ALT_INV_pwm_out~0_combout\,
	datac => \pwm_0|ALT_INV_count[0][19]~q\,
	datad => \pwm_0|ALT_INV_count[0][18]~q\,
	datae => \pwm_3|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_3|ALT_INV_Add1~1_sumout\,
	combout => \pwm_3|pwm_out~1_combout\);

-- Location: LABCELL_X13_Y17_N12
\pwm_3|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_3|pwm_out~8_combout\ = ( \pwm_3|pwm_out\(0) & ( \pwm_3|pwm_out~1_combout\ & ( !\pwm_3|Equal1~8_combout\ ) ) ) # ( !\pwm_3|pwm_out\(0) & ( \pwm_3|pwm_out~1_combout\ & ( (\pwm_3|pwm_out~7_combout\ & (\pwm_3|pwm_out~2_combout\ & 
-- (\pwm_3|pwm_out~4_combout\ & !\pwm_3|Equal1~8_combout\))) ) ) ) # ( \pwm_3|pwm_out\(0) & ( !\pwm_3|pwm_out~1_combout\ & ( !\pwm_3|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000001000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_3|ALT_INV_pwm_out~7_combout\,
	datab => \pwm_3|ALT_INV_pwm_out~2_combout\,
	datac => \pwm_3|ALT_INV_pwm_out~4_combout\,
	datad => \pwm_3|ALT_INV_Equal1~8_combout\,
	datae => \pwm_3|ALT_INV_pwm_out\(0),
	dataf => \pwm_3|ALT_INV_pwm_out~1_combout\,
	combout => \pwm_3|pwm_out~8_combout\);

-- Location: FF_X13_Y17_N14
\pwm_3|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_3|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_3|pwm_out\(0));

-- Location: DSP_X24_Y11_N0
\pwm_4|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_4|Mult0~8_ACLR_bus\,
	clk => \pwm_4|Mult0~8_CLK_bus\,
	ena => \pwm_4|Mult0~8_ENA_bus\,
	ax => \pwm_4|Mult0~8_AX_bus\,
	ay => \pwm_4|Mult0~8_AY_bus\,
	resulta => \pwm_4|Mult0~8_RESULTA_bus\);

-- Location: FF_X23_Y11_N29
\pwm_4|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~21\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(4));

-- Location: FF_X22_Y13_N10
\pwm_4|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][4]~q\);

-- Location: LABCELL_X23_Y11_N51
\pwm_4|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[3]~feeder_combout\ = ( \pwm_4|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~20\,
	combout => \pwm_4|half_duty_new[3]~feeder_combout\);

-- Location: FF_X23_Y11_N52
\pwm_4|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(3));

-- Location: FF_X22_Y13_N7
\pwm_4|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][3]~q\);

-- Location: FF_X23_Y11_N35
\pwm_4|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~19\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(2));

-- Location: FF_X22_Y13_N5
\pwm_4|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][2]~q\);

-- Location: LABCELL_X23_Y11_N12
\pwm_4|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[1]~feeder_combout\ = ( \pwm_4|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~18\,
	combout => \pwm_4|half_duty_new[1]~feeder_combout\);

-- Location: FF_X23_Y11_N13
\pwm_4|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(1));

-- Location: LABCELL_X23_Y13_N6
\pwm_4|half_duty[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty[0][1]~feeder_combout\ = ( \pwm_4|half_duty_new\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_half_duty_new\(1),
	combout => \pwm_4|half_duty[0][1]~feeder_combout\);

-- Location: FF_X23_Y13_N8
\pwm_4|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty[0][1]~feeder_combout\,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][1]~q\);

-- Location: FF_X23_Y11_N37
\pwm_4|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(0));

-- Location: FF_X22_Y13_N2
\pwm_4|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][0]~q\);

-- Location: LABCELL_X22_Y13_N0
\pwm_4|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~61_sumout\ = SUM(( !\pwm_4|half_duty[0][0]~q\ ) + ( !\pwm_4|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_4|Add1~62\ = CARRY(( !\pwm_4|half_duty[0][0]~q\ ) + ( !\pwm_4|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_4|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_4|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_4|Add1~61_sumout\,
	cout => \pwm_4|Add1~62\);

-- Location: LABCELL_X22_Y13_N3
\pwm_4|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~65_sumout\ = SUM(( !\pwm_4|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_4|Add1~62\ ))
-- \pwm_4|Add1~66\ = CARRY(( !\pwm_4|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_4|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_4|Add1~62\,
	sumout => \pwm_4|Add1~65_sumout\,
	cout => \pwm_4|Add1~66\);

-- Location: LABCELL_X22_Y13_N6
\pwm_4|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~37_sumout\ = SUM(( !\pwm_4|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_4|Add1~66\ ))
-- \pwm_4|Add1~38\ = CARRY(( !\pwm_4|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_4|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_4|Add1~66\,
	sumout => \pwm_4|Add1~37_sumout\,
	cout => \pwm_4|Add1~38\);

-- Location: LABCELL_X22_Y13_N9
\pwm_4|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~41_sumout\ = SUM(( !\pwm_4|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_4|Add1~38\ ))
-- \pwm_4|Add1~42\ = CARRY(( !\pwm_4|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_4|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_4|Add1~38\,
	sumout => \pwm_4|Add1~41_sumout\,
	cout => \pwm_4|Add1~42\);

-- Location: LABCELL_X23_Y11_N48
\pwm_4|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[5]~feeder_combout\ = ( \pwm_4|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~22\,
	combout => \pwm_4|half_duty_new[5]~feeder_combout\);

-- Location: FF_X23_Y11_N49
\pwm_4|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(5));

-- Location: FF_X22_Y13_N13
\pwm_4|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][5]~q\);

-- Location: LABCELL_X22_Y13_N12
\pwm_4|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~45_sumout\ = SUM(( !\pwm_4|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_4|Add1~42\ ))
-- \pwm_4|Add1~46\ = CARRY(( !\pwm_4|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_4|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_4|Add1~42\,
	sumout => \pwm_4|Add1~45_sumout\,
	cout => \pwm_4|Add1~46\);

-- Location: LABCELL_X21_Y13_N48
\pwm_4|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~3_combout\ = ( \pwm_4|Add1~37_sumout\ & ( \pwm_4|Add1~45_sumout\ & ( (\pwm_0|count[0][3]~q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_4|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_4|Add1~37_sumout\ & ( 
-- \pwm_4|Add1~45_sumout\ & ( (!\pwm_0|count[0][3]~q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_4|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( \pwm_4|Add1~37_sumout\ & ( !\pwm_4|Add1~45_sumout\ & ( (\pwm_0|count[0][3]~q\ & 
-- (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_4|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_4|Add1~37_sumout\ & ( !\pwm_4|Add1~45_sumout\ & ( (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_4|Add1~41_sumout\ $ 
-- (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_Add1~41_sumout\,
	datab => \pwm_0|ALT_INV_count[0][3]~q\,
	datac => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datae => \pwm_4|ALT_INV_Add1~37_sumout\,
	dataf => \pwm_4|ALT_INV_Add1~45_sumout\,
	combout => \pwm_4|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y11_N39
\pwm_4|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[15]~feeder_combout\ = ( \pwm_4|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~32\,
	combout => \pwm_4|half_duty_new[15]~feeder_combout\);

-- Location: FF_X23_Y11_N40
\pwm_4|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(15));

-- Location: FF_X22_Y13_N43
\pwm_4|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][15]~q\);

-- Location: FF_X23_Y11_N1
\pwm_4|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(14));

-- Location: FF_X22_Y13_N40
\pwm_4|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][14]~q\);

-- Location: LABCELL_X23_Y11_N9
\pwm_4|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[13]~feeder_combout\ = ( \pwm_4|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~30\,
	combout => \pwm_4|half_duty_new[13]~feeder_combout\);

-- Location: FF_X23_Y11_N11
\pwm_4|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(13));

-- Location: FF_X22_Y13_N37
\pwm_4|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][13]~q\);

-- Location: FF_X23_Y11_N16
\pwm_4|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(12));

-- Location: FF_X22_Y13_N34
\pwm_4|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][12]~q\);

-- Location: MLABCELL_X25_Y11_N36
\pwm_4|half_duty_new[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[11]~feeder_combout\ = ( \pwm_4|Mult0~28\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~28\,
	combout => \pwm_4|half_duty_new[11]~feeder_combout\);

-- Location: FF_X25_Y11_N37
\pwm_4|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[11]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(11));

-- Location: FF_X22_Y13_N31
\pwm_4|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][11]~q\);

-- Location: FF_X23_Y11_N31
\pwm_4|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(10));

-- Location: FF_X22_Y13_N28
\pwm_4|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][10]~q\);

-- Location: FF_X23_Y11_N26
\pwm_4|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(9));

-- Location: FF_X22_Y13_N25
\pwm_4|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][9]~q\);

-- Location: LABCELL_X23_Y11_N6
\pwm_4|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[8]~feeder_combout\ = ( \pwm_4|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~25\,
	combout => \pwm_4|half_duty_new[8]~feeder_combout\);

-- Location: FF_X23_Y11_N7
\pwm_4|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(8));

-- Location: FF_X22_Y13_N22
\pwm_4|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][8]~q\);

-- Location: LABCELL_X23_Y11_N57
\pwm_4|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[7]~feeder_combout\ = ( \pwm_4|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~24\,
	combout => \pwm_4|half_duty_new[7]~feeder_combout\);

-- Location: FF_X23_Y11_N58
\pwm_4|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(7));

-- Location: FF_X22_Y13_N19
\pwm_4|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][7]~q\);

-- Location: FF_X23_Y11_N43
\pwm_4|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|Mult0~23\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(6));

-- Location: FF_X22_Y13_N16
\pwm_4|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][6]~q\);

-- Location: LABCELL_X22_Y13_N15
\pwm_4|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~9_sumout\ = SUM(( !\pwm_4|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_4|Add1~46\ ))
-- \pwm_4|Add1~10\ = CARRY(( !\pwm_4|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_4|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_4|Add1~46\,
	sumout => \pwm_4|Add1~9_sumout\,
	cout => \pwm_4|Add1~10\);

-- Location: LABCELL_X22_Y13_N18
\pwm_4|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~13_sumout\ = SUM(( !\pwm_4|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_4|Add1~10\ ))
-- \pwm_4|Add1~14\ = CARRY(( !\pwm_4|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_4|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_4|Add1~10\,
	sumout => \pwm_4|Add1~13_sumout\,
	cout => \pwm_4|Add1~14\);

-- Location: LABCELL_X22_Y13_N21
\pwm_4|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~17_sumout\ = SUM(( !\pwm_4|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_4|Add1~14\ ))
-- \pwm_4|Add1~18\ = CARRY(( !\pwm_4|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_4|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_4|Add1~14\,
	sumout => \pwm_4|Add1~17_sumout\,
	cout => \pwm_4|Add1~18\);

-- Location: LABCELL_X22_Y13_N24
\pwm_4|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~69_sumout\ = SUM(( !\pwm_4|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_4|Add1~18\ ))
-- \pwm_4|Add1~70\ = CARRY(( !\pwm_4|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_4|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_4|Add1~18\,
	sumout => \pwm_4|Add1~69_sumout\,
	cout => \pwm_4|Add1~70\);

-- Location: LABCELL_X22_Y13_N27
\pwm_4|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~73_sumout\ = SUM(( !\pwm_4|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_4|Add1~70\ ))
-- \pwm_4|Add1~74\ = CARRY(( !\pwm_4|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_4|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_4|Add1~70\,
	sumout => \pwm_4|Add1~73_sumout\,
	cout => \pwm_4|Add1~74\);

-- Location: LABCELL_X22_Y13_N30
\pwm_4|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~49_sumout\ = SUM(( !\pwm_4|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_4|Add1~74\ ))
-- \pwm_4|Add1~50\ = CARRY(( !\pwm_4|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_4|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_4|Add1~74\,
	sumout => \pwm_4|Add1~49_sumout\,
	cout => \pwm_4|Add1~50\);

-- Location: LABCELL_X22_Y13_N33
\pwm_4|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~53_sumout\ = SUM(( !\pwm_4|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_4|Add1~50\ ))
-- \pwm_4|Add1~54\ = CARRY(( !\pwm_4|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_4|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_4|Add1~50\,
	sumout => \pwm_4|Add1~53_sumout\,
	cout => \pwm_4|Add1~54\);

-- Location: LABCELL_X22_Y13_N36
\pwm_4|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~57_sumout\ = SUM(( !\pwm_4|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_4|Add1~54\ ))
-- \pwm_4|Add1~58\ = CARRY(( !\pwm_4|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_4|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_4|Add1~54\,
	sumout => \pwm_4|Add1~57_sumout\,
	cout => \pwm_4|Add1~58\);

-- Location: LABCELL_X22_Y13_N39
\pwm_4|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~29_sumout\ = SUM(( !\pwm_4|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_4|Add1~58\ ))
-- \pwm_4|Add1~30\ = CARRY(( !\pwm_4|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_4|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_4|Add1~58\,
	sumout => \pwm_4|Add1~29_sumout\,
	cout => \pwm_4|Add1~30\);

-- Location: LABCELL_X22_Y13_N42
\pwm_4|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~33_sumout\ = SUM(( !\pwm_4|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_4|Add1~30\ ))
-- \pwm_4|Add1~34\ = CARRY(( !\pwm_4|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_4|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_4|Add1~30\,
	sumout => \pwm_4|Add1~33_sumout\,
	cout => \pwm_4|Add1~34\);

-- Location: LABCELL_X21_Y13_N54
\pwm_4|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~4_combout\ = ( \pwm_4|Add1~33_sumout\ & ( \pwm_4|Add1~29_sumout\ & ( (\pwm_4|pwm_out~3_combout\ & (\pwm_0|count[0][15]~q\ & \pwm_0|count[0][14]~q\)) ) ) ) # ( !\pwm_4|Add1~33_sumout\ & ( \pwm_4|Add1~29_sumout\ & ( (\pwm_4|pwm_out~3_combout\ 
-- & (!\pwm_0|count[0][15]~q\ & \pwm_0|count[0][14]~q\)) ) ) ) # ( \pwm_4|Add1~33_sumout\ & ( !\pwm_4|Add1~29_sumout\ & ( (\pwm_4|pwm_out~3_combout\ & (\pwm_0|count[0][15]~q\ & !\pwm_0|count[0][14]~q\)) ) ) ) # ( !\pwm_4|Add1~33_sumout\ & ( 
-- !\pwm_4|Add1~29_sumout\ & ( (\pwm_4|pwm_out~3_combout\ & (!\pwm_0|count[0][15]~q\ & !\pwm_0|count[0][14]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000100000001000000000100000001000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_pwm_out~3_combout\,
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datae => \pwm_4|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_4|ALT_INV_Add1~29_sumout\,
	combout => \pwm_4|pwm_out~4_combout\);

-- Location: LABCELL_X23_Y13_N12
\pwm_4|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~2_combout\ = ( \pwm_4|half_duty[0][12]~q\ & ( \pwm_0|count[0][11]~q\ & ( (\pwm_4|half_duty[0][11]~q\ & (\pwm_0|count[0][12]~q\ & (!\pwm_4|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_4|half_duty[0][12]~q\ & ( 
-- \pwm_0|count[0][11]~q\ & ( (\pwm_4|half_duty[0][11]~q\ & (!\pwm_0|count[0][12]~q\ & (!\pwm_4|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( \pwm_4|half_duty[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (!\pwm_4|half_duty[0][11]~q\ & 
-- (\pwm_0|count[0][12]~q\ & (!\pwm_4|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_4|half_duty[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (!\pwm_4|half_duty[0][11]~q\ & (!\pwm_0|count[0][12]~q\ & (!\pwm_4|half_duty[0][13]~q\ $ 
-- (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_half_duty[0][13]~q\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_4|ALT_INV_half_duty[0][11]~q\,
	datad => \pwm_0|ALT_INV_count[0][12]~q\,
	datae => \pwm_4|ALT_INV_half_duty[0][12]~q\,
	dataf => \pwm_0|ALT_INV_count[0][11]~q\,
	combout => \pwm_4|Equal1~2_combout\);

-- Location: LABCELL_X23_Y13_N39
\pwm_4|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~6_combout\ = ( \pwm_4|half_duty[0][3]~q\ & ( (\pwm_0|count[0][3]~q\ & (!\pwm_4|half_duty[0][2]~q\ $ (\pwm_0|count[0][2]~DUPLICATE_q\))) ) ) # ( !\pwm_4|half_duty[0][3]~q\ & ( (!\pwm_0|count[0][3]~q\ & (!\pwm_4|half_duty[0][2]~q\ $ 
-- (\pwm_0|count[0][2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010010000010100000110000010100000100100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][3]~q\,
	datab => \pwm_4|ALT_INV_half_duty[0][2]~q\,
	datac => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datae => \pwm_4|ALT_INV_half_duty[0][3]~q\,
	combout => \pwm_4|Equal1~6_combout\);

-- Location: LABCELL_X23_Y13_N0
\pwm_4|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~5_combout\ = ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_4|half_duty[0][1]~q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_4|half_duty[0][0]~q\)))) ) ) # ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_0|count[0][19]~q\ & 
-- (!\pwm_4|half_duty[0][1]~q\ & (!\pwm_0|count[0][0]~q\ $ (\pwm_4|half_duty[0][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001000000000000000000100001000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][0]~q\,
	datab => \pwm_0|ALT_INV_count[0][19]~q\,
	datac => \pwm_4|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_4|ALT_INV_half_duty[0][1]~q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_4|Equal1~5_combout\);

-- Location: LABCELL_X22_Y11_N18
\pwm_4|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~4_combout\ = ( \pwm_4|half_duty[0][6]~q\ & ( \pwm_4|half_duty[0][5]~q\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\pwm_4|half_duty[0][6]~q\ & ( \pwm_4|half_duty[0][5]~q\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~DUPLICATE_q\)))) ) ) ) # ( \pwm_4|half_duty[0][6]~q\ & ( 
-- !\pwm_4|half_duty[0][5]~q\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_4|half_duty[0][6]~q\ & ( !\pwm_4|half_duty[0][5]~q\ & ( 
-- (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_half_duty[0][7]~q\,
	datab => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datae => \pwm_4|ALT_INV_half_duty[0][6]~q\,
	dataf => \pwm_4|ALT_INV_half_duty[0][5]~q\,
	combout => \pwm_4|Equal1~4_combout\);

-- Location: LABCELL_X23_Y13_N24
\pwm_4|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~7_combout\ = ( \pwm_4|Equal1~5_combout\ & ( \pwm_4|Equal1~4_combout\ & ( (\pwm_4|Equal1~6_combout\ & (!\pwm_4|half_duty[0][4]~q\ $ (\pwm_0|count[0][4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_4|ALT_INV_half_duty[0][4]~q\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datad => \pwm_4|ALT_INV_Equal1~6_combout\,
	datae => \pwm_4|ALT_INV_Equal1~5_combout\,
	dataf => \pwm_4|ALT_INV_Equal1~4_combout\,
	combout => \pwm_4|Equal1~7_combout\);

-- Location: LABCELL_X23_Y11_N45
\pwm_4|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[16]~feeder_combout\ = ( \pwm_4|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~33\,
	combout => \pwm_4|half_duty_new[16]~feeder_combout\);

-- Location: FF_X23_Y11_N47
\pwm_4|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(16));

-- Location: FF_X22_Y13_N46
\pwm_4|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][16]~q\);

-- Location: LABCELL_X23_Y13_N42
\pwm_4|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~1_combout\ = ( \pwm_0|count[0][15]~q\ & ( \pwm_4|half_duty[0][16]~q\ & ( (\pwm_4|half_duty[0][15]~q\ & (\pwm_0|count[0][16]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][14]~q\ $ (\pwm_0|count[0][14]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( 
-- \pwm_4|half_duty[0][16]~q\ & ( (!\pwm_4|half_duty[0][15]~q\ & (\pwm_0|count[0][16]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][14]~q\ $ (\pwm_0|count[0][14]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~q\ & ( !\pwm_4|half_duty[0][16]~q\ & ( (\pwm_4|half_duty[0][15]~q\ & 
-- (!\pwm_0|count[0][16]~DUPLICATE_q\ & (!\pwm_4|half_duty[0][14]~q\ $ (\pwm_0|count[0][14]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( !\pwm_4|half_duty[0][16]~q\ & ( (!\pwm_4|half_duty[0][15]~q\ & (!\pwm_0|count[0][16]~DUPLICATE_q\ & 
-- (!\pwm_4|half_duty[0][14]~q\ $ (\pwm_0|count[0][14]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_half_duty[0][14]~q\,
	datab => \pwm_4|ALT_INV_half_duty[0][15]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][16]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][15]~q\,
	dataf => \pwm_4|ALT_INV_half_duty[0][16]~q\,
	combout => \pwm_4|Equal1~1_combout\);

-- Location: LABCELL_X22_Y11_N48
\pwm_4|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~3_combout\ = ( \pwm_4|half_duty[0][10]~q\ & ( \pwm_0|count[0][8]~q\ & ( (\pwm_0|count[0][10]~q\ & (\pwm_4|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~q\ $ (\pwm_4|half_duty[0][9]~q\)))) ) ) ) # ( !\pwm_4|half_duty[0][10]~q\ & ( 
-- \pwm_0|count[0][8]~q\ & ( (!\pwm_0|count[0][10]~q\ & (\pwm_4|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~q\ $ (\pwm_4|half_duty[0][9]~q\)))) ) ) ) # ( \pwm_4|half_duty[0][10]~q\ & ( !\pwm_0|count[0][8]~q\ & ( (\pwm_0|count[0][10]~q\ & 
-- (!\pwm_4|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~q\ $ (\pwm_4|half_duty[0][9]~q\)))) ) ) ) # ( !\pwm_4|half_duty[0][10]~q\ & ( !\pwm_0|count[0][8]~q\ & ( (!\pwm_0|count[0][10]~q\ & (!\pwm_4|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~q\ $ 
-- (\pwm_4|half_duty[0][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][10]~q\,
	datab => \pwm_0|ALT_INV_count[0][9]~q\,
	datac => \pwm_4|ALT_INV_half_duty[0][8]~q\,
	datad => \pwm_4|ALT_INV_half_duty[0][9]~q\,
	datae => \pwm_4|ALT_INV_half_duty[0][10]~q\,
	dataf => \pwm_0|ALT_INV_count[0][8]~q\,
	combout => \pwm_4|Equal1~3_combout\);

-- Location: LABCELL_X23_Y11_N21
\pwm_4|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[17]~feeder_combout\ = ( \pwm_4|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~34\,
	combout => \pwm_4|half_duty_new[17]~feeder_combout\);

-- Location: FF_X23_Y11_N22
\pwm_4|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(17));

-- Location: FF_X22_Y13_N49
\pwm_4|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][17]~q\);

-- Location: LABCELL_X23_Y11_N18
\pwm_4|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|half_duty_new[18]~feeder_combout\ = ( \pwm_4|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_4|ALT_INV_Mult0~35\,
	combout => \pwm_4|half_duty_new[18]~feeder_combout\);

-- Location: FF_X23_Y11_N20
\pwm_4|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty_new\(18));

-- Location: FF_X22_Y13_N52
\pwm_4|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_4|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|half_duty[0][18]~q\);

-- Location: LABCELL_X23_Y13_N51
\pwm_4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~0_combout\ = ( \pwm_4|half_duty[0][17]~q\ & ( \pwm_4|half_duty[0][18]~q\ & ( (\pwm_0|count[0][18]~DUPLICATE_q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_4|half_duty[0][17]~q\ & ( \pwm_4|half_duty[0][18]~q\ & ( 
-- (\pwm_0|count[0][18]~DUPLICATE_q\ & !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_4|half_duty[0][17]~q\ & ( !\pwm_4|half_duty[0][18]~q\ & ( (!\pwm_0|count[0][18]~DUPLICATE_q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_4|half_duty[0][17]~q\ & 
-- ( !\pwm_4|half_duty[0][18]~q\ & ( (!\pwm_0|count[0][18]~DUPLICATE_q\ & !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_4|ALT_INV_half_duty[0][17]~q\,
	dataf => \pwm_4|ALT_INV_half_duty[0][18]~q\,
	combout => \pwm_4|Equal1~0_combout\);

-- Location: LABCELL_X23_Y13_N54
\pwm_4|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal1~8_combout\ = ( \pwm_4|Equal1~3_combout\ & ( \pwm_4|Equal1~0_combout\ & ( (\pwm_4|Equal1~2_combout\ & (\pwm_4|Equal1~7_combout\ & \pwm_4|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_4|ALT_INV_Equal1~2_combout\,
	datac => \pwm_4|ALT_INV_Equal1~7_combout\,
	datad => \pwm_4|ALT_INV_Equal1~1_combout\,
	datae => \pwm_4|ALT_INV_Equal1~3_combout\,
	dataf => \pwm_4|ALT_INV_Equal1~0_combout\,
	combout => \pwm_4|Equal1~8_combout\);

-- Location: LABCELL_X23_Y13_N30
\pwm_4|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~5_combout\ = ( \pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_4|half_duty[0][0]~q\ & (\pwm_4|Add1~61_sumout\ & (!\pwm_4|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( 
-- \pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_4|half_duty[0][0]~q\ & (\pwm_4|Add1~61_sumout\ & (!\pwm_4|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) ) # ( \pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_4|half_duty[0][0]~q\ 
-- & (!\pwm_4|Add1~61_sumout\ & (!\pwm_4|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_4|half_duty[0][0]~q\ & (!\pwm_4|Add1~61_sumout\ & (!\pwm_4|Add1~65_sumout\ $ 
-- (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_Add1~65_sumout\,
	datab => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datac => \pwm_4|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_4|ALT_INV_Add1~61_sumout\,
	datae => \pwm_0|ALT_INV_count[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_4|pwm_out~5_combout\);

-- Location: LABCELL_X21_Y13_N39
\pwm_4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal2~0_combout\ = ( \pwm_4|Add1~49_sumout\ & ( !\pwm_0|count[0][11]~q\ ) ) # ( !\pwm_4|Add1~49_sumout\ & ( \pwm_0|count[0][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_4|ALT_INV_Add1~49_sumout\,
	combout => \pwm_4|Equal2~0_combout\);

-- Location: LABCELL_X21_Y13_N45
\pwm_4|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Equal2~1_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_4|Add1~53_sumout\ ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_4|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_4|ALT_INV_Add1~53_sumout\,
	combout => \pwm_4|Equal2~1_combout\);

-- Location: LABCELL_X21_Y13_N24
\pwm_4|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~6_combout\ = ( \pwm_4|Add1~73_sumout\ & ( \pwm_4|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_4|Add1~73_sumout\ & ( \pwm_4|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) ) # 
-- ( \pwm_4|Add1~73_sumout\ & ( !\pwm_4|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_4|Add1~73_sumout\ & ( !\pwm_4|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_0|ALT_INV_count[0][9]~q\,
	datad => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_4|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_4|ALT_INV_Add1~69_sumout\,
	combout => \pwm_4|pwm_out~6_combout\);

-- Location: LABCELL_X21_Y13_N18
\pwm_4|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~7_combout\ = ( !\pwm_4|Equal2~1_combout\ & ( \pwm_4|pwm_out~6_combout\ & ( (\pwm_4|pwm_out~5_combout\ & (!\pwm_4|Equal2~0_combout\ & (!\pwm_4|Add1~57_sumout\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_pwm_out~5_combout\,
	datab => \pwm_4|ALT_INV_Add1~57_sumout\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_4|ALT_INV_Equal2~0_combout\,
	datae => \pwm_4|ALT_INV_Equal2~1_combout\,
	dataf => \pwm_4|ALT_INV_pwm_out~6_combout\,
	combout => \pwm_4|pwm_out~7_combout\);

-- Location: LABCELL_X22_Y13_N45
\pwm_4|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~21_sumout\ = SUM(( !\pwm_4|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_4|Add1~34\ ))
-- \pwm_4|Add1~22\ = CARRY(( !\pwm_4|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_4|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_4|Add1~34\,
	sumout => \pwm_4|Add1~21_sumout\,
	cout => \pwm_4|Add1~22\);

-- Location: LABCELL_X22_Y13_N48
\pwm_4|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~25_sumout\ = SUM(( !\pwm_4|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_4|Add1~22\ ))
-- \pwm_4|Add1~26\ = CARRY(( !\pwm_4|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_4|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_4|Add1~22\,
	sumout => \pwm_4|Add1~25_sumout\,
	cout => \pwm_4|Add1~26\);

-- Location: LABCELL_X21_Y13_N9
\pwm_4|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~2_combout\ = ( \pwm_4|Add1~25_sumout\ & ( \pwm_4|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_4|Add1~25_sumout\ & ( \pwm_4|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_4|Add1~25_sumout\ & ( !\pwm_4|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_4|Add1~25_sumout\ & ( !\pwm_4|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101001010101000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datad => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_4|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_4|ALT_INV_Add1~21_sumout\,
	combout => \pwm_4|pwm_out~2_combout\);

-- Location: LABCELL_X21_Y13_N0
\pwm_4|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~0_combout\ = ( \pwm_4|Add1~9_sumout\ & ( \pwm_4|Add1~17_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_4|Add1~13_sumout\)))) ) ) ) # ( !\pwm_4|Add1~9_sumout\ & ( 
-- \pwm_4|Add1~17_sumout\ & ( (!\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_4|Add1~13_sumout\)))) ) ) ) # ( \pwm_4|Add1~9_sumout\ & ( !\pwm_4|Add1~17_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_4|Add1~13_sumout\)))) ) ) ) # ( !\pwm_4|Add1~9_sumout\ & ( !\pwm_4|Add1~17_sumout\ & ( (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ 
-- (\pwm_4|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][8]~q\,
	datad => \pwm_4|ALT_INV_Add1~13_sumout\,
	datae => \pwm_4|ALT_INV_Add1~9_sumout\,
	dataf => \pwm_4|ALT_INV_Add1~17_sumout\,
	combout => \pwm_4|pwm_out~0_combout\);

-- Location: LABCELL_X22_Y13_N51
\pwm_4|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~1_sumout\ = SUM(( !\pwm_4|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_4|Add1~26\ ))
-- \pwm_4|Add1~2\ = CARRY(( !\pwm_4|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_4|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_4|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_4|Add1~26\,
	sumout => \pwm_4|Add1~1_sumout\,
	cout => \pwm_4|Add1~2\);

-- Location: LABCELL_X22_Y13_N54
\pwm_4|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_4|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_4|Add1~2\,
	sumout => \pwm_4|Add1~5_sumout\);

-- Location: LABCELL_X21_Y13_N12
\pwm_4|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~1_combout\ = ( \pwm_4|Add1~5_sumout\ & ( (\pwm_4|pwm_out~0_combout\ & (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~DUPLICATE_q\ $ (\pwm_4|Add1~1_sumout\)))) ) ) # ( !\pwm_4|Add1~5_sumout\ & ( (\pwm_4|pwm_out~0_combout\ & 
-- (\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~DUPLICATE_q\ $ (\pwm_4|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001010000010000000000000000010000010100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_pwm_out~0_combout\,
	datab => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datac => \pwm_4|ALT_INV_Add1~1_sumout\,
	datad => \pwm_0|ALT_INV_count[0][19]~q\,
	datae => \pwm_4|ALT_INV_Add1~5_sumout\,
	combout => \pwm_4|pwm_out~1_combout\);

-- Location: LABCELL_X21_Y13_N30
\pwm_4|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_4|pwm_out~8_combout\ = ( \pwm_4|pwm_out\(0) & ( \pwm_4|pwm_out~1_combout\ & ( !\pwm_4|Equal1~8_combout\ ) ) ) # ( !\pwm_4|pwm_out\(0) & ( \pwm_4|pwm_out~1_combout\ & ( (\pwm_4|pwm_out~4_combout\ & (!\pwm_4|Equal1~8_combout\ & 
-- (\pwm_4|pwm_out~7_combout\ & \pwm_4|pwm_out~2_combout\))) ) ) ) # ( \pwm_4|pwm_out\(0) & ( !\pwm_4|pwm_out~1_combout\ & ( !\pwm_4|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_4|ALT_INV_pwm_out~4_combout\,
	datab => \pwm_4|ALT_INV_Equal1~8_combout\,
	datac => \pwm_4|ALT_INV_pwm_out~7_combout\,
	datad => \pwm_4|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_4|ALT_INV_pwm_out\(0),
	dataf => \pwm_4|ALT_INV_pwm_out~1_combout\,
	combout => \pwm_4|pwm_out~8_combout\);

-- Location: FF_X21_Y13_N31
\pwm_4|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_4|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_4|pwm_out\(0));

-- Location: DSP_X24_Y17_N0
\pwm_5|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_5|Mult0~8_ACLR_bus\,
	clk => \pwm_5|Mult0~8_CLK_bus\,
	ena => \pwm_5|Mult0~8_ENA_bus\,
	ax => \pwm_5|Mult0~8_AX_bus\,
	ay => \pwm_5|Mult0~8_AY_bus\,
	resulta => \pwm_5|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X25_Y17_N39
\pwm_5|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[0]~feeder_combout\ = ( \pwm_5|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~17\,
	combout => \pwm_5|half_duty_new[0]~feeder_combout\);

-- Location: FF_X25_Y17_N40
\pwm_5|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(0));

-- Location: FF_X23_Y17_N2
\pwm_5|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][0]~q\);

-- Location: MLABCELL_X25_Y17_N48
\pwm_5|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[2]~feeder_combout\ = ( \pwm_5|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~19\,
	combout => \pwm_5|half_duty_new[2]~feeder_combout\);

-- Location: FF_X25_Y17_N49
\pwm_5|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(2));

-- Location: FF_X23_Y17_N5
\pwm_5|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][2]~q\);

-- Location: MLABCELL_X25_Y17_N42
\pwm_5|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[1]~feeder_combout\ = ( \pwm_5|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~18\,
	combout => \pwm_5|half_duty_new[1]~feeder_combout\);

-- Location: FF_X25_Y17_N43
\pwm_5|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(1));

-- Location: FF_X21_Y17_N59
\pwm_5|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][1]~q\);

-- Location: LABCELL_X23_Y17_N0
\pwm_5|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~61_sumout\ = SUM(( !\pwm_5|half_duty[0][0]~q\ ) + ( !\pwm_5|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_5|Add1~62\ = CARRY(( !\pwm_5|half_duty[0][0]~q\ ) + ( !\pwm_5|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_5|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_5|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_5|Add1~61_sumout\,
	cout => \pwm_5|Add1~62\);

-- Location: LABCELL_X23_Y17_N3
\pwm_5|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~65_sumout\ = SUM(( !\pwm_5|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_5|Add1~62\ ))
-- \pwm_5|Add1~66\ = CARRY(( !\pwm_5|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_5|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_5|Add1~62\,
	sumout => \pwm_5|Add1~65_sumout\,
	cout => \pwm_5|Add1~66\);

-- Location: LABCELL_X21_Y17_N12
\pwm_5|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~5_combout\ = ( \pwm_5|Add1~65_sumout\ & ( \pwm_5|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_5|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_5|Add1~65_sumout\ & ( 
-- \pwm_5|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_5|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( \pwm_5|Add1~65_sumout\ & ( !\pwm_5|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~q\ & 
-- (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_5|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_5|Add1~65_sumout\ & ( !\pwm_5|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~q\ & (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_5|half_duty[0][0]~q\ $ 
-- (\pwm_0|count[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][2]~q\,
	datab => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datac => \pwm_5|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_0|ALT_INV_count[0][0]~q\,
	datae => \pwm_5|ALT_INV_Add1~65_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~61_sumout\,
	combout => \pwm_5|pwm_out~5_combout\);

-- Location: FF_X25_Y17_N58
\pwm_5|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~30\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(13));

-- Location: FF_X23_Y17_N37
\pwm_5|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][13]~q\);

-- Location: FF_X25_Y17_N37
\pwm_5|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(12));

-- Location: FF_X23_Y17_N34
\pwm_5|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][12]~q\);

-- Location: MLABCELL_X25_Y17_N0
\pwm_5|half_duty_new[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[11]~feeder_combout\ = ( \pwm_5|Mult0~28\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~28\,
	combout => \pwm_5|half_duty_new[11]~feeder_combout\);

-- Location: FF_X25_Y17_N1
\pwm_5|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[11]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(11));

-- Location: FF_X23_Y17_N31
\pwm_5|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][11]~q\);

-- Location: FF_X23_Y17_N56
\pwm_5|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(10));

-- Location: FF_X23_Y17_N28
\pwm_5|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][10]~q\);

-- Location: MLABCELL_X25_Y17_N27
\pwm_5|half_duty_new[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[9]~feeder_combout\ = ( \pwm_5|Mult0~26\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~26\,
	combout => \pwm_5|half_duty_new[9]~feeder_combout\);

-- Location: FF_X25_Y17_N29
\pwm_5|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[9]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(9));

-- Location: FF_X23_Y17_N25
\pwm_5|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][9]~q\);

-- Location: FF_X25_Y17_N46
\pwm_5|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~25\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(8));

-- Location: FF_X23_Y17_N22
\pwm_5|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][8]~q\);

-- Location: MLABCELL_X25_Y17_N12
\pwm_5|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[7]~feeder_combout\ = ( \pwm_5|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~24\,
	combout => \pwm_5|half_duty_new[7]~feeder_combout\);

-- Location: FF_X25_Y17_N13
\pwm_5|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(7));

-- Location: FF_X23_Y17_N19
\pwm_5|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][7]~q\);

-- Location: MLABCELL_X25_Y17_N3
\pwm_5|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[6]~feeder_combout\ = ( \pwm_5|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~23\,
	combout => \pwm_5|half_duty_new[6]~feeder_combout\);

-- Location: FF_X25_Y17_N4
\pwm_5|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(6));

-- Location: FF_X23_Y17_N16
\pwm_5|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][6]~q\);

-- Location: MLABCELL_X25_Y17_N15
\pwm_5|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[5]~feeder_combout\ = ( \pwm_5|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~22\,
	combout => \pwm_5|half_duty_new[5]~feeder_combout\);

-- Location: FF_X25_Y17_N16
\pwm_5|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(5));

-- Location: FF_X23_Y17_N13
\pwm_5|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][5]~q\);

-- Location: FF_X23_Y17_N59
\pwm_5|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~21\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(4));

-- Location: FF_X23_Y17_N10
\pwm_5|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][4]~q\);

-- Location: MLABCELL_X25_Y17_N33
\pwm_5|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[3]~feeder_combout\ = ( \pwm_5|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~20\,
	combout => \pwm_5|half_duty_new[3]~feeder_combout\);

-- Location: FF_X25_Y17_N34
\pwm_5|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(3));

-- Location: FF_X23_Y17_N7
\pwm_5|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][3]~q\);

-- Location: LABCELL_X23_Y17_N6
\pwm_5|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~37_sumout\ = SUM(( !\pwm_5|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_5|Add1~66\ ))
-- \pwm_5|Add1~38\ = CARRY(( !\pwm_5|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_5|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_5|Add1~66\,
	sumout => \pwm_5|Add1~37_sumout\,
	cout => \pwm_5|Add1~38\);

-- Location: LABCELL_X23_Y17_N9
\pwm_5|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~41_sumout\ = SUM(( !\pwm_5|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_5|Add1~38\ ))
-- \pwm_5|Add1~42\ = CARRY(( !\pwm_5|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_5|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_5|Add1~38\,
	sumout => \pwm_5|Add1~41_sumout\,
	cout => \pwm_5|Add1~42\);

-- Location: LABCELL_X23_Y17_N12
\pwm_5|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~45_sumout\ = SUM(( !\pwm_5|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_5|Add1~42\ ))
-- \pwm_5|Add1~46\ = CARRY(( !\pwm_5|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_5|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_5|Add1~42\,
	sumout => \pwm_5|Add1~45_sumout\,
	cout => \pwm_5|Add1~46\);

-- Location: LABCELL_X23_Y17_N15
\pwm_5|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~9_sumout\ = SUM(( !\pwm_5|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_5|Add1~46\ ))
-- \pwm_5|Add1~10\ = CARRY(( !\pwm_5|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_5|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_5|Add1~46\,
	sumout => \pwm_5|Add1~9_sumout\,
	cout => \pwm_5|Add1~10\);

-- Location: LABCELL_X23_Y17_N18
\pwm_5|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~13_sumout\ = SUM(( !\pwm_5|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_5|Add1~10\ ))
-- \pwm_5|Add1~14\ = CARRY(( !\pwm_5|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_5|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_5|Add1~10\,
	sumout => \pwm_5|Add1~13_sumout\,
	cout => \pwm_5|Add1~14\);

-- Location: LABCELL_X23_Y17_N21
\pwm_5|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~17_sumout\ = SUM(( !\pwm_5|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_5|Add1~14\ ))
-- \pwm_5|Add1~18\ = CARRY(( !\pwm_5|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_5|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_5|Add1~14\,
	sumout => \pwm_5|Add1~17_sumout\,
	cout => \pwm_5|Add1~18\);

-- Location: LABCELL_X23_Y17_N24
\pwm_5|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~69_sumout\ = SUM(( !\pwm_5|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_5|Add1~18\ ))
-- \pwm_5|Add1~70\ = CARRY(( !\pwm_5|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_5|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_5|Add1~18\,
	sumout => \pwm_5|Add1~69_sumout\,
	cout => \pwm_5|Add1~70\);

-- Location: LABCELL_X23_Y17_N27
\pwm_5|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~73_sumout\ = SUM(( !\pwm_5|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_5|Add1~70\ ))
-- \pwm_5|Add1~74\ = CARRY(( !\pwm_5|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_5|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_5|Add1~70\,
	sumout => \pwm_5|Add1~73_sumout\,
	cout => \pwm_5|Add1~74\);

-- Location: LABCELL_X23_Y17_N30
\pwm_5|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~49_sumout\ = SUM(( !\pwm_5|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_5|Add1~74\ ))
-- \pwm_5|Add1~50\ = CARRY(( !\pwm_5|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_5|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_5|Add1~74\,
	sumout => \pwm_5|Add1~49_sumout\,
	cout => \pwm_5|Add1~50\);

-- Location: LABCELL_X23_Y17_N33
\pwm_5|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~53_sumout\ = SUM(( !\pwm_5|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_5|Add1~50\ ))
-- \pwm_5|Add1~54\ = CARRY(( !\pwm_5|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_5|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_5|Add1~50\,
	sumout => \pwm_5|Add1~53_sumout\,
	cout => \pwm_5|Add1~54\);

-- Location: LABCELL_X23_Y17_N36
\pwm_5|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~57_sumout\ = SUM(( !\pwm_5|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_5|Add1~54\ ))
-- \pwm_5|Add1~58\ = CARRY(( !\pwm_5|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_5|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_5|Add1~54\,
	sumout => \pwm_5|Add1~57_sumout\,
	cout => \pwm_5|Add1~58\);

-- Location: LABCELL_X22_Y17_N12
\pwm_5|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~6_combout\ = ( \pwm_5|Add1~73_sumout\ & ( \pwm_5|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_5|Add1~73_sumout\ & ( \pwm_5|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~DUPLICATE_q\ & 
-- !\pwm_0|count[0][10]~q\) ) ) ) # ( \pwm_5|Add1~73_sumout\ & ( !\pwm_5|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~DUPLICATE_q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_5|Add1~73_sumout\ & ( !\pwm_5|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~DUPLICATE_q\ & 
-- !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_5|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~69_sumout\,
	combout => \pwm_5|pwm_out~6_combout\);

-- Location: LABCELL_X22_Y17_N3
\pwm_5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_5|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_5|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_5|ALT_INV_Add1~49_sumout\,
	combout => \pwm_5|Equal2~0_combout\);

-- Location: LABCELL_X22_Y17_N33
\pwm_5|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal2~1_combout\ = ( \pwm_5|Add1~53_sumout\ & ( !\pwm_0|count[0][12]~q\ ) ) # ( !\pwm_5|Add1~53_sumout\ & ( \pwm_0|count[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_5|ALT_INV_Add1~53_sumout\,
	combout => \pwm_5|Equal2~1_combout\);

-- Location: LABCELL_X22_Y17_N54
\pwm_5|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~7_combout\ = ( !\pwm_5|Equal2~0_combout\ & ( !\pwm_5|Equal2~1_combout\ & ( (\pwm_5|pwm_out~5_combout\ & (\pwm_5|pwm_out~6_combout\ & (!\pwm_5|Add1~57_sumout\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_pwm_out~5_combout\,
	datab => \pwm_5|ALT_INV_Add1~57_sumout\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_5|ALT_INV_pwm_out~6_combout\,
	datae => \pwm_5|ALT_INV_Equal2~0_combout\,
	dataf => \pwm_5|ALT_INV_Equal2~1_combout\,
	combout => \pwm_5|pwm_out~7_combout\);

-- Location: FF_X25_Y17_N52
\pwm_5|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~32\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(15));

-- Location: FF_X23_Y17_N43
\pwm_5|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][15]~q\);

-- Location: MLABCELL_X25_Y17_N18
\pwm_5|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[16]~feeder_combout\ = ( \pwm_5|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~33\,
	combout => \pwm_5|half_duty_new[16]~feeder_combout\);

-- Location: FF_X25_Y17_N19
\pwm_5|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(16));

-- Location: FF_X23_Y17_N46
\pwm_5|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][16]~q\);

-- Location: FF_X25_Y17_N31
\pwm_5|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(14));

-- Location: FF_X23_Y17_N40
\pwm_5|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][14]~q\);

-- Location: LABCELL_X21_Y17_N48
\pwm_5|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~1_combout\ = ( \pwm_5|half_duty[0][16]~q\ & ( \pwm_5|half_duty[0][14]~q\ & ( (\pwm_0|count[0][16]~q\ & (\pwm_0|count[0][14]~q\ & (!\pwm_5|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_5|half_duty[0][16]~q\ & ( 
-- \pwm_5|half_duty[0][14]~q\ & ( (!\pwm_0|count[0][16]~q\ & (\pwm_0|count[0][14]~q\ & (!\pwm_5|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( \pwm_5|half_duty[0][16]~q\ & ( !\pwm_5|half_duty[0][14]~q\ & ( (\pwm_0|count[0][16]~q\ & 
-- (!\pwm_0|count[0][14]~q\ & (!\pwm_5|half_duty[0][15]~q\ $ (\pwm_0|count[0][15]~q\)))) ) ) ) # ( !\pwm_5|half_duty[0][16]~q\ & ( !\pwm_5|half_duty[0][14]~q\ & ( (!\pwm_0|count[0][16]~q\ & (!\pwm_0|count[0][14]~q\ & (!\pwm_5|half_duty[0][15]~q\ $ 
-- (\pwm_0|count[0][15]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_half_duty[0][15]~q\,
	datab => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][15]~q\,
	datae => \pwm_5|ALT_INV_half_duty[0][16]~q\,
	dataf => \pwm_5|ALT_INV_half_duty[0][14]~q\,
	combout => \pwm_5|Equal1~1_combout\);

-- Location: LABCELL_X21_Y17_N42
\pwm_5|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~2_combout\ = ( \pwm_0|count[0][12]~q\ & ( \pwm_0|count[0][11]~q\ & ( (\pwm_5|half_duty[0][11]~q\ & (\pwm_5|half_duty[0][12]~q\ & (!\pwm_0|count[0][13]~q\ $ (\pwm_5|half_duty[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][12]~q\ & ( 
-- \pwm_0|count[0][11]~q\ & ( (\pwm_5|half_duty[0][11]~q\ & (!\pwm_5|half_duty[0][12]~q\ & (!\pwm_0|count[0][13]~q\ $ (\pwm_5|half_duty[0][13]~q\)))) ) ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (!\pwm_5|half_duty[0][11]~q\ & 
-- (\pwm_5|half_duty[0][12]~q\ & (!\pwm_0|count[0][13]~q\ $ (\pwm_5|half_duty[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][12]~q\ & ( !\pwm_0|count[0][11]~q\ & ( (!\pwm_5|half_duty[0][11]~q\ & (!\pwm_5|half_duty[0][12]~q\ & (!\pwm_0|count[0][13]~q\ $ 
-- (\pwm_5|half_duty[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_half_duty[0][11]~q\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_5|ALT_INV_half_duty[0][12]~q\,
	datad => \pwm_5|ALT_INV_half_duty[0][13]~q\,
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_0|ALT_INV_count[0][11]~q\,
	combout => \pwm_5|Equal1~2_combout\);

-- Location: MLABCELL_X25_Y17_N24
\pwm_5|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|half_duty_new[18]~feeder_combout\ = ( \pwm_5|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_5|ALT_INV_Mult0~35\,
	combout => \pwm_5|half_duty_new[18]~feeder_combout\);

-- Location: FF_X25_Y17_N25
\pwm_5|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(18));

-- Location: FF_X23_Y17_N52
\pwm_5|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][18]~q\);

-- Location: FF_X25_Y17_N55
\pwm_5|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|Mult0~34\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty_new\(17));

-- Location: FF_X23_Y17_N49
\pwm_5|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_5|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|half_duty[0][17]~q\);

-- Location: LABCELL_X21_Y17_N33
\pwm_5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~0_combout\ = ( \pwm_0|count[0][17]~q\ & ( \pwm_0|count[0][18]~q\ & ( (\pwm_5|half_duty[0][18]~q\ & \pwm_5|half_duty[0][17]~q\) ) ) ) # ( !\pwm_0|count[0][17]~q\ & ( \pwm_0|count[0][18]~q\ & ( (\pwm_5|half_duty[0][18]~q\ & 
-- !\pwm_5|half_duty[0][17]~q\) ) ) ) # ( \pwm_0|count[0][17]~q\ & ( !\pwm_0|count[0][18]~q\ & ( (!\pwm_5|half_duty[0][18]~q\ & \pwm_5|half_duty[0][17]~q\) ) ) ) # ( !\pwm_0|count[0][17]~q\ & ( !\pwm_0|count[0][18]~q\ & ( (!\pwm_5|half_duty[0][18]~q\ & 
-- !\pwm_5|half_duty[0][17]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_half_duty[0][18]~q\,
	datac => \pwm_5|ALT_INV_half_duty[0][17]~q\,
	datae => \pwm_0|ALT_INV_count[0][17]~q\,
	dataf => \pwm_0|ALT_INV_count[0][18]~q\,
	combout => \pwm_5|Equal1~0_combout\);

-- Location: LABCELL_X21_Y17_N24
\pwm_5|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~5_combout\ = ( !\pwm_0|count[0][19]~q\ & ( \pwm_0|count[0][0]~q\ & ( (\pwm_5|half_duty[0][0]~q\ & (!\pwm_5|half_duty[0][1]~q\ $ (\pwm_0|count[0][1]~DUPLICATE_q\))) ) ) ) # ( !\pwm_0|count[0][19]~q\ & ( !\pwm_0|count[0][0]~q\ & ( 
-- (!\pwm_5|half_duty[0][0]~q\ & (!\pwm_5|half_duty[0][1]~q\ $ (\pwm_0|count[0][1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000000000000000000000001100000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_5|ALT_INV_half_duty[0][1]~q\,
	datac => \pwm_5|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][19]~q\,
	dataf => \pwm_0|ALT_INV_count[0][0]~q\,
	combout => \pwm_5|Equal1~5_combout\);

-- Location: LABCELL_X21_Y17_N0
\pwm_5|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~4_combout\ = ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( \pwm_5|half_duty[0][7]~q\ & ( (\pwm_0|count[0][7]~q\ & (\pwm_5|half_duty[0][5]~q\ & (!\pwm_5|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][5]~DUPLICATE_q\ & ( \pwm_5|half_duty[0][7]~q\ & ( (\pwm_0|count[0][7]~q\ & (!\pwm_5|half_duty[0][5]~q\ & (!\pwm_5|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( 
-- !\pwm_5|half_duty[0][7]~q\ & ( (!\pwm_0|count[0][7]~q\ & (\pwm_5|half_duty[0][5]~q\ & (!\pwm_5|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( !\pwm_5|half_duty[0][7]~q\ & ( (!\pwm_0|count[0][7]~q\ 
-- & (!\pwm_5|half_duty[0][5]~q\ & (!\pwm_5|half_duty[0][6]~q\ $ (\pwm_0|count[0][6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_half_duty[0][6]~q\,
	datab => \pwm_0|ALT_INV_count[0][7]~q\,
	datac => \pwm_5|ALT_INV_half_duty[0][5]~q\,
	datad => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	dataf => \pwm_5|ALT_INV_half_duty[0][7]~q\,
	combout => \pwm_5|Equal1~4_combout\);

-- Location: LABCELL_X21_Y17_N18
\pwm_5|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~6_combout\ = ( \pwm_0|count[0][3]~q\ & ( \pwm_5|half_duty[0][2]~q\ & ( (\pwm_0|count[0][2]~q\ & \pwm_5|half_duty[0][3]~q\) ) ) ) # ( !\pwm_0|count[0][3]~q\ & ( \pwm_5|half_duty[0][2]~q\ & ( (\pwm_0|count[0][2]~q\ & 
-- !\pwm_5|half_duty[0][3]~q\) ) ) ) # ( \pwm_0|count[0][3]~q\ & ( !\pwm_5|half_duty[0][2]~q\ & ( (!\pwm_0|count[0][2]~q\ & \pwm_5|half_duty[0][3]~q\) ) ) ) # ( !\pwm_0|count[0][3]~q\ & ( !\pwm_5|half_duty[0][2]~q\ & ( (!\pwm_0|count[0][2]~q\ & 
-- !\pwm_5|half_duty[0][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][2]~q\,
	datac => \pwm_5|ALT_INV_half_duty[0][3]~q\,
	datae => \pwm_0|ALT_INV_count[0][3]~q\,
	dataf => \pwm_5|ALT_INV_half_duty[0][2]~q\,
	combout => \pwm_5|Equal1~6_combout\);

-- Location: LABCELL_X21_Y17_N36
\pwm_5|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~7_combout\ = ( \pwm_5|Equal1~4_combout\ & ( \pwm_5|Equal1~6_combout\ & ( (\pwm_5|Equal1~5_combout\ & (!\pwm_5|half_duty[0][4]~q\ $ (\pwm_0|count[0][4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_Equal1~5_combout\,
	datab => \pwm_5|ALT_INV_half_duty[0][4]~q\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datae => \pwm_5|ALT_INV_Equal1~4_combout\,
	dataf => \pwm_5|ALT_INV_Equal1~6_combout\,
	combout => \pwm_5|Equal1~7_combout\);

-- Location: MLABCELL_X25_Y17_N6
\pwm_5|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~3_combout\ = ( \pwm_5|half_duty[0][8]~q\ & ( \pwm_0|count[0][10]~q\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_5|half_duty[0][10]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ $ (\pwm_5|half_duty[0][9]~q\)))) ) ) ) # ( !\pwm_5|half_duty[0][8]~q\ 
-- & ( \pwm_0|count[0][10]~q\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_5|half_duty[0][10]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ $ (\pwm_5|half_duty[0][9]~q\)))) ) ) ) # ( \pwm_5|half_duty[0][8]~q\ & ( !\pwm_0|count[0][10]~q\ & ( 
-- (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_5|half_duty[0][10]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ $ (\pwm_5|half_duty[0][9]~q\)))) ) ) ) # ( !\pwm_5|half_duty[0][8]~q\ & ( !\pwm_0|count[0][10]~q\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & 
-- (!\pwm_5|half_duty[0][10]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ $ (\pwm_5|half_duty[0][9]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datac => \pwm_5|ALT_INV_half_duty[0][9]~q\,
	datad => \pwm_5|ALT_INV_half_duty[0][10]~q\,
	datae => \pwm_5|ALT_INV_half_duty[0][8]~q\,
	dataf => \pwm_0|ALT_INV_count[0][10]~q\,
	combout => \pwm_5|Equal1~3_combout\);

-- Location: LABCELL_X21_Y17_N6
\pwm_5|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Equal1~8_combout\ = ( \pwm_5|Equal1~7_combout\ & ( \pwm_5|Equal1~3_combout\ & ( (\pwm_5|Equal1~1_combout\ & (\pwm_5|Equal1~2_combout\ & \pwm_5|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_Equal1~1_combout\,
	datab => \pwm_5|ALT_INV_Equal1~2_combout\,
	datac => \pwm_5|ALT_INV_Equal1~0_combout\,
	datae => \pwm_5|ALT_INV_Equal1~7_combout\,
	dataf => \pwm_5|ALT_INV_Equal1~3_combout\,
	combout => \pwm_5|Equal1~8_combout\);

-- Location: LABCELL_X22_Y17_N24
\pwm_5|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~3_combout\ = ( \pwm_5|Add1~41_sumout\ & ( \pwm_5|Add1~45_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_5|Add1~37_sumout\)))) ) ) ) # ( !\pwm_5|Add1~41_sumout\ & ( 
-- \pwm_5|Add1~45_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_5|Add1~37_sumout\)))) ) ) ) # ( \pwm_5|Add1~41_sumout\ & ( !\pwm_5|Add1~45_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ (\pwm_5|Add1~37_sumout\)))) ) ) ) # ( !\pwm_5|Add1~41_sumout\ & ( !\pwm_5|Add1~45_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ $ 
-- (\pwm_5|Add1~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][3]~q\,
	datac => \pwm_5|ALT_INV_Add1~37_sumout\,
	datad => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datae => \pwm_5|ALT_INV_Add1~41_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~45_sumout\,
	combout => \pwm_5|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y17_N39
\pwm_5|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~29_sumout\ = SUM(( !\pwm_5|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_5|Add1~58\ ))
-- \pwm_5|Add1~30\ = CARRY(( !\pwm_5|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_5|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_5|Add1~58\,
	sumout => \pwm_5|Add1~29_sumout\,
	cout => \pwm_5|Add1~30\);

-- Location: LABCELL_X23_Y17_N42
\pwm_5|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~33_sumout\ = SUM(( !\pwm_5|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_5|Add1~30\ ))
-- \pwm_5|Add1~34\ = CARRY(( !\pwm_5|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_5|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_5|Add1~30\,
	sumout => \pwm_5|Add1~33_sumout\,
	cout => \pwm_5|Add1~34\);

-- Location: LABCELL_X22_Y17_N18
\pwm_5|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~4_combout\ = ( \pwm_5|Add1~33_sumout\ & ( \pwm_5|Add1~29_sumout\ & ( (\pwm_5|pwm_out~3_combout\ & (\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_5|Add1~33_sumout\ & ( \pwm_5|Add1~29_sumout\ & ( (\pwm_5|pwm_out~3_combout\ 
-- & (\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) ) # ( \pwm_5|Add1~33_sumout\ & ( !\pwm_5|Add1~29_sumout\ & ( (\pwm_5|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_5|Add1~33_sumout\ & ( 
-- !\pwm_5|Add1~29_sumout\ & ( (\pwm_5|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000101000000000101000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_pwm_out~3_combout\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datad => \pwm_0|ALT_INV_count[0][15]~q\,
	datae => \pwm_5|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~29_sumout\,
	combout => \pwm_5|pwm_out~4_combout\);

-- Location: LABCELL_X23_Y17_N45
\pwm_5|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~21_sumout\ = SUM(( !\pwm_5|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_5|Add1~34\ ))
-- \pwm_5|Add1~22\ = CARRY(( !\pwm_5|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_5|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_5|Add1~34\,
	sumout => \pwm_5|Add1~21_sumout\,
	cout => \pwm_5|Add1~22\);

-- Location: LABCELL_X23_Y17_N48
\pwm_5|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~25_sumout\ = SUM(( !\pwm_5|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_5|Add1~22\ ))
-- \pwm_5|Add1~26\ = CARRY(( !\pwm_5|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_5|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_5|Add1~22\,
	sumout => \pwm_5|Add1~25_sumout\,
	cout => \pwm_5|Add1~26\);

-- Location: LABCELL_X22_Y17_N9
\pwm_5|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~2_combout\ = ( \pwm_5|Add1~25_sumout\ & ( \pwm_5|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_5|Add1~25_sumout\ & ( \pwm_5|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) 
-- # ( \pwm_5|Add1~25_sumout\ & ( !\pwm_5|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_5|Add1~25_sumout\ & ( !\pwm_5|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][17]~q\,
	datad => \pwm_0|ALT_INV_count[0][16]~q\,
	datae => \pwm_5|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~21_sumout\,
	combout => \pwm_5|pwm_out~2_combout\);

-- Location: LABCELL_X22_Y17_N42
\pwm_5|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~0_combout\ = ( \pwm_5|Add1~9_sumout\ & ( \pwm_5|Add1~13_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_5|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_5|Add1~9_sumout\ & ( 
-- \pwm_5|Add1~13_sumout\ & ( (!\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_5|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( \pwm_5|Add1~9_sumout\ & ( !\pwm_5|Add1~13_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][7]~q\ & (!\pwm_5|Add1~17_sumout\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_5|Add1~9_sumout\ & ( !\pwm_5|Add1~13_sumout\ & ( (!\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ & (!\pwm_5|Add1~17_sumout\ $ 
-- (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][7]~q\,
	datac => \pwm_5|ALT_INV_Add1~17_sumout\,
	datad => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datae => \pwm_5|ALT_INV_Add1~9_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~13_sumout\,
	combout => \pwm_5|pwm_out~0_combout\);

-- Location: LABCELL_X23_Y17_N51
\pwm_5|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~1_sumout\ = SUM(( !\pwm_5|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_5|Add1~26\ ))
-- \pwm_5|Add1~2\ = CARRY(( !\pwm_5|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_5|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_5|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_5|Add1~26\,
	sumout => \pwm_5|Add1~1_sumout\,
	cout => \pwm_5|Add1~2\);

-- Location: LABCELL_X23_Y17_N54
\pwm_5|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_5|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_5|Add1~2\,
	sumout => \pwm_5|Add1~5_sumout\);

-- Location: LABCELL_X22_Y17_N48
\pwm_5|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~1_combout\ = ( \pwm_5|Add1~5_sumout\ & ( \pwm_5|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_5|pwm_out~0_combout\ & \pwm_0|count[0][18]~q\)) ) ) ) # ( !\pwm_5|Add1~5_sumout\ & ( \pwm_5|Add1~1_sumout\ & ( (\pwm_0|count[0][19]~q\ & 
-- (\pwm_5|pwm_out~0_combout\ & \pwm_0|count[0][18]~q\)) ) ) ) # ( \pwm_5|Add1~5_sumout\ & ( !\pwm_5|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_5|pwm_out~0_combout\ & !\pwm_0|count[0][18]~q\)) ) ) ) # ( !\pwm_5|Add1~5_sumout\ & ( 
-- !\pwm_5|Add1~1_sumout\ & ( (\pwm_0|count[0][19]~q\ & (\pwm_5|pwm_out~0_combout\ & !\pwm_0|count[0][18]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001000000010000000000001000000010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_5|ALT_INV_pwm_out~0_combout\,
	datac => \pwm_0|ALT_INV_count[0][18]~q\,
	datae => \pwm_5|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_5|ALT_INV_Add1~1_sumout\,
	combout => \pwm_5|pwm_out~1_combout\);

-- Location: LABCELL_X22_Y17_N36
\pwm_5|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_5|pwm_out~8_combout\ = ( \pwm_5|pwm_out\(0) & ( \pwm_5|pwm_out~1_combout\ & ( !\pwm_5|Equal1~8_combout\ ) ) ) # ( !\pwm_5|pwm_out\(0) & ( \pwm_5|pwm_out~1_combout\ & ( (\pwm_5|pwm_out~7_combout\ & (!\pwm_5|Equal1~8_combout\ & 
-- (\pwm_5|pwm_out~4_combout\ & \pwm_5|pwm_out~2_combout\))) ) ) ) # ( \pwm_5|pwm_out\(0) & ( !\pwm_5|pwm_out~1_combout\ & ( !\pwm_5|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_5|ALT_INV_pwm_out~7_combout\,
	datab => \pwm_5|ALT_INV_Equal1~8_combout\,
	datac => \pwm_5|ALT_INV_pwm_out~4_combout\,
	datad => \pwm_5|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_5|ALT_INV_pwm_out\(0),
	dataf => \pwm_5|ALT_INV_pwm_out~1_combout\,
	combout => \pwm_5|pwm_out~8_combout\);

-- Location: FF_X22_Y17_N37
\pwm_5|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_5|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_5|pwm_out\(0));

-- Location: DSP_X24_Y9_N0
\pwm_6|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_6|Mult0~8_ACLR_bus\,
	clk => \pwm_6|Mult0~8_CLK_bus\,
	ena => \pwm_6|Mult0~8_ENA_bus\,
	ax => \pwm_6|Mult0~8_AX_bus\,
	ay => \pwm_6|Mult0~8_AY_bus\,
	resulta => \pwm_6|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X23_Y9_N36
\pwm_6|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[15]~feeder_combout\ = ( \pwm_6|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~32\,
	combout => \pwm_6|half_duty_new[15]~feeder_combout\);

-- Location: FF_X23_Y9_N37
\pwm_6|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(15));

-- Location: FF_X22_Y12_N44
\pwm_6|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][15]~q\);

-- Location: LABCELL_X23_Y9_N3
\pwm_6|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[16]~feeder_combout\ = ( \pwm_6|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~33\,
	combout => \pwm_6|half_duty_new[16]~feeder_combout\);

-- Location: FF_X23_Y9_N4
\pwm_6|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(16));

-- Location: FF_X22_Y12_N47
\pwm_6|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][16]~q\);

-- Location: FF_X23_Y9_N55
\pwm_6|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(14));

-- Location: FF_X22_Y12_N41
\pwm_6|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][14]~q\);

-- Location: LABCELL_X21_Y12_N33
\pwm_6|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~1_combout\ = ( \pwm_0|count[0][15]~q\ & ( \pwm_6|half_duty[0][14]~q\ & ( (\pwm_6|half_duty[0][15]~q\ & (\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_6|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( 
-- \pwm_6|half_duty[0][14]~q\ & ( (!\pwm_6|half_duty[0][15]~q\ & (\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_6|half_duty[0][16]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~q\ & ( !\pwm_6|half_duty[0][14]~q\ & ( (\pwm_6|half_duty[0][15]~q\ & 
-- (!\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_6|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( !\pwm_6|half_duty[0][14]~q\ & ( (!\pwm_6|half_duty[0][15]~q\ & (!\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ 
-- (\pwm_6|half_duty[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datab => \pwm_6|ALT_INV_half_duty[0][15]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datad => \pwm_6|ALT_INV_half_duty[0][16]~q\,
	datae => \pwm_0|ALT_INV_count[0][15]~q\,
	dataf => \pwm_6|ALT_INV_half_duty[0][14]~q\,
	combout => \pwm_6|Equal1~1_combout\);

-- Location: FF_X23_Y9_N19
\pwm_6|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(12));

-- Location: FF_X22_Y12_N35
\pwm_6|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][12]~q\);

-- Location: FF_X23_Y9_N59
\pwm_6|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~30\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(13));

-- Location: FF_X22_Y12_N38
\pwm_6|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][13]~q\);

-- Location: MLABCELL_X25_Y9_N15
\pwm_6|half_duty_new[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[11]~feeder_combout\ = ( \pwm_6|Mult0~28\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~28\,
	combout => \pwm_6|half_duty_new[11]~feeder_combout\);

-- Location: FF_X25_Y9_N16
\pwm_6|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[11]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(11));

-- Location: FF_X22_Y12_N32
\pwm_6|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][11]~q\);

-- Location: LABCELL_X21_Y12_N12
\pwm_6|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~2_combout\ = ( \pwm_0|count[0][11]~q\ & ( \pwm_6|half_duty[0][11]~q\ & ( (!\pwm_6|half_duty[0][12]~q\ & (!\pwm_0|count[0][12]~q\ & (!\pwm_6|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) # (\pwm_6|half_duty[0][12]~q\ & 
-- (\pwm_0|count[0][12]~q\ & (!\pwm_6|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][11]~q\ & ( !\pwm_6|half_duty[0][11]~q\ & ( (!\pwm_6|half_duty[0][12]~q\ & (!\pwm_0|count[0][12]~q\ & (!\pwm_6|half_duty[0][13]~q\ $ 
-- (\pwm_0|count[0][13]~q\)))) # (\pwm_6|half_duty[0][12]~q\ & (\pwm_0|count[0][12]~q\ & (!\pwm_6|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_half_duty[0][12]~q\,
	datab => \pwm_6|ALT_INV_half_duty[0][13]~q\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_0|ALT_INV_count[0][12]~q\,
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_6|ALT_INV_half_duty[0][11]~q\,
	combout => \pwm_6|Equal1~2_combout\);

-- Location: FF_X23_Y9_N13
\pwm_6|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(10));

-- Location: FF_X22_Y12_N29
\pwm_6|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][10]~q\);

-- Location: FF_X23_Y9_N35
\pwm_6|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(9));

-- Location: FF_X22_Y12_N26
\pwm_6|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][9]~q\);

-- Location: LABCELL_X23_Y9_N39
\pwm_6|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[8]~feeder_combout\ = ( \pwm_6|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~25\,
	combout => \pwm_6|half_duty_new[8]~feeder_combout\);

-- Location: FF_X23_Y9_N41
\pwm_6|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(8));

-- Location: FF_X22_Y12_N23
\pwm_6|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][8]~q\);

-- Location: LABCELL_X21_Y12_N18
\pwm_6|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~3_combout\ = ( \pwm_0|count[0][9]~q\ & ( \pwm_0|count[0][10]~q\ & ( (\pwm_6|half_duty[0][10]~q\ & (\pwm_6|half_duty[0][9]~q\ & (!\pwm_6|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][9]~q\ & ( 
-- \pwm_0|count[0][10]~q\ & ( (\pwm_6|half_duty[0][10]~q\ & (!\pwm_6|half_duty[0][9]~q\ & (!\pwm_6|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( \pwm_0|count[0][9]~q\ & ( !\pwm_0|count[0][10]~q\ & ( (!\pwm_6|half_duty[0][10]~q\ & 
-- (\pwm_6|half_duty[0][9]~q\ & (!\pwm_6|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][9]~q\ & ( !\pwm_0|count[0][10]~q\ & ( (!\pwm_6|half_duty[0][10]~q\ & (!\pwm_6|half_duty[0][9]~q\ & (!\pwm_6|half_duty[0][8]~q\ $ 
-- (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_half_duty[0][10]~q\,
	datab => \pwm_6|ALT_INV_half_duty[0][9]~q\,
	datac => \pwm_6|ALT_INV_half_duty[0][8]~q\,
	datad => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][9]~q\,
	dataf => \pwm_0|ALT_INV_count[0][10]~q\,
	combout => \pwm_6|Equal1~3_combout\);

-- Location: LABCELL_X23_Y9_N21
\pwm_6|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[3]~feeder_combout\ = ( \pwm_6|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~20\,
	combout => \pwm_6|half_duty_new[3]~feeder_combout\);

-- Location: FF_X23_Y9_N22
\pwm_6|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(3));

-- Location: FF_X22_Y12_N8
\pwm_6|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][3]~q\);

-- Location: LABCELL_X23_Y9_N9
\pwm_6|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[2]~feeder_combout\ = ( \pwm_6|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~19\,
	combout => \pwm_6|half_duty_new[2]~feeder_combout\);

-- Location: FF_X23_Y9_N11
\pwm_6|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(2));

-- Location: FF_X22_Y12_N4
\pwm_6|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][2]~q\);

-- Location: LABCELL_X21_Y12_N6
\pwm_6|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~6_combout\ = ( \pwm_6|half_duty[0][3]~q\ & ( \pwm_6|half_duty[0][2]~q\ & ( (\pwm_0|count[0][3]~q\ & \pwm_0|count[0][2]~DUPLICATE_q\) ) ) ) # ( !\pwm_6|half_duty[0][3]~q\ & ( \pwm_6|half_duty[0][2]~q\ & ( (!\pwm_0|count[0][3]~q\ & 
-- \pwm_0|count[0][2]~DUPLICATE_q\) ) ) ) # ( \pwm_6|half_duty[0][3]~q\ & ( !\pwm_6|half_duty[0][2]~q\ & ( (\pwm_0|count[0][3]~q\ & !\pwm_0|count[0][2]~DUPLICATE_q\) ) ) ) # ( !\pwm_6|half_duty[0][3]~q\ & ( !\pwm_6|half_duty[0][2]~q\ & ( 
-- (!\pwm_0|count[0][3]~q\ & !\pwm_0|count[0][2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][3]~q\,
	datac => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datae => \pwm_6|ALT_INV_half_duty[0][3]~q\,
	dataf => \pwm_6|ALT_INV_half_duty[0][2]~q\,
	combout => \pwm_6|Equal1~6_combout\);

-- Location: LABCELL_X23_Y9_N51
\pwm_6|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[4]~feeder_combout\ = ( \pwm_6|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~21\,
	combout => \pwm_6|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y9_N52
\pwm_6|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(4));

-- Location: FF_X22_Y12_N11
\pwm_6|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][4]~q\);

-- Location: LABCELL_X23_Y9_N48
\pwm_6|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[1]~feeder_combout\ = ( \pwm_6|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~18\,
	combout => \pwm_6|half_duty_new[1]~feeder_combout\);

-- Location: FF_X23_Y9_N50
\pwm_6|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(1));

-- Location: FF_X21_Y12_N56
\pwm_6|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(1),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][1]~q\);

-- Location: FF_X23_Y9_N2
\pwm_6|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(0));

-- Location: FF_X22_Y12_N2
\pwm_6|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][0]~q\);

-- Location: LABCELL_X21_Y12_N39
\pwm_6|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~5_combout\ = ( \pwm_6|half_duty[0][0]~q\ & ( !\pwm_0|count[0][19]~q\ & ( (\pwm_0|count[0][0]~q\ & (!\pwm_6|half_duty[0][1]~q\ $ (\pwm_0|count[0][1]~DUPLICATE_q\))) ) ) ) # ( !\pwm_6|half_duty[0][0]~q\ & ( !\pwm_0|count[0][19]~q\ & ( 
-- (!\pwm_0|count[0][0]~q\ & (!\pwm_6|half_duty[0][1]~q\ $ (\pwm_0|count[0][1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_half_duty[0][1]~q\,
	datab => \pwm_0|ALT_INV_count[0][0]~q\,
	datac => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datae => \pwm_6|ALT_INV_half_duty[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][19]~q\,
	combout => \pwm_6|Equal1~5_combout\);

-- Location: LABCELL_X23_Y9_N42
\pwm_6|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[5]~feeder_combout\ = ( \pwm_6|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~22\,
	combout => \pwm_6|half_duty_new[5]~feeder_combout\);

-- Location: FF_X23_Y9_N44
\pwm_6|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(5));

-- Location: FF_X22_Y12_N14
\pwm_6|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][5]~q\);

-- Location: MLABCELL_X25_Y9_N42
\pwm_6|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[6]~feeder_combout\ = ( \pwm_6|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~23\,
	combout => \pwm_6|half_duty_new[6]~feeder_combout\);

-- Location: FF_X25_Y9_N43
\pwm_6|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(6));

-- Location: FF_X22_Y12_N17
\pwm_6|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][6]~q\);

-- Location: LABCELL_X23_Y9_N27
\pwm_6|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[7]~feeder_combout\ = ( \pwm_6|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~24\,
	combout => \pwm_6|half_duty_new[7]~feeder_combout\);

-- Location: FF_X23_Y9_N28
\pwm_6|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(7));

-- Location: FF_X22_Y12_N20
\pwm_6|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][7]~q\);

-- Location: LABCELL_X21_Y12_N48
\pwm_6|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~4_combout\ = ( \pwm_0|count[0][6]~q\ & ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_6|half_duty[0][5]~q\ & (\pwm_6|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|half_duty[0][7]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~q\ & ( 
-- \pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_6|half_duty[0][5]~q\ & (!\pwm_6|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|half_duty[0][7]~q\)))) ) ) ) # ( \pwm_0|count[0][6]~q\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( 
-- (!\pwm_6|half_duty[0][5]~q\ & (\pwm_6|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|half_duty[0][7]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~q\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_6|half_duty[0][5]~q\ & 
-- (!\pwm_6|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|half_duty[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datab => \pwm_6|ALT_INV_half_duty[0][5]~q\,
	datac => \pwm_6|ALT_INV_half_duty[0][6]~q\,
	datad => \pwm_6|ALT_INV_half_duty[0][7]~q\,
	datae => \pwm_0|ALT_INV_count[0][6]~q\,
	dataf => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	combout => \pwm_6|Equal1~4_combout\);

-- Location: LABCELL_X21_Y12_N0
\pwm_6|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~7_combout\ = ( \pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_6|Equal1~4_combout\ & ( (\pwm_6|Equal1~6_combout\ & (\pwm_6|half_duty[0][4]~q\ & \pwm_6|Equal1~5_combout\)) ) ) ) # ( !\pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_6|Equal1~4_combout\ & ( 
-- (\pwm_6|Equal1~6_combout\ & (!\pwm_6|half_duty[0][4]~q\ & \pwm_6|Equal1~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_6|ALT_INV_Equal1~6_combout\,
	datac => \pwm_6|ALT_INV_half_duty[0][4]~q\,
	datad => \pwm_6|ALT_INV_Equal1~5_combout\,
	datae => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	dataf => \pwm_6|ALT_INV_Equal1~4_combout\,
	combout => \pwm_6|Equal1~7_combout\);

-- Location: LABCELL_X23_Y9_N15
\pwm_6|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|half_duty_new[18]~feeder_combout\ = ( \pwm_6|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_6|ALT_INV_Mult0~35\,
	combout => \pwm_6|half_duty_new[18]~feeder_combout\);

-- Location: FF_X23_Y9_N16
\pwm_6|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(18));

-- Location: FF_X22_Y12_N53
\pwm_6|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][18]~q\);

-- Location: FF_X23_Y9_N31
\pwm_6|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|Mult0~34\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty_new\(17));

-- Location: FF_X22_Y12_N50
\pwm_6|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_6|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|half_duty[0][17]~q\);

-- Location: LABCELL_X21_Y14_N0
\pwm_6|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~0_combout\ = ( \pwm_6|half_duty[0][18]~q\ & ( \pwm_6|half_duty[0][17]~q\ & ( (\pwm_0|count[0][17]~q\ & \pwm_0|count[0][18]~q\) ) ) ) # ( !\pwm_6|half_duty[0][18]~q\ & ( \pwm_6|half_duty[0][17]~q\ & ( (\pwm_0|count[0][17]~q\ & 
-- !\pwm_0|count[0][18]~q\) ) ) ) # ( \pwm_6|half_duty[0][18]~q\ & ( !\pwm_6|half_duty[0][17]~q\ & ( (!\pwm_0|count[0][17]~q\ & \pwm_0|count[0][18]~q\) ) ) ) # ( !\pwm_6|half_duty[0][18]~q\ & ( !\pwm_6|half_duty[0][17]~q\ & ( (!\pwm_0|count[0][17]~q\ & 
-- !\pwm_0|count[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][17]~q\,
	datac => \pwm_0|ALT_INV_count[0][18]~q\,
	datae => \pwm_6|ALT_INV_half_duty[0][18]~q\,
	dataf => \pwm_6|ALT_INV_half_duty[0][17]~q\,
	combout => \pwm_6|Equal1~0_combout\);

-- Location: LABCELL_X21_Y12_N42
\pwm_6|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal1~8_combout\ = ( \pwm_6|Equal1~7_combout\ & ( \pwm_6|Equal1~0_combout\ & ( (\pwm_6|Equal1~1_combout\ & (\pwm_6|Equal1~2_combout\ & \pwm_6|Equal1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_Equal1~1_combout\,
	datab => \pwm_6|ALT_INV_Equal1~2_combout\,
	datac => \pwm_6|ALT_INV_Equal1~3_combout\,
	datae => \pwm_6|ALT_INV_Equal1~7_combout\,
	dataf => \pwm_6|ALT_INV_Equal1~0_combout\,
	combout => \pwm_6|Equal1~8_combout\);

-- Location: LABCELL_X22_Y12_N0
\pwm_6|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~61_sumout\ = SUM(( !\pwm_6|half_duty[0][0]~q\ ) + ( !\pwm_6|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_6|Add1~62\ = CARRY(( !\pwm_6|half_duty[0][0]~q\ ) + ( !\pwm_6|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_6|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_6|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_6|Add1~61_sumout\,
	cout => \pwm_6|Add1~62\);

-- Location: LABCELL_X22_Y12_N3
\pwm_6|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~65_sumout\ = SUM(( !\pwm_6|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_6|Add1~62\ ))
-- \pwm_6|Add1~66\ = CARRY(( !\pwm_6|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_6|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_6|Add1~62\,
	sumout => \pwm_6|Add1~65_sumout\,
	cout => \pwm_6|Add1~66\);

-- Location: LABCELL_X22_Y12_N6
\pwm_6|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~37_sumout\ = SUM(( !\pwm_6|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_6|Add1~66\ ))
-- \pwm_6|Add1~38\ = CARRY(( !\pwm_6|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_6|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_6|Add1~66\,
	sumout => \pwm_6|Add1~37_sumout\,
	cout => \pwm_6|Add1~38\);

-- Location: LABCELL_X22_Y12_N9
\pwm_6|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~41_sumout\ = SUM(( !\pwm_6|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_6|Add1~38\ ))
-- \pwm_6|Add1~42\ = CARRY(( !\pwm_6|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_6|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_6|Add1~38\,
	sumout => \pwm_6|Add1~41_sumout\,
	cout => \pwm_6|Add1~42\);

-- Location: LABCELL_X22_Y12_N12
\pwm_6|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~45_sumout\ = SUM(( !\pwm_6|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_6|Add1~42\ ))
-- \pwm_6|Add1~46\ = CARRY(( !\pwm_6|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_6|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_6|Add1~42\,
	sumout => \pwm_6|Add1~45_sumout\,
	cout => \pwm_6|Add1~46\);

-- Location: LABCELL_X22_Y12_N15
\pwm_6|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~9_sumout\ = SUM(( !\pwm_6|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_6|Add1~46\ ))
-- \pwm_6|Add1~10\ = CARRY(( !\pwm_6|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_6|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_6|Add1~46\,
	sumout => \pwm_6|Add1~9_sumout\,
	cout => \pwm_6|Add1~10\);

-- Location: LABCELL_X22_Y12_N18
\pwm_6|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~13_sumout\ = SUM(( !\pwm_6|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_6|Add1~10\ ))
-- \pwm_6|Add1~14\ = CARRY(( !\pwm_6|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_6|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_6|Add1~10\,
	sumout => \pwm_6|Add1~13_sumout\,
	cout => \pwm_6|Add1~14\);

-- Location: LABCELL_X22_Y12_N21
\pwm_6|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~17_sumout\ = SUM(( !\pwm_6|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_6|Add1~14\ ))
-- \pwm_6|Add1~18\ = CARRY(( !\pwm_6|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_6|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_6|Add1~14\,
	sumout => \pwm_6|Add1~17_sumout\,
	cout => \pwm_6|Add1~18\);

-- Location: LABCELL_X22_Y12_N24
\pwm_6|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~69_sumout\ = SUM(( !\pwm_6|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_6|Add1~18\ ))
-- \pwm_6|Add1~70\ = CARRY(( !\pwm_6|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_6|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_6|Add1~18\,
	sumout => \pwm_6|Add1~69_sumout\,
	cout => \pwm_6|Add1~70\);

-- Location: LABCELL_X22_Y12_N27
\pwm_6|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~73_sumout\ = SUM(( !\pwm_6|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_6|Add1~70\ ))
-- \pwm_6|Add1~74\ = CARRY(( !\pwm_6|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_6|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_6|Add1~70\,
	sumout => \pwm_6|Add1~73_sumout\,
	cout => \pwm_6|Add1~74\);

-- Location: LABCELL_X22_Y12_N30
\pwm_6|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~49_sumout\ = SUM(( !\pwm_6|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_6|Add1~74\ ))
-- \pwm_6|Add1~50\ = CARRY(( !\pwm_6|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_6|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_6|Add1~74\,
	sumout => \pwm_6|Add1~49_sumout\,
	cout => \pwm_6|Add1~50\);

-- Location: LABCELL_X22_Y12_N33
\pwm_6|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~53_sumout\ = SUM(( !\pwm_6|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_6|Add1~50\ ))
-- \pwm_6|Add1~54\ = CARRY(( !\pwm_6|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_6|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_6|Add1~50\,
	sumout => \pwm_6|Add1~53_sumout\,
	cout => \pwm_6|Add1~54\);

-- Location: LABCELL_X22_Y12_N36
\pwm_6|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~57_sumout\ = SUM(( !\pwm_6|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_6|Add1~54\ ))
-- \pwm_6|Add1~58\ = CARRY(( !\pwm_6|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_6|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_6|Add1~54\,
	sumout => \pwm_6|Add1~57_sumout\,
	cout => \pwm_6|Add1~58\);

-- Location: LABCELL_X22_Y12_N39
\pwm_6|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~29_sumout\ = SUM(( !\pwm_6|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_6|Add1~58\ ))
-- \pwm_6|Add1~30\ = CARRY(( !\pwm_6|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_6|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_6|Add1~58\,
	sumout => \pwm_6|Add1~29_sumout\,
	cout => \pwm_6|Add1~30\);

-- Location: LABCELL_X22_Y12_N42
\pwm_6|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~33_sumout\ = SUM(( !\pwm_6|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_6|Add1~30\ ))
-- \pwm_6|Add1~34\ = CARRY(( !\pwm_6|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_6|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_6|Add1~30\,
	sumout => \pwm_6|Add1~33_sumout\,
	cout => \pwm_6|Add1~34\);

-- Location: LABCELL_X22_Y12_N45
\pwm_6|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~21_sumout\ = SUM(( !\pwm_6|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_6|Add1~34\ ))
-- \pwm_6|Add1~22\ = CARRY(( !\pwm_6|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_6|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_6|Add1~34\,
	sumout => \pwm_6|Add1~21_sumout\,
	cout => \pwm_6|Add1~22\);

-- Location: LABCELL_X22_Y12_N48
\pwm_6|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~25_sumout\ = SUM(( !\pwm_6|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_6|Add1~22\ ))
-- \pwm_6|Add1~26\ = CARRY(( !\pwm_6|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_6|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_6|Add1~22\,
	sumout => \pwm_6|Add1~25_sumout\,
	cout => \pwm_6|Add1~26\);

-- Location: LABCELL_X22_Y12_N51
\pwm_6|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~1_sumout\ = SUM(( !\pwm_6|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_6|Add1~26\ ))
-- \pwm_6|Add1~2\ = CARRY(( !\pwm_6|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_6|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_6|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_6|Add1~26\,
	sumout => \pwm_6|Add1~1_sumout\,
	cout => \pwm_6|Add1~2\);

-- Location: LABCELL_X22_Y12_N54
\pwm_6|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_6|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_6|Add1~2\,
	sumout => \pwm_6|Add1~5_sumout\);

-- Location: LABCELL_X23_Y12_N36
\pwm_6|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~0_combout\ = ( \pwm_6|Add1~17_sumout\ & ( \pwm_6|Add1~9_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|Add1~13_sumout\)))) ) ) ) # ( !\pwm_6|Add1~17_sumout\ & ( 
-- \pwm_6|Add1~9_sumout\ & ( (\pwm_0|count[0][6]~DUPLICATE_q\ & (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|Add1~13_sumout\)))) ) ) ) # ( \pwm_6|Add1~17_sumout\ & ( !\pwm_6|Add1~9_sumout\ & ( 
-- (!\pwm_0|count[0][6]~DUPLICATE_q\ & (\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|Add1~13_sumout\)))) ) ) ) # ( !\pwm_6|Add1~17_sumout\ & ( !\pwm_6|Add1~9_sumout\ & ( (!\pwm_0|count[0][6]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_6|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datad => \pwm_6|ALT_INV_Add1~13_sumout\,
	datae => \pwm_6|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_6|ALT_INV_Add1~9_sumout\,
	combout => \pwm_6|pwm_out~0_combout\);

-- Location: LABCELL_X23_Y12_N6
\pwm_6|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~1_combout\ = ( \pwm_6|pwm_out~0_combout\ & ( \pwm_6|Add1~1_sumout\ & ( (\pwm_0|count[0][18]~DUPLICATE_q\ & (!\pwm_0|count[0][19]~q\ $ (!\pwm_6|Add1~5_sumout\))) ) ) ) # ( \pwm_6|pwm_out~0_combout\ & ( !\pwm_6|Add1~1_sumout\ & ( 
-- (!\pwm_0|count[0][18]~DUPLICATE_q\ & (!\pwm_0|count[0][19]~q\ $ (!\pwm_6|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010000100100000000000000000000001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datac => \pwm_6|ALT_INV_Add1~5_sumout\,
	datae => \pwm_6|ALT_INV_pwm_out~0_combout\,
	dataf => \pwm_6|ALT_INV_Add1~1_sumout\,
	combout => \pwm_6|pwm_out~1_combout\);

-- Location: LABCELL_X23_Y12_N24
\pwm_6|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~6_combout\ = ( \pwm_6|Add1~73_sumout\ & ( \pwm_6|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_6|Add1~73_sumout\ & ( \pwm_6|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) ) # 
-- ( \pwm_6|Add1~73_sumout\ & ( !\pwm_6|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_6|Add1~73_sumout\ & ( !\pwm_6|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][9]~q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_6|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_6|ALT_INV_Add1~69_sumout\,
	combout => \pwm_6|pwm_out~6_combout\);

-- Location: LABCELL_X21_Y12_N24
\pwm_6|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~5_combout\ = ( \pwm_6|Add1~65_sumout\ & ( \pwm_6|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~DUPLICATE_q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_6|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_6|Add1~65_sumout\ & ( 
-- \pwm_6|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~DUPLICATE_q\ & (\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_6|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( \pwm_6|Add1~65_sumout\ & ( !\pwm_6|Add1~61_sumout\ & ( (\pwm_0|count[0][2]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_6|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_6|Add1~65_sumout\ & ( !\pwm_6|Add1~61_sumout\ & ( (!\pwm_0|count[0][2]~DUPLICATE_q\ & (!\pwm_0|count[0][1]~DUPLICATE_q\ & 
-- (!\pwm_6|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datac => \pwm_6|ALT_INV_half_duty[0][0]~q\,
	datad => \pwm_0|ALT_INV_count[0][0]~q\,
	datae => \pwm_6|ALT_INV_Add1~65_sumout\,
	dataf => \pwm_6|ALT_INV_Add1~61_sumout\,
	combout => \pwm_6|pwm_out~5_combout\);

-- Location: LABCELL_X23_Y12_N0
\pwm_6|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_6|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_6|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_6|ALT_INV_Add1~49_sumout\,
	combout => \pwm_6|Equal2~0_combout\);

-- Location: LABCELL_X23_Y12_N33
\pwm_6|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|Equal2~1_combout\ = ( !\pwm_6|Add1~53_sumout\ & ( \pwm_0|count[0][12]~q\ ) ) # ( \pwm_6|Add1~53_sumout\ & ( !\pwm_0|count[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_6|ALT_INV_Add1~53_sumout\,
	dataf => \pwm_0|ALT_INV_count[0][12]~q\,
	combout => \pwm_6|Equal2~1_combout\);

-- Location: LABCELL_X23_Y12_N54
\pwm_6|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~7_combout\ = ( !\pwm_6|Equal2~0_combout\ & ( !\pwm_6|Equal2~1_combout\ & ( (\pwm_6|pwm_out~6_combout\ & (\pwm_6|pwm_out~5_combout\ & (!\pwm_6|Add1~57_sumout\ $ (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_pwm_out~6_combout\,
	datab => \pwm_6|ALT_INV_pwm_out~5_combout\,
	datac => \pwm_6|ALT_INV_Add1~57_sumout\,
	datad => \pwm_0|ALT_INV_count[0][13]~q\,
	datae => \pwm_6|ALT_INV_Equal2~0_combout\,
	dataf => \pwm_6|ALT_INV_Equal2~1_combout\,
	combout => \pwm_6|pwm_out~7_combout\);

-- Location: LABCELL_X23_Y12_N15
\pwm_6|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~2_combout\ = ( \pwm_6|Add1~25_sumout\ & ( \pwm_6|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_6|Add1~25_sumout\ & ( \pwm_6|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_6|Add1~25_sumout\ & ( !\pwm_6|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_6|Add1~25_sumout\ & ( !\pwm_6|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_6|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_6|ALT_INV_Add1~21_sumout\,
	combout => \pwm_6|pwm_out~2_combout\);

-- Location: LABCELL_X23_Y12_N18
\pwm_6|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~3_combout\ = ( \pwm_6|Add1~45_sumout\ & ( \pwm_6|Add1~37_sumout\ & ( (\pwm_0|count[0][3]~q\ & (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_6|Add1~41_sumout\)))) ) ) ) # ( !\pwm_6|Add1~45_sumout\ & ( 
-- \pwm_6|Add1~37_sumout\ & ( (\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_6|Add1~41_sumout\)))) ) ) ) # ( \pwm_6|Add1~45_sumout\ & ( !\pwm_6|Add1~37_sumout\ & ( (!\pwm_0|count[0][3]~q\ & 
-- (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_6|Add1~41_sumout\)))) ) ) ) # ( !\pwm_6|Add1~45_sumout\ & ( !\pwm_6|Add1~37_sumout\ & ( (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_6|Add1~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][3]~q\,
	datab => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datad => \pwm_6|ALT_INV_Add1~41_sumout\,
	datae => \pwm_6|ALT_INV_Add1~45_sumout\,
	dataf => \pwm_6|ALT_INV_Add1~37_sumout\,
	combout => \pwm_6|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y12_N48
\pwm_6|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~4_combout\ = ( \pwm_6|Add1~33_sumout\ & ( \pwm_6|pwm_out~3_combout\ & ( (\pwm_0|count[0][15]~q\ & (!\pwm_6|Add1~29_sumout\ $ (\pwm_0|count[0][14]~q\))) ) ) ) # ( !\pwm_6|Add1~33_sumout\ & ( \pwm_6|pwm_out~3_combout\ & ( 
-- (!\pwm_0|count[0][15]~q\ & (!\pwm_6|Add1~29_sumout\ $ (\pwm_0|count[0][14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100100001000010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_Add1~29_sumout\,
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_0|ALT_INV_count[0][14]~q\,
	datae => \pwm_6|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_6|ALT_INV_pwm_out~3_combout\,
	combout => \pwm_6|pwm_out~4_combout\);

-- Location: LABCELL_X23_Y12_N42
\pwm_6|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_6|pwm_out~8_combout\ = ( \pwm_6|pwm_out\(0) & ( \pwm_6|pwm_out~4_combout\ & ( !\pwm_6|Equal1~8_combout\ ) ) ) # ( !\pwm_6|pwm_out\(0) & ( \pwm_6|pwm_out~4_combout\ & ( (!\pwm_6|Equal1~8_combout\ & (\pwm_6|pwm_out~1_combout\ & 
-- (\pwm_6|pwm_out~7_combout\ & \pwm_6|pwm_out~2_combout\))) ) ) ) # ( \pwm_6|pwm_out\(0) & ( !\pwm_6|pwm_out~4_combout\ & ( !\pwm_6|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_6|ALT_INV_Equal1~8_combout\,
	datab => \pwm_6|ALT_INV_pwm_out~1_combout\,
	datac => \pwm_6|ALT_INV_pwm_out~7_combout\,
	datad => \pwm_6|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_6|ALT_INV_pwm_out\(0),
	dataf => \pwm_6|ALT_INV_pwm_out~4_combout\,
	combout => \pwm_6|pwm_out~8_combout\);

-- Location: FF_X23_Y12_N43
\pwm_6|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_6|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_6|pwm_out\(0));

-- Location: DSP_X16_Y13_N0
\pwm_7|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_7|Mult0~8_ACLR_bus\,
	clk => \pwm_7|Mult0~8_CLK_bus\,
	ena => \pwm_7|Mult0~8_ENA_bus\,
	ax => \pwm_7|Mult0~8_AX_bus\,
	ay => \pwm_7|Mult0~8_AY_bus\,
	resulta => \pwm_7|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X15_Y13_N54
\pwm_7|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[6]~feeder_combout\ = ( \pwm_7|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~23\,
	combout => \pwm_7|half_duty_new[6]~feeder_combout\);

-- Location: FF_X15_Y13_N55
\pwm_7|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(6));

-- Location: FF_X14_Y14_N16
\pwm_7|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][6]~q\);

-- Location: LABCELL_X15_Y13_N12
\pwm_7|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[5]~feeder_combout\ = ( \pwm_7|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~22\,
	combout => \pwm_7|half_duty_new[5]~feeder_combout\);

-- Location: FF_X15_Y13_N13
\pwm_7|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(5));

-- Location: FF_X14_Y14_N13
\pwm_7|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][5]~q\);

-- Location: FF_X15_Y13_N34
\pwm_7|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~21\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(4));

-- Location: FF_X14_Y14_N10
\pwm_7|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][4]~q\);

-- Location: LABCELL_X15_Y13_N18
\pwm_7|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[3]~feeder_combout\ = ( \pwm_7|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~20\,
	combout => \pwm_7|half_duty_new[3]~feeder_combout\);

-- Location: FF_X15_Y13_N19
\pwm_7|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(3));

-- Location: FF_X14_Y14_N8
\pwm_7|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][3]~q\);

-- Location: LABCELL_X15_Y13_N24
\pwm_7|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[2]~feeder_combout\ = ( \pwm_7|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~19\,
	combout => \pwm_7|half_duty_new[2]~feeder_combout\);

-- Location: FF_X15_Y13_N26
\pwm_7|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(2));

-- Location: FF_X14_Y14_N5
\pwm_7|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][2]~q\);

-- Location: LABCELL_X15_Y13_N21
\pwm_7|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[1]~feeder_combout\ = ( \pwm_7|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~18\,
	combout => \pwm_7|half_duty_new[1]~feeder_combout\);

-- Location: FF_X15_Y13_N22
\pwm_7|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(1));

-- Location: LABCELL_X15_Y14_N6
\pwm_7|half_duty[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty[0][1]~feeder_combout\ = ( \pwm_7|half_duty_new\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_half_duty_new\(1),
	combout => \pwm_7|half_duty[0][1]~feeder_combout\);

-- Location: FF_X15_Y14_N8
\pwm_7|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty[0][1]~feeder_combout\,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][1]~q\);

-- Location: FF_X15_Y13_N29
\pwm_7|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(0));

-- Location: FF_X14_Y14_N2
\pwm_7|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][0]~q\);

-- Location: MLABCELL_X14_Y14_N0
\pwm_7|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~61_sumout\ = SUM(( !\pwm_7|half_duty[0][0]~q\ ) + ( !\pwm_7|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_7|Add1~62\ = CARRY(( !\pwm_7|half_duty[0][0]~q\ ) + ( !\pwm_7|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_7|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_7|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_7|Add1~61_sumout\,
	cout => \pwm_7|Add1~62\);

-- Location: MLABCELL_X14_Y14_N3
\pwm_7|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~65_sumout\ = SUM(( !\pwm_7|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_7|Add1~62\ ))
-- \pwm_7|Add1~66\ = CARRY(( !\pwm_7|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_7|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_7|Add1~62\,
	sumout => \pwm_7|Add1~65_sumout\,
	cout => \pwm_7|Add1~66\);

-- Location: MLABCELL_X14_Y14_N6
\pwm_7|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~37_sumout\ = SUM(( !\pwm_7|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_7|Add1~66\ ))
-- \pwm_7|Add1~38\ = CARRY(( !\pwm_7|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_7|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_7|Add1~66\,
	sumout => \pwm_7|Add1~37_sumout\,
	cout => \pwm_7|Add1~38\);

-- Location: MLABCELL_X14_Y14_N9
\pwm_7|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~41_sumout\ = SUM(( !\pwm_7|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_7|Add1~38\ ))
-- \pwm_7|Add1~42\ = CARRY(( !\pwm_7|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_7|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_7|Add1~38\,
	sumout => \pwm_7|Add1~41_sumout\,
	cout => \pwm_7|Add1~42\);

-- Location: MLABCELL_X14_Y14_N12
\pwm_7|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~45_sumout\ = SUM(( !\pwm_7|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_7|Add1~42\ ))
-- \pwm_7|Add1~46\ = CARRY(( !\pwm_7|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_7|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_7|Add1~42\,
	sumout => \pwm_7|Add1~45_sumout\,
	cout => \pwm_7|Add1~46\);

-- Location: MLABCELL_X14_Y14_N15
\pwm_7|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~9_sumout\ = SUM(( !\pwm_7|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_7|Add1~46\ ))
-- \pwm_7|Add1~10\ = CARRY(( !\pwm_7|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_7|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_7|Add1~46\,
	sumout => \pwm_7|Add1~9_sumout\,
	cout => \pwm_7|Add1~10\);

-- Location: LABCELL_X15_Y13_N9
\pwm_7|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[8]~feeder_combout\ = ( \pwm_7|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~25\,
	combout => \pwm_7|half_duty_new[8]~feeder_combout\);

-- Location: FF_X15_Y13_N10
\pwm_7|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(8));

-- Location: FF_X14_Y14_N22
\pwm_7|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][8]~q\);

-- Location: FF_X15_Y13_N5
\pwm_7|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~24\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(7));

-- Location: FF_X14_Y14_N19
\pwm_7|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][7]~q\);

-- Location: MLABCELL_X14_Y14_N18
\pwm_7|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~13_sumout\ = SUM(( !\pwm_7|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_7|Add1~10\ ))
-- \pwm_7|Add1~14\ = CARRY(( !\pwm_7|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_7|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_7|Add1~10\,
	sumout => \pwm_7|Add1~13_sumout\,
	cout => \pwm_7|Add1~14\);

-- Location: MLABCELL_X14_Y14_N21
\pwm_7|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~17_sumout\ = SUM(( !\pwm_7|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_7|Add1~14\ ))
-- \pwm_7|Add1~18\ = CARRY(( !\pwm_7|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_7|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_7|Add1~14\,
	sumout => \pwm_7|Add1~17_sumout\,
	cout => \pwm_7|Add1~18\);

-- Location: LABCELL_X13_Y14_N30
\pwm_7|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~0_combout\ = ( \pwm_7|Add1~17_sumout\ & ( \pwm_7|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_7|Add1~9_sumout\)))) ) ) ) # ( !\pwm_7|Add1~17_sumout\ & ( 
-- \pwm_7|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_7|Add1~9_sumout\)))) ) ) ) # ( \pwm_7|Add1~17_sumout\ & ( !\pwm_7|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_7|Add1~9_sumout\)))) ) ) ) # ( !\pwm_7|Add1~17_sumout\ & ( !\pwm_7|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ 
-- (\pwm_7|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][7]~q\,
	datad => \pwm_7|ALT_INV_Add1~9_sumout\,
	datae => \pwm_7|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~13_sumout\,
	combout => \pwm_7|pwm_out~0_combout\);

-- Location: LABCELL_X15_Y13_N39
\pwm_7|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[18]~feeder_combout\ = ( \pwm_7|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~35\,
	combout => \pwm_7|half_duty_new[18]~feeder_combout\);

-- Location: FF_X15_Y13_N40
\pwm_7|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(18));

-- Location: FF_X14_Y14_N52
\pwm_7|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][18]~q\);

-- Location: LABCELL_X15_Y13_N6
\pwm_7|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[17]~feeder_combout\ = ( \pwm_7|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~34\,
	combout => \pwm_7|half_duty_new[17]~feeder_combout\);

-- Location: FF_X15_Y13_N8
\pwm_7|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(17));

-- Location: FF_X14_Y14_N49
\pwm_7|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][17]~q\);

-- Location: LABCELL_X15_Y13_N51
\pwm_7|half_duty_new[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[16]~feeder_combout\ = ( \pwm_7|Mult0~33\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~33\,
	combout => \pwm_7|half_duty_new[16]~feeder_combout\);

-- Location: FF_X15_Y13_N52
\pwm_7|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[16]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(16));

-- Location: FF_X14_Y14_N46
\pwm_7|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][16]~q\);

-- Location: LABCELL_X17_Y13_N12
\pwm_7|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[15]~feeder_combout\ = ( \pwm_7|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~32\,
	combout => \pwm_7|half_duty_new[15]~feeder_combout\);

-- Location: FF_X17_Y13_N13
\pwm_7|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(15));

-- Location: FF_X14_Y14_N43
\pwm_7|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][15]~q\);

-- Location: FF_X15_Y13_N47
\pwm_7|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(14));

-- Location: FF_X14_Y14_N40
\pwm_7|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][14]~q\);

-- Location: LABCELL_X15_Y13_N15
\pwm_7|half_duty_new[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[13]~feeder_combout\ = ( \pwm_7|Mult0~30\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~30\,
	combout => \pwm_7|half_duty_new[13]~feeder_combout\);

-- Location: FF_X15_Y13_N16
\pwm_7|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[13]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(13));

-- Location: FF_X14_Y14_N37
\pwm_7|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][13]~q\);

-- Location: LABCELL_X17_Y13_N54
\pwm_7|half_duty_new[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|half_duty_new[12]~feeder_combout\ = ( \pwm_7|Mult0~29\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_7|ALT_INV_Mult0~29\,
	combout => \pwm_7|half_duty_new[12]~feeder_combout\);

-- Location: FF_X17_Y13_N55
\pwm_7|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|half_duty_new[12]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(12));

-- Location: FF_X14_Y14_N34
\pwm_7|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][12]~q\);

-- Location: FF_X15_Y13_N31
\pwm_7|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(11));

-- Location: FF_X14_Y14_N31
\pwm_7|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][11]~q\);

-- Location: FF_X15_Y13_N38
\pwm_7|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(10));

-- Location: FF_X14_Y14_N29
\pwm_7|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][10]~q\);

-- Location: FF_X15_Y13_N50
\pwm_7|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty_new\(9));

-- Location: FF_X14_Y14_N25
\pwm_7|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_7|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|half_duty[0][9]~q\);

-- Location: MLABCELL_X14_Y14_N24
\pwm_7|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~69_sumout\ = SUM(( !\pwm_7|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_7|Add1~18\ ))
-- \pwm_7|Add1~70\ = CARRY(( !\pwm_7|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_7|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_7|Add1~18\,
	sumout => \pwm_7|Add1~69_sumout\,
	cout => \pwm_7|Add1~70\);

-- Location: MLABCELL_X14_Y14_N27
\pwm_7|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~73_sumout\ = SUM(( !\pwm_7|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_7|Add1~70\ ))
-- \pwm_7|Add1~74\ = CARRY(( !\pwm_7|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_7|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_7|Add1~70\,
	sumout => \pwm_7|Add1~73_sumout\,
	cout => \pwm_7|Add1~74\);

-- Location: MLABCELL_X14_Y14_N30
\pwm_7|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~49_sumout\ = SUM(( !\pwm_7|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_7|Add1~74\ ))
-- \pwm_7|Add1~50\ = CARRY(( !\pwm_7|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_7|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_7|Add1~74\,
	sumout => \pwm_7|Add1~49_sumout\,
	cout => \pwm_7|Add1~50\);

-- Location: MLABCELL_X14_Y14_N33
\pwm_7|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~53_sumout\ = SUM(( !\pwm_7|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_7|Add1~50\ ))
-- \pwm_7|Add1~54\ = CARRY(( !\pwm_7|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_7|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_7|Add1~50\,
	sumout => \pwm_7|Add1~53_sumout\,
	cout => \pwm_7|Add1~54\);

-- Location: MLABCELL_X14_Y14_N36
\pwm_7|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~57_sumout\ = SUM(( !\pwm_7|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_7|Add1~54\ ))
-- \pwm_7|Add1~58\ = CARRY(( !\pwm_7|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_7|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_7|Add1~54\,
	sumout => \pwm_7|Add1~57_sumout\,
	cout => \pwm_7|Add1~58\);

-- Location: MLABCELL_X14_Y14_N39
\pwm_7|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~29_sumout\ = SUM(( !\pwm_7|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_7|Add1~58\ ))
-- \pwm_7|Add1~30\ = CARRY(( !\pwm_7|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_7|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_7|Add1~58\,
	sumout => \pwm_7|Add1~29_sumout\,
	cout => \pwm_7|Add1~30\);

-- Location: MLABCELL_X14_Y14_N42
\pwm_7|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~33_sumout\ = SUM(( !\pwm_7|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_7|Add1~30\ ))
-- \pwm_7|Add1~34\ = CARRY(( !\pwm_7|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_7|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_7|Add1~30\,
	sumout => \pwm_7|Add1~33_sumout\,
	cout => \pwm_7|Add1~34\);

-- Location: MLABCELL_X14_Y14_N45
\pwm_7|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~21_sumout\ = SUM(( !\pwm_7|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_7|Add1~34\ ))
-- \pwm_7|Add1~22\ = CARRY(( !\pwm_7|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_7|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_7|Add1~34\,
	sumout => \pwm_7|Add1~21_sumout\,
	cout => \pwm_7|Add1~22\);

-- Location: MLABCELL_X14_Y14_N48
\pwm_7|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~25_sumout\ = SUM(( !\pwm_7|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_7|Add1~22\ ))
-- \pwm_7|Add1~26\ = CARRY(( !\pwm_7|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_7|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_7|Add1~22\,
	sumout => \pwm_7|Add1~25_sumout\,
	cout => \pwm_7|Add1~26\);

-- Location: MLABCELL_X14_Y14_N51
\pwm_7|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~1_sumout\ = SUM(( !\pwm_7|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_7|Add1~26\ ))
-- \pwm_7|Add1~2\ = CARRY(( !\pwm_7|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_7|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_7|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_7|Add1~26\,
	sumout => \pwm_7|Add1~1_sumout\,
	cout => \pwm_7|Add1~2\);

-- Location: MLABCELL_X14_Y14_N54
\pwm_7|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_7|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_7|Add1~2\,
	sumout => \pwm_7|Add1~5_sumout\);

-- Location: LABCELL_X13_Y14_N48
\pwm_7|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~1_combout\ = ( \pwm_7|Add1~5_sumout\ & ( \pwm_7|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_7|pwm_out~0_combout\ & \pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( !\pwm_7|Add1~5_sumout\ & ( \pwm_7|Add1~1_sumout\ & ( 
-- (\pwm_0|count[0][19]~q\ & (\pwm_7|pwm_out~0_combout\ & \pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( \pwm_7|Add1~5_sumout\ & ( !\pwm_7|Add1~1_sumout\ & ( (!\pwm_0|count[0][19]~q\ & (\pwm_7|pwm_out~0_combout\ & !\pwm_0|count[0][18]~DUPLICATE_q\)) ) ) ) # ( 
-- !\pwm_7|Add1~5_sumout\ & ( !\pwm_7|Add1~1_sumout\ & ( (\pwm_0|count[0][19]~q\ & (\pwm_7|pwm_out~0_combout\ & !\pwm_0|count[0][18]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001000000010000000000001000000010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_7|ALT_INV_pwm_out~0_combout\,
	datac => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datae => \pwm_7|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~1_sumout\,
	combout => \pwm_7|pwm_out~1_combout\);

-- Location: LABCELL_X13_Y15_N48
\pwm_7|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~3_combout\ = ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( \pwm_7|half_duty[0][9]~q\ & ( (\pwm_7|half_duty[0][8]~q\ & (\pwm_0|count[0][9]~DUPLICATE_q\ & (!\pwm_7|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][8]~DUPLICATE_q\ & ( \pwm_7|half_duty[0][9]~q\ & ( (!\pwm_7|half_duty[0][8]~q\ & (\pwm_0|count[0][9]~DUPLICATE_q\ & (!\pwm_7|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( 
-- !\pwm_7|half_duty[0][9]~q\ & ( (\pwm_7|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ & (!\pwm_7|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( !\pwm_0|count[0][8]~DUPLICATE_q\ & ( !\pwm_7|half_duty[0][9]~q\ & ( 
-- (!\pwm_7|half_duty[0][8]~q\ & (!\pwm_0|count[0][9]~DUPLICATE_q\ & (!\pwm_7|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_half_duty[0][8]~q\,
	datab => \pwm_7|ALT_INV_half_duty[0][10]~q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datad => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datae => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	dataf => \pwm_7|ALT_INV_half_duty[0][9]~q\,
	combout => \pwm_7|Equal1~3_combout\);

-- Location: LABCELL_X13_Y15_N30
\pwm_7|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~2_combout\ = ( \pwm_0|count[0][13]~q\ & ( \pwm_0|count[0][12]~q\ & ( (\pwm_7|half_duty[0][12]~q\ & (\pwm_7|half_duty[0][13]~q\ & (!\pwm_7|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) ) ) ) # ( !\pwm_0|count[0][13]~q\ & ( 
-- \pwm_0|count[0][12]~q\ & ( (\pwm_7|half_duty[0][12]~q\ & (!\pwm_7|half_duty[0][13]~q\ & (!\pwm_7|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) ) ) ) # ( \pwm_0|count[0][13]~q\ & ( !\pwm_0|count[0][12]~q\ & ( (!\pwm_7|half_duty[0][12]~q\ & 
-- (\pwm_7|half_duty[0][13]~q\ & (!\pwm_7|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) ) ) ) # ( !\pwm_0|count[0][13]~q\ & ( !\pwm_0|count[0][12]~q\ & ( (!\pwm_7|half_duty[0][12]~q\ & (!\pwm_7|half_duty[0][13]~q\ & (!\pwm_7|half_duty[0][11]~q\ $ 
-- (\pwm_0|count[0][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_half_duty[0][11]~q\,
	datab => \pwm_0|ALT_INV_count[0][11]~q\,
	datac => \pwm_7|ALT_INV_half_duty[0][12]~q\,
	datad => \pwm_7|ALT_INV_half_duty[0][13]~q\,
	datae => \pwm_0|ALT_INV_count[0][13]~q\,
	dataf => \pwm_0|ALT_INV_count[0][12]~q\,
	combout => \pwm_7|Equal1~2_combout\);

-- Location: LABCELL_X13_Y15_N57
\pwm_7|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~6_combout\ = ( \pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (\pwm_7|half_duty[0][3]~q\ & \pwm_7|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (\pwm_7|half_duty[0][3]~q\ & 
-- !\pwm_7|half_duty[0][2]~q\) ) ) ) # ( \pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (!\pwm_7|half_duty[0][3]~q\ & \pwm_7|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (!\pwm_7|half_duty[0][3]~q\ & 
-- !\pwm_7|half_duty[0][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_7|ALT_INV_half_duty[0][3]~q\,
	datac => \pwm_7|ALT_INV_half_duty[0][2]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~q\,
	dataf => \pwm_0|ALT_INV_count[0][3]~q\,
	combout => \pwm_7|Equal1~6_combout\);

-- Location: LABCELL_X15_Y14_N36
\pwm_7|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~5_combout\ = ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( \pwm_0|count[0][0]~q\ & ( (\pwm_7|half_duty[0][0]~q\ & (!\pwm_0|count[0][19]~q\ & \pwm_7|half_duty[0][1]~q\)) ) ) ) # ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( \pwm_0|count[0][0]~q\ & ( 
-- (\pwm_7|half_duty[0][0]~q\ & (!\pwm_0|count[0][19]~q\ & !\pwm_7|half_duty[0][1]~q\)) ) ) ) # ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( !\pwm_0|count[0][0]~q\ & ( (!\pwm_7|half_duty[0][0]~q\ & (!\pwm_0|count[0][19]~q\ & \pwm_7|half_duty[0][1]~q\)) ) ) ) # ( 
-- !\pwm_0|count[0][1]~DUPLICATE_q\ & ( !\pwm_0|count[0][0]~q\ & ( (!\pwm_7|half_duty[0][0]~q\ & (!\pwm_0|count[0][19]~q\ & !\pwm_7|half_duty[0][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000001100000000110000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_7|ALT_INV_half_duty[0][0]~q\,
	datac => \pwm_0|ALT_INV_count[0][19]~q\,
	datad => \pwm_7|ALT_INV_half_duty[0][1]~q\,
	datae => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][0]~q\,
	combout => \pwm_7|Equal1~5_combout\);

-- Location: LABCELL_X15_Y14_N15
\pwm_7|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~4_combout\ = ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_7|half_duty[0][5]~q\ & (\pwm_7|half_duty[0][6]~q\ & (!\pwm_7|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][6]~DUPLICATE_q\ & ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( (\pwm_7|half_duty[0][5]~q\ & (!\pwm_7|half_duty[0][6]~q\ & (!\pwm_7|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][5]~DUPLICATE_q\ & ( (!\pwm_7|half_duty[0][5]~q\ & (\pwm_7|half_duty[0][6]~q\ & (!\pwm_7|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( 
-- (!\pwm_7|half_duty[0][5]~q\ & (!\pwm_7|half_duty[0][6]~q\ & (!\pwm_7|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_half_duty[0][5]~q\,
	datab => \pwm_7|ALT_INV_half_duty[0][6]~q\,
	datac => \pwm_7|ALT_INV_half_duty[0][7]~q\,
	datad => \pwm_0|ALT_INV_count[0][7]~q\,
	datae => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	combout => \pwm_7|Equal1~4_combout\);

-- Location: LABCELL_X13_Y15_N36
\pwm_7|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~7_combout\ = ( \pwm_7|Equal1~5_combout\ & ( \pwm_7|Equal1~4_combout\ & ( (\pwm_7|Equal1~6_combout\ & (!\pwm_0|count[0][4]~DUPLICATE_q\ $ (\pwm_7|half_duty[0][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_7|ALT_INV_Equal1~6_combout\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datad => \pwm_7|ALT_INV_half_duty[0][4]~q\,
	datae => \pwm_7|ALT_INV_Equal1~5_combout\,
	dataf => \pwm_7|ALT_INV_Equal1~4_combout\,
	combout => \pwm_7|Equal1~7_combout\);

-- Location: LABCELL_X15_Y14_N54
\pwm_7|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~0_combout\ = ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( \pwm_0|count[0][18]~DUPLICATE_q\ & ( (\pwm_7|half_duty[0][17]~q\ & \pwm_7|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~DUPLICATE_q\ & ( \pwm_0|count[0][18]~DUPLICATE_q\ & ( 
-- (!\pwm_7|half_duty[0][17]~q\ & \pwm_7|half_duty[0][18]~q\) ) ) ) # ( \pwm_0|count[0][17]~DUPLICATE_q\ & ( !\pwm_0|count[0][18]~DUPLICATE_q\ & ( (\pwm_7|half_duty[0][17]~q\ & !\pwm_7|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][17]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][18]~DUPLICATE_q\ & ( (!\pwm_7|half_duty[0][17]~q\ & !\pwm_7|half_duty[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_7|ALT_INV_half_duty[0][17]~q\,
	datac => \pwm_7|ALT_INV_half_duty[0][18]~q\,
	datae => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	combout => \pwm_7|Equal1~0_combout\);

-- Location: LABCELL_X13_Y15_N24
\pwm_7|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~1_combout\ = ( \pwm_0|count[0][15]~q\ & ( \pwm_0|count[0][14]~q\ & ( (\pwm_7|half_duty[0][14]~q\ & (\pwm_7|half_duty[0][15]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_7|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( 
-- \pwm_0|count[0][14]~q\ & ( (\pwm_7|half_duty[0][14]~q\ & (!\pwm_7|half_duty[0][15]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_7|half_duty[0][16]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_7|half_duty[0][14]~q\ & 
-- (\pwm_7|half_duty[0][15]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_7|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_7|half_duty[0][14]~q\ & (!\pwm_7|half_duty[0][15]~q\ & (!\pwm_0|count[0][16]~q\ $ 
-- (\pwm_7|half_duty[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datab => \pwm_7|ALT_INV_half_duty[0][16]~q\,
	datac => \pwm_7|ALT_INV_half_duty[0][14]~q\,
	datad => \pwm_7|ALT_INV_half_duty[0][15]~q\,
	datae => \pwm_0|ALT_INV_count[0][15]~q\,
	dataf => \pwm_0|ALT_INV_count[0][14]~q\,
	combout => \pwm_7|Equal1~1_combout\);

-- Location: LABCELL_X13_Y15_N6
\pwm_7|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal1~8_combout\ = ( \pwm_7|Equal1~0_combout\ & ( \pwm_7|Equal1~1_combout\ & ( (\pwm_7|Equal1~3_combout\ & (\pwm_7|Equal1~2_combout\ & \pwm_7|Equal1~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_Equal1~3_combout\,
	datab => \pwm_7|ALT_INV_Equal1~2_combout\,
	datac => \pwm_7|ALT_INV_Equal1~7_combout\,
	datae => \pwm_7|ALT_INV_Equal1~0_combout\,
	dataf => \pwm_7|ALT_INV_Equal1~1_combout\,
	combout => \pwm_7|Equal1~8_combout\);

-- Location: LABCELL_X15_Y14_N0
\pwm_7|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~5_combout\ = ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( \pwm_7|Add1~61_sumout\ & ( (!\pwm_0|count[0][0]~q\ & (!\pwm_7|half_duty[0][0]~q\ & (!\pwm_7|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) # (\pwm_0|count[0][0]~q\ & 
-- (\pwm_7|half_duty[0][0]~q\ & (!\pwm_7|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( !\pwm_7|Add1~61_sumout\ & ( (!\pwm_0|count[0][0]~q\ & (!\pwm_7|half_duty[0][0]~q\ & (!\pwm_7|Add1~65_sumout\ $ 
-- (\pwm_0|count[0][2]~DUPLICATE_q\)))) # (\pwm_0|count[0][0]~q\ & (\pwm_7|half_duty[0][0]~q\ & (!\pwm_7|Add1~65_sumout\ $ (\pwm_0|count[0][2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][0]~q\,
	datab => \pwm_7|ALT_INV_Add1~65_sumout\,
	datac => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datad => \pwm_7|ALT_INV_half_duty[0][0]~q\,
	datae => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	dataf => \pwm_7|ALT_INV_Add1~61_sumout\,
	combout => \pwm_7|pwm_out~5_combout\);

-- Location: LABCELL_X13_Y14_N0
\pwm_7|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~6_combout\ = ( \pwm_7|Add1~73_sumout\ & ( \pwm_7|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & \pwm_0|count[0][9]~q\) ) ) ) # ( !\pwm_7|Add1~73_sumout\ & ( \pwm_7|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & \pwm_0|count[0][9]~q\) ) ) ) # 
-- ( \pwm_7|Add1~73_sumout\ & ( !\pwm_7|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & !\pwm_0|count[0][9]~q\) ) ) ) # ( !\pwm_7|Add1~73_sumout\ & ( !\pwm_7|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & !\pwm_0|count[0][9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000000000000110011000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][10]~q\,
	datad => \pwm_0|ALT_INV_count[0][9]~q\,
	datae => \pwm_7|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~69_sumout\,
	combout => \pwm_7|pwm_out~6_combout\);

-- Location: LABCELL_X13_Y14_N39
\pwm_7|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal2~0_combout\ = ( \pwm_7|Add1~49_sumout\ & ( !\pwm_0|count[0][11]~q\ ) ) # ( !\pwm_7|Add1~49_sumout\ & ( \pwm_0|count[0][11]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_7|ALT_INV_Add1~49_sumout\,
	combout => \pwm_7|Equal2~0_combout\);

-- Location: LABCELL_X13_Y14_N57
\pwm_7|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|Equal2~1_combout\ = ( \pwm_7|Add1~53_sumout\ & ( !\pwm_0|count[0][12]~q\ ) ) # ( !\pwm_7|Add1~53_sumout\ & ( \pwm_0|count[0][12]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_7|ALT_INV_Add1~53_sumout\,
	combout => \pwm_7|Equal2~1_combout\);

-- Location: LABCELL_X13_Y14_N18
\pwm_7|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~7_combout\ = ( \pwm_7|Add1~57_sumout\ & ( !\pwm_7|Equal2~1_combout\ & ( (\pwm_0|count[0][13]~q\ & (\pwm_7|pwm_out~5_combout\ & (\pwm_7|pwm_out~6_combout\ & !\pwm_7|Equal2~0_combout\))) ) ) ) # ( !\pwm_7|Add1~57_sumout\ & ( 
-- !\pwm_7|Equal2~1_combout\ & ( (!\pwm_0|count[0][13]~q\ & (\pwm_7|pwm_out~5_combout\ & (\pwm_7|pwm_out~6_combout\ & !\pwm_7|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][13]~q\,
	datab => \pwm_7|ALT_INV_pwm_out~5_combout\,
	datac => \pwm_7|ALT_INV_pwm_out~6_combout\,
	datad => \pwm_7|ALT_INV_Equal2~0_combout\,
	datae => \pwm_7|ALT_INV_Add1~57_sumout\,
	dataf => \pwm_7|ALT_INV_Equal2~1_combout\,
	combout => \pwm_7|pwm_out~7_combout\);

-- Location: LABCELL_X13_Y14_N9
\pwm_7|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~2_combout\ = ( \pwm_7|Add1~25_sumout\ & ( \pwm_7|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~DUPLICATE_q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_7|Add1~25_sumout\ & ( \pwm_7|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~DUPLICATE_q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_7|Add1~25_sumout\ & ( !\pwm_7|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~DUPLICATE_q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_7|Add1~25_sumout\ & ( !\pwm_7|Add1~21_sumout\ & ( 
-- (!\pwm_0|count[0][16]~DUPLICATE_q\ & !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_7|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~21_sumout\,
	combout => \pwm_7|pwm_out~2_combout\);

-- Location: LABCELL_X13_Y14_N24
\pwm_7|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~3_combout\ = ( \pwm_7|Add1~45_sumout\ & ( \pwm_7|Add1~37_sumout\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][3]~q\ & (!\pwm_7|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_7|Add1~45_sumout\ & ( 
-- \pwm_7|Add1~37_sumout\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_0|count[0][3]~q\ & (!\pwm_7|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( \pwm_7|Add1~45_sumout\ & ( !\pwm_7|Add1~37_sumout\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][3]~q\ & (!\pwm_7|Add1~41_sumout\ $ (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_7|Add1~45_sumout\ & ( !\pwm_7|Add1~37_sumout\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ & (!\pwm_7|Add1~41_sumout\ $ 
-- (\pwm_0|count[0][4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_Add1~41_sumout\,
	datab => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	datae => \pwm_7|ALT_INV_Add1~45_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~37_sumout\,
	combout => \pwm_7|pwm_out~3_combout\);

-- Location: LABCELL_X13_Y14_N42
\pwm_7|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~4_combout\ = ( \pwm_7|Add1~33_sumout\ & ( \pwm_7|Add1~29_sumout\ & ( (\pwm_7|pwm_out~3_combout\ & (\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_7|Add1~33_sumout\ & ( \pwm_7|Add1~29_sumout\ & ( (\pwm_7|pwm_out~3_combout\ 
-- & (\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) ) # ( \pwm_7|Add1~33_sumout\ & ( !\pwm_7|Add1~29_sumout\ & ( (\pwm_7|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_7|Add1~33_sumout\ & ( 
-- !\pwm_7|Add1~29_sumout\ & ( (\pwm_7|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000001000000010000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_pwm_out~3_combout\,
	datab => \pwm_0|ALT_INV_count[0][14]~q\,
	datac => \pwm_0|ALT_INV_count[0][15]~q\,
	datae => \pwm_7|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_7|ALT_INV_Add1~29_sumout\,
	combout => \pwm_7|pwm_out~4_combout\);

-- Location: LABCELL_X13_Y14_N12
\pwm_7|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_7|pwm_out~8_combout\ = ( \pwm_7|pwm_out\(0) & ( \pwm_7|pwm_out~4_combout\ & ( !\pwm_7|Equal1~8_combout\ ) ) ) # ( !\pwm_7|pwm_out\(0) & ( \pwm_7|pwm_out~4_combout\ & ( (\pwm_7|pwm_out~1_combout\ & (!\pwm_7|Equal1~8_combout\ & 
-- (\pwm_7|pwm_out~7_combout\ & \pwm_7|pwm_out~2_combout\))) ) ) ) # ( \pwm_7|pwm_out\(0) & ( !\pwm_7|pwm_out~4_combout\ & ( !\pwm_7|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_7|ALT_INV_pwm_out~1_combout\,
	datab => \pwm_7|ALT_INV_Equal1~8_combout\,
	datac => \pwm_7|ALT_INV_pwm_out~7_combout\,
	datad => \pwm_7|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_7|ALT_INV_pwm_out\(0),
	dataf => \pwm_7|ALT_INV_pwm_out~4_combout\,
	combout => \pwm_7|pwm_out~8_combout\);

-- Location: FF_X13_Y14_N13
\pwm_7|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_7|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_7|pwm_out\(0));

-- Location: DSP_X24_Y13_N0
\pwm_8|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_8|Mult0~8_ACLR_bus\,
	clk => \pwm_8|Mult0~8_CLK_bus\,
	ena => \pwm_8|Mult0~8_ENA_bus\,
	ax => \pwm_8|Mult0~8_AX_bus\,
	ay => \pwm_8|Mult0~8_AY_bus\,
	resulta => \pwm_8|Mult0~8_RESULTA_bus\);

-- Location: FF_X23_Y13_N1
\pwm_8|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~22\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(5));

-- Location: FF_X22_Y15_N13
\pwm_8|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][5]~q\);

-- Location: LABCELL_X23_Y13_N18
\pwm_8|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[4]~feeder_combout\ = ( \pwm_8|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~21\,
	combout => \pwm_8|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y13_N19
\pwm_8|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(4));

-- Location: FF_X22_Y15_N10
\pwm_8|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][4]~q\);

-- Location: FF_X21_Y13_N16
\pwm_8|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(3));

-- Location: FF_X22_Y15_N8
\pwm_8|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][3]~q\);

-- Location: MLABCELL_X25_Y13_N33
\pwm_8|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[2]~feeder_combout\ = ( \pwm_8|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~19\,
	combout => \pwm_8|half_duty_new[2]~feeder_combout\);

-- Location: FF_X25_Y13_N34
\pwm_8|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(2));

-- Location: FF_X22_Y15_N4
\pwm_8|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][2]~q\);

-- Location: MLABCELL_X25_Y13_N48
\pwm_8|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[1]~feeder_combout\ = ( \pwm_8|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~18\,
	combout => \pwm_8|half_duty_new[1]~feeder_combout\);

-- Location: FF_X25_Y13_N49
\pwm_8|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(1));

-- Location: LABCELL_X22_Y14_N24
\pwm_8|half_duty[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty[0][1]~feeder_combout\ = ( \pwm_8|half_duty_new\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_half_duty_new\(1),
	combout => \pwm_8|half_duty[0][1]~feeder_combout\);

-- Location: FF_X22_Y14_N26
\pwm_8|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty[0][1]~feeder_combout\,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][1]~q\);

-- Location: FF_X23_Y12_N4
\pwm_8|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~17\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(0));

-- Location: FF_X22_Y15_N2
\pwm_8|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][0]~q\);

-- Location: LABCELL_X22_Y15_N0
\pwm_8|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~61_sumout\ = SUM(( !\pwm_8|half_duty[0][0]~q\ ) + ( !\pwm_8|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_8|Add1~62\ = CARRY(( !\pwm_8|half_duty[0][0]~q\ ) + ( !\pwm_8|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_8|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_8|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_8|Add1~61_sumout\,
	cout => \pwm_8|Add1~62\);

-- Location: LABCELL_X22_Y15_N3
\pwm_8|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~65_sumout\ = SUM(( !\pwm_8|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_8|Add1~62\ ))
-- \pwm_8|Add1~66\ = CARRY(( !\pwm_8|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_8|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_8|Add1~62\,
	sumout => \pwm_8|Add1~65_sumout\,
	cout => \pwm_8|Add1~66\);

-- Location: LABCELL_X22_Y15_N6
\pwm_8|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~37_sumout\ = SUM(( !\pwm_8|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_8|Add1~66\ ))
-- \pwm_8|Add1~38\ = CARRY(( !\pwm_8|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_8|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_8|Add1~66\,
	sumout => \pwm_8|Add1~37_sumout\,
	cout => \pwm_8|Add1~38\);

-- Location: LABCELL_X22_Y15_N9
\pwm_8|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~41_sumout\ = SUM(( !\pwm_8|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_8|Add1~38\ ))
-- \pwm_8|Add1~42\ = CARRY(( !\pwm_8|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_8|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_8|Add1~38\,
	sumout => \pwm_8|Add1~41_sumout\,
	cout => \pwm_8|Add1~42\);

-- Location: LABCELL_X22_Y15_N12
\pwm_8|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~45_sumout\ = SUM(( !\pwm_8|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_8|Add1~42\ ))
-- \pwm_8|Add1~46\ = CARRY(( !\pwm_8|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_8|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_8|Add1~42\,
	sumout => \pwm_8|Add1~45_sumout\,
	cout => \pwm_8|Add1~46\);

-- Location: LABCELL_X21_Y15_N36
\pwm_8|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~3_combout\ = ( \pwm_8|Add1~41_sumout\ & ( \pwm_0|count[0][4]~DUPLICATE_q\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_8|Add1~45_sumout\ & (!\pwm_8|Add1~37_sumout\ $ (\pwm_0|count[0][3]~q\)))) # (\pwm_0|count[0][5]~DUPLICATE_q\ & 
-- (\pwm_8|Add1~45_sumout\ & (!\pwm_8|Add1~37_sumout\ $ (\pwm_0|count[0][3]~q\)))) ) ) ) # ( !\pwm_8|Add1~41_sumout\ & ( !\pwm_0|count[0][4]~DUPLICATE_q\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_8|Add1~45_sumout\ & (!\pwm_8|Add1~37_sumout\ $ 
-- (\pwm_0|count[0][3]~q\)))) # (\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_8|Add1~45_sumout\ & (!\pwm_8|Add1~37_sumout\ $ (\pwm_0|count[0][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datab => \pwm_8|ALT_INV_Add1~45_sumout\,
	datac => \pwm_8|ALT_INV_Add1~37_sumout\,
	datad => \pwm_0|ALT_INV_count[0][3]~q\,
	datae => \pwm_8|ALT_INV_Add1~41_sumout\,
	dataf => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	combout => \pwm_8|pwm_out~3_combout\);

-- Location: MLABCELL_X25_Y13_N6
\pwm_8|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[15]~feeder_combout\ = ( \pwm_8|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~32\,
	combout => \pwm_8|half_duty_new[15]~feeder_combout\);

-- Location: FF_X25_Y13_N7
\pwm_8|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(15));

-- Location: FF_X22_Y15_N43
\pwm_8|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][15]~q\);

-- Location: FF_X25_Y13_N1
\pwm_8|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(14));

-- Location: FF_X22_Y15_N40
\pwm_8|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][14]~q\);

-- Location: FF_X23_Y13_N37
\pwm_8|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~30\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(13));

-- Location: FF_X22_Y15_N37
\pwm_8|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][13]~q\);

-- Location: MLABCELL_X25_Y13_N15
\pwm_8|half_duty_new[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[12]~feeder_combout\ = ( \pwm_8|Mult0~29\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~29\,
	combout => \pwm_8|half_duty_new[12]~feeder_combout\);

-- Location: FF_X25_Y13_N16
\pwm_8|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[12]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(12));

-- Location: FF_X22_Y15_N34
\pwm_8|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][12]~q\);

-- Location: FF_X25_Y13_N19
\pwm_8|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(11));

-- Location: FF_X22_Y15_N31
\pwm_8|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][11]~q\);

-- Location: FF_X23_Y13_N28
\pwm_8|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~27\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(10));

-- Location: FF_X22_Y15_N28
\pwm_8|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][10]~q\);

-- Location: FF_X23_Y13_N58
\pwm_8|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(9));

-- Location: FF_X22_Y15_N25
\pwm_8|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][9]~q\);

-- Location: FF_X25_Y13_N43
\pwm_8|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~25\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(8));

-- Location: FF_X22_Y15_N22
\pwm_8|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][8]~q\);

-- Location: MLABCELL_X25_Y13_N36
\pwm_8|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[7]~feeder_combout\ = ( \pwm_8|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~24\,
	combout => \pwm_8|half_duty_new[7]~feeder_combout\);

-- Location: FF_X25_Y13_N37
\pwm_8|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(7));

-- Location: FF_X22_Y15_N19
\pwm_8|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][7]~q\);

-- Location: MLABCELL_X25_Y13_N51
\pwm_8|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[6]~feeder_combout\ = ( \pwm_8|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~23\,
	combout => \pwm_8|half_duty_new[6]~feeder_combout\);

-- Location: FF_X25_Y13_N53
\pwm_8|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(6));

-- Location: FF_X22_Y15_N16
\pwm_8|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][6]~q\);

-- Location: LABCELL_X22_Y15_N15
\pwm_8|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~9_sumout\ = SUM(( !\pwm_8|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_8|Add1~46\ ))
-- \pwm_8|Add1~10\ = CARRY(( !\pwm_8|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_8|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_8|Add1~46\,
	sumout => \pwm_8|Add1~9_sumout\,
	cout => \pwm_8|Add1~10\);

-- Location: LABCELL_X22_Y15_N18
\pwm_8|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~13_sumout\ = SUM(( !\pwm_8|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_8|Add1~10\ ))
-- \pwm_8|Add1~14\ = CARRY(( !\pwm_8|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_8|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_8|Add1~10\,
	sumout => \pwm_8|Add1~13_sumout\,
	cout => \pwm_8|Add1~14\);

-- Location: LABCELL_X22_Y15_N21
\pwm_8|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~17_sumout\ = SUM(( !\pwm_8|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_8|Add1~14\ ))
-- \pwm_8|Add1~18\ = CARRY(( !\pwm_8|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_8|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_8|Add1~14\,
	sumout => \pwm_8|Add1~17_sumout\,
	cout => \pwm_8|Add1~18\);

-- Location: LABCELL_X22_Y15_N24
\pwm_8|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~69_sumout\ = SUM(( !\pwm_8|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_8|Add1~18\ ))
-- \pwm_8|Add1~70\ = CARRY(( !\pwm_8|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_8|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_8|Add1~18\,
	sumout => \pwm_8|Add1~69_sumout\,
	cout => \pwm_8|Add1~70\);

-- Location: LABCELL_X22_Y15_N27
\pwm_8|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~73_sumout\ = SUM(( !\pwm_8|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_8|Add1~70\ ))
-- \pwm_8|Add1~74\ = CARRY(( !\pwm_8|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_8|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_8|Add1~70\,
	sumout => \pwm_8|Add1~73_sumout\,
	cout => \pwm_8|Add1~74\);

-- Location: LABCELL_X22_Y15_N30
\pwm_8|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~49_sumout\ = SUM(( !\pwm_8|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_8|Add1~74\ ))
-- \pwm_8|Add1~50\ = CARRY(( !\pwm_8|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_8|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_8|Add1~74\,
	sumout => \pwm_8|Add1~49_sumout\,
	cout => \pwm_8|Add1~50\);

-- Location: LABCELL_X22_Y15_N33
\pwm_8|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~53_sumout\ = SUM(( !\pwm_8|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_8|Add1~50\ ))
-- \pwm_8|Add1~54\ = CARRY(( !\pwm_8|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_8|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_8|Add1~50\,
	sumout => \pwm_8|Add1~53_sumout\,
	cout => \pwm_8|Add1~54\);

-- Location: LABCELL_X22_Y15_N36
\pwm_8|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~57_sumout\ = SUM(( !\pwm_8|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_8|Add1~54\ ))
-- \pwm_8|Add1~58\ = CARRY(( !\pwm_8|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_8|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_8|Add1~54\,
	sumout => \pwm_8|Add1~57_sumout\,
	cout => \pwm_8|Add1~58\);

-- Location: LABCELL_X22_Y15_N39
\pwm_8|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~29_sumout\ = SUM(( !\pwm_8|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_8|Add1~58\ ))
-- \pwm_8|Add1~30\ = CARRY(( !\pwm_8|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_8|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_8|Add1~58\,
	sumout => \pwm_8|Add1~29_sumout\,
	cout => \pwm_8|Add1~30\);

-- Location: LABCELL_X22_Y15_N42
\pwm_8|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~33_sumout\ = SUM(( !\pwm_8|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_8|Add1~30\ ))
-- \pwm_8|Add1~34\ = CARRY(( !\pwm_8|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_8|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_8|Add1~30\,
	sumout => \pwm_8|Add1~33_sumout\,
	cout => \pwm_8|Add1~34\);

-- Location: LABCELL_X21_Y15_N54
\pwm_8|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~4_combout\ = ( \pwm_8|Add1~33_sumout\ & ( \pwm_8|Add1~29_sumout\ & ( (\pwm_0|count[0][14]~q\ & (\pwm_0|count[0][15]~q\ & \pwm_8|pwm_out~3_combout\)) ) ) ) # ( !\pwm_8|Add1~33_sumout\ & ( \pwm_8|Add1~29_sumout\ & ( (\pwm_0|count[0][14]~q\ & 
-- (!\pwm_0|count[0][15]~q\ & \pwm_8|pwm_out~3_combout\)) ) ) ) # ( \pwm_8|Add1~33_sumout\ & ( !\pwm_8|Add1~29_sumout\ & ( (!\pwm_0|count[0][14]~q\ & (\pwm_0|count[0][15]~q\ & \pwm_8|pwm_out~3_combout\)) ) ) ) # ( !\pwm_8|Add1~33_sumout\ & ( 
-- !\pwm_8|Add1~29_sumout\ & ( (!\pwm_0|count[0][14]~q\ & (!\pwm_0|count[0][15]~q\ & \pwm_8|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000100000001000000100000001000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][14]~q\,
	datab => \pwm_0|ALT_INV_count[0][15]~q\,
	datac => \pwm_8|ALT_INV_pwm_out~3_combout\,
	datae => \pwm_8|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~29_sumout\,
	combout => \pwm_8|pwm_out~4_combout\);

-- Location: LABCELL_X23_Y15_N51
\pwm_8|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~3_combout\ = ( \pwm_8|half_duty[0][9]~q\ & ( \pwm_0|count[0][9]~q\ & ( (!\pwm_0|count[0][10]~q\ & (!\pwm_8|half_duty[0][10]~q\ & (!\pwm_8|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) # (\pwm_0|count[0][10]~q\ & 
-- (\pwm_8|half_duty[0][10]~q\ & (!\pwm_8|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) ) # ( !\pwm_8|half_duty[0][9]~q\ & ( !\pwm_0|count[0][9]~q\ & ( (!\pwm_0|count[0][10]~q\ & (!\pwm_8|half_duty[0][10]~q\ & (!\pwm_8|half_duty[0][8]~q\ $ 
-- (\pwm_0|count[0][8]~DUPLICATE_q\)))) # (\pwm_0|count[0][10]~q\ & (\pwm_8|half_duty[0][10]~q\ & (!\pwm_8|half_duty[0][8]~q\ $ (\pwm_0|count[0][8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][10]~q\,
	datab => \pwm_8|ALT_INV_half_duty[0][8]~q\,
	datac => \pwm_8|ALT_INV_half_duty[0][10]~q\,
	datad => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datae => \pwm_8|ALT_INV_half_duty[0][9]~q\,
	dataf => \pwm_0|ALT_INV_count[0][9]~q\,
	combout => \pwm_8|Equal1~3_combout\);

-- Location: MLABCELL_X25_Y13_N57
\pwm_8|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|half_duty_new[18]~feeder_combout\ = ( \pwm_8|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_8|ALT_INV_Mult0~35\,
	combout => \pwm_8|half_duty_new[18]~feeder_combout\);

-- Location: FF_X25_Y13_N58
\pwm_8|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(18));

-- Location: FF_X22_Y15_N52
\pwm_8|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][18]~q\);

-- Location: FF_X25_Y13_N28
\pwm_8|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~34\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(17));

-- Location: FF_X22_Y15_N49
\pwm_8|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][17]~q\);

-- Location: LABCELL_X21_Y14_N18
\pwm_8|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~0_combout\ = ( \pwm_0|count[0][18]~q\ & ( \pwm_8|half_duty[0][17]~q\ & ( (\pwm_0|count[0][17]~q\ & \pwm_8|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][18]~q\ & ( \pwm_8|half_duty[0][17]~q\ & ( (\pwm_0|count[0][17]~q\ & 
-- !\pwm_8|half_duty[0][18]~q\) ) ) ) # ( \pwm_0|count[0][18]~q\ & ( !\pwm_8|half_duty[0][17]~q\ & ( (!\pwm_0|count[0][17]~q\ & \pwm_8|half_duty[0][18]~q\) ) ) ) # ( !\pwm_0|count[0][18]~q\ & ( !\pwm_8|half_duty[0][17]~q\ & ( (!\pwm_0|count[0][17]~q\ & 
-- !\pwm_8|half_duty[0][18]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][17]~q\,
	datac => \pwm_8|ALT_INV_half_duty[0][18]~q\,
	datae => \pwm_0|ALT_INV_count[0][18]~q\,
	dataf => \pwm_8|ALT_INV_half_duty[0][17]~q\,
	combout => \pwm_8|Equal1~0_combout\);

-- Location: LABCELL_X22_Y14_N54
\pwm_8|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~2_combout\ = ( \pwm_8|half_duty[0][13]~q\ & ( \pwm_0|count[0][13]~q\ & ( (!\pwm_0|count[0][12]~q\ & (!\pwm_8|half_duty[0][12]~q\ & (!\pwm_8|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) # (\pwm_0|count[0][12]~q\ & 
-- (\pwm_8|half_duty[0][12]~q\ & (!\pwm_8|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) ) ) ) # ( !\pwm_8|half_duty[0][13]~q\ & ( !\pwm_0|count[0][13]~q\ & ( (!\pwm_0|count[0][12]~q\ & (!\pwm_8|half_duty[0][12]~q\ & (!\pwm_8|half_duty[0][11]~q\ $ 
-- (\pwm_0|count[0][11]~q\)))) # (\pwm_0|count[0][12]~q\ & (\pwm_8|half_duty[0][12]~q\ & (!\pwm_8|half_duty[0][11]~q\ $ (\pwm_0|count[0][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][12]~q\,
	datab => \pwm_8|ALT_INV_half_duty[0][11]~q\,
	datac => \pwm_0|ALT_INV_count[0][11]~q\,
	datad => \pwm_8|ALT_INV_half_duty[0][12]~q\,
	datae => \pwm_8|ALT_INV_half_duty[0][13]~q\,
	dataf => \pwm_0|ALT_INV_count[0][13]~q\,
	combout => \pwm_8|Equal1~2_combout\);

-- Location: FF_X25_Y13_N40
\pwm_8|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|Mult0~33\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty_new\(16));

-- Location: FF_X22_Y15_N46
\pwm_8|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_8|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|half_duty[0][16]~q\);

-- Location: LABCELL_X23_Y15_N42
\pwm_8|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~1_combout\ = ( \pwm_0|count[0][14]~q\ & ( \pwm_0|count[0][15]~q\ & ( (\pwm_8|half_duty[0][14]~q\ & (\pwm_8|half_duty[0][15]~q\ & (!\pwm_8|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][14]~q\ & ( 
-- \pwm_0|count[0][15]~q\ & ( (!\pwm_8|half_duty[0][14]~q\ & (\pwm_8|half_duty[0][15]~q\ & (!\pwm_8|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( \pwm_0|count[0][14]~q\ & ( !\pwm_0|count[0][15]~q\ & ( (\pwm_8|half_duty[0][14]~q\ & 
-- (!\pwm_8|half_duty[0][15]~q\ & (!\pwm_8|half_duty[0][16]~q\ $ (\pwm_0|count[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][14]~q\ & ( !\pwm_0|count[0][15]~q\ & ( (!\pwm_8|half_duty[0][14]~q\ & (!\pwm_8|half_duty[0][15]~q\ & (!\pwm_8|half_duty[0][16]~q\ $ 
-- (\pwm_0|count[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_half_duty[0][16]~q\,
	datab => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_8|ALT_INV_half_duty[0][14]~q\,
	datad => \pwm_8|ALT_INV_half_duty[0][15]~q\,
	datae => \pwm_0|ALT_INV_count[0][14]~q\,
	dataf => \pwm_0|ALT_INV_count[0][15]~q\,
	combout => \pwm_8|Equal1~1_combout\);

-- Location: LABCELL_X22_Y14_N33
\pwm_8|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~5_combout\ = ( \pwm_8|half_duty[0][0]~q\ & ( \pwm_0|count[0][0]~q\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][1]~DUPLICATE_q\ $ (\pwm_8|half_duty[0][1]~q\))) ) ) ) # ( !\pwm_8|half_duty[0][0]~q\ & ( !\pwm_0|count[0][0]~q\ & ( 
-- (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][1]~DUPLICATE_q\ $ (\pwm_8|half_duty[0][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010000000000000000000000000000000001010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datac => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datad => \pwm_8|ALT_INV_half_duty[0][1]~q\,
	datae => \pwm_8|ALT_INV_half_duty[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][0]~q\,
	combout => \pwm_8|Equal1~5_combout\);

-- Location: LABCELL_X22_Y14_N12
\pwm_8|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~6_combout\ = ( \pwm_0|count[0][2]~DUPLICATE_q\ & ( \pwm_8|half_duty[0][3]~q\ & ( (\pwm_0|count[0][3]~q\ & \pwm_8|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~DUPLICATE_q\ & ( \pwm_8|half_duty[0][3]~q\ & ( (\pwm_0|count[0][3]~q\ & 
-- !\pwm_8|half_duty[0][2]~q\) ) ) ) # ( \pwm_0|count[0][2]~DUPLICATE_q\ & ( !\pwm_8|half_duty[0][3]~q\ & ( (!\pwm_0|count[0][3]~q\ & \pwm_8|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~DUPLICATE_q\ & ( !\pwm_8|half_duty[0][3]~q\ & ( 
-- (!\pwm_0|count[0][3]~q\ & !\pwm_8|half_duty[0][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][3]~q\,
	datac => \pwm_8|ALT_INV_half_duty[0][2]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	dataf => \pwm_8|ALT_INV_half_duty[0][3]~q\,
	combout => \pwm_8|Equal1~6_combout\);

-- Location: LABCELL_X23_Y15_N54
\pwm_8|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~4_combout\ = ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( (\pwm_8|half_duty[0][5]~q\ & (\pwm_8|half_duty[0][6]~q\ & (!\pwm_8|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( 
-- !\pwm_0|count[0][5]~DUPLICATE_q\ & ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( (!\pwm_8|half_duty[0][5]~q\ & (\pwm_8|half_duty[0][6]~q\ & (!\pwm_8|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( \pwm_0|count[0][5]~DUPLICATE_q\ & ( 
-- !\pwm_0|count[0][6]~DUPLICATE_q\ & ( (\pwm_8|half_duty[0][5]~q\ & (!\pwm_8|half_duty[0][6]~q\ & (!\pwm_8|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) ) # ( !\pwm_0|count[0][5]~DUPLICATE_q\ & ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( 
-- (!\pwm_8|half_duty[0][5]~q\ & (!\pwm_8|half_duty[0][6]~q\ & (!\pwm_8|half_duty[0][7]~q\ $ (\pwm_0|count[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_half_duty[0][5]~q\,
	datab => \pwm_8|ALT_INV_half_duty[0][7]~q\,
	datac => \pwm_0|ALT_INV_count[0][7]~q\,
	datad => \pwm_8|ALT_INV_half_duty[0][6]~q\,
	datae => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	combout => \pwm_8|Equal1~4_combout\);

-- Location: LABCELL_X22_Y14_N6
\pwm_8|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~7_combout\ = ( \pwm_8|half_duty[0][4]~q\ & ( \pwm_8|Equal1~4_combout\ & ( (\pwm_8|Equal1~5_combout\ & (\pwm_8|Equal1~6_combout\ & \pwm_0|count[0][4]~DUPLICATE_q\)) ) ) ) # ( !\pwm_8|half_duty[0][4]~q\ & ( \pwm_8|Equal1~4_combout\ & ( 
-- (\pwm_8|Equal1~5_combout\ & (\pwm_8|Equal1~6_combout\ & !\pwm_0|count[0][4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_Equal1~5_combout\,
	datab => \pwm_8|ALT_INV_Equal1~6_combout\,
	datac => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datae => \pwm_8|ALT_INV_half_duty[0][4]~q\,
	dataf => \pwm_8|ALT_INV_Equal1~4_combout\,
	combout => \pwm_8|Equal1~7_combout\);

-- Location: LABCELL_X22_Y14_N48
\pwm_8|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal1~8_combout\ = ( \pwm_8|Equal1~1_combout\ & ( \pwm_8|Equal1~7_combout\ & ( (\pwm_8|Equal1~3_combout\ & (\pwm_8|Equal1~0_combout\ & \pwm_8|Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_Equal1~3_combout\,
	datab => \pwm_8|ALT_INV_Equal1~0_combout\,
	datac => \pwm_8|ALT_INV_Equal1~2_combout\,
	datae => \pwm_8|ALT_INV_Equal1~1_combout\,
	dataf => \pwm_8|ALT_INV_Equal1~7_combout\,
	combout => \pwm_8|Equal1~8_combout\);

-- Location: LABCELL_X21_Y15_N24
\pwm_8|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_8|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_8|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_8|ALT_INV_Add1~49_sumout\,
	combout => \pwm_8|Equal2~0_combout\);

-- Location: LABCELL_X21_Y15_N33
\pwm_8|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Equal2~1_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_8|Add1~53_sumout\ ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_8|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_8|ALT_INV_Add1~53_sumout\,
	combout => \pwm_8|Equal2~1_combout\);

-- Location: LABCELL_X21_Y15_N0
\pwm_8|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~6_combout\ = ( \pwm_8|Add1~73_sumout\ & ( \pwm_8|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_8|Add1~73_sumout\ & ( \pwm_8|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- \pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( \pwm_8|Add1~73_sumout\ & ( !\pwm_8|Add1~69_sumout\ & ( (\pwm_0|count[0][10]~q\ & !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) ) # ( !\pwm_8|Add1~73_sumout\ & ( !\pwm_8|Add1~69_sumout\ & ( (!\pwm_0|count[0][10]~q\ & 
-- !\pwm_0|count[0][9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000011110000000000000000111100000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datad => \pwm_0|ALT_INV_count[0][9]~DUPLICATE_q\,
	datae => \pwm_8|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~69_sumout\,
	combout => \pwm_8|pwm_out~6_combout\);

-- Location: LABCELL_X22_Y14_N0
\pwm_8|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~5_combout\ = ( \pwm_8|Add1~61_sumout\ & ( \pwm_8|Add1~65_sumout\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & (\pwm_0|count[0][2]~DUPLICATE_q\ & (!\pwm_8|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_8|Add1~61_sumout\ & ( 
-- \pwm_8|Add1~65_sumout\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & (\pwm_0|count[0][2]~DUPLICATE_q\ & (!\pwm_8|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( \pwm_8|Add1~61_sumout\ & ( !\pwm_8|Add1~65_sumout\ & ( (\pwm_0|count[0][1]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][2]~DUPLICATE_q\ & (!\pwm_8|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_8|Add1~61_sumout\ & ( !\pwm_8|Add1~65_sumout\ & ( (!\pwm_0|count[0][1]~DUPLICATE_q\ & (!\pwm_0|count[0][2]~DUPLICATE_q\ & 
-- (!\pwm_8|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_half_duty[0][0]~q\,
	datab => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][2]~DUPLICATE_q\,
	datad => \pwm_0|ALT_INV_count[0][0]~q\,
	datae => \pwm_8|ALT_INV_Add1~61_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~65_sumout\,
	combout => \pwm_8|pwm_out~5_combout\);

-- Location: LABCELL_X21_Y15_N18
\pwm_8|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~7_combout\ = ( \pwm_8|pwm_out~6_combout\ & ( \pwm_8|pwm_out~5_combout\ & ( (!\pwm_8|Equal2~0_combout\ & (!\pwm_8|Equal2~1_combout\ & (!\pwm_0|count[0][13]~q\ $ (\pwm_8|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_Equal2~0_combout\,
	datab => \pwm_0|ALT_INV_count[0][13]~q\,
	datac => \pwm_8|ALT_INV_Equal2~1_combout\,
	datad => \pwm_8|ALT_INV_Add1~57_sumout\,
	datae => \pwm_8|ALT_INV_pwm_out~6_combout\,
	dataf => \pwm_8|ALT_INV_pwm_out~5_combout\,
	combout => \pwm_8|pwm_out~7_combout\);

-- Location: LABCELL_X22_Y15_N45
\pwm_8|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~21_sumout\ = SUM(( !\pwm_8|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_8|Add1~34\ ))
-- \pwm_8|Add1~22\ = CARRY(( !\pwm_8|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_8|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_8|Add1~34\,
	sumout => \pwm_8|Add1~21_sumout\,
	cout => \pwm_8|Add1~22\);

-- Location: LABCELL_X22_Y15_N48
\pwm_8|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~25_sumout\ = SUM(( !\pwm_8|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_8|Add1~22\ ))
-- \pwm_8|Add1~26\ = CARRY(( !\pwm_8|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_8|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_8|Add1~22\,
	sumout => \pwm_8|Add1~25_sumout\,
	cout => \pwm_8|Add1~26\);

-- Location: LABCELL_X21_Y15_N42
\pwm_8|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~2_combout\ = ( \pwm_8|Add1~25_sumout\ & ( \pwm_8|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_8|Add1~25_sumout\ & ( \pwm_8|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & \pwm_0|count[0][16]~q\) ) ) ) 
-- # ( \pwm_8|Add1~25_sumout\ & ( !\pwm_8|Add1~21_sumout\ & ( (\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) ) # ( !\pwm_8|Add1~25_sumout\ & ( !\pwm_8|Add1~21_sumout\ & ( (!\pwm_0|count[0][17]~q\ & !\pwm_0|count[0][16]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_0|ALT_INV_count[0][17]~q\,
	datac => \pwm_0|ALT_INV_count[0][16]~q\,
	datae => \pwm_8|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~21_sumout\,
	combout => \pwm_8|pwm_out~2_combout\);

-- Location: LABCELL_X21_Y15_N6
\pwm_8|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~0_combout\ = ( \pwm_8|Add1~17_sumout\ & ( \pwm_8|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_8|Add1~9_sumout\)))) ) ) ) # ( !\pwm_8|Add1~17_sumout\ & ( 
-- \pwm_8|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_8|Add1~9_sumout\)))) ) ) ) # ( \pwm_8|Add1~17_sumout\ & ( !\pwm_8|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_8|Add1~9_sumout\)))) ) ) ) # ( !\pwm_8|Add1~17_sumout\ & ( !\pwm_8|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~DUPLICATE_q\ & (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ 
-- (\pwm_8|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datac => \pwm_8|ALT_INV_Add1~9_sumout\,
	datad => \pwm_0|ALT_INV_count[0][7]~q\,
	datae => \pwm_8|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~13_sumout\,
	combout => \pwm_8|pwm_out~0_combout\);

-- Location: LABCELL_X22_Y15_N51
\pwm_8|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~1_sumout\ = SUM(( !\pwm_8|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_8|Add1~26\ ))
-- \pwm_8|Add1~2\ = CARRY(( !\pwm_8|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_8|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_8|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_8|Add1~26\,
	sumout => \pwm_8|Add1~1_sumout\,
	cout => \pwm_8|Add1~2\);

-- Location: LABCELL_X22_Y15_N54
\pwm_8|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_8|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_8|Add1~2\,
	sumout => \pwm_8|Add1~5_sumout\);

-- Location: LABCELL_X21_Y15_N48
\pwm_8|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~1_combout\ = ( \pwm_8|Add1~5_sumout\ & ( \pwm_8|Add1~1_sumout\ & ( (\pwm_0|count[0][18]~q\ & (\pwm_8|pwm_out~0_combout\ & !\pwm_0|count[0][19]~q\)) ) ) ) # ( !\pwm_8|Add1~5_sumout\ & ( \pwm_8|Add1~1_sumout\ & ( (\pwm_0|count[0][18]~q\ & 
-- (\pwm_8|pwm_out~0_combout\ & \pwm_0|count[0][19]~q\)) ) ) ) # ( \pwm_8|Add1~5_sumout\ & ( !\pwm_8|Add1~1_sumout\ & ( (!\pwm_0|count[0][18]~q\ & (\pwm_8|pwm_out~0_combout\ & !\pwm_0|count[0][19]~q\)) ) ) ) # ( !\pwm_8|Add1~5_sumout\ & ( 
-- !\pwm_8|Add1~1_sumout\ & ( (!\pwm_0|count[0][18]~q\ & (\pwm_8|pwm_out~0_combout\ & \pwm_0|count[0][19]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010001000000010000000000001000000010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][18]~q\,
	datab => \pwm_8|ALT_INV_pwm_out~0_combout\,
	datac => \pwm_0|ALT_INV_count[0][19]~q\,
	datae => \pwm_8|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_8|ALT_INV_Add1~1_sumout\,
	combout => \pwm_8|pwm_out~1_combout\);

-- Location: LABCELL_X21_Y15_N12
\pwm_8|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_8|pwm_out~8_combout\ = ( \pwm_8|pwm_out\(0) & ( \pwm_8|pwm_out~1_combout\ & ( !\pwm_8|Equal1~8_combout\ ) ) ) # ( !\pwm_8|pwm_out\(0) & ( \pwm_8|pwm_out~1_combout\ & ( (\pwm_8|pwm_out~4_combout\ & (!\pwm_8|Equal1~8_combout\ & 
-- (\pwm_8|pwm_out~7_combout\ & \pwm_8|pwm_out~2_combout\))) ) ) ) # ( \pwm_8|pwm_out\(0) & ( !\pwm_8|pwm_out~1_combout\ & ( !\pwm_8|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_8|ALT_INV_pwm_out~4_combout\,
	datab => \pwm_8|ALT_INV_Equal1~8_combout\,
	datac => \pwm_8|ALT_INV_pwm_out~7_combout\,
	datad => \pwm_8|ALT_INV_pwm_out~2_combout\,
	datae => \pwm_8|ALT_INV_pwm_out\(0),
	dataf => \pwm_8|ALT_INV_pwm_out~1_combout\,
	combout => \pwm_8|pwm_out~8_combout\);

-- Location: FF_X21_Y15_N13
\pwm_8|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_8|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_8|pwm_out\(0));

-- Location: DSP_X16_Y11_N0
\pwm_9|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "0",
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
	aclr => \pwm_9|Mult0~8_ACLR_bus\,
	clk => \pwm_9|Mult0~8_CLK_bus\,
	ena => \pwm_9|Mult0~8_ENA_bus\,
	ax => \pwm_9|Mult0~8_AX_bus\,
	ay => \pwm_9|Mult0~8_AY_bus\,
	resulta => \pwm_9|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X17_Y11_N48
\pwm_9|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[8]~feeder_combout\ = ( \pwm_9|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~25\,
	combout => \pwm_9|half_duty_new[8]~feeder_combout\);

-- Location: FF_X17_Y11_N49
\pwm_9|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(8));

-- Location: FF_X15_Y11_N22
\pwm_9|half_duty[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(8),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][8]~q\);

-- Location: LABCELL_X17_Y11_N12
\pwm_9|half_duty_new[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[10]~feeder_combout\ = ( \pwm_9|Mult0~27\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~27\,
	combout => \pwm_9|half_duty_new[10]~feeder_combout\);

-- Location: FF_X17_Y11_N13
\pwm_9|half_duty_new[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[10]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(10));

-- Location: FF_X15_Y11_N29
\pwm_9|half_duty[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(10),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][10]~q\);

-- Location: FF_X17_Y11_N58
\pwm_9|half_duty_new[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~26\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(9));

-- Location: FF_X15_Y11_N25
\pwm_9|half_duty[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(9),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][9]~q\);

-- Location: LABCELL_X13_Y11_N18
\pwm_9|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~3_combout\ = ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( \pwm_0|count[0][9]~q\ & ( (\pwm_9|half_duty[0][8]~q\ & (\pwm_9|half_duty[0][9]~q\ & (!\pwm_9|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( !\pwm_0|count[0][8]~DUPLICATE_q\ & ( 
-- \pwm_0|count[0][9]~q\ & ( (!\pwm_9|half_duty[0][8]~q\ & (\pwm_9|half_duty[0][9]~q\ & (!\pwm_9|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( \pwm_0|count[0][8]~DUPLICATE_q\ & ( !\pwm_0|count[0][9]~q\ & ( (\pwm_9|half_duty[0][8]~q\ & 
-- (!\pwm_9|half_duty[0][9]~q\ & (!\pwm_9|half_duty[0][10]~q\ $ (\pwm_0|count[0][10]~q\)))) ) ) ) # ( !\pwm_0|count[0][8]~DUPLICATE_q\ & ( !\pwm_0|count[0][9]~q\ & ( (!\pwm_9|half_duty[0][8]~q\ & (!\pwm_9|half_duty[0][9]~q\ & (!\pwm_9|half_duty[0][10]~q\ $ 
-- (\pwm_0|count[0][10]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_half_duty[0][8]~q\,
	datab => \pwm_9|ALT_INV_half_duty[0][10]~q\,
	datac => \pwm_9|ALT_INV_half_duty[0][9]~q\,
	datad => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_0|ALT_INV_count[0][8]~DUPLICATE_q\,
	dataf => \pwm_0|ALT_INV_count[0][9]~q\,
	combout => \pwm_9|Equal1~3_combout\);

-- Location: LABCELL_X17_Y11_N18
\pwm_9|half_duty_new[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[17]~feeder_combout\ = ( \pwm_9|Mult0~34\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~34\,
	combout => \pwm_9|half_duty_new[17]~feeder_combout\);

-- Location: FF_X17_Y11_N19
\pwm_9|half_duty_new[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[17]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(17));

-- Location: FF_X15_Y11_N49
\pwm_9|half_duty[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(17),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][17]~q\);

-- Location: LABCELL_X17_Y11_N15
\pwm_9|half_duty_new[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[18]~feeder_combout\ = ( \pwm_9|Mult0~35\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~35\,
	combout => \pwm_9|half_duty_new[18]~feeder_combout\);

-- Location: FF_X17_Y11_N17
\pwm_9|half_duty_new[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[18]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(18));

-- Location: FF_X15_Y11_N52
\pwm_9|half_duty[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(18),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][18]~q\);

-- Location: LABCELL_X17_Y11_N6
\pwm_9|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~0_combout\ = ( \pwm_9|half_duty[0][18]~q\ & ( \pwm_0|count[0][18]~DUPLICATE_q\ & ( !\pwm_9|half_duty[0][17]~q\ $ (\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_9|half_duty[0][18]~q\ & ( !\pwm_0|count[0][18]~DUPLICATE_q\ & ( 
-- !\pwm_9|half_duty[0][17]~q\ $ (\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_9|ALT_INV_half_duty[0][17]~q\,
	datad => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_9|ALT_INV_half_duty[0][18]~q\,
	dataf => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	combout => \pwm_9|Equal1~0_combout\);

-- Location: FF_X17_Y11_N22
\pwm_9|half_duty_new[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~30\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(13));

-- Location: FF_X15_Y11_N37
\pwm_9|half_duty[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(13),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][13]~q\);

-- Location: FF_X17_Y11_N1
\pwm_9|half_duty_new[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~28\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(11));

-- Location: FF_X15_Y11_N31
\pwm_9|half_duty[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(11),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][11]~q\);

-- Location: FF_X17_Y11_N46
\pwm_9|half_duty_new[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~29\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(12));

-- Location: FF_X15_Y11_N34
\pwm_9|half_duty[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(12),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][12]~q\);

-- Location: LABCELL_X13_Y11_N48
\pwm_9|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~2_combout\ = ( \pwm_0|count[0][11]~q\ & ( \pwm_0|count[0][12]~q\ & ( (\pwm_9|half_duty[0][11]~q\ & (\pwm_9|half_duty[0][12]~q\ & (!\pwm_9|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][11]~q\ & ( 
-- \pwm_0|count[0][12]~q\ & ( (!\pwm_9|half_duty[0][11]~q\ & (\pwm_9|half_duty[0][12]~q\ & (!\pwm_9|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_0|count[0][12]~q\ & ( (\pwm_9|half_duty[0][11]~q\ & 
-- (!\pwm_9|half_duty[0][12]~q\ & (!\pwm_9|half_duty[0][13]~q\ $ (\pwm_0|count[0][13]~q\)))) ) ) ) # ( !\pwm_0|count[0][11]~q\ & ( !\pwm_0|count[0][12]~q\ & ( (!\pwm_9|half_duty[0][11]~q\ & (!\pwm_9|half_duty[0][12]~q\ & (!\pwm_9|half_duty[0][13]~q\ $ 
-- (\pwm_0|count[0][13]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_half_duty[0][13]~q\,
	datab => \pwm_9|ALT_INV_half_duty[0][11]~q\,
	datac => \pwm_0|ALT_INV_count[0][13]~q\,
	datad => \pwm_9|ALT_INV_half_duty[0][12]~q\,
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_0|ALT_INV_count[0][12]~q\,
	combout => \pwm_9|Equal1~2_combout\);

-- Location: LABCELL_X17_Y11_N36
\pwm_9|half_duty_new[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[15]~feeder_combout\ = ( \pwm_9|Mult0~32\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~32\,
	combout => \pwm_9|half_duty_new[15]~feeder_combout\);

-- Location: FF_X17_Y11_N37
\pwm_9|half_duty_new[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[15]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(15));

-- Location: FF_X15_Y11_N43
\pwm_9|half_duty[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(15),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][15]~q\);

-- Location: FF_X17_Y11_N34
\pwm_9|half_duty_new[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~33\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(16));

-- Location: FF_X15_Y11_N46
\pwm_9|half_duty[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(16),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][16]~q\);

-- Location: FF_X17_Y11_N55
\pwm_9|half_duty_new[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~31\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(14));

-- Location: FF_X15_Y11_N40
\pwm_9|half_duty[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(14),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][14]~q\);

-- Location: MLABCELL_X14_Y11_N54
\pwm_9|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~1_combout\ = ( \pwm_0|count[0][15]~q\ & ( \pwm_0|count[0][14]~q\ & ( (\pwm_9|half_duty[0][15]~q\ & (\pwm_9|half_duty[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_9|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( 
-- \pwm_0|count[0][14]~q\ & ( (!\pwm_9|half_duty[0][15]~q\ & (\pwm_9|half_duty[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_9|half_duty[0][16]~q\)))) ) ) ) # ( \pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (\pwm_9|half_duty[0][15]~q\ & 
-- (!\pwm_9|half_duty[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ (\pwm_9|half_duty[0][16]~q\)))) ) ) ) # ( !\pwm_0|count[0][15]~q\ & ( !\pwm_0|count[0][14]~q\ & ( (!\pwm_9|half_duty[0][15]~q\ & (!\pwm_9|half_duty[0][14]~q\ & (!\pwm_0|count[0][16]~q\ $ 
-- (\pwm_9|half_duty[0][16]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datab => \pwm_9|ALT_INV_half_duty[0][15]~q\,
	datac => \pwm_9|ALT_INV_half_duty[0][16]~q\,
	datad => \pwm_9|ALT_INV_half_duty[0][14]~q\,
	datae => \pwm_0|ALT_INV_count[0][15]~q\,
	dataf => \pwm_0|ALT_INV_count[0][14]~q\,
	combout => \pwm_9|Equal1~1_combout\);

-- Location: LABCELL_X17_Y11_N3
\pwm_9|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[7]~feeder_combout\ = ( \pwm_9|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~24\,
	combout => \pwm_9|half_duty_new[7]~feeder_combout\);

-- Location: FF_X17_Y11_N4
\pwm_9|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(7));

-- Location: FF_X15_Y11_N19
\pwm_9|half_duty[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(7),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][7]~q\);

-- Location: LABCELL_X17_Y11_N27
\pwm_9|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[6]~feeder_combout\ = ( \pwm_9|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~23\,
	combout => \pwm_9|half_duty_new[6]~feeder_combout\);

-- Location: FF_X17_Y11_N28
\pwm_9|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(6));

-- Location: FF_X15_Y11_N16
\pwm_9|half_duty[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(6),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][6]~q\);

-- Location: FF_X15_Y11_N56
\pwm_9|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~22\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(5));

-- Location: FF_X15_Y11_N13
\pwm_9|half_duty[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(5),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][5]~q\);

-- Location: LABCELL_X13_Y11_N0
\pwm_9|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~4_combout\ = ( \pwm_9|half_duty[0][5]~q\ & ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_9|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_9|half_duty[0][7]~q\)))) ) ) ) # ( 
-- !\pwm_9|half_duty[0][5]~q\ & ( \pwm_0|count[0][6]~DUPLICATE_q\ & ( (!\pwm_0|count[0][5]~DUPLICATE_q\ & (\pwm_9|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_9|half_duty[0][7]~q\)))) ) ) ) # ( \pwm_9|half_duty[0][5]~q\ & ( 
-- !\pwm_0|count[0][6]~DUPLICATE_q\ & ( (\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_9|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_9|half_duty[0][7]~q\)))) ) ) ) # ( !\pwm_9|half_duty[0][5]~q\ & ( !\pwm_0|count[0][6]~DUPLICATE_q\ & ( 
-- (!\pwm_0|count[0][5]~DUPLICATE_q\ & (!\pwm_9|half_duty[0][6]~q\ & (!\pwm_0|count[0][7]~DUPLICATE_q\ $ (\pwm_9|half_duty[0][7]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][7]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datac => \pwm_9|ALT_INV_half_duty[0][7]~q\,
	datad => \pwm_9|ALT_INV_half_duty[0][6]~q\,
	datae => \pwm_9|ALT_INV_half_duty[0][5]~q\,
	dataf => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	combout => \pwm_9|Equal1~4_combout\);

-- Location: FF_X15_Y11_N59
\pwm_9|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|Mult0~20\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	sload => VCC,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(3));

-- Location: FF_X15_Y11_N7
\pwm_9|half_duty[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(3),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][3]~q\);

-- Location: LABCELL_X17_Y11_N42
\pwm_9|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[2]~feeder_combout\ = ( \pwm_9|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~19\,
	combout => \pwm_9|half_duty_new[2]~feeder_combout\);

-- Location: FF_X17_Y11_N43
\pwm_9|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(2));

-- Location: FF_X15_Y11_N5
\pwm_9|half_duty[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(2),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][2]~q\);

-- Location: LABCELL_X13_Y11_N6
\pwm_9|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~6_combout\ = ( \pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (\pwm_9|half_duty[0][3]~q\ & \pwm_9|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( \pwm_0|count[0][3]~q\ & ( (\pwm_9|half_duty[0][3]~q\ & 
-- !\pwm_9|half_duty[0][2]~q\) ) ) ) # ( \pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (!\pwm_9|half_duty[0][3]~q\ & \pwm_9|half_duty[0][2]~q\) ) ) ) # ( !\pwm_0|count[0][2]~q\ & ( !\pwm_0|count[0][3]~q\ & ( (!\pwm_9|half_duty[0][3]~q\ & 
-- !\pwm_9|half_duty[0][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_9|ALT_INV_half_duty[0][3]~q\,
	datac => \pwm_9|ALT_INV_half_duty[0][2]~q\,
	datae => \pwm_0|ALT_INV_count[0][2]~q\,
	dataf => \pwm_0|ALT_INV_count[0][3]~q\,
	combout => \pwm_9|Equal1~6_combout\);

-- Location: LABCELL_X17_Y11_N51
\pwm_9|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[4]~feeder_combout\ = ( \pwm_9|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~21\,
	combout => \pwm_9|half_duty_new[4]~feeder_combout\);

-- Location: FF_X17_Y11_N52
\pwm_9|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(4));

-- Location: FF_X15_Y11_N10
\pwm_9|half_duty[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(4),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][4]~q\);

-- Location: LABCELL_X17_Y11_N24
\pwm_9|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[0]~feeder_combout\ = ( \pwm_9|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~17\,
	combout => \pwm_9|half_duty_new[0]~feeder_combout\);

-- Location: FF_X17_Y11_N25
\pwm_9|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(0));

-- Location: FF_X15_Y11_N2
\pwm_9|half_duty[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwm_9|half_duty_new\(0),
	sload => VCC,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][0]~q\);

-- Location: LABCELL_X17_Y11_N39
\pwm_9|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty_new[1]~feeder_combout\ = ( \pwm_9|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_Mult0~18\,
	combout => \pwm_9|half_duty_new[1]~feeder_combout\);

-- Location: FF_X17_Y11_N40
\pwm_9|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_enable_pwm~input_o\,
	ena => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty_new\(1));

-- Location: LABCELL_X13_Y11_N54
\pwm_9|half_duty[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|half_duty[0][1]~feeder_combout\ = ( \pwm_9|half_duty_new\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm_9|ALT_INV_half_duty_new\(1),
	combout => \pwm_9|half_duty[0][1]~feeder_combout\);

-- Location: FF_X13_Y11_N56
\pwm_9|half_duty[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|half_duty[0][1]~feeder_combout\,
	ena => \pwm_0|half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|half_duty[0][1]~q\);

-- Location: LABCELL_X13_Y11_N12
\pwm_9|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~5_combout\ = ( \pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_9|half_duty[0][0]~q\ & (\pwm_9|half_duty[0][1]~q\ & !\pwm_0|count[0][19]~q\)) ) ) ) # ( !\pwm_0|count[0][0]~q\ & ( \pwm_0|count[0][1]~DUPLICATE_q\ & ( 
-- (!\pwm_9|half_duty[0][0]~q\ & (\pwm_9|half_duty[0][1]~q\ & !\pwm_0|count[0][19]~q\)) ) ) ) # ( \pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (\pwm_9|half_duty[0][0]~q\ & (!\pwm_9|half_duty[0][1]~q\ & !\pwm_0|count[0][19]~q\)) ) ) ) # ( 
-- !\pwm_0|count[0][0]~q\ & ( !\pwm_0|count[0][1]~DUPLICATE_q\ & ( (!\pwm_9|half_duty[0][0]~q\ & (!\pwm_9|half_duty[0][1]~q\ & !\pwm_0|count[0][19]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000001100000000000000001100000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_9|ALT_INV_half_duty[0][0]~q\,
	datac => \pwm_9|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_0|ALT_INV_count[0][19]~q\,
	datae => \pwm_0|ALT_INV_count[0][0]~q\,
	dataf => \pwm_0|ALT_INV_count[0][1]~DUPLICATE_q\,
	combout => \pwm_9|Equal1~5_combout\);

-- Location: LABCELL_X13_Y11_N24
\pwm_9|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~7_combout\ = ( \pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_9|Equal1~5_combout\ & ( (\pwm_9|Equal1~4_combout\ & (\pwm_9|Equal1~6_combout\ & \pwm_9|half_duty[0][4]~q\)) ) ) ) # ( !\pwm_0|count[0][4]~DUPLICATE_q\ & ( \pwm_9|Equal1~5_combout\ & ( 
-- (\pwm_9|Equal1~4_combout\ & (\pwm_9|Equal1~6_combout\ & !\pwm_9|half_duty[0][4]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_Equal1~4_combout\,
	datab => \pwm_9|ALT_INV_Equal1~6_combout\,
	datad => \pwm_9|ALT_INV_half_duty[0][4]~q\,
	datae => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	dataf => \pwm_9|ALT_INV_Equal1~5_combout\,
	combout => \pwm_9|Equal1~7_combout\);

-- Location: LABCELL_X13_Y11_N30
\pwm_9|Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal1~8_combout\ = ( \pwm_9|Equal1~1_combout\ & ( \pwm_9|Equal1~7_combout\ & ( (\pwm_9|Equal1~3_combout\ & (\pwm_9|Equal1~0_combout\ & \pwm_9|Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_Equal1~3_combout\,
	datab => \pwm_9|ALT_INV_Equal1~0_combout\,
	datac => \pwm_9|ALT_INV_Equal1~2_combout\,
	datae => \pwm_9|ALT_INV_Equal1~1_combout\,
	dataf => \pwm_9|ALT_INV_Equal1~7_combout\,
	combout => \pwm_9|Equal1~8_combout\);

-- Location: LABCELL_X15_Y11_N0
\pwm_9|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~61_sumout\ = SUM(( !\pwm_9|half_duty[0][0]~q\ ) + ( !\pwm_9|half_duty[0][1]~q\ ) + ( !VCC ))
-- \pwm_9|Add1~62\ = CARRY(( !\pwm_9|half_duty[0][0]~q\ ) + ( !\pwm_9|half_duty[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm_9|ALT_INV_half_duty[0][1]~q\,
	datad => \pwm_9|ALT_INV_half_duty[0][0]~q\,
	cin => GND,
	sumout => \pwm_9|Add1~61_sumout\,
	cout => \pwm_9|Add1~62\);

-- Location: LABCELL_X15_Y11_N3
\pwm_9|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~65_sumout\ = SUM(( !\pwm_9|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_9|Add1~62\ ))
-- \pwm_9|Add1~66\ = CARRY(( !\pwm_9|half_duty[0][2]~q\ ) + ( GND ) + ( \pwm_9|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][2]~q\,
	cin => \pwm_9|Add1~62\,
	sumout => \pwm_9|Add1~65_sumout\,
	cout => \pwm_9|Add1~66\);

-- Location: LABCELL_X15_Y11_N6
\pwm_9|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~37_sumout\ = SUM(( !\pwm_9|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_9|Add1~66\ ))
-- \pwm_9|Add1~38\ = CARRY(( !\pwm_9|half_duty[0][3]~q\ ) + ( GND ) + ( \pwm_9|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][3]~q\,
	cin => \pwm_9|Add1~66\,
	sumout => \pwm_9|Add1~37_sumout\,
	cout => \pwm_9|Add1~38\);

-- Location: LABCELL_X15_Y11_N9
\pwm_9|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~41_sumout\ = SUM(( !\pwm_9|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_9|Add1~38\ ))
-- \pwm_9|Add1~42\ = CARRY(( !\pwm_9|half_duty[0][4]~q\ ) + ( GND ) + ( \pwm_9|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][4]~q\,
	cin => \pwm_9|Add1~38\,
	sumout => \pwm_9|Add1~41_sumout\,
	cout => \pwm_9|Add1~42\);

-- Location: LABCELL_X15_Y11_N12
\pwm_9|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~45_sumout\ = SUM(( !\pwm_9|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_9|Add1~42\ ))
-- \pwm_9|Add1~46\ = CARRY(( !\pwm_9|half_duty[0][5]~q\ ) + ( GND ) + ( \pwm_9|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][5]~q\,
	cin => \pwm_9|Add1~42\,
	sumout => \pwm_9|Add1~45_sumout\,
	cout => \pwm_9|Add1~46\);

-- Location: LABCELL_X15_Y11_N15
\pwm_9|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~9_sumout\ = SUM(( !\pwm_9|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_9|Add1~46\ ))
-- \pwm_9|Add1~10\ = CARRY(( !\pwm_9|half_duty[0][6]~q\ ) + ( VCC ) + ( \pwm_9|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][6]~q\,
	cin => \pwm_9|Add1~46\,
	sumout => \pwm_9|Add1~9_sumout\,
	cout => \pwm_9|Add1~10\);

-- Location: LABCELL_X15_Y11_N18
\pwm_9|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~13_sumout\ = SUM(( !\pwm_9|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_9|Add1~10\ ))
-- \pwm_9|Add1~14\ = CARRY(( !\pwm_9|half_duty[0][7]~q\ ) + ( GND ) + ( \pwm_9|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][7]~q\,
	cin => \pwm_9|Add1~10\,
	sumout => \pwm_9|Add1~13_sumout\,
	cout => \pwm_9|Add1~14\);

-- Location: LABCELL_X15_Y11_N21
\pwm_9|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~17_sumout\ = SUM(( !\pwm_9|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_9|Add1~14\ ))
-- \pwm_9|Add1~18\ = CARRY(( !\pwm_9|half_duty[0][8]~q\ ) + ( GND ) + ( \pwm_9|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][8]~q\,
	cin => \pwm_9|Add1~14\,
	sumout => \pwm_9|Add1~17_sumout\,
	cout => \pwm_9|Add1~18\);

-- Location: LABCELL_X15_Y11_N24
\pwm_9|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~69_sumout\ = SUM(( !\pwm_9|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_9|Add1~18\ ))
-- \pwm_9|Add1~70\ = CARRY(( !\pwm_9|half_duty[0][9]~q\ ) + ( VCC ) + ( \pwm_9|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][9]~q\,
	cin => \pwm_9|Add1~18\,
	sumout => \pwm_9|Add1~69_sumout\,
	cout => \pwm_9|Add1~70\);

-- Location: LABCELL_X15_Y11_N27
\pwm_9|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~73_sumout\ = SUM(( !\pwm_9|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_9|Add1~70\ ))
-- \pwm_9|Add1~74\ = CARRY(( !\pwm_9|half_duty[0][10]~q\ ) + ( GND ) + ( \pwm_9|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][10]~q\,
	cin => \pwm_9|Add1~70\,
	sumout => \pwm_9|Add1~73_sumout\,
	cout => \pwm_9|Add1~74\);

-- Location: LABCELL_X15_Y11_N30
\pwm_9|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~49_sumout\ = SUM(( !\pwm_9|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_9|Add1~74\ ))
-- \pwm_9|Add1~50\ = CARRY(( !\pwm_9|half_duty[0][11]~q\ ) + ( GND ) + ( \pwm_9|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][11]~q\,
	cin => \pwm_9|Add1~74\,
	sumout => \pwm_9|Add1~49_sumout\,
	cout => \pwm_9|Add1~50\);

-- Location: LABCELL_X15_Y11_N33
\pwm_9|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~53_sumout\ = SUM(( !\pwm_9|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_9|Add1~50\ ))
-- \pwm_9|Add1~54\ = CARRY(( !\pwm_9|half_duty[0][12]~q\ ) + ( GND ) + ( \pwm_9|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][12]~q\,
	cin => \pwm_9|Add1~50\,
	sumout => \pwm_9|Add1~53_sumout\,
	cout => \pwm_9|Add1~54\);

-- Location: LABCELL_X15_Y11_N36
\pwm_9|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~57_sumout\ = SUM(( !\pwm_9|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_9|Add1~54\ ))
-- \pwm_9|Add1~58\ = CARRY(( !\pwm_9|half_duty[0][13]~q\ ) + ( GND ) + ( \pwm_9|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][13]~q\,
	cin => \pwm_9|Add1~54\,
	sumout => \pwm_9|Add1~57_sumout\,
	cout => \pwm_9|Add1~58\);

-- Location: LABCELL_X15_Y11_N39
\pwm_9|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~29_sumout\ = SUM(( !\pwm_9|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_9|Add1~58\ ))
-- \pwm_9|Add1~30\ = CARRY(( !\pwm_9|half_duty[0][14]~q\ ) + ( VCC ) + ( \pwm_9|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][14]~q\,
	cin => \pwm_9|Add1~58\,
	sumout => \pwm_9|Add1~29_sumout\,
	cout => \pwm_9|Add1~30\);

-- Location: LABCELL_X15_Y11_N42
\pwm_9|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~33_sumout\ = SUM(( !\pwm_9|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_9|Add1~30\ ))
-- \pwm_9|Add1~34\ = CARRY(( !\pwm_9|half_duty[0][15]~q\ ) + ( GND ) + ( \pwm_9|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][15]~q\,
	cin => \pwm_9|Add1~30\,
	sumout => \pwm_9|Add1~33_sumout\,
	cout => \pwm_9|Add1~34\);

-- Location: LABCELL_X15_Y11_N45
\pwm_9|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~21_sumout\ = SUM(( !\pwm_9|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_9|Add1~34\ ))
-- \pwm_9|Add1~22\ = CARRY(( !\pwm_9|half_duty[0][16]~q\ ) + ( VCC ) + ( \pwm_9|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][16]~q\,
	cin => \pwm_9|Add1~34\,
	sumout => \pwm_9|Add1~21_sumout\,
	cout => \pwm_9|Add1~22\);

-- Location: LABCELL_X15_Y11_N48
\pwm_9|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~25_sumout\ = SUM(( !\pwm_9|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_9|Add1~22\ ))
-- \pwm_9|Add1~26\ = CARRY(( !\pwm_9|half_duty[0][17]~q\ ) + ( VCC ) + ( \pwm_9|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][17]~q\,
	cin => \pwm_9|Add1~22\,
	sumout => \pwm_9|Add1~25_sumout\,
	cout => \pwm_9|Add1~26\);

-- Location: MLABCELL_X14_Y11_N42
\pwm_9|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~2_combout\ = ( \pwm_9|Add1~25_sumout\ & ( \pwm_9|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_9|Add1~25_sumout\ & ( \pwm_9|Add1~21_sumout\ & ( (\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( \pwm_9|Add1~25_sumout\ & ( !\pwm_9|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & \pwm_0|count[0][17]~DUPLICATE_q\) ) ) ) # ( !\pwm_9|Add1~25_sumout\ & ( !\pwm_9|Add1~21_sumout\ & ( (!\pwm_0|count[0][16]~q\ & 
-- !\pwm_0|count[0][17]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][16]~q\,
	datac => \pwm_0|ALT_INV_count[0][17]~DUPLICATE_q\,
	datae => \pwm_9|ALT_INV_Add1~25_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~21_sumout\,
	combout => \pwm_9|pwm_out~2_combout\);

-- Location: LABCELL_X15_Y11_N51
\pwm_9|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~1_sumout\ = SUM(( !\pwm_9|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_9|Add1~26\ ))
-- \pwm_9|Add1~2\ = CARRY(( !\pwm_9|half_duty[0][18]~q\ ) + ( VCC ) + ( \pwm_9|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_9|ALT_INV_half_duty[0][18]~q\,
	cin => \pwm_9|Add1~26\,
	sumout => \pwm_9|Add1~1_sumout\,
	cout => \pwm_9|Add1~2\);

-- Location: LABCELL_X15_Y11_N54
\pwm_9|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Add1~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm_9|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm_9|Add1~2\,
	sumout => \pwm_9|Add1~5_sumout\);

-- Location: MLABCELL_X14_Y11_N18
\pwm_9|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~0_combout\ = ( \pwm_9|Add1~17_sumout\ & ( \pwm_9|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_9|Add1~9_sumout\)))) ) ) ) # ( !\pwm_9|Add1~17_sumout\ & ( 
-- \pwm_9|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~q\ & (\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_9|Add1~9_sumout\)))) ) ) ) # ( \pwm_9|Add1~17_sumout\ & ( !\pwm_9|Add1~13_sumout\ & ( (\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~q\ 
-- & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_9|Add1~9_sumout\)))) ) ) ) # ( !\pwm_9|Add1~17_sumout\ & ( !\pwm_9|Add1~13_sumout\ & ( (!\pwm_0|count[0][8]~q\ & (!\pwm_0|count[0][7]~q\ & (!\pwm_0|count[0][6]~DUPLICATE_q\ $ (\pwm_9|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][6]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][8]~q\,
	datac => \pwm_9|ALT_INV_Add1~9_sumout\,
	datad => \pwm_0|ALT_INV_count[0][7]~q\,
	datae => \pwm_9|ALT_INV_Add1~17_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~13_sumout\,
	combout => \pwm_9|pwm_out~0_combout\);

-- Location: MLABCELL_X14_Y11_N24
\pwm_9|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~1_combout\ = ( \pwm_9|Add1~5_sumout\ & ( \pwm_9|pwm_out~0_combout\ & ( (!\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~DUPLICATE_q\ $ (\pwm_9|Add1~1_sumout\))) ) ) ) # ( !\pwm_9|Add1~5_sumout\ & ( \pwm_9|pwm_out~0_combout\ & ( 
-- (\pwm_0|count[0][19]~q\ & (!\pwm_0|count[0][18]~DUPLICATE_q\ $ (\pwm_9|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001010000011000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][19]~q\,
	datab => \pwm_0|ALT_INV_count[0][18]~DUPLICATE_q\,
	datac => \pwm_9|ALT_INV_Add1~1_sumout\,
	datae => \pwm_9|ALT_INV_Add1~5_sumout\,
	dataf => \pwm_9|ALT_INV_pwm_out~0_combout\,
	combout => \pwm_9|pwm_out~1_combout\);

-- Location: MLABCELL_X14_Y11_N36
\pwm_9|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~3_combout\ = ( \pwm_9|Add1~41_sumout\ & ( \pwm_9|Add1~37_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_9|Add1~45_sumout\)))) ) ) ) # ( !\pwm_9|Add1~41_sumout\ & ( 
-- \pwm_9|Add1~37_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_9|Add1~45_sumout\)))) ) ) ) # ( \pwm_9|Add1~41_sumout\ & ( !\pwm_9|Add1~37_sumout\ & ( (\pwm_0|count[0][4]~DUPLICATE_q\ & 
-- (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ (\pwm_9|Add1~45_sumout\)))) ) ) ) # ( !\pwm_9|Add1~41_sumout\ & ( !\pwm_9|Add1~37_sumout\ & ( (!\pwm_0|count[0][4]~DUPLICATE_q\ & (!\pwm_0|count[0][3]~q\ & (!\pwm_0|count[0][5]~DUPLICATE_q\ $ 
-- (\pwm_9|Add1~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][5]~DUPLICATE_q\,
	datab => \pwm_0|ALT_INV_count[0][4]~DUPLICATE_q\,
	datac => \pwm_0|ALT_INV_count[0][3]~q\,
	datad => \pwm_9|ALT_INV_Add1~45_sumout\,
	datae => \pwm_9|ALT_INV_Add1~41_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~37_sumout\,
	combout => \pwm_9|pwm_out~3_combout\);

-- Location: MLABCELL_X14_Y11_N30
\pwm_9|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~4_combout\ = ( \pwm_9|Add1~33_sumout\ & ( \pwm_9|Add1~29_sumout\ & ( (\pwm_9|pwm_out~3_combout\ & (\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_9|Add1~33_sumout\ & ( \pwm_9|Add1~29_sumout\ & ( (\pwm_9|pwm_out~3_combout\ 
-- & (\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) ) # ( \pwm_9|Add1~33_sumout\ & ( !\pwm_9|Add1~29_sumout\ & ( (\pwm_9|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & \pwm_0|count[0][15]~q\)) ) ) ) # ( !\pwm_9|Add1~33_sumout\ & ( 
-- !\pwm_9|Add1~29_sumout\ & ( (\pwm_9|pwm_out~3_combout\ & (!\pwm_0|count[0][14]~q\ & !\pwm_0|count[0][15]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000001000000010000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_pwm_out~3_combout\,
	datab => \pwm_0|ALT_INV_count[0][14]~q\,
	datac => \pwm_0|ALT_INV_count[0][15]~q\,
	datae => \pwm_9|ALT_INV_Add1~33_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~29_sumout\,
	combout => \pwm_9|pwm_out~4_combout\);

-- Location: LABCELL_X13_Y11_N45
\pwm_9|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal2~0_combout\ = ( !\pwm_0|count[0][11]~q\ & ( \pwm_9|Add1~49_sumout\ ) ) # ( \pwm_0|count[0][11]~q\ & ( !\pwm_9|Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][11]~q\,
	dataf => \pwm_9|ALT_INV_Add1~49_sumout\,
	combout => \pwm_9|Equal2~0_combout\);

-- Location: MLABCELL_X14_Y11_N6
\pwm_9|pwm_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~6_combout\ = ( \pwm_9|Add1~73_sumout\ & ( \pwm_9|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_9|Add1~73_sumout\ & ( \pwm_9|Add1~69_sumout\ & ( (\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) ) # 
-- ( \pwm_9|Add1~73_sumout\ & ( !\pwm_9|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & \pwm_0|count[0][10]~q\) ) ) ) # ( !\pwm_9|Add1~73_sumout\ & ( !\pwm_9|Add1~69_sumout\ & ( (!\pwm_0|count[0][9]~q\ & !\pwm_0|count[0][10]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][9]~q\,
	datac => \pwm_0|ALT_INV_count[0][10]~q\,
	datae => \pwm_9|ALT_INV_Add1~73_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~69_sumout\,
	combout => \pwm_9|pwm_out~6_combout\);

-- Location: MLABCELL_X14_Y11_N3
\pwm_9|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|Equal2~1_combout\ = ( !\pwm_0|count[0][12]~q\ & ( \pwm_9|Add1~53_sumout\ ) ) # ( \pwm_0|count[0][12]~q\ & ( !\pwm_9|Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm_0|ALT_INV_count[0][12]~q\,
	dataf => \pwm_9|ALT_INV_Add1~53_sumout\,
	combout => \pwm_9|Equal2~1_combout\);

-- Location: LABCELL_X15_Y13_N42
\pwm_9|pwm_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~5_combout\ = ( \pwm_9|Add1~61_sumout\ & ( \pwm_9|Add1~65_sumout\ & ( (\pwm_0|count[0][2]~q\ & (\pwm_0|count[0][1]~q\ & (!\pwm_9|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_9|Add1~61_sumout\ & ( \pwm_9|Add1~65_sumout\ & ( 
-- (\pwm_0|count[0][2]~q\ & (!\pwm_0|count[0][1]~q\ & (!\pwm_9|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) ) # ( \pwm_9|Add1~61_sumout\ & ( !\pwm_9|Add1~65_sumout\ & ( (!\pwm_0|count[0][2]~q\ & (\pwm_0|count[0][1]~q\ & (!\pwm_9|half_duty[0][0]~q\ $ 
-- (\pwm_0|count[0][0]~q\)))) ) ) ) # ( !\pwm_9|Add1~61_sumout\ & ( !\pwm_9|Add1~65_sumout\ & ( (!\pwm_0|count[0][2]~q\ & (!\pwm_0|count[0][1]~q\ & (!\pwm_9|half_duty[0][0]~q\ $ (\pwm_0|count[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_half_duty[0][0]~q\,
	datab => \pwm_0|ALT_INV_count[0][0]~q\,
	datac => \pwm_0|ALT_INV_count[0][2]~q\,
	datad => \pwm_0|ALT_INV_count[0][1]~q\,
	datae => \pwm_9|ALT_INV_Add1~61_sumout\,
	dataf => \pwm_9|ALT_INV_Add1~65_sumout\,
	combout => \pwm_9|pwm_out~5_combout\);

-- Location: MLABCELL_X14_Y11_N48
\pwm_9|pwm_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~7_combout\ = ( !\pwm_9|Equal2~1_combout\ & ( \pwm_9|pwm_out~5_combout\ & ( (!\pwm_9|Equal2~0_combout\ & (\pwm_9|pwm_out~6_combout\ & (!\pwm_0|count[0][13]~q\ $ (\pwm_9|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_0|ALT_INV_count[0][13]~q\,
	datab => \pwm_9|ALT_INV_Add1~57_sumout\,
	datac => \pwm_9|ALT_INV_Equal2~0_combout\,
	datad => \pwm_9|ALT_INV_pwm_out~6_combout\,
	datae => \pwm_9|ALT_INV_Equal2~1_combout\,
	dataf => \pwm_9|ALT_INV_pwm_out~5_combout\,
	combout => \pwm_9|pwm_out~7_combout\);

-- Location: MLABCELL_X14_Y11_N12
\pwm_9|pwm_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_9|pwm_out~8_combout\ = ( \pwm_9|pwm_out\(0) & ( \pwm_9|pwm_out~7_combout\ & ( !\pwm_9|Equal1~8_combout\ ) ) ) # ( !\pwm_9|pwm_out\(0) & ( \pwm_9|pwm_out~7_combout\ & ( (!\pwm_9|Equal1~8_combout\ & (\pwm_9|pwm_out~2_combout\ & 
-- (\pwm_9|pwm_out~1_combout\ & \pwm_9|pwm_out~4_combout\))) ) ) ) # ( \pwm_9|pwm_out\(0) & ( !\pwm_9|pwm_out~7_combout\ & ( !\pwm_9|Equal1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_9|ALT_INV_Equal1~8_combout\,
	datab => \pwm_9|ALT_INV_pwm_out~2_combout\,
	datac => \pwm_9|ALT_INV_pwm_out~1_combout\,
	datad => \pwm_9|ALT_INV_pwm_out~4_combout\,
	datae => \pwm_9|ALT_INV_pwm_out\(0),
	dataf => \pwm_9|ALT_INV_pwm_out~7_combout\,
	combout => \pwm_9|pwm_out~8_combout\);

-- Location: FF_X14_Y11_N13
\pwm_9|pwm_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_9|pwm_out~8_combout\,
	clrn => \reset_pwm~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_9|pwm_out\(0));

-- Location: LABCELL_X58_Y10_N54
\quad_segment7_1|bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~1_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & !\duty_value[5]~_Duplicate_10_q\)) # 
-- (\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ (!\duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ 
-- (!\duty_value[5]~_Duplicate_10_q\))) # (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( 
-- (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & 
-- (!\duty_value[3]~_Duplicate_10_q\ $ (((\duty_value[5]~_Duplicate_10_q\))))) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & 
-- (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ $ 
-- (((\duty_value[5]~_Duplicate_10_q\))))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ $ (!\duty_value[3]~_Duplicate_10_q\ $ 
-- (\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[4]~_Duplicate_10_q\ & ((!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & 
-- !\duty_value[5]~_Duplicate_10_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000110011000011001100001100101100110000110011000011001100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|bcd~1_combout\);

-- Location: LABCELL_X58_Y10_N24
\quad_segment7_1|bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~0_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\)))) # 
-- (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ (((!\duty_value[3]~_Duplicate_10_q\) # (\duty_value[5]~_Duplicate_10_q\))))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( 
-- (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ (((!\duty_value[3]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\) 
-- # (\duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ (((!\duty_value[3]~_Duplicate_10_q\ & 
-- \duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\) # (\duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( 
-- !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & 
-- !\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110000001111000000111100011100000011110000001111000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|bcd~0_combout\);

-- Location: LABCELL_X58_Y10_N36
\quad_segment7_1|bcd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|bcd~2_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # 
-- (\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & !\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ $ (\duty_value[5]~_Duplicate_10_q\)))) ) 
-- ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\))) # 
-- (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & !\duty_value[5]~_Duplicate_10_q\))) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( 
-- (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\))) # (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & 
-- !\duty_value[5]~_Duplicate_10_q\))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ $ 
-- (\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & 
-- !\duty_value[5]~_Duplicate_10_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000110000000011000000000000001100000000110000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|bcd~2_combout\);

-- Location: LABCELL_X63_Y2_N6
\quad_segment7_1|digit1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[2]~1_combout\ = ( \quad_segment7_1|bcd~2_combout\ & ( !\quad_segment7_1|bcd~0_combout\ $ (\duty_value[1]~_Duplicate_10_q\) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( (\quad_segment7_1|bcd~0_combout\ & 
-- ((!\quad_segment7_1|bcd~1_combout\) # (\duty_value[1]~_Duplicate_10_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	combout => \quad_segment7_1|digit1[2]~1_combout\);

-- Location: LABCELL_X63_Y2_N9
\quad_segment7_1|digit1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[3]~2_combout\ = ( \quad_segment7_1|bcd~2_combout\ & ( !\quad_segment7_1|bcd~1_combout\ $ (((!\quad_segment7_1|bcd~0_combout\ & !\duty_value[1]~_Duplicate_10_q\))) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( 
-- (\quad_segment7_1|bcd~1_combout\ & (!\quad_segment7_1|bcd~0_combout\ & !\duty_value[1]~_Duplicate_10_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datad => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	combout => \quad_segment7_1|digit1[3]~2_combout\);

-- Location: LABCELL_X63_Y2_N51
\quad_segment7_1|digit1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit1[1]~0_combout\ = ( !\duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~1_combout\ & ( (\quad_segment7_1|bcd~0_combout\) # (\quad_segment7_1|bcd~2_combout\) ) ) ) # ( \duty_value[1]~_Duplicate_10_q\ & ( 
-- !\quad_segment7_1|bcd~1_combout\ & ( !\quad_segment7_1|bcd~2_combout\ ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~1_combout\ & ( \quad_segment7_1|bcd~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001011111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datae => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	combout => \quad_segment7_1|digit1[1]~0_combout\);

-- Location: LABCELL_X63_Y2_N27
\quad_segment7_1|LSB_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux0~0_combout\ = ( !\quad_segment7_1|digit1[1]~0_combout\ & ( (!\quad_segment7_1|digit1[3]~2_combout\ & (!\duty_value[0]~_Duplicate_10_q\ $ (!\quad_segment7_1|digit1[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	datac => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datad => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux0~0_combout\);

-- Location: LABCELL_X63_Y2_N42
\quad_segment7_1|LSB_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux1~0_combout\ = ( \quad_segment7_1|bcd~2_combout\ & ( (!\quad_segment7_1|bcd~0_combout\ & (!\duty_value[1]~_Duplicate_10_q\ & !\duty_value[0]~_Duplicate_10_q\)) # (\quad_segment7_1|bcd~0_combout\ & 
-- (\duty_value[1]~_Duplicate_10_q\ & \duty_value[0]~_Duplicate_10_q\)) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( (\quad_segment7_1|bcd~0_combout\ & ((!\quad_segment7_1|bcd~1_combout\ & (!\duty_value[1]~_Duplicate_10_q\ $ 
-- (!\duty_value[0]~_Duplicate_10_q\))) # (\quad_segment7_1|bcd~1_combout\ & (\duty_value[1]~_Duplicate_10_q\ & \duty_value[0]~_Duplicate_10_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100001000000100010000111000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux1~0_combout\);

-- Location: LABCELL_X63_Y2_N45
\quad_segment7_1|LSB_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux2~0_combout\ = ( \quad_segment7_1|bcd~2_combout\ & ( (\quad_segment7_1|bcd~0_combout\ & (!\duty_value[0]~_Duplicate_10_q\ & !\duty_value[1]~_Duplicate_10_q\)) ) ) # ( !\quad_segment7_1|bcd~2_combout\ & ( 
-- (!\duty_value[0]~_Duplicate_10_q\ & ((!\quad_segment7_1|bcd~1_combout\ & (!\quad_segment7_1|bcd~0_combout\ & \duty_value[1]~_Duplicate_10_q\)) # (\quad_segment7_1|bcd~1_combout\ & (\quad_segment7_1|bcd~0_combout\ & !\duty_value[1]~_Duplicate_10_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000000000100001000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datab => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	datac => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux2~0_combout\);

-- Location: LABCELL_X63_Y2_N12
\quad_segment7_1|LSB_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux3~0_combout\ = ( !\quad_segment7_1|digit1[3]~2_combout\ & ( (!\quad_segment7_1|digit1[1]~0_combout\ & (!\quad_segment7_1|digit1[2]~1_combout\ $ (!\duty_value[0]~_Duplicate_10_q\))) # (\quad_segment7_1|digit1[1]~0_combout\ 
-- & (\quad_segment7_1|digit1[2]~1_combout\ & \duty_value[0]~_Duplicate_10_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datab => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datad => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux3~0_combout\);

-- Location: LABCELL_X63_Y2_N24
\quad_segment7_1|LSB_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux4~0_combout\ = ( \quad_segment7_1|bcd~0_combout\ & ( (!\duty_value[1]~_Duplicate_10_q\ $ (((\quad_segment7_1|bcd~1_combout\) # (\quad_segment7_1|bcd~2_combout\)))) # (\duty_value[0]~_Duplicate_10_q\) ) ) # ( 
-- !\quad_segment7_1|bcd~0_combout\ & ( \duty_value[0]~_Duplicate_10_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110110011011111111011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux4~0_combout\);

-- Location: LABCELL_X63_Y2_N15
\quad_segment7_1|LSB_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux5~0_combout\ = ( !\quad_segment7_1|digit1[3]~2_combout\ & ( (!\quad_segment7_1|digit1[1]~0_combout\ & (!\quad_segment7_1|digit1[2]~1_combout\ & \duty_value[0]~_Duplicate_10_q\)) # (\quad_segment7_1|digit1[1]~0_combout\ & 
-- ((!\quad_segment7_1|digit1[2]~1_combout\) # (\duty_value[0]~_Duplicate_10_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datab => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	datac => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux5~0_combout\);

-- Location: LABCELL_X63_Y2_N54
\quad_segment7_1|LSB_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LSB_segment7|Mux6~0_combout\ = ( \duty_value[0]~_Duplicate_10_q\ & ( \quad_segment7_1|digit1[2]~1_combout\ & ( (!\quad_segment7_1|digit1[1]~0_combout\) # (\quad_segment7_1|digit1[3]~2_combout\) ) ) ) # ( !\duty_value[0]~_Duplicate_10_q\ & 
-- ( \quad_segment7_1|digit1[2]~1_combout\ ) ) # ( \duty_value[0]~_Duplicate_10_q\ & ( !\quad_segment7_1|digit1[2]~1_combout\ & ( (\quad_segment7_1|digit1[3]~2_combout\) # (\quad_segment7_1|digit1[1]~0_combout\) ) ) ) # ( !\duty_value[0]~_Duplicate_10_q\ & ( 
-- !\quad_segment7_1|digit1[2]~1_combout\ & ( (\quad_segment7_1|digit1[3]~2_combout\) # (\quad_segment7_1|digit1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit1[1]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_digit1[3]~2_combout\,
	datae => \ALT_INV_duty_value[0]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_digit1[2]~1_combout\,
	combout => \quad_segment7_1|LSB_segment7|Mux6~0_combout\);

-- Location: LABCELL_X58_Y10_N48
\quad_segment7_1|digit2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[2]~2_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & !\duty_value[5]~_Duplicate_10_q\)) # (\duty_value[7]~_Duplicate_10_q\ 
-- & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (\duty_value[5]~_Duplicate_10_q\ & 
-- ((\duty_value[4]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[4]~_Duplicate_10_q\ & ((\duty_value[5]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\))) # (\duty_value[4]~_Duplicate_10_q\ 
-- & ((!\duty_value[5]~_Duplicate_10_q\))))) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & !\duty_value[5]~_Duplicate_10_q\)) # 
-- (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & 
-- (\duty_value[5]~_Duplicate_10_q\ & ((\duty_value[4]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[4]~_Duplicate_10_q\ & ((\duty_value[5]~_Duplicate_10_q\))) # (\duty_value[4]~_Duplicate_10_q\ 
-- & ((!\duty_value[3]~_Duplicate_10_q\) # (!\duty_value[5]~_Duplicate_10_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101111110101000000000010100010101011110101010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|digit2[2]~2_combout\);

-- Location: LABCELL_X63_Y2_N0
\quad_segment7_1|digit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[0]~0_combout\ = ( \duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~1_combout\ $ (\quad_segment7_1|bcd~2_combout\) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( 
-- \quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~1_combout\ $ (\quad_segment7_1|bcd~2_combout\) ) ) ) # ( \duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~1_combout\ $ 
-- (\quad_segment7_1|bcd~2_combout\) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( !\quad_segment7_1|bcd~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datae => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|digit2[0]~0_combout\);

-- Location: LABCELL_X58_Y10_N18
\quad_segment7_1|digit2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[3]~3_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[5]~_Duplicate_10_q\ & ((!\duty_value[7]~_Duplicate_10_q\ & ((\duty_value[4]~_Duplicate_10_q\))) # 
-- (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ & !\duty_value[4]~_Duplicate_10_q\)))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (\duty_value[7]~_Duplicate_10_q\ & 
-- (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[3]~_Duplicate_10_q\ & 
-- (!\duty_value[7]~_Duplicate_10_q\ $ (!\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( 
-- !\duty_value[2]~_Duplicate_10_q\ & ( (\duty_value[7]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010010101000000000000000000001010100101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|digit2[3]~3_combout\);

-- Location: LABCELL_X58_Y10_N6
\quad_segment7_1|digit2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|digit2[1]~1_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ $ (((\duty_value[5]~_Duplicate_10_q\))))) # 
-- (\duty_value[4]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ $ (!\duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( 
-- (!\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ $ (((!\duty_value[5]~_Duplicate_10_q\) # (\duty_value[3]~_Duplicate_10_q\))))) # (\duty_value[7]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & 
-- ((!\duty_value[3]~_Duplicate_10_q\) # (\duty_value[5]~_Duplicate_10_q\)))) ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ $ 
-- (((\duty_value[5]~_Duplicate_10_q\))))) # (\duty_value[4]~_Duplicate_10_q\ & (!\duty_value[7]~_Duplicate_10_q\ & (\duty_value[3]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( 
-- !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[3]~_Duplicate_10_q\ & (!\duty_value[4]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\ & (\duty_value[4]~_Duplicate_10_q\ & 
-- !\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[4]~_Duplicate_10_q\) # ((!\duty_value[3]~_Duplicate_10_q\ & \duty_value[5]~_Duplicate_10_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001011010100101000000101001001001010110100101010000101010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|digit2[1]~1_combout\);

-- Location: LABCELL_X61_Y2_N15
\quad_segment7_1|second_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux0~0_combout\ = ( !\quad_segment7_1|digit2[1]~1_combout\ & ( (!\quad_segment7_1|digit2[3]~3_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ $ (\quad_segment7_1|digit2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000000000000000000010100101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	datae => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \quad_segment7_1|second_segment7|Mux0~0_combout\);

-- Location: LABCELL_X63_Y2_N30
\quad_segment7_1|second_segment7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux1~0_combout\ = ( \duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|digit2[1]~1_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|digit2[1]~1_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( \duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|digit2[1]~1_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|digit2[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110100100000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux1~0_combout\);

-- Location: LABCELL_X63_Y2_N36
\quad_segment7_1|second_segment7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux2~0_combout\ = ( \duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( \duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|digit2[2]~2_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ 
-- (\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( (!\quad_segment7_1|bcd~2_combout\ & (\quad_segment7_1|digit2[1]~1_combout\ & !\quad_segment7_1|digit2[2]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000010000000000100001000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux2~0_combout\);

-- Location: LABCELL_X61_Y2_N18
\quad_segment7_1|second_segment7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux3~0_combout\ = ( !\quad_segment7_1|digit2[3]~3_combout\ & ( \quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[1]~1_combout\ & \quad_segment7_1|digit2[2]~2_combout\) ) ) ) # ( 
-- !\quad_segment7_1|digit2[3]~3_combout\ & ( !\quad_segment7_1|digit2[0]~0_combout\ & ( !\quad_segment7_1|digit2[1]~1_combout\ $ (\quad_segment7_1|digit2[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux3~0_combout\);

-- Location: LABCELL_X63_Y2_N18
\quad_segment7_1|second_segment7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux4~0_combout\ = ( \duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( (!\quad_segment7_1|digit2[1]~1_combout\ & ((!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\)) # 
-- (\quad_segment7_1|digit2[2]~2_combout\))) # (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ ((!\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( \quad_segment7_1|bcd~0_combout\ & ( 
-- (!\quad_segment7_1|digit2[1]~1_combout\ & ((!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\)) # (\quad_segment7_1|digit2[2]~2_combout\))) # (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ 
-- ((!\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( \duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( (!\quad_segment7_1|digit2[1]~1_combout\ & ((!\quad_segment7_1|bcd~2_combout\ $ (!\quad_segment7_1|bcd~1_combout\)) # 
-- (\quad_segment7_1|digit2[2]~2_combout\))) # (\quad_segment7_1|digit2[1]~1_combout\ & (!\quad_segment7_1|bcd~2_combout\ $ ((!\quad_segment7_1|bcd~1_combout\)))) ) ) ) # ( !\duty_value[1]~_Duplicate_10_q\ & ( !\quad_segment7_1|bcd~0_combout\ & ( 
-- ((!\quad_segment7_1|digit2[1]~1_combout\ & \quad_segment7_1|digit2[2]~2_combout\)) # (\quad_segment7_1|bcd~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010110101101111001011010110111100101101011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_bcd~2_combout\,
	datab => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_bcd~1_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \ALT_INV_duty_value[1]~_Duplicate_10_q\,
	dataf => \quad_segment7_1|ALT_INV_bcd~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux4~0_combout\);

-- Location: LABCELL_X61_Y2_N24
\quad_segment7_1|second_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux5~0_combout\ = ( !\quad_segment7_1|digit2[3]~3_combout\ & ( \quad_segment7_1|digit2[0]~0_combout\ & ( (\quad_segment7_1|digit2[1]~1_combout\ & !\quad_segment7_1|digit2[2]~2_combout\) ) ) ) # ( 
-- !\quad_segment7_1|digit2[3]~3_combout\ & ( !\quad_segment7_1|digit2[0]~0_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\) # (\quad_segment7_1|digit2[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datae => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	dataf => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	combout => \quad_segment7_1|second_segment7|Mux5~0_combout\);

-- Location: LABCELL_X61_Y2_N33
\quad_segment7_1|second_segment7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|second_segment7|Mux6~0_combout\ = ( \quad_segment7_1|digit2[1]~1_combout\ & ( (!\quad_segment7_1|digit2[2]~2_combout\) # ((\quad_segment7_1|digit2[3]~3_combout\) # (\quad_segment7_1|digit2[0]~0_combout\)) ) ) # ( 
-- !\quad_segment7_1|digit2[1]~1_combout\ & ( (\quad_segment7_1|digit2[3]~3_combout\) # (\quad_segment7_1|digit2[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101011111111111101010101111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \quad_segment7_1|ALT_INV_digit2[2]~2_combout\,
	datac => \quad_segment7_1|ALT_INV_digit2[0]~0_combout\,
	datad => \quad_segment7_1|ALT_INV_digit2[3]~3_combout\,
	datae => \quad_segment7_1|ALT_INV_digit2[1]~1_combout\,
	combout => \quad_segment7_1|second_segment7|Mux6~0_combout\);

-- Location: LABCELL_X58_Y10_N0
\quad_segment7_1|third_segment7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux0~0_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & (((!\duty_value[5]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ & 
-- (((\duty_value[5]~_Duplicate_10_q\) # (\duty_value[4]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( !\duty_value[7]~_Duplicate_10_q\ ) ) ) # ( 
-- \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( (!\duty_value[7]~_Duplicate_10_q\ & ((!\duty_value[5]~_Duplicate_10_q\) # ((!\duty_value[3]~_Duplicate_10_q\ & !\duty_value[4]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\ 
-- & (((\duty_value[5]~_Duplicate_10_q\) # (\duty_value[4]~_Duplicate_10_q\)) # (\duty_value[3]~_Duplicate_10_q\))) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( !\duty_value[7]~_Duplicate_10_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101111111101010110101010101010101011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|third_segment7|Mux0~0_combout\);

-- Location: LABCELL_X58_Y10_N30
\quad_segment7_1|third_segment7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux0~1_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[3]~_Duplicate_10_q\ & ( \duty_value[7]~_Duplicate_10_q\ ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[3]~_Duplicate_10_q\ & ( 
-- (\duty_value[7]~_Duplicate_10_q\ & ((\duty_value[5]~_Duplicate_10_q\) # (\duty_value[4]~_Duplicate_10_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	combout => \quad_segment7_1|third_segment7|Mux0~1_combout\);

-- Location: LABCELL_X58_Y10_N12
\quad_segment7_1|third_segment7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|third_segment7|Mux5~0_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[2]~_Duplicate_10_q\ & ( (\duty_value[5]~_Duplicate_10_q\) # (\duty_value[7]~_Duplicate_10_q\) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( 
-- \duty_value[2]~_Duplicate_10_q\ & ( \duty_value[7]~_Duplicate_10_q\ ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( ((\duty_value[5]~_Duplicate_10_q\ & ((\duty_value[4]~_Duplicate_10_q\) # 
-- (\duty_value[3]~_Duplicate_10_q\)))) # (\duty_value[7]~_Duplicate_10_q\) ) ) ) # ( !\duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[2]~_Duplicate_10_q\ & ( \duty_value[7]~_Duplicate_10_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	datad => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[2]~_Duplicate_10_q\,
	combout => \quad_segment7_1|third_segment7|Mux5~0_combout\);

-- Location: LABCELL_X58_Y10_N45
\quad_segment7_1|LessThan25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \quad_segment7_1|LessThan25~0_combout\ = ( \duty_value[6]~_Duplicate_10_q\ & ( \duty_value[4]~_Duplicate_10_q\ & ( \duty_value[7]~_Duplicate_10_q\ ) ) ) # ( \duty_value[6]~_Duplicate_10_q\ & ( !\duty_value[4]~_Duplicate_10_q\ & ( 
-- (\duty_value[7]~_Duplicate_10_q\ & ((\duty_value[3]~_Duplicate_10_q\) # (\duty_value[5]~_Duplicate_10_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010001010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty_value[7]~_Duplicate_10_q\,
	datab => \ALT_INV_duty_value[5]~_Duplicate_10_q\,
	datac => \ALT_INV_duty_value[3]~_Duplicate_10_q\,
	datae => \ALT_INV_duty_value[6]~_Duplicate_10_q\,
	dataf => \ALT_INV_duty_value[4]~_Duplicate_10_q\,
	combout => \quad_segment7_1|LessThan25~0_combout\);

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


