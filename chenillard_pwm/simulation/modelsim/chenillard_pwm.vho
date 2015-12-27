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

-- DATE "12/15/2015 13:08:18"

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

ENTITY 	chenillard_pwm IS
    PORT (
	ena : IN std_logic;
	clk : IN std_logic;
	reset_n : IN std_logic;
	delay : IN std_logic_vector(11 DOWNTO 0);
	leds_output : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END chenillard_pwm;

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
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[2]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[3]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[8]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delay[11]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chenillard_pwm IS
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
SIGNAL ww_delay : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_leds_output : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:0:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:0:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:0:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:1:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:1:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:1:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:2:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:2:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:2:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:3:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:3:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:3:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:4:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:4:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:4:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:5:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:5:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:5:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:6:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:6:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:6:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:7:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:7:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:7:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:8:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:8:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:8:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:9:pwm|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwms:9:pwm|Mult0~8_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:9:pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~mult_hlmac_AX_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0~mult_hlmac_AY_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mult0~mult_hlmac_BX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~mult_hlmac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~mult_hlmac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \pwms:0:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~71\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~9\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~10\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~11\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~12\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~13\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~14\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~15\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~16\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~26\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~27\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~28\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~29\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~30\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~31\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~32\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~33\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~34\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~35\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~36\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~37\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~38\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~39\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~40\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~41\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~42\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~43\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~44\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~45\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~46\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~47\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~48\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~49\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~50\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~51\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~52\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~53\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~54\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~55\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~56\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~57\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~58\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~59\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~60\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~61\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~62\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~63\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~64\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~65\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~66\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~67\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~68\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~69\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~70\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~71\ : std_logic;
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
SIGNAL \Mult0~669\ : std_logic;
SIGNAL \Mult0~670\ : std_logic;
SIGNAL \Mult0~671\ : std_logic;
SIGNAL \Mult0~672\ : std_logic;
SIGNAL \Mult0~673\ : std_logic;
SIGNAL \Mult0~674\ : std_logic;
SIGNAL \Mult0~675\ : std_logic;
SIGNAL \Mult0~676\ : std_logic;
SIGNAL \Mult0~677\ : std_logic;
SIGNAL \Mult0~678\ : std_logic;
SIGNAL \Mult0~679\ : std_logic;
SIGNAL \Mult0~680\ : std_logic;
SIGNAL \Mult0~349\ : std_logic;
SIGNAL \Mult0~350\ : std_logic;
SIGNAL \Mult0~351\ : std_logic;
SIGNAL \Mult0~352\ : std_logic;
SIGNAL \Mult0~353\ : std_logic;
SIGNAL \Mult0~354\ : std_logic;
SIGNAL \Mult0~355\ : std_logic;
SIGNAL \Mult0~356\ : std_logic;
SIGNAL \Mult0~357\ : std_logic;
SIGNAL \Mult0~358\ : std_logic;
SIGNAL \Mult0~359\ : std_logic;
SIGNAL \Mult0~360\ : std_logic;
SIGNAL \Mult0~361\ : std_logic;
SIGNAL \Mult0~362\ : std_logic;
SIGNAL \Mult0~363\ : std_logic;
SIGNAL \Mult0~364\ : std_logic;
SIGNAL \Mult0~365\ : std_logic;
SIGNAL \Mult0~366\ : std_logic;
SIGNAL \Mult0~367\ : std_logic;
SIGNAL \Mult0~368\ : std_logic;
SIGNAL \Mult0~369\ : std_logic;
SIGNAL \Mult0~370\ : std_logic;
SIGNAL \Mult0~371\ : std_logic;
SIGNAL \Mult0~372\ : std_logic;
SIGNAL \Mult0~373\ : std_logic;
SIGNAL \Mult0~374\ : std_logic;
SIGNAL \Mult0~375\ : std_logic;
SIGNAL \Mult0~376\ : std_logic;
SIGNAL \Mult0~377\ : std_logic;
SIGNAL \Mult0~378\ : std_logic;
SIGNAL \Mult0~379\ : std_logic;
SIGNAL \Mult0~380\ : std_logic;
SIGNAL \Mult0~381\ : std_logic;
SIGNAL \Mult0~382\ : std_logic;
SIGNAL \Mult0~383\ : std_logic;
SIGNAL \Mult0~384\ : std_logic;
SIGNAL \Mult0~385\ : std_logic;
SIGNAL \Mult0~386\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \delay[0]~input_o\ : std_logic;
SIGNAL \delay[1]~input_o\ : std_logic;
SIGNAL \delay[2]~input_o\ : std_logic;
SIGNAL \delay[3]~input_o\ : std_logic;
SIGNAL \delay[4]~input_o\ : std_logic;
SIGNAL \delay[5]~input_o\ : std_logic;
SIGNAL \delay[6]~input_o\ : std_logic;
SIGNAL \delay[7]~input_o\ : std_logic;
SIGNAL \delay[8]~input_o\ : std_logic;
SIGNAL \delay[9]~input_o\ : std_logic;
SIGNAL \delay[10]~input_o\ : std_logic;
SIGNAL \delay[11]~input_o\ : std_logic;
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
SIGNAL \Mult0~666\ : std_logic;
SIGNAL \Mult0~668\ : std_logic;
SIGNAL \Mult0~667\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.calculate_duty_state~0_combout\ : std_logic;
SIGNAL \state.go_state~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.wait_state~q\ : std_logic;
SIGNAL \delay_count[31]~0_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Add5~126\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \LessThan1~38_combout\ : std_logic;
SIGNAL \Mult0~660\ : std_logic;
SIGNAL \Mult0~659\ : std_logic;
SIGNAL \Mult0~661\ : std_logic;
SIGNAL \Mult0~664\ : std_logic;
SIGNAL \Mult0~665\ : std_logic;
SIGNAL \Mult0~663\ : std_logic;
SIGNAL \LessThan1~28_combout\ : std_logic;
SIGNAL \Mult0~662\ : std_logic;
SIGNAL \LessThan1~34_combout\ : std_logic;
SIGNAL \LessThan1~35_combout\ : std_logic;
SIGNAL \LessThan1~29_combout\ : std_logic;
SIGNAL \LessThan1~33_combout\ : std_logic;
SIGNAL \LessThan1~36_combout\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \LessThan1~31_combout\ : std_logic;
SIGNAL \LessThan1~32_combout\ : std_logic;
SIGNAL \LessThan1~37_combout\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~mult_hlmac_resulta\ : std_logic;
SIGNAL \Mult0~656\ : std_logic;
SIGNAL \Mult0~657\ : std_logic;
SIGNAL \Mult0~658\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \LessThan1~19_combout\ : std_logic;
SIGNAL \LessThan1~24_combout\ : std_logic;
SIGNAL \LessThan1~25_combout\ : std_logic;
SIGNAL \LessThan1~26_combout\ : std_logic;
SIGNAL \LessThan1~27_combout\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~21_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \LessThan1~22_combout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~23_combout\ : std_logic;
SIGNAL \LessThan1~39_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.calculate_duty_state~q\ : std_logic;
SIGNAL \duty_count[31]~0_combout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \i[9]~0_combout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \direction~2_combout\ : std_logic;
SIGNAL \direction~1_combout\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~3_combout\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~42_cout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \duty_value~1_combout\ : std_logic;
SIGNAL \duty_value[0][0]~q\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \duty_value~2_combout\ : std_logic;
SIGNAL \duty_value[0][1]~q\ : std_logic;
SIGNAL \duty_value~3_combout\ : std_logic;
SIGNAL \duty_value[0][2]~q\ : std_logic;
SIGNAL \duty_value~4_combout\ : std_logic;
SIGNAL \duty_value[0][3]~q\ : std_logic;
SIGNAL \duty_value~5_combout\ : std_logic;
SIGNAL \duty_value[0][4]~q\ : std_logic;
SIGNAL \duty_value~6_combout\ : std_logic;
SIGNAL \duty_value[0][5]~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \duty_value~7_combout\ : std_logic;
SIGNAL \duty_value[0][7]~8_combout\ : std_logic;
SIGNAL \duty_value[0][6]~q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \duty_value[0][7]~q\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~33_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal0~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal0~2_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~34\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~37_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~38\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~29_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~30\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~13_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~14\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~17_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~18\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~21_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~22\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~1_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~2\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~5_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~6\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~9_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~10\ : std_logic;
SIGNAL \pwms:0:pwm|Add0~25_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \pwms:0:pwm|Equal0~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty[0]~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:0:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:0:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:0:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:0:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \duty_value~9_combout\ : std_logic;
SIGNAL \duty_value[1][0]~q\ : std_logic;
SIGNAL \duty_value~10_combout\ : std_logic;
SIGNAL \duty_value[1][1]~q\ : std_logic;
SIGNAL \duty_value~11_combout\ : std_logic;
SIGNAL \duty_value[1][2]~q\ : std_logic;
SIGNAL \duty_value~12_combout\ : std_logic;
SIGNAL \duty_value[1][3]~q\ : std_logic;
SIGNAL \duty_value~13_combout\ : std_logic;
SIGNAL \duty_value[1][4]~q\ : std_logic;
SIGNAL \duty_value~14_combout\ : std_logic;
SIGNAL \duty_value[1][5]~q\ : std_logic;
SIGNAL \duty_value[1][7]~15_combout\ : std_logic;
SIGNAL \duty_value[1][6]~q\ : std_logic;
SIGNAL \duty_value[1][7]~q\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:1:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:1:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:0:pwm|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:1:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:1:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:1:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \duty_value~16_combout\ : std_logic;
SIGNAL \duty_value[2][0]~q\ : std_logic;
SIGNAL \duty_value~17_combout\ : std_logic;
SIGNAL \duty_value[2][1]~q\ : std_logic;
SIGNAL \duty_value~18_combout\ : std_logic;
SIGNAL \duty_value[2][2]~q\ : std_logic;
SIGNAL \duty_value~19_combout\ : std_logic;
SIGNAL \duty_value[2][3]~q\ : std_logic;
SIGNAL \duty_value~20_combout\ : std_logic;
SIGNAL \duty_value[2][4]~q\ : std_logic;
SIGNAL \duty_value~21_combout\ : std_logic;
SIGNAL \duty_value[2][5]~q\ : std_logic;
SIGNAL \duty_value[2][7]~22_combout\ : std_logic;
SIGNAL \duty_value[2][6]~q\ : std_logic;
SIGNAL \duty_value[2][7]~q\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:0:pwm|count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \pwms:2:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:2:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:2:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:2:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:2:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \duty_value~23_combout\ : std_logic;
SIGNAL \duty_value[3][0]~q\ : std_logic;
SIGNAL \duty_value~24_combout\ : std_logic;
SIGNAL \duty_value[3][1]~q\ : std_logic;
SIGNAL \duty_value~25_combout\ : std_logic;
SIGNAL \duty_value[3][2]~q\ : std_logic;
SIGNAL \duty_value~26_combout\ : std_logic;
SIGNAL \duty_value[3][3]~q\ : std_logic;
SIGNAL \duty_value~27_combout\ : std_logic;
SIGNAL \duty_value[3][4]~q\ : std_logic;
SIGNAL \duty_value~28_combout\ : std_logic;
SIGNAL \duty_value[3][5]~q\ : std_logic;
SIGNAL \duty_value[3][7]~29_combout\ : std_logic;
SIGNAL \duty_value[3][6]~q\ : std_logic;
SIGNAL \duty_value[3][7]~q\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:3:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:3:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \duty_value~30_combout\ : std_logic;
SIGNAL \duty_value[4][0]~q\ : std_logic;
SIGNAL \duty_value~31_combout\ : std_logic;
SIGNAL \duty_value[4][1]~q\ : std_logic;
SIGNAL \duty_value~32_combout\ : std_logic;
SIGNAL \duty_value[4][2]~q\ : std_logic;
SIGNAL \duty_value~33_combout\ : std_logic;
SIGNAL \duty_value[4][3]~q\ : std_logic;
SIGNAL \duty_value~34_combout\ : std_logic;
SIGNAL \duty_value[4][4]~q\ : std_logic;
SIGNAL \duty_value~35_combout\ : std_logic;
SIGNAL \duty_value[4][5]~q\ : std_logic;
SIGNAL \duty_value[4][7]~36_combout\ : std_logic;
SIGNAL \duty_value[4][6]~q\ : std_logic;
SIGNAL \duty_value[4][7]~q\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:4:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:4:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \duty_value~37_combout\ : std_logic;
SIGNAL \duty_value[5][0]~q\ : std_logic;
SIGNAL \duty_value~38_combout\ : std_logic;
SIGNAL \duty_value[5][1]~q\ : std_logic;
SIGNAL \duty_value~39_combout\ : std_logic;
SIGNAL \duty_value[5][2]~q\ : std_logic;
SIGNAL \duty_value~40_combout\ : std_logic;
SIGNAL \duty_value[5][3]~q\ : std_logic;
SIGNAL \duty_value~41_combout\ : std_logic;
SIGNAL \duty_value[5][4]~q\ : std_logic;
SIGNAL \duty_value~42_combout\ : std_logic;
SIGNAL \duty_value[5][5]~q\ : std_logic;
SIGNAL \duty_value[5][7]~43_combout\ : std_logic;
SIGNAL \duty_value[5][6]~q\ : std_logic;
SIGNAL \duty_value[5][7]~q\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:5:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:5:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:5:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:5:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:5:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:5:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:5:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:5:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \duty_value~44_combout\ : std_logic;
SIGNAL \duty_value[6][0]~q\ : std_logic;
SIGNAL \duty_value~45_combout\ : std_logic;
SIGNAL \duty_value[6][1]~q\ : std_logic;
SIGNAL \duty_value~46_combout\ : std_logic;
SIGNAL \duty_value[6][2]~q\ : std_logic;
SIGNAL \duty_value~47_combout\ : std_logic;
SIGNAL \duty_value[6][3]~q\ : std_logic;
SIGNAL \duty_value~48_combout\ : std_logic;
SIGNAL \duty_value[6][4]~q\ : std_logic;
SIGNAL \duty_value~49_combout\ : std_logic;
SIGNAL \duty_value[6][5]~q\ : std_logic;
SIGNAL \duty_value[6][6]~feeder_combout\ : std_logic;
SIGNAL \duty_value[6][7]~50_combout\ : std_logic;
SIGNAL \duty_value[6][6]~q\ : std_logic;
SIGNAL \duty_value[6][7]~feeder_combout\ : std_logic;
SIGNAL \duty_value[6][7]~q\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:6:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:6:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:6:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:6:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:6:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:6:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:6:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:6:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \duty_value~51_combout\ : std_logic;
SIGNAL \duty_value[7][0]~q\ : std_logic;
SIGNAL \duty_value~52_combout\ : std_logic;
SIGNAL \duty_value[7][1]~q\ : std_logic;
SIGNAL \duty_value~53_combout\ : std_logic;
SIGNAL \duty_value[7][2]~q\ : std_logic;
SIGNAL \duty_value~54_combout\ : std_logic;
SIGNAL \duty_value[7][3]~q\ : std_logic;
SIGNAL \duty_value~55_combout\ : std_logic;
SIGNAL \duty_value[7][4]~q\ : std_logic;
SIGNAL \duty_value~56_combout\ : std_logic;
SIGNAL \duty_value[7][5]~q\ : std_logic;
SIGNAL \duty_value[7][6]~feeder_combout\ : std_logic;
SIGNAL \duty_value[7][7]~57_combout\ : std_logic;
SIGNAL \duty_value[7][6]~q\ : std_logic;
SIGNAL \duty_value[7][7]~feeder_combout\ : std_logic;
SIGNAL \duty_value[7][7]~q\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:7:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:7:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:7:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:7:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:7:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:7:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \duty_value~58_combout\ : std_logic;
SIGNAL \duty_value[8][0]~q\ : std_logic;
SIGNAL \duty_value~59_combout\ : std_logic;
SIGNAL \duty_value[8][1]~q\ : std_logic;
SIGNAL \duty_value~60_combout\ : std_logic;
SIGNAL \duty_value[8][2]~q\ : std_logic;
SIGNAL \duty_value~61_combout\ : std_logic;
SIGNAL \duty_value[8][3]~q\ : std_logic;
SIGNAL \duty_value~62_combout\ : std_logic;
SIGNAL \duty_value[8][4]~q\ : std_logic;
SIGNAL \duty_value~63_combout\ : std_logic;
SIGNAL \duty_value[8][5]~q\ : std_logic;
SIGNAL \duty_value[8][6]~feeder_combout\ : std_logic;
SIGNAL \duty_value[8][7]~64_combout\ : std_logic;
SIGNAL \duty_value[8][6]~q\ : std_logic;
SIGNAL \duty_value[8][7]~q\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[6]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[3]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:8:pwm|half_duty_new[1]~feeder_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:8:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:8:pwm|pwm_out~q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \duty_value~65_combout\ : std_logic;
SIGNAL \duty_value[9][0]~q\ : std_logic;
SIGNAL \duty_value~66_combout\ : std_logic;
SIGNAL \duty_value[9][1]~q\ : std_logic;
SIGNAL \duty_value~67_combout\ : std_logic;
SIGNAL \duty_value[9][2]~q\ : std_logic;
SIGNAL \duty_value~68_combout\ : std_logic;
SIGNAL \duty_value[9][3]~q\ : std_logic;
SIGNAL \duty_value~69_combout\ : std_logic;
SIGNAL \duty_value[9][4]~q\ : std_logic;
SIGNAL \duty_value~70_combout\ : std_logic;
SIGNAL \duty_value[9][5]~q\ : std_logic;
SIGNAL \duty_value[9][7]~71_combout\ : std_logic;
SIGNAL \duty_value[9][6]~q\ : std_logic;
SIGNAL \duty_value[9][7]~q\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~23\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~22\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[5]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~21\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[4]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~20\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~19\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[2]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~18\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~17\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[0]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~34\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~26\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~14\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~18\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~22\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~25\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[8]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Mult0~24\ : std_logic;
SIGNAL \pwms:9:pwm|half_duty_new[7]~feeder_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~2\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~6\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~5_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~33_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~10\ : std_logic;
SIGNAL \pwms:9:pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Equal1~1_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Equal1~2_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Equal1~3_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Equal1~0_combout\ : std_logic;
SIGNAL \pwms:9:pwm|Equal1~4_combout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~4_combout\ : std_logic;
SIGNAL \pwms:9:pwm|pwm_out~q\ : std_logic;
SIGNAL \pwms:5:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:0:pwm|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:0:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:7:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:6:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:5:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:4:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:3:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:2:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:9:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:1:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:8:pwm|half_duty_new\ : std_logic_vector(8 DOWNTO 0);
SIGNAL duty_count : std_logic_vector(31 DOWNTO 0);
SIGNAL delay_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \pwms:0:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:9:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:1:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:2:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:3:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:4:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL i : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:6:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:7:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:8:pwm|half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:7:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:7:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:6:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:5:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:4:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:3:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:2:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:1:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:0:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_pwm_out~q\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL ALT_INV_delay_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mult0~668\ : std_logic;
SIGNAL \ALT_INV_Mult0~667\ : std_logic;
SIGNAL \ALT_INV_Mult0~666\ : std_logic;
SIGNAL \ALT_INV_Mult0~665\ : std_logic;
SIGNAL \ALT_INV_Mult0~664\ : std_logic;
SIGNAL \ALT_INV_Mult0~663\ : std_logic;
SIGNAL \ALT_INV_Mult0~662\ : std_logic;
SIGNAL \ALT_INV_Mult0~661\ : std_logic;
SIGNAL \ALT_INV_Mult0~660\ : std_logic;
SIGNAL \ALT_INV_Mult0~659\ : std_logic;
SIGNAL \ALT_INV_Mult0~658\ : std_logic;
SIGNAL \ALT_INV_Mult0~657\ : std_logic;
SIGNAL \ALT_INV_Mult0~656\ : std_logic;
SIGNAL \ALT_INV_Mult0~mult_hlmac_resulta\ : std_logic;
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
SIGNAL ALT_INV_duty_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_half_duty_new\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pwms:9:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:6:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:5:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:4:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:3:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:2:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:1:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pwms:0:pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_direction~2_combout\ : std_logic;
SIGNAL \ALT_INV_direction~1_combout\ : std_logic;
SIGNAL \ALT_INV_direction~0_combout\ : std_logic;
SIGNAL \ALT_INV_direction~q\ : std_logic;
SIGNAL \ALT_INV_state.go_state~q\ : std_logic;
SIGNAL ALT_INV_i : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_state.calculate_duty_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~39_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~38_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~37_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~36_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~35_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~33_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.wait_state~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_duty_value~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculate_duty_state~q\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[9][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_duty_value[0][0]~q\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pwms:0:pwm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:9:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:9:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_half_duty\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pwms:8:pwm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_pwm_out~3_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \pwms:8:pwm|ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwms:7:pwm|ALT_INV_Equal1~1_combout\ : std_logic;

BEGIN

ww_ena <= ena;
ww_clk <= clk;
ww_reset_n <= reset_n;
ww_delay <= delay;
leds_output <= ww_leds_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pwms:0:pwm|Mult0~8_AX_bus\ <= (\duty_value[0][7]~q\ & \duty_value[0][6]~q\ & \duty_value[0][5]~q\ & \duty_value[0][4]~q\ & \duty_value[0][3]~q\ & \duty_value[0][2]~q\ & \duty_value[0][1]~q\ & \duty_value[0][0]~q\);

\pwms:0:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:0:pwm|Mult0~8_resulta\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:0:pwm|Mult0~9\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:0:pwm|Mult0~10\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:0:pwm|Mult0~11\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:0:pwm|Mult0~12\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:0:pwm|Mult0~13\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:0:pwm|Mult0~14\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:0:pwm|Mult0~15\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:0:pwm|Mult0~16\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:0:pwm|Mult0~17\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:0:pwm|Mult0~18\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:0:pwm|Mult0~19\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:0:pwm|Mult0~20\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:0:pwm|Mult0~21\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:0:pwm|Mult0~22\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:0:pwm|Mult0~23\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:0:pwm|Mult0~24\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:0:pwm|Mult0~25\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:0:pwm|Mult0~26\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:0:pwm|Mult0~27\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:0:pwm|Mult0~28\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:0:pwm|Mult0~29\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:0:pwm|Mult0~30\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:0:pwm|Mult0~31\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:0:pwm|Mult0~32\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:0:pwm|Mult0~33\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:0:pwm|Mult0~34\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:0:pwm|Mult0~35\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:0:pwm|Mult0~36\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:0:pwm|Mult0~37\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:0:pwm|Mult0~38\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:0:pwm|Mult0~39\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:0:pwm|Mult0~40\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:0:pwm|Mult0~41\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:0:pwm|Mult0~42\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:0:pwm|Mult0~43\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:0:pwm|Mult0~44\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:0:pwm|Mult0~45\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:0:pwm|Mult0~46\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:0:pwm|Mult0~47\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:0:pwm|Mult0~48\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:0:pwm|Mult0~49\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:0:pwm|Mult0~50\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:0:pwm|Mult0~51\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:0:pwm|Mult0~52\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:0:pwm|Mult0~53\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:0:pwm|Mult0~54\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:0:pwm|Mult0~55\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:0:pwm|Mult0~56\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:0:pwm|Mult0~57\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:0:pwm|Mult0~58\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:0:pwm|Mult0~59\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:0:pwm|Mult0~60\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:0:pwm|Mult0~61\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:0:pwm|Mult0~62\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:0:pwm|Mult0~63\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:0:pwm|Mult0~64\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:0:pwm|Mult0~65\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:0:pwm|Mult0~66\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:0:pwm|Mult0~67\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:0:pwm|Mult0~68\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:0:pwm|Mult0~69\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:0:pwm|Mult0~70\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:0:pwm|Mult0~71\ <= \pwms:0:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:1:pwm|Mult0~8_AX_bus\ <= (\duty_value[1][7]~q\ & \duty_value[1][6]~q\ & \duty_value[1][5]~q\ & \duty_value[1][4]~q\ & \duty_value[1][3]~q\ & \duty_value[1][2]~q\ & \duty_value[1][1]~q\ & \duty_value[1][0]~q\);

\pwms:1:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:1:pwm|Mult0~8_resulta\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:1:pwm|Mult0~9\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:1:pwm|Mult0~10\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:1:pwm|Mult0~11\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:1:pwm|Mult0~12\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:1:pwm|Mult0~13\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:1:pwm|Mult0~14\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:1:pwm|Mult0~15\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:1:pwm|Mult0~16\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:1:pwm|Mult0~17\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:1:pwm|Mult0~18\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:1:pwm|Mult0~19\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:1:pwm|Mult0~20\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:1:pwm|Mult0~21\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:1:pwm|Mult0~22\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:1:pwm|Mult0~23\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:1:pwm|Mult0~24\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:1:pwm|Mult0~25\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:1:pwm|Mult0~26\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:1:pwm|Mult0~27\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:1:pwm|Mult0~28\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:1:pwm|Mult0~29\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:1:pwm|Mult0~30\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:1:pwm|Mult0~31\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:1:pwm|Mult0~32\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:1:pwm|Mult0~33\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:1:pwm|Mult0~34\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:1:pwm|Mult0~35\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:1:pwm|Mult0~36\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:1:pwm|Mult0~37\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:1:pwm|Mult0~38\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:1:pwm|Mult0~39\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:1:pwm|Mult0~40\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:1:pwm|Mult0~41\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:1:pwm|Mult0~42\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:1:pwm|Mult0~43\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:1:pwm|Mult0~44\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:1:pwm|Mult0~45\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:1:pwm|Mult0~46\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:1:pwm|Mult0~47\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:1:pwm|Mult0~48\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:1:pwm|Mult0~49\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:1:pwm|Mult0~50\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:1:pwm|Mult0~51\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:1:pwm|Mult0~52\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:1:pwm|Mult0~53\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:1:pwm|Mult0~54\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:1:pwm|Mult0~55\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:1:pwm|Mult0~56\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:1:pwm|Mult0~57\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:1:pwm|Mult0~58\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:1:pwm|Mult0~59\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:1:pwm|Mult0~60\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:1:pwm|Mult0~61\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:1:pwm|Mult0~62\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:1:pwm|Mult0~63\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:1:pwm|Mult0~64\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:1:pwm|Mult0~65\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:1:pwm|Mult0~66\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:1:pwm|Mult0~67\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:1:pwm|Mult0~68\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:1:pwm|Mult0~69\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:1:pwm|Mult0~70\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:1:pwm|Mult0~71\ <= \pwms:1:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:2:pwm|Mult0~8_AX_bus\ <= (\duty_value[2][7]~q\ & \duty_value[2][6]~q\ & \duty_value[2][5]~q\ & \duty_value[2][4]~q\ & \duty_value[2][3]~q\ & \duty_value[2][2]~q\ & \duty_value[2][1]~q\ & \duty_value[2][0]~q\);

\pwms:2:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:2:pwm|Mult0~8_resulta\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:2:pwm|Mult0~9\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:2:pwm|Mult0~10\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:2:pwm|Mult0~11\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:2:pwm|Mult0~12\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:2:pwm|Mult0~13\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:2:pwm|Mult0~14\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:2:pwm|Mult0~15\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:2:pwm|Mult0~16\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:2:pwm|Mult0~17\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:2:pwm|Mult0~18\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:2:pwm|Mult0~19\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:2:pwm|Mult0~20\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:2:pwm|Mult0~21\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:2:pwm|Mult0~22\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:2:pwm|Mult0~23\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:2:pwm|Mult0~24\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:2:pwm|Mult0~25\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:2:pwm|Mult0~26\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:2:pwm|Mult0~27\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:2:pwm|Mult0~28\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:2:pwm|Mult0~29\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:2:pwm|Mult0~30\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:2:pwm|Mult0~31\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:2:pwm|Mult0~32\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:2:pwm|Mult0~33\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:2:pwm|Mult0~34\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:2:pwm|Mult0~35\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:2:pwm|Mult0~36\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:2:pwm|Mult0~37\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:2:pwm|Mult0~38\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:2:pwm|Mult0~39\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:2:pwm|Mult0~40\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:2:pwm|Mult0~41\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:2:pwm|Mult0~42\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:2:pwm|Mult0~43\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:2:pwm|Mult0~44\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:2:pwm|Mult0~45\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:2:pwm|Mult0~46\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:2:pwm|Mult0~47\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:2:pwm|Mult0~48\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:2:pwm|Mult0~49\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:2:pwm|Mult0~50\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:2:pwm|Mult0~51\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:2:pwm|Mult0~52\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:2:pwm|Mult0~53\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:2:pwm|Mult0~54\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:2:pwm|Mult0~55\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:2:pwm|Mult0~56\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:2:pwm|Mult0~57\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:2:pwm|Mult0~58\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:2:pwm|Mult0~59\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:2:pwm|Mult0~60\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:2:pwm|Mult0~61\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:2:pwm|Mult0~62\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:2:pwm|Mult0~63\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:2:pwm|Mult0~64\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:2:pwm|Mult0~65\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:2:pwm|Mult0~66\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:2:pwm|Mult0~67\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:2:pwm|Mult0~68\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:2:pwm|Mult0~69\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:2:pwm|Mult0~70\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:2:pwm|Mult0~71\ <= \pwms:2:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:3:pwm|Mult0~8_AX_bus\ <= (\duty_value[3][7]~q\ & \duty_value[3][6]~q\ & \duty_value[3][5]~q\ & \duty_value[3][4]~q\ & \duty_value[3][3]~q\ & \duty_value[3][2]~q\ & \duty_value[3][1]~q\ & \duty_value[3][0]~q\);

\pwms:3:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:3:pwm|Mult0~8_resulta\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:3:pwm|Mult0~9\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:3:pwm|Mult0~10\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:3:pwm|Mult0~11\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:3:pwm|Mult0~12\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:3:pwm|Mult0~13\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:3:pwm|Mult0~14\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:3:pwm|Mult0~15\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:3:pwm|Mult0~16\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:3:pwm|Mult0~17\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:3:pwm|Mult0~18\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:3:pwm|Mult0~19\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:3:pwm|Mult0~20\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:3:pwm|Mult0~21\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:3:pwm|Mult0~22\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:3:pwm|Mult0~23\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:3:pwm|Mult0~24\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:3:pwm|Mult0~25\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:3:pwm|Mult0~26\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:3:pwm|Mult0~27\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:3:pwm|Mult0~28\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:3:pwm|Mult0~29\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:3:pwm|Mult0~30\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:3:pwm|Mult0~31\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:3:pwm|Mult0~32\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:3:pwm|Mult0~33\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:3:pwm|Mult0~34\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:3:pwm|Mult0~35\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:3:pwm|Mult0~36\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:3:pwm|Mult0~37\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:3:pwm|Mult0~38\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:3:pwm|Mult0~39\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:3:pwm|Mult0~40\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:3:pwm|Mult0~41\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:3:pwm|Mult0~42\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:3:pwm|Mult0~43\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:3:pwm|Mult0~44\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:3:pwm|Mult0~45\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:3:pwm|Mult0~46\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:3:pwm|Mult0~47\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:3:pwm|Mult0~48\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:3:pwm|Mult0~49\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:3:pwm|Mult0~50\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:3:pwm|Mult0~51\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:3:pwm|Mult0~52\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:3:pwm|Mult0~53\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:3:pwm|Mult0~54\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:3:pwm|Mult0~55\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:3:pwm|Mult0~56\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:3:pwm|Mult0~57\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:3:pwm|Mult0~58\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:3:pwm|Mult0~59\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:3:pwm|Mult0~60\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:3:pwm|Mult0~61\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:3:pwm|Mult0~62\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:3:pwm|Mult0~63\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:3:pwm|Mult0~64\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:3:pwm|Mult0~65\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:3:pwm|Mult0~66\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:3:pwm|Mult0~67\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:3:pwm|Mult0~68\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:3:pwm|Mult0~69\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:3:pwm|Mult0~70\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:3:pwm|Mult0~71\ <= \pwms:3:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:4:pwm|Mult0~8_AX_bus\ <= (\duty_value[4][7]~q\ & \duty_value[4][6]~q\ & \duty_value[4][5]~q\ & \duty_value[4][4]~q\ & \duty_value[4][3]~q\ & \duty_value[4][2]~q\ & \duty_value[4][1]~q\ & \duty_value[4][0]~q\);

\pwms:4:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:4:pwm|Mult0~8_resulta\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:4:pwm|Mult0~9\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:4:pwm|Mult0~10\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:4:pwm|Mult0~11\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:4:pwm|Mult0~12\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:4:pwm|Mult0~13\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:4:pwm|Mult0~14\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:4:pwm|Mult0~15\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:4:pwm|Mult0~16\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:4:pwm|Mult0~17\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:4:pwm|Mult0~18\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:4:pwm|Mult0~19\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:4:pwm|Mult0~20\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:4:pwm|Mult0~21\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:4:pwm|Mult0~22\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:4:pwm|Mult0~23\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:4:pwm|Mult0~24\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:4:pwm|Mult0~25\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:4:pwm|Mult0~26\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:4:pwm|Mult0~27\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:4:pwm|Mult0~28\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:4:pwm|Mult0~29\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:4:pwm|Mult0~30\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:4:pwm|Mult0~31\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:4:pwm|Mult0~32\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:4:pwm|Mult0~33\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:4:pwm|Mult0~34\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:4:pwm|Mult0~35\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:4:pwm|Mult0~36\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:4:pwm|Mult0~37\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:4:pwm|Mult0~38\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:4:pwm|Mult0~39\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:4:pwm|Mult0~40\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:4:pwm|Mult0~41\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:4:pwm|Mult0~42\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:4:pwm|Mult0~43\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:4:pwm|Mult0~44\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:4:pwm|Mult0~45\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:4:pwm|Mult0~46\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:4:pwm|Mult0~47\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:4:pwm|Mult0~48\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:4:pwm|Mult0~49\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:4:pwm|Mult0~50\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:4:pwm|Mult0~51\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:4:pwm|Mult0~52\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:4:pwm|Mult0~53\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:4:pwm|Mult0~54\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:4:pwm|Mult0~55\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:4:pwm|Mult0~56\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:4:pwm|Mult0~57\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:4:pwm|Mult0~58\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:4:pwm|Mult0~59\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:4:pwm|Mult0~60\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:4:pwm|Mult0~61\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:4:pwm|Mult0~62\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:4:pwm|Mult0~63\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:4:pwm|Mult0~64\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:4:pwm|Mult0~65\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:4:pwm|Mult0~66\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:4:pwm|Mult0~67\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:4:pwm|Mult0~68\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:4:pwm|Mult0~69\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:4:pwm|Mult0~70\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:4:pwm|Mult0~71\ <= \pwms:4:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:5:pwm|Mult0~8_AX_bus\ <= (\duty_value[5][7]~q\ & \duty_value[5][6]~q\ & \duty_value[5][5]~q\ & \duty_value[5][4]~q\ & \duty_value[5][3]~q\ & \duty_value[5][2]~q\ & \duty_value[5][1]~q\ & \duty_value[5][0]~q\);

\pwms:5:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:5:pwm|Mult0~8_resulta\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:5:pwm|Mult0~9\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:5:pwm|Mult0~10\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:5:pwm|Mult0~11\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:5:pwm|Mult0~12\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:5:pwm|Mult0~13\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:5:pwm|Mult0~14\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:5:pwm|Mult0~15\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:5:pwm|Mult0~16\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:5:pwm|Mult0~17\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:5:pwm|Mult0~18\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:5:pwm|Mult0~19\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:5:pwm|Mult0~20\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:5:pwm|Mult0~21\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:5:pwm|Mult0~22\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:5:pwm|Mult0~23\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:5:pwm|Mult0~24\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:5:pwm|Mult0~25\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:5:pwm|Mult0~26\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:5:pwm|Mult0~27\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:5:pwm|Mult0~28\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:5:pwm|Mult0~29\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:5:pwm|Mult0~30\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:5:pwm|Mult0~31\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:5:pwm|Mult0~32\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:5:pwm|Mult0~33\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:5:pwm|Mult0~34\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:5:pwm|Mult0~35\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:5:pwm|Mult0~36\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:5:pwm|Mult0~37\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:5:pwm|Mult0~38\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:5:pwm|Mult0~39\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:5:pwm|Mult0~40\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:5:pwm|Mult0~41\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:5:pwm|Mult0~42\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:5:pwm|Mult0~43\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:5:pwm|Mult0~44\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:5:pwm|Mult0~45\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:5:pwm|Mult0~46\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:5:pwm|Mult0~47\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:5:pwm|Mult0~48\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:5:pwm|Mult0~49\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:5:pwm|Mult0~50\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:5:pwm|Mult0~51\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:5:pwm|Mult0~52\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:5:pwm|Mult0~53\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:5:pwm|Mult0~54\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:5:pwm|Mult0~55\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:5:pwm|Mult0~56\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:5:pwm|Mult0~57\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:5:pwm|Mult0~58\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:5:pwm|Mult0~59\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:5:pwm|Mult0~60\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:5:pwm|Mult0~61\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:5:pwm|Mult0~62\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:5:pwm|Mult0~63\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:5:pwm|Mult0~64\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:5:pwm|Mult0~65\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:5:pwm|Mult0~66\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:5:pwm|Mult0~67\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:5:pwm|Mult0~68\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:5:pwm|Mult0~69\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:5:pwm|Mult0~70\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:5:pwm|Mult0~71\ <= \pwms:5:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:6:pwm|Mult0~8_AX_bus\ <= (\duty_value[6][7]~q\ & \duty_value[6][6]~q\ & \duty_value[6][5]~q\ & \duty_value[6][4]~q\ & \duty_value[6][3]~q\ & \duty_value[6][2]~q\ & \duty_value[6][1]~q\ & \duty_value[6][0]~q\);

\pwms:6:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:6:pwm|Mult0~8_resulta\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:6:pwm|Mult0~9\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:6:pwm|Mult0~10\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:6:pwm|Mult0~11\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:6:pwm|Mult0~12\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:6:pwm|Mult0~13\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:6:pwm|Mult0~14\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:6:pwm|Mult0~15\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:6:pwm|Mult0~16\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:6:pwm|Mult0~17\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:6:pwm|Mult0~18\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:6:pwm|Mult0~19\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:6:pwm|Mult0~20\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:6:pwm|Mult0~21\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:6:pwm|Mult0~22\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:6:pwm|Mult0~23\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:6:pwm|Mult0~24\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:6:pwm|Mult0~25\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:6:pwm|Mult0~26\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:6:pwm|Mult0~27\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:6:pwm|Mult0~28\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:6:pwm|Mult0~29\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:6:pwm|Mult0~30\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:6:pwm|Mult0~31\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:6:pwm|Mult0~32\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:6:pwm|Mult0~33\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:6:pwm|Mult0~34\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:6:pwm|Mult0~35\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:6:pwm|Mult0~36\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:6:pwm|Mult0~37\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:6:pwm|Mult0~38\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:6:pwm|Mult0~39\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:6:pwm|Mult0~40\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:6:pwm|Mult0~41\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:6:pwm|Mult0~42\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:6:pwm|Mult0~43\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:6:pwm|Mult0~44\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:6:pwm|Mult0~45\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:6:pwm|Mult0~46\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:6:pwm|Mult0~47\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:6:pwm|Mult0~48\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:6:pwm|Mult0~49\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:6:pwm|Mult0~50\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:6:pwm|Mult0~51\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:6:pwm|Mult0~52\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:6:pwm|Mult0~53\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:6:pwm|Mult0~54\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:6:pwm|Mult0~55\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:6:pwm|Mult0~56\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:6:pwm|Mult0~57\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:6:pwm|Mult0~58\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:6:pwm|Mult0~59\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:6:pwm|Mult0~60\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:6:pwm|Mult0~61\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:6:pwm|Mult0~62\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:6:pwm|Mult0~63\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:6:pwm|Mult0~64\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:6:pwm|Mult0~65\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:6:pwm|Mult0~66\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:6:pwm|Mult0~67\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:6:pwm|Mult0~68\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:6:pwm|Mult0~69\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:6:pwm|Mult0~70\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:6:pwm|Mult0~71\ <= \pwms:6:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:7:pwm|Mult0~8_AX_bus\ <= (\duty_value[7][7]~q\ & \duty_value[7][6]~q\ & \duty_value[7][5]~q\ & \duty_value[7][4]~q\ & \duty_value[7][3]~q\ & \duty_value[7][2]~q\ & \duty_value[7][1]~q\ & \duty_value[7][0]~q\);

\pwms:7:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:7:pwm|Mult0~8_resulta\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:7:pwm|Mult0~9\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:7:pwm|Mult0~10\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:7:pwm|Mult0~11\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:7:pwm|Mult0~12\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:7:pwm|Mult0~13\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:7:pwm|Mult0~14\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:7:pwm|Mult0~15\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:7:pwm|Mult0~16\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:7:pwm|Mult0~17\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:7:pwm|Mult0~18\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:7:pwm|Mult0~19\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:7:pwm|Mult0~20\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:7:pwm|Mult0~21\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:7:pwm|Mult0~22\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:7:pwm|Mult0~23\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:7:pwm|Mult0~24\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:7:pwm|Mult0~25\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:7:pwm|Mult0~26\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:7:pwm|Mult0~27\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:7:pwm|Mult0~28\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:7:pwm|Mult0~29\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:7:pwm|Mult0~30\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:7:pwm|Mult0~31\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:7:pwm|Mult0~32\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:7:pwm|Mult0~33\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:7:pwm|Mult0~34\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:7:pwm|Mult0~35\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:7:pwm|Mult0~36\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:7:pwm|Mult0~37\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:7:pwm|Mult0~38\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:7:pwm|Mult0~39\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:7:pwm|Mult0~40\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:7:pwm|Mult0~41\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:7:pwm|Mult0~42\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:7:pwm|Mult0~43\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:7:pwm|Mult0~44\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:7:pwm|Mult0~45\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:7:pwm|Mult0~46\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:7:pwm|Mult0~47\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:7:pwm|Mult0~48\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:7:pwm|Mult0~49\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:7:pwm|Mult0~50\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:7:pwm|Mult0~51\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:7:pwm|Mult0~52\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:7:pwm|Mult0~53\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:7:pwm|Mult0~54\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:7:pwm|Mult0~55\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:7:pwm|Mult0~56\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:7:pwm|Mult0~57\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:7:pwm|Mult0~58\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:7:pwm|Mult0~59\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:7:pwm|Mult0~60\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:7:pwm|Mult0~61\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:7:pwm|Mult0~62\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:7:pwm|Mult0~63\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:7:pwm|Mult0~64\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:7:pwm|Mult0~65\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:7:pwm|Mult0~66\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:7:pwm|Mult0~67\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:7:pwm|Mult0~68\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:7:pwm|Mult0~69\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:7:pwm|Mult0~70\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:7:pwm|Mult0~71\ <= \pwms:7:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:8:pwm|Mult0~8_AX_bus\ <= (\duty_value[8][7]~q\ & \duty_value[8][6]~q\ & \duty_value[8][5]~q\ & \duty_value[8][4]~q\ & \duty_value[8][3]~q\ & \duty_value[8][2]~q\ & \duty_value[8][1]~q\ & \duty_value[8][0]~q\);

\pwms:8:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:8:pwm|Mult0~8_resulta\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:8:pwm|Mult0~9\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:8:pwm|Mult0~10\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:8:pwm|Mult0~11\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:8:pwm|Mult0~12\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:8:pwm|Mult0~13\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:8:pwm|Mult0~14\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:8:pwm|Mult0~15\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:8:pwm|Mult0~16\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:8:pwm|Mult0~17\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:8:pwm|Mult0~18\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:8:pwm|Mult0~19\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:8:pwm|Mult0~20\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:8:pwm|Mult0~21\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:8:pwm|Mult0~22\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:8:pwm|Mult0~23\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:8:pwm|Mult0~24\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:8:pwm|Mult0~25\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:8:pwm|Mult0~26\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:8:pwm|Mult0~27\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:8:pwm|Mult0~28\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:8:pwm|Mult0~29\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:8:pwm|Mult0~30\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:8:pwm|Mult0~31\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:8:pwm|Mult0~32\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:8:pwm|Mult0~33\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:8:pwm|Mult0~34\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:8:pwm|Mult0~35\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:8:pwm|Mult0~36\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:8:pwm|Mult0~37\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:8:pwm|Mult0~38\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:8:pwm|Mult0~39\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:8:pwm|Mult0~40\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:8:pwm|Mult0~41\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:8:pwm|Mult0~42\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:8:pwm|Mult0~43\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:8:pwm|Mult0~44\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:8:pwm|Mult0~45\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:8:pwm|Mult0~46\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:8:pwm|Mult0~47\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:8:pwm|Mult0~48\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:8:pwm|Mult0~49\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:8:pwm|Mult0~50\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:8:pwm|Mult0~51\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:8:pwm|Mult0~52\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:8:pwm|Mult0~53\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:8:pwm|Mult0~54\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:8:pwm|Mult0~55\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:8:pwm|Mult0~56\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:8:pwm|Mult0~57\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:8:pwm|Mult0~58\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:8:pwm|Mult0~59\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:8:pwm|Mult0~60\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:8:pwm|Mult0~61\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:8:pwm|Mult0~62\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:8:pwm|Mult0~63\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:8:pwm|Mult0~64\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:8:pwm|Mult0~65\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:8:pwm|Mult0~66\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:8:pwm|Mult0~67\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:8:pwm|Mult0~68\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:8:pwm|Mult0~69\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:8:pwm|Mult0~70\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:8:pwm|Mult0~71\ <= \pwms:8:pwm|Mult0~8_RESULTA_bus\(63);

\pwms:9:pwm|Mult0~8_AX_bus\ <= (\duty_value[9][7]~q\ & \duty_value[9][6]~q\ & \duty_value[9][5]~q\ & \duty_value[9][4]~q\ & \duty_value[9][3]~q\ & \duty_value[9][2]~q\ & \duty_value[9][1]~q\ & \duty_value[9][0]~q\);

\pwms:9:pwm|Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\pwms:9:pwm|Mult0~8_resulta\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(0);
\pwms:9:pwm|Mult0~9\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(1);
\pwms:9:pwm|Mult0~10\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(2);
\pwms:9:pwm|Mult0~11\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(3);
\pwms:9:pwm|Mult0~12\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(4);
\pwms:9:pwm|Mult0~13\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(5);
\pwms:9:pwm|Mult0~14\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(6);
\pwms:9:pwm|Mult0~15\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(7);
\pwms:9:pwm|Mult0~16\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(8);
\pwms:9:pwm|Mult0~17\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(9);
\pwms:9:pwm|Mult0~18\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(10);
\pwms:9:pwm|Mult0~19\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(11);
\pwms:9:pwm|Mult0~20\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(12);
\pwms:9:pwm|Mult0~21\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(13);
\pwms:9:pwm|Mult0~22\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(14);
\pwms:9:pwm|Mult0~23\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(15);
\pwms:9:pwm|Mult0~24\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(16);
\pwms:9:pwm|Mult0~25\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(17);
\pwms:9:pwm|Mult0~26\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(18);
\pwms:9:pwm|Mult0~27\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(19);
\pwms:9:pwm|Mult0~28\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(20);
\pwms:9:pwm|Mult0~29\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(21);
\pwms:9:pwm|Mult0~30\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(22);
\pwms:9:pwm|Mult0~31\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(23);
\pwms:9:pwm|Mult0~32\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(24);
\pwms:9:pwm|Mult0~33\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(25);
\pwms:9:pwm|Mult0~34\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(26);
\pwms:9:pwm|Mult0~35\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(27);
\pwms:9:pwm|Mult0~36\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(28);
\pwms:9:pwm|Mult0~37\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(29);
\pwms:9:pwm|Mult0~38\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(30);
\pwms:9:pwm|Mult0~39\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(31);
\pwms:9:pwm|Mult0~40\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(32);
\pwms:9:pwm|Mult0~41\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(33);
\pwms:9:pwm|Mult0~42\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(34);
\pwms:9:pwm|Mult0~43\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(35);
\pwms:9:pwm|Mult0~44\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(36);
\pwms:9:pwm|Mult0~45\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(37);
\pwms:9:pwm|Mult0~46\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(38);
\pwms:9:pwm|Mult0~47\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(39);
\pwms:9:pwm|Mult0~48\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(40);
\pwms:9:pwm|Mult0~49\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(41);
\pwms:9:pwm|Mult0~50\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(42);
\pwms:9:pwm|Mult0~51\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(43);
\pwms:9:pwm|Mult0~52\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(44);
\pwms:9:pwm|Mult0~53\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(45);
\pwms:9:pwm|Mult0~54\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(46);
\pwms:9:pwm|Mult0~55\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(47);
\pwms:9:pwm|Mult0~56\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(48);
\pwms:9:pwm|Mult0~57\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(49);
\pwms:9:pwm|Mult0~58\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(50);
\pwms:9:pwm|Mult0~59\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(51);
\pwms:9:pwm|Mult0~60\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(52);
\pwms:9:pwm|Mult0~61\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(53);
\pwms:9:pwm|Mult0~62\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(54);
\pwms:9:pwm|Mult0~63\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(55);
\pwms:9:pwm|Mult0~64\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(56);
\pwms:9:pwm|Mult0~65\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(57);
\pwms:9:pwm|Mult0~66\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(58);
\pwms:9:pwm|Mult0~67\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(59);
\pwms:9:pwm|Mult0~68\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(60);
\pwms:9:pwm|Mult0~69\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(61);
\pwms:9:pwm|Mult0~70\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(62);
\pwms:9:pwm|Mult0~71\ <= \pwms:9:pwm|Mult0~8_RESULTA_bus\(63);

\Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\Mult0~8_AY_bus\ <= (gnd & gnd & gnd & gnd & gnd & \delay[11]~input_o\ & \delay[10]~input_o\ & \delay[9]~input_o\ & \delay[8]~input_o\ & \delay[7]~input_o\ & \delay[6]~input_o\ & \delay[5]~input_o\ & \delay[4]~input_o\ & \delay[3]~input_o\ & 
\delay[2]~input_o\ & \delay[1]~input_o\ & \delay[0]~input_o\);

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

\Mult0~mult_hlmac_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\Mult0~mult_hlmac_AY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0~mult_hlmac_BX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0~mult_hlmac_BY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Mult0~36\ & \Mult0~35\ & \Mult0~34\ & \Mult0~33\ & \Mult0~32\ & \Mult0~31\ & \Mult0~30\ & \Mult0~29\ & \Mult0~28\ & \Mult0~27\ & \Mult0~26\);

\Mult0~mult_hlmac_resulta\ <= \Mult0~mult_hlmac_RESULTA_bus\(0);
\Mult0~656\ <= \Mult0~mult_hlmac_RESULTA_bus\(1);
\Mult0~657\ <= \Mult0~mult_hlmac_RESULTA_bus\(2);
\Mult0~658\ <= \Mult0~mult_hlmac_RESULTA_bus\(3);
\Mult0~659\ <= \Mult0~mult_hlmac_RESULTA_bus\(4);
\Mult0~660\ <= \Mult0~mult_hlmac_RESULTA_bus\(5);
\Mult0~661\ <= \Mult0~mult_hlmac_RESULTA_bus\(6);
\Mult0~662\ <= \Mult0~mult_hlmac_RESULTA_bus\(7);
\Mult0~663\ <= \Mult0~mult_hlmac_RESULTA_bus\(8);
\Mult0~664\ <= \Mult0~mult_hlmac_RESULTA_bus\(9);
\Mult0~665\ <= \Mult0~mult_hlmac_RESULTA_bus\(10);
\Mult0~666\ <= \Mult0~mult_hlmac_RESULTA_bus\(11);
\Mult0~667\ <= \Mult0~mult_hlmac_RESULTA_bus\(12);
\Mult0~668\ <= \Mult0~mult_hlmac_RESULTA_bus\(13);
\Mult0~669\ <= \Mult0~mult_hlmac_RESULTA_bus\(14);
\Mult0~670\ <= \Mult0~mult_hlmac_RESULTA_bus\(15);
\Mult0~671\ <= \Mult0~mult_hlmac_RESULTA_bus\(16);
\Mult0~672\ <= \Mult0~mult_hlmac_RESULTA_bus\(17);
\Mult0~673\ <= \Mult0~mult_hlmac_RESULTA_bus\(18);
\Mult0~674\ <= \Mult0~mult_hlmac_RESULTA_bus\(19);
\Mult0~675\ <= \Mult0~mult_hlmac_RESULTA_bus\(20);
\Mult0~676\ <= \Mult0~mult_hlmac_RESULTA_bus\(21);
\Mult0~677\ <= \Mult0~mult_hlmac_RESULTA_bus\(22);
\Mult0~678\ <= \Mult0~mult_hlmac_RESULTA_bus\(23);
\Mult0~679\ <= \Mult0~mult_hlmac_RESULTA_bus\(24);
\Mult0~680\ <= \Mult0~mult_hlmac_RESULTA_bus\(25);
\Mult0~349\ <= \Mult0~mult_hlmac_RESULTA_bus\(26);
\Mult0~350\ <= \Mult0~mult_hlmac_RESULTA_bus\(27);
\Mult0~351\ <= \Mult0~mult_hlmac_RESULTA_bus\(28);
\Mult0~352\ <= \Mult0~mult_hlmac_RESULTA_bus\(29);
\Mult0~353\ <= \Mult0~mult_hlmac_RESULTA_bus\(30);
\Mult0~354\ <= \Mult0~mult_hlmac_RESULTA_bus\(31);
\Mult0~355\ <= \Mult0~mult_hlmac_RESULTA_bus\(32);
\Mult0~356\ <= \Mult0~mult_hlmac_RESULTA_bus\(33);
\Mult0~357\ <= \Mult0~mult_hlmac_RESULTA_bus\(34);
\Mult0~358\ <= \Mult0~mult_hlmac_RESULTA_bus\(35);
\Mult0~359\ <= \Mult0~mult_hlmac_RESULTA_bus\(36);
\Mult0~360\ <= \Mult0~mult_hlmac_RESULTA_bus\(37);
\Mult0~361\ <= \Mult0~mult_hlmac_RESULTA_bus\(38);
\Mult0~362\ <= \Mult0~mult_hlmac_RESULTA_bus\(39);
\Mult0~363\ <= \Mult0~mult_hlmac_RESULTA_bus\(40);
\Mult0~364\ <= \Mult0~mult_hlmac_RESULTA_bus\(41);
\Mult0~365\ <= \Mult0~mult_hlmac_RESULTA_bus\(42);
\Mult0~366\ <= \Mult0~mult_hlmac_RESULTA_bus\(43);
\Mult0~367\ <= \Mult0~mult_hlmac_RESULTA_bus\(44);
\Mult0~368\ <= \Mult0~mult_hlmac_RESULTA_bus\(45);
\Mult0~369\ <= \Mult0~mult_hlmac_RESULTA_bus\(46);
\Mult0~370\ <= \Mult0~mult_hlmac_RESULTA_bus\(47);
\Mult0~371\ <= \Mult0~mult_hlmac_RESULTA_bus\(48);
\Mult0~372\ <= \Mult0~mult_hlmac_RESULTA_bus\(49);
\Mult0~373\ <= \Mult0~mult_hlmac_RESULTA_bus\(50);
\Mult0~374\ <= \Mult0~mult_hlmac_RESULTA_bus\(51);
\Mult0~375\ <= \Mult0~mult_hlmac_RESULTA_bus\(52);
\Mult0~376\ <= \Mult0~mult_hlmac_RESULTA_bus\(53);
\Mult0~377\ <= \Mult0~mult_hlmac_RESULTA_bus\(54);
\Mult0~378\ <= \Mult0~mult_hlmac_RESULTA_bus\(55);
\Mult0~379\ <= \Mult0~mult_hlmac_RESULTA_bus\(56);
\Mult0~380\ <= \Mult0~mult_hlmac_RESULTA_bus\(57);
\Mult0~381\ <= \Mult0~mult_hlmac_RESULTA_bus\(58);
\Mult0~382\ <= \Mult0~mult_hlmac_RESULTA_bus\(59);
\Mult0~383\ <= \Mult0~mult_hlmac_RESULTA_bus\(60);
\Mult0~384\ <= \Mult0~mult_hlmac_RESULTA_bus\(61);
\Mult0~385\ <= \Mult0~mult_hlmac_RESULTA_bus\(62);
\Mult0~386\ <= \Mult0~mult_hlmac_RESULTA_bus\(63);
\pwms:7:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:7:pwm|Equal1~0_combout\;
\pwms:7:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:7:pwm|half_duty\(6);
\pwms:7:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:7:pwm|half_duty\(5);
\pwms:7:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:7:pwm|half_duty\(8);
\pwms:7:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:7:pwm|half_duty\(7);
\pwms:7:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:7:pwm|pwm_out~3_combout\;
\pwms:7:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:7:pwm|pwm_out~2_combout\;
\pwms:7:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:7:pwm|half_duty\(0);
\pwms:7:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:7:pwm|pwm_out~1_combout\;
\pwms:7:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:7:pwm|pwm_out~0_combout\;
\pwms:6:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:6:pwm|Equal1~4_combout\;
\pwms:6:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:6:pwm|Equal1~3_combout\;
\pwms:6:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:6:pwm|Equal1~2_combout\;
\pwms:6:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:6:pwm|half_duty\(3);
\pwms:6:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:6:pwm|half_duty\(2);
\pwms:6:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:6:pwm|Equal1~1_combout\;
\pwms:6:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:6:pwm|half_duty\(1);
\pwms:6:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:6:pwm|half_duty\(4);
\pwms:6:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:6:pwm|Equal1~0_combout\;
\pwms:6:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:6:pwm|half_duty\(6);
\pwms:6:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:6:pwm|half_duty\(5);
\pwms:6:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:6:pwm|half_duty\(8);
\pwms:6:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:6:pwm|half_duty\(7);
\pwms:6:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:6:pwm|pwm_out~3_combout\;
\pwms:6:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:6:pwm|pwm_out~2_combout\;
\pwms:6:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:6:pwm|half_duty\(0);
\pwms:6:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:6:pwm|pwm_out~1_combout\;
\pwms:6:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:6:pwm|pwm_out~0_combout\;
\pwms:5:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:5:pwm|Equal1~4_combout\;
\pwms:5:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:5:pwm|Equal1~3_combout\;
\pwms:5:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:5:pwm|Equal1~2_combout\;
\pwms:5:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:5:pwm|half_duty\(3);
\pwms:5:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:5:pwm|half_duty\(2);
\pwms:5:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:5:pwm|Equal1~1_combout\;
\pwms:5:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:5:pwm|half_duty\(1);
\pwms:5:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:5:pwm|half_duty\(4);
\pwms:5:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:5:pwm|Equal1~0_combout\;
\pwms:5:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:5:pwm|half_duty\(6);
\pwms:5:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:5:pwm|half_duty\(5);
\pwms:5:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:5:pwm|half_duty\(8);
\pwms:5:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:5:pwm|half_duty\(7);
\pwms:5:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:5:pwm|pwm_out~3_combout\;
\pwms:5:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:5:pwm|pwm_out~2_combout\;
\pwms:5:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:5:pwm|half_duty\(0);
\pwms:5:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:5:pwm|pwm_out~1_combout\;
\pwms:5:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:5:pwm|pwm_out~0_combout\;
\pwms:4:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:4:pwm|Equal1~4_combout\;
\pwms:4:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:4:pwm|Equal1~3_combout\;
\pwms:4:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:4:pwm|Equal1~2_combout\;
\pwms:4:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:4:pwm|half_duty\(3);
\pwms:4:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:4:pwm|half_duty\(2);
\pwms:4:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:4:pwm|Equal1~1_combout\;
\pwms:4:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:4:pwm|half_duty\(1);
\pwms:4:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:4:pwm|half_duty\(4);
\pwms:4:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:4:pwm|Equal1~0_combout\;
\pwms:4:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:4:pwm|half_duty\(6);
\pwms:4:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:4:pwm|half_duty\(5);
\pwms:4:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:4:pwm|half_duty\(8);
\pwms:4:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:4:pwm|half_duty\(7);
\pwms:4:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:4:pwm|pwm_out~3_combout\;
\pwms:4:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:4:pwm|pwm_out~2_combout\;
\pwms:4:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:4:pwm|half_duty\(0);
\pwms:4:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:4:pwm|pwm_out~1_combout\;
\pwms:4:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:4:pwm|pwm_out~0_combout\;
\pwms:3:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:3:pwm|Equal1~4_combout\;
\pwms:3:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:3:pwm|Equal1~3_combout\;
\pwms:3:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:3:pwm|Equal1~2_combout\;
\pwms:3:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:3:pwm|half_duty\(3);
\pwms:3:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:3:pwm|half_duty\(2);
\pwms:3:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:3:pwm|Equal1~1_combout\;
\pwms:3:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:3:pwm|half_duty\(1);
\pwms:3:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:3:pwm|half_duty\(4);
\pwms:3:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:3:pwm|Equal1~0_combout\;
\pwms:3:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:3:pwm|half_duty\(6);
\pwms:3:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:3:pwm|half_duty\(5);
\pwms:3:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:3:pwm|half_duty\(8);
\pwms:3:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:3:pwm|half_duty\(7);
\pwms:3:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:3:pwm|pwm_out~3_combout\;
\pwms:3:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:3:pwm|pwm_out~2_combout\;
\pwms:3:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:3:pwm|half_duty\(0);
\pwms:3:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:3:pwm|pwm_out~1_combout\;
\pwms:3:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:3:pwm|pwm_out~0_combout\;
\pwms:2:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:2:pwm|Equal1~4_combout\;
\pwms:2:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:2:pwm|Equal1~3_combout\;
\pwms:2:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:2:pwm|Equal1~2_combout\;
\pwms:2:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:2:pwm|half_duty\(3);
\pwms:2:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:2:pwm|half_duty\(2);
\pwms:2:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:2:pwm|Equal1~1_combout\;
\pwms:2:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:2:pwm|half_duty\(1);
\pwms:2:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:2:pwm|half_duty\(4);
\pwms:2:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:2:pwm|Equal1~0_combout\;
\pwms:2:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:2:pwm|half_duty\(6);
\pwms:2:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:2:pwm|half_duty\(5);
\pwms:2:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:2:pwm|half_duty\(8);
\pwms:2:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:2:pwm|half_duty\(7);
\pwms:2:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:2:pwm|pwm_out~3_combout\;
\pwms:2:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:2:pwm|pwm_out~2_combout\;
\pwms:2:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:2:pwm|half_duty\(0);
\pwms:2:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:2:pwm|pwm_out~1_combout\;
\pwms:2:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:2:pwm|pwm_out~0_combout\;
\pwms:1:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:1:pwm|Equal1~4_combout\;
\pwms:1:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:1:pwm|Equal1~3_combout\;
\pwms:1:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:1:pwm|Equal1~2_combout\;
\pwms:1:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:1:pwm|half_duty\(3);
\pwms:1:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:1:pwm|half_duty\(2);
\pwms:1:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:1:pwm|Equal1~1_combout\;
\pwms:1:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:1:pwm|half_duty\(1);
\pwms:1:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:1:pwm|half_duty\(4);
\pwms:1:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:1:pwm|Equal1~0_combout\;
\pwms:1:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:1:pwm|half_duty\(6);
\pwms:1:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:1:pwm|half_duty\(5);
\pwms:1:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:1:pwm|half_duty\(8);
\pwms:1:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:1:pwm|half_duty\(7);
\pwms:1:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:1:pwm|pwm_out~3_combout\;
\pwms:1:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:1:pwm|pwm_out~2_combout\;
\pwms:1:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:1:pwm|half_duty\(0);
\pwms:1:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:1:pwm|pwm_out~1_combout\;
\pwms:1:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:1:pwm|pwm_out~0_combout\;
\pwms:0:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:0:pwm|Equal1~4_combout\;
\pwms:0:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:0:pwm|Equal1~3_combout\;
\pwms:0:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:0:pwm|Equal1~2_combout\;
\pwms:0:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:0:pwm|half_duty\(3);
\pwms:0:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:0:pwm|half_duty\(2);
\pwms:0:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:0:pwm|Equal1~1_combout\;
\pwms:0:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:0:pwm|half_duty\(1);
\pwms:0:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:0:pwm|half_duty\(4);
\pwms:0:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:0:pwm|Equal1~0_combout\;
\pwms:0:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:0:pwm|half_duty\(6);
\pwms:0:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:0:pwm|half_duty\(5);
\pwms:0:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:0:pwm|half_duty\(8);
\pwms:0:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:0:pwm|half_duty\(7);
\pwms:0:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:0:pwm|pwm_out~3_combout\;
\pwms:0:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:0:pwm|pwm_out~2_combout\;
\pwms:0:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:0:pwm|half_duty\(0);
\pwms:0:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:0:pwm|pwm_out~1_combout\;
\pwms:0:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:0:pwm|pwm_out~0_combout\;
\pwms:9:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:9:pwm|pwm_out~q\;
\pwms:8:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:8:pwm|pwm_out~q\;
\pwms:7:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:7:pwm|pwm_out~q\;
\pwms:6:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:6:pwm|pwm_out~q\;
\pwms:5:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:5:pwm|pwm_out~q\;
\pwms:4:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:4:pwm|pwm_out~q\;
\pwms:3:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:3:pwm|pwm_out~q\;
\pwms:2:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:2:pwm|pwm_out~q\;
\pwms:1:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:1:pwm|pwm_out~q\;
\pwms:0:pwm|ALT_INV_pwm_out~q\ <= NOT \pwms:0:pwm|pwm_out~q\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
ALT_INV_delay_count(29) <= NOT delay_count(29);
ALT_INV_delay_count(30) <= NOT delay_count(30);
ALT_INV_delay_count(31) <= NOT delay_count(31);
ALT_INV_delay_count(22) <= NOT delay_count(22);
ALT_INV_delay_count(23) <= NOT delay_count(23);
ALT_INV_delay_count(24) <= NOT delay_count(24);
ALT_INV_delay_count(26) <= NOT delay_count(26);
ALT_INV_delay_count(27) <= NOT delay_count(27);
ALT_INV_delay_count(28) <= NOT delay_count(28);
ALT_INV_delay_count(25) <= NOT delay_count(25);
ALT_INV_delay_count(15) <= NOT delay_count(15);
ALT_INV_delay_count(16) <= NOT delay_count(16);
ALT_INV_delay_count(17) <= NOT delay_count(17);
ALT_INV_delay_count(19) <= NOT delay_count(19);
ALT_INV_delay_count(20) <= NOT delay_count(20);
ALT_INV_delay_count(21) <= NOT delay_count(21);
ALT_INV_delay_count(18) <= NOT delay_count(18);
\ALT_INV_Mult0~668\ <= NOT \Mult0~668\;
\ALT_INV_Mult0~667\ <= NOT \Mult0~667\;
\ALT_INV_Mult0~666\ <= NOT \Mult0~666\;
\ALT_INV_Mult0~665\ <= NOT \Mult0~665\;
\ALT_INV_Mult0~664\ <= NOT \Mult0~664\;
\ALT_INV_Mult0~663\ <= NOT \Mult0~663\;
\ALT_INV_Mult0~662\ <= NOT \Mult0~662\;
\ALT_INV_Mult0~661\ <= NOT \Mult0~661\;
\ALT_INV_Mult0~660\ <= NOT \Mult0~660\;
\ALT_INV_Mult0~659\ <= NOT \Mult0~659\;
\ALT_INV_Mult0~658\ <= NOT \Mult0~658\;
\ALT_INV_Mult0~657\ <= NOT \Mult0~657\;
\ALT_INV_Mult0~656\ <= NOT \Mult0~656\;
\ALT_INV_Mult0~mult_hlmac_resulta\ <= NOT \Mult0~mult_hlmac_resulta\;
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
ALT_INV_duty_count(4) <= NOT duty_count(4);
ALT_INV_duty_count(6) <= NOT duty_count(6);
ALT_INV_duty_count(7) <= NOT duty_count(7);
ALT_INV_duty_count(8) <= NOT duty_count(8);
ALT_INV_duty_count(9) <= NOT duty_count(9);
ALT_INV_duty_count(11) <= NOT duty_count(11);
ALT_INV_duty_count(27) <= NOT duty_count(27);
ALT_INV_duty_count(28) <= NOT duty_count(28);
ALT_INV_duty_count(29) <= NOT duty_count(29);
ALT_INV_duty_count(30) <= NOT duty_count(30);
ALT_INV_duty_count(12) <= NOT duty_count(12);
ALT_INV_duty_count(26) <= NOT duty_count(26);
ALT_INV_duty_count(10) <= NOT duty_count(10);
ALT_INV_duty_count(5) <= NOT duty_count(5);
ALT_INV_duty_count(21) <= NOT duty_count(21);
ALT_INV_duty_count(22) <= NOT duty_count(22);
ALT_INV_duty_count(23) <= NOT duty_count(23);
ALT_INV_duty_count(24) <= NOT duty_count(24);
ALT_INV_duty_count(25) <= NOT duty_count(25);
ALT_INV_duty_count(14) <= NOT duty_count(14);
ALT_INV_duty_count(15) <= NOT duty_count(15);
ALT_INV_duty_count(16) <= NOT duty_count(16);
ALT_INV_duty_count(17) <= NOT duty_count(17);
ALT_INV_duty_count(18) <= NOT duty_count(18);
ALT_INV_duty_count(19) <= NOT duty_count(19);
ALT_INV_duty_count(31) <= NOT duty_count(31);
ALT_INV_duty_count(13) <= NOT duty_count(13);
ALT_INV_duty_count(20) <= NOT duty_count(20);
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_duty_count(0) <= NOT duty_count(0);
ALT_INV_duty_count(1) <= NOT duty_count(1);
ALT_INV_duty_count(2) <= NOT duty_count(2);
ALT_INV_duty_count(3) <= NOT duty_count(3);
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\pwms:9:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:9:pwm|Mult0~25\;
\pwms:9:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:9:pwm|Mult0~24\;
\pwms:9:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:9:pwm|Mult0~22\;
\pwms:9:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:9:pwm|Mult0~21\;
\pwms:9:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:9:pwm|Mult0~19\;
\pwms:9:pwm|ALT_INV_Mult0~17\ <= NOT \pwms:9:pwm|Mult0~17\;
\pwms:8:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:8:pwm|Mult0~25\;
\pwms:8:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:8:pwm|Mult0~24\;
\pwms:8:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:8:pwm|Mult0~23\;
\pwms:8:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:8:pwm|Mult0~22\;
\pwms:8:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:8:pwm|Mult0~21\;
\pwms:8:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:8:pwm|Mult0~20\;
\pwms:8:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:8:pwm|Mult0~19\;
\pwms:8:pwm|ALT_INV_Mult0~18\ <= NOT \pwms:8:pwm|Mult0~18\;
\pwms:8:pwm|ALT_INV_Mult0~17\ <= NOT \pwms:8:pwm|Mult0~17\;
\pwms:7:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:7:pwm|Mult0~24\;
\pwms:7:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:7:pwm|Mult0~23\;
\pwms:7:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:7:pwm|Mult0~21\;
\pwms:7:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:7:pwm|Mult0~20\;
\pwms:6:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:6:pwm|Mult0~23\;
\pwms:6:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:6:pwm|Mult0~21\;
\pwms:6:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:6:pwm|Mult0~20\;
\pwms:6:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:6:pwm|Mult0~19\;
\pwms:5:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:5:pwm|Mult0~25\;
\pwms:5:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:5:pwm|Mult0~22\;
\pwms:5:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:5:pwm|Mult0~21\;
\pwms:5:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:5:pwm|Mult0~20\;
\pwms:4:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:4:pwm|Mult0~25\;
\pwms:4:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:4:pwm|Mult0~24\;
\pwms:4:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:4:pwm|Mult0~23\;
\pwms:4:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:4:pwm|Mult0~22\;
\pwms:4:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:4:pwm|Mult0~21\;
\pwms:4:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:4:pwm|Mult0~20\;
\pwms:4:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:4:pwm|Mult0~19\;
\pwms:4:pwm|ALT_INV_Mult0~18\ <= NOT \pwms:4:pwm|Mult0~18\;
\pwms:4:pwm|ALT_INV_Mult0~17\ <= NOT \pwms:4:pwm|Mult0~17\;
\pwms:3:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:3:pwm|Mult0~25\;
\pwms:3:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:3:pwm|Mult0~24\;
\pwms:3:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:3:pwm|Mult0~23\;
\pwms:3:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:3:pwm|Mult0~22\;
\pwms:3:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:3:pwm|Mult0~21\;
\pwms:3:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:3:pwm|Mult0~20\;
\pwms:3:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:3:pwm|Mult0~19\;
\pwms:3:pwm|ALT_INV_Mult0~18\ <= NOT \pwms:3:pwm|Mult0~18\;
\pwms:2:pwm|ALT_INV_Mult0~25\ <= NOT \pwms:2:pwm|Mult0~25\;
\pwms:2:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:2:pwm|Mult0~24\;
\pwms:2:pwm|ALT_INV_Mult0~23\ <= NOT \pwms:2:pwm|Mult0~23\;
\pwms:2:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:2:pwm|Mult0~22\;
\pwms:2:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:2:pwm|Mult0~21\;
\pwms:2:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:2:pwm|Mult0~19\;
\pwms:2:pwm|ALT_INV_Mult0~17\ <= NOT \pwms:2:pwm|Mult0~17\;
\pwms:1:pwm|ALT_INV_Mult0~20\ <= NOT \pwms:1:pwm|Mult0~20\;
\pwms:0:pwm|ALT_INV_Mult0~24\ <= NOT \pwms:0:pwm|Mult0~24\;
\pwms:0:pwm|ALT_INV_Mult0~22\ <= NOT \pwms:0:pwm|Mult0~22\;
\pwms:0:pwm|ALT_INV_Mult0~21\ <= NOT \pwms:0:pwm|Mult0~21\;
\pwms:0:pwm|ALT_INV_Mult0~19\ <= NOT \pwms:0:pwm|Mult0~19\;
\pwms:0:pwm|ALT_INV_Mult0~17\ <= NOT \pwms:0:pwm|Mult0~17\;
\pwms:0:pwm|ALT_INV_half_duty_new\(0) <= NOT \pwms:0:pwm|half_duty_new\(0);
\pwms:9:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:9:pwm|Add1~33_sumout\;
\pwms:9:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:9:pwm|Add1~29_sumout\;
\pwms:9:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:9:pwm|Add1~25_sumout\;
\pwms:9:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:9:pwm|Add1~21_sumout\;
\pwms:9:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:9:pwm|Add1~17_sumout\;
\pwms:9:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:9:pwm|Add1~13_sumout\;
\pwms:9:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:9:pwm|Add1~9_sumout\;
\pwms:9:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:9:pwm|Add1~5_sumout\;
\pwms:9:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:9:pwm|Add1~1_sumout\;
\pwms:8:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:8:pwm|Add1~33_sumout\;
\pwms:8:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:8:pwm|Add1~29_sumout\;
\pwms:8:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:8:pwm|Add1~25_sumout\;
\pwms:8:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:8:pwm|Add1~21_sumout\;
\pwms:8:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:8:pwm|Add1~17_sumout\;
\pwms:8:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:8:pwm|Add1~13_sumout\;
\pwms:8:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:8:pwm|Add1~9_sumout\;
\pwms:8:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:8:pwm|Add1~5_sumout\;
\pwms:8:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:8:pwm|Add1~1_sumout\;
\pwms:7:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:7:pwm|Add1~33_sumout\;
\pwms:7:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:7:pwm|Add1~29_sumout\;
\pwms:7:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:7:pwm|Add1~25_sumout\;
\pwms:7:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:7:pwm|Add1~21_sumout\;
\pwms:7:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:7:pwm|Add1~17_sumout\;
\pwms:7:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:7:pwm|Add1~13_sumout\;
\pwms:7:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:7:pwm|Add1~9_sumout\;
\pwms:7:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:7:pwm|Add1~5_sumout\;
\pwms:7:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:7:pwm|Add1~1_sumout\;
\pwms:6:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:6:pwm|Add1~33_sumout\;
\pwms:6:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:6:pwm|Add1~29_sumout\;
\pwms:6:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:6:pwm|Add1~25_sumout\;
\pwms:6:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:6:pwm|Add1~21_sumout\;
\pwms:6:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:6:pwm|Add1~17_sumout\;
\pwms:6:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:6:pwm|Add1~13_sumout\;
\pwms:6:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:6:pwm|Add1~9_sumout\;
\pwms:6:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:6:pwm|Add1~5_sumout\;
\pwms:6:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:6:pwm|Add1~1_sumout\;
\pwms:5:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:5:pwm|Add1~33_sumout\;
\pwms:5:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:5:pwm|Add1~29_sumout\;
\pwms:5:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:5:pwm|Add1~25_sumout\;
\pwms:5:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:5:pwm|Add1~21_sumout\;
\pwms:5:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:5:pwm|Add1~17_sumout\;
\pwms:5:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:5:pwm|Add1~13_sumout\;
\pwms:5:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:5:pwm|Add1~9_sumout\;
\pwms:5:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:5:pwm|Add1~5_sumout\;
\pwms:5:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:5:pwm|Add1~1_sumout\;
\pwms:4:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:4:pwm|Add1~33_sumout\;
\pwms:4:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:4:pwm|Add1~29_sumout\;
\pwms:4:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:4:pwm|Add1~25_sumout\;
\pwms:4:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:4:pwm|Add1~21_sumout\;
\pwms:4:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:4:pwm|Add1~17_sumout\;
\pwms:4:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:4:pwm|Add1~13_sumout\;
\pwms:4:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:4:pwm|Add1~9_sumout\;
\pwms:4:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:4:pwm|Add1~5_sumout\;
\pwms:4:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:4:pwm|Add1~1_sumout\;
\pwms:3:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:3:pwm|Add1~33_sumout\;
\pwms:3:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:3:pwm|Add1~29_sumout\;
\pwms:3:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:3:pwm|Add1~25_sumout\;
\pwms:3:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:3:pwm|Add1~21_sumout\;
\pwms:3:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:3:pwm|Add1~17_sumout\;
\pwms:3:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:3:pwm|Add1~13_sumout\;
\pwms:3:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:3:pwm|Add1~9_sumout\;
\pwms:3:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:3:pwm|Add1~5_sumout\;
\pwms:3:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:3:pwm|Add1~1_sumout\;
\pwms:2:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:2:pwm|Add1~33_sumout\;
\pwms:2:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:2:pwm|Add1~29_sumout\;
\pwms:2:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:2:pwm|Add1~25_sumout\;
\pwms:2:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:2:pwm|Add1~21_sumout\;
\pwms:2:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:2:pwm|Add1~17_sumout\;
\pwms:2:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:2:pwm|Add1~13_sumout\;
\pwms:2:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:2:pwm|Add1~9_sumout\;
\pwms:2:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:2:pwm|Add1~5_sumout\;
\pwms:2:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:2:pwm|Add1~1_sumout\;
\pwms:1:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:1:pwm|Add1~33_sumout\;
\pwms:1:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:1:pwm|Add1~29_sumout\;
\pwms:1:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:1:pwm|Add1~25_sumout\;
\pwms:1:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:1:pwm|Add1~21_sumout\;
\pwms:1:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:1:pwm|Add1~17_sumout\;
\pwms:1:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:1:pwm|Add1~13_sumout\;
\pwms:1:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:1:pwm|Add1~9_sumout\;
\pwms:1:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:1:pwm|Add1~5_sumout\;
\pwms:1:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:1:pwm|Add1~1_sumout\;
\pwms:0:pwm|ALT_INV_Add1~33_sumout\ <= NOT \pwms:0:pwm|Add1~33_sumout\;
\pwms:0:pwm|ALT_INV_count\(1) <= NOT \pwms:0:pwm|count\(1);
\pwms:0:pwm|ALT_INV_count\(0) <= NOT \pwms:0:pwm|count\(0);
\pwms:0:pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwms:0:pwm|Add1~29_sumout\;
\pwms:0:pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwms:0:pwm|Add1~25_sumout\;
\pwms:0:pwm|ALT_INV_count\(2) <= NOT \pwms:0:pwm|count\(2);
\pwms:0:pwm|ALT_INV_count\(9) <= NOT \pwms:0:pwm|count\(9);
\pwms:0:pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwms:0:pwm|Add1~21_sumout\;
\pwms:0:pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwms:0:pwm|Add1~17_sumout\;
\pwms:0:pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwms:0:pwm|Add1~13_sumout\;
\pwms:0:pwm|ALT_INV_count\(5) <= NOT \pwms:0:pwm|count\(5);
\pwms:0:pwm|ALT_INV_count\(4) <= NOT \pwms:0:pwm|count\(4);
\pwms:0:pwm|ALT_INV_count\(3) <= NOT \pwms:0:pwm|count\(3);
\pwms:0:pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwms:0:pwm|Add1~9_sumout\;
\pwms:0:pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwms:0:pwm|Add1~5_sumout\;
\pwms:0:pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwms:0:pwm|Add1~1_sumout\;
\pwms:0:pwm|ALT_INV_count\(8) <= NOT \pwms:0:pwm|count\(8);
\pwms:0:pwm|ALT_INV_count\(7) <= NOT \pwms:0:pwm|count\(7);
\pwms:0:pwm|ALT_INV_count\(6) <= NOT \pwms:0:pwm|count\(6);
\pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \pwms:0:pwm|count[1]~DUPLICATE_q\;
\pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \pwms:0:pwm|count[0]~DUPLICATE_q\;
\pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\ <= NOT \pwms:0:pwm|count[3]~DUPLICATE_q\;
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_direction~2_combout\ <= NOT \direction~2_combout\;
\ALT_INV_direction~1_combout\ <= NOT \direction~1_combout\;
\ALT_INV_direction~0_combout\ <= NOT \direction~0_combout\;
\ALT_INV_direction~q\ <= NOT \direction~q\;
\ALT_INV_state.go_state~q\ <= NOT \state.go_state~q\;
ALT_INV_i(4) <= NOT i(4);
ALT_INV_i(3) <= NOT i(3);
ALT_INV_i(8) <= NOT i(8);
ALT_INV_i(7) <= NOT i(7);
ALT_INV_i(6) <= NOT i(6);
ALT_INV_i(5) <= NOT i(5);
ALT_INV_i(0) <= NOT i(0);
ALT_INV_i(2) <= NOT i(2);
ALT_INV_i(1) <= NOT i(1);
ALT_INV_i(9) <= NOT i(9);
\ALT_INV_state.calculate_duty_state~0_combout\ <= NOT \state.calculate_duty_state~0_combout\;
\ALT_INV_LessThan1~39_combout\ <= NOT \LessThan1~39_combout\;
\ALT_INV_LessThan1~38_combout\ <= NOT \LessThan1~38_combout\;
\ALT_INV_LessThan1~37_combout\ <= NOT \LessThan1~37_combout\;
\ALT_INV_LessThan1~36_combout\ <= NOT \LessThan1~36_combout\;
\ALT_INV_LessThan1~35_combout\ <= NOT \LessThan1~35_combout\;
\ALT_INV_LessThan1~34_combout\ <= NOT \LessThan1~34_combout\;
\ALT_INV_LessThan1~33_combout\ <= NOT \LessThan1~33_combout\;
\ALT_INV_LessThan1~32_combout\ <= NOT \LessThan1~32_combout\;
\ALT_INV_LessThan1~31_combout\ <= NOT \LessThan1~31_combout\;
\ALT_INV_LessThan1~30_combout\ <= NOT \LessThan1~30_combout\;
\ALT_INV_LessThan1~29_combout\ <= NOT \LessThan1~29_combout\;
\ALT_INV_LessThan1~28_combout\ <= NOT \LessThan1~28_combout\;
\ALT_INV_LessThan1~27_combout\ <= NOT \LessThan1~27_combout\;
\ALT_INV_LessThan1~26_combout\ <= NOT \LessThan1~26_combout\;
\ALT_INV_LessThan1~25_combout\ <= NOT \LessThan1~25_combout\;
\ALT_INV_LessThan1~24_combout\ <= NOT \LessThan1~24_combout\;
\ALT_INV_LessThan1~23_combout\ <= NOT \LessThan1~23_combout\;
\ALT_INV_LessThan1~22_combout\ <= NOT \LessThan1~22_combout\;
\ALT_INV_LessThan1~21_combout\ <= NOT \LessThan1~21_combout\;
\ALT_INV_LessThan1~20_combout\ <= NOT \LessThan1~20_combout\;
\ALT_INV_LessThan1~19_combout\ <= NOT \LessThan1~19_combout\;
\ALT_INV_LessThan1~18_combout\ <= NOT \LessThan1~18_combout\;
\ALT_INV_LessThan1~17_combout\ <= NOT \LessThan1~17_combout\;
\ALT_INV_LessThan1~16_combout\ <= NOT \LessThan1~16_combout\;
\ALT_INV_LessThan1~15_combout\ <= NOT \LessThan1~15_combout\;
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_state.wait_state~q\ <= NOT \state.wait_state~q\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Decoder0~9_combout\ <= NOT \Decoder0~9_combout\;
\ALT_INV_Decoder0~8_combout\ <= NOT \Decoder0~8_combout\;
\ALT_INV_Decoder0~7_combout\ <= NOT \Decoder0~7_combout\;
\ALT_INV_Decoder0~6_combout\ <= NOT \Decoder0~6_combout\;
\ALT_INV_Decoder0~5_combout\ <= NOT \Decoder0~5_combout\;
\ALT_INV_Decoder0~4_combout\ <= NOT \Decoder0~4_combout\;
\ALT_INV_Decoder0~3_combout\ <= NOT \Decoder0~3_combout\;
\ALT_INV_Decoder0~2_combout\ <= NOT \Decoder0~2_combout\;
\ALT_INV_Decoder0~1_combout\ <= NOT \Decoder0~1_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_duty_value~7_combout\ <= NOT \duty_value~7_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_state.calculate_duty_state~q\ <= NOT \state.calculate_duty_state~q\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_duty_value[9][5]~q\ <= NOT \duty_value[9][5]~q\;
\ALT_INV_duty_value[9][4]~q\ <= NOT \duty_value[9][4]~q\;
\ALT_INV_duty_value[9][3]~q\ <= NOT \duty_value[9][3]~q\;
\ALT_INV_duty_value[9][2]~q\ <= NOT \duty_value[9][2]~q\;
\ALT_INV_duty_value[9][1]~q\ <= NOT \duty_value[9][1]~q\;
\ALT_INV_duty_value[9][0]~q\ <= NOT \duty_value[9][0]~q\;
\ALT_INV_duty_value[8][5]~q\ <= NOT \duty_value[8][5]~q\;
\ALT_INV_duty_value[8][4]~q\ <= NOT \duty_value[8][4]~q\;
\ALT_INV_duty_value[8][3]~q\ <= NOT \duty_value[8][3]~q\;
\ALT_INV_duty_value[8][2]~q\ <= NOT \duty_value[8][2]~q\;
\ALT_INV_duty_value[8][1]~q\ <= NOT \duty_value[8][1]~q\;
\ALT_INV_duty_value[8][0]~q\ <= NOT \duty_value[8][0]~q\;
\ALT_INV_duty_value[7][5]~q\ <= NOT \duty_value[7][5]~q\;
\ALT_INV_duty_value[7][4]~q\ <= NOT \duty_value[7][4]~q\;
\ALT_INV_duty_value[7][3]~q\ <= NOT \duty_value[7][3]~q\;
\ALT_INV_duty_value[7][2]~q\ <= NOT \duty_value[7][2]~q\;
\ALT_INV_duty_value[7][1]~q\ <= NOT \duty_value[7][1]~q\;
\ALT_INV_duty_value[7][0]~q\ <= NOT \duty_value[7][0]~q\;
\ALT_INV_duty_value[6][5]~q\ <= NOT \duty_value[6][5]~q\;
\ALT_INV_duty_value[6][4]~q\ <= NOT \duty_value[6][4]~q\;
\ALT_INV_duty_value[6][3]~q\ <= NOT \duty_value[6][3]~q\;
\ALT_INV_duty_value[6][2]~q\ <= NOT \duty_value[6][2]~q\;
\ALT_INV_duty_value[6][1]~q\ <= NOT \duty_value[6][1]~q\;
\ALT_INV_duty_value[6][0]~q\ <= NOT \duty_value[6][0]~q\;
\ALT_INV_duty_value[5][5]~q\ <= NOT \duty_value[5][5]~q\;
\ALT_INV_duty_value[5][4]~q\ <= NOT \duty_value[5][4]~q\;
\ALT_INV_duty_value[5][3]~q\ <= NOT \duty_value[5][3]~q\;
\ALT_INV_duty_value[5][2]~q\ <= NOT \duty_value[5][2]~q\;
\ALT_INV_duty_value[5][1]~q\ <= NOT \duty_value[5][1]~q\;
\ALT_INV_duty_value[5][0]~q\ <= NOT \duty_value[5][0]~q\;
\ALT_INV_duty_value[4][5]~q\ <= NOT \duty_value[4][5]~q\;
\ALT_INV_duty_value[4][4]~q\ <= NOT \duty_value[4][4]~q\;
\ALT_INV_duty_value[4][3]~q\ <= NOT \duty_value[4][3]~q\;
\ALT_INV_duty_value[4][2]~q\ <= NOT \duty_value[4][2]~q\;
\ALT_INV_duty_value[4][1]~q\ <= NOT \duty_value[4][1]~q\;
\ALT_INV_duty_value[4][0]~q\ <= NOT \duty_value[4][0]~q\;
\ALT_INV_duty_value[3][5]~q\ <= NOT \duty_value[3][5]~q\;
\ALT_INV_duty_value[3][4]~q\ <= NOT \duty_value[3][4]~q\;
\ALT_INV_duty_value[3][3]~q\ <= NOT \duty_value[3][3]~q\;
\ALT_INV_duty_value[3][2]~q\ <= NOT \duty_value[3][2]~q\;
\ALT_INV_duty_value[3][1]~q\ <= NOT \duty_value[3][1]~q\;
\ALT_INV_duty_value[3][0]~q\ <= NOT \duty_value[3][0]~q\;
\ALT_INV_duty_value[2][5]~q\ <= NOT \duty_value[2][5]~q\;
\ALT_INV_duty_value[2][4]~q\ <= NOT \duty_value[2][4]~q\;
\ALT_INV_duty_value[2][3]~q\ <= NOT \duty_value[2][3]~q\;
\ALT_INV_duty_value[2][2]~q\ <= NOT \duty_value[2][2]~q\;
\ALT_INV_duty_value[2][1]~q\ <= NOT \duty_value[2][1]~q\;
\ALT_INV_duty_value[2][0]~q\ <= NOT \duty_value[2][0]~q\;
\ALT_INV_duty_value[1][5]~q\ <= NOT \duty_value[1][5]~q\;
\ALT_INV_duty_value[1][4]~q\ <= NOT \duty_value[1][4]~q\;
\ALT_INV_duty_value[1][3]~q\ <= NOT \duty_value[1][3]~q\;
\ALT_INV_duty_value[1][2]~q\ <= NOT \duty_value[1][2]~q\;
\ALT_INV_duty_value[1][1]~q\ <= NOT \duty_value[1][1]~q\;
\ALT_INV_duty_value[1][0]~q\ <= NOT \duty_value[1][0]~q\;
\ALT_INV_duty_value[0][5]~q\ <= NOT \duty_value[0][5]~q\;
\ALT_INV_duty_value[0][4]~q\ <= NOT \duty_value[0][4]~q\;
\ALT_INV_duty_value[0][3]~q\ <= NOT \duty_value[0][3]~q\;
\ALT_INV_duty_value[0][2]~q\ <= NOT \duty_value[0][2]~q\;
\ALT_INV_duty_value[0][1]~q\ <= NOT \duty_value[0][1]~q\;
\ALT_INV_duty_value[0][0]~q\ <= NOT \duty_value[0][0]~q\;
\pwms:0:pwm|ALT_INV_Equal0~1_combout\ <= NOT \pwms:0:pwm|Equal0~1_combout\;
\pwms:0:pwm|ALT_INV_Equal0~0_combout\ <= NOT \pwms:0:pwm|Equal0~0_combout\;
\pwms:9:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:9:pwm|Equal1~4_combout\;
\pwms:9:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:9:pwm|Equal1~3_combout\;
\pwms:9:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:9:pwm|Equal1~2_combout\;
\pwms:9:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:9:pwm|half_duty\(3);
\pwms:9:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:9:pwm|half_duty\(2);
\pwms:9:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:9:pwm|Equal1~1_combout\;
\pwms:9:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:9:pwm|half_duty\(1);
\pwms:9:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:9:pwm|half_duty\(4);
\pwms:9:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:9:pwm|Equal1~0_combout\;
\pwms:9:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:9:pwm|half_duty\(6);
\pwms:9:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:9:pwm|half_duty\(5);
\pwms:9:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:9:pwm|half_duty\(8);
\pwms:9:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:9:pwm|half_duty\(7);
\pwms:9:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:9:pwm|pwm_out~3_combout\;
\pwms:9:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:9:pwm|pwm_out~2_combout\;
\pwms:9:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:9:pwm|half_duty\(0);
\pwms:9:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:9:pwm|pwm_out~1_combout\;
\pwms:9:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:9:pwm|pwm_out~0_combout\;
\pwms:8:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:8:pwm|Equal1~4_combout\;
\pwms:8:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:8:pwm|Equal1~3_combout\;
\pwms:8:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:8:pwm|Equal1~2_combout\;
\pwms:8:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:8:pwm|half_duty\(3);
\pwms:8:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:8:pwm|half_duty\(2);
\pwms:8:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:8:pwm|Equal1~1_combout\;
\pwms:8:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:8:pwm|half_duty\(1);
\pwms:8:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:8:pwm|half_duty\(4);
\pwms:8:pwm|ALT_INV_Equal1~0_combout\ <= NOT \pwms:8:pwm|Equal1~0_combout\;
\pwms:8:pwm|ALT_INV_half_duty\(6) <= NOT \pwms:8:pwm|half_duty\(6);
\pwms:8:pwm|ALT_INV_half_duty\(5) <= NOT \pwms:8:pwm|half_duty\(5);
\pwms:8:pwm|ALT_INV_half_duty\(8) <= NOT \pwms:8:pwm|half_duty\(8);
\pwms:8:pwm|ALT_INV_half_duty\(7) <= NOT \pwms:8:pwm|half_duty\(7);
\pwms:8:pwm|ALT_INV_pwm_out~3_combout\ <= NOT \pwms:8:pwm|pwm_out~3_combout\;
\pwms:8:pwm|ALT_INV_pwm_out~2_combout\ <= NOT \pwms:8:pwm|pwm_out~2_combout\;
\pwms:8:pwm|ALT_INV_half_duty\(0) <= NOT \pwms:8:pwm|half_duty\(0);
\pwms:8:pwm|ALT_INV_pwm_out~1_combout\ <= NOT \pwms:8:pwm|pwm_out~1_combout\;
\pwms:8:pwm|ALT_INV_pwm_out~0_combout\ <= NOT \pwms:8:pwm|pwm_out~0_combout\;
\pwms:7:pwm|ALT_INV_Equal1~4_combout\ <= NOT \pwms:7:pwm|Equal1~4_combout\;
\pwms:7:pwm|ALT_INV_Equal1~3_combout\ <= NOT \pwms:7:pwm|Equal1~3_combout\;
\pwms:7:pwm|ALT_INV_Equal1~2_combout\ <= NOT \pwms:7:pwm|Equal1~2_combout\;
\pwms:7:pwm|ALT_INV_half_duty\(3) <= NOT \pwms:7:pwm|half_duty\(3);
\pwms:7:pwm|ALT_INV_half_duty\(2) <= NOT \pwms:7:pwm|half_duty\(2);
\pwms:7:pwm|ALT_INV_Equal1~1_combout\ <= NOT \pwms:7:pwm|Equal1~1_combout\;
\pwms:7:pwm|ALT_INV_half_duty\(1) <= NOT \pwms:7:pwm|half_duty\(1);
\pwms:7:pwm|ALT_INV_half_duty\(4) <= NOT \pwms:7:pwm|half_duty\(4);

-- Location: IOOBUF_X14_Y61_N53
\leds_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwms:0:pwm|pwm_out~q\,
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
	i => \pwms:1:pwm|pwm_out~q\,
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
	i => \pwms:2:pwm|pwm_out~q\,
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
	i => \pwms:3:pwm|pwm_out~q\,
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
	i => \pwms:4:pwm|pwm_out~q\,
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
	i => \pwms:5:pwm|pwm_out~q\,
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
	i => \pwms:6:pwm|pwm_out~q\,
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
	i => \pwms:7:pwm|pwm_out~q\,
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
	i => \pwms:8:pwm|pwm_out~q\,
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
	i => \pwms:9:pwm|pwm_out~q\,
	devoe => ww_devoe,
	o => ww_leds_output(9));

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

-- Location: LABCELL_X18_Y16_N0
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( duty_count(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~14\ = CARRY(( duty_count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(0),
	cin => GND,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X18_Y16_N9
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( duty_count(3) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( duty_count(3) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(3),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X18_Y16_N12
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( duty_count(4) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~126\ = CARRY(( duty_count(4) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(4),
	cin => \Add2~2\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

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

-- Location: IOIBUF_X15_Y0_N35
\delay[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(8),
	o => \delay[8]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\delay[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(9),
	o => \delay[9]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\delay[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(10),
	o => \delay[10]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\delay[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delay(11),
	o => \delay[11]~input_o\);

-- Location: DSP_X16_Y11_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 10,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
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

-- Location: DSP_X16_Y13_N0
\Mult0~mult_hlmac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 10,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 13,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 8,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
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
	operation_mode => "m18x18_plus36",
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
	ax => \Mult0~mult_hlmac_AX_bus\,
	ay => \Mult0~mult_hlmac_AY_bus\,
	bx => \Mult0~mult_hlmac_BX_bus\,
	by => \Mult0~mult_hlmac_BY_bus\,
	resulta => \Mult0~mult_hlmac_RESULTA_bus\);

-- Location: LABCELL_X18_Y14_N0
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( delay_count(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~22\ = CARRY(( delay_count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(0),
	cin => GND,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X18_Y15_N45
\state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~7_combout\ = ( \LessThan0~6_combout\ & ( !\state.calculate_duty_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.calculate_duty_state~q\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \state~7_combout\);

-- Location: LABCELL_X17_Y15_N0
\state.calculate_duty_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculate_duty_state~0_combout\ = ( \ena~input_o\ & ( !\reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_ena~input_o\,
	combout => \state.calculate_duty_state~0_combout\);

-- Location: FF_X18_Y15_N47
\state.go_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~7_combout\,
	clrn => \ALT_INV_state.calculate_duty_state~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.go_state~q\);

-- Location: LABCELL_X18_Y15_N39
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \LessThan1~39_combout\ & ( \state.go_state~q\ ) ) # ( !\LessThan1~39_combout\ & ( (\state.wait_state~q\) # (\state.go_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.go_state~q\,
	datad => \ALT_INV_state.wait_state~q\,
	dataf => \ALT_INV_LessThan1~39_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X18_Y15_N41
\state.wait_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_state.calculate_duty_state~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.wait_state~q\);

-- Location: LABCELL_X17_Y15_N27
\delay_count[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_count[31]~0_combout\ = ( \reset_n~input_o\ & ( (\ena~input_o\ & \state.wait_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ena~input_o\,
	datad => \ALT_INV_state.wait_state~q\,
	dataf => \ALT_INV_reset_n~input_o\,
	combout => \delay_count[31]~0_combout\);

-- Location: FF_X18_Y14_N1
\delay_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(0));

-- Location: LABCELL_X18_Y14_N3
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( delay_count(1) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~18\ = CARRY(( delay_count(1) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(1),
	cin => \Add5~22\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X18_Y14_N5
\delay_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(1));

-- Location: LABCELL_X18_Y14_N6
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( delay_count(2) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~30\ = CARRY(( delay_count(2) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(2),
	cin => \Add5~18\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X18_Y14_N8
\delay_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(2));

-- Location: LABCELL_X18_Y14_N9
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( delay_count(3) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~26\ = CARRY(( delay_count(3) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(3),
	cin => \Add5~30\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X18_Y14_N11
\delay_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(3));

-- Location: LABCELL_X18_Y14_N12
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( delay_count(4) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~14\ = CARRY(( delay_count(4) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(4),
	cin => \Add5~26\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X18_Y14_N14
\delay_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(4));

-- Location: LABCELL_X18_Y14_N15
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( delay_count(5) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~10\ = CARRY(( delay_count(5) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(5),
	cin => \Add5~14\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X18_Y14_N17
\delay_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(5));

-- Location: LABCELL_X18_Y14_N18
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( delay_count(6) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~6\ = CARRY(( delay_count(6) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(6),
	cin => \Add5~10\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X18_Y14_N20
\delay_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(6));

-- Location: LABCELL_X18_Y14_N21
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( delay_count(7) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~2\ = CARRY(( delay_count(7) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(7),
	cin => \Add5~6\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X18_Y14_N23
\delay_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(7));

-- Location: LABCELL_X18_Y14_N24
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( delay_count(8) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~58\ = CARRY(( delay_count(8) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(8),
	cin => \Add5~2\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X18_Y14_N26
\delay_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~57_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(8));

-- Location: LABCELL_X18_Y14_N27
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( delay_count(9) ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~50\ = CARRY(( delay_count(9) ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(9),
	cin => \Add5~58\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X18_Y14_N29
\delay_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~49_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(9));

-- Location: LABCELL_X18_Y14_N30
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( delay_count(10) ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( delay_count(10) ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(10),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X18_Y14_N32
\delay_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~53_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(10));

-- Location: LABCELL_X18_Y14_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( delay_count(11) ) + ( GND ) + ( \Add5~54\ ))
-- \Add5~46\ = CARRY(( delay_count(11) ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(11),
	cin => \Add5~54\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X18_Y14_N35
\delay_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~45_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(11));

-- Location: LABCELL_X18_Y14_N36
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( delay_count(12) ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~42\ = CARRY(( delay_count(12) ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(12),
	cin => \Add5~46\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X18_Y14_N38
\delay_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~41_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(12));

-- Location: LABCELL_X18_Y14_N39
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( delay_count(13) ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~38\ = CARRY(( delay_count(13) ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(13),
	cin => \Add5~42\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X18_Y14_N41
\delay_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~37_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(13));

-- Location: LABCELL_X18_Y14_N42
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( delay_count(14) ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~34\ = CARRY(( delay_count(14) ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(14),
	cin => \Add5~38\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X18_Y14_N44
\delay_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(14));

-- Location: LABCELL_X18_Y14_N45
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( delay_count(15) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~86\ = CARRY(( delay_count(15) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(15),
	cin => \Add5~34\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X18_Y14_N47
\delay_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~85_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(15));

-- Location: LABCELL_X18_Y14_N48
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( delay_count(16) ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~82\ = CARRY(( delay_count(16) ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(16),
	cin => \Add5~86\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X18_Y14_N50
\delay_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~81_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(16));

-- Location: LABCELL_X18_Y14_N51
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( delay_count(17) ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~78\ = CARRY(( delay_count(17) ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(17),
	cin => \Add5~82\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: FF_X18_Y14_N53
\delay_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~77_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(17));

-- Location: LABCELL_X18_Y14_N54
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( delay_count(18) ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~62\ = CARRY(( delay_count(18) ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(18),
	cin => \Add5~78\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X18_Y14_N56
\delay_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~61_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(18));

-- Location: LABCELL_X18_Y14_N57
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( delay_count(19) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~74\ = CARRY(( delay_count(19) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(19),
	cin => \Add5~62\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X18_Y14_N59
\delay_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~73_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(19));

-- Location: LABCELL_X18_Y13_N0
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( delay_count(20) ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~70\ = CARRY(( delay_count(20) ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(20),
	cin => \Add5~74\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X18_Y13_N2
\delay_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~69_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(20));

-- Location: LABCELL_X18_Y13_N3
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( delay_count(21) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~66\ = CARRY(( delay_count(21) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(21),
	cin => \Add5~70\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X18_Y13_N5
\delay_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~65_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(21));

-- Location: LABCELL_X18_Y13_N6
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( delay_count(22) ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~114\ = CARRY(( delay_count(22) ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(22),
	cin => \Add5~66\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X18_Y13_N8
\delay_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~113_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(22));

-- Location: LABCELL_X18_Y13_N9
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( delay_count(23) ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~110\ = CARRY(( delay_count(23) ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(23),
	cin => \Add5~114\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X18_Y13_N11
\delay_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~109_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(23));

-- Location: LABCELL_X18_Y13_N12
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( delay_count(24) ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~106\ = CARRY(( delay_count(24) ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(24),
	cin => \Add5~110\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X18_Y13_N14
\delay_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~105_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(24));

-- Location: LABCELL_X18_Y13_N15
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( delay_count(25) ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~90\ = CARRY(( delay_count(25) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(25),
	cin => \Add5~106\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X18_Y13_N17
\delay_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~89_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(25));

-- Location: LABCELL_X18_Y13_N18
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( delay_count(26) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~102\ = CARRY(( delay_count(26) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(26),
	cin => \Add5~90\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X18_Y13_N20
\delay_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~101_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(26));

-- Location: LABCELL_X18_Y13_N21
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( delay_count(27) ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~98\ = CARRY(( delay_count(27) ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(27),
	cin => \Add5~102\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X18_Y13_N23
\delay_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~97_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(27));

-- Location: LABCELL_X18_Y13_N24
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( delay_count(28) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~94\ = CARRY(( delay_count(28) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(28),
	cin => \Add5~98\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X18_Y13_N26
\delay_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~93_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(28));

-- Location: LABCELL_X18_Y13_N27
\Add5~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( delay_count(29) ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~126\ = CARRY(( delay_count(29) ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(29),
	cin => \Add5~94\,
	sumout => \Add5~125_sumout\,
	cout => \Add5~126\);

-- Location: FF_X18_Y13_N29
\delay_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~125_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(29));

-- Location: LABCELL_X18_Y13_N30
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( delay_count(30) ) + ( GND ) + ( \Add5~126\ ))
-- \Add5~122\ = CARRY(( delay_count(30) ) + ( GND ) + ( \Add5~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(30),
	cin => \Add5~126\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X18_Y13_N32
\delay_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~121_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(30));

-- Location: LABCELL_X18_Y13_N33
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( delay_count(31) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay_count(31),
	cin => \Add5~122\,
	sumout => \Add5~117_sumout\);

-- Location: FF_X18_Y13_N35
\delay_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~117_sumout\,
	sclr => \LessThan1~39_combout\,
	ena => \delay_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_count(31));

-- Location: LABCELL_X18_Y13_N48
\LessThan1~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~38_combout\ = ( delay_count(29) & ( delay_count(31) & ( (!\Mult0~668\) # ((\Mult0~667\ & !delay_count(30))) ) ) ) # ( !delay_count(29) & ( delay_count(31) & ( (!\Mult0~668\) # ((!\Mult0~666\ & (\Mult0~667\ & !delay_count(30))) # (\Mult0~666\ & 
-- ((!delay_count(30)) # (\Mult0~667\)))) ) ) ) # ( delay_count(29) & ( !delay_count(31) & ( (!\Mult0~668\ & (\Mult0~667\ & !delay_count(30))) ) ) ) # ( !delay_count(29) & ( !delay_count(31) & ( (!\Mult0~668\ & ((!\Mult0~666\ & (\Mult0~667\ & 
-- !delay_count(30))) # (\Mult0~666\ & ((!delay_count(30)) # (\Mult0~667\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000100000011000000000011011111110011011100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~666\,
	datab => \ALT_INV_Mult0~668\,
	datac => \ALT_INV_Mult0~667\,
	datad => ALT_INV_delay_count(30),
	datae => ALT_INV_delay_count(29),
	dataf => ALT_INV_delay_count(31),
	combout => \LessThan1~38_combout\);

-- Location: LABCELL_X17_Y13_N12
\LessThan1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~28_combout\ = ( delay_count(27) & ( delay_count(28) & ( (\Mult0~664\ & (\Mult0~665\ & (!\Mult0~663\ $ (delay_count(26))))) ) ) ) # ( !delay_count(27) & ( delay_count(28) & ( (!\Mult0~664\ & (\Mult0~665\ & (!\Mult0~663\ $ (delay_count(26))))) ) 
-- ) ) # ( delay_count(27) & ( !delay_count(28) & ( (\Mult0~664\ & (!\Mult0~665\ & (!\Mult0~663\ $ (delay_count(26))))) ) ) ) # ( !delay_count(27) & ( !delay_count(28) & ( (!\Mult0~664\ & (!\Mult0~665\ & (!\Mult0~663\ $ (delay_count(26))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~664\,
	datab => \ALT_INV_Mult0~665\,
	datac => \ALT_INV_Mult0~663\,
	datad => ALT_INV_delay_count(26),
	datae => ALT_INV_delay_count(27),
	dataf => ALT_INV_delay_count(28),
	combout => \LessThan1~28_combout\);

-- Location: LABCELL_X17_Y13_N6
\LessThan1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~34_combout\ = ( delay_count(27) & ( delay_count(28) & ( (\Mult0~664\ & (\Mult0~665\ & (\Mult0~663\ & !delay_count(26)))) ) ) ) # ( !delay_count(27) & ( delay_count(28) & ( (\Mult0~665\ & (((\Mult0~663\ & !delay_count(26))) # (\Mult0~664\))) ) ) 
-- ) # ( delay_count(27) & ( !delay_count(28) & ( ((\Mult0~664\ & (\Mult0~663\ & !delay_count(26)))) # (\Mult0~665\) ) ) ) # ( !delay_count(27) & ( !delay_count(28) & ( (((\Mult0~663\ & !delay_count(26))) # (\Mult0~665\)) # (\Mult0~664\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111001101110011001100010011000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~664\,
	datab => \ALT_INV_Mult0~665\,
	datac => \ALT_INV_Mult0~663\,
	datad => ALT_INV_delay_count(26),
	datae => ALT_INV_delay_count(27),
	dataf => ALT_INV_delay_count(28),
	combout => \LessThan1~34_combout\);

-- Location: LABCELL_X17_Y13_N48
\LessThan1~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~35_combout\ = ( \Mult0~662\ & ( !\LessThan1~34_combout\ & ( (!\LessThan1~28_combout\) # ((delay_count(25) & ((!\Mult0~661\) # (delay_count(24))))) ) ) ) # ( !\Mult0~662\ & ( !\LessThan1~34_combout\ & ( (!\Mult0~661\) # 
-- (((!\LessThan1~28_combout\) # (delay_count(25))) # (delay_count(24))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111110000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~661\,
	datab => ALT_INV_delay_count(24),
	datac => ALT_INV_delay_count(25),
	datad => \ALT_INV_LessThan1~28_combout\,
	datae => \ALT_INV_Mult0~662\,
	dataf => \ALT_INV_LessThan1~34_combout\,
	combout => \LessThan1~35_combout\);

-- Location: LABCELL_X17_Y13_N33
\LessThan1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~29_combout\ = ( delay_count(24) & ( !\Mult0~661\ ) ) # ( !delay_count(24) & ( \Mult0~661\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~661\,
	dataf => ALT_INV_delay_count(24),
	combout => \LessThan1~29_combout\);

-- Location: LABCELL_X17_Y13_N24
\LessThan1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~33_combout\ = ( delay_count(25) & ( \LessThan1~28_combout\ & ( (\Mult0~662\ & !\LessThan1~29_combout\) ) ) ) # ( !delay_count(25) & ( \LessThan1~28_combout\ & ( (!\Mult0~662\ & !\LessThan1~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~662\,
	datac => \ALT_INV_LessThan1~29_combout\,
	datae => ALT_INV_delay_count(25),
	dataf => \ALT_INV_LessThan1~28_combout\,
	combout => \LessThan1~33_combout\);

-- Location: LABCELL_X17_Y13_N54
\LessThan1~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~36_combout\ = ( delay_count(22) & ( \LessThan1~33_combout\ & ( (\LessThan1~35_combout\ & ((!\Mult0~660\) # (delay_count(23)))) ) ) ) # ( !delay_count(22) & ( \LessThan1~33_combout\ & ( (\LessThan1~35_combout\ & ((!\Mult0~660\ & ((!\Mult0~659\) 
-- # (delay_count(23)))) # (\Mult0~660\ & (!\Mult0~659\ & delay_count(23))))) ) ) ) # ( delay_count(22) & ( !\LessThan1~33_combout\ & ( \LessThan1~35_combout\ ) ) ) # ( !delay_count(22) & ( !\LessThan1~33_combout\ & ( \LessThan1~35_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000100011100000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~660\,
	datab => \ALT_INV_Mult0~659\,
	datac => ALT_INV_delay_count(23),
	datad => \ALT_INV_LessThan1~35_combout\,
	datae => ALT_INV_delay_count(22),
	dataf => \ALT_INV_LessThan1~33_combout\,
	combout => \LessThan1~36_combout\);

-- Location: LABCELL_X17_Y13_N0
\LessThan1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = ( delay_count(23) & ( !\Mult0~660\ ) ) # ( !delay_count(23) & ( \Mult0~660\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~660\,
	datae => ALT_INV_delay_count(23),
	combout => \LessThan1~30_combout\);

-- Location: LABCELL_X17_Y13_N30
\LessThan1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~31_combout\ = !\Mult0~659\ $ (!delay_count(22))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~659\,
	datac => ALT_INV_delay_count(22),
	combout => \LessThan1~31_combout\);

-- Location: LABCELL_X17_Y13_N21
\LessThan1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~32_combout\ = ( delay_count(25) & ( !\LessThan1~31_combout\ & ( (!\LessThan1~29_combout\ & (\Mult0~662\ & (\LessThan1~28_combout\ & !\LessThan1~30_combout\))) ) ) ) # ( !delay_count(25) & ( !\LessThan1~31_combout\ & ( (!\LessThan1~29_combout\ & 
-- (!\Mult0~662\ & (\LessThan1~28_combout\ & !\LessThan1~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~29_combout\,
	datab => \ALT_INV_Mult0~662\,
	datac => \ALT_INV_LessThan1~28_combout\,
	datad => \ALT_INV_LessThan1~30_combout\,
	datae => ALT_INV_delay_count(25),
	dataf => \ALT_INV_LessThan1~31_combout\,
	combout => \LessThan1~32_combout\);

-- Location: LABCELL_X18_Y13_N42
\LessThan1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~37_combout\ = ( delay_count(29) & ( delay_count(31) & ( (\Mult0~666\ & (\Mult0~668\ & (!\Mult0~667\ $ (delay_count(30))))) ) ) ) # ( !delay_count(29) & ( delay_count(31) & ( (!\Mult0~666\ & (\Mult0~668\ & (!\Mult0~667\ $ (delay_count(30))))) ) 
-- ) ) # ( delay_count(29) & ( !delay_count(31) & ( (\Mult0~666\ & (!\Mult0~668\ & (!\Mult0~667\ $ (delay_count(30))))) ) ) ) # ( !delay_count(29) & ( !delay_count(31) & ( (!\Mult0~666\ & (!\Mult0~668\ & (!\Mult0~667\ $ (delay_count(30))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~666\,
	datab => \ALT_INV_Mult0~668\,
	datac => \ALT_INV_Mult0~667\,
	datad => ALT_INV_delay_count(30),
	datae => ALT_INV_delay_count(29),
	dataf => ALT_INV_delay_count(31),
	combout => \LessThan1~37_combout\);

-- Location: LABCELL_X17_Y13_N36
\LessThan1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = ( delay_count(20) & ( delay_count(19) & ( (\Mult0~656\ & (\Mult0~657\ & (!delay_count(21) $ (\Mult0~658\)))) ) ) ) # ( !delay_count(20) & ( delay_count(19) & ( (\Mult0~656\ & (!\Mult0~657\ & (!delay_count(21) $ (\Mult0~658\)))) ) 
-- ) ) # ( delay_count(20) & ( !delay_count(19) & ( (!\Mult0~656\ & (\Mult0~657\ & (!delay_count(21) $ (\Mult0~658\)))) ) ) ) # ( !delay_count(20) & ( !delay_count(19) & ( (!\Mult0~656\ & (!\Mult0~657\ & (!delay_count(21) $ (\Mult0~658\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(21),
	datab => \ALT_INV_Mult0~656\,
	datac => \ALT_INV_Mult0~657\,
	datad => \ALT_INV_Mult0~658\,
	datae => ALT_INV_delay_count(20),
	dataf => ALT_INV_delay_count(19),
	combout => \LessThan1~18_combout\);

-- Location: MLABCELL_X19_Y13_N0
\LessThan1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~19_combout\ = !\Mult0~25\ $ (!delay_count(17))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~25\,
	datad => ALT_INV_delay_count(17),
	combout => \LessThan1~19_combout\);

-- Location: MLABCELL_X19_Y13_N45
\LessThan1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~24_combout\ = ( delay_count(18) & ( (\Mult0~mult_hlmac_resulta\ & (\LessThan1~18_combout\ & !\LessThan1~19_combout\)) ) ) # ( !delay_count(18) & ( (!\Mult0~mult_hlmac_resulta\ & (\LessThan1~18_combout\ & !\LessThan1~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~mult_hlmac_resulta\,
	datac => \ALT_INV_LessThan1~18_combout\,
	datad => \ALT_INV_LessThan1~19_combout\,
	dataf => ALT_INV_delay_count(18),
	combout => \LessThan1~24_combout\);

-- Location: LABCELL_X17_Y13_N45
\LessThan1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~25_combout\ = ( delay_count(20) & ( delay_count(19) & ( (\Mult0~658\ & !delay_count(21)) ) ) ) # ( !delay_count(20) & ( delay_count(19) & ( (!\Mult0~657\ & (\Mult0~658\ & !delay_count(21))) # (\Mult0~657\ & ((!delay_count(21)) # (\Mult0~658\))) 
-- ) ) ) # ( delay_count(20) & ( !delay_count(19) & ( (!\Mult0~658\ & (\Mult0~657\ & (\Mult0~656\ & !delay_count(21)))) # (\Mult0~658\ & ((!delay_count(21)) # ((\Mult0~657\ & \Mult0~656\)))) ) ) ) # ( !delay_count(20) & ( !delay_count(19) & ( (!\Mult0~658\ & 
-- (!delay_count(21) & ((\Mult0~656\) # (\Mult0~657\)))) # (\Mult0~658\ & (((!delay_count(21)) # (\Mult0~656\)) # (\Mult0~657\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111000111110000000101011111000001010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~657\,
	datab => \ALT_INV_Mult0~656\,
	datac => \ALT_INV_Mult0~658\,
	datad => ALT_INV_delay_count(21),
	datae => ALT_INV_delay_count(20),
	dataf => ALT_INV_delay_count(19),
	combout => \LessThan1~25_combout\);

-- Location: MLABCELL_X19_Y13_N6
\LessThan1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~26_combout\ = ( !\LessThan1~25_combout\ & ( \LessThan1~18_combout\ & ( (!\Mult0~mult_hlmac_resulta\ & ((!\Mult0~25\) # ((delay_count(18)) # (delay_count(17))))) # (\Mult0~mult_hlmac_resulta\ & (delay_count(18) & ((!\Mult0~25\) # 
-- (delay_count(17))))) ) ) ) # ( !\LessThan1~25_combout\ & ( !\LessThan1~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010001100111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~25\,
	datab => \ALT_INV_Mult0~mult_hlmac_resulta\,
	datac => ALT_INV_delay_count(17),
	datad => ALT_INV_delay_count(18),
	datae => \ALT_INV_LessThan1~25_combout\,
	dataf => \ALT_INV_LessThan1~18_combout\,
	combout => \LessThan1~26_combout\);

-- Location: MLABCELL_X19_Y13_N48
\LessThan1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~27_combout\ = ( \LessThan1~24_combout\ & ( \LessThan1~26_combout\ & ( (!\Mult0~24\ & (((!\Mult0~23\) # (delay_count(16))) # (delay_count(15)))) # (\Mult0~24\ & (delay_count(16) & ((!\Mult0~23\) # (delay_count(15))))) ) ) ) # ( 
-- !\LessThan1~24_combout\ & ( \LessThan1~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111101000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(15),
	datab => \ALT_INV_Mult0~23\,
	datac => \ALT_INV_Mult0~24\,
	datad => ALT_INV_delay_count(16),
	datae => \ALT_INV_LessThan1~24_combout\,
	dataf => \ALT_INV_LessThan1~26_combout\,
	combout => \LessThan1~27_combout\);

-- Location: LABCELL_X18_Y12_N6
\LessThan1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = ( delay_count(14) & ( delay_count(13) & ( (\Mult0~22\ & (\Mult0~21\ & (\Mult0~20\ & !delay_count(12)))) ) ) ) # ( !delay_count(14) & ( delay_count(13) & ( ((\Mult0~21\ & (\Mult0~20\ & !delay_count(12)))) # (\Mult0~22\) ) ) ) # ( 
-- delay_count(14) & ( !delay_count(13) & ( (\Mult0~22\ & (((\Mult0~20\ & !delay_count(12))) # (\Mult0~21\))) ) ) ) # ( !delay_count(14) & ( !delay_count(13) & ( (((\Mult0~20\ & !delay_count(12))) # (\Mult0~21\)) # (\Mult0~22\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111000101010001000101010111010101010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~22\,
	datab => \ALT_INV_Mult0~21\,
	datac => \ALT_INV_Mult0~20\,
	datad => ALT_INV_delay_count(12),
	datae => ALT_INV_delay_count(14),
	dataf => ALT_INV_delay_count(13),
	combout => \LessThan1~14_combout\);

-- Location: LABCELL_X18_Y12_N42
\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( delay_count(14) & ( delay_count(13) & ( (\Mult0~22\ & (\Mult0~21\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( !delay_count(14) & ( delay_count(13) & ( (!\Mult0~22\ & (\Mult0~21\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( 
-- delay_count(14) & ( !delay_count(13) & ( (\Mult0~22\ & (!\Mult0~21\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) ) # ( !delay_count(14) & ( !delay_count(13) & ( (!\Mult0~22\ & (!\Mult0~21\ & (!\Mult0~20\ $ (delay_count(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~22\,
	datab => \ALT_INV_Mult0~21\,
	datac => \ALT_INV_Mult0~20\,
	datad => ALT_INV_delay_count(12),
	datae => ALT_INV_delay_count(14),
	dataf => ALT_INV_delay_count(13),
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X18_Y12_N0
\LessThan1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = ( \Mult0~18\ & ( delay_count(10) & ( (!\LessThan1~14_combout\ & (((!\Mult0~19\) # (!\LessThan1~9_combout\)) # (delay_count(11)))) ) ) ) # ( !\Mult0~18\ & ( delay_count(10) & ( (!\LessThan1~14_combout\ & (((!\Mult0~19\) # 
-- (!\LessThan1~9_combout\)) # (delay_count(11)))) ) ) ) # ( \Mult0~18\ & ( !delay_count(10) & ( (!\LessThan1~14_combout\ & ((!\LessThan1~9_combout\) # ((delay_count(11) & !\Mult0~19\)))) ) ) ) # ( !\Mult0~18\ & ( !delay_count(10) & ( 
-- (!\LessThan1~14_combout\ & (((!\Mult0~19\) # (!\LessThan1~9_combout\)) # (delay_count(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011000100000011001100110001001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(11),
	datab => \ALT_INV_LessThan1~14_combout\,
	datac => \ALT_INV_Mult0~19\,
	datad => \ALT_INV_LessThan1~9_combout\,
	datae => \ALT_INV_Mult0~18\,
	dataf => ALT_INV_delay_count(10),
	combout => \LessThan1~15_combout\);

-- Location: LABCELL_X18_Y12_N36
\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( delay_count(11) & ( !\Mult0~19\ ) ) # ( !delay_count(11) & ( \Mult0~19\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~19\,
	dataf => ALT_INV_delay_count(11),
	combout => \LessThan1~10_combout\);

-- Location: LABCELL_X18_Y12_N39
\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( delay_count(10) & ( !\Mult0~18\ ) ) # ( !delay_count(10) & ( \Mult0~18\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~18\,
	dataf => ALT_INV_delay_count(10),
	combout => \LessThan1~11_combout\);

-- Location: LABCELL_X18_Y12_N30
\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( delay_count(8) & ( !\Mult0~16\ ) ) # ( !delay_count(8) & ( \Mult0~16\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~16\,
	dataf => ALT_INV_delay_count(8),
	combout => \LessThan1~12_combout\);

-- Location: LABCELL_X18_Y12_N48
\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( \Mult0~17\ & ( !\LessThan1~12_combout\ & ( (!\LessThan1~10_combout\ & (\LessThan1~9_combout\ & (delay_count(9) & !\LessThan1~11_combout\))) ) ) ) # ( !\Mult0~17\ & ( !\LessThan1~12_combout\ & ( (!\LessThan1~10_combout\ & 
-- (\LessThan1~9_combout\ & (!delay_count(9) & !\LessThan1~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~10_combout\,
	datab => \ALT_INV_LessThan1~9_combout\,
	datac => ALT_INV_delay_count(9),
	datad => \ALT_INV_LessThan1~11_combout\,
	datae => \ALT_INV_Mult0~17\,
	dataf => \ALT_INV_LessThan1~12_combout\,
	combout => \LessThan1~13_combout\);

-- Location: MLABCELL_X19_Y13_N3
\LessThan1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~21_combout\ = !\Mult0~23\ $ (!delay_count(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~23\,
	datad => ALT_INV_delay_count(15),
	combout => \LessThan1~21_combout\);

-- Location: MLABCELL_X19_Y13_N42
\LessThan1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = ( delay_count(16) & ( !\Mult0~24\ ) ) # ( !delay_count(16) & ( \Mult0~24\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~24\,
	dataf => ALT_INV_delay_count(16),
	combout => \LessThan1~20_combout\);

-- Location: MLABCELL_X19_Y13_N12
\LessThan1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~22_combout\ = ( !\LessThan1~19_combout\ & ( !\LessThan1~20_combout\ & ( (\LessThan1~18_combout\ & (!\LessThan1~21_combout\ & (!\Mult0~mult_hlmac_resulta\ $ (delay_count(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~18_combout\,
	datab => \ALT_INV_Mult0~mult_hlmac_resulta\,
	datac => \ALT_INV_LessThan1~21_combout\,
	datad => ALT_INV_delay_count(18),
	datae => \ALT_INV_LessThan1~19_combout\,
	dataf => \ALT_INV_LessThan1~20_combout\,
	combout => \LessThan1~22_combout\);

-- Location: LABCELL_X18_Y12_N15
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( delay_count(7) & ( (\Mult0~15\ & (\Mult0~14\ & !delay_count(6))) ) ) # ( !delay_count(7) & ( ((\Mult0~14\ & !delay_count(6))) # (\Mult0~15\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~15\,
	datab => \ALT_INV_Mult0~14\,
	datad => ALT_INV_delay_count(6),
	dataf => ALT_INV_delay_count(7),
	combout => \LessThan1~7_combout\);

-- Location: LABCELL_X18_Y12_N12
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( delay_count(7) & ( (\Mult0~15\ & (!\Mult0~14\ $ (delay_count(6)))) ) ) # ( !delay_count(7) & ( (!\Mult0~15\ & (!\Mult0~14\ $ (delay_count(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~15\,
	datab => \ALT_INV_Mult0~14\,
	datac => ALT_INV_delay_count(6),
	dataf => ALT_INV_delay_count(7),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X18_Y12_N24
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( delay_count(5) & ( delay_count(4) & ( !\LessThan1~7_combout\ ) ) ) # ( !delay_count(5) & ( delay_count(4) & ( (!\LessThan1~7_combout\ & ((!\Mult0~13\) # (!\LessThan1~0_combout\))) ) ) ) # ( delay_count(5) & ( !delay_count(4) & ( 
-- (!\LessThan1~7_combout\ & ((!\Mult0~13\) # ((!\Mult0~12\) # (!\LessThan1~0_combout\)))) ) ) ) # ( !delay_count(5) & ( !delay_count(4) & ( (!\LessThan1~7_combout\ & ((!\LessThan1~0_combout\) # ((!\Mult0~13\ & !\Mult0~12\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001100100011001100100010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~13\,
	datab => \ALT_INV_LessThan1~7_combout\,
	datac => \ALT_INV_Mult0~12\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => ALT_INV_delay_count(5),
	dataf => ALT_INV_delay_count(4),
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X18_Y12_N33
\LessThan1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = ( !delay_count(8) & ( \Mult0~16\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~16\,
	dataf => ALT_INV_delay_count(8),
	combout => \LessThan1~16_combout\);

-- Location: LABCELL_X18_Y12_N18
\LessThan1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = ( \Mult0~17\ & ( \LessThan1~16_combout\ & ( (!\LessThan1~11_combout\ & (!\LessThan1~10_combout\ & \LessThan1~9_combout\)) ) ) ) # ( !\Mult0~17\ & ( \LessThan1~16_combout\ & ( (!delay_count(9) & (!\LessThan1~11_combout\ & 
-- (!\LessThan1~10_combout\ & \LessThan1~9_combout\))) ) ) ) # ( \Mult0~17\ & ( !\LessThan1~16_combout\ & ( (!delay_count(9) & (!\LessThan1~11_combout\ & (!\LessThan1~10_combout\ & \LessThan1~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000100000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(9),
	datab => \ALT_INV_LessThan1~11_combout\,
	datac => \ALT_INV_LessThan1~10_combout\,
	datad => \ALT_INV_LessThan1~9_combout\,
	datae => \ALT_INV_Mult0~17\,
	dataf => \ALT_INV_LessThan1~16_combout\,
	combout => \LessThan1~17_combout\);

-- Location: MLABCELL_X19_Y13_N27
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( \Mult0~10\ & ( delay_count(2) & ( (!delay_count(3) & \Mult0~11\) ) ) ) # ( !\Mult0~10\ & ( delay_count(2) & ( (!delay_count(3) & \Mult0~11\) ) ) ) # ( \Mult0~10\ & ( !delay_count(2) & ( (!delay_count(3)) # (\Mult0~11\) ) ) ) # ( 
-- !\Mult0~10\ & ( !delay_count(2) & ( (!delay_count(3) & \Mult0~11\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_count(3),
	datac => \ALT_INV_Mult0~11\,
	datae => \ALT_INV_Mult0~10\,
	dataf => ALT_INV_delay_count(2),
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X18_Y12_N54
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !\Mult0~12\ & ( delay_count(4) ) ) # ( \Mult0~12\ & ( !delay_count(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Mult0~12\,
	dataf => ALT_INV_delay_count(4),
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X17_Y11_N24
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !delay_count(1) & ( delay_count(0) & ( \Mult0~9\ ) ) ) # ( delay_count(1) & ( !delay_count(0) & ( (\Mult0~9\ & \Mult0~8_resulta\) ) ) ) # ( !delay_count(1) & ( !delay_count(0) & ( (\Mult0~8_resulta\) # (\Mult0~9\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~9\,
	datac => \ALT_INV_Mult0~8_resulta\,
	datae => ALT_INV_delay_count(1),
	dataf => ALT_INV_delay_count(0),
	combout => \LessThan1~3_combout\);

-- Location: MLABCELL_X19_Y13_N54
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( \Mult0~10\ & ( delay_count(2) & ( !\Mult0~11\ $ (delay_count(3)) ) ) ) # ( !\Mult0~10\ & ( !delay_count(2) & ( !\Mult0~11\ $ (delay_count(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~11\,
	datac => ALT_INV_delay_count(3),
	datae => \ALT_INV_Mult0~10\,
	dataf => ALT_INV_delay_count(2),
	combout => \LessThan1~4_combout\);

-- Location: MLABCELL_X19_Y13_N39
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !\Mult0~13\ & ( delay_count(5) ) ) # ( \Mult0~13\ & ( !delay_count(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Mult0~13\,
	dataf => ALT_INV_delay_count(5),
	combout => \LessThan1~1_combout\);

-- Location: MLABCELL_X19_Y13_N18
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( \LessThan1~4_combout\ & ( !\LessThan1~1_combout\ & ( (\LessThan1~0_combout\ & (!\LessThan1~2_combout\ & ((\LessThan1~3_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( !\LessThan1~4_combout\ & ( !\LessThan1~1_combout\ & ( 
-- (\LessThan1~5_combout\ & (\LessThan1~0_combout\ & !\LessThan1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~5_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_LessThan1~2_combout\,
	datad => \ALT_INV_LessThan1~3_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X18_Y13_N39
\LessThan1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~23_combout\ = ( \LessThan1~17_combout\ & ( \LessThan1~6_combout\ & ( \LessThan1~22_combout\ ) ) ) # ( !\LessThan1~17_combout\ & ( \LessThan1~6_combout\ & ( (\LessThan1~22_combout\ & ((!\LessThan1~15_combout\) # (\LessThan1~13_combout\))) ) ) ) 
-- # ( \LessThan1~17_combout\ & ( !\LessThan1~6_combout\ & ( \LessThan1~22_combout\ ) ) ) # ( !\LessThan1~17_combout\ & ( !\LessThan1~6_combout\ & ( (\LessThan1~22_combout\ & ((!\LessThan1~15_combout\) # ((\LessThan1~13_combout\ & !\LessThan1~8_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001010000011110000111100001011000010110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~15_combout\,
	datab => \ALT_INV_LessThan1~13_combout\,
	datac => \ALT_INV_LessThan1~22_combout\,
	datad => \ALT_INV_LessThan1~8_combout\,
	datae => \ALT_INV_LessThan1~17_combout\,
	dataf => \ALT_INV_LessThan1~6_combout\,
	combout => \LessThan1~23_combout\);

-- Location: LABCELL_X18_Y13_N54
\LessThan1~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~39_combout\ = ( \LessThan1~27_combout\ & ( \LessThan1~23_combout\ & ( (!\LessThan1~38_combout\ & ((!\LessThan1~37_combout\) # ((\LessThan1~36_combout\ & !\LessThan1~32_combout\)))) ) ) ) # ( !\LessThan1~27_combout\ & ( \LessThan1~23_combout\ & 
-- ( (!\LessThan1~38_combout\ & ((!\LessThan1~37_combout\) # ((\LessThan1~36_combout\ & !\LessThan1~32_combout\)))) ) ) ) # ( \LessThan1~27_combout\ & ( !\LessThan1~23_combout\ & ( (!\LessThan1~38_combout\ & ((!\LessThan1~37_combout\) # 
-- (\LessThan1~36_combout\))) ) ) ) # ( !\LessThan1~27_combout\ & ( !\LessThan1~23_combout\ & ( (!\LessThan1~38_combout\ & ((!\LessThan1~37_combout\) # ((\LessThan1~36_combout\ & !\LessThan1~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100000101010100010001010101010001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~38_combout\,
	datab => \ALT_INV_LessThan1~36_combout\,
	datac => \ALT_INV_LessThan1~32_combout\,
	datad => \ALT_INV_LessThan1~37_combout\,
	datae => \ALT_INV_LessThan1~27_combout\,
	dataf => \ALT_INV_LessThan1~23_combout\,
	combout => \LessThan1~39_combout\);

-- Location: LABCELL_X18_Y15_N48
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.calculate_duty_state~q\ & ( \state.wait_state~q\ & ( !\LessThan1~39_combout\ ) ) ) # ( !\state.calculate_duty_state~q\ & ( \state.wait_state~q\ & ( (\LessThan0~6_combout\ & !\LessThan1~39_combout\) ) ) ) # ( 
-- \state.calculate_duty_state~q\ & ( !\state.wait_state~q\ ) ) # ( !\state.calculate_duty_state~q\ & ( !\state.wait_state~q\ & ( \LessThan0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~6_combout\,
	datac => \ALT_INV_LessThan1~39_combout\,
	datae => \ALT_INV_state.calculate_duty_state~q\,
	dataf => \ALT_INV_state.wait_state~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X18_Y15_N50
\state.calculate_duty_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_state.calculate_duty_state~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.calculate_duty_state~q\);

-- Location: MLABCELL_X19_Y18_N51
\duty_count[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_count[31]~0_combout\ = ( !\state.calculate_duty_state~q\ & ( (\ena~input_o\ & \reset_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ena~input_o\,
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.calculate_duty_state~q\,
	combout => \duty_count[31]~0_combout\);

-- Location: FF_X18_Y16_N14
\duty_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~125_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(4));

-- Location: LABCELL_X18_Y16_N15
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( duty_count(5) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~74\ = CARRY(( duty_count(5) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(5),
	cin => \Add2~126\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X18_Y16_N17
\duty_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(5));

-- Location: LABCELL_X18_Y16_N18
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( duty_count(6) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~122\ = CARRY(( duty_count(6) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(6),
	cin => \Add2~74\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X18_Y16_N20
\duty_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(6));

-- Location: LABCELL_X18_Y16_N21
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( duty_count(7) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( duty_count(7) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(7),
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X18_Y16_N23
\duty_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(7));

-- Location: LABCELL_X18_Y16_N24
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( duty_count(8) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~114\ = CARRY(( duty_count(8) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(8),
	cin => \Add2~118\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X18_Y16_N26
\duty_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(8));

-- Location: LABCELL_X18_Y16_N27
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( duty_count(9) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( duty_count(9) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(9),
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X18_Y16_N29
\duty_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(9));

-- Location: LABCELL_X17_Y15_N24
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !duty_count(9) & ( (!duty_count(6) & (!duty_count(4) & (!duty_count(8) & !duty_count(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(6),
	datab => ALT_INV_duty_count(4),
	datac => ALT_INV_duty_count(8),
	datad => ALT_INV_duty_count(7),
	dataf => ALT_INV_duty_count(9),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X18_Y16_N30
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( duty_count(10) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~78\ = CARRY(( duty_count(10) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(10),
	cin => \Add2~110\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X18_Y16_N31
\duty_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(10));

-- Location: LABCELL_X18_Y16_N33
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( duty_count(11) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~106\ = CARRY(( duty_count(11) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(11),
	cin => \Add2~78\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X18_Y16_N34
\duty_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(11));

-- Location: LABCELL_X18_Y16_N36
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( duty_count(12) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~86\ = CARRY(( duty_count(12) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(12),
	cin => \Add2~106\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X18_Y16_N37
\duty_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(12));

-- Location: LABCELL_X18_Y16_N39
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( duty_count(13) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~22\ = CARRY(( duty_count(13) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(13),
	cin => \Add2~86\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X18_Y16_N41
\duty_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(13));

-- Location: LABCELL_X18_Y16_N42
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( duty_count(14) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~50\ = CARRY(( duty_count(14) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(14),
	cin => \Add2~22\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X18_Y16_N44
\duty_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(14));

-- Location: LABCELL_X18_Y16_N45
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( duty_count(15) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( duty_count(15) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(15),
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X18_Y16_N46
\duty_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(15));

-- Location: LABCELL_X18_Y16_N48
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( duty_count(16) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( duty_count(16) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(16),
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X18_Y16_N49
\duty_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(16));

-- Location: LABCELL_X18_Y16_N51
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( duty_count(17) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( duty_count(17) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(17),
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X18_Y16_N52
\duty_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(17));

-- Location: LABCELL_X18_Y16_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( duty_count(18) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( duty_count(18) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(18),
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X18_Y16_N55
\duty_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(18));

-- Location: LABCELL_X18_Y16_N57
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( duty_count(19) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( duty_count(19) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(19),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X18_Y16_N58
\duty_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(19));

-- Location: LABCELL_X18_Y15_N0
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( duty_count(20) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~18\ = CARRY(( duty_count(20) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(20),
	cin => \Add2~30\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X18_Y15_N2
\duty_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(20));

-- Location: LABCELL_X18_Y15_N3
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( duty_count(21) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~70\ = CARRY(( duty_count(21) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(21),
	cin => \Add2~18\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X18_Y15_N5
\duty_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(21));

-- Location: LABCELL_X18_Y15_N6
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( duty_count(22) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( duty_count(22) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(22),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X18_Y15_N7
\duty_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(22));

-- Location: LABCELL_X18_Y15_N9
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( duty_count(23) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( duty_count(23) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(23),
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X18_Y15_N11
\duty_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(23));

-- Location: LABCELL_X18_Y15_N12
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( duty_count(24) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( duty_count(24) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(24),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X18_Y15_N13
\duty_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(24));

-- Location: LABCELL_X18_Y15_N15
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( duty_count(25) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( duty_count(25) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(25),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X18_Y15_N17
\duty_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(25));

-- Location: LABCELL_X18_Y15_N18
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( duty_count(26) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~82\ = CARRY(( duty_count(26) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(26),
	cin => \Add2~54\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X18_Y15_N19
\duty_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(26));

-- Location: MLABCELL_X19_Y16_N39
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !duty_count(11) & ( (!duty_count(3)) # ((!duty_count(2) & (!duty_count(1) & !duty_count(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100000000000000000011101100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(2),
	datab => ALT_INV_duty_count(3),
	datac => ALT_INV_duty_count(1),
	datad => ALT_INV_duty_count(0),
	datae => ALT_INV_duty_count(11),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X18_Y15_N21
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( duty_count(27) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~102\ = CARRY(( duty_count(27) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(27),
	cin => \Add2~82\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X18_Y15_N23
\duty_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(27));

-- Location: LABCELL_X18_Y15_N24
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( duty_count(28) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( duty_count(28) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(28),
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X18_Y15_N26
\duty_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(28));

-- Location: LABCELL_X18_Y15_N27
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( duty_count(29) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( duty_count(29) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(29),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X18_Y15_N29
\duty_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(29));

-- Location: LABCELL_X18_Y15_N30
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( duty_count(30) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( duty_count(30) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(30),
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X18_Y15_N32
\duty_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(30));

-- Location: LABCELL_X18_Y15_N36
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !duty_count(30) & ( (!duty_count(27) & (!duty_count(12) & (!duty_count(28) & !duty_count(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(27),
	datab => ALT_INV_duty_count(12),
	datac => ALT_INV_duty_count(28),
	datad => ALT_INV_duty_count(29),
	dataf => ALT_INV_duty_count(30),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X17_Y15_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !duty_count(5) & ( !duty_count(10) & ( (\LessThan0~4_combout\ & (!duty_count(26) & (\LessThan0~3_combout\ & \LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => ALT_INV_duty_count(26),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => ALT_INV_duty_count(5),
	dataf => ALT_INV_duty_count(10),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X18_Y15_N42
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !duty_count(25) & ( (!duty_count(24) & (!duty_count(23) & (!duty_count(21) & !duty_count(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(24),
	datab => ALT_INV_duty_count(23),
	datac => ALT_INV_duty_count(21),
	datad => ALT_INV_duty_count(22),
	dataf => ALT_INV_duty_count(25),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X18_Y15_N33
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( duty_count(31) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(31),
	cin => \Add2~90\,
	sumout => \Add2~25_sumout\);

-- Location: FF_X18_Y15_N35
\duty_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(31));

-- Location: LABCELL_X18_Y20_N12
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !duty_count(14) & ( !duty_count(17) & ( (!duty_count(15) & (!duty_count(18) & (!duty_count(16) & !duty_count(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(15),
	datab => ALT_INV_duty_count(18),
	datac => ALT_INV_duty_count(16),
	datad => ALT_INV_duty_count(19),
	datae => ALT_INV_duty_count(14),
	dataf => ALT_INV_duty_count(17),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X18_Y15_N54
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( duty_count(20) & ( \LessThan0~0_combout\ & ( !duty_count(31) ) ) ) # ( !duty_count(20) & ( \LessThan0~0_combout\ & ( (!duty_count(31) & ((!\LessThan0~5_combout\) # ((!\LessThan0~1_combout\) # (duty_count(13))))) ) ) ) # ( 
-- duty_count(20) & ( !\LessThan0~0_combout\ & ( !duty_count(31) ) ) ) # ( !duty_count(20) & ( !\LessThan0~0_combout\ & ( !duty_count(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_duty_count(31),
	datad => ALT_INV_duty_count(13),
	datae => ALT_INV_duty_count(20),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X18_Y16_N2
\duty_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(0));

-- Location: LABCELL_X18_Y16_N3
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( duty_count(1) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( duty_count(1) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(1),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X18_Y16_N5
\duty_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(1));

-- Location: LABCELL_X18_Y16_N6
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( duty_count(2) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( duty_count(2) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_duty_count(2),
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X18_Y16_N8
\duty_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(2));

-- Location: FF_X18_Y16_N11
\duty_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \LessThan0~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_count(3));

-- Location: LABCELL_X17_Y16_N18
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( !duty_count(2) & ( (!duty_count(3) & (!duty_count(0) & !duty_count(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(3),
	datac => ALT_INV_duty_count(0),
	datad => ALT_INV_duty_count(1),
	dataf => ALT_INV_duty_count(2),
	combout => \Decoder0~0_combout\);

-- Location: LABCELL_X17_Y15_N54
\i[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i[9]~0_combout\ = ( \state.go_state~q\ & ( (\ena~input_o\ & \reset_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state.go_state~q\,
	combout => \i[9]~0_combout\);

-- Location: FF_X17_Y17_N17
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LABCELL_X17_Y17_N0
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( i(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~14\ = CARRY(( i(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i(0),
	cin => GND,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X17_Y17_N2
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LABCELL_X17_Y17_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( i(1) ) + ( \direction~q\ ) + ( \Add3~14\ ))
-- \Add3~6\ = CARRY(( i(1) ) + ( \direction~q\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~q\,
	datad => ALT_INV_i(1),
	cin => \Add3~14\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X17_Y17_N5
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LABCELL_X17_Y17_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( i(2) ) + ( \direction~q\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( i(2) ) + ( \direction~q\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(2),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X17_Y17_N8
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LABCELL_X17_Y17_N9
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( i(3) ) + ( \direction~q\ ) + ( \Add3~10\ ))
-- \Add3~34\ = CARRY(( i(3) ) + ( \direction~q\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(3),
	cin => \Add3~10\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X17_Y17_N11
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LABCELL_X17_Y17_N12
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( i(4) ) + ( \direction~q\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( i(4) ) + ( \direction~q\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(4),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X17_Y17_N14
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LABCELL_X17_Y17_N15
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( i(5) ) + ( \direction~q\ ) + ( \Add3~38\ ))
-- \Add3~18\ = CARRY(( i(5) ) + ( \direction~q\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(5),
	cin => \Add3~38\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X17_Y17_N26
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LABCELL_X17_Y17_N18
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( i(6) ) + ( \direction~q\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( i(6) ) + ( \direction~q\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(6),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X17_Y17_N20
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LABCELL_X17_Y17_N21
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( i(7) ) + ( \direction~q\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( i(7) ) + ( \direction~q\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(7),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X17_Y17_N23
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LABCELL_X17_Y17_N24
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( i(8) ) + ( \direction~q\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( i(8) ) + ( \direction~q\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(8),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X17_Y15_N21
\direction~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~2_combout\ = ( !\Add3~21_sumout\ & ( (!\Add3~17_sumout\ & (!\Add3~29_sumout\ & !\Add3~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~17_sumout\,
	datab => \ALT_INV_Add3~29_sumout\,
	datac => \ALT_INV_Add3~25_sumout\,
	datae => \ALT_INV_Add3~21_sumout\,
	combout => \direction~2_combout\);

-- Location: LABCELL_X17_Y15_N6
\direction~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~1_combout\ = ( !\Add3~5_sumout\ & ( (\state.go_state~q\ & (\ena~input_o\ & (\reset_n~input_o\ & !\Add3~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.go_state~q\,
	datab => \ALT_INV_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \direction~1_combout\);

-- Location: LABCELL_X17_Y15_N9
\direction~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = ( \Add3~33_sumout\ & ( !\Add3~13_sumout\ ) ) # ( !\Add3~33_sumout\ & ( \Add3~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~13_sumout\,
	dataf => \ALT_INV_Add3~33_sumout\,
	combout => \direction~0_combout\);

-- Location: LABCELL_X17_Y15_N48
\direction~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direction~3_combout\ = ( \direction~q\ & ( \direction~0_combout\ ) ) # ( \direction~q\ & ( !\direction~0_combout\ & ( (!\direction~2_combout\) # (((!\direction~1_combout\) # (\Add3~37_sumout\)) # (\Add3~1_sumout\)) ) ) ) # ( !\direction~q\ & ( 
-- !\direction~0_combout\ & ( (\direction~2_combout\ & (!\Add3~1_sumout\ & (!\Add3~37_sumout\ & \direction~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111111011111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~2_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~37_sumout\,
	datad => \ALT_INV_direction~1_combout\,
	datae => \ALT_INV_direction~q\,
	dataf => \ALT_INV_direction~0_combout\,
	combout => \direction~3_combout\);

-- Location: FF_X17_Y15_N50
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \direction~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: LABCELL_X17_Y17_N27
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( i(9) ) + ( \direction~q\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~q\,
	datad => ALT_INV_i(9),
	cin => \Add3~30\,
	sumout => \Add3~1_sumout\);

-- Location: FF_X17_Y17_N29
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	ena => \i[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LABCELL_X17_Y17_N30
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !i(0) $ (!duty_count(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~14\ = CARRY(( !i(0) $ (!duty_count(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~15\ = SHARE((!duty_count(0)) # (i(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_i(0),
	datad => ALT_INV_duty_count(0),
	cin => GND,
	sharein => GND,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X17_Y17_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !duty_count(1) $ (i(1)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~6\ = CARRY(( !duty_count(1) $ (i(1)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~7\ = SHARE((!duty_count(1) & i(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_duty_count(1),
	datad => ALT_INV_i(1),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X17_Y17_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !i(2) $ (duty_count(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !i(2) $ (duty_count(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((i(2) & !duty_count(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_i(2),
	datac => ALT_INV_duty_count(2),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X17_Y17_N39
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !i(3) $ (duty_count(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~34\ = CARRY(( !i(3) $ (duty_count(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~35\ = SHARE((i(3) & !duty_count(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_i(3),
	datad => ALT_INV_duty_count(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LABCELL_X17_Y17_N42
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !i(4) $ (duty_count(4)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !i(4) $ (duty_count(4)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((i(4) & !duty_count(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_i(4),
	datad => ALT_INV_duty_count(4),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: LABCELL_X17_Y17_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !duty_count(5) $ (i(5)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~18\ = CARRY(( !duty_count(5) $ (i(5)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~19\ = SHARE((!duty_count(5) & i(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(5),
	datac => ALT_INV_i(5),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X17_Y17_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !duty_count(6) $ (i(6)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !duty_count(6) $ (i(6)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((!duty_count(6) & i(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(6),
	datac => ALT_INV_i(6),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X17_Y17_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !i(7) $ (duty_count(7)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !i(7) $ (duty_count(7)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((i(7) & !duty_count(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_i(7),
	datad => ALT_INV_duty_count(7),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X17_Y17_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !i(8) $ (duty_count(8)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !i(8) $ (duty_count(8)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((i(8) & !duty_count(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_i(8),
	datad => ALT_INV_duty_count(8),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X17_Y17_N57
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !duty_count(9) $ (i(9)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_duty_count(9),
	datad => ALT_INV_i(9),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~1_sumout\);

-- Location: LABCELL_X18_Y17_N0
\Add1~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~42_cout\ = CARRY(( \Add0~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	cout => \Add1~42_cout\);

-- Location: LABCELL_X18_Y17_N3
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\Add0~13_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~42_cout\ ))
-- \Add1~10\ = CARRY(( !\Add0~13_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	cin => \Add1~42_cout\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X18_Y17_N6
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~5_sumout\) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~2\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~5_sumout\) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~5_sumout\,
	cin => \Add1~10\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X18_Y17_N9
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\Add0~9_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\Add0~9_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X18_Y17_N12
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~33_sumout\) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~34\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~33_sumout\) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~33_sumout\,
	cin => \Add1~6\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X18_Y17_N15
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~37_sumout\) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~37_sumout\) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X18_Y17_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~17_sumout\) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~14\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~17_sumout\) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	cin => \Add1~38\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X18_Y17_N21
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~21_sumout\) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~21_sumout\) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X18_Y17_N24
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add0~25_sumout\) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\Add0~1_sumout\ $ (!\Add0~25_sumout\) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X18_Y17_N27
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\Add0~29_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\Add0~29_sumout\ $ (!\Add0~1_sumout\) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Add0~1_sumout\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X18_Y17_N30
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\);

-- Location: LABCELL_X18_Y17_N57
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add1~33_sumout\ & ( !\Add1~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~37_sumout\,
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X18_Y17_N39
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add1~17_sumout\ & ( \Equal0~0_combout\ & ( (!\Add1~13_sumout\ & (!\Add1~29_sumout\ & (!\Add1~25_sumout\ & !\Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Add1~21_sumout\,
	datae => \ALT_INV_Add1~17_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X15_Y17_N30
\duty_value~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~1_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[0][0]~q\) # (\Decoder0~0_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~0_combout\ & \duty_value[0][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~0_combout\,
	datad => \ALT_INV_duty_value[0][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~1_combout\);

-- Location: FF_X15_Y17_N31
\duty_value[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~1_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][0]~q\);

-- Location: MLABCELL_X19_Y18_N15
\duty_value~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~2_combout\ = ( \duty_value[0][1]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~9_sumout\) # ((!\Decoder0~0_combout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\))) ) ) ) # ( !\duty_value[0][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~0_combout\ & 
-- ((!\Add1~9_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[0][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Decoder0~0_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[0][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~2_combout\);

-- Location: FF_X19_Y18_N17
\duty_value[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~2_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][1]~q\);

-- Location: LABCELL_X17_Y18_N3
\duty_value~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~3_combout\ = ( \duty_value[0][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~0_combout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\)) ) ) ) # ( !\duty_value[0][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~0_combout\ & ((!\Add1~5_sumout\) # 
-- (!\Add1~1_sumout\))) ) ) ) # ( \duty_value[0][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~0_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[0][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~3_combout\);

-- Location: FF_X17_Y18_N5
\duty_value[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~3_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][2]~q\);

-- Location: MLABCELL_X19_Y18_N33
\duty_value~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~4_combout\ = ( \duty_value[0][3]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~0_combout\) # ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\))) ) ) ) # ( !\duty_value[0][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~0_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\)))) ) ) ) # ( \duty_value[0][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110010001100001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Decoder0~0_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[0][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~4_combout\);

-- Location: FF_X19_Y18_N35
\duty_value[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~4_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][3]~q\);

-- Location: LABCELL_X18_Y19_N15
\duty_value~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~5_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~0_combout\ & ((\duty_value[0][4]~q\))) # (\Decoder0~0_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~0_combout\ & \duty_value[0][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001010111110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Decoder0~0_combout\,
	datad => \ALT_INV_duty_value[0][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~5_combout\);

-- Location: FF_X18_Y19_N16
\duty_value[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~5_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][4]~q\);

-- Location: LABCELL_X18_Y18_N36
\duty_value~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~6_combout\ = ( \duty_value[0][5]~q\ & ( \Decoder0~0_combout\ & ( (\Equal0~1_combout\ & (!\Add1~5_sumout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[0][5]~q\ & ( \Decoder0~0_combout\ & ( (\Equal0~1_combout\ & 
-- (!\Add1~5_sumout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[0][5]~q\ & ( !\Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[0][5]~q\,
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \duty_value~6_combout\);

-- Location: FF_X18_Y18_N37
\duty_value[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~6_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][5]~q\);

-- Location: LABCELL_X18_Y17_N45
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add1~5_sumout\ & ( !\Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X18_Y17_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add1~17_sumout\ & ( (!\Add1~13_sumout\ & (!\Add1~37_sumout\ & !\Add1~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \ALT_INV_Add1~37_sumout\,
	datac => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X18_Y17_N54
\duty_value~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~7_combout\ = ( \Equal0~2_combout\ & ( (!\Add1~21_sumout\ & (!\Add1~29_sumout\ & (!\Add1~25_sumout\ & \Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \duty_value~7_combout\);

-- Location: MLABCELL_X19_Y18_N3
\duty_value[0][7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[0][7]~8_combout\ = ( \Decoder0~0_combout\ & ( (!\state.calculate_duty_state~q\ & (\ena~input_o\ & \reset_n~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculate_duty_state~q\,
	datac => \ALT_INV_ena~input_o\,
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \duty_value[0][7]~8_combout\);

-- Location: FF_X18_Y17_N52
\duty_value[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[0][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][6]~q\);

-- Location: LABCELL_X18_Y17_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Add1~25_sumout\ & ( \Equal0~2_combout\ & ( (!\Add1~9_sumout\ & (\Equal0~3_combout\ & (!\Add1~21_sumout\ & !\Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Add1~29_sumout\,
	datae => \ALT_INV_Add1~25_sumout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X18_Y17_N50
\duty_value[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Equal0~4_combout\,
	ena => \duty_value[0][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[0][7]~q\);

-- Location: DSP_X16_Y21_N0
\pwms:0:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:0:pwm|Mult0~8_AX_bus\,
	ay => \pwms:0:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:0:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X17_Y21_N54
\pwms:0:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:0:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:0:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X17_Y21_N55
\pwms:0:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(4));

-- Location: MLABCELL_X19_Y21_N30
\pwms:0:pwm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~33_sumout\ = SUM(( \pwms:0:pwm|count\(0) ) + ( VCC ) + ( !VCC ))
-- \pwms:0:pwm|Add0~34\ = CARRY(( \pwms:0:pwm|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(0),
	cin => GND,
	sumout => \pwms:0:pwm|Add0~33_sumout\,
	cout => \pwms:0:pwm|Add0~34\);

-- Location: MLABCELL_X19_Y21_N21
\pwms:0:pwm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal0~1_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:0:pwm|count\(1) & (!\pwms:0:pwm|count\(3) & !\pwms:0:pwm|count\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(1),
	datac => \pwms:0:pwm|ALT_INV_count\(3),
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:0:pwm|Equal0~1_combout\);

-- Location: MLABCELL_X19_Y21_N12
\pwms:0:pwm|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal0~2_combout\ = ( \pwms:0:pwm|Equal0~0_combout\ & ( (\pwms:0:pwm|count\(5) & (\pwms:0:pwm|Equal0~1_combout\ & \pwms:0:pwm|count\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_Equal0~1_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(6),
	dataf => \pwms:0:pwm|ALT_INV_Equal0~0_combout\,
	combout => \pwms:0:pwm|Equal0~2_combout\);

-- Location: FF_X19_Y21_N31
\pwms:0:pwm|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(0));

-- Location: MLABCELL_X19_Y21_N33
\pwms:0:pwm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~37_sumout\ = SUM(( \pwms:0:pwm|count\(1) ) + ( GND ) + ( \pwms:0:pwm|Add0~34\ ))
-- \pwms:0:pwm|Add0~38\ = CARRY(( \pwms:0:pwm|count\(1) ) + ( GND ) + ( \pwms:0:pwm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(1),
	cin => \pwms:0:pwm|Add0~34\,
	sumout => \pwms:0:pwm|Add0~37_sumout\,
	cout => \pwms:0:pwm|Add0~38\);

-- Location: FF_X19_Y21_N35
\pwms:0:pwm|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~37_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(1));

-- Location: MLABCELL_X19_Y21_N36
\pwms:0:pwm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~29_sumout\ = SUM(( \pwms:0:pwm|count\(2) ) + ( GND ) + ( \pwms:0:pwm|Add0~38\ ))
-- \pwms:0:pwm|Add0~30\ = CARRY(( \pwms:0:pwm|count\(2) ) + ( GND ) + ( \pwms:0:pwm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(2),
	cin => \pwms:0:pwm|Add0~38\,
	sumout => \pwms:0:pwm|Add0~29_sumout\,
	cout => \pwms:0:pwm|Add0~30\);

-- Location: FF_X19_Y21_N37
\pwms:0:pwm|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(2));

-- Location: MLABCELL_X19_Y21_N39
\pwms:0:pwm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~13_sumout\ = SUM(( \pwms:0:pwm|count\(3) ) + ( GND ) + ( \pwms:0:pwm|Add0~30\ ))
-- \pwms:0:pwm|Add0~14\ = CARRY(( \pwms:0:pwm|count\(3) ) + ( GND ) + ( \pwms:0:pwm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(3),
	cin => \pwms:0:pwm|Add0~30\,
	sumout => \pwms:0:pwm|Add0~13_sumout\,
	cout => \pwms:0:pwm|Add0~14\);

-- Location: FF_X19_Y21_N41
\pwms:0:pwm|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(3));

-- Location: MLABCELL_X19_Y21_N42
\pwms:0:pwm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~17_sumout\ = SUM(( \pwms:0:pwm|count\(4) ) + ( GND ) + ( \pwms:0:pwm|Add0~14\ ))
-- \pwms:0:pwm|Add0~18\ = CARRY(( \pwms:0:pwm|count\(4) ) + ( GND ) + ( \pwms:0:pwm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	cin => \pwms:0:pwm|Add0~14\,
	sumout => \pwms:0:pwm|Add0~17_sumout\,
	cout => \pwms:0:pwm|Add0~18\);

-- Location: FF_X19_Y21_N43
\pwms:0:pwm|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(4));

-- Location: MLABCELL_X19_Y21_N45
\pwms:0:pwm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~21_sumout\ = SUM(( \pwms:0:pwm|count\(5) ) + ( GND ) + ( \pwms:0:pwm|Add0~18\ ))
-- \pwms:0:pwm|Add0~22\ = CARRY(( \pwms:0:pwm|count\(5) ) + ( GND ) + ( \pwms:0:pwm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(5),
	cin => \pwms:0:pwm|Add0~18\,
	sumout => \pwms:0:pwm|Add0~21_sumout\,
	cout => \pwms:0:pwm|Add0~22\);

-- Location: FF_X19_Y21_N46
\pwms:0:pwm|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(5));

-- Location: MLABCELL_X19_Y21_N48
\pwms:0:pwm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~1_sumout\ = SUM(( \pwms:0:pwm|count\(6) ) + ( GND ) + ( \pwms:0:pwm|Add0~22\ ))
-- \pwms:0:pwm|Add0~2\ = CARRY(( \pwms:0:pwm|count\(6) ) + ( GND ) + ( \pwms:0:pwm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(6),
	cin => \pwms:0:pwm|Add0~22\,
	sumout => \pwms:0:pwm|Add0~1_sumout\,
	cout => \pwms:0:pwm|Add0~2\);

-- Location: FF_X19_Y21_N49
\pwms:0:pwm|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(6));

-- Location: MLABCELL_X19_Y21_N51
\pwms:0:pwm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~5_sumout\ = SUM(( \pwms:0:pwm|count\(7) ) + ( GND ) + ( \pwms:0:pwm|Add0~2\ ))
-- \pwms:0:pwm|Add0~6\ = CARRY(( \pwms:0:pwm|count\(7) ) + ( GND ) + ( \pwms:0:pwm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	cin => \pwms:0:pwm|Add0~2\,
	sumout => \pwms:0:pwm|Add0~5_sumout\,
	cout => \pwms:0:pwm|Add0~6\);

-- Location: FF_X19_Y21_N53
\pwms:0:pwm|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(7));

-- Location: MLABCELL_X19_Y21_N54
\pwms:0:pwm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~9_sumout\ = SUM(( \pwms:0:pwm|count\(8) ) + ( GND ) + ( \pwms:0:pwm|Add0~6\ ))
-- \pwms:0:pwm|Add0~10\ = CARRY(( \pwms:0:pwm|count\(8) ) + ( GND ) + ( \pwms:0:pwm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	cin => \pwms:0:pwm|Add0~6\,
	sumout => \pwms:0:pwm|Add0~9_sumout\,
	cout => \pwms:0:pwm|Add0~10\);

-- Location: FF_X19_Y21_N56
\pwms:0:pwm|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(8));

-- Location: MLABCELL_X19_Y21_N57
\pwms:0:pwm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add0~25_sumout\ = SUM(( \pwms:0:pwm|count\(9) ) + ( GND ) + ( \pwms:0:pwm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_count\(9),
	cin => \pwms:0:pwm|Add0~10\,
	sumout => \pwms:0:pwm|Add0~25_sumout\);

-- Location: FF_X19_Y21_N59
\pwms:0:pwm|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count\(9));

-- Location: FF_X19_Y21_N32
\pwms:0:pwm|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y21_N18
\pwms:0:pwm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal0~0_combout\ = ( \pwms:0:pwm|count[0]~DUPLICATE_q\ & ( (\pwms:0:pwm|count\(9) & (\pwms:0:pwm|count\(7) & \pwms:0:pwm|count\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(9),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	dataf => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \pwms:0:pwm|Equal0~0_combout\);

-- Location: MLABCELL_X19_Y21_N15
\pwms:0:pwm|half_duty[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty[0]~0_combout\ = ( \reset_n~input_o\ & ( (\pwms:0:pwm|Equal0~0_combout\ & (\pwms:0:pwm|count\(5) & (\pwms:0:pwm|count\(6) & \pwms:0:pwm|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_Equal0~0_combout\,
	datab => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(6),
	datad => \pwms:0:pwm|ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_reset_n~input_o\,
	combout => \pwms:0:pwm|half_duty[0]~0_combout\);

-- Location: FF_X18_Y21_N10
\pwms:0:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(4));

-- Location: FF_X17_Y21_N37
\pwms:0:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|Mult0~20\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(3));

-- Location: FF_X18_Y21_N8
\pwms:0:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(3));

-- Location: LABCELL_X17_Y21_N42
\pwms:0:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:0:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:0:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X17_Y21_N43
\pwms:0:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(2));

-- Location: FF_X18_Y21_N5
\pwms:0:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(2));

-- Location: LABCELL_X17_Y21_N39
\pwms:0:pwm|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty_new[0]~feeder_combout\ = ( \pwms:0:pwm|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_Mult0~17\,
	combout => \pwms:0:pwm|half_duty_new[0]~feeder_combout\);

-- Location: FF_X17_Y21_N40
\pwms:0:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(0));

-- Location: LABCELL_X18_Y21_N54
\pwms:0:pwm|half_duty[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty[0]~feeder_combout\ = ( \pwms:0:pwm|half_duty_new\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_half_duty_new\(0),
	combout => \pwms:0:pwm|half_duty[0]~feeder_combout\);

-- Location: FF_X18_Y21_N56
\pwms:0:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty[0]~feeder_combout\,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(0));

-- Location: FF_X17_Y21_N7
\pwms:0:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(1));

-- Location: FF_X19_Y21_N2
\pwms:0:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(1));

-- Location: LABCELL_X18_Y21_N0
\pwms:0:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~33_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(1) ) + ( !\pwms:0:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:0:pwm|Add1~34\ = CARRY(( !\pwms:0:pwm|half_duty\(1) ) + ( !\pwms:0:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:0:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:0:pwm|ALT_INV_half_duty\(1),
	cin => GND,
	sumout => \pwms:0:pwm|Add1~33_sumout\,
	cout => \pwms:0:pwm|Add1~34\);

-- Location: LABCELL_X18_Y21_N3
\pwms:0:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~25_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:0:pwm|Add1~34\ ))
-- \pwms:0:pwm|Add1~26\ = CARRY(( !\pwms:0:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:0:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:0:pwm|Add1~34\,
	sumout => \pwms:0:pwm|Add1~25_sumout\,
	cout => \pwms:0:pwm|Add1~26\);

-- Location: LABCELL_X18_Y21_N6
\pwms:0:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~13_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:0:pwm|Add1~26\ ))
-- \pwms:0:pwm|Add1~14\ = CARRY(( !\pwms:0:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:0:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:0:pwm|Add1~26\,
	sumout => \pwms:0:pwm|Add1~13_sumout\,
	cout => \pwms:0:pwm|Add1~14\);

-- Location: LABCELL_X18_Y21_N9
\pwms:0:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~17_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:0:pwm|Add1~14\ ))
-- \pwms:0:pwm|Add1~18\ = CARRY(( !\pwms:0:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:0:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:0:pwm|Add1~14\,
	sumout => \pwms:0:pwm|Add1~17_sumout\,
	cout => \pwms:0:pwm|Add1~18\);

-- Location: LABCELL_X17_Y21_N45
\pwms:0:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:0:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:0:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X17_Y21_N46
\pwms:0:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(5));

-- Location: FF_X18_Y21_N13
\pwms:0:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(5));

-- Location: LABCELL_X18_Y21_N12
\pwms:0:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~21_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:0:pwm|Add1~18\ ))
-- \pwms:0:pwm|Add1~22\ = CARRY(( !\pwms:0:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:0:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:0:pwm|Add1~18\,
	sumout => \pwms:0:pwm|Add1~21_sumout\,
	cout => \pwms:0:pwm|Add1~22\);

-- Location: LABCELL_X17_Y21_N18
\pwms:0:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(5) & ( \pwms:0:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (\pwms:0:pwm|Add1~21_sumout\ & (!\pwms:0:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:0:pwm|count\(5) & ( 
-- \pwms:0:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (!\pwms:0:pwm|Add1~21_sumout\ & (!\pwms:0:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( \pwms:0:pwm|count\(5) & ( !\pwms:0:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & 
-- (\pwms:0:pwm|Add1~21_sumout\ & (!\pwms:0:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:0:pwm|count\(5) & ( !\pwms:0:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & (!\pwms:0:pwm|Add1~21_sumout\ & (!\pwms:0:pwm|Add1~17_sumout\ $ 
-- (\pwms:0:pwm|count\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_Add1~17_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(3),
	datac => \pwms:0:pwm|ALT_INV_Add1~21_sumout\,
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	datae => \pwms:0:pwm|ALT_INV_count\(5),
	dataf => \pwms:0:pwm|ALT_INV_Add1~13_sumout\,
	combout => \pwms:0:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X17_Y21_N57
\pwms:0:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:0:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:0:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:0:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X17_Y21_N58
\pwms:0:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(7));

-- Location: FF_X18_Y21_N19
\pwms:0:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(7));

-- Location: FF_X17_Y21_N25
\pwms:0:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|Mult0~23\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(6));

-- Location: FF_X18_Y21_N16
\pwms:0:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(6));

-- Location: LABCELL_X18_Y21_N15
\pwms:0:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~1_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:0:pwm|Add1~22\ ))
-- \pwms:0:pwm|Add1~2\ = CARRY(( !\pwms:0:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:0:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:0:pwm|Add1~22\,
	sumout => \pwms:0:pwm|Add1~1_sumout\,
	cout => \pwms:0:pwm|Add1~2\);

-- Location: LABCELL_X18_Y21_N18
\pwms:0:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~5_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:0:pwm|Add1~2\ ))
-- \pwms:0:pwm|Add1~6\ = CARRY(( !\pwms:0:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:0:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:0:pwm|Add1~2\,
	sumout => \pwms:0:pwm|Add1~5_sumout\,
	cout => \pwms:0:pwm|Add1~6\);

-- Location: FF_X17_Y21_N13
\pwms:0:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|Mult0~25\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty_new\(8));

-- Location: FF_X18_Y21_N22
\pwms:0:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:0:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|half_duty\(8));

-- Location: LABCELL_X18_Y21_N21
\pwms:0:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~9_sumout\ = SUM(( !\pwms:0:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:0:pwm|Add1~6\ ))
-- \pwms:0:pwm|Add1~10\ = CARRY(( !\pwms:0:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:0:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:0:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:0:pwm|Add1~6\,
	sumout => \pwms:0:pwm|Add1~9_sumout\,
	cout => \pwms:0:pwm|Add1~10\);

-- Location: LABCELL_X17_Y21_N15
\pwms:0:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|pwm_out~0_combout\ = ( \pwms:0:pwm|Add1~1_sumout\ & ( \pwms:0:pwm|Add1~9_sumout\ & ( (\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:0:pwm|Add1~1_sumout\ & ( 
-- \pwms:0:pwm|Add1~9_sumout\ & ( (!\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( \pwms:0:pwm|Add1~1_sumout\ & ( !\pwms:0:pwm|Add1~9_sumout\ & ( (\pwms:0:pwm|count\(6) & 
-- (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:0:pwm|Add1~1_sumout\ & ( !\pwms:0:pwm|Add1~9_sumout\ & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|Add1~5_sumout\ $ 
-- (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(6),
	datab => \pwms:0:pwm|ALT_INV_Add1~5_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:0:pwm|ALT_INV_Add1~1_sumout\,
	dataf => \pwms:0:pwm|ALT_INV_Add1~9_sumout\,
	combout => \pwms:0:pwm|pwm_out~0_combout\);

-- Location: MLABCELL_X19_Y21_N27
\pwms:0:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|pwm_out~2_combout\ = ( \pwms:0:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count\(1) & (!\pwms:0:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) # ( !\pwms:0:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count\(1) & (!\pwms:0:pwm|half_duty\(0) 
-- $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(1),
	datab => \pwms:0:pwm|ALT_INV_half_duty\(0),
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	dataf => \pwms:0:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:0:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X18_Y21_N24
\pwms:0:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:0:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:0:pwm|Add1~10\,
	sumout => \pwms:0:pwm|Add1~29_sumout\);

-- Location: MLABCELL_X19_Y21_N9
\pwms:0:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|pwm_out~3_combout\ = ( !\pwms:0:pwm|count\(9) & ( \pwms:0:pwm|Add1~29_sumout\ & ( (\pwms:0:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:0:pwm|Add1~25_sumout\))) ) ) ) # ( \pwms:0:pwm|count\(9) & ( !\pwms:0:pwm|Add1~29_sumout\ & ( 
-- (\pwms:0:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:0:pwm|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001001100100000000100110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datab => \pwms:0:pwm|ALT_INV_Add1~25_sumout\,
	datad => \pwms:0:pwm|ALT_INV_pwm_out~2_combout\,
	datae => \pwms:0:pwm|ALT_INV_count\(9),
	dataf => \pwms:0:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:0:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X17_Y21_N0
\pwms:0:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal1~0_combout\ = ( \pwms:0:pwm|half_duty\(5) & ( \pwms:0:pwm|count\(6) & ( (\pwms:0:pwm|count\(5) & \pwms:0:pwm|half_duty\(6)) ) ) ) # ( !\pwms:0:pwm|half_duty\(5) & ( \pwms:0:pwm|count\(6) & ( (!\pwms:0:pwm|count\(5) & 
-- \pwms:0:pwm|half_duty\(6)) ) ) ) # ( \pwms:0:pwm|half_duty\(5) & ( !\pwms:0:pwm|count\(6) & ( (\pwms:0:pwm|count\(5) & !\pwms:0:pwm|half_duty\(6)) ) ) ) # ( !\pwms:0:pwm|half_duty\(5) & ( !\pwms:0:pwm|count\(6) & ( (!\pwms:0:pwm|count\(5) & 
-- !\pwms:0:pwm|half_duty\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_half_duty\(6),
	datae => \pwms:0:pwm|ALT_INV_half_duty\(5),
	dataf => \pwms:0:pwm|ALT_INV_count\(6),
	combout => \pwms:0:pwm|Equal1~0_combout\);

-- Location: LABCELL_X17_Y21_N33
\pwms:0:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:0:pwm|half_duty\(2) & (!\pwms:0:pwm|half_duty\(3) $ (\pwms:0:pwm|count\(3)))) ) ) # ( !\pwms:0:pwm|count\(2) & ( (!\pwms:0:pwm|half_duty\(2) & (!\pwms:0:pwm|half_duty\(3) $ 
-- (\pwms:0:pwm|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_half_duty\(3),
	datac => \pwms:0:pwm|ALT_INV_count\(3),
	datad => \pwms:0:pwm|ALT_INV_half_duty\(2),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:0:pwm|Equal1~2_combout\);

-- Location: MLABCELL_X19_Y21_N0
\pwms:0:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal1~1_combout\ = ( \pwms:0:pwm|half_duty\(1) & ( \pwms:0:pwm|half_duty\(0) & ( (\pwms:0:pwm|count[0]~DUPLICATE_q\ & (\pwms:0:pwm|count\(1) & !\pwms:0:pwm|count\(9))) ) ) ) # ( !\pwms:0:pwm|half_duty\(1) & ( \pwms:0:pwm|half_duty\(0) & ( 
-- (\pwms:0:pwm|count[0]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(1) & !\pwms:0:pwm|count\(9))) ) ) ) # ( \pwms:0:pwm|half_duty\(1) & ( !\pwms:0:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & (\pwms:0:pwm|count\(1) & !\pwms:0:pwm|count\(9))) ) ) ) # 
-- ( !\pwms:0:pwm|half_duty\(1) & ( !\pwms:0:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(1) & !\pwms:0:pwm|count\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000011000000000000110000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count\(1),
	datad => \pwms:0:pwm|ALT_INV_count\(9),
	datae => \pwms:0:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_half_duty\(0),
	combout => \pwms:0:pwm|Equal1~1_combout\);

-- Location: LABCELL_X17_Y21_N30
\pwms:0:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal1~3_combout\ = ( \pwms:0:pwm|count\(4) & ( (\pwms:0:pwm|Equal1~2_combout\ & (\pwms:0:pwm|Equal1~1_combout\ & \pwms:0:pwm|half_duty\(4))) ) ) # ( !\pwms:0:pwm|count\(4) & ( (\pwms:0:pwm|Equal1~2_combout\ & (\pwms:0:pwm|Equal1~1_combout\ & 
-- !\pwms:0:pwm|half_duty\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_Equal1~2_combout\,
	datac => \pwms:0:pwm|ALT_INV_Equal1~1_combout\,
	datad => \pwms:0:pwm|ALT_INV_half_duty\(4),
	dataf => \pwms:0:pwm|ALT_INV_count\(4),
	combout => \pwms:0:pwm|Equal1~3_combout\);

-- Location: LABCELL_X17_Y21_N9
\pwms:0:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|Equal1~4_combout\ = ( \pwms:0:pwm|half_duty\(7) & ( \pwms:0:pwm|Equal1~3_combout\ & ( (\pwms:0:pwm|count\(7) & (\pwms:0:pwm|Equal1~0_combout\ & (!\pwms:0:pwm|count\(8) $ (\pwms:0:pwm|half_duty\(8))))) ) ) ) # ( !\pwms:0:pwm|half_duty\(7) & ( 
-- \pwms:0:pwm|Equal1~3_combout\ & ( (!\pwms:0:pwm|count\(7) & (\pwms:0:pwm|Equal1~0_combout\ & (!\pwms:0:pwm|count\(8) $ (\pwms:0:pwm|half_duty\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:0:pwm|ALT_INV_half_duty\(8),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_Equal1~0_combout\,
	datae => \pwms:0:pwm|ALT_INV_half_duty\(7),
	dataf => \pwms:0:pwm|ALT_INV_Equal1~3_combout\,
	combout => \pwms:0:pwm|Equal1~4_combout\);

-- Location: LABCELL_X17_Y21_N48
\pwms:0:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:0:pwm|pwm_out~4_combout\ = ( \pwms:0:pwm|pwm_out~q\ & ( !\pwms:0:pwm|Equal1~4_combout\ ) ) # ( !\pwms:0:pwm|pwm_out~q\ & ( !\pwms:0:pwm|Equal1~4_combout\ & ( (\pwms:0:pwm|pwm_out~1_combout\ & (\pwms:0:pwm|pwm_out~0_combout\ & 
-- \pwms:0:pwm|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_pwm_out~1_combout\,
	datab => \pwms:0:pwm|ALT_INV_pwm_out~0_combout\,
	datac => \pwms:0:pwm|ALT_INV_pwm_out~3_combout\,
	datae => \pwms:0:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:0:pwm|ALT_INV_Equal1~4_combout\,
	combout => \pwms:0:pwm|pwm_out~4_combout\);

-- Location: FF_X17_Y21_N49
\pwms:0:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|pwm_out~q\);

-- Location: MLABCELL_X19_Y16_N12
\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = ( !duty_count(2) & ( !duty_count(1) & ( (!duty_count(3) & duty_count(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(3),
	datac => ALT_INV_duty_count(0),
	datae => ALT_INV_duty_count(2),
	dataf => ALT_INV_duty_count(1),
	combout => \Decoder0~1_combout\);

-- Location: LABCELL_X18_Y19_N6
\duty_value~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~9_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[1][0]~q\) # (\Decoder0~1_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~1_combout\ & \duty_value[1][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~1_combout\,
	datad => \ALT_INV_duty_value[1][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~9_combout\);

-- Location: FF_X18_Y19_N7
\duty_value[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~9_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][0]~q\);

-- Location: LABCELL_X18_Y19_N51
\duty_value~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~10_combout\ = ( \duty_value[1][1]~q\ & ( \Decoder0~1_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[1][1]~q\ & ( \Decoder0~1_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[1][1]~q\ & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_duty_value[1][1]~q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \duty_value~10_combout\);

-- Location: FF_X18_Y19_N52
\duty_value[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~10_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][1]~q\);

-- Location: LABCELL_X18_Y19_N33
\duty_value~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~11_combout\ = ( \duty_value[1][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~1_combout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\)) ) ) ) # ( !\duty_value[1][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~1_combout\ & ((!\Add1~5_sumout\) # 
-- (!\Add1~1_sumout\))) ) ) ) # ( \duty_value[1][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[1][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~11_combout\);

-- Location: FF_X18_Y19_N34
\duty_value[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~11_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][2]~q\);

-- Location: LABCELL_X18_Y18_N57
\duty_value~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~12_combout\ = ( \duty_value[1][3]~q\ & ( \Decoder0~1_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[1][3]~q\ & ( \Decoder0~1_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[1][3]~q\ & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111110000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[1][3]~q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \duty_value~12_combout\);

-- Location: FF_X18_Y18_N59
\duty_value[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~12_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][3]~q\);

-- Location: LABCELL_X18_Y19_N36
\duty_value~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~13_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~1_combout\ & ((\duty_value[1][4]~q\))) # (\Decoder0~1_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~1_combout\ & \duty_value[1][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~1_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_duty_value[1][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~13_combout\);

-- Location: FF_X18_Y19_N37
\duty_value[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~13_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][4]~q\);

-- Location: LABCELL_X18_Y18_N39
\duty_value~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~14_combout\ = ( \duty_value[1][5]~q\ & ( \Decoder0~1_combout\ & ( (!\Add1~5_sumout\ & (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[1][5]~q\ & ( \Decoder0~1_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[1][5]~q\ & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[1][5]~q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \duty_value~14_combout\);

-- Location: FF_X18_Y18_N40
\duty_value[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~14_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][5]~q\);

-- Location: MLABCELL_X19_Y16_N42
\duty_value[1][7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[1][7]~15_combout\ = ( \Decoder0~1_combout\ & ( (\ena~input_o\ & (\reset_n~input_o\ & !\state.calculate_duty_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_state.calculate_duty_state~q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \duty_value[1][7]~15_combout\);

-- Location: FF_X19_Y17_N58
\duty_value[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[1][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][6]~q\);

-- Location: FF_X17_Y17_N47
\duty_value[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[1][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[1][7]~q\);

-- Location: DSP_X24_Y19_N0
\pwms:1:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:1:pwm|Mult0~8_AX_bus\,
	ay => \pwms:1:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:1:pwm|Mult0~8_RESULTA_bus\);

-- Location: FF_X23_Y19_N16
\pwms:1:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~24\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(7));

-- Location: FF_X23_Y19_N49
\pwms:1:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(7));

-- Location: FF_X23_Y19_N23
\pwms:1:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~25\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(8));

-- Location: FF_X23_Y19_N52
\pwms:1:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(8));

-- Location: FF_X23_Y19_N19
\pwms:1:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~22\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(5));

-- Location: FF_X23_Y19_N43
\pwms:1:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(5));

-- Location: FF_X23_Y19_N59
\pwms:1:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~23\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(6));

-- Location: FF_X23_Y19_N47
\pwms:1:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(6));

-- Location: LABCELL_X23_Y19_N0
\pwms:1:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Equal1~0_combout\ = ( \pwms:0:pwm|count\(5) & ( (\pwms:1:pwm|half_duty\(5) & (!\pwms:0:pwm|count\(6) $ (\pwms:1:pwm|half_duty\(6)))) ) ) # ( !\pwms:0:pwm|count\(5) & ( (!\pwms:1:pwm|half_duty\(5) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:1:pwm|half_duty\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:1:pwm|ALT_INV_half_duty\(5),
	datad => \pwms:1:pwm|ALT_INV_half_duty\(6),
	dataf => \pwms:0:pwm|ALT_INV_count\(5),
	combout => \pwms:1:pwm|Equal1~0_combout\);

-- Location: FF_X23_Y19_N25
\pwms:1:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~19\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(2));

-- Location: FF_X23_Y19_N35
\pwms:1:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(2));

-- Location: MLABCELL_X25_Y19_N27
\pwms:1:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:1:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:1:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:1:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X25_Y19_N28
\pwms:1:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:1:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(3));

-- Location: FF_X23_Y19_N37
\pwms:1:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(3));

-- Location: LABCELL_X23_Y19_N3
\pwms:1:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:1:pwm|half_duty\(2) & (!\pwms:0:pwm|count\(3) $ (\pwms:1:pwm|half_duty\(3)))) ) ) # ( !\pwms:0:pwm|count\(2) & ( (!\pwms:1:pwm|half_duty\(2) & (!\pwms:0:pwm|count\(3) $ 
-- (\pwms:1:pwm|half_duty\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:1:pwm|ALT_INV_half_duty\(2),
	datac => \pwms:0:pwm|ALT_INV_count\(3),
	datad => \pwms:1:pwm|ALT_INV_half_duty\(3),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:1:pwm|Equal1~2_combout\);

-- Location: FF_X23_Y19_N29
\pwms:1:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~21\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(4));

-- Location: FF_X23_Y19_N41
\pwms:1:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(4));

-- Location: FF_X19_Y21_N34
\pwms:0:pwm|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~37_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count[1]~DUPLICATE_q\);

-- Location: FF_X23_Y19_N56
\pwms:1:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(0));

-- Location: FF_X23_Y19_N32
\pwms:1:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(0));

-- Location: FF_X23_Y19_N14
\pwms:1:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty_new\(1));

-- Location: FF_X22_Y19_N25
\pwms:1:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:1:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|half_duty\(1));

-- Location: LABCELL_X22_Y19_N24
\pwms:1:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Equal1~1_combout\ = ( \pwms:1:pwm|half_duty\(1) & ( !\pwms:0:pwm|count\(9) & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:1:pwm|half_duty\(0)))) ) ) ) # ( !\pwms:1:pwm|half_duty\(1) & ( 
-- !\pwms:0:pwm|count\(9) & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:1:pwm|half_duty\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010010000010100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datab => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \pwms:1:pwm|ALT_INV_half_duty\(0),
	datae => \pwms:1:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:1:pwm|Equal1~1_combout\);

-- Location: LABCELL_X22_Y19_N54
\pwms:1:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Equal1~3_combout\ = ( \pwms:1:pwm|Equal1~1_combout\ & ( (\pwms:1:pwm|Equal1~2_combout\ & (!\pwms:0:pwm|count\(4) $ (\pwms:1:pwm|half_duty\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:1:pwm|ALT_INV_Equal1~2_combout\,
	datab => \pwms:0:pwm|ALT_INV_count\(4),
	datac => \pwms:1:pwm|ALT_INV_half_duty\(4),
	dataf => \pwms:1:pwm|ALT_INV_Equal1~1_combout\,
	combout => \pwms:1:pwm|Equal1~3_combout\);

-- Location: LABCELL_X23_Y19_N15
\pwms:1:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Equal1~4_combout\ = ( \pwms:1:pwm|Equal1~0_combout\ & ( \pwms:1:pwm|Equal1~3_combout\ & ( (!\pwms:1:pwm|half_duty\(7) & (!\pwms:0:pwm|count\(7) & (!\pwms:1:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) # (\pwms:1:pwm|half_duty\(7) & 
-- (\pwms:0:pwm|count\(7) & (!\pwms:1:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:1:pwm|ALT_INV_half_duty\(7),
	datab => \pwms:1:pwm|ALT_INV_half_duty\(8),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:1:pwm|ALT_INV_Equal1~0_combout\,
	dataf => \pwms:1:pwm|ALT_INV_Equal1~3_combout\,
	combout => \pwms:1:pwm|Equal1~4_combout\);

-- Location: LABCELL_X23_Y19_N30
\pwms:1:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~33_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(0) ) + ( !\pwms:1:pwm|half_duty\(1) ) + ( !VCC ))
-- \pwms:1:pwm|Add1~34\ = CARRY(( !\pwms:1:pwm|half_duty\(0) ) + ( !\pwms:1:pwm|half_duty\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:1:pwm|ALT_INV_half_duty\(1),
	datad => \pwms:1:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:1:pwm|Add1~33_sumout\,
	cout => \pwms:1:pwm|Add1~34\);

-- Location: LABCELL_X23_Y19_N33
\pwms:1:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~25_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:1:pwm|Add1~34\ ))
-- \pwms:1:pwm|Add1~26\ = CARRY(( !\pwms:1:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:1:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:1:pwm|Add1~34\,
	sumout => \pwms:1:pwm|Add1~25_sumout\,
	cout => \pwms:1:pwm|Add1~26\);

-- Location: LABCELL_X23_Y19_N36
\pwms:1:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~13_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:1:pwm|Add1~26\ ))
-- \pwms:1:pwm|Add1~14\ = CARRY(( !\pwms:1:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:1:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:1:pwm|Add1~26\,
	sumout => \pwms:1:pwm|Add1~13_sumout\,
	cout => \pwms:1:pwm|Add1~14\);

-- Location: LABCELL_X23_Y19_N39
\pwms:1:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~17_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:1:pwm|Add1~14\ ))
-- \pwms:1:pwm|Add1~18\ = CARRY(( !\pwms:1:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:1:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:1:pwm|Add1~14\,
	sumout => \pwms:1:pwm|Add1~17_sumout\,
	cout => \pwms:1:pwm|Add1~18\);

-- Location: LABCELL_X23_Y19_N42
\pwms:1:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~21_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:1:pwm|Add1~18\ ))
-- \pwms:1:pwm|Add1~22\ = CARRY(( !\pwms:1:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:1:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:1:pwm|Add1~18\,
	sumout => \pwms:1:pwm|Add1~21_sumout\,
	cout => \pwms:1:pwm|Add1~22\);

-- Location: LABCELL_X23_Y19_N24
\pwms:1:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|pwm_out~1_combout\ = ( \pwms:1:pwm|Add1~13_sumout\ & ( \pwms:1:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (\pwms:0:pwm|count\(3) & (!\pwms:1:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:1:pwm|Add1~13_sumout\ & ( 
-- \pwms:1:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) & (!\pwms:1:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( \pwms:1:pwm|Add1~13_sumout\ & ( !\pwms:1:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) & 
-- (\pwms:0:pwm|count\(3) & (!\pwms:1:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:1:pwm|Add1~13_sumout\ & ( !\pwms:1:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) & (!\pwms:1:pwm|Add1~17_sumout\ $ 
-- (\pwms:0:pwm|count\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datab => \pwms:1:pwm|ALT_INV_Add1~17_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count\(4),
	datad => \pwms:0:pwm|ALT_INV_count\(3),
	datae => \pwms:1:pwm|ALT_INV_Add1~13_sumout\,
	dataf => \pwms:1:pwm|ALT_INV_Add1~21_sumout\,
	combout => \pwms:1:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X22_Y19_N48
\pwms:1:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|pwm_out~2_combout\ = ( \pwms:0:pwm|count[0]~DUPLICATE_q\ & ( \pwms:1:pwm|Add1~33_sumout\ & ( (\pwms:1:pwm|half_duty\(0) & \pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( !\pwms:0:pwm|count[0]~DUPLICATE_q\ & ( \pwms:1:pwm|Add1~33_sumout\ & ( 
-- (!\pwms:1:pwm|half_duty\(0) & \pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( \pwms:0:pwm|count[0]~DUPLICATE_q\ & ( !\pwms:1:pwm|Add1~33_sumout\ & ( (\pwms:1:pwm|half_duty\(0) & !\pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( !\pwms:0:pwm|count[0]~DUPLICATE_q\ 
-- & ( !\pwms:1:pwm|Add1~33_sumout\ & ( (!\pwms:1:pwm|half_duty\(0) & !\pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:1:pwm|ALT_INV_half_duty\(0),
	datac => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datae => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	dataf => \pwms:1:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:1:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X23_Y19_N45
\pwms:1:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~1_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:1:pwm|Add1~22\ ))
-- \pwms:1:pwm|Add1~2\ = CARRY(( !\pwms:1:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:1:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:1:pwm|Add1~22\,
	sumout => \pwms:1:pwm|Add1~1_sumout\,
	cout => \pwms:1:pwm|Add1~2\);

-- Location: LABCELL_X23_Y19_N48
\pwms:1:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~5_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:1:pwm|Add1~2\ ))
-- \pwms:1:pwm|Add1~6\ = CARRY(( !\pwms:1:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:1:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:1:pwm|Add1~2\,
	sumout => \pwms:1:pwm|Add1~5_sumout\,
	cout => \pwms:1:pwm|Add1~6\);

-- Location: LABCELL_X23_Y19_N51
\pwms:1:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~9_sumout\ = SUM(( !\pwms:1:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:1:pwm|Add1~6\ ))
-- \pwms:1:pwm|Add1~10\ = CARRY(( !\pwms:1:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:1:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:1:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:1:pwm|Add1~6\,
	sumout => \pwms:1:pwm|Add1~9_sumout\,
	cout => \pwms:1:pwm|Add1~10\);

-- Location: LABCELL_X23_Y19_N54
\pwms:1:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:1:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:1:pwm|Add1~10\,
	sumout => \pwms:1:pwm|Add1~29_sumout\);

-- Location: LABCELL_X22_Y19_N9
\pwms:1:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|pwm_out~3_combout\ = ( \pwms:1:pwm|Add1~29_sumout\ & ( \pwms:1:pwm|Add1~25_sumout\ & ( (\pwms:0:pwm|count\(2) & (!\pwms:0:pwm|count\(9) & \pwms:1:pwm|pwm_out~2_combout\)) ) ) ) # ( !\pwms:1:pwm|Add1~29_sumout\ & ( \pwms:1:pwm|Add1~25_sumout\ & 
-- ( (\pwms:0:pwm|count\(2) & (\pwms:0:pwm|count\(9) & \pwms:1:pwm|pwm_out~2_combout\)) ) ) ) # ( \pwms:1:pwm|Add1~29_sumout\ & ( !\pwms:1:pwm|Add1~25_sumout\ & ( (!\pwms:0:pwm|count\(2) & (!\pwms:0:pwm|count\(9) & \pwms:1:pwm|pwm_out~2_combout\)) ) ) ) # ( 
-- !\pwms:1:pwm|Add1~29_sumout\ & ( !\pwms:1:pwm|Add1~25_sumout\ & ( (!\pwms:0:pwm|count\(2) & (\pwms:0:pwm|count\(9) & \pwms:1:pwm|pwm_out~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000001000100000000000000100010000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datab => \pwms:0:pwm|ALT_INV_count\(9),
	datad => \pwms:1:pwm|ALT_INV_pwm_out~2_combout\,
	datae => \pwms:1:pwm|ALT_INV_Add1~29_sumout\,
	dataf => \pwms:1:pwm|ALT_INV_Add1~25_sumout\,
	combout => \pwms:1:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y19_N18
\pwms:1:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|pwm_out~0_combout\ = ( \pwms:0:pwm|count\(7) & ( \pwms:1:pwm|Add1~5_sumout\ & ( (!\pwms:1:pwm|Add1~9_sumout\ & (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:1:pwm|Add1~1_sumout\)))) # (\pwms:1:pwm|Add1~9_sumout\ & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:1:pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwms:0:pwm|count\(7) & ( !\pwms:1:pwm|Add1~5_sumout\ & ( (!\pwms:1:pwm|Add1~9_sumout\ & (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:1:pwm|Add1~1_sumout\)))) # (\pwms:1:pwm|Add1~9_sumout\ & (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:1:pwm|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:1:pwm|ALT_INV_Add1~9_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:0:pwm|ALT_INV_count\(8),
	datad => \pwms:1:pwm|ALT_INV_Add1~1_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(7),
	dataf => \pwms:1:pwm|ALT_INV_Add1~5_sumout\,
	combout => \pwms:1:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X23_Y19_N6
\pwms:1:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:1:pwm|pwm_out~4_combout\ = ( \pwms:1:pwm|pwm_out~q\ & ( \pwms:1:pwm|pwm_out~0_combout\ & ( !\pwms:1:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:1:pwm|pwm_out~q\ & ( \pwms:1:pwm|pwm_out~0_combout\ & ( (!\pwms:1:pwm|Equal1~4_combout\ & 
-- (\pwms:1:pwm|pwm_out~1_combout\ & \pwms:1:pwm|pwm_out~3_combout\)) ) ) ) # ( \pwms:1:pwm|pwm_out~q\ & ( !\pwms:1:pwm|pwm_out~0_combout\ & ( !\pwms:1:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:1:pwm|ALT_INV_Equal1~4_combout\,
	datac => \pwms:1:pwm|ALT_INV_pwm_out~1_combout\,
	datad => \pwms:1:pwm|ALT_INV_pwm_out~3_combout\,
	datae => \pwms:1:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:1:pwm|ALT_INV_pwm_out~0_combout\,
	combout => \pwms:1:pwm|pwm_out~4_combout\);

-- Location: FF_X23_Y19_N7
\pwms:1:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:1:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:1:pwm|pwm_out~q\);

-- Location: MLABCELL_X19_Y16_N3
\Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ( !duty_count(3) & ( (!duty_count(0) & (duty_count(1) & !duty_count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(0),
	datac => ALT_INV_duty_count(1),
	datad => ALT_INV_duty_count(2),
	dataf => ALT_INV_duty_count(3),
	combout => \Decoder0~2_combout\);

-- Location: LABCELL_X21_Y17_N30
\duty_value~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~16_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[2][0]~q\) # (\Decoder0~2_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~2_combout\ & \duty_value[2][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datad => \ALT_INV_duty_value[2][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~16_combout\);

-- Location: FF_X21_Y17_N32
\duty_value[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~16_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][0]~q\);

-- Location: LABCELL_X21_Y17_N48
\duty_value~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~17_combout\ = ( \duty_value[2][1]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~2_combout\) # ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\) # (!\Add1~1_sumout\))) ) ) ) # ( !\duty_value[2][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~2_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[2][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[2][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~17_combout\);

-- Location: FF_X21_Y17_N49
\duty_value[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~17_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][1]~q\);

-- Location: LABCELL_X21_Y17_N33
\duty_value~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~18_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~2_combout\ & (((\duty_value[2][2]~q\)))) # (\Decoder0~2_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\)))) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~2_combout\ & \duty_value[2][2]~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_duty_value[2][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~18_combout\);

-- Location: FF_X21_Y17_N34
\duty_value[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~18_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][2]~q\);

-- Location: LABCELL_X21_Y17_N6
\duty_value~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~19_combout\ = ( \duty_value[2][3]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~2_combout\) # ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\))) ) ) ) # ( !\duty_value[2][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~2_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\)))) ) ) ) # ( \duty_value[2][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010100010001001111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[2][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~19_combout\);

-- Location: FF_X21_Y17_N7
\duty_value[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~19_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][3]~q\);

-- Location: LABCELL_X21_Y17_N3
\duty_value~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~20_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~2_combout\ & ((\duty_value[2][4]~q\))) # (\Decoder0~2_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~2_combout\ & \duty_value[2][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~2_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_duty_value[2][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~20_combout\);

-- Location: FF_X21_Y17_N4
\duty_value[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~20_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][4]~q\);

-- Location: LABCELL_X21_Y17_N24
\duty_value~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~21_combout\ = ( \duty_value[2][5]~q\ & ( \Decoder0~2_combout\ & ( (!\Add1~5_sumout\ & (\Equal0~1_combout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( !\duty_value[2][5]~q\ & ( \Decoder0~2_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Equal0~1_combout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[2][5]~q\ & ( !\Decoder0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[2][5]~q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \duty_value~21_combout\);

-- Location: FF_X21_Y17_N25
\duty_value[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~21_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][5]~q\);

-- Location: MLABCELL_X19_Y16_N18
\duty_value[2][7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[2][7]~22_combout\ = ( !\state.calculate_duty_state~q\ & ( \ena~input_o\ & ( (\reset_n~input_o\ & \Decoder0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_Decoder0~2_combout\,
	datae => \ALT_INV_state.calculate_duty_state~q\,
	dataf => \ALT_INV_ena~input_o\,
	combout => \duty_value[2][7]~22_combout\);

-- Location: FF_X19_Y16_N52
\duty_value[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[2][7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][6]~q\);

-- Location: FF_X19_Y16_N55
\duty_value[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[2][7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[2][7]~q\);

-- Location: DSP_X24_Y17_N0
\pwms:2:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:2:pwm|Mult0~8_AX_bus\,
	ay => \pwms:2:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:2:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X23_Y17_N27
\pwms:2:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:2:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:2:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X23_Y17_N29
\pwms:2:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(8));

-- Location: FF_X22_Y17_N22
\pwms:2:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(8));

-- Location: LABCELL_X23_Y17_N42
\pwms:2:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:2:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:2:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X23_Y17_N43
\pwms:2:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(7));

-- Location: FF_X22_Y17_N19
\pwms:2:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(7));

-- Location: FF_X23_Y17_N7
\pwms:2:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|Mult0~20\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(3));

-- Location: FF_X22_Y17_N8
\pwms:2:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(3));

-- Location: LABCELL_X23_Y17_N3
\pwms:2:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:2:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:2:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X23_Y17_N4
\pwms:2:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(2));

-- Location: FF_X22_Y17_N4
\pwms:2:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(2));

-- Location: FF_X19_Y21_N40
\pwms:0:pwm|count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:0:pwm|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \pwms:0:pwm|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:0:pwm|count[3]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y17_N51
\pwms:2:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (\pwms:2:pwm|half_duty\(3) & (!\pwms:0:pwm|count\(2) $ (\pwms:2:pwm|half_duty\(2)))) ) ) # ( !\pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (!\pwms:2:pwm|half_duty\(3) & 
-- (!\pwms:0:pwm|count\(2) $ (\pwms:2:pwm|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:2:pwm|ALT_INV_half_duty\(3),
	datad => \pwms:2:pwm|ALT_INV_half_duty\(2),
	dataf => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	combout => \pwms:2:pwm|Equal1~2_combout\);

-- Location: LABCELL_X23_Y17_N48
\pwms:2:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:2:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:2:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y17_N50
\pwms:2:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(4));

-- Location: FF_X22_Y17_N10
\pwms:2:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(4));

-- Location: LABCELL_X23_Y17_N39
\pwms:2:pwm|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[0]~feeder_combout\ = ( \pwms:2:pwm|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~17\,
	combout => \pwms:2:pwm|half_duty_new[0]~feeder_combout\);

-- Location: FF_X23_Y17_N40
\pwms:2:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(0));

-- Location: FF_X22_Y17_N56
\pwms:2:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(0));

-- Location: FF_X23_Y17_N19
\pwms:2:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(1));

-- Location: FF_X22_Y19_N16
\pwms:2:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(1));

-- Location: LABCELL_X22_Y19_N15
\pwms:2:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Equal1~1_combout\ = ( \pwms:2:pwm|half_duty\(1) & ( !\pwms:0:pwm|count\(9) & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:2:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) ) # ( !\pwms:2:pwm|half_duty\(1) & ( 
-- !\pwms:0:pwm|count\(9) & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:2:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010010100000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:2:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datae => \pwms:2:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:2:pwm|Equal1~1_combout\);

-- Location: LABCELL_X22_Y17_N42
\pwms:2:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Equal1~3_combout\ = ( \pwms:2:pwm|Equal1~1_combout\ & ( (\pwms:2:pwm|Equal1~2_combout\ & (!\pwms:2:pwm|half_duty\(4) $ (\pwms:0:pwm|count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:2:pwm|ALT_INV_Equal1~2_combout\,
	datac => \pwms:2:pwm|ALT_INV_half_duty\(4),
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:2:pwm|ALT_INV_Equal1~1_combout\,
	combout => \pwms:2:pwm|Equal1~3_combout\);

-- Location: LABCELL_X23_Y17_N45
\pwms:2:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:2:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:2:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X23_Y17_N47
\pwms:2:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(6));

-- Location: FF_X22_Y17_N16
\pwms:2:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(6));

-- Location: LABCELL_X23_Y17_N54
\pwms:2:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:2:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:2:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:2:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X23_Y17_N55
\pwms:2:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty_new\(5));

-- Location: FF_X22_Y17_N14
\pwms:2:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:2:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|half_duty\(5));

-- Location: LABCELL_X22_Y17_N45
\pwms:2:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Equal1~0_combout\ = ( \pwms:0:pwm|count\(5) & ( (\pwms:2:pwm|half_duty\(5) & (!\pwms:0:pwm|count\(6) $ (\pwms:2:pwm|half_duty\(6)))) ) ) # ( !\pwms:0:pwm|count\(5) & ( (!\pwms:2:pwm|half_duty\(5) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:2:pwm|half_duty\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:2:pwm|ALT_INV_half_duty\(6),
	datad => \pwms:2:pwm|ALT_INV_half_duty\(5),
	dataf => \pwms:0:pwm|ALT_INV_count\(5),
	combout => \pwms:2:pwm|Equal1~0_combout\);

-- Location: LABCELL_X23_Y17_N15
\pwms:2:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Equal1~4_combout\ = ( \pwms:2:pwm|Equal1~3_combout\ & ( \pwms:2:pwm|Equal1~0_combout\ & ( (!\pwms:2:pwm|half_duty\(8) & (!\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) # (\pwms:2:pwm|half_duty\(8) & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:2:pwm|ALT_INV_half_duty\(8),
	datab => \pwms:2:pwm|ALT_INV_half_duty\(7),
	datac => \pwms:0:pwm|ALT_INV_count\(8),
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	datae => \pwms:2:pwm|ALT_INV_Equal1~3_combout\,
	dataf => \pwms:2:pwm|ALT_INV_Equal1~0_combout\,
	combout => \pwms:2:pwm|Equal1~4_combout\);

-- Location: LABCELL_X22_Y17_N0
\pwms:2:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~33_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(1) ) + ( !\pwms:2:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:2:pwm|Add1~34\ = CARRY(( !\pwms:2:pwm|half_duty\(1) ) + ( !\pwms:2:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:2:pwm|ALT_INV_half_duty\(1),
	datac => \pwms:2:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:2:pwm|Add1~33_sumout\,
	cout => \pwms:2:pwm|Add1~34\);

-- Location: LABCELL_X22_Y17_N3
\pwms:2:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~25_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:2:pwm|Add1~34\ ))
-- \pwms:2:pwm|Add1~26\ = CARRY(( !\pwms:2:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:2:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:2:pwm|Add1~34\,
	sumout => \pwms:2:pwm|Add1~25_sumout\,
	cout => \pwms:2:pwm|Add1~26\);

-- Location: LABCELL_X22_Y17_N6
\pwms:2:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~13_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:2:pwm|Add1~26\ ))
-- \pwms:2:pwm|Add1~14\ = CARRY(( !\pwms:2:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:2:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:2:pwm|Add1~26\,
	sumout => \pwms:2:pwm|Add1~13_sumout\,
	cout => \pwms:2:pwm|Add1~14\);

-- Location: LABCELL_X22_Y17_N9
\pwms:2:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~17_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:2:pwm|Add1~14\ ))
-- \pwms:2:pwm|Add1~18\ = CARRY(( !\pwms:2:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:2:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:2:pwm|Add1~14\,
	sumout => \pwms:2:pwm|Add1~17_sumout\,
	cout => \pwms:2:pwm|Add1~18\);

-- Location: LABCELL_X22_Y17_N12
\pwms:2:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~21_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:2:pwm|Add1~18\ ))
-- \pwms:2:pwm|Add1~22\ = CARRY(( !\pwms:2:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:2:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:2:pwm|Add1~18\,
	sumout => \pwms:2:pwm|Add1~21_sumout\,
	cout => \pwms:2:pwm|Add1~22\);

-- Location: LABCELL_X22_Y17_N54
\pwms:2:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(4) & ( \pwms:2:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (\pwms:2:pwm|Add1~17_sumout\ & (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:2:pwm|Add1~13_sumout\)))) ) ) ) # ( !\pwms:0:pwm|count\(4) & 
-- ( \pwms:2:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (!\pwms:2:pwm|Add1~17_sumout\ & (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:2:pwm|Add1~13_sumout\)))) ) ) ) # ( \pwms:0:pwm|count\(4) & ( !\pwms:2:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) 
-- & (\pwms:2:pwm|Add1~17_sumout\ & (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:2:pwm|Add1~13_sumout\)))) ) ) ) # ( !\pwms:0:pwm|count\(4) & ( !\pwms:2:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) & (!\pwms:2:pwm|Add1~17_sumout\ & 
-- (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:2:pwm|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datab => \pwms:2:pwm|ALT_INV_Add1~17_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	datad => \pwms:2:pwm|ALT_INV_Add1~13_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:2:pwm|ALT_INV_Add1~21_sumout\,
	combout => \pwms:2:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X22_Y17_N15
\pwms:2:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~1_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:2:pwm|Add1~22\ ))
-- \pwms:2:pwm|Add1~2\ = CARRY(( !\pwms:2:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:2:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:2:pwm|Add1~22\,
	sumout => \pwms:2:pwm|Add1~1_sumout\,
	cout => \pwms:2:pwm|Add1~2\);

-- Location: LABCELL_X22_Y17_N18
\pwms:2:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~5_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:2:pwm|Add1~2\ ))
-- \pwms:2:pwm|Add1~6\ = CARRY(( !\pwms:2:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:2:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:2:pwm|Add1~2\,
	sumout => \pwms:2:pwm|Add1~5_sumout\,
	cout => \pwms:2:pwm|Add1~6\);

-- Location: LABCELL_X22_Y17_N21
\pwms:2:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~9_sumout\ = SUM(( !\pwms:2:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:2:pwm|Add1~6\ ))
-- \pwms:2:pwm|Add1~10\ = CARRY(( !\pwms:2:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:2:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:2:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:2:pwm|Add1~6\,
	sumout => \pwms:2:pwm|Add1~9_sumout\,
	cout => \pwms:2:pwm|Add1~10\);

-- Location: LABCELL_X22_Y17_N36
\pwms:2:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|pwm_out~0_combout\ = ( \pwms:2:pwm|Add1~9_sumout\ & ( \pwms:2:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:2:pwm|Add1~9_sumout\ & ( 
-- \pwms:2:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( \pwms:2:pwm|Add1~9_sumout\ & ( !\pwms:2:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:2:pwm|Add1~9_sumout\ & ( !\pwms:2:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(8) & (!\pwms:2:pwm|Add1~5_sumout\ $ 
-- (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:2:pwm|ALT_INV_Add1~5_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:2:pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwms:2:pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwms:2:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X21_Y17_N0
\pwms:2:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|pwm_out~2_combout\ = ( \pwms:2:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:2:pwm|half_duty\(0)))) ) ) # ( !\pwms:2:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:2:pwm|half_duty\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:2:pwm|ALT_INV_half_duty\(0),
	dataf => \pwms:2:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:2:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X22_Y17_N24
\pwms:2:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:2:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:2:pwm|Add1~10\,
	sumout => \pwms:2:pwm|Add1~29_sumout\);

-- Location: LABCELL_X22_Y17_N48
\pwms:2:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|pwm_out~3_combout\ = ( \pwms:2:pwm|Add1~29_sumout\ & ( (\pwms:2:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:2:pwm|Add1~25_sumout\)))) ) ) # ( !\pwms:2:pwm|Add1~29_sumout\ & ( 
-- (\pwms:2:pwm|pwm_out~2_combout\ & (\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:2:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000000100000000100100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datab => \pwms:2:pwm|ALT_INV_pwm_out~2_combout\,
	datac => \pwms:0:pwm|ALT_INV_count\(9),
	datad => \pwms:2:pwm|ALT_INV_Add1~25_sumout\,
	dataf => \pwms:2:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:2:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X22_Y17_N30
\pwms:2:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:2:pwm|pwm_out~4_combout\ = ( \pwms:2:pwm|pwm_out~q\ & ( \pwms:2:pwm|pwm_out~3_combout\ & ( !\pwms:2:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:2:pwm|pwm_out~q\ & ( \pwms:2:pwm|pwm_out~3_combout\ & ( (!\pwms:2:pwm|Equal1~4_combout\ & 
-- (\pwms:2:pwm|pwm_out~1_combout\ & \pwms:2:pwm|pwm_out~0_combout\)) ) ) ) # ( \pwms:2:pwm|pwm_out~q\ & ( !\pwms:2:pwm|pwm_out~3_combout\ & ( !\pwms:2:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000010000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:2:pwm|ALT_INV_Equal1~4_combout\,
	datab => \pwms:2:pwm|ALT_INV_pwm_out~1_combout\,
	datac => \pwms:2:pwm|ALT_INV_pwm_out~0_combout\,
	datae => \pwms:2:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:2:pwm|ALT_INV_pwm_out~3_combout\,
	combout => \pwms:2:pwm|pwm_out~4_combout\);

-- Location: FF_X22_Y17_N31
\pwms:2:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:2:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:2:pwm|pwm_out~q\);

-- Location: MLABCELL_X19_Y16_N57
\Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = ( duty_count(0) & ( (!duty_count(2) & (!duty_count(3) & duty_count(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(2),
	datab => ALT_INV_duty_count(3),
	datac => ALT_INV_duty_count(1),
	datae => ALT_INV_duty_count(0),
	combout => \Decoder0~3_combout\);

-- Location: LABCELL_X21_Y17_N42
\duty_value~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~23_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[3][0]~q\) # (\Decoder0~3_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~3_combout\ & \duty_value[3][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~3_combout\,
	datad => \ALT_INV_duty_value[3][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~23_combout\);

-- Location: FF_X21_Y17_N43
\duty_value[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~23_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][0]~q\);

-- Location: MLABCELL_X19_Y17_N3
\duty_value~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~24_combout\ = ( \duty_value[3][1]~q\ & ( \Decoder0~3_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[3][1]~q\ & ( \Decoder0~3_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[3][1]~q\ & ( !\Decoder0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[3][1]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \duty_value~24_combout\);

-- Location: FF_X19_Y17_N4
\duty_value[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~24_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][1]~q\);

-- Location: LABCELL_X21_Y17_N57
\duty_value~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~25_combout\ = ( \duty_value[3][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~3_combout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\)) ) ) ) # ( !\duty_value[3][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~3_combout\ & ((!\Add1~5_sumout\) # 
-- (!\Add1~1_sumout\))) ) ) ) # ( \duty_value[3][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~3_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[3][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~25_combout\);

-- Location: FF_X21_Y17_N58
\duty_value[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~25_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][2]~q\);

-- Location: MLABCELL_X19_Y17_N21
\duty_value~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~26_combout\ = ( \duty_value[3][3]~q\ & ( \Decoder0~3_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[3][3]~q\ & ( \Decoder0~3_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[3][3]~q\ & ( !\Decoder0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[3][3]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \duty_value~26_combout\);

-- Location: FF_X19_Y17_N22
\duty_value[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~26_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][3]~q\);

-- Location: LABCELL_X21_Y17_N21
\duty_value~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~27_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~3_combout\ & ((\duty_value[3][4]~q\))) # (\Decoder0~3_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~3_combout\ & \duty_value[3][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~3_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_duty_value[3][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~27_combout\);

-- Location: FF_X21_Y17_N22
\duty_value[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~27_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][4]~q\);

-- Location: LABCELL_X21_Y17_N27
\duty_value~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~28_combout\ = ( \duty_value[3][5]~q\ & ( \Decoder0~3_combout\ & ( (!\Add1~5_sumout\ & (\Equal0~1_combout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( !\duty_value[3][5]~q\ & ( \Decoder0~3_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Equal0~1_combout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[3][5]~q\ & ( !\Decoder0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001100000010000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[3][5]~q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \duty_value~28_combout\);

-- Location: FF_X21_Y17_N29
\duty_value[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~28_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][5]~q\);

-- Location: MLABCELL_X19_Y16_N6
\duty_value[3][7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[3][7]~29_combout\ = ( !\state.calculate_duty_state~q\ & ( (\ena~input_o\ & (\Decoder0~3_combout\ & \reset_n~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena~input_o\,
	datab => \ALT_INV_Decoder0~3_combout\,
	datac => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_state.calculate_duty_state~q\,
	combout => \duty_value[3][7]~29_combout\);

-- Location: FF_X19_Y16_N37
\duty_value[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[3][7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][6]~q\);

-- Location: FF_X19_Y16_N10
\duty_value[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[3][7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[3][7]~q\);

-- Location: DSP_X24_Y13_N0
\pwms:3:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:3:pwm|Mult0~8_AX_bus\,
	ay => \pwms:3:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:3:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X23_Y13_N42
\pwms:3:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:3:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:3:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X23_Y13_N44
\pwms:3:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(3));

-- Location: FF_X19_Y17_N38
\pwms:3:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(3));

-- Location: MLABCELL_X25_Y13_N12
\pwms:3:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:3:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:3:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X25_Y13_N14
\pwms:3:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(2));

-- Location: FF_X19_Y17_N34
\pwms:3:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(2));

-- Location: LABCELL_X23_Y13_N36
\pwms:3:pwm|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[1]~feeder_combout\ = ( \pwms:3:pwm|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~18\,
	combout => \pwms:3:pwm|half_duty_new[1]~feeder_combout\);

-- Location: FF_X23_Y13_N37
\pwms:3:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(1));

-- Location: FF_X21_Y17_N13
\pwms:3:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(1));

-- Location: FF_X23_Y13_N28
\pwms:3:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(0));

-- Location: FF_X19_Y17_N32
\pwms:3:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(0));

-- Location: MLABCELL_X19_Y17_N30
\pwms:3:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~33_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(0) ) + ( !\pwms:3:pwm|half_duty\(1) ) + ( !VCC ))
-- \pwms:3:pwm|Add1~34\ = CARRY(( !\pwms:3:pwm|half_duty\(0) ) + ( !\pwms:3:pwm|half_duty\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:3:pwm|ALT_INV_half_duty\(1),
	datad => \pwms:3:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:3:pwm|Add1~33_sumout\,
	cout => \pwms:3:pwm|Add1~34\);

-- Location: MLABCELL_X19_Y17_N33
\pwms:3:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~25_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:3:pwm|Add1~34\ ))
-- \pwms:3:pwm|Add1~26\ = CARRY(( !\pwms:3:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:3:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:3:pwm|Add1~34\,
	sumout => \pwms:3:pwm|Add1~25_sumout\,
	cout => \pwms:3:pwm|Add1~26\);

-- Location: MLABCELL_X19_Y17_N36
\pwms:3:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~13_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:3:pwm|Add1~26\ ))
-- \pwms:3:pwm|Add1~14\ = CARRY(( !\pwms:3:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:3:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:3:pwm|Add1~26\,
	sumout => \pwms:3:pwm|Add1~13_sumout\,
	cout => \pwms:3:pwm|Add1~14\);

-- Location: LABCELL_X23_Y13_N30
\pwms:3:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:3:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:3:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y13_N31
\pwms:3:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(4));

-- Location: FF_X19_Y17_N40
\pwms:3:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(4));

-- Location: MLABCELL_X19_Y17_N39
\pwms:3:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~17_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:3:pwm|Add1~14\ ))
-- \pwms:3:pwm|Add1~18\ = CARRY(( !\pwms:3:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:3:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:3:pwm|Add1~14\,
	sumout => \pwms:3:pwm|Add1~17_sumout\,
	cout => \pwms:3:pwm|Add1~18\);

-- Location: LABCELL_X23_Y13_N9
\pwms:3:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:3:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:3:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X23_Y13_N10
\pwms:3:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(5));

-- Location: FF_X19_Y17_N44
\pwms:3:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(5));

-- Location: MLABCELL_X19_Y17_N42
\pwms:3:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~21_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:3:pwm|Add1~18\ ))
-- \pwms:3:pwm|Add1~22\ = CARRY(( !\pwms:3:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:3:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:3:pwm|Add1~18\,
	sumout => \pwms:3:pwm|Add1~21_sumout\,
	cout => \pwms:3:pwm|Add1~22\);

-- Location: LABCELL_X15_Y17_N24
\pwms:3:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|pwm_out~1_combout\ = ( \pwms:3:pwm|Add1~17_sumout\ & ( \pwms:3:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(4) & (\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) $ (\pwms:3:pwm|Add1~13_sumout\)))) ) ) ) # ( !\pwms:3:pwm|Add1~17_sumout\ & ( 
-- \pwms:3:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(4) & (\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) $ (\pwms:3:pwm|Add1~13_sumout\)))) ) ) ) # ( \pwms:3:pwm|Add1~17_sumout\ & ( !\pwms:3:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(4) & 
-- (!\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) $ (\pwms:3:pwm|Add1~13_sumout\)))) ) ) ) # ( !\pwms:3:pwm|Add1~17_sumout\ & ( !\pwms:3:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(4) & (!\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(3) $ 
-- (\pwms:3:pwm|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(4),
	datab => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(3),
	datad => \pwms:3:pwm|ALT_INV_Add1~13_sumout\,
	datae => \pwms:3:pwm|ALT_INV_Add1~17_sumout\,
	dataf => \pwms:3:pwm|ALT_INV_Add1~21_sumout\,
	combout => \pwms:3:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X23_Y13_N18
\pwms:3:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:3:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:3:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X23_Y13_N19
\pwms:3:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(7));

-- Location: FF_X19_Y17_N50
\pwms:3:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(7));

-- Location: LABCELL_X23_Y13_N3
\pwms:3:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:3:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:3:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X23_Y13_N4
\pwms:3:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(6));

-- Location: FF_X19_Y17_N47
\pwms:3:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(6));

-- Location: MLABCELL_X19_Y17_N6
\pwms:3:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Equal1~0_combout\ = ( \pwms:3:pwm|half_duty\(5) & ( (\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(6) $ (\pwms:3:pwm|half_duty\(6)))) ) ) # ( !\pwms:3:pwm|half_duty\(5) & ( (!\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:3:pwm|half_duty\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(6),
	datad => \pwms:3:pwm|ALT_INV_half_duty\(6),
	dataf => \pwms:3:pwm|ALT_INV_half_duty\(5),
	combout => \pwms:3:pwm|Equal1~0_combout\);

-- Location: LABCELL_X23_Y13_N15
\pwms:3:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:3:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:3:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:3:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X23_Y13_N17
\pwms:3:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty_new\(8));

-- Location: FF_X19_Y17_N53
\pwms:3:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:3:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|half_duty\(8));

-- Location: MLABCELL_X19_Y17_N15
\pwms:3:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (\pwms:3:pwm|half_duty\(3) & (!\pwms:0:pwm|count\(2) $ (\pwms:3:pwm|half_duty\(2)))) ) ) # ( !\pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (!\pwms:3:pwm|half_duty\(3) & 
-- (!\pwms:0:pwm|count\(2) $ (\pwms:3:pwm|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:3:pwm|ALT_INV_half_duty\(2),
	datad => \pwms:3:pwm|ALT_INV_half_duty\(3),
	dataf => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	combout => \pwms:3:pwm|Equal1~2_combout\);

-- Location: LABCELL_X21_Y17_N12
\pwms:3:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Equal1~1_combout\ = ( \pwms:3:pwm|half_duty\(1) & ( \pwms:0:pwm|count[0]~DUPLICATE_q\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(9) & \pwms:3:pwm|half_duty\(0))) ) ) ) # ( !\pwms:3:pwm|half_duty\(1) & ( 
-- \pwms:0:pwm|count[0]~DUPLICATE_q\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(9) & \pwms:3:pwm|half_duty\(0))) ) ) ) # ( \pwms:3:pwm|half_duty\(1) & ( !\pwms:0:pwm|count[0]~DUPLICATE_q\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count\(9) & !\pwms:3:pwm|half_duty\(0))) ) ) ) # ( !\pwms:3:pwm|half_duty\(1) & ( !\pwms:0:pwm|count[0]~DUPLICATE_q\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(9) & !\pwms:3:pwm|half_duty\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000001100000000000000000000110000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count\(9),
	datad => \pwms:3:pwm|ALT_INV_half_duty\(0),
	datae => \pwms:3:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \pwms:3:pwm|Equal1~1_combout\);

-- Location: LABCELL_X21_Y17_N18
\pwms:3:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Equal1~3_combout\ = ( \pwms:3:pwm|Equal1~1_combout\ & ( (\pwms:3:pwm|Equal1~2_combout\ & (!\pwms:0:pwm|count\(4) $ (\pwms:3:pwm|half_duty\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(4),
	datac => \pwms:3:pwm|ALT_INV_Equal1~2_combout\,
	datad => \pwms:3:pwm|ALT_INV_half_duty\(4),
	dataf => \pwms:3:pwm|ALT_INV_Equal1~1_combout\,
	combout => \pwms:3:pwm|Equal1~3_combout\);

-- Location: LABCELL_X21_Y17_N39
\pwms:3:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Equal1~4_combout\ = ( \pwms:3:pwm|half_duty\(8) & ( \pwms:3:pwm|Equal1~3_combout\ & ( (\pwms:0:pwm|count\(8) & (\pwms:3:pwm|Equal1~0_combout\ & (!\pwms:3:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:3:pwm|half_duty\(8) & ( 
-- \pwms:3:pwm|Equal1~3_combout\ & ( (!\pwms:0:pwm|count\(8) & (\pwms:3:pwm|Equal1~0_combout\ & (!\pwms:3:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:3:pwm|ALT_INV_half_duty\(7),
	datac => \pwms:3:pwm|ALT_INV_Equal1~0_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	datae => \pwms:3:pwm|ALT_INV_half_duty\(8),
	dataf => \pwms:3:pwm|ALT_INV_Equal1~3_combout\,
	combout => \pwms:3:pwm|Equal1~4_combout\);

-- Location: MLABCELL_X19_Y17_N45
\pwms:3:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~1_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:3:pwm|Add1~22\ ))
-- \pwms:3:pwm|Add1~2\ = CARRY(( !\pwms:3:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:3:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:3:pwm|Add1~22\,
	sumout => \pwms:3:pwm|Add1~1_sumout\,
	cout => \pwms:3:pwm|Add1~2\);

-- Location: MLABCELL_X19_Y17_N48
\pwms:3:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~5_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:3:pwm|Add1~2\ ))
-- \pwms:3:pwm|Add1~6\ = CARRY(( !\pwms:3:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:3:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:3:pwm|Add1~2\,
	sumout => \pwms:3:pwm|Add1~5_sumout\,
	cout => \pwms:3:pwm|Add1~6\);

-- Location: MLABCELL_X19_Y17_N51
\pwms:3:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~9_sumout\ = SUM(( !\pwms:3:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:3:pwm|Add1~6\ ))
-- \pwms:3:pwm|Add1~10\ = CARRY(( !\pwms:3:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:3:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:3:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:3:pwm|Add1~6\,
	sumout => \pwms:3:pwm|Add1~9_sumout\,
	cout => \pwms:3:pwm|Add1~10\);

-- Location: LABCELL_X15_Y17_N6
\pwms:3:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|pwm_out~0_combout\ = ( \pwms:3:pwm|Add1~5_sumout\ & ( \pwms:3:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:3:pwm|Add1~9_sumout\)))) ) ) ) # ( !\pwms:3:pwm|Add1~5_sumout\ & ( 
-- \pwms:3:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:3:pwm|Add1~9_sumout\)))) ) ) ) # ( \pwms:3:pwm|Add1~5_sumout\ & ( !\pwms:3:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & 
-- (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:3:pwm|Add1~9_sumout\)))) ) ) ) # ( !\pwms:3:pwm|Add1~5_sumout\ & ( !\pwms:3:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ 
-- (\pwms:3:pwm|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:3:pwm|ALT_INV_Add1~9_sumout\,
	datae => \pwms:3:pwm|ALT_INV_Add1~5_sumout\,
	dataf => \pwms:3:pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwms:3:pwm|pwm_out~0_combout\);

-- Location: MLABCELL_X19_Y17_N54
\pwms:3:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:3:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:3:pwm|Add1~10\,
	sumout => \pwms:3:pwm|Add1~29_sumout\);

-- Location: LABCELL_X21_Y17_N45
\pwms:3:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|pwm_out~2_combout\ = ( \pwms:3:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:3:pwm|half_duty\(0)))) ) ) # ( !\pwms:3:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:3:pwm|half_duty\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \pwms:3:pwm|ALT_INV_half_duty\(0),
	dataf => \pwms:3:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:3:pwm|pwm_out~2_combout\);

-- Location: MLABCELL_X19_Y17_N12
\pwms:3:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|pwm_out~3_combout\ = ( \pwms:0:pwm|count\(9) & ( (!\pwms:3:pwm|Add1~29_sumout\ & (\pwms:3:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:3:pwm|Add1~25_sumout\)))) ) ) # ( !\pwms:0:pwm|count\(9) & ( (\pwms:3:pwm|Add1~29_sumout\ & 
-- (\pwms:3:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:3:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000100000100000000100000100000000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:3:pwm|ALT_INV_Add1~29_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:3:pwm|ALT_INV_Add1~25_sumout\,
	datad => \pwms:3:pwm|ALT_INV_pwm_out~2_combout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:3:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X15_Y17_N15
\pwms:3:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:3:pwm|pwm_out~4_combout\ = ( \pwms:3:pwm|pwm_out~q\ & ( \pwms:3:pwm|pwm_out~3_combout\ & ( !\pwms:3:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:3:pwm|pwm_out~q\ & ( \pwms:3:pwm|pwm_out~3_combout\ & ( (\pwms:3:pwm|pwm_out~1_combout\ & 
-- (!\pwms:3:pwm|Equal1~4_combout\ & \pwms:3:pwm|pwm_out~0_combout\)) ) ) ) # ( \pwms:3:pwm|pwm_out~q\ & ( !\pwms:3:pwm|pwm_out~3_combout\ & ( !\pwms:3:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:3:pwm|ALT_INV_pwm_out~1_combout\,
	datab => \pwms:3:pwm|ALT_INV_Equal1~4_combout\,
	datac => \pwms:3:pwm|ALT_INV_pwm_out~0_combout\,
	datae => \pwms:3:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:3:pwm|ALT_INV_pwm_out~3_combout\,
	combout => \pwms:3:pwm|pwm_out~4_combout\);

-- Location: FF_X15_Y17_N16
\pwms:3:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:3:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:3:pwm|pwm_out~q\);

-- Location: MLABCELL_X19_Y16_N30
\Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = ( duty_count(2) & ( (!duty_count(1) & (!duty_count(0) & !duty_count(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(1),
	datac => ALT_INV_duty_count(0),
	datad => ALT_INV_duty_count(3),
	datae => ALT_INV_duty_count(2),
	combout => \Decoder0~4_combout\);

-- Location: MLABCELL_X19_Y19_N39
\duty_value~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~30_combout\ = ( \duty_value[4][0]~q\ & ( \Equal0~1_combout\ ) ) # ( !\duty_value[4][0]~q\ & ( \Equal0~1_combout\ & ( \Decoder0~4_combout\ ) ) ) # ( \duty_value[4][0]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~4_combout\,
	datae => \ALT_INV_duty_value[4][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~30_combout\);

-- Location: FF_X19_Y19_N40
\duty_value[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~30_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][0]~q\);

-- Location: LABCELL_X18_Y19_N48
\duty_value~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~31_combout\ = ( \duty_value[4][1]~q\ & ( \Decoder0~4_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[4][1]~q\ & ( \Decoder0~4_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[4][1]~q\ & ( !\Decoder0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[4][1]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \duty_value~31_combout\);

-- Location: FF_X18_Y19_N50
\duty_value[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~31_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][1]~q\);

-- Location: LABCELL_X18_Y19_N0
\duty_value~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~32_combout\ = ( \duty_value[4][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~4_combout\) # ((!\Add1~1_sumout\) # (!\Add1~5_sumout\)) ) ) ) # ( !\duty_value[4][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~4_combout\ & ((!\Add1~1_sumout\) # 
-- (!\Add1~5_sumout\))) ) ) ) # ( \duty_value[4][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~4_combout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[4][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~32_combout\);

-- Location: FF_X18_Y19_N1
\duty_value[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~32_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][2]~q\);

-- Location: LABCELL_X18_Y18_N54
\duty_value~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~33_combout\ = ( \duty_value[4][3]~q\ & ( \Decoder0~4_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[4][3]~q\ & ( \Decoder0~4_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[4][3]~q\ & ( !\Decoder0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000010000000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[4][3]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \duty_value~33_combout\);

-- Location: FF_X18_Y18_N55
\duty_value[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~33_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][3]~q\);

-- Location: LABCELL_X18_Y19_N21
\duty_value~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~34_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~4_combout\ & ((\duty_value[4][4]~q\))) # (\Decoder0~4_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~4_combout\ & \duty_value[4][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~4_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_duty_value[4][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~34_combout\);

-- Location: FF_X18_Y19_N22
\duty_value[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~34_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][4]~q\);

-- Location: LABCELL_X17_Y18_N18
\duty_value~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~35_combout\ = ( \duty_value[4][5]~q\ & ( \Decoder0~4_combout\ & ( (!\Add1~5_sumout\ & (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[4][5]~q\ & ( \Decoder0~4_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[4][5]~q\ & ( !\Decoder0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_duty_value[4][5]~q\,
	dataf => \ALT_INV_Decoder0~4_combout\,
	combout => \duty_value~35_combout\);

-- Location: FF_X17_Y18_N19
\duty_value[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~35_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][5]~q\);

-- Location: MLABCELL_X19_Y16_N48
\duty_value[4][7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[4][7]~36_combout\ = ( !\state.calculate_duty_state~q\ & ( (\reset_n~input_o\ & (\Decoder0~4_combout\ & \ena~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \ALT_INV_Decoder0~4_combout\,
	datac => \ALT_INV_ena~input_o\,
	datae => \ALT_INV_state.calculate_duty_state~q\,
	combout => \duty_value[4][7]~36_combout\);

-- Location: FF_X18_Y17_N46
\duty_value[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[4][7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][6]~q\);

-- Location: FF_X18_Y17_N44
\duty_value[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[4][7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[4][7]~q\);

-- Location: DSP_X16_Y23_N0
\pwms:4:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:4:pwm|Mult0~8_AX_bus\,
	ay => \pwms:4:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:4:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X15_Y23_N57
\pwms:4:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:4:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:4:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X15_Y23_N58
\pwms:4:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(5));

-- Location: FF_X15_Y21_N14
\pwms:4:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(5));

-- Location: LABCELL_X15_Y23_N27
\pwms:4:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:4:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:4:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X15_Y23_N28
\pwms:4:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(6));

-- Location: FF_X15_Y21_N16
\pwms:4:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(6));

-- Location: LABCELL_X15_Y21_N51
\pwms:4:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Equal1~0_combout\ = ( \pwms:4:pwm|half_duty\(6) & ( (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(5) $ (\pwms:4:pwm|half_duty\(5)))) ) ) # ( !\pwms:4:pwm|half_duty\(6) & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(5) $ 
-- (\pwms:4:pwm|half_duty\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:4:pwm|ALT_INV_half_duty\(5),
	datad => \pwms:0:pwm|ALT_INV_count\(6),
	dataf => \pwms:4:pwm|ALT_INV_half_duty\(6),
	combout => \pwms:4:pwm|Equal1~0_combout\);

-- Location: LABCELL_X15_Y23_N21
\pwms:4:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:4:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:4:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X15_Y23_N22
\pwms:4:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(7));

-- Location: FF_X15_Y21_N19
\pwms:4:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(7));

-- Location: LABCELL_X15_Y23_N36
\pwms:4:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:4:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:4:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X15_Y23_N37
\pwms:4:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(8));

-- Location: FF_X15_Y21_N22
\pwms:4:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(8));

-- Location: LABCELL_X15_Y23_N45
\pwms:4:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:4:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:4:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X15_Y23_N46
\pwms:4:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(4));

-- Location: FF_X15_Y21_N11
\pwms:4:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(4));

-- Location: LABCELL_X15_Y23_N12
\pwms:4:pwm|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[0]~feeder_combout\ = ( \pwms:4:pwm|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~17\,
	combout => \pwms:4:pwm|half_duty_new[0]~feeder_combout\);

-- Location: FF_X15_Y23_N14
\pwms:4:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(0));

-- Location: FF_X15_Y21_N56
\pwms:4:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(0));

-- Location: LABCELL_X15_Y23_N3
\pwms:4:pwm|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[1]~feeder_combout\ = ( \pwms:4:pwm|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~18\,
	combout => \pwms:4:pwm|half_duty_new[1]~feeder_combout\);

-- Location: FF_X15_Y23_N4
\pwms:4:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(1));

-- Location: FF_X15_Y21_N37
\pwms:4:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(1));

-- Location: LABCELL_X15_Y21_N36
\pwms:4:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Equal1~1_combout\ = ( !\pwms:0:pwm|count\(9) & ( (!\pwms:4:pwm|half_duty\(0) & (!\pwms:0:pwm|count\(0) & (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:4:pwm|half_duty\(1))))) # (\pwms:4:pwm|half_duty\(0) & (\pwms:0:pwm|count\(0) & 
-- (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:4:pwm|half_duty\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_half_duty\(0),
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count\(0),
	datad => \pwms:4:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:4:pwm|Equal1~1_combout\);

-- Location: LABCELL_X15_Y23_N33
\pwms:4:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:4:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:4:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X15_Y23_N34
\pwms:4:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(2));

-- Location: FF_X15_Y21_N4
\pwms:4:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(2));

-- Location: LABCELL_X15_Y23_N48
\pwms:4:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:4:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:4:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:4:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X15_Y23_N49
\pwms:4:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty_new\(3));

-- Location: FF_X15_Y21_N8
\pwms:4:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:4:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|half_duty\(3));

-- Location: LABCELL_X15_Y21_N45
\pwms:4:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Equal1~2_combout\ = ( \pwms:4:pwm|half_duty\(3) & ( (\pwms:0:pwm|count\(3) & (!\pwms:0:pwm|count\(2) $ (\pwms:4:pwm|half_duty\(2)))) ) ) # ( !\pwms:4:pwm|half_duty\(3) & ( (!\pwms:0:pwm|count\(3) & (!\pwms:0:pwm|count\(2) $ 
-- (\pwms:4:pwm|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:0:pwm|ALT_INV_count\(3),
	datad => \pwms:4:pwm|ALT_INV_half_duty\(2),
	dataf => \pwms:4:pwm|ALT_INV_half_duty\(3),
	combout => \pwms:4:pwm|Equal1~2_combout\);

-- Location: LABCELL_X15_Y21_N48
\pwms:4:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Equal1~3_combout\ = ( \pwms:0:pwm|count\(4) & ( (\pwms:4:pwm|half_duty\(4) & (\pwms:4:pwm|Equal1~1_combout\ & \pwms:4:pwm|Equal1~2_combout\)) ) ) # ( !\pwms:0:pwm|count\(4) & ( (!\pwms:4:pwm|half_duty\(4) & (\pwms:4:pwm|Equal1~1_combout\ & 
-- \pwms:4:pwm|Equal1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:4:pwm|ALT_INV_half_duty\(4),
	datac => \pwms:4:pwm|ALT_INV_Equal1~1_combout\,
	datad => \pwms:4:pwm|ALT_INV_Equal1~2_combout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(4),
	combout => \pwms:4:pwm|Equal1~3_combout\);

-- Location: LABCELL_X15_Y21_N30
\pwms:4:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Equal1~4_combout\ = ( \pwms:0:pwm|count\(7) & ( \pwms:4:pwm|Equal1~3_combout\ & ( (\pwms:4:pwm|Equal1~0_combout\ & (\pwms:4:pwm|half_duty\(7) & (!\pwms:4:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) ) ) ) # ( !\pwms:0:pwm|count\(7) & ( 
-- \pwms:4:pwm|Equal1~3_combout\ & ( (\pwms:4:pwm|Equal1~0_combout\ & (!\pwms:4:pwm|half_duty\(7) & (!\pwms:4:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_Equal1~0_combout\,
	datab => \pwms:4:pwm|ALT_INV_half_duty\(7),
	datac => \pwms:4:pwm|ALT_INV_half_duty\(8),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:0:pwm|ALT_INV_count\(7),
	dataf => \pwms:4:pwm|ALT_INV_Equal1~3_combout\,
	combout => \pwms:4:pwm|Equal1~4_combout\);

-- Location: LABCELL_X15_Y21_N0
\pwms:4:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~33_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(0) ) + ( !\pwms:4:pwm|half_duty\(1) ) + ( !VCC ))
-- \pwms:4:pwm|Add1~34\ = CARRY(( !\pwms:4:pwm|half_duty\(0) ) + ( !\pwms:4:pwm|half_duty\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:4:pwm|ALT_INV_half_duty\(1),
	datad => \pwms:4:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:4:pwm|Add1~33_sumout\,
	cout => \pwms:4:pwm|Add1~34\);

-- Location: LABCELL_X15_Y21_N3
\pwms:4:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~25_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:4:pwm|Add1~34\ ))
-- \pwms:4:pwm|Add1~26\ = CARRY(( !\pwms:4:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:4:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:4:pwm|Add1~34\,
	sumout => \pwms:4:pwm|Add1~25_sumout\,
	cout => \pwms:4:pwm|Add1~26\);

-- Location: LABCELL_X15_Y21_N6
\pwms:4:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~13_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:4:pwm|Add1~26\ ))
-- \pwms:4:pwm|Add1~14\ = CARRY(( !\pwms:4:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:4:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:4:pwm|Add1~26\,
	sumout => \pwms:4:pwm|Add1~13_sumout\,
	cout => \pwms:4:pwm|Add1~14\);

-- Location: LABCELL_X15_Y21_N9
\pwms:4:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~17_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:4:pwm|Add1~14\ ))
-- \pwms:4:pwm|Add1~18\ = CARRY(( !\pwms:4:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:4:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:4:pwm|Add1~14\,
	sumout => \pwms:4:pwm|Add1~17_sumout\,
	cout => \pwms:4:pwm|Add1~18\);

-- Location: LABCELL_X15_Y21_N12
\pwms:4:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~21_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:4:pwm|Add1~18\ ))
-- \pwms:4:pwm|Add1~22\ = CARRY(( !\pwms:4:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:4:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:4:pwm|Add1~18\,
	sumout => \pwms:4:pwm|Add1~21_sumout\,
	cout => \pwms:4:pwm|Add1~22\);

-- Location: LABCELL_X15_Y21_N15
\pwms:4:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~1_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:4:pwm|Add1~22\ ))
-- \pwms:4:pwm|Add1~2\ = CARRY(( !\pwms:4:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:4:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:4:pwm|Add1~22\,
	sumout => \pwms:4:pwm|Add1~1_sumout\,
	cout => \pwms:4:pwm|Add1~2\);

-- Location: LABCELL_X15_Y21_N18
\pwms:4:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~5_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:4:pwm|Add1~2\ ))
-- \pwms:4:pwm|Add1~6\ = CARRY(( !\pwms:4:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:4:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:4:pwm|Add1~2\,
	sumout => \pwms:4:pwm|Add1~5_sumout\,
	cout => \pwms:4:pwm|Add1~6\);

-- Location: LABCELL_X15_Y21_N21
\pwms:4:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~9_sumout\ = SUM(( !\pwms:4:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:4:pwm|Add1~6\ ))
-- \pwms:4:pwm|Add1~10\ = CARRY(( !\pwms:4:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:4:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:4:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:4:pwm|Add1~6\,
	sumout => \pwms:4:pwm|Add1~9_sumout\,
	cout => \pwms:4:pwm|Add1~10\);

-- Location: LABCELL_X15_Y21_N57
\pwms:4:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|pwm_out~0_combout\ = ( \pwms:0:pwm|count\(8) & ( \pwms:4:pwm|Add1~1_sumout\ & ( (\pwms:4:pwm|Add1~9_sumout\ & (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:4:pwm|Add1~5_sumout\)))) ) ) ) # ( !\pwms:0:pwm|count\(8) & ( 
-- \pwms:4:pwm|Add1~1_sumout\ & ( (!\pwms:4:pwm|Add1~9_sumout\ & (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:4:pwm|Add1~5_sumout\)))) ) ) ) # ( \pwms:0:pwm|count\(8) & ( !\pwms:4:pwm|Add1~1_sumout\ & ( (\pwms:4:pwm|Add1~9_sumout\ & 
-- (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:4:pwm|Add1~5_sumout\)))) ) ) ) # ( !\pwms:0:pwm|count\(8) & ( !\pwms:4:pwm|Add1~1_sumout\ & ( (!\pwms:4:pwm|Add1~9_sumout\ & (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ 
-- (\pwms:4:pwm|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_Add1~9_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:4:pwm|ALT_INV_Add1~5_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(8),
	dataf => \pwms:4:pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwms:4:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X15_Y21_N39
\pwms:4:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|pwm_out~2_combout\ = ( \pwms:0:pwm|count\(0) & ( (\pwms:4:pwm|half_duty\(0) & (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:4:pwm|Add1~33_sumout\))) ) ) # ( !\pwms:0:pwm|count\(0) & ( (!\pwms:4:pwm|half_duty\(0) & 
-- (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:4:pwm|Add1~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_half_duty\(0),
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \pwms:4:pwm|ALT_INV_Add1~33_sumout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(0),
	combout => \pwms:4:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X15_Y21_N24
\pwms:4:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:4:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:4:pwm|Add1~10\,
	sumout => \pwms:4:pwm|Add1~29_sumout\);

-- Location: LABCELL_X15_Y21_N42
\pwms:4:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|pwm_out~3_combout\ = ( \pwms:4:pwm|Add1~29_sumout\ & ( (\pwms:4:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:4:pwm|Add1~25_sumout\)))) ) ) # ( !\pwms:4:pwm|Add1~29_sumout\ & ( 
-- (\pwms:4:pwm|pwm_out~2_combout\ & (\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:4:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000000100000000100100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datab => \pwms:4:pwm|ALT_INV_pwm_out~2_combout\,
	datac => \pwms:0:pwm|ALT_INV_count\(9),
	datad => \pwms:4:pwm|ALT_INV_Add1~25_sumout\,
	dataf => \pwms:4:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:4:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X17_Y21_N27
\pwms:4:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(5) & ( \pwms:4:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (\pwms:4:pwm|Add1~21_sumout\ & (!\pwms:4:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:0:pwm|count\(5) & ( 
-- \pwms:4:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (!\pwms:4:pwm|Add1~21_sumout\ & (!\pwms:4:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( \pwms:0:pwm|count\(5) & ( !\pwms:4:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & 
-- (\pwms:4:pwm|Add1~21_sumout\ & (!\pwms:4:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:0:pwm|count\(5) & ( !\pwms:4:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & (!\pwms:4:pwm|Add1~21_sumout\ & (!\pwms:4:pwm|Add1~17_sumout\ $ 
-- (\pwms:0:pwm|count\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_Add1~17_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(3),
	datac => \pwms:0:pwm|ALT_INV_count\(4),
	datad => \pwms:4:pwm|ALT_INV_Add1~21_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(5),
	dataf => \pwms:4:pwm|ALT_INV_Add1~13_sumout\,
	combout => \pwms:4:pwm|pwm_out~1_combout\);

-- Location: MLABCELL_X14_Y21_N15
\pwms:4:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:4:pwm|pwm_out~4_combout\ = ( \pwms:4:pwm|pwm_out~q\ & ( \pwms:4:pwm|pwm_out~1_combout\ & ( !\pwms:4:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:4:pwm|pwm_out~q\ & ( \pwms:4:pwm|pwm_out~1_combout\ & ( (!\pwms:4:pwm|Equal1~4_combout\ & 
-- (\pwms:4:pwm|pwm_out~0_combout\ & \pwms:4:pwm|pwm_out~3_combout\)) ) ) ) # ( \pwms:4:pwm|pwm_out~q\ & ( !\pwms:4:pwm|pwm_out~1_combout\ & ( !\pwms:4:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000010000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:4:pwm|ALT_INV_Equal1~4_combout\,
	datab => \pwms:4:pwm|ALT_INV_pwm_out~0_combout\,
	datac => \pwms:4:pwm|ALT_INV_pwm_out~3_combout\,
	datae => \pwms:4:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:4:pwm|ALT_INV_pwm_out~1_combout\,
	combout => \pwms:4:pwm|pwm_out~4_combout\);

-- Location: FF_X14_Y21_N16
\pwms:4:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:4:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:4:pwm|pwm_out~q\);

-- Location: LABCELL_X17_Y16_N21
\Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = ( duty_count(2) & ( (!duty_count(1) & (duty_count(0) & !duty_count(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(1),
	datac => ALT_INV_duty_count(0),
	datad => ALT_INV_duty_count(3),
	dataf => ALT_INV_duty_count(2),
	combout => \Decoder0~5_combout\);

-- Location: LABCELL_X15_Y17_N0
\duty_value~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~37_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[5][0]~q\) # (\Decoder0~5_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~5_combout\ & \duty_value[5][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~5_combout\,
	datad => \ALT_INV_duty_value[5][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~37_combout\);

-- Location: FF_X15_Y17_N2
\duty_value[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~37_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][0]~q\);

-- Location: LABCELL_X15_Y17_N18
\duty_value~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~38_combout\ = ( \duty_value[5][1]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~5_sumout\) # ((!\Decoder0~5_combout\) # ((!\Add1~9_sumout\) # (!\Add1~1_sumout\))) ) ) ) # ( !\duty_value[5][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~5_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[5][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Decoder0~5_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[5][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~38_combout\);

-- Location: FF_X15_Y17_N19
\duty_value[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~38_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][1]~q\);

-- Location: LABCELL_X15_Y17_N3
\duty_value~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~39_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~5_combout\ & (((\duty_value[5][2]~q\)))) # (\Decoder0~5_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\)))) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~5_combout\ & \duty_value[5][2]~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110010111111100011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Decoder0~5_combout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_duty_value[5][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~39_combout\);

-- Location: FF_X15_Y17_N4
\duty_value[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~39_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][2]~q\);

-- Location: LABCELL_X15_Y17_N48
\duty_value~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~40_combout\ = ( \duty_value[5][3]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~5_sumout\) # ((!\Decoder0~5_combout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\))) ) ) ) # ( !\duty_value[5][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~5_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\)))) ) ) ) # ( \duty_value[5][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110010001000101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Decoder0~5_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[5][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~40_combout\);

-- Location: FF_X15_Y17_N49
\duty_value[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~40_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][3]~q\);

-- Location: LABCELL_X17_Y16_N9
\duty_value~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~41_combout\ = ( \duty_value[5][4]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~5_combout\) # (!\Add1~5_sumout\) ) ) ) # ( !\duty_value[5][4]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~5_combout\ & !\Add1~5_sumout\) ) ) ) # ( \duty_value[5][4]~q\ & 
-- ( !\Equal0~1_combout\ & ( !\Decoder0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010000010100001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~5_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[5][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~41_combout\);

-- Location: FF_X17_Y16_N11
\duty_value[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~41_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][4]~q\);

-- Location: LABCELL_X15_Y17_N54
\duty_value~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~42_combout\ = ( \duty_value[5][5]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~5_combout\) # ((!\Add1~5_sumout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( !\duty_value[5][5]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Decoder0~5_combout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[5][5]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000100010001000001110111011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Decoder0~5_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[5][5]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~42_combout\);

-- Location: FF_X15_Y17_N55
\duty_value[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~42_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][5]~q\);

-- Location: LABCELL_X17_Y16_N36
\duty_value[5][7]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[5][7]~43_combout\ = ( \ena~input_o\ & ( (\Decoder0~5_combout\ & (\reset_n~input_o\ & !\state.calculate_duty_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~5_combout\,
	datab => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_state.calculate_duty_state~q\,
	datae => \ALT_INV_ena~input_o\,
	combout => \duty_value[5][7]~43_combout\);

-- Location: FF_X17_Y17_N32
\duty_value[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \duty_value~7_combout\,
	sload => VCC,
	ena => \duty_value[5][7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][6]~q\);

-- Location: FF_X17_Y17_N53
\duty_value[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[5][7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[5][7]~q\);

-- Location: DSP_X16_Y17_N0
\pwms:5:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:5:pwm|Mult0~8_AX_bus\,
	ay => \pwms:5:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:5:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X23_Y17_N33
\pwms:5:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:5:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:5:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:5:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y17_N34
\pwms:5:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:5:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(4));

-- Location: FF_X17_Y19_N40
\pwms:5:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(4));

-- Location: FF_X17_Y19_N29
\pwms:5:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|Mult0~19\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(2));

-- Location: FF_X17_Y19_N35
\pwms:5:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(2));

-- Location: LABCELL_X17_Y16_N42
\pwms:5:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:5:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:5:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:5:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X17_Y16_N44
\pwms:5:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:5:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(3));

-- Location: FF_X17_Y19_N37
\pwms:5:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(3));

-- Location: LABCELL_X18_Y19_N18
\pwms:5:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:5:pwm|half_duty\(2) & (!\pwms:5:pwm|half_duty\(3) $ (\pwms:0:pwm|count\(3)))) ) ) # ( !\pwms:0:pwm|count\(2) & ( (!\pwms:5:pwm|half_duty\(2) & (!\pwms:5:pwm|half_duty\(3) $ 
-- (\pwms:0:pwm|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:5:pwm|ALT_INV_half_duty\(2),
	datac => \pwms:5:pwm|ALT_INV_half_duty\(3),
	datad => \pwms:0:pwm|ALT_INV_count\(3),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:5:pwm|Equal1~2_combout\);

-- Location: FF_X23_Y17_N13
\pwms:5:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(0));

-- Location: FF_X17_Y19_N32
\pwms:5:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(0));

-- Location: FF_X17_Y19_N19
\pwms:5:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(1));

-- Location: FF_X18_Y19_N28
\pwms:5:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(1));

-- Location: LABCELL_X18_Y19_N27
\pwms:5:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Equal1~1_combout\ = ( \pwms:5:pwm|half_duty\(1) & ( \pwms:0:pwm|count[1]~DUPLICATE_q\ & ( (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:5:pwm|half_duty\(0)))) ) ) ) # ( !\pwms:5:pwm|half_duty\(1) & ( 
-- !\pwms:0:pwm|count[1]~DUPLICATE_q\ & ( (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:5:pwm|half_duty\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010000000000000000000000000000000001010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(9),
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:5:pwm|ALT_INV_half_duty\(0),
	datae => \pwms:5:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \pwms:5:pwm|Equal1~1_combout\);

-- Location: LABCELL_X17_Y19_N3
\pwms:5:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Equal1~3_combout\ = ( \pwms:0:pwm|count\(4) & ( (\pwms:5:pwm|half_duty\(4) & (\pwms:5:pwm|Equal1~2_combout\ & \pwms:5:pwm|Equal1~1_combout\)) ) ) # ( !\pwms:0:pwm|count\(4) & ( (!\pwms:5:pwm|half_duty\(4) & (\pwms:5:pwm|Equal1~2_combout\ & 
-- \pwms:5:pwm|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:5:pwm|ALT_INV_half_duty\(4),
	datac => \pwms:5:pwm|ALT_INV_Equal1~2_combout\,
	datad => \pwms:5:pwm|ALT_INV_Equal1~1_combout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(4),
	combout => \pwms:5:pwm|Equal1~3_combout\);

-- Location: LABCELL_X17_Y18_N27
\pwms:5:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:5:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:5:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:5:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X17_Y18_N28
\pwms:5:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:5:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(5));

-- Location: FF_X17_Y19_N43
\pwms:5:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(5));

-- Location: FF_X17_Y16_N41
\pwms:5:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|Mult0~23\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(6));

-- Location: FF_X17_Y19_N46
\pwms:5:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(6));

-- Location: LABCELL_X17_Y19_N0
\pwms:5:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Equal1~0_combout\ = ( \pwms:5:pwm|half_duty\(6) & ( (\pwms:0:pwm|count\(6) & (!\pwms:5:pwm|half_duty\(5) $ (\pwms:0:pwm|count\(5)))) ) ) # ( !\pwms:5:pwm|half_duty\(6) & ( (!\pwms:0:pwm|count\(6) & (!\pwms:5:pwm|half_duty\(5) $ 
-- (\pwms:0:pwm|count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:5:pwm|ALT_INV_half_duty\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(5),
	datad => \pwms:0:pwm|ALT_INV_count\(6),
	dataf => \pwms:5:pwm|ALT_INV_half_duty\(6),
	combout => \pwms:5:pwm|Equal1~0_combout\);

-- Location: FF_X17_Y19_N25
\pwms:5:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|Mult0~24\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(7));

-- Location: FF_X17_Y19_N49
\pwms:5:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(7));

-- Location: LABCELL_X17_Y18_N24
\pwms:5:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:5:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:5:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:5:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X17_Y18_N26
\pwms:5:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:5:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty_new\(8));

-- Location: FF_X17_Y19_N52
\pwms:5:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:5:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|half_duty\(8));

-- Location: LABCELL_X17_Y19_N18
\pwms:5:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Equal1~4_combout\ = ( \pwms:5:pwm|half_duty\(8) & ( \pwms:0:pwm|count\(8) & ( (\pwms:5:pwm|Equal1~3_combout\ & (\pwms:5:pwm|Equal1~0_combout\ & (!\pwms:0:pwm|count\(7) $ (\pwms:5:pwm|half_duty\(7))))) ) ) ) # ( !\pwms:5:pwm|half_duty\(8) & ( 
-- !\pwms:0:pwm|count\(8) & ( (\pwms:5:pwm|Equal1~3_combout\ & (\pwms:5:pwm|Equal1~0_combout\ & (!\pwms:0:pwm|count\(7) $ (\pwms:5:pwm|half_duty\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000001000000000000000000000000000000000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:5:pwm|ALT_INV_Equal1~3_combout\,
	datab => \pwms:0:pwm|ALT_INV_count\(7),
	datac => \pwms:5:pwm|ALT_INV_Equal1~0_combout\,
	datad => \pwms:5:pwm|ALT_INV_half_duty\(7),
	datae => \pwms:5:pwm|ALT_INV_half_duty\(8),
	dataf => \pwms:0:pwm|ALT_INV_count\(8),
	combout => \pwms:5:pwm|Equal1~4_combout\);

-- Location: LABCELL_X17_Y19_N30
\pwms:5:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~33_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(0) ) + ( !\pwms:5:pwm|half_duty\(1) ) + ( !VCC ))
-- \pwms:5:pwm|Add1~34\ = CARRY(( !\pwms:5:pwm|half_duty\(0) ) + ( !\pwms:5:pwm|half_duty\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:5:pwm|ALT_INV_half_duty\(1),
	datad => \pwms:5:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:5:pwm|Add1~33_sumout\,
	cout => \pwms:5:pwm|Add1~34\);

-- Location: LABCELL_X17_Y19_N33
\pwms:5:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~25_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:5:pwm|Add1~34\ ))
-- \pwms:5:pwm|Add1~26\ = CARRY(( !\pwms:5:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:5:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:5:pwm|Add1~34\,
	sumout => \pwms:5:pwm|Add1~25_sumout\,
	cout => \pwms:5:pwm|Add1~26\);

-- Location: LABCELL_X18_Y19_N12
\pwms:5:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|pwm_out~2_combout\ = ( \pwms:5:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:5:pwm|half_duty\(0)))) ) ) # ( !\pwms:5:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count[0]~DUPLICATE_q\ $ (\pwms:5:pwm|half_duty\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \pwms:5:pwm|ALT_INV_half_duty\(0),
	dataf => \pwms:5:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:5:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X17_Y19_N36
\pwms:5:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~13_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:5:pwm|Add1~26\ ))
-- \pwms:5:pwm|Add1~14\ = CARRY(( !\pwms:5:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:5:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:5:pwm|Add1~26\,
	sumout => \pwms:5:pwm|Add1~13_sumout\,
	cout => \pwms:5:pwm|Add1~14\);

-- Location: LABCELL_X17_Y19_N39
\pwms:5:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~17_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:5:pwm|Add1~14\ ))
-- \pwms:5:pwm|Add1~18\ = CARRY(( !\pwms:5:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:5:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:5:pwm|Add1~14\,
	sumout => \pwms:5:pwm|Add1~17_sumout\,
	cout => \pwms:5:pwm|Add1~18\);

-- Location: LABCELL_X17_Y19_N42
\pwms:5:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~21_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:5:pwm|Add1~18\ ))
-- \pwms:5:pwm|Add1~22\ = CARRY(( !\pwms:5:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:5:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:5:pwm|Add1~18\,
	sumout => \pwms:5:pwm|Add1~21_sumout\,
	cout => \pwms:5:pwm|Add1~22\);

-- Location: LABCELL_X17_Y19_N45
\pwms:5:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~1_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:5:pwm|Add1~22\ ))
-- \pwms:5:pwm|Add1~2\ = CARRY(( !\pwms:5:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:5:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:5:pwm|Add1~22\,
	sumout => \pwms:5:pwm|Add1~1_sumout\,
	cout => \pwms:5:pwm|Add1~2\);

-- Location: LABCELL_X17_Y19_N48
\pwms:5:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~5_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:5:pwm|Add1~2\ ))
-- \pwms:5:pwm|Add1~6\ = CARRY(( !\pwms:5:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:5:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:5:pwm|Add1~2\,
	sumout => \pwms:5:pwm|Add1~5_sumout\,
	cout => \pwms:5:pwm|Add1~6\);

-- Location: LABCELL_X17_Y19_N51
\pwms:5:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~9_sumout\ = SUM(( !\pwms:5:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:5:pwm|Add1~6\ ))
-- \pwms:5:pwm|Add1~10\ = CARRY(( !\pwms:5:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:5:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:5:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:5:pwm|Add1~6\,
	sumout => \pwms:5:pwm|Add1~9_sumout\,
	cout => \pwms:5:pwm|Add1~10\);

-- Location: LABCELL_X17_Y19_N54
\pwms:5:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:5:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:5:pwm|Add1~10\,
	sumout => \pwms:5:pwm|Add1~29_sumout\);

-- Location: LABCELL_X18_Y19_N57
\pwms:5:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|pwm_out~3_combout\ = ( \pwms:5:pwm|Add1~29_sumout\ & ( (\pwms:5:pwm|pwm_out~2_combout\ & (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:5:pwm|Add1~25_sumout\)))) ) ) # ( !\pwms:5:pwm|Add1~29_sumout\ & ( 
-- (\pwms:5:pwm|pwm_out~2_combout\ & (\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:5:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000000000100100001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(2),
	datab => \pwms:5:pwm|ALT_INV_Add1~25_sumout\,
	datac => \pwms:5:pwm|ALT_INV_pwm_out~2_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(9),
	dataf => \pwms:5:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:5:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X17_Y19_N12
\pwms:5:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|pwm_out~0_combout\ = ( \pwms:5:pwm|Add1~1_sumout\ & ( \pwms:5:pwm|Add1~9_sumout\ & ( (\pwms:0:pwm|count\(8) & (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:5:pwm|Add1~5_sumout\)))) ) ) ) # ( !\pwms:5:pwm|Add1~1_sumout\ & ( 
-- \pwms:5:pwm|Add1~9_sumout\ & ( (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:5:pwm|Add1~5_sumout\)))) ) ) ) # ( \pwms:5:pwm|Add1~1_sumout\ & ( !\pwms:5:pwm|Add1~9_sumout\ & ( (!\pwms:0:pwm|count\(8) & 
-- (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ (\pwms:5:pwm|Add1~5_sumout\)))) ) ) ) # ( !\pwms:5:pwm|Add1~1_sumout\ & ( !\pwms:5:pwm|Add1~9_sumout\ & ( (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) $ 
-- (\pwms:5:pwm|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:0:pwm|ALT_INV_count\(7),
	datac => \pwms:5:pwm|ALT_INV_Add1~5_sumout\,
	datad => \pwms:0:pwm|ALT_INV_count\(6),
	datae => \pwms:5:pwm|ALT_INV_Add1~1_sumout\,
	dataf => \pwms:5:pwm|ALT_INV_Add1~9_sumout\,
	combout => \pwms:5:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X17_Y19_N24
\pwms:5:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|pwm_out~1_combout\ = ( \pwms:5:pwm|Add1~13_sumout\ & ( \pwms:0:pwm|count\(3) & ( (!\pwms:0:pwm|count\(4) & (!\pwms:5:pwm|Add1~17_sumout\ & (!\pwms:5:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) # (\pwms:0:pwm|count\(4) & 
-- (\pwms:5:pwm|Add1~17_sumout\ & (!\pwms:5:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) ) ) ) # ( !\pwms:5:pwm|Add1~13_sumout\ & ( !\pwms:0:pwm|count\(3) & ( (!\pwms:0:pwm|count\(4) & (!\pwms:5:pwm|Add1~17_sumout\ & (!\pwms:5:pwm|Add1~21_sumout\ $ 
-- (\pwms:0:pwm|count\(5))))) # (\pwms:0:pwm|count\(4) & (\pwms:5:pwm|Add1~17_sumout\ & (!\pwms:5:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(4),
	datab => \pwms:5:pwm|ALT_INV_Add1~21_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count\(5),
	datad => \pwms:5:pwm|ALT_INV_Add1~17_sumout\,
	datae => \pwms:5:pwm|ALT_INV_Add1~13_sumout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(3),
	combout => \pwms:5:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X17_Y19_N9
\pwms:5:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:5:pwm|pwm_out~4_combout\ = ( \pwms:5:pwm|pwm_out~q\ & ( \pwms:5:pwm|pwm_out~1_combout\ & ( !\pwms:5:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:5:pwm|pwm_out~q\ & ( \pwms:5:pwm|pwm_out~1_combout\ & ( (!\pwms:5:pwm|Equal1~4_combout\ & 
-- (\pwms:5:pwm|pwm_out~3_combout\ & \pwms:5:pwm|pwm_out~0_combout\)) ) ) ) # ( \pwms:5:pwm|pwm_out~q\ & ( !\pwms:5:pwm|pwm_out~1_combout\ & ( !\pwms:5:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000010000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:5:pwm|ALT_INV_Equal1~4_combout\,
	datab => \pwms:5:pwm|ALT_INV_pwm_out~3_combout\,
	datac => \pwms:5:pwm|ALT_INV_pwm_out~0_combout\,
	datae => \pwms:5:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:5:pwm|ALT_INV_pwm_out~1_combout\,
	combout => \pwms:5:pwm|pwm_out~4_combout\);

-- Location: FF_X17_Y19_N10
\pwms:5:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:5:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:5:pwm|pwm_out~q\);

-- Location: LABCELL_X17_Y18_N9
\Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = ( duty_count(1) & ( (!duty_count(0) & (!duty_count(3) & duty_count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(0),
	datac => ALT_INV_duty_count(3),
	datad => ALT_INV_duty_count(2),
	dataf => ALT_INV_duty_count(1),
	combout => \Decoder0~6_combout\);

-- Location: LABCELL_X18_Y19_N54
\duty_value~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~44_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[6][0]~q\) # (\Decoder0~6_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~6_combout\ & \duty_value[6][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~6_combout\,
	datad => \ALT_INV_duty_value[6][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~44_combout\);

-- Location: FF_X18_Y19_N55
\duty_value[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~44_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][0]~q\);

-- Location: MLABCELL_X19_Y19_N18
\duty_value~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~45_combout\ = ( \duty_value[6][1]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~1_sumout\) # ((!\Add1~9_sumout\) # ((!\Decoder0~6_combout\) # (!\Add1~5_sumout\))) ) ) ) # ( !\duty_value[6][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~6_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~9_sumout\) # (!\Add1~5_sumout\)))) ) ) ) # ( \duty_value[6][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Decoder0~6_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[6][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~45_combout\);

-- Location: FF_X19_Y19_N19
\duty_value[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~45_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][1]~q\);

-- Location: MLABCELL_X19_Y19_N24
\duty_value~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~46_combout\ = ( \duty_value[6][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~6_combout\) # ((!\Add1~1_sumout\) # (!\Add1~5_sumout\)) ) ) ) # ( !\duty_value[6][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~6_combout\ & ((!\Add1~1_sumout\) # 
-- (!\Add1~5_sumout\))) ) ) ) # ( \duty_value[6][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~6_combout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[6][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~46_combout\);

-- Location: FF_X19_Y19_N25
\duty_value[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~46_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][2]~q\);

-- Location: MLABCELL_X19_Y19_N9
\duty_value~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~47_combout\ = ( \duty_value[6][3]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~6_combout\) # ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\))) ) ) ) # ( !\duty_value[6][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~6_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\ & !\Add1~1_sumout\)))) ) ) ) # ( \duty_value[6][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010100010100001111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~6_combout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[6][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~47_combout\);

-- Location: FF_X19_Y19_N10
\duty_value[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~47_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][3]~q\);

-- Location: LABCELL_X18_Y19_N9
\duty_value~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~48_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~6_combout\ & ((\duty_value[6][4]~q\))) # (\Decoder0~6_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~6_combout\ & \duty_value[6][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~6_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_duty_value[6][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~48_combout\);

-- Location: FF_X18_Y19_N11
\duty_value[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~48_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][4]~q\);

-- Location: LABCELL_X17_Y18_N21
\duty_value~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~49_combout\ = ( \duty_value[6][5]~q\ & ( \Decoder0~6_combout\ & ( (\Equal0~1_combout\ & (!\Add1~5_sumout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[6][5]~q\ & ( \Decoder0~6_combout\ & ( (\Equal0~1_combout\ & 
-- (!\Add1~5_sumout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[6][5]~q\ & ( !\Decoder0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[6][5]~q\,
	dataf => \ALT_INV_Decoder0~6_combout\,
	combout => \duty_value~49_combout\);

-- Location: FF_X17_Y18_N22
\duty_value[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~49_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][5]~q\);

-- Location: LABCELL_X15_Y17_N39
\duty_value[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[6][6]~feeder_combout\ = ( \duty_value~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_duty_value~7_combout\,
	combout => \duty_value[6][6]~feeder_combout\);

-- Location: LABCELL_X17_Y18_N51
\duty_value[6][7]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[6][7]~50_combout\ = ( !\state.calculate_duty_state~q\ & ( (\reset_n~input_o\ & (\Decoder0~6_combout\ & \ena~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \ALT_INV_Decoder0~6_combout\,
	datac => \ALT_INV_ena~input_o\,
	datae => \ALT_INV_state.calculate_duty_state~q\,
	combout => \duty_value[6][7]~50_combout\);

-- Location: FF_X15_Y17_N40
\duty_value[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[6][6]~feeder_combout\,
	ena => \duty_value[6][7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][6]~q\);

-- Location: LABCELL_X15_Y17_N42
\duty_value[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[6][7]~feeder_combout\ = ( \Equal0~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \duty_value[6][7]~feeder_combout\);

-- Location: FF_X15_Y17_N43
\duty_value[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[6][7]~feeder_combout\,
	ena => \duty_value[6][7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[6][7]~q\);

-- Location: DSP_X16_Y19_N0
\pwms:6:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:6:pwm|Mult0~8_AX_bus\,
	ay => \pwms:6:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:6:pwm|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X15_Y19_N9
\pwms:6:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:6:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:6:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:6:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X15_Y19_N10
\pwms:6:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:6:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(3));

-- Location: FF_X21_Y19_N7
\pwms:6:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(3));

-- Location: LABCELL_X15_Y19_N15
\pwms:6:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:6:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:6:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:6:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X15_Y19_N16
\pwms:6:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:6:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(2));

-- Location: FF_X21_Y19_N5
\pwms:6:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(2));

-- Location: FF_X17_Y19_N13
\pwms:6:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(0));

-- Location: FF_X21_Y19_N50
\pwms:6:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(0));

-- Location: FF_X17_Y19_N56
\pwms:6:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(1));

-- Location: FF_X22_Y19_N46
\pwms:6:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(1));

-- Location: LABCELL_X21_Y19_N0
\pwms:6:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~33_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(1) ) + ( !\pwms:6:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:6:pwm|Add1~34\ = CARRY(( !\pwms:6:pwm|half_duty\(1) ) + ( !\pwms:6:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:6:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:6:pwm|ALT_INV_half_duty\(1),
	cin => GND,
	sumout => \pwms:6:pwm|Add1~33_sumout\,
	cout => \pwms:6:pwm|Add1~34\);

-- Location: LABCELL_X21_Y19_N3
\pwms:6:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~25_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:6:pwm|Add1~34\ ))
-- \pwms:6:pwm|Add1~26\ = CARRY(( !\pwms:6:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:6:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:6:pwm|Add1~34\,
	sumout => \pwms:6:pwm|Add1~25_sumout\,
	cout => \pwms:6:pwm|Add1~26\);

-- Location: LABCELL_X21_Y19_N6
\pwms:6:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~13_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:6:pwm|Add1~26\ ))
-- \pwms:6:pwm|Add1~14\ = CARRY(( !\pwms:6:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:6:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:6:pwm|Add1~26\,
	sumout => \pwms:6:pwm|Add1~13_sumout\,
	cout => \pwms:6:pwm|Add1~14\);

-- Location: LABCELL_X15_Y19_N42
\pwms:6:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:6:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:6:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:6:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X15_Y19_N43
\pwms:6:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:6:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(4));

-- Location: FF_X21_Y19_N10
\pwms:6:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(4));

-- Location: LABCELL_X21_Y19_N9
\pwms:6:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~17_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:6:pwm|Add1~14\ ))
-- \pwms:6:pwm|Add1~18\ = CARRY(( !\pwms:6:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:6:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:6:pwm|Add1~14\,
	sumout => \pwms:6:pwm|Add1~17_sumout\,
	cout => \pwms:6:pwm|Add1~18\);

-- Location: FF_X17_Y19_N58
\pwms:6:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|Mult0~22\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(5));

-- Location: FF_X21_Y19_N13
\pwms:6:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(5));

-- Location: LABCELL_X21_Y19_N12
\pwms:6:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~21_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:6:pwm|Add1~18\ ))
-- \pwms:6:pwm|Add1~22\ = CARRY(( !\pwms:6:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:6:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:6:pwm|Add1~18\,
	sumout => \pwms:6:pwm|Add1~21_sumout\,
	cout => \pwms:6:pwm|Add1~22\);

-- Location: LABCELL_X21_Y19_N42
\pwms:6:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(4) & ( \pwms:6:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (\pwms:6:pwm|Add1~17_sumout\ & (!\pwms:6:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) ) # ( !\pwms:0:pwm|count\(4) & 
-- ( \pwms:6:pwm|Add1~21_sumout\ & ( (\pwms:0:pwm|count\(5) & (!\pwms:6:pwm|Add1~17_sumout\ & (!\pwms:6:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) ) # ( \pwms:0:pwm|count\(4) & ( !\pwms:6:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) 
-- & (\pwms:6:pwm|Add1~17_sumout\ & (!\pwms:6:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) ) # ( !\pwms:0:pwm|count\(4) & ( !\pwms:6:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count\(5) & (!\pwms:6:pwm|Add1~17_sumout\ & 
-- (!\pwms:6:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datab => \pwms:6:pwm|ALT_INV_Add1~13_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	datad => \pwms:6:pwm|ALT_INV_Add1~17_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:6:pwm|ALT_INV_Add1~21_sumout\,
	combout => \pwms:6:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X15_Y19_N39
\pwms:6:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:6:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:6:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:6:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X15_Y19_N40
\pwms:6:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:6:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(6));

-- Location: FF_X21_Y19_N16
\pwms:6:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(6));

-- Location: LABCELL_X21_Y19_N15
\pwms:6:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~1_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:6:pwm|Add1~22\ ))
-- \pwms:6:pwm|Add1~2\ = CARRY(( !\pwms:6:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:6:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:6:pwm|Add1~22\,
	sumout => \pwms:6:pwm|Add1~1_sumout\,
	cout => \pwms:6:pwm|Add1~2\);

-- Location: FF_X17_Y19_N16
\pwms:6:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|Mult0~25\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(8));

-- Location: FF_X21_Y19_N22
\pwms:6:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(8));

-- Location: FF_X17_Y19_N22
\pwms:6:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|Mult0~24\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty_new\(7));

-- Location: FF_X21_Y19_N19
\pwms:6:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:6:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|half_duty\(7));

-- Location: LABCELL_X21_Y19_N18
\pwms:6:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~5_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:6:pwm|Add1~2\ ))
-- \pwms:6:pwm|Add1~6\ = CARRY(( !\pwms:6:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:6:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:6:pwm|Add1~2\,
	sumout => \pwms:6:pwm|Add1~5_sumout\,
	cout => \pwms:6:pwm|Add1~6\);

-- Location: LABCELL_X21_Y19_N21
\pwms:6:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~9_sumout\ = SUM(( !\pwms:6:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:6:pwm|Add1~6\ ))
-- \pwms:6:pwm|Add1~10\ = CARRY(( !\pwms:6:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:6:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:6:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:6:pwm|Add1~6\,
	sumout => \pwms:6:pwm|Add1~9_sumout\,
	cout => \pwms:6:pwm|Add1~10\);

-- Location: LABCELL_X21_Y19_N48
\pwms:6:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|pwm_out~0_combout\ = ( \pwms:6:pwm|Add1~9_sumout\ & ( \pwms:6:pwm|Add1~5_sumout\ & ( (\pwms:0:pwm|count\(8) & (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(6) $ (\pwms:6:pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwms:6:pwm|Add1~9_sumout\ & ( 
-- \pwms:6:pwm|Add1~5_sumout\ & ( (!\pwms:0:pwm|count\(8) & (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(6) $ (\pwms:6:pwm|Add1~1_sumout\)))) ) ) ) # ( \pwms:6:pwm|Add1~9_sumout\ & ( !\pwms:6:pwm|Add1~5_sumout\ & ( (\pwms:0:pwm|count\(8) & 
-- (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(6) $ (\pwms:6:pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwms:6:pwm|Add1~9_sumout\ & ( !\pwms:6:pwm|Add1~5_sumout\ & ( (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:6:pwm|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:0:pwm|ALT_INV_count\(7),
	datac => \pwms:0:pwm|ALT_INV_count\(6),
	datad => \pwms:6:pwm|ALT_INV_Add1~1_sumout\,
	datae => \pwms:6:pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwms:6:pwm|ALT_INV_Add1~5_sumout\,
	combout => \pwms:6:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X22_Y19_N21
\pwms:6:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|pwm_out~2_combout\ = ( \pwms:6:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:6:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) # ( !\pwms:6:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:6:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datab => \pwms:6:pwm|ALT_INV_half_duty\(0),
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	dataf => \pwms:6:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:6:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X21_Y19_N24
\pwms:6:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:6:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:6:pwm|Add1~10\,
	sumout => \pwms:6:pwm|Add1~29_sumout\);

-- Location: LABCELL_X22_Y19_N36
\pwms:6:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|pwm_out~3_combout\ = ( \pwms:6:pwm|pwm_out~2_combout\ & ( \pwms:6:pwm|Add1~29_sumout\ & ( (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:6:pwm|Add1~25_sumout\))) ) ) ) # ( \pwms:6:pwm|pwm_out~2_combout\ & ( 
-- !\pwms:6:pwm|Add1~29_sumout\ & ( (\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) $ (\pwms:6:pwm|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000001100000000000000001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(9),
	datac => \pwms:0:pwm|ALT_INV_count\(2),
	datad => \pwms:6:pwm|ALT_INV_Add1~25_sumout\,
	datae => \pwms:6:pwm|ALT_INV_pwm_out~2_combout\,
	dataf => \pwms:6:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:6:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X21_Y19_N36
\pwms:6:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Equal1~0_combout\ = ( \pwms:0:pwm|count\(6) & ( (\pwms:6:pwm|half_duty\(6) & (!\pwms:6:pwm|half_duty\(5) $ (\pwms:0:pwm|count\(5)))) ) ) # ( !\pwms:0:pwm|count\(6) & ( (!\pwms:6:pwm|half_duty\(6) & (!\pwms:6:pwm|half_duty\(5) $ 
-- (\pwms:0:pwm|count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:6:pwm|ALT_INV_half_duty\(5),
	datac => \pwms:6:pwm|ALT_INV_half_duty\(6),
	datad => \pwms:0:pwm|ALT_INV_count\(5),
	dataf => \pwms:0:pwm|ALT_INV_count\(6),
	combout => \pwms:6:pwm|Equal1~0_combout\);

-- Location: LABCELL_X18_Y19_N39
\pwms:6:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:6:pwm|half_duty\(2) & (!\pwms:6:pwm|half_duty\(3) $ (\pwms:0:pwm|count\(3)))) ) ) # ( !\pwms:0:pwm|count\(2) & ( (!\pwms:6:pwm|half_duty\(2) & (!\pwms:6:pwm|half_duty\(3) $ 
-- (\pwms:0:pwm|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:6:pwm|ALT_INV_half_duty\(2),
	datac => \pwms:6:pwm|ALT_INV_half_duty\(3),
	datad => \pwms:0:pwm|ALT_INV_count\(3),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:6:pwm|Equal1~2_combout\);

-- Location: LABCELL_X22_Y19_N45
\pwms:6:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Equal1~1_combout\ = ( \pwms:6:pwm|half_duty\(1) & ( !\pwms:0:pwm|count\(9) & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:6:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) ) # ( !\pwms:6:pwm|half_duty\(1) & ( 
-- !\pwms:0:pwm|count\(9) & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:6:pwm|half_duty\(0) $ (\pwms:0:pwm|count[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010010000010100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datab => \pwms:6:pwm|ALT_INV_half_duty\(0),
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datae => \pwms:6:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:6:pwm|Equal1~1_combout\);

-- Location: LABCELL_X21_Y19_N39
\pwms:6:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Equal1~3_combout\ = ( \pwms:6:pwm|Equal1~1_combout\ & ( (\pwms:6:pwm|Equal1~2_combout\ & (!\pwms:6:pwm|half_duty\(4) $ (\pwms:0:pwm|count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:6:pwm|ALT_INV_half_duty\(4),
	datac => \pwms:6:pwm|ALT_INV_Equal1~2_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:6:pwm|ALT_INV_Equal1~1_combout\,
	combout => \pwms:6:pwm|Equal1~3_combout\);

-- Location: LABCELL_X21_Y19_N30
\pwms:6:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|Equal1~4_combout\ = ( \pwms:0:pwm|count\(7) & ( \pwms:0:pwm|count\(8) & ( (\pwms:6:pwm|half_duty\(8) & (\pwms:6:pwm|half_duty\(7) & (\pwms:6:pwm|Equal1~0_combout\ & \pwms:6:pwm|Equal1~3_combout\))) ) ) ) # ( !\pwms:0:pwm|count\(7) & ( 
-- \pwms:0:pwm|count\(8) & ( (\pwms:6:pwm|half_duty\(8) & (!\pwms:6:pwm|half_duty\(7) & (\pwms:6:pwm|Equal1~0_combout\ & \pwms:6:pwm|Equal1~3_combout\))) ) ) ) # ( \pwms:0:pwm|count\(7) & ( !\pwms:0:pwm|count\(8) & ( (!\pwms:6:pwm|half_duty\(8) & 
-- (\pwms:6:pwm|half_duty\(7) & (\pwms:6:pwm|Equal1~0_combout\ & \pwms:6:pwm|Equal1~3_combout\))) ) ) ) # ( !\pwms:0:pwm|count\(7) & ( !\pwms:0:pwm|count\(8) & ( (!\pwms:6:pwm|half_duty\(8) & (!\pwms:6:pwm|half_duty\(7) & (\pwms:6:pwm|Equal1~0_combout\ & 
-- \pwms:6:pwm|Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000001000000000000001000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:6:pwm|ALT_INV_half_duty\(8),
	datab => \pwms:6:pwm|ALT_INV_half_duty\(7),
	datac => \pwms:6:pwm|ALT_INV_Equal1~0_combout\,
	datad => \pwms:6:pwm|ALT_INV_Equal1~3_combout\,
	datae => \pwms:0:pwm|ALT_INV_count\(7),
	dataf => \pwms:0:pwm|ALT_INV_count\(8),
	combout => \pwms:6:pwm|Equal1~4_combout\);

-- Location: LABCELL_X21_Y19_N54
\pwms:6:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:6:pwm|pwm_out~4_combout\ = ( \pwms:6:pwm|pwm_out~q\ & ( !\pwms:6:pwm|Equal1~4_combout\ ) ) # ( !\pwms:6:pwm|pwm_out~q\ & ( !\pwms:6:pwm|Equal1~4_combout\ & ( (\pwms:6:pwm|pwm_out~1_combout\ & (\pwms:6:pwm|pwm_out~0_combout\ & 
-- \pwms:6:pwm|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:6:pwm|ALT_INV_pwm_out~1_combout\,
	datac => \pwms:6:pwm|ALT_INV_pwm_out~0_combout\,
	datad => \pwms:6:pwm|ALT_INV_pwm_out~3_combout\,
	datae => \pwms:6:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:6:pwm|ALT_INV_Equal1~4_combout\,
	combout => \pwms:6:pwm|pwm_out~4_combout\);

-- Location: FF_X21_Y19_N56
\pwms:6:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:6:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:6:pwm|pwm_out~q\);

-- Location: LABCELL_X17_Y18_N54
\Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = ( duty_count(2) & ( duty_count(1) & ( (duty_count(0) & !duty_count(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_duty_count(0),
	datad => ALT_INV_duty_count(3),
	datae => ALT_INV_duty_count(2),
	dataf => ALT_INV_duty_count(1),
	combout => \Decoder0~7_combout\);

-- Location: MLABCELL_X19_Y19_N15
\duty_value~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~51_combout\ = ( \duty_value[7][0]~q\ & ( \Equal0~1_combout\ ) ) # ( !\duty_value[7][0]~q\ & ( \Equal0~1_combout\ & ( \Decoder0~7_combout\ ) ) ) # ( \duty_value[7][0]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~7_combout\,
	datae => \ALT_INV_duty_value[7][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~51_combout\);

-- Location: FF_X19_Y19_N16
\duty_value[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~51_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][0]~q\);

-- Location: MLABCELL_X19_Y19_N54
\duty_value~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~52_combout\ = ( \duty_value[7][1]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~1_sumout\) # ((!\Decoder0~7_combout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\))) ) ) ) # ( !\duty_value[7][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~7_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[7][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_duty_value[7][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~52_combout\);

-- Location: FF_X19_Y19_N55
\duty_value[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~52_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][1]~q\);

-- Location: LABCELL_X18_Y19_N45
\duty_value~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~53_combout\ = ( \duty_value[7][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~7_combout\) # ((!\Add1~5_sumout\) # (!\Add1~1_sumout\)) ) ) ) # ( !\duty_value[7][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~7_combout\ & ((!\Add1~5_sumout\) # 
-- (!\Add1~1_sumout\))) ) ) ) # ( \duty_value[7][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[7][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~53_combout\);

-- Location: FF_X18_Y19_N46
\duty_value[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~53_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][2]~q\);

-- Location: MLABCELL_X19_Y19_N0
\duty_value~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~54_combout\ = ( \duty_value[7][3]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~7_combout\) # ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\))) ) ) ) # ( !\duty_value[7][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~7_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[7][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110010001100001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_duty_value[7][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~54_combout\);

-- Location: FF_X19_Y19_N1
\duty_value[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~54_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][3]~q\);

-- Location: MLABCELL_X19_Y19_N33
\duty_value~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~55_combout\ = ( \duty_value[7][4]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~7_combout\) # (!\Add1~5_sumout\) ) ) ) # ( !\duty_value[7][4]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~7_combout\ & !\Add1~5_sumout\) ) ) ) # ( \duty_value[7][4]~q\ & 
-- ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110000001100001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[7][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~55_combout\);

-- Location: FF_X19_Y19_N34
\duty_value[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~55_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][4]~q\);

-- Location: MLABCELL_X19_Y18_N39
\duty_value~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~56_combout\ = ( \duty_value[7][5]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~7_combout\) # ((!\Add1~5_sumout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( !\duty_value[7][5]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~7_combout\ & 
-- (!\Add1~5_sumout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[7][5]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110000001000001111110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[7][5]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~56_combout\);

-- Location: FF_X19_Y18_N40
\duty_value[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~56_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][5]~q\);

-- Location: MLABCELL_X19_Y19_N48
\duty_value[7][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[7][6]~feeder_combout\ = ( \duty_value~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_duty_value~7_combout\,
	combout => \duty_value[7][6]~feeder_combout\);

-- Location: MLABCELL_X19_Y18_N24
\duty_value[7][7]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[7][7]~57_combout\ = ( \Decoder0~7_combout\ & ( (\ena~input_o\ & (\reset_n~input_o\ & !\state.calculate_duty_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_state.calculate_duty_state~q\,
	dataf => \ALT_INV_Decoder0~7_combout\,
	combout => \duty_value[7][7]~57_combout\);

-- Location: FF_X19_Y19_N49
\duty_value[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[7][6]~feeder_combout\,
	ena => \duty_value[7][7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][6]~q\);

-- Location: MLABCELL_X19_Y19_N45
\duty_value[7][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[7][7]~feeder_combout\ = ( \Equal0~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \duty_value[7][7]~feeder_combout\);

-- Location: FF_X19_Y19_N46
\duty_value[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[7][7]~feeder_combout\,
	ena => \duty_value[7][7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[7][7]~q\);

-- Location: DSP_X24_Y21_N0
\pwms:7:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:7:pwm|Mult0~8_AX_bus\,
	ay => \pwms:7:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:7:pwm|Mult0~8_RESULTA_bus\);

-- Location: FF_X25_Y21_N5
\pwms:7:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|Mult0~25\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(8));

-- Location: FF_X25_Y21_N52
\pwms:7:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(8));

-- Location: MLABCELL_X25_Y21_N0
\pwms:7:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:7:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:7:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:7:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X25_Y21_N2
\pwms:7:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:7:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(7));

-- Location: FF_X25_Y21_N49
\pwms:7:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(7));

-- Location: LABCELL_X23_Y21_N15
\pwms:7:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:7:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:7:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:7:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X23_Y21_N16
\pwms:7:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:7:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(6));

-- Location: FF_X25_Y21_N46
\pwms:7:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(6));

-- Location: FF_X25_Y21_N8
\pwms:7:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|Mult0~22\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(5));

-- Location: FF_X25_Y21_N43
\pwms:7:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(5));

-- Location: LABCELL_X23_Y21_N42
\pwms:7:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:7:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:7:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:7:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X23_Y21_N43
\pwms:7:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:7:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(4));

-- Location: FF_X25_Y21_N40
\pwms:7:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(4));

-- Location: LABCELL_X23_Y21_N3
\pwms:7:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:7:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:7:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:7:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X23_Y21_N4
\pwms:7:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:7:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(3));

-- Location: FF_X25_Y21_N37
\pwms:7:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(3));

-- Location: FF_X25_Y21_N11
\pwms:7:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|Mult0~19\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(2));

-- Location: FF_X25_Y21_N34
\pwms:7:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(2));

-- Location: FF_X25_Y21_N55
\pwms:7:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|Mult0~17\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(0));

-- Location: FF_X25_Y21_N26
\pwms:7:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(0));

-- Location: FF_X25_Y21_N59
\pwms:7:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty_new\(1));

-- Location: FF_X25_Y21_N31
\pwms:7:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:7:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|half_duty\(1));

-- Location: MLABCELL_X25_Y21_N30
\pwms:7:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~33_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(1) ) + ( !\pwms:7:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:7:pwm|Add1~34\ = CARRY(( !\pwms:7:pwm|half_duty\(1) ) + ( !\pwms:7:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwms:7:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:7:pwm|ALT_INV_half_duty\(1),
	cin => GND,
	sumout => \pwms:7:pwm|Add1~33_sumout\,
	cout => \pwms:7:pwm|Add1~34\);

-- Location: MLABCELL_X25_Y21_N33
\pwms:7:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~25_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:7:pwm|Add1~34\ ))
-- \pwms:7:pwm|Add1~26\ = CARRY(( !\pwms:7:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:7:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:7:pwm|Add1~34\,
	sumout => \pwms:7:pwm|Add1~25_sumout\,
	cout => \pwms:7:pwm|Add1~26\);

-- Location: MLABCELL_X25_Y21_N36
\pwms:7:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~13_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:7:pwm|Add1~26\ ))
-- \pwms:7:pwm|Add1~14\ = CARRY(( !\pwms:7:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:7:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:7:pwm|Add1~26\,
	sumout => \pwms:7:pwm|Add1~13_sumout\,
	cout => \pwms:7:pwm|Add1~14\);

-- Location: MLABCELL_X25_Y21_N39
\pwms:7:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~17_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:7:pwm|Add1~14\ ))
-- \pwms:7:pwm|Add1~18\ = CARRY(( !\pwms:7:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:7:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:7:pwm|Add1~14\,
	sumout => \pwms:7:pwm|Add1~17_sumout\,
	cout => \pwms:7:pwm|Add1~18\);

-- Location: MLABCELL_X25_Y21_N42
\pwms:7:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~21_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:7:pwm|Add1~18\ ))
-- \pwms:7:pwm|Add1~22\ = CARRY(( !\pwms:7:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:7:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:7:pwm|Add1~18\,
	sumout => \pwms:7:pwm|Add1~21_sumout\,
	cout => \pwms:7:pwm|Add1~22\);

-- Location: MLABCELL_X25_Y21_N45
\pwms:7:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~1_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:7:pwm|Add1~22\ ))
-- \pwms:7:pwm|Add1~2\ = CARRY(( !\pwms:7:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:7:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:7:pwm|Add1~22\,
	sumout => \pwms:7:pwm|Add1~1_sumout\,
	cout => \pwms:7:pwm|Add1~2\);

-- Location: MLABCELL_X25_Y21_N48
\pwms:7:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~5_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:7:pwm|Add1~2\ ))
-- \pwms:7:pwm|Add1~6\ = CARRY(( !\pwms:7:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:7:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:7:pwm|Add1~2\,
	sumout => \pwms:7:pwm|Add1~5_sumout\,
	cout => \pwms:7:pwm|Add1~6\);

-- Location: MLABCELL_X25_Y21_N51
\pwms:7:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~9_sumout\ = SUM(( !\pwms:7:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:7:pwm|Add1~6\ ))
-- \pwms:7:pwm|Add1~10\ = CARRY(( !\pwms:7:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:7:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:7:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:7:pwm|Add1~6\,
	sumout => \pwms:7:pwm|Add1~9_sumout\,
	cout => \pwms:7:pwm|Add1~10\);

-- Location: LABCELL_X23_Y21_N24
\pwms:7:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|pwm_out~0_combout\ = ( \pwms:7:pwm|Add1~5_sumout\ & ( \pwms:7:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:7:pwm|Add1~9_sumout\)))) ) ) ) # ( !\pwms:7:pwm|Add1~5_sumout\ & ( 
-- \pwms:7:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:7:pwm|Add1~9_sumout\)))) ) ) ) # ( \pwms:7:pwm|Add1~5_sumout\ & ( !\pwms:7:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & 
-- (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ (\pwms:7:pwm|Add1~9_sumout\)))) ) ) ) # ( !\pwms:7:pwm|Add1~5_sumout\ & ( !\pwms:7:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) $ 
-- (\pwms:7:pwm|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(8),
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:7:pwm|ALT_INV_Add1~9_sumout\,
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	datae => \pwms:7:pwm|ALT_INV_Add1~5_sumout\,
	dataf => \pwms:7:pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwms:7:pwm|pwm_out~0_combout\);

-- Location: MLABCELL_X25_Y21_N6
\pwms:7:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(4) & ( \pwms:7:pwm|Add1~17_sumout\ & ( (!\pwms:0:pwm|count\(5) & (!\pwms:7:pwm|Add1~21_sumout\ & (!\pwms:7:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) # (\pwms:0:pwm|count\(5) & 
-- (\pwms:7:pwm|Add1~21_sumout\ & (!\pwms:7:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) ) # ( !\pwms:0:pwm|count\(4) & ( !\pwms:7:pwm|Add1~17_sumout\ & ( (!\pwms:0:pwm|count\(5) & (!\pwms:7:pwm|Add1~21_sumout\ & 
-- (!\pwms:7:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) # (\pwms:0:pwm|count\(5) & (\pwms:7:pwm|Add1~21_sumout\ & (!\pwms:7:pwm|Add1~13_sumout\ $ (\pwms:0:pwm|count[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datab => \pwms:7:pwm|ALT_INV_Add1~21_sumout\,
	datac => \pwms:7:pwm|ALT_INV_Add1~13_sumout\,
	datad => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	datae => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:7:pwm|ALT_INV_Add1~17_sumout\,
	combout => \pwms:7:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X23_Y21_N57
\pwms:7:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Equal1~0_combout\ = ( \pwms:7:pwm|half_duty\(6) & ( \pwms:7:pwm|half_duty\(5) & ( (\pwms:0:pwm|count\(5) & \pwms:0:pwm|count\(6)) ) ) ) # ( !\pwms:7:pwm|half_duty\(6) & ( \pwms:7:pwm|half_duty\(5) & ( (\pwms:0:pwm|count\(5) & 
-- !\pwms:0:pwm|count\(6)) ) ) ) # ( \pwms:7:pwm|half_duty\(6) & ( !\pwms:7:pwm|half_duty\(5) & ( (!\pwms:0:pwm|count\(5) & \pwms:0:pwm|count\(6)) ) ) ) # ( !\pwms:7:pwm|half_duty\(6) & ( !\pwms:7:pwm|half_duty\(5) & ( (!\pwms:0:pwm|count\(5) & 
-- !\pwms:0:pwm|count\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(6),
	datae => \pwms:7:pwm|ALT_INV_half_duty\(6),
	dataf => \pwms:7:pwm|ALT_INV_half_duty\(5),
	combout => \pwms:7:pwm|Equal1~0_combout\);

-- Location: MLABCELL_X25_Y21_N15
\pwms:7:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Equal1~2_combout\ = ( \pwms:7:pwm|half_duty\(2) & ( (\pwms:0:pwm|count\(2) & (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:7:pwm|half_duty\(3)))) ) ) # ( !\pwms:7:pwm|half_duty\(2) & ( (!\pwms:0:pwm|count\(2) & 
-- (!\pwms:0:pwm|count[3]~DUPLICATE_q\ $ (\pwms:7:pwm|half_duty\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	datad => \pwms:7:pwm|ALT_INV_half_duty\(3),
	dataf => \pwms:7:pwm|ALT_INV_half_duty\(2),
	combout => \pwms:7:pwm|Equal1~2_combout\);

-- Location: MLABCELL_X25_Y21_N24
\pwms:7:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Equal1~1_combout\ = ( \pwms:7:pwm|half_duty\(0) & ( !\pwms:0:pwm|count\(9) & ( (\pwms:0:pwm|count\(0) & (!\pwms:7:pwm|half_duty\(1) $ (\pwms:0:pwm|count[1]~DUPLICATE_q\))) ) ) ) # ( !\pwms:7:pwm|half_duty\(0) & ( !\pwms:0:pwm|count\(9) & ( 
-- (!\pwms:0:pwm|count\(0) & (!\pwms:7:pwm|half_duty\(1) $ (\pwms:0:pwm|count[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000000010010000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:7:pwm|ALT_INV_half_duty\(1),
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count\(0),
	datae => \pwms:7:pwm|ALT_INV_half_duty\(0),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:7:pwm|Equal1~1_combout\);

-- Location: MLABCELL_X25_Y21_N21
\pwms:7:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Equal1~3_combout\ = ( \pwms:7:pwm|Equal1~1_combout\ & ( (\pwms:7:pwm|Equal1~2_combout\ & (!\pwms:7:pwm|half_duty\(4) $ (\pwms:0:pwm|count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:7:pwm|ALT_INV_Equal1~2_combout\,
	datac => \pwms:7:pwm|ALT_INV_half_duty\(4),
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:7:pwm|ALT_INV_Equal1~1_combout\,
	combout => \pwms:7:pwm|Equal1~3_combout\);

-- Location: LABCELL_X23_Y21_N48
\pwms:7:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Equal1~4_combout\ = ( \pwms:7:pwm|Equal1~3_combout\ & ( \pwms:0:pwm|count\(8) & ( (\pwms:7:pwm|half_duty\(8) & (\pwms:7:pwm|Equal1~0_combout\ & (!\pwms:7:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( \pwms:7:pwm|Equal1~3_combout\ & 
-- ( !\pwms:0:pwm|count\(8) & ( (!\pwms:7:pwm|half_duty\(8) & (\pwms:7:pwm|Equal1~0_combout\ & (!\pwms:7:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000001000000000000000000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:7:pwm|ALT_INV_half_duty\(8),
	datab => \pwms:7:pwm|ALT_INV_Equal1~0_combout\,
	datac => \pwms:7:pwm|ALT_INV_half_duty\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	datae => \pwms:7:pwm|ALT_INV_Equal1~3_combout\,
	dataf => \pwms:0:pwm|ALT_INV_count\(8),
	combout => \pwms:7:pwm|Equal1~4_combout\);

-- Location: MLABCELL_X25_Y21_N54
\pwms:7:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:7:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:7:pwm|Add1~10\,
	sumout => \pwms:7:pwm|Add1~29_sumout\);

-- Location: MLABCELL_X25_Y21_N18
\pwms:7:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|pwm_out~2_combout\ = ( \pwms:7:pwm|Add1~33_sumout\ & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count\(0) $ (\pwms:7:pwm|half_duty\(0)))) ) ) # ( !\pwms:7:pwm|Add1~33_sumout\ & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count\(0) $ (\pwms:7:pwm|half_duty\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(0),
	datac => \pwms:7:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	dataf => \pwms:7:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:7:pwm|pwm_out~2_combout\);

-- Location: MLABCELL_X25_Y21_N12
\pwms:7:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|pwm_out~3_combout\ = ( \pwms:7:pwm|pwm_out~2_combout\ & ( (!\pwms:0:pwm|count\(9) & (\pwms:7:pwm|Add1~29_sumout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:7:pwm|Add1~25_sumout\)))) # (\pwms:0:pwm|count\(9) & (!\pwms:7:pwm|Add1~29_sumout\ & 
-- (!\pwms:0:pwm|count\(2) $ (\pwms:7:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001100000100100000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(9),
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:7:pwm|ALT_INV_Add1~25_sumout\,
	datad => \pwms:7:pwm|ALT_INV_Add1~29_sumout\,
	dataf => \pwms:7:pwm|ALT_INV_pwm_out~2_combout\,
	combout => \pwms:7:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X23_Y21_N18
\pwms:7:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:7:pwm|pwm_out~4_combout\ = ( \pwms:7:pwm|pwm_out~q\ & ( \pwms:7:pwm|pwm_out~3_combout\ & ( !\pwms:7:pwm|Equal1~4_combout\ ) ) ) # ( !\pwms:7:pwm|pwm_out~q\ & ( \pwms:7:pwm|pwm_out~3_combout\ & ( (\pwms:7:pwm|pwm_out~0_combout\ & 
-- (\pwms:7:pwm|pwm_out~1_combout\ & !\pwms:7:pwm|Equal1~4_combout\)) ) ) ) # ( \pwms:7:pwm|pwm_out~q\ & ( !\pwms:7:pwm|pwm_out~3_combout\ & ( !\pwms:7:pwm|Equal1~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000010000000100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:7:pwm|ALT_INV_pwm_out~0_combout\,
	datab => \pwms:7:pwm|ALT_INV_pwm_out~1_combout\,
	datac => \pwms:7:pwm|ALT_INV_Equal1~4_combout\,
	datae => \pwms:7:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:7:pwm|ALT_INV_pwm_out~3_combout\,
	combout => \pwms:7:pwm|pwm_out~4_combout\);

-- Location: FF_X23_Y21_N19
\pwms:7:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:7:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:7:pwm|pwm_out~q\);

-- Location: MLABCELL_X19_Y16_N45
\Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = ( duty_count(3) & ( (!duty_count(0) & (!duty_count(1) & !duty_count(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_duty_count(0),
	datac => ALT_INV_duty_count(1),
	datad => ALT_INV_duty_count(2),
	dataf => ALT_INV_duty_count(3),
	combout => \Decoder0~8_combout\);

-- Location: MLABCELL_X19_Y17_N9
\duty_value~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~58_combout\ = ( \Equal0~1_combout\ & ( (\duty_value[8][0]~q\) # (\Decoder0~8_combout\) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~8_combout\ & \duty_value[8][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~8_combout\,
	datad => \ALT_INV_duty_value[8][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~58_combout\);

-- Location: FF_X19_Y17_N10
\duty_value[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~58_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][0]~q\);

-- Location: MLABCELL_X19_Y18_N6
\duty_value~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~59_combout\ = ( \duty_value[8][1]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # ((!\Add1~9_sumout\) # (!\Decoder0~8_combout\))) ) ) ) # ( !\duty_value[8][1]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~8_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[8][1]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Decoder0~8_combout\,
	datae => \ALT_INV_duty_value[8][1]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~59_combout\);

-- Location: FF_X19_Y18_N7
\duty_value[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~59_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][1]~q\);

-- Location: MLABCELL_X19_Y18_N48
\duty_value~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~60_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~8_combout\ & (((\duty_value[8][2]~q\)))) # (\Decoder0~8_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\)))) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~8_combout\ & \duty_value[8][2]~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~8_combout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_duty_value[8][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~60_combout\);

-- Location: FF_X19_Y18_N49
\duty_value[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~60_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][2]~q\);

-- Location: MLABCELL_X19_Y18_N42
\duty_value~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~61_combout\ = ( \duty_value[8][3]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~5_sumout\) # ((!\Decoder0~8_combout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\))) ) ) ) # ( !\duty_value[8][3]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~8_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[8][3]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111011001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Decoder0~8_combout\,
	datae => \ALT_INV_duty_value[8][3]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~61_combout\);

-- Location: FF_X19_Y18_N43
\duty_value[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~61_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][3]~q\);

-- Location: MLABCELL_X19_Y18_N0
\duty_value~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~62_combout\ = ( \Equal0~1_combout\ & ( (!\Decoder0~8_combout\ & ((\duty_value[8][4]~q\))) # (\Decoder0~8_combout\ & (!\Add1~5_sumout\)) ) ) # ( !\Equal0~1_combout\ & ( (!\Decoder0~8_combout\ & \duty_value[8][4]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Decoder0~8_combout\,
	datad => \ALT_INV_duty_value[8][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~62_combout\);

-- Location: FF_X19_Y18_N1
\duty_value[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~62_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][4]~q\);

-- Location: MLABCELL_X19_Y18_N18
\duty_value~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~63_combout\ = ( \duty_value[8][5]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~8_combout\) # ((!\Add1~5_sumout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[8][5]~q\ & ( \Equal0~1_combout\ & ( (!\Add1~5_sumout\ & 
-- (\Decoder0~8_combout\ & ((!\Add1~1_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[8][5]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000110010001111111111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Decoder0~8_combout\,
	datae => \ALT_INV_duty_value[8][5]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~63_combout\);

-- Location: FF_X19_Y18_N19
\duty_value[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~63_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][5]~q\);

-- Location: MLABCELL_X19_Y16_N27
\duty_value[8][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[8][6]~feeder_combout\ = ( \duty_value~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_duty_value~7_combout\,
	combout => \duty_value[8][6]~feeder_combout\);

-- Location: MLABCELL_X19_Y16_N0
\duty_value[8][7]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[8][7]~64_combout\ = ( \ena~input_o\ & ( (!\state.calculate_duty_state~q\ & (\reset_n~input_o\ & \Decoder0~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculate_duty_state~q\,
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_Decoder0~8_combout\,
	dataf => \ALT_INV_ena~input_o\,
	combout => \duty_value[8][7]~64_combout\);

-- Location: FF_X19_Y16_N28
\duty_value[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value[8][6]~feeder_combout\,
	ena => \duty_value[8][7]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][6]~q\);

-- Location: FF_X19_Y16_N34
\duty_value[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[8][7]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[8][7]~q\);

-- Location: DSP_X24_Y15_N0
\pwms:8:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:8:pwm|Mult0~8_AX_bus\,
	ay => \pwms:8:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:8:pwm|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X25_Y15_N51
\pwms:8:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:8:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:8:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X25_Y15_N52
\pwms:8:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(8));

-- Location: FF_X25_Y17_N22
\pwms:8:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(8));

-- Location: MLABCELL_X25_Y15_N6
\pwms:8:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:8:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:8:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X25_Y15_N7
\pwms:8:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(7));

-- Location: FF_X25_Y17_N19
\pwms:8:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(7));

-- Location: MLABCELL_X25_Y15_N36
\pwms:8:pwm|half_duty_new[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[6]~feeder_combout\ = ( \pwms:8:pwm|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~23\,
	combout => \pwms:8:pwm|half_duty_new[6]~feeder_combout\);

-- Location: FF_X25_Y15_N37
\pwms:8:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[6]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(6));

-- Location: FF_X25_Y17_N16
\pwms:8:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(6));

-- Location: MLABCELL_X25_Y15_N21
\pwms:8:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:8:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:8:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X25_Y15_N22
\pwms:8:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(5));

-- Location: FF_X25_Y17_N13
\pwms:8:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(5));

-- Location: MLABCELL_X25_Y15_N57
\pwms:8:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:8:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:8:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X25_Y15_N59
\pwms:8:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(4));

-- Location: FF_X25_Y17_N10
\pwms:8:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(4));

-- Location: MLABCELL_X25_Y15_N18
\pwms:8:pwm|half_duty_new[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[3]~feeder_combout\ = ( \pwms:8:pwm|Mult0~20\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~20\,
	combout => \pwms:8:pwm|half_duty_new[3]~feeder_combout\);

-- Location: FF_X25_Y15_N19
\pwms:8:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[3]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(3));

-- Location: FF_X25_Y17_N7
\pwms:8:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(3));

-- Location: MLABCELL_X25_Y15_N33
\pwms:8:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:8:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:8:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X25_Y15_N34
\pwms:8:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(2));

-- Location: FF_X25_Y17_N4
\pwms:8:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(2));

-- Location: MLABCELL_X25_Y15_N0
\pwms:8:pwm|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[0]~feeder_combout\ = ( \pwms:8:pwm|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~17\,
	combout => \pwms:8:pwm|half_duty_new[0]~feeder_combout\);

-- Location: FF_X25_Y15_N1
\pwms:8:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(0));

-- Location: FF_X25_Y17_N38
\pwms:8:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(0));

-- Location: MLABCELL_X25_Y15_N12
\pwms:8:pwm|half_duty_new[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|half_duty_new[1]~feeder_combout\ = ( \pwms:8:pwm|Mult0~18\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:8:pwm|ALT_INV_Mult0~18\,
	combout => \pwms:8:pwm|half_duty_new[1]~feeder_combout\);

-- Location: FF_X25_Y15_N14
\pwms:8:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|half_duty_new[1]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty_new\(1));

-- Location: FF_X25_Y19_N37
\pwms:8:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:8:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|half_duty\(1));

-- Location: MLABCELL_X25_Y17_N0
\pwms:8:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~33_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(1) ) + ( !\pwms:8:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:8:pwm|Add1~34\ = CARRY(( !\pwms:8:pwm|half_duty\(1) ) + ( !\pwms:8:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:8:pwm|ALT_INV_half_duty\(0),
	datad => \pwms:8:pwm|ALT_INV_half_duty\(1),
	cin => GND,
	sumout => \pwms:8:pwm|Add1~33_sumout\,
	cout => \pwms:8:pwm|Add1~34\);

-- Location: MLABCELL_X25_Y17_N3
\pwms:8:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~25_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:8:pwm|Add1~34\ ))
-- \pwms:8:pwm|Add1~26\ = CARRY(( !\pwms:8:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:8:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:8:pwm|Add1~34\,
	sumout => \pwms:8:pwm|Add1~25_sumout\,
	cout => \pwms:8:pwm|Add1~26\);

-- Location: MLABCELL_X25_Y17_N6
\pwms:8:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~13_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:8:pwm|Add1~26\ ))
-- \pwms:8:pwm|Add1~14\ = CARRY(( !\pwms:8:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:8:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:8:pwm|Add1~26\,
	sumout => \pwms:8:pwm|Add1~13_sumout\,
	cout => \pwms:8:pwm|Add1~14\);

-- Location: MLABCELL_X25_Y17_N9
\pwms:8:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~17_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:8:pwm|Add1~14\ ))
-- \pwms:8:pwm|Add1~18\ = CARRY(( !\pwms:8:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:8:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:8:pwm|Add1~14\,
	sumout => \pwms:8:pwm|Add1~17_sumout\,
	cout => \pwms:8:pwm|Add1~18\);

-- Location: MLABCELL_X25_Y17_N12
\pwms:8:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~21_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:8:pwm|Add1~18\ ))
-- \pwms:8:pwm|Add1~22\ = CARRY(( !\pwms:8:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:8:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:8:pwm|Add1~18\,
	sumout => \pwms:8:pwm|Add1~21_sumout\,
	cout => \pwms:8:pwm|Add1~22\);

-- Location: MLABCELL_X25_Y17_N15
\pwms:8:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~1_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:8:pwm|Add1~22\ ))
-- \pwms:8:pwm|Add1~2\ = CARRY(( !\pwms:8:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:8:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:8:pwm|Add1~22\,
	sumout => \pwms:8:pwm|Add1~1_sumout\,
	cout => \pwms:8:pwm|Add1~2\);

-- Location: MLABCELL_X25_Y17_N18
\pwms:8:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~5_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:8:pwm|Add1~2\ ))
-- \pwms:8:pwm|Add1~6\ = CARRY(( !\pwms:8:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:8:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:8:pwm|Add1~2\,
	sumout => \pwms:8:pwm|Add1~5_sumout\,
	cout => \pwms:8:pwm|Add1~6\);

-- Location: MLABCELL_X25_Y17_N21
\pwms:8:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~9_sumout\ = SUM(( !\pwms:8:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:8:pwm|Add1~6\ ))
-- \pwms:8:pwm|Add1~10\ = CARRY(( !\pwms:8:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:8:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:8:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:8:pwm|Add1~6\,
	sumout => \pwms:8:pwm|Add1~9_sumout\,
	cout => \pwms:8:pwm|Add1~10\);

-- Location: MLABCELL_X25_Y17_N24
\pwms:8:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:8:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:8:pwm|Add1~10\,
	sumout => \pwms:8:pwm|Add1~29_sumout\);

-- Location: MLABCELL_X25_Y19_N21
\pwms:8:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|pwm_out~2_combout\ = ( \pwms:8:pwm|Add1~33_sumout\ & ( \pwms:8:pwm|half_duty\(0) & ( (\pwms:0:pwm|count[0]~DUPLICATE_q\ & \pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( !\pwms:8:pwm|Add1~33_sumout\ & ( \pwms:8:pwm|half_duty\(0) & ( 
-- (\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( \pwms:8:pwm|Add1~33_sumout\ & ( !\pwms:8:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & \pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\pwms:8:pwm|Add1~33_sumout\ & ( !\pwms:8:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101001010101000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datae => \pwms:8:pwm|ALT_INV_Add1~33_sumout\,
	dataf => \pwms:8:pwm|ALT_INV_half_duty\(0),
	combout => \pwms:8:pwm|pwm_out~2_combout\);

-- Location: MLABCELL_X25_Y17_N48
\pwms:8:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|pwm_out~3_combout\ = ( \pwms:8:pwm|pwm_out~2_combout\ & ( (!\pwms:0:pwm|count\(9) & (\pwms:8:pwm|Add1~29_sumout\ & (!\pwms:0:pwm|count\(2) $ (\pwms:8:pwm|Add1~25_sumout\)))) # (\pwms:0:pwm|count\(9) & (!\pwms:8:pwm|Add1~29_sumout\ & 
-- (!\pwms:0:pwm|count\(2) $ (\pwms:8:pwm|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000000100100100100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(9),
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:8:pwm|ALT_INV_Add1~29_sumout\,
	datad => \pwms:8:pwm|ALT_INV_Add1~25_sumout\,
	dataf => \pwms:8:pwm|ALT_INV_pwm_out~2_combout\,
	combout => \pwms:8:pwm|pwm_out~3_combout\);

-- Location: MLABCELL_X25_Y17_N54
\pwms:8:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(5) & ( \pwms:8:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count[3]~DUPLICATE_q\ & (!\pwms:8:pwm|Add1~13_sumout\ & (!\pwms:8:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) # 
-- (\pwms:0:pwm|count[3]~DUPLICATE_q\ & (\pwms:8:pwm|Add1~13_sumout\ & (!\pwms:8:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) ) # ( !\pwms:0:pwm|count\(5) & ( !\pwms:8:pwm|Add1~21_sumout\ & ( (!\pwms:0:pwm|count[3]~DUPLICATE_q\ & 
-- (!\pwms:8:pwm|Add1~13_sumout\ & (!\pwms:8:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) # (\pwms:0:pwm|count[3]~DUPLICATE_q\ & (\pwms:8:pwm|Add1~13_sumout\ & (!\pwms:8:pwm|Add1~17_sumout\ $ (\pwms:0:pwm|count\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	datab => \pwms:8:pwm|ALT_INV_Add1~17_sumout\,
	datac => \pwms:0:pwm|ALT_INV_count\(4),
	datad => \pwms:8:pwm|ALT_INV_Add1~13_sumout\,
	datae => \pwms:0:pwm|ALT_INV_count\(5),
	dataf => \pwms:8:pwm|ALT_INV_Add1~21_sumout\,
	combout => \pwms:8:pwm|pwm_out~1_combout\);

-- Location: MLABCELL_X25_Y17_N36
\pwms:8:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|pwm_out~0_combout\ = ( \pwms:8:pwm|Add1~9_sumout\ & ( \pwms:8:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:8:pwm|Add1~9_sumout\ & ( 
-- \pwms:8:pwm|Add1~1_sumout\ & ( (\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( \pwms:8:pwm|Add1~9_sumout\ & ( !\pwms:8:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|Add1~5_sumout\ $ (\pwms:0:pwm|count\(7))))) ) ) ) # ( !\pwms:8:pwm|Add1~9_sumout\ & ( !\pwms:8:pwm|Add1~1_sumout\ & ( (!\pwms:0:pwm|count\(6) & (!\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|Add1~5_sumout\ $ 
-- (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:8:pwm|ALT_INV_Add1~5_sumout\,
	datab => \pwms:0:pwm|ALT_INV_count\(6),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:8:pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwms:8:pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwms:8:pwm|pwm_out~0_combout\);

-- Location: MLABCELL_X25_Y19_N36
\pwms:8:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Equal1~1_combout\ = ( \pwms:8:pwm|half_duty\(1) & ( \pwms:8:pwm|half_duty\(0) & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & (\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count\(9))) ) ) ) # ( !\pwms:8:pwm|half_duty\(1) & ( 
-- \pwms:8:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count\(9))) ) ) ) # ( \pwms:8:pwm|half_duty\(1) & ( !\pwms:8:pwm|half_duty\(0) & ( (\pwms:0:pwm|count[1]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count\(9))) ) ) ) # ( !\pwms:8:pwm|half_duty\(1) & ( !\pwms:8:pwm|half_duty\(0) & ( (!\pwms:0:pwm|count[1]~DUPLICATE_q\ & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & !\pwms:0:pwm|count\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000010001000000000000100010000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datab => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:0:pwm|ALT_INV_count\(9),
	datae => \pwms:8:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:8:pwm|ALT_INV_half_duty\(0),
	combout => \pwms:8:pwm|Equal1~1_combout\);

-- Location: MLABCELL_X25_Y17_N51
\pwms:8:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (\pwms:8:pwm|half_duty\(3) & (!\pwms:0:pwm|count\(2) $ (\pwms:8:pwm|half_duty\(2)))) ) ) # ( !\pwms:0:pwm|count[3]~DUPLICATE_q\ & ( (!\pwms:8:pwm|half_duty\(3) & 
-- (!\pwms:0:pwm|count\(2) $ (\pwms:8:pwm|half_duty\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(2),
	datac => \pwms:8:pwm|ALT_INV_half_duty\(2),
	datad => \pwms:8:pwm|ALT_INV_half_duty\(3),
	dataf => \pwms:0:pwm|ALT_INV_count[3]~DUPLICATE_q\,
	combout => \pwms:8:pwm|Equal1~2_combout\);

-- Location: MLABCELL_X25_Y19_N42
\pwms:8:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Equal1~3_combout\ = ( \pwms:8:pwm|Equal1~1_combout\ & ( \pwms:8:pwm|Equal1~2_combout\ & ( !\pwms:0:pwm|count\(4) $ (\pwms:8:pwm|half_duty\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:0:pwm|ALT_INV_count\(4),
	datac => \pwms:8:pwm|ALT_INV_half_duty\(4),
	datae => \pwms:8:pwm|ALT_INV_Equal1~1_combout\,
	dataf => \pwms:8:pwm|ALT_INV_Equal1~2_combout\,
	combout => \pwms:8:pwm|Equal1~3_combout\);

-- Location: LABCELL_X15_Y17_N33
\pwms:8:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Equal1~0_combout\ = ( \pwms:8:pwm|half_duty\(5) & ( (\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(6) $ (\pwms:8:pwm|half_duty\(6)))) ) ) # ( !\pwms:8:pwm|half_duty\(5) & ( (!\pwms:0:pwm|count\(5) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:8:pwm|half_duty\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(5),
	datac => \pwms:0:pwm|ALT_INV_count\(6),
	datad => \pwms:8:pwm|ALT_INV_half_duty\(6),
	dataf => \pwms:8:pwm|ALT_INV_half_duty\(5),
	combout => \pwms:8:pwm|Equal1~0_combout\);

-- Location: MLABCELL_X25_Y17_N30
\pwms:8:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|Equal1~4_combout\ = ( \pwms:8:pwm|Equal1~3_combout\ & ( \pwms:8:pwm|Equal1~0_combout\ & ( (!\pwms:8:pwm|half_duty\(8) & (!\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) # (\pwms:8:pwm|half_duty\(8) & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:8:pwm|half_duty\(7) $ (\pwms:0:pwm|count\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:8:pwm|ALT_INV_half_duty\(8),
	datab => \pwms:8:pwm|ALT_INV_half_duty\(7),
	datac => \pwms:0:pwm|ALT_INV_count\(7),
	datad => \pwms:0:pwm|ALT_INV_count\(8),
	datae => \pwms:8:pwm|ALT_INV_Equal1~3_combout\,
	dataf => \pwms:8:pwm|ALT_INV_Equal1~0_combout\,
	combout => \pwms:8:pwm|Equal1~4_combout\);

-- Location: MLABCELL_X25_Y17_N42
\pwms:8:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:8:pwm|pwm_out~4_combout\ = ( \pwms:8:pwm|pwm_out~q\ & ( !\pwms:8:pwm|Equal1~4_combout\ ) ) # ( !\pwms:8:pwm|pwm_out~q\ & ( !\pwms:8:pwm|Equal1~4_combout\ & ( (\pwms:8:pwm|pwm_out~3_combout\ & (\pwms:8:pwm|pwm_out~1_combout\ & 
-- \pwms:8:pwm|pwm_out~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:8:pwm|ALT_INV_pwm_out~3_combout\,
	datab => \pwms:8:pwm|ALT_INV_pwm_out~1_combout\,
	datac => \pwms:8:pwm|ALT_INV_pwm_out~0_combout\,
	datae => \pwms:8:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:8:pwm|ALT_INV_Equal1~4_combout\,
	combout => \pwms:8:pwm|pwm_out~4_combout\);

-- Location: FF_X25_Y17_N44
\pwms:8:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:8:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:8:pwm|pwm_out~q\);

-- Location: LABCELL_X17_Y16_N0
\Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = ( duty_count(0) & ( !duty_count(2) & ( (!duty_count(1) & duty_count(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_duty_count(1),
	datac => ALT_INV_duty_count(3),
	datae => ALT_INV_duty_count(0),
	dataf => ALT_INV_duty_count(2),
	combout => \Decoder0~9_combout\);

-- Location: MLABCELL_X19_Y17_N24
\duty_value~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~65_combout\ = ( \duty_value[9][0]~q\ & ( \Equal0~1_combout\ ) ) # ( !\duty_value[9][0]~q\ & ( \Equal0~1_combout\ & ( \Decoder0~9_combout\ ) ) ) # ( \duty_value[9][0]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder0~9_combout\,
	datae => \ALT_INV_duty_value[9][0]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~65_combout\);

-- Location: FF_X19_Y17_N25
\duty_value[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~65_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][0]~q\);

-- Location: MLABCELL_X19_Y17_N0
\duty_value~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~66_combout\ = ( \duty_value[9][1]~q\ & ( \Decoder0~9_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[9][1]~q\ & ( \Decoder0~9_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~1_sumout\) # ((!\Add1~5_sumout\) # (!\Add1~9_sumout\)))) ) ) ) # ( \duty_value[9][1]~q\ & ( !\Decoder0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_duty_value[9][1]~q\,
	dataf => \ALT_INV_Decoder0~9_combout\,
	combout => \duty_value~66_combout\);

-- Location: FF_X19_Y17_N2
\duty_value[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~66_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][1]~q\);

-- Location: LABCELL_X17_Y16_N12
\duty_value~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~67_combout\ = ( \duty_value[9][2]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~9_combout\) # ((!\Add1~1_sumout\) # (!\Add1~5_sumout\)) ) ) ) # ( !\duty_value[9][2]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~9_combout\ & ((!\Add1~1_sumout\) # 
-- (!\Add1~5_sumout\))) ) ) ) # ( \duty_value[9][2]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~9_combout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[9][2]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~67_combout\);

-- Location: FF_X17_Y16_N14
\duty_value[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~67_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][2]~q\);

-- Location: MLABCELL_X19_Y17_N18
\duty_value~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~68_combout\ = ( \duty_value[9][3]~q\ & ( \Decoder0~9_combout\ & ( (\Equal0~1_combout\ & ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( !\duty_value[9][3]~q\ & ( \Decoder0~9_combout\ & ( (\Equal0~1_combout\ & 
-- ((!\Add1~5_sumout\) # ((!\Add1~1_sumout\ & !\Add1~9_sumout\)))) ) ) ) # ( \duty_value[9][3]~q\ & ( !\Decoder0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001110000011000000111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_duty_value[9][3]~q\,
	dataf => \ALT_INV_Decoder0~9_combout\,
	combout => \duty_value~68_combout\);

-- Location: FF_X19_Y17_N19
\duty_value[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~68_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][3]~q\);

-- Location: LABCELL_X17_Y16_N54
\duty_value~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~69_combout\ = ( \duty_value[9][4]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~9_combout\) # (!\Add1~5_sumout\) ) ) ) # ( !\duty_value[9][4]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~9_combout\ & !\Add1~5_sumout\) ) ) ) # ( \duty_value[9][4]~q\ & 
-- ( !\Equal0~1_combout\ & ( !\Decoder0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder0~9_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_duty_value[9][4]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~69_combout\);

-- Location: FF_X17_Y16_N56
\duty_value[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~69_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][4]~q\);

-- Location: LABCELL_X17_Y16_N27
\duty_value~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value~70_combout\ = ( \duty_value[9][5]~q\ & ( \Equal0~1_combout\ & ( (!\Decoder0~9_combout\) # ((!\Add1~5_sumout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( !\duty_value[9][5]~q\ & ( \Equal0~1_combout\ & ( (\Decoder0~9_combout\ & 
-- (!\Add1~5_sumout\ & ((!\Add1~9_sumout\) # (!\Add1~1_sumout\)))) ) ) ) # ( \duty_value[9][5]~q\ & ( !\Equal0~1_combout\ & ( !\Decoder0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001000100010000001110111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder0~9_combout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_duty_value[9][5]~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \duty_value~70_combout\);

-- Location: FF_X17_Y16_N29
\duty_value[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~70_combout\,
	ena => \duty_count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][5]~q\);

-- Location: LABCELL_X17_Y16_N33
\duty_value[9][7]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \duty_value[9][7]~71_combout\ = ( \Decoder0~9_combout\ & ( !\state.calculate_duty_state~q\ & ( (\ena~input_o\ & \reset_n~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_Decoder0~9_combout\,
	dataf => \ALT_INV_state.calculate_duty_state~q\,
	combout => \duty_value[9][7]~71_combout\);

-- Location: FF_X18_Y17_N56
\duty_value[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \duty_value~7_combout\,
	ena => \duty_value[9][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][6]~q\);

-- Location: FF_X18_Y17_N38
\duty_value[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~4_combout\,
	sload => VCC,
	ena => \duty_value[9][7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \duty_value[9][7]~q\);

-- Location: DSP_X16_Y15_N0
\pwms:9:pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
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
	ax => \pwms:9:pwm|Mult0~8_AX_bus\,
	ay => \pwms:9:pwm|Mult0~8_AY_bus\,
	resulta => \pwms:9:pwm|Mult0~8_RESULTA_bus\);

-- Location: FF_X17_Y15_N19
\pwms:9:pwm|half_duty_new[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|Mult0~23\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(6));

-- Location: FF_X18_Y18_N16
\pwms:9:pwm|half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(6),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(6));

-- Location: LABCELL_X17_Y15_N36
\pwms:9:pwm|half_duty_new[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[5]~feeder_combout\ = ( \pwms:9:pwm|Mult0~22\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~22\,
	combout => \pwms:9:pwm|half_duty_new[5]~feeder_combout\);

-- Location: FF_X17_Y15_N37
\pwms:9:pwm|half_duty_new[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[5]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(5));

-- Location: FF_X18_Y18_N13
\pwms:9:pwm|half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(5),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(5));

-- Location: LABCELL_X17_Y16_N51
\pwms:9:pwm|half_duty_new[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[4]~feeder_combout\ = ( \pwms:9:pwm|Mult0~21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~21\,
	combout => \pwms:9:pwm|half_duty_new[4]~feeder_combout\);

-- Location: FF_X17_Y16_N52
\pwms:9:pwm|half_duty_new[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[4]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(4));

-- Location: FF_X18_Y18_N11
\pwms:9:pwm|half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(4),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(4));

-- Location: FF_X17_Y15_N58
\pwms:9:pwm|half_duty_new[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|Mult0~20\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(3));

-- Location: FF_X18_Y18_N7
\pwms:9:pwm|half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(3),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(3));

-- Location: LABCELL_X17_Y15_N12
\pwms:9:pwm|half_duty_new[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[2]~feeder_combout\ = ( \pwms:9:pwm|Mult0~19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~19\,
	combout => \pwms:9:pwm|half_duty_new[2]~feeder_combout\);

-- Location: FF_X17_Y15_N13
\pwms:9:pwm|half_duty_new[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[2]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(2));

-- Location: FF_X18_Y18_N4
\pwms:9:pwm|half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(2),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(2));

-- Location: FF_X17_Y15_N4
\pwms:9:pwm|half_duty_new[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|Mult0~18\,
	sclr => \ALT_INV_ena~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(1));

-- Location: FF_X18_Y18_N32
\pwms:9:pwm|half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(1),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(1));

-- Location: LABCELL_X17_Y15_N15
\pwms:9:pwm|half_duty_new[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[0]~feeder_combout\ = ( \pwms:9:pwm|Mult0~17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~17\,
	combout => \pwms:9:pwm|half_duty_new[0]~feeder_combout\);

-- Location: FF_X17_Y15_N17
\pwms:9:pwm|half_duty_new[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[0]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(0));

-- Location: FF_X18_Y18_N50
\pwms:9:pwm|half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(0),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(0));

-- Location: LABCELL_X18_Y18_N0
\pwms:9:pwm|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~33_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(1) ) + ( !\pwms:9:pwm|half_duty\(0) ) + ( !VCC ))
-- \pwms:9:pwm|Add1~34\ = CARRY(( !\pwms:9:pwm|half_duty\(1) ) + ( !\pwms:9:pwm|half_duty\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:9:pwm|ALT_INV_half_duty\(1),
	datac => \pwms:9:pwm|ALT_INV_half_duty\(0),
	cin => GND,
	sumout => \pwms:9:pwm|Add1~33_sumout\,
	cout => \pwms:9:pwm|Add1~34\);

-- Location: LABCELL_X18_Y18_N3
\pwms:9:pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~25_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:9:pwm|Add1~34\ ))
-- \pwms:9:pwm|Add1~26\ = CARRY(( !\pwms:9:pwm|half_duty\(2) ) + ( GND ) + ( \pwms:9:pwm|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(2),
	cin => \pwms:9:pwm|Add1~34\,
	sumout => \pwms:9:pwm|Add1~25_sumout\,
	cout => \pwms:9:pwm|Add1~26\);

-- Location: LABCELL_X18_Y18_N6
\pwms:9:pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~13_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:9:pwm|Add1~26\ ))
-- \pwms:9:pwm|Add1~14\ = CARRY(( !\pwms:9:pwm|half_duty\(3) ) + ( VCC ) + ( \pwms:9:pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(3),
	cin => \pwms:9:pwm|Add1~26\,
	sumout => \pwms:9:pwm|Add1~13_sumout\,
	cout => \pwms:9:pwm|Add1~14\);

-- Location: LABCELL_X18_Y18_N9
\pwms:9:pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~17_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:9:pwm|Add1~14\ ))
-- \pwms:9:pwm|Add1~18\ = CARRY(( !\pwms:9:pwm|half_duty\(4) ) + ( GND ) + ( \pwms:9:pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(4),
	cin => \pwms:9:pwm|Add1~14\,
	sumout => \pwms:9:pwm|Add1~17_sumout\,
	cout => \pwms:9:pwm|Add1~18\);

-- Location: LABCELL_X18_Y18_N12
\pwms:9:pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~21_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:9:pwm|Add1~18\ ))
-- \pwms:9:pwm|Add1~22\ = CARRY(( !\pwms:9:pwm|half_duty\(5) ) + ( VCC ) + ( \pwms:9:pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(5),
	cin => \pwms:9:pwm|Add1~18\,
	sumout => \pwms:9:pwm|Add1~21_sumout\,
	cout => \pwms:9:pwm|Add1~22\);

-- Location: LABCELL_X18_Y18_N15
\pwms:9:pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~1_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:9:pwm|Add1~22\ ))
-- \pwms:9:pwm|Add1~2\ = CARRY(( !\pwms:9:pwm|half_duty\(6) ) + ( VCC ) + ( \pwms:9:pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(6),
	cin => \pwms:9:pwm|Add1~22\,
	sumout => \pwms:9:pwm|Add1~1_sumout\,
	cout => \pwms:9:pwm|Add1~2\);

-- Location: LABCELL_X17_Y15_N45
\pwms:9:pwm|half_duty_new[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[8]~feeder_combout\ = ( \pwms:9:pwm|Mult0~25\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~25\,
	combout => \pwms:9:pwm|half_duty_new[8]~feeder_combout\);

-- Location: FF_X17_Y15_N46
\pwms:9:pwm|half_duty_new[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[8]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(8));

-- Location: FF_X18_Y18_N23
\pwms:9:pwm|half_duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(8),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(8));

-- Location: LABCELL_X17_Y15_N42
\pwms:9:pwm|half_duty_new[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|half_duty_new[7]~feeder_combout\ = ( \pwms:9:pwm|Mult0~24\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwms:9:pwm|ALT_INV_Mult0~24\,
	combout => \pwms:9:pwm|half_duty_new[7]~feeder_combout\);

-- Location: FF_X17_Y15_N44
\pwms:9:pwm|half_duty_new[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|half_duty_new[7]~feeder_combout\,
	sclr => \ALT_INV_ena~input_o\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty_new\(7));

-- Location: FF_X18_Y18_N19
\pwms:9:pwm|half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pwms:9:pwm|half_duty_new\(7),
	sload => VCC,
	ena => \pwms:0:pwm|half_duty[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|half_duty\(7));

-- Location: LABCELL_X18_Y18_N18
\pwms:9:pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~5_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:9:pwm|Add1~2\ ))
-- \pwms:9:pwm|Add1~6\ = CARRY(( !\pwms:9:pwm|half_duty\(7) ) + ( VCC ) + ( \pwms:9:pwm|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(7),
	cin => \pwms:9:pwm|Add1~2\,
	sumout => \pwms:9:pwm|Add1~5_sumout\,
	cout => \pwms:9:pwm|Add1~6\);

-- Location: LABCELL_X18_Y18_N21
\pwms:9:pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~9_sumout\ = SUM(( !\pwms:9:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:9:pwm|Add1~6\ ))
-- \pwms:9:pwm|Add1~10\ = CARRY(( !\pwms:9:pwm|half_duty\(8) ) + ( VCC ) + ( \pwms:9:pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwms:9:pwm|ALT_INV_half_duty\(8),
	cin => \pwms:9:pwm|Add1~6\,
	sumout => \pwms:9:pwm|Add1~9_sumout\,
	cout => \pwms:9:pwm|Add1~10\);

-- Location: LABCELL_X17_Y18_N15
\pwms:9:pwm|pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|pwm_out~0_combout\ = ( \pwms:9:pwm|Add1~9_sumout\ & ( \pwms:9:pwm|Add1~5_sumout\ & ( (\pwms:0:pwm|count\(7) & (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:9:pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwms:9:pwm|Add1~9_sumout\ & ( 
-- \pwms:9:pwm|Add1~5_sumout\ & ( (\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:9:pwm|Add1~1_sumout\)))) ) ) ) # ( \pwms:9:pwm|Add1~9_sumout\ & ( !\pwms:9:pwm|Add1~5_sumout\ & ( (!\pwms:0:pwm|count\(7) & 
-- (\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ (\pwms:9:pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwms:9:pwm|Add1~9_sumout\ & ( !\pwms:9:pwm|Add1~5_sumout\ & ( (!\pwms:0:pwm|count\(7) & (!\pwms:0:pwm|count\(8) & (!\pwms:0:pwm|count\(6) $ 
-- (\pwms:9:pwm|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(6),
	datab => \pwms:0:pwm|ALT_INV_count\(7),
	datac => \pwms:0:pwm|ALT_INV_count\(8),
	datad => \pwms:9:pwm|ALT_INV_Add1~1_sumout\,
	datae => \pwms:9:pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwms:9:pwm|ALT_INV_Add1~5_sumout\,
	combout => \pwms:9:pwm|pwm_out~0_combout\);

-- Location: LABCELL_X18_Y18_N45
\pwms:9:pwm|pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|pwm_out~1_combout\ = ( \pwms:0:pwm|count\(4) & ( \pwms:9:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (\pwms:9:pwm|Add1~17_sumout\ & (!\pwms:9:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) ) ) ) # ( !\pwms:0:pwm|count\(4) & ( 
-- \pwms:9:pwm|Add1~13_sumout\ & ( (\pwms:0:pwm|count\(3) & (!\pwms:9:pwm|Add1~17_sumout\ & (!\pwms:9:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) ) ) ) # ( \pwms:0:pwm|count\(4) & ( !\pwms:9:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & 
-- (\pwms:9:pwm|Add1~17_sumout\ & (!\pwms:9:pwm|Add1~21_sumout\ $ (\pwms:0:pwm|count\(5))))) ) ) ) # ( !\pwms:0:pwm|count\(4) & ( !\pwms:9:pwm|Add1~13_sumout\ & ( (!\pwms:0:pwm|count\(3) & (!\pwms:9:pwm|Add1~17_sumout\ & (!\pwms:9:pwm|Add1~21_sumout\ $ 
-- (\pwms:0:pwm|count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(3),
	datab => \pwms:9:pwm|ALT_INV_Add1~17_sumout\,
	datac => \pwms:9:pwm|ALT_INV_Add1~21_sumout\,
	datad => \pwms:0:pwm|ALT_INV_count\(5),
	datae => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:9:pwm|ALT_INV_Add1~13_sumout\,
	combout => \pwms:9:pwm|pwm_out~1_combout\);

-- Location: LABCELL_X18_Y18_N33
\pwms:9:pwm|pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|pwm_out~2_combout\ = (!\pwms:9:pwm|half_duty\(0) & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:9:pwm|Add1~33_sumout\)))) # (\pwms:9:pwm|half_duty\(0) & (\pwms:0:pwm|count[0]~DUPLICATE_q\ & 
-- (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:9:pwm|Add1~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:9:pwm|ALT_INV_half_duty\(0),
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:9:pwm|ALT_INV_Add1~33_sumout\,
	combout => \pwms:9:pwm|pwm_out~2_combout\);

-- Location: LABCELL_X18_Y18_N24
\pwms:9:pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Add1~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwms:9:pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwms:9:pwm|Add1~10\,
	sumout => \pwms:9:pwm|Add1~29_sumout\);

-- Location: LABCELL_X18_Y18_N51
\pwms:9:pwm|pwm_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|pwm_out~3_combout\ = ( \pwms:9:pwm|Add1~25_sumout\ & ( \pwms:9:pwm|Add1~29_sumout\ & ( (!\pwms:0:pwm|count\(9) & (\pwms:0:pwm|count\(2) & \pwms:9:pwm|pwm_out~2_combout\)) ) ) ) # ( !\pwms:9:pwm|Add1~25_sumout\ & ( \pwms:9:pwm|Add1~29_sumout\ & 
-- ( (!\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) & \pwms:9:pwm|pwm_out~2_combout\)) ) ) ) # ( \pwms:9:pwm|Add1~25_sumout\ & ( !\pwms:9:pwm|Add1~29_sumout\ & ( (\pwms:0:pwm|count\(9) & (\pwms:0:pwm|count\(2) & \pwms:9:pwm|pwm_out~2_combout\)) ) ) ) # ( 
-- !\pwms:9:pwm|Add1~25_sumout\ & ( !\pwms:9:pwm|Add1~29_sumout\ & ( (\pwms:0:pwm|count\(9) & (!\pwms:0:pwm|count\(2) & \pwms:9:pwm|pwm_out~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000010100000000101000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:0:pwm|ALT_INV_count\(9),
	datac => \pwms:0:pwm|ALT_INV_count\(2),
	datad => \pwms:9:pwm|ALT_INV_pwm_out~2_combout\,
	datae => \pwms:9:pwm|ALT_INV_Add1~25_sumout\,
	dataf => \pwms:9:pwm|ALT_INV_Add1~29_sumout\,
	combout => \pwms:9:pwm|pwm_out~3_combout\);

-- Location: LABCELL_X18_Y18_N30
\pwms:9:pwm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Equal1~1_combout\ = ( !\pwms:0:pwm|count\(9) & ( (!\pwms:9:pwm|half_duty\(0) & (!\pwms:0:pwm|count[0]~DUPLICATE_q\ & (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:9:pwm|half_duty\(1))))) # (\pwms:9:pwm|half_duty\(0) & 
-- (\pwms:0:pwm|count[0]~DUPLICATE_q\ & (!\pwms:0:pwm|count[1]~DUPLICATE_q\ $ (\pwms:9:pwm|half_duty\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:9:pwm|ALT_INV_half_duty\(0),
	datab => \pwms:0:pwm|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \pwms:0:pwm|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \pwms:9:pwm|ALT_INV_half_duty\(1),
	dataf => \pwms:0:pwm|ALT_INV_count\(9),
	combout => \pwms:9:pwm|Equal1~1_combout\);

-- Location: LABCELL_X17_Y18_N39
\pwms:9:pwm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Equal1~2_combout\ = ( \pwms:0:pwm|count\(2) & ( (\pwms:9:pwm|half_duty\(2) & (!\pwms:9:pwm|half_duty\(3) $ (\pwms:0:pwm|count\(3)))) ) ) # ( !\pwms:0:pwm|count\(2) & ( (!\pwms:9:pwm|half_duty\(2) & (!\pwms:9:pwm|half_duty\(3) $ 
-- (\pwms:0:pwm|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:9:pwm|ALT_INV_half_duty\(2),
	datac => \pwms:9:pwm|ALT_INV_half_duty\(3),
	datad => \pwms:0:pwm|ALT_INV_count\(3),
	dataf => \pwms:0:pwm|ALT_INV_count\(2),
	combout => \pwms:9:pwm|Equal1~2_combout\);

-- Location: LABCELL_X17_Y18_N36
\pwms:9:pwm|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Equal1~3_combout\ = ( \pwms:9:pwm|Equal1~2_combout\ & ( (\pwms:9:pwm|Equal1~1_combout\ & (!\pwms:9:pwm|half_duty\(4) $ (\pwms:0:pwm|count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:9:pwm|ALT_INV_half_duty\(4),
	datac => \pwms:9:pwm|ALT_INV_Equal1~1_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(4),
	dataf => \pwms:9:pwm|ALT_INV_Equal1~2_combout\,
	combout => \pwms:9:pwm|Equal1~3_combout\);

-- Location: LABCELL_X17_Y18_N6
\pwms:9:pwm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Equal1~0_combout\ = ( \pwms:0:pwm|count\(6) & ( (\pwms:9:pwm|half_duty\(6) & (!\pwms:9:pwm|half_duty\(5) $ (\pwms:0:pwm|count\(5)))) ) ) # ( !\pwms:0:pwm|count\(6) & ( (!\pwms:9:pwm|half_duty\(6) & (!\pwms:9:pwm|half_duty\(5) $ 
-- (\pwms:0:pwm|count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:9:pwm|ALT_INV_half_duty\(6),
	datac => \pwms:9:pwm|ALT_INV_half_duty\(5),
	datad => \pwms:0:pwm|ALT_INV_count\(5),
	dataf => \pwms:0:pwm|ALT_INV_count\(6),
	combout => \pwms:9:pwm|Equal1~0_combout\);

-- Location: LABCELL_X17_Y18_N42
\pwms:9:pwm|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|Equal1~4_combout\ = ( \pwms:9:pwm|half_duty\(7) & ( \pwms:9:pwm|Equal1~0_combout\ & ( (\pwms:9:pwm|Equal1~3_combout\ & (\pwms:0:pwm|count\(7) & (!\pwms:9:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) ) ) ) # ( !\pwms:9:pwm|half_duty\(7) & ( 
-- \pwms:9:pwm|Equal1~0_combout\ & ( (\pwms:9:pwm|Equal1~3_combout\ & (!\pwms:0:pwm|count\(7) & (!\pwms:9:pwm|half_duty\(8) $ (\pwms:0:pwm|count\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwms:9:pwm|ALT_INV_half_duty\(8),
	datab => \pwms:0:pwm|ALT_INV_count\(8),
	datac => \pwms:9:pwm|ALT_INV_Equal1~3_combout\,
	datad => \pwms:0:pwm|ALT_INV_count\(7),
	datae => \pwms:9:pwm|ALT_INV_half_duty\(7),
	dataf => \pwms:9:pwm|ALT_INV_Equal1~0_combout\,
	combout => \pwms:9:pwm|Equal1~4_combout\);

-- Location: LABCELL_X17_Y18_N30
\pwms:9:pwm|pwm_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwms:9:pwm|pwm_out~4_combout\ = ( \pwms:9:pwm|pwm_out~q\ & ( !\pwms:9:pwm|Equal1~4_combout\ ) ) # ( !\pwms:9:pwm|pwm_out~q\ & ( !\pwms:9:pwm|Equal1~4_combout\ & ( (\pwms:9:pwm|pwm_out~0_combout\ & (\pwms:9:pwm|pwm_out~1_combout\ & 
-- \pwms:9:pwm|pwm_out~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwms:9:pwm|ALT_INV_pwm_out~0_combout\,
	datac => \pwms:9:pwm|ALT_INV_pwm_out~1_combout\,
	datad => \pwms:9:pwm|ALT_INV_pwm_out~3_combout\,
	datae => \pwms:9:pwm|ALT_INV_pwm_out~q\,
	dataf => \pwms:9:pwm|ALT_INV_Equal1~4_combout\,
	combout => \pwms:9:pwm|pwm_out~4_combout\);

-- Location: FF_X17_Y18_N32
\pwms:9:pwm|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwms:9:pwm|pwm_out~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwms:9:pwm|pwm_out~q\);

-- Location: LABCELL_X27_Y31_N0
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


