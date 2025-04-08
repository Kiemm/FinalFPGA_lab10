-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/08/2025 21:42:27"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab10 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab10;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|WideOr0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~14_combout\ : std_logic;
SIGNAL \u3|Add0~32_combout\ : std_logic;
SIGNAL \u3|Add0~45\ : std_logic;
SIGNAL \u3|Add0~46_combout\ : std_logic;
SIGNAL \u3|Add0~47\ : std_logic;
SIGNAL \u3|Add0~48_combout\ : std_logic;
SIGNAL \u3|Add0~49\ : std_logic;
SIGNAL \u3|Add0~50_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~3_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~8\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~9_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~10\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~11_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~12\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~13_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~14\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~15_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~16\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~17_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11_combout\ : std_logic;
SIGNAL \memoey|memory~1_combout\ : std_logic;
SIGNAL \u3|Equal0~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~2_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~10_combout\ : std_logic;
SIGNAL \memoey|memory~8_combout\ : std_logic;
SIGNAL \memoey|memory~10_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~4_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~5_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~7_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux30~1_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[6]~0_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~19_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~20_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~24_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[1]~3_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~7_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|A_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux19~0_combout\ : std_logic;
SIGNAL \SW[1]~clkctrl_outclk\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux25~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux25~1_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~3_combout\ : std_logic;
SIGNAL \u3|Add0~11\ : std_logic;
SIGNAL \u3|Add0~12_combout\ : std_logic;
SIGNAL \u3|Equal0~4_combout\ : std_logic;
SIGNAL \u3|Add0~29\ : std_logic;
SIGNAL \u3|Add0~31\ : std_logic;
SIGNAL \u3|Add0~33\ : std_logic;
SIGNAL \u3|Add0~34_combout\ : std_logic;
SIGNAL \u3|Add0~35\ : std_logic;
SIGNAL \u3|Add0~36_combout\ : std_logic;
SIGNAL \u3|Equal0~3_combout\ : std_logic;
SIGNAL \u3|Add0~37\ : std_logic;
SIGNAL \u3|Add0~38_combout\ : std_logic;
SIGNAL \u3|Add0~39\ : std_logic;
SIGNAL \u3|Add0~40_combout\ : std_logic;
SIGNAL \u3|Add0~41\ : std_logic;
SIGNAL \u3|Add0~42_combout\ : std_logic;
SIGNAL \u3|Add0~43\ : std_logic;
SIGNAL \u3|Add0~44_combout\ : std_logic;
SIGNAL \u3|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Equal0~5_combout\ : std_logic;
SIGNAL \u3|delay~4_combout\ : std_logic;
SIGNAL \u3|Add0~13\ : std_logic;
SIGNAL \u3|Add0~15\ : std_logic;
SIGNAL \u3|Add0~16_combout\ : std_logic;
SIGNAL \u3|delay~3_combout\ : std_logic;
SIGNAL \u3|Add0~17\ : std_logic;
SIGNAL \u3|Add0~18_combout\ : std_logic;
SIGNAL \u3|delay~2_combout\ : std_logic;
SIGNAL \u3|Add0~19\ : std_logic;
SIGNAL \u3|Add0~20_combout\ : std_logic;
SIGNAL \u3|Add0~21\ : std_logic;
SIGNAL \u3|Add0~22_combout\ : std_logic;
SIGNAL \u3|Add0~23\ : std_logic;
SIGNAL \u3|Add0~24_combout\ : std_logic;
SIGNAL \u3|Add0~25\ : std_logic;
SIGNAL \u3|Add0~26_combout\ : std_logic;
SIGNAL \u3|Add0~27\ : std_logic;
SIGNAL \u3|Add0~28_combout\ : std_logic;
SIGNAL \u3|delay~1_combout\ : std_logic;
SIGNAL \u3|Equal0~6_combout\ : std_logic;
SIGNAL \u3|Equal0~7_combout\ : std_logic;
SIGNAL \u3|delay~6_combout\ : std_logic;
SIGNAL \u3|Add0~1\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u3|Add0~3\ : std_logic;
SIGNAL \u3|Add0~5\ : std_logic;
SIGNAL \u3|Add0~7\ : std_logic;
SIGNAL \u3|Add0~8_combout\ : std_logic;
SIGNAL \u3|delay~5_combout\ : std_logic;
SIGNAL \u3|Add0~9\ : std_logic;
SIGNAL \u3|Add0~10_combout\ : std_logic;
SIGNAL \u3|Add0~6_combout\ : std_logic;
SIGNAL \u3|Add0~4_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|Add0~30_combout\ : std_logic;
SIGNAL \u3|delay~0_combout\ : std_logic;
SIGNAL \u3|WideOr0~0_combout\ : std_logic;
SIGNAL \u3|WideOr0~1_combout\ : std_logic;
SIGNAL \u3|WideOr0~combout\ : std_logic;
SIGNAL \u3|WideOr0~clkctrl_outclk\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|addsub_sel~3_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~0_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~6_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~7_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~8_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \CPU_unit|G_reg|q[4]~2_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~0_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~2_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[6]~2_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[6]~3_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[6]~4_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~12_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|A_reg|q[7]~0_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~6_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~8_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~9_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~12_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~13_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~10_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~11_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~15_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~17_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux8~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux30~2_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[6]~0_combout\ : std_logic;
SIGNAL \CPU_unit|R0_reg|q[1]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux28~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux28~1_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~23_combout\ : std_logic;
SIGNAL \CPU_unit|R4_reg|q[3]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~13_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~6_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~2_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~6_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q[1]~1_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[6]~6_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[6]~5_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~1\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~4\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~5_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~21_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~6\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~7_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~22_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~1_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \memoey|memory~7_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~11_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \memoey|memory~6_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[6]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~9_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|R5_reg|q[7]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~1_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \memoey|memory~5_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~7_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~8_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~1_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~9_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~5_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~6_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~7_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~8_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~1_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory~9_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~5_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \memoey|memory~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~1_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux30~0_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[5]~1_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memoey|memory~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~3_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~5_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|en_reg[14]~0_combout\ : std_logic;
SIGNAL \CPU_unit|W_reg|q~regout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q[6]~2_combout\ : std_logic;
SIGNAL \wr_en_mem~combout\ : std_logic;
SIGNAL \memoey|memory~2_combout\ : std_logic;
SIGNAL \memoey|memory~combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \memoey|memory~11_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~3_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~26_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~5_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[23]~1_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Add0~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~16_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~3_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~1_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|en_reg[15]~1_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~1_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~25_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~3_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~5_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~6_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~7_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~14_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|addsub_sel~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~14_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux23~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux23~1_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q~5_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \LED|memory[0][3]~8_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~0_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~1_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~2_combout\ : std_logic;
SIGNAL \LED|memory[0][3]~regout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\ : std_logic;
SIGNAL \LED|memory[0][2]~9_combout\ : std_logic;
SIGNAL \LED|memory[0][2]~regout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~4_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~regout\ : std_logic;
SIGNAL \LED|memory[0][6]~5_combout\ : std_logic;
SIGNAL \LED|memory[0][6]~regout\ : std_logic;
SIGNAL \LED|memory[0][5]~6_combout\ : std_logic;
SIGNAL \LED|memory[0][5]~regout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\ : std_logic;
SIGNAL \LED|memory[0][4]~7_combout\ : std_logic;
SIGNAL \LED|memory[0][4]~regout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\ : std_logic;
SIGNAL \LED|memory[0][1]~10_combout\ : std_logic;
SIGNAL \LED|memory[0][1]~regout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~3_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~regout\ : std_logic;
SIGNAL \comb_38|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_38|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ : std_logic;
SIGNAL \comb_39|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_39|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \comb_40|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_40|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_40|WideOr1~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0_bypass\ : std_logic_vector(0 TO 28);
SIGNAL \CPU_unit|R0_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R1_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R2_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R3_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R4_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R5_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R6_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|ADDR_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|Dout_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|G_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|flag_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|A_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|delay\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \CPU_unit|IR_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R7_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|uut|step\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \comb_39|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \comb_38|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][0]~regout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \comb_21|Div2|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\CPU_unit|Dout_reg|q\(8) & \CPU_unit|Dout_reg|q\(7) & \CPU_unit|Dout_reg|q\(6) & \CPU_unit|Dout_reg|q\(5) & \CPU_unit|Dout_reg|q\(4) & \CPU_unit|Dout_reg|q\(3) & 
\CPU_unit|Dout_reg|q\(2) & \CPU_unit|Dout_reg|q\(1) & \CPU_unit|Dout_reg|q\(0));

\memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CPU_unit|ADDR_reg|q\(4) & \CPU_unit|ADDR_reg|q\(3) & \CPU_unit|ADDR_reg|q\(2) & \CPU_unit|ADDR_reg|q\(1) & \CPU_unit|ADDR_reg|q\(0));

\memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\CPU_unit|ADDR_reg|q~13_combout\ & \CPU_unit|ADDR_reg|q~11_combout\ & \CPU_unit|ADDR_reg|q~9_combout\ & \CPU_unit|ADDR_reg|q~7_combout\ & \CPU_unit|ADDR_reg|q~5_combout\);

\memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memoey|memory_rtl_0|auto_generated|ram_block1a1\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memoey|memory_rtl_0|auto_generated|ram_block1a2\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memoey|memory_rtl_0|auto_generated|ram_block1a3\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memoey|memory_rtl_0|auto_generated|ram_block1a4\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memoey|memory_rtl_0|auto_generated|ram_block1a5\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memoey|memory_rtl_0|auto_generated|ram_block1a6\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memoey|memory_rtl_0|auto_generated|ram_block1a7\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\memoey|memory_rtl_0|auto_generated|ram_block1a8\ <= \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\u3|WideOr0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u3|WideOr0~combout\);

\SW[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(1));
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\comb_39|ALT_INV_WideOr0~0_combout\ <= NOT \comb_39|WideOr0~0_combout\;
\comb_38|ALT_INV_WideOr0~0_combout\ <= NOT \comb_38|WideOr0~0_combout\;
\LED|ALT_INV_memory[0][0]~regout\ <= NOT \LED|memory[0][0]~regout\;
\comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[8]~12_combout\ <= NOT \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\;
\comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\comb_21|Div2|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\ <= NOT \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\;

-- Location: LCCOMB_X12_Y13_N6
\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \LED|memory[0][5]~regout\ $ (GND)
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\LED|memory[0][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][5]~regout\,
	datad => VCC,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X12_Y13_N8
\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\LED|memory[0][6]~regout\ & (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # (!\LED|memory[0][6]~regout\ & 
-- (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\LED|memory[0][6]~regout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][6]~regout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X10_Y13_N2
\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\ & 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X9_Y14_N24
\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\)))))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X14_Y14_N20
\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\LED|memory[0][6]~regout\ & (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # (!\LED|memory[0][6]~regout\ & 
-- (\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\LED|memory[0][6]~regout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][6]~regout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X13_Y14_N22
\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\ & 
-- (!\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X12_Y14_N24
\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\ & 
-- (!\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X13_Y15_N12
\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\,
	datad => VCC,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X12_Y15_N0
\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (GND)
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY(!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X13_Y13_N6
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = \LED|memory[0][3]~regout\ $ (GND)
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY(!\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][3]~regout\,
	datad => VCC,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X13_Y13_N8
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\LED|memory[0][4]~regout\ & (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)) # (!\LED|memory[0][4]~regout\ & 
-- (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & VCC))
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((\LED|memory[0][4]~regout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][4]~regout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X13_Y13_N10
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\LED|memory[0][5]~regout\ & (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ $ (GND))) # (!\LED|memory[0][5]~regout\ & ((GND) # 
-- (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\) # (!\LED|memory[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][5]~regout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X13_Y13_N12
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\LED|memory[0][6]~regout\ & ((\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND))) # (!\LED|memory[0][6]~regout\ & 
-- (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY((\LED|memory[0][6]~regout\) # (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][6]~regout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X13_Y13_N14
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\LED|memory[0][7]~regout\ & (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & VCC)) # (!\LED|memory[0][7]~regout\ & 
-- (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ $ (GND)))
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\LED|memory[0][7]~regout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][7]~regout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCFF_X20_Y16_N7
\CPU_unit|R7_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~19_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(8));

-- Location: LCFF_X20_Y16_N13
\CPU_unit|R7_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~20_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(1));

-- Location: LCFF_X20_Y16_N27
\CPU_unit|R7_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~24_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(5));

-- Location: LCCOMB_X1_Y13_N6
\u3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|delay\(0) $ (VCC)
-- \u3|Add0~1\ = CARRY(\u3|delay\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(0),
	datad => VCC,
	combout => \u3|Add0~0_combout\,
	cout => \u3|Add0~1\);

-- Location: LCCOMB_X1_Y13_N20
\u3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~14_combout\ = (\u3|delay\(7) & (!\u3|Add0~13\)) # (!\u3|delay\(7) & ((\u3|Add0~13\) # (GND)))
-- \u3|Add0~15\ = CARRY((!\u3|Add0~13\) # (!\u3|delay\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(7),
	datad => VCC,
	cin => \u3|Add0~13\,
	combout => \u3|Add0~14_combout\,
	cout => \u3|Add0~15\);

-- Location: LCCOMB_X1_Y12_N6
\u3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~32_combout\ = (\u3|delay\(16) & (\u3|Add0~31\ $ (GND))) # (!\u3|delay\(16) & (!\u3|Add0~31\ & VCC))
-- \u3|Add0~33\ = CARRY((\u3|delay\(16) & !\u3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(16),
	datad => VCC,
	cin => \u3|Add0~31\,
	combout => \u3|Add0~32_combout\,
	cout => \u3|Add0~33\);

-- Location: LCCOMB_X1_Y12_N18
\u3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~44_combout\ = (\u3|delay\(22) & (\u3|Add0~43\ $ (GND))) # (!\u3|delay\(22) & (!\u3|Add0~43\ & VCC))
-- \u3|Add0~45\ = CARRY((\u3|delay\(22) & !\u3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(22),
	datad => VCC,
	cin => \u3|Add0~43\,
	combout => \u3|Add0~44_combout\,
	cout => \u3|Add0~45\);

-- Location: LCCOMB_X1_Y12_N20
\u3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~46_combout\ = (\u3|delay\(23) & (!\u3|Add0~45\)) # (!\u3|delay\(23) & ((\u3|Add0~45\) # (GND)))
-- \u3|Add0~47\ = CARRY((!\u3|Add0~45\) # (!\u3|delay\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(23),
	datad => VCC,
	cin => \u3|Add0~45\,
	combout => \u3|Add0~46_combout\,
	cout => \u3|Add0~47\);

-- Location: LCCOMB_X1_Y12_N22
\u3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~48_combout\ = (\u3|delay\(24) & (\u3|Add0~47\ $ (GND))) # (!\u3|delay\(24) & (!\u3|Add0~47\ & VCC))
-- \u3|Add0~49\ = CARRY((\u3|delay\(24) & !\u3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(24),
	datad => VCC,
	cin => \u3|Add0~47\,
	combout => \u3|Add0~48_combout\,
	cout => \u3|Add0~49\);

-- Location: LCCOMB_X1_Y12_N24
\u3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~50_combout\ = \u3|delay\(25) $ (\u3|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(25),
	cin => \u3|Add0~49\,
	combout => \u3|Add0~50_combout\);

-- Location: LCCOMB_X21_Y16_N16
\CPU_unit|R7_reg|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~3_combout\ = (\CPU_unit|R7_reg|q\(1) & (!\CPU_unit|R7_reg|Add0~1\)) # (!\CPU_unit|R7_reg|q\(1) & ((\CPU_unit|R7_reg|Add0~1\) # (GND)))
-- \CPU_unit|R7_reg|Add0~4\ = CARRY((!\CPU_unit|R7_reg|Add0~1\) # (!\CPU_unit|R7_reg|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(1),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~1\,
	combout => \CPU_unit|R7_reg|Add0~3_combout\,
	cout => \CPU_unit|R7_reg|Add0~4\);

-- Location: LCCOMB_X21_Y16_N20
\CPU_unit|R7_reg|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~7_combout\ = (\CPU_unit|R7_reg|q\(3) & (!\CPU_unit|R7_reg|Add0~6\)) # (!\CPU_unit|R7_reg|q\(3) & ((\CPU_unit|R7_reg|Add0~6\) # (GND)))
-- \CPU_unit|R7_reg|Add0~8\ = CARRY((!\CPU_unit|R7_reg|Add0~6\) # (!\CPU_unit|R7_reg|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(3),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~6\,
	combout => \CPU_unit|R7_reg|Add0~7_combout\,
	cout => \CPU_unit|R7_reg|Add0~8\);

-- Location: LCCOMB_X21_Y16_N22
\CPU_unit|R7_reg|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~9_combout\ = (\CPU_unit|R7_reg|q\(4) & (\CPU_unit|R7_reg|Add0~8\ $ (GND))) # (!\CPU_unit|R7_reg|q\(4) & (!\CPU_unit|R7_reg|Add0~8\ & VCC))
-- \CPU_unit|R7_reg|Add0~10\ = CARRY((\CPU_unit|R7_reg|q\(4) & !\CPU_unit|R7_reg|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(4),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~8\,
	combout => \CPU_unit|R7_reg|Add0~9_combout\,
	cout => \CPU_unit|R7_reg|Add0~10\);

-- Location: LCCOMB_X21_Y16_N24
\CPU_unit|R7_reg|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~11_combout\ = (\CPU_unit|R7_reg|q\(5) & (!\CPU_unit|R7_reg|Add0~10\)) # (!\CPU_unit|R7_reg|q\(5) & ((\CPU_unit|R7_reg|Add0~10\) # (GND)))
-- \CPU_unit|R7_reg|Add0~12\ = CARRY((!\CPU_unit|R7_reg|Add0~10\) # (!\CPU_unit|R7_reg|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(5),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~10\,
	combout => \CPU_unit|R7_reg|Add0~11_combout\,
	cout => \CPU_unit|R7_reg|Add0~12\);

-- Location: LCCOMB_X21_Y16_N26
\CPU_unit|R7_reg|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~13_combout\ = (\CPU_unit|R7_reg|q\(6) & (\CPU_unit|R7_reg|Add0~12\ $ (GND))) # (!\CPU_unit|R7_reg|q\(6) & (!\CPU_unit|R7_reg|Add0~12\ & VCC))
-- \CPU_unit|R7_reg|Add0~14\ = CARRY((\CPU_unit|R7_reg|q\(6) & !\CPU_unit|R7_reg|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(6),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~12\,
	combout => \CPU_unit|R7_reg|Add0~13_combout\,
	cout => \CPU_unit|R7_reg|Add0~14\);

-- Location: LCCOMB_X21_Y16_N28
\CPU_unit|R7_reg|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~15_combout\ = (\CPU_unit|R7_reg|q\(7) & (!\CPU_unit|R7_reg|Add0~14\)) # (!\CPU_unit|R7_reg|q\(7) & ((\CPU_unit|R7_reg|Add0~14\) # (GND)))
-- \CPU_unit|R7_reg|Add0~16\ = CARRY((!\CPU_unit|R7_reg|Add0~14\) # (!\CPU_unit|R7_reg|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(7),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~14\,
	combout => \CPU_unit|R7_reg|Add0~15_combout\,
	cout => \CPU_unit|R7_reg|Add0~16\);

-- Location: LCCOMB_X21_Y16_N30
\CPU_unit|R7_reg|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~17_combout\ = \CPU_unit|R7_reg|Add0~16\ $ (!\CPU_unit|R7_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R7_reg|q\(8),
	cin => \CPU_unit|R7_reg|Add0~16\,
	combout => \CPU_unit|R7_reg|Add0~17_combout\);

-- Location: LCCOMB_X12_Y13_N4
\comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\LED|memory[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \LED|memory[0][7]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36_combout\);

-- Location: LCCOMB_X11_Y13_N18
\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\);

-- Location: LCCOMB_X11_Y13_N24
\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\);

-- Location: LCCOMB_X11_Y13_N20
\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\ = (!\LED|memory[0][4]~regout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][4]~regout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\);

-- Location: LCCOMB_X10_Y13_N24
\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][4]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~46_combout\);

-- Location: LCCOMB_X10_Y13_N20
\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\);

-- Location: LCCOMB_X10_Y14_N8
\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\);

-- Location: LCCOMB_X10_Y14_N24
\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\);

-- Location: LCCOMB_X10_Y14_N28
\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\);

-- Location: LCCOMB_X9_Y14_N6
\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\LED|memory[0][1]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][1]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\);

-- Location: LCCOMB_X10_Y14_N6
\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X12_Y14_N8
\comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\LED|memory[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \LED|memory[0][7]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36_combout\);

-- Location: LCCOMB_X13_Y14_N10
\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\);

-- Location: LCCOMB_X13_Y14_N6
\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~41_combout\);

-- Location: LCCOMB_X13_Y14_N12
\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\ = (!\LED|memory[0][4]~regout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][4]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\);

-- Location: LCCOMB_X12_Y14_N16
\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X12_Y14_N12
\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~47_combout\);

-- Location: LCCOMB_X12_Y14_N20
\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\);

-- Location: LCCOMB_X13_Y15_N24
\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\);

-- Location: LCCOMB_X13_Y15_N10
\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\);

-- Location: LCCOMB_X13_Y15_N6
\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~55_combout\);

-- Location: LCCOMB_X14_Y15_N20
\comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X14_Y15_N6
\comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61_combout\ = (!\LED|memory[0][1]~regout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][1]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X13_Y15_N4
\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\);

-- Location: LCCOMB_X13_Y15_N26
\comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2_combout\);

-- Location: LCCOMB_X12_Y15_N12
\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\);

-- Location: LCCOMB_X12_Y15_N24
\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\ = (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\);

-- Location: LCCOMB_X13_Y13_N30
\comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1_combout\);

-- Location: LCCOMB_X13_Y13_N0
\comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][6]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \LED|memory[0][6]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2_combout\);

-- Location: LCCOMB_X13_Y13_N20
\comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \LED|memory[0][5]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4_combout\);

-- Location: LCCOMB_X13_Y13_N24
\comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7_combout\);

-- Location: LCCOMB_X13_Y13_N2
\comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8_combout\);

-- Location: LCCOMB_X14_Y13_N10
\comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11_combout\ = (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11_combout\);

-- Location: LCFF_X16_Y15_N7
\CPU_unit|IR_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~5_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(2));

-- Location: LCFF_X16_Y15_N29
\CPU_unit|IR_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~7_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(1));

-- Location: LCFF_X19_Y14_N17
\CPU_unit|R6_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(0));

-- Location: LCFF_X19_Y14_N3
\CPU_unit|R1_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(0));

-- Location: LCFF_X18_Y14_N7
\CPU_unit|R3_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(0));

-- Location: LCFF_X16_Y15_N3
\memoey|memory_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(11));

-- Location: LCFF_X15_Y15_N25
\memoey|memory_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(7));

-- Location: LCFF_X15_Y15_N11
\memoey|memory_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(5));

-- Location: LCCOMB_X15_Y15_N24
\memoey|memory~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~1_combout\ = (\memoey|memory_rtl_0_bypass\(5) & (\CPU_unit|ADDR_reg|q\(2) & (\CPU_unit|ADDR_reg|q\(3) $ (!\memoey|memory_rtl_0_bypass\(7))))) # (!\memoey|memory_rtl_0_bypass\(5) & (!\CPU_unit|ADDR_reg|q\(2) & (\CPU_unit|ADDR_reg|q\(3) $ 
-- (!\memoey|memory_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(5),
	datab => \CPU_unit|ADDR_reg|q\(3),
	datac => \memoey|memory_rtl_0_bypass\(7),
	datad => \CPU_unit|ADDR_reg|q\(2),
	combout => \memoey|memory~1_combout\);

-- Location: LCFF_X1_Y12_N25
\u3|delay[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~50_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(25));

-- Location: LCFF_X1_Y12_N23
\u3|delay[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~48_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(24));

-- Location: LCFF_X1_Y12_N21
\u3|delay[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~46_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(23));

-- Location: LCCOMB_X1_Y12_N30
\u3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~1_combout\ = (!\u3|delay\(23) & (!\u3|delay\(0) & (!\u3|delay\(25) & !\u3|delay\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(23),
	datab => \u3|delay\(0),
	datac => \u3|delay\(25),
	datad => \u3|delay\(24),
	combout => \u3|Equal0~1_combout\);

-- Location: LCFF_X1_Y12_N7
\u3|delay[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~32_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(16));

-- Location: LCFF_X1_Y13_N21
\u3|delay[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~14_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(7));

-- Location: LCFF_X21_Y14_N31
\CPU_unit|R6_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(8));

-- Location: LCFF_X20_Y14_N9
\CPU_unit|R1_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(8));

-- Location: LCFF_X20_Y15_N21
\CPU_unit|R0_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(8));

-- Location: LCCOMB_X20_Y15_N20
\CPU_unit|Mux_unit|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(8)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(8) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(8),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(8),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y14_N22
\CPU_unit|uut|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~2_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|uut|step\(1) & ((\CPU_unit|IR_reg|q\(8)) # (\CPU_unit|uut|step\(2))))) # (!\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(2) & \CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux21~2_combout\);

-- Location: LCFF_X21_Y14_N13
\CPU_unit|R6_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(1));

-- Location: LCFF_X22_Y16_N17
\CPU_unit|R1_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(1));

-- Location: LCFF_X20_Y16_N17
\CPU_unit|R3_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R3_reg|q[1]~feeder_combout\,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(1));

-- Location: LCFF_X16_Y15_N25
\memoey|memory_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(13));

-- Location: LCFF_X19_Y14_N9
\CPU_unit|R6_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[2]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(2));

-- Location: LCFF_X18_Y15_N17
\CPU_unit|R2_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~6_combout\,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(2));

-- Location: LCFF_X19_Y14_N7
\CPU_unit|R1_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[2]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(2));

-- Location: LCFF_X16_Y15_N23
\memoey|memory_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X16_Y15_N10
\CPU_unit|ADDR_reg|q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~10_combout\ = (\CPU_unit|uut|Mux25~1_combout\ & (\CPU_unit|ADDR_reg|q\(3) & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux25~1_combout\,
	datab => \CPU_unit|ADDR_reg|q\(3),
	datad => \SW~combout\(1),
	combout => \CPU_unit|ADDR_reg|q~10_combout\);

-- Location: LCFF_X20_Y14_N31
\CPU_unit|R6_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(3));

-- Location: LCFF_X20_Y14_N29
\CPU_unit|R1_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(3));

-- Location: LCFF_X18_Y14_N1
\CPU_unit|R3_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R3_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(3));

-- Location: LCFF_X19_Y14_N5
\CPU_unit|R6_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(4));

-- Location: LCFF_X19_Y14_N23
\CPU_unit|R1_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(4));

-- Location: LCFF_X19_Y15_N27
\CPU_unit|R3_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R3_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(4));

-- Location: LCFF_X16_Y15_N11
\memoey|memory_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(19));

-- Location: LCCOMB_X18_Y15_N10
\memoey|memory~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~8_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(19))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(19),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \memoey|memory~8_combout\);

-- Location: LCFF_X19_Y14_N13
\CPU_unit|R6_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(5));

-- Location: LCFF_X19_Y14_N31
\CPU_unit|R1_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(5));

-- Location: LCFF_X19_Y15_N7
\CPU_unit|R3_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(5));

-- Location: LCFF_X19_Y14_N29
\CPU_unit|R6_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(7));

-- Location: LCFF_X19_Y14_N11
\CPU_unit|R1_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(7));

-- Location: LCFF_X18_Y14_N27
\CPU_unit|R3_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R3_reg|q[7]~feeder_combout\,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(7));

-- Location: LCCOMB_X18_Y15_N20
\memoey|memory~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~10_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(25))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(25),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \memoey|memory~10_combout\);

-- Location: LCFF_X19_Y14_N25
\CPU_unit|R6_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(6));

-- Location: LCFF_X18_Y15_N27
\CPU_unit|R2_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~3_combout\,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(6));

-- Location: LCFF_X19_Y14_N19
\CPU_unit|R1_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(6));

-- Location: LCCOMB_X24_Y14_N26
\CPU_unit|uut|step[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~0_combout\ = ((\CPU_unit|uut|step\(0)) # ((!\CPU_unit|uut|step\(2) & !\CPU_unit|flag_reg|q\(0)))) # (!\CPU_unit|uut|step\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|flag_reg|q\(0),
	combout => \CPU_unit|uut|step[1]~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\CPU_unit|uut|step[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~1_combout\ = (\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|uut|step[1]~0_combout\))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|uut|Decoder0~2_combout\,
	datad => \CPU_unit|uut|step[1]~0_combout\,
	combout => \CPU_unit|uut|step[1]~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
\CPU_unit|uut|step[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~2_combout\ = ((!\CPU_unit|IR_reg|q\(7) & \CPU_unit|IR_reg|q\(6))) # (!\CPU_unit|IR_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|step[1]~2_combout\);

-- Location: LCCOMB_X24_Y14_N2
\CPU_unit|uut|step[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~4_combout\ = (\CPU_unit|uut|step[1]~3_combout\ & (((\CPU_unit|uut|step[1]~1_combout\ & \CPU_unit|uut|Mux18~0_combout\)))) # (!\CPU_unit|uut|step[1]~3_combout\ & ((\CPU_unit|uut|step[1]~2_combout\) # ((\CPU_unit|uut|step[1]~1_combout\ 
-- & \CPU_unit|uut|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step[1]~3_combout\,
	datab => \CPU_unit|uut|step[1]~2_combout\,
	datac => \CPU_unit|uut|step[1]~1_combout\,
	datad => \CPU_unit|uut|Mux18~0_combout\,
	combout => \CPU_unit|uut|step[1]~4_combout\);

-- Location: LCCOMB_X16_Y15_N6
\CPU_unit|IR_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~5_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((\memoey|memory_rtl_0_bypass\(15)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0|auto_generated|ram_block1a2\,
	datab => \SW~combout\(1),
	datac => \memoey|memory_rtl_0_bypass\(15),
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~5_combout\);

-- Location: LCCOMB_X16_Y15_N28
\CPU_unit|IR_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~7_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((\memoey|memory_rtl_0_bypass\(13)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a1\,
	datac => \memoey|memory_rtl_0_bypass\(13),
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~7_combout\);

-- Location: LCCOMB_X22_Y14_N6
\CPU_unit|uut|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux30~1_combout\ = (\CPU_unit|IR_reg|q\(7) & (((\CPU_unit|uut|step\(1))))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|IR_reg|q\(6) $ (!\CPU_unit|uut|step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux30~1_combout\);

-- Location: LCFF_X18_Y15_N19
\CPU_unit|A_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~0_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(0));

-- Location: LCCOMB_X21_Y14_N24
\CPU_unit|R1_reg|q[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[6]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|IR_reg|q\(5),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R1_reg|q[6]~0_combout\);

-- Location: LCFF_X21_Y16_N5
\CPU_unit|A_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|A_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(8));

-- Location: LCFF_X18_Y15_N25
\CPU_unit|A_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~14_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(7));

-- Location: LCFF_X18_Y15_N11
\CPU_unit|A_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(6));

-- Location: LCFF_X18_Y15_N7
\CPU_unit|A_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~2_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(5));

-- Location: LCCOMB_X19_Y16_N24
\CPU_unit|addsub_unit|Add1|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\);

-- Location: LCFF_X18_Y15_N5
\CPU_unit|A_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(3));

-- Location: LCFF_X18_Y15_N29
\CPU_unit|A_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(2));

-- Location: LCFF_X21_Y16_N1
\CPU_unit|A_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~7_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(1));

-- Location: LCCOMB_X20_Y16_N6
\CPU_unit|R7_reg|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~19_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux0~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~17_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~19_combout\);

-- Location: LCCOMB_X20_Y16_N12
\CPU_unit|R7_reg|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~20_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux7~5_combout\ & \CPU_unit|Mux_unit|Mux1~1_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~3_combout\,
	datab => \CPU_unit|Mux_unit|Mux7~5_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|uut|Mux28~1_combout\,
	combout => \CPU_unit|R7_reg|Add0~20_combout\);

-- Location: LCCOMB_X20_Y16_N26
\CPU_unit|R7_reg|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~24_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux3~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~11_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~24_combout\);

-- Location: LCCOMB_X10_Y13_N18
\comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\) # 
-- ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X10_Y14_N26
\comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\) # 
-- ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X13_Y14_N2
\comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- ((\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X13_Y15_N0
\comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\) # 
-- ((\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X22_Y14_N16
\CPU_unit|R6_reg|q[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[1]~3_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|R6_reg|q[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \CPU_unit|R6_reg|q[1]~2_combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|R6_reg|q[1]~3_combout\);

-- Location: LCCOMB_X11_Y13_N16
\comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\LED|memory[0][6]~regout\))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \LED|memory[0][6]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67_combout\);

-- Location: LCCOMB_X11_Y13_N2
\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\LED|memory[0][5]~regout\))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \LED|memory[0][5]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\);

-- Location: LCCOMB_X13_Y14_N16
\comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\LED|memory[0][6]~regout\)) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][6]~regout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64_combout\);

-- Location: LCCOMB_X13_Y15_N2
\comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\LED|memory[0][3]~regout\))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67_combout\);

-- Location: LCCOMB_X23_Y15_N26
\CPU_unit|uut|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~7_combout\ = (\CPU_unit|uut|step\(2) & (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux22~7_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: LCCOMB_X15_Y15_N10
\memoey|memory_rtl_0_bypass[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[5]~feeder_combout\ = \CPU_unit|ADDR_reg|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q\(2),
	combout => \memoey|memory_rtl_0_bypass[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N16
\CPU_unit|R6_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[0]~feeder_combout\ = \CPU_unit|Dout_reg|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~0_combout\,
	combout => \CPU_unit|R6_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N2
\CPU_unit|R1_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[0]~feeder_combout\ = \CPU_unit|Dout_reg|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~0_combout\,
	combout => \CPU_unit|R1_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N4
\CPU_unit|A_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|A_reg|q[8]~feeder_combout\ = \CPU_unit|ADDR_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~1_combout\,
	combout => \CPU_unit|A_reg|q[8]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N30
\CPU_unit|R6_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[8]~feeder_combout\ = \CPU_unit|ADDR_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~1_combout\,
	combout => \CPU_unit|R6_reg|q[8]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N8
\CPU_unit|R1_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[8]~feeder_combout\ = \CPU_unit|ADDR_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~1_combout\,
	combout => \CPU_unit|R1_reg|q[8]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N26
\CPU_unit|R3_reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[7]~feeder_combout\ = \CPU_unit|ADDR_reg|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~14_combout\,
	combout => \CPU_unit|R3_reg|q[7]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N24
\CPU_unit|R6_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[6]~feeder_combout\ = \CPU_unit|Dout_reg|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~3_combout\,
	combout => \CPU_unit|R6_reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N18
\CPU_unit|R1_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[6]~feeder_combout\ = \CPU_unit|Dout_reg|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~3_combout\,
	combout => \CPU_unit|R1_reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N4
\CPU_unit|R6_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[4]~feeder_combout\ = \CPU_unit|Dout_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~4_combout\,
	combout => \CPU_unit|R6_reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N22
\CPU_unit|R1_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[4]~feeder_combout\ = \CPU_unit|Dout_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~4_combout\,
	combout => \CPU_unit|R1_reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N26
\CPU_unit|R3_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[4]~feeder_combout\ = \CPU_unit|Dout_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~4_combout\,
	combout => \CPU_unit|R3_reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N0
\CPU_unit|R3_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[3]~feeder_combout\ = \CPU_unit|Dout_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~5_combout\,
	combout => \CPU_unit|R3_reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N30
\CPU_unit|R6_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[3]~feeder_combout\ = \CPU_unit|Dout_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~5_combout\,
	combout => \CPU_unit|R6_reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N28
\CPU_unit|R1_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[3]~feeder_combout\ = \CPU_unit|Dout_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~5_combout\,
	combout => \CPU_unit|R1_reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N8
\CPU_unit|R6_reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[2]~feeder_combout\ = \CPU_unit|Dout_reg|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~6_combout\,
	combout => \CPU_unit|R6_reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N6
\CPU_unit|R1_reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[2]~feeder_combout\ = \CPU_unit|Dout_reg|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~6_combout\,
	combout => \CPU_unit|R1_reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N16
\CPU_unit|R3_reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[1]~feeder_combout\ = \CPU_unit|Dout_reg|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q~7_combout\,
	combout => \CPU_unit|R3_reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N28
\memoey|memory_rtl_0_bypass[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoey|memory_rtl_0_bypass[12]~feeder_combout\);

-- Location: LCFF_X15_Y15_N29
\memoey|memory_rtl_0_bypass[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(12));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X24_Y15_N8
\CPU_unit|uut|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux19~0_combout\ = (\CPU_unit|uut|step[1]~4_combout\ & (\CPU_unit|uut|step\(1) $ (\CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step[1]~4_combout\,
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux19~0_combout\);

-- Location: CLKCTRL_G6
\SW[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[1]~clkctrl_outclk\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCFF_X24_Y15_N9
\CPU_unit|uut|step[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|uut|Mux19~0_combout\,
	aclr => \SW[1]~clkctrl_outclk\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|uut|step\(1));

-- Location: LCCOMB_X24_Y14_N20
\CPU_unit|uut|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~4_combout\ = (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & !\CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux21~4_combout\);

-- Location: LCCOMB_X24_Y14_N24
\CPU_unit|uut|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~3_combout\ = (\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & (\CPU_unit|uut|step\(2) $ (\CPU_unit|uut|step\(0))))) # (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & \CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux21~3_combout\);

-- Location: LCCOMB_X24_Y14_N0
\CPU_unit|uut|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Decoder0~2_combout\ = (!\CPU_unit|uut|step\(1) & (\CPU_unit|uut|step\(2) & \CPU_unit|uut|step\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\CPU_unit|uut|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux25~0_combout\ = (\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|IR_reg|q\(6)) # ((!\CPU_unit|uut|Decoder0~2_combout\)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(6) & (!\CPU_unit|uut|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|Mux21~3_combout\,
	datad => \CPU_unit|uut|Decoder0~2_combout\,
	combout => \CPU_unit|uut|Mux25~0_combout\);

-- Location: LCCOMB_X24_Y14_N10
\CPU_unit|uut|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux25~1_combout\ = (\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|Mux25~0_combout\ & ((!\CPU_unit|uut|Mux21~4_combout\))) # (!\CPU_unit|uut|Mux25~0_combout\ & (!\CPU_unit|uut|Mux21~2_combout\)))) # (!\CPU_unit|IR_reg|q\(6) & 
-- (((\CPU_unit|uut|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~2_combout\,
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|Mux21~4_combout\,
	datad => \CPU_unit|uut|Mux25~0_combout\,
	combout => \CPU_unit|uut|Mux25~1_combout\);

-- Location: LCCOMB_X15_Y15_N4
\CPU_unit|ADDR_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~3_combout\ = (\CPU_unit|ADDR_reg|q\(0) & (!\SW~combout\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(0),
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~3_combout\);

-- Location: LCCOMB_X1_Y13_N16
\u3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~10_combout\ = (\u3|delay\(5) & (!\u3|Add0~9\)) # (!\u3|delay\(5) & ((\u3|Add0~9\) # (GND)))
-- \u3|Add0~11\ = CARRY((!\u3|Add0~9\) # (!\u3|delay\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(5),
	datad => VCC,
	cin => \u3|Add0~9\,
	combout => \u3|Add0~10_combout\,
	cout => \u3|Add0~11\);

-- Location: LCCOMB_X1_Y13_N18
\u3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~12_combout\ = (\u3|delay\(6) & (\u3|Add0~11\ $ (GND))) # (!\u3|delay\(6) & (!\u3|Add0~11\ & VCC))
-- \u3|Add0~13\ = CARRY((\u3|delay\(6) & !\u3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(6),
	datad => VCC,
	cin => \u3|Add0~11\,
	combout => \u3|Add0~12_combout\,
	cout => \u3|Add0~13\);

-- Location: LCCOMB_X2_Y13_N8
\u3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~4_combout\ = (!\u3|delay\(7) & (!\u3|delay\(10) & (!\u3|delay\(12) & !\u3|delay\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(7),
	datab => \u3|delay\(10),
	datac => \u3|delay\(12),
	datad => \u3|delay\(11),
	combout => \u3|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y12_N2
\u3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~28_combout\ = (\u3|delay\(14) & (\u3|Add0~27\ $ (GND))) # (!\u3|delay\(14) & (!\u3|Add0~27\ & VCC))
-- \u3|Add0~29\ = CARRY((\u3|delay\(14) & !\u3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(14),
	datad => VCC,
	cin => \u3|Add0~27\,
	combout => \u3|Add0~28_combout\,
	cout => \u3|Add0~29\);

-- Location: LCCOMB_X1_Y12_N4
\u3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~30_combout\ = (\u3|delay\(15) & (!\u3|Add0~29\)) # (!\u3|delay\(15) & ((\u3|Add0~29\) # (GND)))
-- \u3|Add0~31\ = CARRY((!\u3|Add0~29\) # (!\u3|delay\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(15),
	datad => VCC,
	cin => \u3|Add0~29\,
	combout => \u3|Add0~30_combout\,
	cout => \u3|Add0~31\);

-- Location: LCCOMB_X1_Y12_N8
\u3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~34_combout\ = (\u3|delay\(17) & (!\u3|Add0~33\)) # (!\u3|delay\(17) & ((\u3|Add0~33\) # (GND)))
-- \u3|Add0~35\ = CARRY((!\u3|Add0~33\) # (!\u3|delay\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(17),
	datad => VCC,
	cin => \u3|Add0~33\,
	combout => \u3|Add0~34_combout\,
	cout => \u3|Add0~35\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCFF_X1_Y12_N9
\u3|delay[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~34_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(17));

-- Location: LCCOMB_X1_Y12_N10
\u3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~36_combout\ = (\u3|delay\(18) & (\u3|Add0~35\ $ (GND))) # (!\u3|delay\(18) & (!\u3|Add0~35\ & VCC))
-- \u3|Add0~37\ = CARRY((\u3|delay\(18) & !\u3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(18),
	datad => VCC,
	cin => \u3|Add0~35\,
	combout => \u3|Add0~36_combout\,
	cout => \u3|Add0~37\);

-- Location: LCFF_X1_Y12_N11
\u3|delay[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~36_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(18));

-- Location: LCCOMB_X1_Y12_N26
\u3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~3_combout\ = (!\u3|delay\(16) & (!\u3|delay\(13) & (!\u3|delay\(17) & !\u3|delay\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(16),
	datab => \u3|delay\(13),
	datac => \u3|delay\(17),
	datad => \u3|delay\(18),
	combout => \u3|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y12_N12
\u3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~38_combout\ = (\u3|delay\(19) & (!\u3|Add0~37\)) # (!\u3|delay\(19) & ((\u3|Add0~37\) # (GND)))
-- \u3|Add0~39\ = CARRY((!\u3|Add0~37\) # (!\u3|delay\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(19),
	datad => VCC,
	cin => \u3|Add0~37\,
	combout => \u3|Add0~38_combout\,
	cout => \u3|Add0~39\);

-- Location: LCFF_X1_Y12_N13
\u3|delay[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~38_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(19));

-- Location: LCCOMB_X1_Y12_N14
\u3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~40_combout\ = (\u3|delay\(20) & (\u3|Add0~39\ $ (GND))) # (!\u3|delay\(20) & (!\u3|Add0~39\ & VCC))
-- \u3|Add0~41\ = CARRY((\u3|delay\(20) & !\u3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(20),
	datad => VCC,
	cin => \u3|Add0~39\,
	combout => \u3|Add0~40_combout\,
	cout => \u3|Add0~41\);

-- Location: LCFF_X1_Y12_N15
\u3|delay[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~40_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(20));

-- Location: LCCOMB_X1_Y12_N16
\u3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~42_combout\ = (\u3|delay\(21) & (!\u3|Add0~41\)) # (!\u3|delay\(21) & ((\u3|Add0~41\) # (GND)))
-- \u3|Add0~43\ = CARRY((!\u3|Add0~41\) # (!\u3|delay\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(21),
	datad => VCC,
	cin => \u3|Add0~41\,
	combout => \u3|Add0~42_combout\,
	cout => \u3|Add0~43\);

-- Location: LCFF_X1_Y12_N17
\u3|delay[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~42_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(21));

-- Location: LCFF_X1_Y12_N19
\u3|delay[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~44_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(22));

-- Location: LCCOMB_X1_Y12_N28
\u3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~2_combout\ = (!\u3|delay\(19) & (!\u3|delay\(20) & (!\u3|delay\(21) & !\u3|delay\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(19),
	datab => \u3|delay\(20),
	datac => \u3|delay\(21),
	datad => \u3|delay\(22),
	combout => \u3|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y13_N28
\u3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~5_combout\ = (\u3|Equal0~1_combout\ & (\u3|Equal0~4_combout\ & (\u3|Equal0~3_combout\ & \u3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~1_combout\,
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Equal0~3_combout\,
	datad => \u3|Equal0~2_combout\,
	combout => \u3|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y13_N2
\u3|delay~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~4_combout\ = (\u3|Add0~12_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|Add0~12_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|delay~4_combout\);

-- Location: LCFF_X1_Y13_N3
\u3|delay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~4_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(6));

-- Location: LCCOMB_X1_Y13_N22
\u3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~16_combout\ = (\u3|delay\(8) & (\u3|Add0~15\ $ (GND))) # (!\u3|delay\(8) & (!\u3|Add0~15\ & VCC))
-- \u3|Add0~17\ = CARRY((\u3|delay\(8) & !\u3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(8),
	datad => VCC,
	cin => \u3|Add0~15\,
	combout => \u3|Add0~16_combout\,
	cout => \u3|Add0~17\);

-- Location: LCCOMB_X2_Y13_N30
\u3|delay~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~3_combout\ = (\u3|Add0~16_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Add0~16_combout\,
	combout => \u3|delay~3_combout\);

-- Location: LCFF_X2_Y13_N31
\u3|delay[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~3_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(8));

-- Location: LCCOMB_X1_Y13_N24
\u3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~18_combout\ = (\u3|delay\(9) & (!\u3|Add0~17\)) # (!\u3|delay\(9) & ((\u3|Add0~17\) # (GND)))
-- \u3|Add0~19\ = CARRY((!\u3|Add0~17\) # (!\u3|delay\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(9),
	datad => VCC,
	cin => \u3|Add0~17\,
	combout => \u3|Add0~18_combout\,
	cout => \u3|Add0~19\);

-- Location: LCCOMB_X2_Y13_N24
\u3|delay~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~2_combout\ = (\u3|Add0~18_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Add0~18_combout\,
	combout => \u3|delay~2_combout\);

-- Location: LCFF_X2_Y13_N25
\u3|delay[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~2_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(9));

-- Location: LCCOMB_X1_Y13_N26
\u3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~20_combout\ = (\u3|delay\(10) & (\u3|Add0~19\ $ (GND))) # (!\u3|delay\(10) & (!\u3|Add0~19\ & VCC))
-- \u3|Add0~21\ = CARRY((\u3|delay\(10) & !\u3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(10),
	datad => VCC,
	cin => \u3|Add0~19\,
	combout => \u3|Add0~20_combout\,
	cout => \u3|Add0~21\);

-- Location: LCFF_X1_Y13_N27
\u3|delay[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~20_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(10));

-- Location: LCCOMB_X1_Y13_N28
\u3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~22_combout\ = (\u3|delay\(11) & (!\u3|Add0~21\)) # (!\u3|delay\(11) & ((\u3|Add0~21\) # (GND)))
-- \u3|Add0~23\ = CARRY((!\u3|Add0~21\) # (!\u3|delay\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(11),
	datad => VCC,
	cin => \u3|Add0~21\,
	combout => \u3|Add0~22_combout\,
	cout => \u3|Add0~23\);

-- Location: LCFF_X1_Y13_N29
\u3|delay[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~22_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(11));

-- Location: LCCOMB_X1_Y13_N30
\u3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~24_combout\ = (\u3|delay\(12) & (\u3|Add0~23\ $ (GND))) # (!\u3|delay\(12) & (!\u3|Add0~23\ & VCC))
-- \u3|Add0~25\ = CARRY((\u3|delay\(12) & !\u3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(12),
	datad => VCC,
	cin => \u3|Add0~23\,
	combout => \u3|Add0~24_combout\,
	cout => \u3|Add0~25\);

-- Location: LCFF_X1_Y13_N31
\u3|delay[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~24_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(12));

-- Location: LCCOMB_X1_Y12_N0
\u3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~26_combout\ = (\u3|delay\(13) & (!\u3|Add0~25\)) # (!\u3|delay\(13) & ((\u3|Add0~25\) # (GND)))
-- \u3|Add0~27\ = CARRY((!\u3|Add0~25\) # (!\u3|delay\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(13),
	datad => VCC,
	cin => \u3|Add0~25\,
	combout => \u3|Add0~26_combout\,
	cout => \u3|Add0~27\);

-- Location: LCFF_X1_Y12_N1
\u3|delay[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~26_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(13));

-- Location: LCCOMB_X2_Y13_N16
\u3|delay~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~1_combout\ = (\u3|Add0~28_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Add0~28_combout\,
	datad => \u3|Equal0~7_combout\,
	combout => \u3|delay~1_combout\);

-- Location: LCFF_X2_Y13_N17
\u3|delay[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~1_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(14));

-- Location: LCCOMB_X2_Y13_N12
\u3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~6_combout\ = (\u3|delay\(9) & (\u3|delay\(15) & (\u3|delay\(14) & \u3|delay\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(9),
	datab => \u3|delay\(15),
	datac => \u3|delay\(14),
	datad => \u3|delay\(8),
	combout => \u3|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y13_N10
\u3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~7_combout\ = (\u3|delay\(6) & (\u3|delay\(4) & \u3|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(6),
	datac => \u3|delay\(4),
	datad => \u3|Equal0~6_combout\,
	combout => \u3|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y13_N4
\u3|delay~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~6_combout\ = (\u3|Add0~0_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~0_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|delay~6_combout\);

-- Location: LCFF_X1_Y13_N5
\u3|delay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~6_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(0));

-- Location: LCCOMB_X1_Y13_N8
\u3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = (\u3|delay\(1) & (!\u3|Add0~1\)) # (!\u3|delay\(1) & ((\u3|Add0~1\) # (GND)))
-- \u3|Add0~3\ = CARRY((!\u3|Add0~1\) # (!\u3|delay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(1),
	datad => VCC,
	cin => \u3|Add0~1\,
	combout => \u3|Add0~2_combout\,
	cout => \u3|Add0~3\);

-- Location: LCFF_X1_Y13_N9
\u3|delay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(1));

-- Location: LCCOMB_X1_Y13_N10
\u3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~4_combout\ = (\u3|delay\(2) & (\u3|Add0~3\ $ (GND))) # (!\u3|delay\(2) & (!\u3|Add0~3\ & VCC))
-- \u3|Add0~5\ = CARRY((\u3|delay\(2) & !\u3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(2),
	datad => VCC,
	cin => \u3|Add0~3\,
	combout => \u3|Add0~4_combout\,
	cout => \u3|Add0~5\);

-- Location: LCCOMB_X1_Y13_N12
\u3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~6_combout\ = (\u3|delay\(3) & (!\u3|Add0~5\)) # (!\u3|delay\(3) & ((\u3|Add0~5\) # (GND)))
-- \u3|Add0~7\ = CARRY((!\u3|Add0~5\) # (!\u3|delay\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(3),
	datad => VCC,
	cin => \u3|Add0~5\,
	combout => \u3|Add0~6_combout\,
	cout => \u3|Add0~7\);

-- Location: LCCOMB_X1_Y13_N14
\u3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~8_combout\ = (\u3|delay\(4) & (\u3|Add0~7\ $ (GND))) # (!\u3|delay\(4) & (!\u3|Add0~7\ & VCC))
-- \u3|Add0~9\ = CARRY((\u3|delay\(4) & !\u3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(4),
	datad => VCC,
	cin => \u3|Add0~7\,
	combout => \u3|Add0~8_combout\,
	cout => \u3|Add0~9\);

-- Location: LCCOMB_X1_Y13_N0
\u3|delay~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~5_combout\ = (\u3|Add0~8_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|Add0~8_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|delay~5_combout\);

-- Location: LCFF_X1_Y13_N1
\u3|delay[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~5_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(4));

-- Location: LCFF_X1_Y13_N17
\u3|delay[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~10_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(5));

-- Location: LCFF_X1_Y13_N13
\u3|delay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(3));

-- Location: LCFF_X1_Y13_N11
\u3|delay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(2));

-- Location: LCCOMB_X2_Y13_N14
\u3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = (!\u3|delay\(1) & (!\u3|delay\(5) & (!\u3|delay\(3) & !\u3|delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(1),
	datab => \u3|delay\(5),
	datac => \u3|delay\(3),
	datad => \u3|delay\(2),
	combout => \u3|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y13_N18
\u3|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~0_combout\ = (\u3|Add0~30_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Add0~30_combout\,
	combout => \u3|delay~0_combout\);

-- Location: LCFF_X2_Y13_N19
\u3|delay[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~0_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(15));

-- Location: LCCOMB_X2_Y13_N22
\u3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~0_combout\ = (\u3|delay\(14)) # ((\u3|delay\(15)) # ((\u3|delay\(9)) # (\u3|delay\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(14),
	datab => \u3|delay\(15),
	datac => \u3|delay\(9),
	datad => \u3|delay\(8),
	combout => \u3|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y13_N20
\u3|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~1_combout\ = (\u3|delay\(4)) # (\u3|delay\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|delay\(4),
	datad => \u3|delay\(6),
	combout => \u3|WideOr0~1_combout\);

-- Location: LCCOMB_X2_Y13_N26
\u3|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~combout\ = LCELL(((\u3|WideOr0~0_combout\) # ((\u3|WideOr0~1_combout\) # (!\u3|Equal0~5_combout\))) # (!\u3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|WideOr0~0_combout\,
	datac => \u3|WideOr0~1_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|WideOr0~combout\);

-- Location: CLKCTRL_G3
\u3|WideOr0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|WideOr0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|WideOr0~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y15_N18
\CPU_unit|Dout_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~0_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~5_combout\,
	combout => \CPU_unit|Dout_reg|q~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\CPU_unit|uut|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Decoder0~0_combout\ = (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(1) & !\CPU_unit|uut|step\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y16_N30
\CPU_unit|addsub_unit|Add1|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\);

-- Location: LCCOMB_X22_Y14_N14
\CPU_unit|uut|addsub_sel~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|addsub_sel~3_combout\ = (\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|uut|Decoder0~0_combout\ & !\CPU_unit|IR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|addsub_sel~3_combout\);

-- Location: LCCOMB_X19_Y16_N2
\CPU_unit|addsub_unit|Add1|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~7_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\);

-- Location: LCCOMB_X20_Y16_N0
\CPU_unit|addsub_unit|Add1|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\);

-- Location: LCCOMB_X24_Y15_N2
\CPU_unit|uut|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~0_combout\ = (\CPU_unit|IR_reg|q\(7) & (\CPU_unit|uut|step\(0) & ((!\CPU_unit|IR_reg|q\(6)) # (!\CPU_unit|IR_reg|q\(8))))) # (!\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|step\(0)))) # (!\CPU_unit|IR_reg|q\(6) & 
-- (\CPU_unit|IR_reg|q\(8) & !\CPU_unit|uut|step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux24~0_combout\);

-- Location: LCCOMB_X16_Y15_N22
\CPU_unit|ADDR_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~6_combout\ = (\CPU_unit|uut|Mux25~1_combout\ & (\CPU_unit|ADDR_reg|q\(1) & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux25~1_combout\,
	datab => \CPU_unit|ADDR_reg|q\(1),
	datad => \SW~combout\(1),
	combout => \CPU_unit|ADDR_reg|q~6_combout\);

-- Location: LCCOMB_X21_Y16_N0
\CPU_unit|Dout_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~7_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|Dout_reg|q~7_combout\);

-- Location: LCCOMB_X16_Y15_N16
\CPU_unit|ADDR_reg|q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~8_combout\ = (\CPU_unit|ADDR_reg|q\(2) & (!\SW~combout\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(2),
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~8_combout\);

-- Location: LCCOMB_X19_Y16_N0
\CPU_unit|addsub_unit|Add1|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\);

-- Location: LCCOMB_X19_Y16_N30
\CPU_unit|addsub_unit|Add1|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\);

-- Location: LCCOMB_X19_Y16_N28
\CPU_unit|addsub_unit|Add1|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\);

-- Location: LCCOMB_X19_Y16_N4
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\CPU_unit|uut|addsub_sel~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datad => VCC,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X19_Y16_N6
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\ = (\CPU_unit|A_reg|q\(0) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)))) # (!\CPU_unit|A_reg|q\(0) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\ = CARRY((\CPU_unit|A_reg|q\(0) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\CPU_unit|A_reg|q\(0) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(0),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X19_Y16_N8
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\ = ((\CPU_unit|A_reg|q\(1) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ = CARRY((\CPU_unit|A_reg|q\(1) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\))) # (!\CPU_unit|A_reg|q\(1) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(1),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X19_Y16_N10
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\ = (\CPU_unit|A_reg|q\(2) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)))) # (!\CPU_unit|A_reg|q\(2) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\ = CARRY((\CPU_unit|A_reg|q\(2) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)) # (!\CPU_unit|A_reg|q\(2) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(2),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X22_Y14_N24
\CPU_unit|G_reg|q[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|G_reg|q[4]~2_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(8) & \CPU_unit|uut|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|G_reg|q[4]~2_combout\);

-- Location: LCFF_X19_Y16_N11
\CPU_unit|G_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(2));

-- Location: LCCOMB_X21_Y16_N14
\CPU_unit|R7_reg|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~0_combout\ = \CPU_unit|R7_reg|q\(0) $ (VCC)
-- \CPU_unit|R7_reg|Add0~1\ = CARRY(\CPU_unit|R7_reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(0),
	datad => VCC,
	combout => \CPU_unit|R7_reg|Add0~0_combout\,
	cout => \CPU_unit|R7_reg|Add0~1\);

-- Location: LCCOMB_X20_Y16_N28
\CPU_unit|R7_reg|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~2_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux8~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~2_combout\);

-- Location: LCCOMB_X25_Y15_N6
\CPU_unit|R7_reg|q[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[6]~2_combout\ = (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(0) & ((!\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6))))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6) & ((!\CPU_unit|uut|step\(0)) # 
-- (!\CPU_unit|IR_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|R7_reg|q[6]~2_combout\);

-- Location: LCCOMB_X25_Y15_N20
\CPU_unit|R7_reg|q[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[6]~3_combout\ = (\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|uut|step\(0)) # ((\CPU_unit|IR_reg|q\(6) & \CPU_unit|IR_reg|q\(8))))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|uut|step\(0) $ (((!\CPU_unit|IR_reg|q\(6) & \CPU_unit|IR_reg|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|R7_reg|q[6]~3_combout\);

-- Location: LCCOMB_X25_Y15_N18
\CPU_unit|R7_reg|q[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[6]~4_combout\ = (\CPU_unit|uut|step\(2) & ((!\CPU_unit|R7_reg|q[6]~2_combout\) # (!\CPU_unit|R7_reg|q[6]~3_combout\))) # (!\CPU_unit|uut|step\(2) & (\CPU_unit|R7_reg|q[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|R7_reg|q[6]~3_combout\,
	datad => \CPU_unit|R7_reg|q[6]~2_combout\,
	combout => \CPU_unit|R7_reg|q[6]~4_combout\);

-- Location: LCCOMB_X15_Y15_N30
\CPU_unit|ADDR_reg|q~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~12_combout\ = (\CPU_unit|ADDR_reg|q\(4) & (!\SW~combout\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(4),
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~12_combout\);

-- Location: LCCOMB_X18_Y15_N30
\CPU_unit|Dout_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~4_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|Dout_reg|q~4_combout\);

-- Location: LCCOMB_X22_Y14_N18
\CPU_unit|A_reg|q[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|A_reg|q[7]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|uut|Mux8~0_combout\ & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|addsub_sel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux8~0_combout\,
	datab => \SW~combout\(1),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|addsub_sel~2_combout\,
	combout => \CPU_unit|A_reg|q[7]~0_combout\);

-- Location: LCFF_X18_Y15_N31
\CPU_unit|A_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q~4_combout\,
	ena => \CPU_unit|A_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(4));

-- Location: LCCOMB_X19_Y16_N26
\CPU_unit|addsub_unit|Add1|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\);

-- Location: LCCOMB_X19_Y16_N12
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\ = ((\CPU_unit|A_reg|q\(3) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ = CARRY((\CPU_unit|A_reg|q\(3) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\))) # (!\CPU_unit|A_reg|q\(3) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(3),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X19_Y16_N14
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\ = (\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ & ((\CPU_unit|A_reg|q\(4) & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ & VCC)) # (!\CPU_unit|A_reg|q\(4) & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)))) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ & ((\CPU_unit|A_reg|q\(4) & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)) # (!\CPU_unit|A_reg|q\(4) & 
-- ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\ = CARRY((\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ & (!\CPU_unit|A_reg|q\(4) & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ & ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\) # (!\CPU_unit|A_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\,
	datab => \CPU_unit|A_reg|q\(4),
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\);

-- Location: LCFF_X19_Y16_N15
\CPU_unit|G_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(4));

-- Location: LCCOMB_X23_Y15_N24
\CPU_unit|uut|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~6_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|uut|step\(1) & (\CPU_unit|uut|step\(2)))) # (!\CPU_unit|uut|step\(0) & (\CPU_unit|uut|step\(1) & (!\CPU_unit|uut|step\(2) & !\CPU_unit|IR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux22~6_combout\);

-- Location: LCCOMB_X23_Y15_N4
\CPU_unit|uut|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~4_combout\ = (\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & !\CPU_unit|uut|step\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux22~4_combout\);

-- Location: LCCOMB_X23_Y15_N6
\CPU_unit|uut|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~3_combout\ = (\CPU_unit|uut|step\(2) & (\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & !\CPU_unit|uut|step\(0)))) # (!\CPU_unit|uut|step\(2) & (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux22~3_combout\);

-- Location: LCCOMB_X23_Y15_N12
\CPU_unit|uut|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~8_combout\ = (\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|IR_reg|q\(6)) # ((\CPU_unit|uut|Mux22~4_combout\)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|Mux22~4_combout\,
	datad => \CPU_unit|uut|Mux22~3_combout\,
	combout => \CPU_unit|uut|Mux22~8_combout\);

-- Location: LCCOMB_X23_Y15_N14
\CPU_unit|uut|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~9_combout\ = (\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|Mux22~8_combout\ & (\CPU_unit|uut|Mux22~7_combout\)) # (!\CPU_unit|uut|Mux22~8_combout\ & ((\CPU_unit|uut|Mux22~6_combout\))))) # (!\CPU_unit|IR_reg|q\(6) & 
-- (((\CPU_unit|uut|Mux22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~7_combout\,
	datab => \CPU_unit|uut|Mux22~6_combout\,
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|Mux22~8_combout\,
	combout => \CPU_unit|uut|Mux22~9_combout\);

-- Location: LCCOMB_X23_Y15_N10
\CPU_unit|uut|Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~12_combout\ = (\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(1) & !\CPU_unit|IR_reg|q\(6)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(1) & ((\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|Mux22~12_combout\);

-- Location: LCCOMB_X23_Y15_N0
\CPU_unit|uut|Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~13_combout\ = (!\CPU_unit|uut|step\(2) & \CPU_unit|uut|Mux22~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|uut|Mux22~12_combout\,
	combout => \CPU_unit|uut|Mux22~13_combout\);

-- Location: LCCOMB_X23_Y15_N30
\CPU_unit|uut|Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~10_combout\ = (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1)))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(8) & ((\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|Mux22~10_combout\);

-- Location: LCCOMB_X23_Y15_N20
\CPU_unit|uut|Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~11_combout\ = (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|Mux22~10_combout\ & (\CPU_unit|uut|step\(0) $ (!\CPU_unit|IR_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|IR_reg|q\(7),
	datad => \CPU_unit|uut|Mux22~10_combout\,
	combout => \CPU_unit|uut|Mux22~11_combout\);

-- Location: LCCOMB_X23_Y15_N28
\CPU_unit|uut|Mux22~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~15_combout\ = (\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|uut|Mux22~14_combout\ & (!\CPU_unit|uut|Mux22~13_combout\ & \CPU_unit|uut|Mux22~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|uut|Mux22~14_combout\,
	datac => \CPU_unit|uut|Mux22~13_combout\,
	datad => \CPU_unit|uut|Mux22~11_combout\,
	combout => \CPU_unit|uut|Mux22~15_combout\);

-- Location: LCCOMB_X22_Y15_N16
\CPU_unit|uut|Mux22~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~17_combout\ = (\CPU_unit|uut|Mux22~9_combout\) # ((\CPU_unit|uut|Mux22~15_combout\) # ((\CPU_unit|IR_reg|q\(2) & \CPU_unit|uut|Mux22~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(2),
	datab => \CPU_unit|uut|Mux22~14_combout\,
	datac => \CPU_unit|uut|Mux22~9_combout\,
	datad => \CPU_unit|uut|Mux22~15_combout\,
	combout => \CPU_unit|uut|Mux22~17_combout\);

-- Location: LCCOMB_X20_Y15_N16
\CPU_unit|Mux_unit|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~0_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|uut|Mux24~8_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|uut|Mux22~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|uut|Mux21~1_combout\,
	datad => \CPU_unit|uut|Mux22~17_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\CPU_unit|uut|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux8~0_combout\ = (\CPU_unit|uut|step\(0) & !\CPU_unit|uut|step\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\CPU_unit|uut|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux30~2_combout\ = (\CPU_unit|uut|Mux30~1_combout\ & ((\CPU_unit|uut|Mux8~0_combout\) # ((\CPU_unit|uut|Mux30~0_combout\ & \CPU_unit|uut|Decoder0~0_combout\)))) # (!\CPU_unit|uut|Mux30~1_combout\ & (\CPU_unit|uut|Mux30~0_combout\ & 
-- (\CPU_unit|uut|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux30~1_combout\,
	datab => \CPU_unit|uut|Mux30~0_combout\,
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|uut|Mux8~0_combout\,
	combout => \CPU_unit|uut|Mux30~2_combout\);

-- Location: LCCOMB_X22_Y14_N4
\CPU_unit|R6_reg|q[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[1]~2_combout\ = (!\CPU_unit|IR_reg|q\(3) & (\CPU_unit|uut|Mux30~2_combout\ & ((!\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|IR_reg|q\(3),
	datad => \CPU_unit|uut|Mux30~2_combout\,
	combout => \CPU_unit|R6_reg|q[1]~2_combout\);

-- Location: LCCOMB_X22_Y15_N22
\CPU_unit|R2_reg|q[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[6]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(4) & (\CPU_unit|R6_reg|q[1]~2_combout\ & !\CPU_unit|IR_reg|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datab => \CPU_unit|R6_reg|q[1]~2_combout\,
	datac => \CPU_unit|IR_reg|q\(5),
	datad => \SW~combout\(1),
	combout => \CPU_unit|R2_reg|q[6]~0_combout\);

-- Location: LCFF_X18_Y15_N15
\CPU_unit|R2_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(4));

-- Location: LCCOMB_X22_Y15_N8
\CPU_unit|R0_reg|q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R0_reg|q[1]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(4) & (\CPU_unit|R6_reg|q[1]~2_combout\ & !\CPU_unit|IR_reg|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datab => \CPU_unit|R6_reg|q[1]~2_combout\,
	datac => \CPU_unit|IR_reg|q\(5),
	datad => \SW~combout\(1),
	combout => \CPU_unit|R0_reg|q[1]~0_combout\);

-- Location: LCFF_X19_Y15_N5
\CPU_unit|R0_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(4));

-- Location: LCCOMB_X19_Y15_N4
\CPU_unit|Mux_unit|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(4)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(4) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(4),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(4),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y15_N14
\CPU_unit|Mux_unit|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux4~2_combout\ & (\CPU_unit|R3_reg|q\(4))) # (!\CPU_unit|Mux_unit|Mux4~2_combout\ & ((\CPU_unit|R2_reg|q\(4)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(4),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(4),
	datad => \CPU_unit|Mux_unit|Mux4~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y14_N30
\CPU_unit|uut|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux28~0_combout\ = (\CPU_unit|IR_reg|q\(3) & (\CPU_unit|uut|Mux30~2_combout\ & ((!\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|IR_reg|q\(3),
	datad => \CPU_unit|uut|Mux30~2_combout\,
	combout => \CPU_unit|uut|Mux28~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\CPU_unit|uut|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux28~1_combout\ = (\CPU_unit|IR_reg|q\(4) & (\CPU_unit|uut|Mux28~0_combout\ & \CPU_unit|IR_reg|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datac => \CPU_unit|uut|Mux28~0_combout\,
	datad => \CPU_unit|IR_reg|q\(5),
	combout => \CPU_unit|uut|Mux28~1_combout\);

-- Location: LCCOMB_X18_Y16_N16
\CPU_unit|R7_reg|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~23_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~9_combout\,
	datab => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datac => \CPU_unit|uut|Mux28~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~23_combout\);

-- Location: LCFF_X18_Y16_N17
\CPU_unit|R7_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~23_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(4));

-- Location: LCFF_X21_Y15_N27
\CPU_unit|R5_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(4));

-- Location: LCCOMB_X22_Y15_N28
\CPU_unit|R4_reg|q[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R4_reg|q[3]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(4) & (\CPU_unit|R6_reg|q[1]~2_combout\ & \CPU_unit|IR_reg|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datab => \CPU_unit|R6_reg|q[1]~2_combout\,
	datac => \CPU_unit|IR_reg|q\(5),
	datad => \SW~combout\(1),
	combout => \CPU_unit|R4_reg|q[3]~0_combout\);

-- Location: LCFF_X21_Y15_N1
\CPU_unit|R4_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(4));

-- Location: LCCOMB_X21_Y15_N0
\CPU_unit|Mux_unit|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(4))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(4),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(4),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N26
\CPU_unit|Mux_unit|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux4~0_combout\ & (\CPU_unit|R7_reg|q\(4))) # (!\CPU_unit|Mux_unit|Mux4~0_combout\ & ((\CPU_unit|R5_reg|q\(4)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R7_reg|q\(4),
	datac => \CPU_unit|R5_reg|q\(4),
	datad => \CPU_unit|Mux_unit|Mux4~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y15_N12
\CPU_unit|Mux_unit|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|Mux_unit|Mux1~0_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux4~1_combout\))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (\CPU_unit|Mux_unit|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux4~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~4_combout\);

-- Location: LCCOMB_X18_Y15_N0
\CPU_unit|Mux_unit|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux4~4_combout\ & (\memoey|memory~8_combout\)) # (!\CPU_unit|Mux_unit|Mux4~4_combout\ & ((\CPU_unit|G_reg|q\(4)))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~8_combout\,
	datab => \CPU_unit|G_reg|q\(4),
	datac => \CPU_unit|uut|Mux21~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~5_combout\);

-- Location: LCCOMB_X16_Y15_N0
\CPU_unit|ADDR_reg|q~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~13_combout\ = (\CPU_unit|ADDR_reg|q~12_combout\) # ((\CPU_unit|ADDR_reg|q~4_combout\ & (\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~4_combout\,
	datab => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datac => \CPU_unit|ADDR_reg|q~12_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~13_combout\);

-- Location: LCFF_X16_Y15_N1
\CPU_unit|ADDR_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(4));

-- Location: LCFF_X21_Y14_N1
\CPU_unit|Dout_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(1));

-- Location: LCCOMB_X18_Y15_N16
\CPU_unit|Dout_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~6_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|Dout_reg|q~6_combout\);

-- Location: LCFF_X18_Y14_N25
\CPU_unit|Dout_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(2));

-- Location: LCCOMB_X18_Y14_N20
\CPU_unit|Dout_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[4]~feeder_combout\ = \CPU_unit|Dout_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~4_combout\,
	combout => \CPU_unit|Dout_reg|q[4]~feeder_combout\);

-- Location: LCFF_X18_Y14_N21
\CPU_unit|Dout_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(4));

-- Location: LCCOMB_X18_Y15_N6
\CPU_unit|Dout_reg|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~2_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~5_combout\,
	combout => \CPU_unit|Dout_reg|q~2_combout\);

-- Location: LCCOMB_X18_Y14_N10
\CPU_unit|Dout_reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[5]~feeder_combout\ = \CPU_unit|Dout_reg|q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~2_combout\,
	combout => \CPU_unit|Dout_reg|q[5]~feeder_combout\);

-- Location: LCFF_X18_Y14_N11
\CPU_unit|Dout_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[5]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(5));

-- Location: M4K_X17_Y15
\memoey|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000019E37AD9DC3840E0F300BC1E5848D4D0058001000248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab10.ram0_rom_program_aa5684e4.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom_program:memoey|altsyncram:memory_rtl_0|altsyncram_8sg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 9,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en_mem~combout\,
	portbrewe => VCC,
	clk0 => \u3|WideOr0~clkctrl_outclk\,
	portadatain => \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y15_N20
\CPU_unit|IR_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~6_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(19))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(19),
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a4\,
	datac => \memoey|memory~combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q~6_combout\);

-- Location: LCCOMB_X22_Y14_N0
\CPU_unit|IR_reg|q[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q[1]~1_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|uut|step\(2) & (!\CPU_unit|uut|step\(0) & !\CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(1),
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q[1]~1_combout\);

-- Location: LCFF_X23_Y15_N17
\CPU_unit|IR_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(4));

-- Location: LCCOMB_X21_Y14_N10
\CPU_unit|R7_reg|q[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[6]~6_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|IR_reg|q\(5),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R7_reg|q[6]~6_combout\);

-- Location: LCCOMB_X21_Y14_N22
\CPU_unit|R7_reg|q[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[6]~5_combout\ = (\CPU_unit|R7_reg|q[6]~6_combout\) # ((\CPU_unit|uut|step\(1) & (!\CPU_unit|R7_reg|q[6]~2_combout\ & !\CPU_unit|R7_reg|q[6]~4_combout\)) # (!\CPU_unit|uut|step\(1) & (\CPU_unit|R7_reg|q[6]~2_combout\ & 
-- \CPU_unit|R7_reg|q[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|R7_reg|q[6]~2_combout\,
	datac => \CPU_unit|R7_reg|q[6]~4_combout\,
	datad => \CPU_unit|R7_reg|q[6]~6_combout\,
	combout => \CPU_unit|R7_reg|q[6]~5_combout\);

-- Location: LCFF_X20_Y16_N29
\CPU_unit|R7_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~2_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(0));

-- Location: LCCOMB_X21_Y16_N18
\CPU_unit|R7_reg|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~5_combout\ = (\CPU_unit|R7_reg|q\(2) & (\CPU_unit|R7_reg|Add0~4\ $ (GND))) # (!\CPU_unit|R7_reg|q\(2) & (!\CPU_unit|R7_reg|Add0~4\ & VCC))
-- \CPU_unit|R7_reg|Add0~6\ = CARRY((\CPU_unit|R7_reg|q\(2) & !\CPU_unit|R7_reg|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(2),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~4\,
	combout => \CPU_unit|R7_reg|Add0~5_combout\,
	cout => \CPU_unit|R7_reg|Add0~6\);

-- Location: LCCOMB_X20_Y16_N18
\CPU_unit|R7_reg|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~21_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~5_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~21_combout\);

-- Location: LCFF_X20_Y16_N19
\CPU_unit|R7_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~21_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(2));

-- Location: LCCOMB_X20_Y16_N24
\CPU_unit|R7_reg|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~22_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~7_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~22_combout\);

-- Location: LCFF_X20_Y16_N25
\CPU_unit|R7_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~22_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(3));

-- Location: LCFF_X21_Y15_N31
\CPU_unit|R5_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(3));

-- Location: LCFF_X21_Y15_N29
\CPU_unit|R4_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(3));

-- Location: LCCOMB_X21_Y15_N28
\CPU_unit|Mux_unit|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(3))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(3),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(3),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y15_N30
\CPU_unit|Mux_unit|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux5~0_combout\ & (\CPU_unit|R7_reg|q\(3))) # (!\CPU_unit|Mux_unit|Mux5~0_combout\ & ((\CPU_unit|R5_reg|q\(3)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R7_reg|q\(3),
	datac => \CPU_unit|R5_reg|q\(3),
	datad => \CPU_unit|Mux_unit|Mux5~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y14_N24
\memoey|memory_rtl_0_bypass[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[17]~0_combout\ = !\CPU_unit|Dout_reg|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(3),
	combout => \memoey|memory_rtl_0_bypass[17]~0_combout\);

-- Location: LCFF_X16_Y15_N27
\memoey|memory_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \memoey|memory_rtl_0_bypass[17]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(17));

-- Location: LCCOMB_X16_Y15_N8
\memoey|memory~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~7_combout\ = (\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(17))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(17),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a3\,
	combout => \memoey|memory~7_combout\);

-- Location: LCFF_X19_Y16_N13
\CPU_unit|G_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(3));

-- Location: LCFF_X20_Y15_N11
\CPU_unit|R2_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(3));

-- Location: LCFF_X20_Y15_N25
\CPU_unit|R0_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(3));

-- Location: LCCOMB_X20_Y15_N24
\CPU_unit|Mux_unit|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(3)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(3) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(3),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(3),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y15_N10
\CPU_unit|Mux_unit|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux5~2_combout\ & (\CPU_unit|R3_reg|q\(3))) # (!\CPU_unit|Mux_unit|Mux5~2_combout\ & ((\CPU_unit|R2_reg|q\(3)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(3),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(3),
	datad => \CPU_unit|Mux_unit|Mux5~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~3_combout\);

-- Location: LCCOMB_X20_Y15_N18
\CPU_unit|Mux_unit|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(3)) # ((\CPU_unit|Mux_unit|Mux1~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((!\CPU_unit|Mux_unit|Mux1~0_combout\ & \CPU_unit|Mux_unit|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(3),
	datac => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~4_combout\);

-- Location: LCCOMB_X20_Y15_N8
\CPU_unit|Mux_unit|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~5_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux5~4_combout\ & ((\memoey|memory~7_combout\))) # (!\CPU_unit|Mux_unit|Mux5~4_combout\ & (\CPU_unit|Mux_unit|Mux5~1_combout\)))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|Mux_unit|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux5~1_combout\,
	datac => \memoey|memory~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~5_combout\);

-- Location: LCCOMB_X16_Y15_N12
\CPU_unit|ADDR_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~4_combout\ = (!\CPU_unit|uut|Mux25~1_combout\ & !\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux25~1_combout\,
	datab => \SW~combout\(1),
	combout => \CPU_unit|ADDR_reg|q~4_combout\);

-- Location: LCCOMB_X16_Y15_N14
\CPU_unit|ADDR_reg|q~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~11_combout\ = (\CPU_unit|ADDR_reg|q~10_combout\) # ((\CPU_unit|Mux_unit|Mux5~5_combout\ & (\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|ADDR_reg|q~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~10_combout\,
	datab => \CPU_unit|Mux_unit|Mux5~5_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|ADDR_reg|q~4_combout\,
	combout => \CPU_unit|ADDR_reg|q~11_combout\);

-- Location: LCFF_X16_Y15_N15
\CPU_unit|ADDR_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(3));

-- Location: LCCOMB_X16_Y15_N24
\memoey|memory~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~6_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(15))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(15),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a2\,
	combout => \memoey|memory~6_combout\);

-- Location: LCCOMB_X21_Y14_N26
\CPU_unit|R3_reg|q[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[6]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|IR_reg|q\(5),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R3_reg|q[6]~0_combout\);

-- Location: LCFF_X19_Y15_N15
\CPU_unit|R3_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(2));

-- Location: LCFF_X19_Y15_N13
\CPU_unit|R0_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(2));

-- Location: LCCOMB_X19_Y15_N12
\CPU_unit|Mux_unit|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(2)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(2) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(2),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(2),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y15_N14
\CPU_unit|Mux_unit|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux6~2_combout\ & ((\CPU_unit|R3_reg|q\(2)))) # (!\CPU_unit|Mux_unit|Mux6~2_combout\ & (\CPU_unit|R2_reg|q\(2))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(2),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(2),
	datad => \CPU_unit|Mux_unit|Mux6~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~3_combout\);

-- Location: LCFF_X21_Y15_N23
\CPU_unit|R5_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(2));

-- Location: LCFF_X21_Y15_N13
\CPU_unit|R4_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(2));

-- Location: LCCOMB_X21_Y15_N12
\CPU_unit|Mux_unit|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(2))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(2),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(2),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y15_N22
\CPU_unit|Mux_unit|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux6~0_combout\ & (\CPU_unit|R7_reg|q\(2))) # (!\CPU_unit|Mux_unit|Mux6~0_combout\ & ((\CPU_unit|R5_reg|q\(2)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(2),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(2),
	datad => \CPU_unit|Mux_unit|Mux6~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y15_N0
\CPU_unit|Mux_unit|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~4_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|uut|Mux21~1_combout\) # ((\CPU_unit|Mux_unit|Mux6~1_combout\)))) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (\CPU_unit|Mux_unit|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux6~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~4_combout\);

-- Location: LCCOMB_X19_Y15_N10
\CPU_unit|Mux_unit|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux6~4_combout\ & ((\memoey|memory~6_combout\))) # (!\CPU_unit|Mux_unit|Mux6~4_combout\ & (\CPU_unit|G_reg|q\(2))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(2),
	datac => \memoey|memory~6_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~5_combout\);

-- Location: LCCOMB_X16_Y15_N20
\CPU_unit|ADDR_reg|q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~9_combout\ = (\CPU_unit|ADDR_reg|q~8_combout\) # ((\CPU_unit|ADDR_reg|q~4_combout\ & (\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~4_combout\,
	datab => \CPU_unit|ADDR_reg|q~8_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~9_combout\);

-- Location: LCFF_X16_Y15_N21
\CPU_unit|ADDR_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(2));

-- Location: LCCOMB_X22_Y14_N10
\CPU_unit|IR_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~0_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(21))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(21),
	datab => \SW~combout\(1),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \CPU_unit|IR_reg|q~0_combout\);

-- Location: LCFF_X22_Y14_N11
\CPU_unit|IR_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~0_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(5));

-- Location: LCCOMB_X22_Y15_N14
\CPU_unit|R5_reg|q[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R5_reg|q[7]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(4) & (\CPU_unit|IR_reg|q\(5) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datab => \SW~combout\(1),
	datac => \CPU_unit|IR_reg|q\(5),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R5_reg|q[7]~0_combout\);

-- Location: LCFF_X21_Y15_N15
\CPU_unit|R5_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(1));

-- Location: LCFF_X21_Y15_N5
\CPU_unit|R4_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(1));

-- Location: LCCOMB_X21_Y15_N4
\CPU_unit|Mux_unit|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(1))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(1),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(1),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y15_N14
\CPU_unit|Mux_unit|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux7~0_combout\ & (\CPU_unit|R7_reg|q\(1))) # (!\CPU_unit|Mux_unit|Mux7~0_combout\ & ((\CPU_unit|R5_reg|q\(1)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(1),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(1),
	datad => \CPU_unit|Mux_unit|Mux7~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y15_N2
\memoey|memory~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~5_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(13))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(13),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a1\,
	combout => \memoey|memory~5_combout\);

-- Location: LCFF_X19_Y16_N9
\CPU_unit|G_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(1));

-- Location: LCFF_X20_Y15_N3
\CPU_unit|R2_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(1));

-- Location: LCFF_X20_Y15_N29
\CPU_unit|R0_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(1));

-- Location: LCCOMB_X20_Y15_N28
\CPU_unit|Mux_unit|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(1)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(1) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(1),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(1),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y15_N2
\CPU_unit|Mux_unit|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux7~2_combout\ & (\CPU_unit|R3_reg|q\(1))) # (!\CPU_unit|Mux_unit|Mux7~2_combout\ & ((\CPU_unit|R2_reg|q\(1)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(1),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(1),
	datad => \CPU_unit|Mux_unit|Mux7~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~3_combout\);

-- Location: LCCOMB_X20_Y15_N6
\CPU_unit|Mux_unit|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(1)) # ((\CPU_unit|Mux_unit|Mux1~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((!\CPU_unit|Mux_unit|Mux1~0_combout\ & \CPU_unit|Mux_unit|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(1),
	datac => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~4_combout\);

-- Location: LCCOMB_X20_Y15_N4
\CPU_unit|Mux_unit|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~5_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux7~4_combout\ & ((\memoey|memory~5_combout\))) # (!\CPU_unit|Mux_unit|Mux7~4_combout\ & (\CPU_unit|Mux_unit|Mux7~1_combout\)))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|Mux_unit|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux7~1_combout\,
	datac => \memoey|memory~5_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~5_combout\);

-- Location: LCCOMB_X16_Y15_N18
\CPU_unit|ADDR_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~7_combout\ = (\CPU_unit|ADDR_reg|q~6_combout\) # ((\CPU_unit|ADDR_reg|q~4_combout\ & (\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~4_combout\,
	datab => \CPU_unit|ADDR_reg|q~6_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~7_combout\);

-- Location: LCFF_X16_Y15_N19
\CPU_unit|ADDR_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(1));

-- Location: LCCOMB_X24_Y15_N0
\CPU_unit|IR_reg|q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~8_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((!\memoey|memory_rtl_0_bypass\(17)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~combout\,
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a3\,
	datac => \memoey|memory_rtl_0_bypass\(17),
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q~8_combout\);

-- Location: LCFF_X24_Y15_N1
\CPU_unit|IR_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~8_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(3));

-- Location: LCCOMB_X24_Y15_N22
\CPU_unit|uut|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~1_combout\ = (!\CPU_unit|uut|step\(1) & (\CPU_unit|IR_reg|q\(3) & (!\CPU_unit|IR_reg|q\(8) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|IR_reg|q\(3),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux24~1_combout\);

-- Location: LCCOMB_X24_Y15_N20
\CPU_unit|IR_reg|q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~9_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(11))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(11),
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \memoey|memory~combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q~9_combout\);

-- Location: LCFF_X24_Y15_N21
\CPU_unit|IR_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~9_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(0));

-- Location: LCCOMB_X24_Y15_N30
\CPU_unit|uut|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~2_combout\ = (\CPU_unit|IR_reg|q\(0) & ((\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|IR_reg|q\(6) & \CPU_unit|uut|step\(0))) # (!\CPU_unit|IR_reg|q\(8) & ((!\CPU_unit|uut|step\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|IR_reg|q\(0),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux24~2_combout\);

-- Location: LCCOMB_X24_Y15_N16
\CPU_unit|uut|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~3_combout\ = (\CPU_unit|uut|Mux24~1_combout\) # ((\CPU_unit|uut|step\(1) & (!\CPU_unit|uut|step\(2) & \CPU_unit|uut|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|Mux24~1_combout\,
	datad => \CPU_unit|uut|Mux24~2_combout\,
	combout => \CPU_unit|uut|Mux24~3_combout\);

-- Location: LCCOMB_X24_Y15_N4
\CPU_unit|uut|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~5_combout\ = (\CPU_unit|IR_reg|q\(6) & (((\CPU_unit|IR_reg|q\(3) & !\CPU_unit|uut|step\(0))) # (!\CPU_unit|IR_reg|q\(8)))) # (!\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|IR_reg|q\(8) $ (\CPU_unit|uut|step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(3),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux24~5_combout\);

-- Location: LCCOMB_X24_Y15_N28
\CPU_unit|uut|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Decoder0~1_combout\ = (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\CPU_unit|uut|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~4_combout\ = (\CPU_unit|IR_reg|q\(0) & (\CPU_unit|uut|Decoder0~1_combout\ & ((\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|IR_reg|q\(0),
	datad => \CPU_unit|uut|Decoder0~1_combout\,
	combout => \CPU_unit|uut|Mux24~4_combout\);

-- Location: LCCOMB_X24_Y15_N10
\CPU_unit|uut|Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~6_combout\ = (\CPU_unit|uut|Mux24~4_combout\) # ((\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|uut|Mux24~5_combout\,
	datad => \CPU_unit|uut|Mux24~4_combout\,
	combout => \CPU_unit|uut|Mux24~6_combout\);

-- Location: LCCOMB_X24_Y15_N12
\CPU_unit|uut|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~7_combout\ = (\CPU_unit|IR_reg|q\(7) & (((\CPU_unit|uut|Mux24~3_combout\)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(2) & ((\CPU_unit|uut|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|Mux24~3_combout\,
	datad => \CPU_unit|uut|Mux24~6_combout\,
	combout => \CPU_unit|uut|Mux24~7_combout\);

-- Location: LCCOMB_X24_Y15_N6
\CPU_unit|uut|Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~8_combout\ = (\CPU_unit|uut|Mux24~7_combout\) # ((!\CPU_unit|uut|step\(1) & (\CPU_unit|uut|step\(2) & \CPU_unit|uut|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|Mux24~0_combout\,
	datad => \CPU_unit|uut|Mux24~7_combout\,
	combout => \CPU_unit|uut|Mux24~8_combout\);

-- Location: LCFF_X21_Y15_N3
\CPU_unit|R5_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(5));

-- Location: LCFF_X21_Y15_N21
\CPU_unit|R4_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(5));

-- Location: LCCOMB_X21_Y15_N20
\CPU_unit|Mux_unit|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(5))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(5),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(5),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\CPU_unit|Mux_unit|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|R7_reg|q\(5))) # (!\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|R5_reg|q\(5)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(5),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(5),
	datad => \CPU_unit|Mux_unit|Mux3~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y14_N2
\memoey|memory_rtl_0_bypass[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[21]~feeder_combout\ = \CPU_unit|Dout_reg|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(5),
	combout => \memoey|memory_rtl_0_bypass[21]~feeder_combout\);

-- Location: LCFF_X22_Y14_N3
\memoey|memory_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(21));

-- Location: LCCOMB_X21_Y15_N16
\memoey|memory~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~9_combout\ = (\memoey|memory~combout\ & ((\memoey|memory_rtl_0_bypass\(21)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a5\,
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0_bypass\(21),
	combout => \memoey|memory~9_combout\);

-- Location: LCCOMB_X19_Y16_N16
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\ = ((\CPU_unit|A_reg|q\(5) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ = CARRY((\CPU_unit|A_reg|q\(5) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\))) # (!\CPU_unit|A_reg|q\(5) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(5),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\);

-- Location: LCFF_X19_Y16_N17
\CPU_unit|G_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(5));

-- Location: LCFF_X20_Y15_N31
\CPU_unit|R2_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(5));

-- Location: LCFF_X19_Y15_N9
\CPU_unit|R0_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(5));

-- Location: LCCOMB_X19_Y15_N8
\CPU_unit|Mux_unit|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~2_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|uut|Mux24~8_combout\ & (\CPU_unit|R1_reg|q\(5))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- ((\CPU_unit|R0_reg|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(5),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R0_reg|q\(5),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~2_combout\);

-- Location: LCCOMB_X20_Y15_N30
\CPU_unit|Mux_unit|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux3~2_combout\ & (\CPU_unit|R3_reg|q\(5))) # (!\CPU_unit|Mux_unit|Mux3~2_combout\ & ((\CPU_unit|R2_reg|q\(5)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(5),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(5),
	datad => \CPU_unit|Mux_unit|Mux3~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y15_N10
\CPU_unit|Mux_unit|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~4_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|uut|Mux21~1_combout\)))) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|G_reg|q\(5))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- ((\CPU_unit|Mux_unit|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|G_reg|q\(5),
	datac => \CPU_unit|Mux_unit|Mux3~3_combout\,
	datad => \CPU_unit|uut|Mux21~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y15_N18
\CPU_unit|Mux_unit|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~5_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux3~4_combout\ & ((\memoey|memory~9_combout\))) # (!\CPU_unit|Mux_unit|Mux3~4_combout\ & (\CPU_unit|Mux_unit|Mux3~1_combout\)))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|Mux_unit|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux3~1_combout\,
	datac => \memoey|memory~9_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~5_combout\);

-- Location: LCCOMB_X20_Y16_N14
\CPU_unit|addsub_unit|Add1|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ = \CPU_unit|uut|addsub_sel~3_combout\ $ (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\);

-- Location: LCCOMB_X19_Y16_N18
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\ = (\CPU_unit|A_reg|q\(6) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)))) # (!\CPU_unit|A_reg|q\(6) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\ = CARRY((\CPU_unit|A_reg|q\(6) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)) # (!\CPU_unit|A_reg|q\(6) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(6),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X19_Y16_N20
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\ = ((\CPU_unit|A_reg|q\(7) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ = CARRY((\CPU_unit|A_reg|q\(7) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\))) # (!\CPU_unit|A_reg|q\(7) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(7),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X19_Y16_N22
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\ = \CPU_unit|A_reg|q\(8) $ (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(8),
	datad => \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\);

-- Location: LCFF_X19_Y16_N23
\CPU_unit|G_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(8));

-- Location: LCCOMB_X16_Y15_N26
\memoey|memory~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~4_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(27))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(27),
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a8\,
	datad => \memoey|memory~combout\,
	combout => \memoey|memory~4_combout\);

-- Location: LCFF_X21_Y15_N9
\CPU_unit|R5_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(8));

-- Location: LCFF_X22_Y15_N25
\CPU_unit|R4_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(8));

-- Location: LCCOMB_X22_Y15_N24
\CPU_unit|Mux_unit|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~0_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|R6_reg|q\(8)) # ((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R4_reg|q\(8) & !\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(8),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R4_reg|q\(8),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y15_N8
\CPU_unit|Mux_unit|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux0~0_combout\ & (\CPU_unit|R7_reg|q\(8))) # (!\CPU_unit|Mux_unit|Mux0~0_combout\ & ((\CPU_unit|R5_reg|q\(8)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(8),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(8),
	datad => \CPU_unit|Mux_unit|Mux0~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~1_combout\);

-- Location: LCFF_X20_Y15_N23
\CPU_unit|R2_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(8));

-- Location: LCFF_X20_Y16_N11
\CPU_unit|R3_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~1_combout\,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(8));

-- Location: LCCOMB_X20_Y15_N22
\CPU_unit|Mux_unit|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~3_combout\ = (\CPU_unit|Mux_unit|Mux0~2_combout\ & (((\CPU_unit|R3_reg|q\(8))) # (!\CPU_unit|uut|Mux23~1_combout\))) # (!\CPU_unit|Mux_unit|Mux0~2_combout\ & (\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R2_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux0~2_combout\,
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(8),
	datad => \CPU_unit|R3_reg|q\(8),
	combout => \CPU_unit|Mux_unit|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y15_N26
\CPU_unit|Mux_unit|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~4_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|uut|Mux21~1_combout\) # ((\CPU_unit|Mux_unit|Mux0~1_combout\)))) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (!\CPU_unit|uut|Mux21~1_combout\ & 
-- ((\CPU_unit|Mux_unit|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux0~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~4_combout\);

-- Location: LCCOMB_X20_Y15_N0
\CPU_unit|Mux_unit|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux0~4_combout\ & ((\memoey|memory~4_combout\))) # (!\CPU_unit|Mux_unit|Mux0~4_combout\ & (\CPU_unit|G_reg|q\(8))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(8),
	datac => \memoey|memory~4_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~5_combout\);

-- Location: LCCOMB_X20_Y16_N10
\CPU_unit|ADDR_reg|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~1_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~1_combout\);

-- Location: LCCOMB_X21_Y14_N20
\CPU_unit|Dout_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[8]~feeder_combout\ = \CPU_unit|ADDR_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~1_combout\,
	combout => \CPU_unit|Dout_reg|q[8]~feeder_combout\);

-- Location: LCFF_X21_Y14_N21
\CPU_unit|Dout_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(8));

-- Location: LCFF_X16_Y15_N17
\memoey|memory_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(27));

-- Location: LCCOMB_X24_Y15_N14
\CPU_unit|IR_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~3_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(27))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(27),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a8\,
	combout => \CPU_unit|IR_reg|q~3_combout\);

-- Location: LCFF_X24_Y15_N15
\CPU_unit|IR_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~3_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(8));

-- Location: LCCOMB_X22_Y14_N26
\CPU_unit|uut|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux30~0_combout\ = (!\CPU_unit|IR_reg|q\(7) & \CPU_unit|IR_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux30~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\CPU_unit|Dout_reg|q[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[5]~1_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(6) & (\CPU_unit|uut|Decoder0~0_combout\ & \CPU_unit|uut|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \SW~combout\(1),
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|uut|Mux30~0_combout\,
	combout => \CPU_unit|Dout_reg|q[5]~1_combout\);

-- Location: LCFF_X18_Y14_N17
\CPU_unit|Dout_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(0));

-- Location: LCCOMB_X18_Y15_N28
\memoey|memory~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~3_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(11))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(11),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \memoey|memory~3_combout\);

-- Location: LCFF_X22_Y15_N5
\CPU_unit|R5_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(0));

-- Location: LCFF_X22_Y15_N11
\CPU_unit|R4_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(0));

-- Location: LCCOMB_X22_Y15_N10
\CPU_unit|Mux_unit|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~0_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|R6_reg|q\(0)) # ((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R4_reg|q\(0) & !\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(0),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R4_reg|q\(0),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y15_N4
\CPU_unit|Mux_unit|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux8~0_combout\ & (\CPU_unit|R7_reg|q\(0))) # (!\CPU_unit|Mux_unit|Mux8~0_combout\ & ((\CPU_unit|R5_reg|q\(0)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(0),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(0),
	datad => \CPU_unit|Mux_unit|Mux8~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~1_combout\);

-- Location: LCFF_X20_Y15_N15
\CPU_unit|R2_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(0));

-- Location: LCFF_X20_Y15_N13
\CPU_unit|R0_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~0_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(0));

-- Location: LCCOMB_X20_Y15_N12
\CPU_unit|Mux_unit|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(0)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(0) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(0),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(0),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~2_combout\);

-- Location: LCCOMB_X20_Y15_N14
\CPU_unit|Mux_unit|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux8~2_combout\ & (\CPU_unit|R3_reg|q\(0))) # (!\CPU_unit|Mux_unit|Mux8~2_combout\ & ((\CPU_unit|R2_reg|q\(0)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(0),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(0),
	datad => \CPU_unit|Mux_unit|Mux8~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~3_combout\);

-- Location: LCFF_X19_Y16_N7
\CPU_unit|G_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(0));

-- Location: LCCOMB_X19_Y15_N28
\CPU_unit|Mux_unit|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~4_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & (\CPU_unit|uut|Mux21~1_combout\)) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(0)))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (\CPU_unit|Mux_unit|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux8~3_combout\,
	datad => \CPU_unit|G_reg|q\(0),
	combout => \CPU_unit|Mux_unit|Mux8~4_combout\);

-- Location: LCCOMB_X19_Y15_N2
\CPU_unit|Mux_unit|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~5_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux8~4_combout\ & (\memoey|memory~3_combout\)) # (!\CPU_unit|Mux_unit|Mux8~4_combout\ & ((\CPU_unit|Mux_unit|Mux8~1_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|Mux_unit|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \memoey|memory~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux8~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~5_combout\);

-- Location: LCCOMB_X16_Y15_N4
\CPU_unit|ADDR_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~5_combout\ = (\CPU_unit|ADDR_reg|q~3_combout\) # ((\CPU_unit|ADDR_reg|q~4_combout\ & (\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~4_combout\,
	datab => \CPU_unit|ADDR_reg|q~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~5_combout\);

-- Location: LCFF_X16_Y15_N5
\CPU_unit|ADDR_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(0));

-- Location: LCCOMB_X15_Y15_N26
\memoey|memory_rtl_0_bypass[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[1]~feeder_combout\ = \CPU_unit|ADDR_reg|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q\(0),
	combout => \memoey|memory_rtl_0_bypass[1]~feeder_combout\);

-- Location: LCFF_X15_Y15_N27
\memoey|memory_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(1));

-- Location: LCFF_X15_Y15_N17
\memoey|memory_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(3));

-- Location: LCCOMB_X15_Y15_N16
\memoey|memory~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~0_combout\ = (\CPU_unit|ADDR_reg|q\(1) & (\memoey|memory_rtl_0_bypass\(3) & (\memoey|memory_rtl_0_bypass\(1) $ (!\CPU_unit|ADDR_reg|q\(0))))) # (!\CPU_unit|ADDR_reg|q\(1) & (!\memoey|memory_rtl_0_bypass\(3) & 
-- (\memoey|memory_rtl_0_bypass\(1) $ (!\CPU_unit|ADDR_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(1),
	datab => \memoey|memory_rtl_0_bypass\(1),
	datac => \memoey|memory_rtl_0_bypass\(3),
	datad => \CPU_unit|ADDR_reg|q\(0),
	combout => \memoey|memory~0_combout\);

-- Location: LCFF_X15_Y15_N23
\memoey|memory_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(9));

-- Location: LCCOMB_X22_Y14_N8
\CPU_unit|uut|en_reg[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|en_reg[14]~0_combout\ = (\CPU_unit|uut|Mux8~0_combout\ & (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux8~0_combout\,
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|Mux30~0_combout\,
	combout => \CPU_unit|uut|en_reg[14]~0_combout\);

-- Location: LCFF_X22_Y14_N9
\CPU_unit|W_reg|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|uut|en_reg[14]~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|W_reg|q~regout\);

-- Location: LCCOMB_X21_Y16_N12
\CPU_unit|ADDR_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q[8]~feeder_combout\ = \CPU_unit|ADDR_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~1_combout\,
	combout => \CPU_unit|ADDR_reg|q[8]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N0
\CPU_unit|ADDR_reg|q[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q[6]~2_combout\ = (\SW~combout\(1)) # (!\CPU_unit|uut|Mux25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q[6]~2_combout\);

-- Location: LCFF_X21_Y16_N13
\CPU_unit|ADDR_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|ADDR_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(8));

-- Location: LCFF_X15_Y15_N1
\CPU_unit|ADDR_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(7));

-- Location: LCCOMB_X15_Y15_N8
wr_en_mem : cycloneii_lcell_comb
-- Equation(s):
-- \wr_en_mem~combout\ = (\CPU_unit|W_reg|q~regout\ & (!\CPU_unit|ADDR_reg|q\(8) & !\CPU_unit|ADDR_reg|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|W_reg|q~regout\,
	datac => \CPU_unit|ADDR_reg|q\(8),
	datad => \CPU_unit|ADDR_reg|q\(7),
	combout => \wr_en_mem~combout\);

-- Location: LCFF_X15_Y15_N13
\memoey|memory_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \wr_en_mem~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(0));

-- Location: LCCOMB_X15_Y15_N22
\memoey|memory~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~2_combout\ = (\memoey|memory_rtl_0_bypass\(0) & (\CPU_unit|ADDR_reg|q\(4) $ (!\memoey|memory_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q\(4),
	datac => \memoey|memory_rtl_0_bypass\(9),
	datad => \memoey|memory_rtl_0_bypass\(0),
	combout => \memoey|memory~2_combout\);

-- Location: LCCOMB_X15_Y15_N18
\memoey|memory\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~combout\ = ((\memoey|memory~1_combout\ & (\memoey|memory~0_combout\ & \memoey|memory~2_combout\))) # (!\memoey|memory_rtl_0_bypass\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~1_combout\,
	datab => \memoey|memory_rtl_0_bypass\(12),
	datac => \memoey|memory~0_combout\,
	datad => \memoey|memory~2_combout\,
	combout => \memoey|memory~combout\);

-- Location: LCCOMB_X18_Y15_N4
\memoey|memory~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~11_combout\ = (\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(23))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(23),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \memoey|memory~11_combout\);

-- Location: LCFF_X19_Y16_N19
\CPU_unit|G_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(6));

-- Location: LCFF_X19_Y15_N17
\CPU_unit|R3_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(6));

-- Location: LCFF_X19_Y15_N23
\CPU_unit|R0_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(6));

-- Location: LCCOMB_X19_Y15_N22
\CPU_unit|Mux_unit|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(6)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(6) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(6),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(6),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y15_N16
\CPU_unit|Mux_unit|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux2~2_combout\ & ((\CPU_unit|R3_reg|q\(6)))) # (!\CPU_unit|Mux_unit|Mux2~2_combout\ & (\CPU_unit|R2_reg|q\(6))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(6),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(6),
	datad => \CPU_unit|Mux_unit|Mux2~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~3_combout\);

-- Location: LCCOMB_X20_Y16_N8
\CPU_unit|R7_reg|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~26_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux2~5_combout\ & \CPU_unit|Mux_unit|Mux1~1_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~13_combout\,
	datab => \CPU_unit|Mux_unit|Mux2~5_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datad => \CPU_unit|uut|Mux28~1_combout\,
	combout => \CPU_unit|R7_reg|Add0~26_combout\);

-- Location: LCFF_X20_Y16_N9
\CPU_unit|R7_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~26_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(6));

-- Location: LCFF_X22_Y15_N19
\CPU_unit|R5_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(6));

-- Location: LCFF_X22_Y15_N13
\CPU_unit|R4_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(6));

-- Location: LCCOMB_X22_Y15_N12
\CPU_unit|Mux_unit|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~0_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|R6_reg|q\(6)) # ((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R4_reg|q\(6) & !\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(6),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R4_reg|q\(6),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\CPU_unit|Mux_unit|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux2~0_combout\ & (\CPU_unit|R7_reg|q\(6))) # (!\CPU_unit|Mux_unit|Mux2~0_combout\ & ((\CPU_unit|R5_reg|q\(6)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R7_reg|q\(6),
	datac => \CPU_unit|R5_reg|q\(6),
	datad => \CPU_unit|Mux_unit|Mux2~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y15_N30
\CPU_unit|Mux_unit|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~4_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|uut|Mux21~1_combout\) # ((\CPU_unit|Mux_unit|Mux2~1_combout\)))) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (\CPU_unit|Mux_unit|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux2~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~4_combout\);

-- Location: LCCOMB_X19_Y15_N20
\CPU_unit|Mux_unit|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux2~4_combout\ & (\memoey|memory~11_combout\)) # (!\CPU_unit|Mux_unit|Mux2~4_combout\ & ((\CPU_unit|G_reg|q\(6)))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \memoey|memory~11_combout\,
	datac => \CPU_unit|G_reg|q\(6),
	datad => \CPU_unit|Mux_unit|Mux2~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~5_combout\);

-- Location: LCCOMB_X18_Y15_N26
\CPU_unit|Dout_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~3_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~5_combout\,
	combout => \CPU_unit|Dout_reg|q~3_combout\);

-- Location: LCCOMB_X18_Y14_N12
\CPU_unit|Dout_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[6]~feeder_combout\ = \CPU_unit|Dout_reg|q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~3_combout\,
	combout => \CPU_unit|Dout_reg|q[6]~feeder_combout\);

-- Location: LCFF_X18_Y14_N13
\CPU_unit|Dout_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(6));

-- Location: LCCOMB_X16_Y15_N30
\memoey|memory_rtl_0_bypass[23]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[23]~1_combout\ = !\CPU_unit|Dout_reg|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(6),
	combout => \memoey|memory_rtl_0_bypass[23]~1_combout\);

-- Location: LCFF_X16_Y15_N31
\memoey|memory_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(23));

-- Location: LCCOMB_X24_Y15_N24
\CPU_unit|IR_reg|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~2_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(23))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(23),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \CPU_unit|IR_reg|q~2_combout\);

-- Location: LCFF_X24_Y15_N25
\CPU_unit|IR_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~2_combout\,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(6));

-- Location: LCCOMB_X25_Y15_N0
\CPU_unit|uut|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~1_combout\ = (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(6) & (\CPU_unit|IR_reg|q\(8) & !\CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux18~1_combout\);

-- Location: LCCOMB_X25_Y15_N30
\CPU_unit|uut|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Add0~0_combout\ = \CPU_unit|uut|step\(2) $ (((\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Add0~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\CPU_unit|uut|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~2_combout\ = (\CPU_unit|uut|step[1]~4_combout\ & ((\CPU_unit|uut|Add0~0_combout\))) # (!\CPU_unit|uut|step[1]~4_combout\ & (\CPU_unit|uut|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step[1]~4_combout\,
	datab => \CPU_unit|uut|Mux18~1_combout\,
	datad => \CPU_unit|uut|Add0~0_combout\,
	combout => \CPU_unit|uut|Mux18~2_combout\);

-- Location: LCFF_X23_Y15_N25
\CPU_unit|uut|step[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|uut|Mux18~2_combout\,
	aclr => \SW[1]~clkctrl_outclk\,
	sload => VCC,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|uut|step\(2));

-- Location: LCCOMB_X25_Y15_N12
\CPU_unit|uut|Mux22~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~16_combout\ = (\CPU_unit|IR_reg|q\(7)) # (\CPU_unit|IR_reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|Mux22~16_combout\);

-- Location: LCCOMB_X24_Y14_N16
\CPU_unit|uut|step[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~3_combout\ = (!\CPU_unit|uut|step\(0) & (\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(1) $ (!\CPU_unit|uut|Mux22~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|uut|Mux22~16_combout\,
	combout => \CPU_unit|uut|step[1]~3_combout\);

-- Location: LCCOMB_X20_Y16_N20
\CPU_unit|flag_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~0_combout\ = (!\CPU_unit|G_reg|q\(2) & (!\CPU_unit|G_reg|q\(3) & (!\CPU_unit|G_reg|q\(0) & !\CPU_unit|G_reg|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(2),
	datab => \CPU_unit|G_reg|q\(3),
	datac => \CPU_unit|G_reg|q\(0),
	datad => \CPU_unit|G_reg|q\(1),
	combout => \CPU_unit|flag_reg|q~0_combout\);

-- Location: LCCOMB_X21_Y16_N2
\CPU_unit|flag_reg|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~1_combout\ = (!\CPU_unit|G_reg|q\(7) & (!\CPU_unit|G_reg|q\(5) & (!\CPU_unit|G_reg|q\(8) & !\CPU_unit|G_reg|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(7),
	datab => \CPU_unit|G_reg|q\(5),
	datac => \CPU_unit|G_reg|q\(8),
	datad => \CPU_unit|G_reg|q\(4),
	combout => \CPU_unit|flag_reg|q~1_combout\);

-- Location: LCCOMB_X21_Y16_N8
\CPU_unit|flag_reg|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~2_combout\ = (\CPU_unit|flag_reg|q~0_combout\ & \CPU_unit|flag_reg|q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|flag_reg|q~0_combout\,
	datad => \CPU_unit|flag_reg|q~1_combout\,
	combout => \CPU_unit|flag_reg|q~2_combout\);

-- Location: LCCOMB_X24_Y14_N28
\CPU_unit|uut|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~0_combout\ = (\CPU_unit|IR_reg|q\(8) & !\CPU_unit|IR_reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|Mux18~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\CPU_unit|uut|en_reg[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|en_reg[15]~1_combout\ = (\CPU_unit|uut|Mux8~0_combout\ & (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux8~0_combout\,
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|Mux18~0_combout\,
	combout => \CPU_unit|uut|en_reg[15]~1_combout\);

-- Location: LCCOMB_X23_Y14_N16
\CPU_unit|flag_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~3_combout\ = (\CPU_unit|uut|en_reg[15]~1_combout\ & (!\CPU_unit|G_reg|q\(6) & (\CPU_unit|flag_reg|q~2_combout\))) # (!\CPU_unit|uut|en_reg[15]~1_combout\ & (((\CPU_unit|flag_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(6),
	datab => \CPU_unit|flag_reg|q~2_combout\,
	datac => \CPU_unit|flag_reg|q\(0),
	datad => \CPU_unit|uut|en_reg[15]~1_combout\,
	combout => \CPU_unit|flag_reg|q~3_combout\);

-- Location: LCFF_X23_Y14_N17
\CPU_unit|flag_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|flag_reg|q~3_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|flag_reg|q\(0));

-- Location: LCCOMB_X24_Y14_N8
\CPU_unit|uut|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~0_combout\ = (\CPU_unit|uut|step\(2)) # ((\CPU_unit|flag_reg|q\(0) & \CPU_unit|IR_reg|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|flag_reg|q\(0),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|IR_reg|q\(7),
	combout => \CPU_unit|uut|Mux20~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\CPU_unit|uut|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~1_combout\ = (\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|IR_reg|q\(6)) # ((\CPU_unit|uut|Mux20~0_combout\ & \CPU_unit|uut|step\(1))))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|uut|Mux20~0_combout\ & 
-- \CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|Mux20~0_combout\,
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux20~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\CPU_unit|uut|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~2_combout\ = (!\CPU_unit|uut|step\(0) & ((\CPU_unit|IR_reg|q\(8) & ((!\CPU_unit|uut|Mux20~1_combout\))) # (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step[1]~3_combout\,
	datad => \CPU_unit|uut|Mux20~1_combout\,
	combout => \CPU_unit|uut|Mux20~2_combout\);

-- Location: LCFF_X24_Y15_N27
\CPU_unit|uut|step[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|uut|Mux20~2_combout\,
	aclr => \SW[1]~clkctrl_outclk\,
	sload => VCC,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|uut|step\(0));

-- Location: LCCOMB_X25_Y15_N2
\CPU_unit|uut|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~0_combout\ = (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(8) & \CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux21~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\CPU_unit|uut|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~1_combout\ = (\CPU_unit|uut|Mux22~16_combout\ & (((\CPU_unit|uut|Mux21~0_combout\)))) # (!\CPU_unit|uut|Mux22~16_combout\ & (\CPU_unit|IR_reg|q\(8) & ((\CPU_unit|uut|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|Mux21~0_combout\,
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|uut|Mux22~16_combout\,
	combout => \CPU_unit|uut|Mux21~1_combout\);

-- Location: LCCOMB_X21_Y16_N10
\CPU_unit|Mux_unit|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~1_combout\ = ((!\CPU_unit|uut|Mux22~17_combout\ & !\CPU_unit|uut|Mux23~1_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|uut|Mux22~17_combout\,
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y16_N10
\CPU_unit|R7_reg|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~25_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux1~1_combout\ & \CPU_unit|Mux_unit|Mux1~7_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~15_combout\,
	datab => \CPU_unit|Mux_unit|Mux1~1_combout\,
	datac => \CPU_unit|uut|Mux28~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~7_combout\,
	combout => \CPU_unit|R7_reg|Add0~25_combout\);

-- Location: LCFF_X18_Y16_N11
\CPU_unit|R7_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~25_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(7));

-- Location: LCFF_X22_Y15_N7
\CPU_unit|R5_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(7));

-- Location: LCFF_X22_Y15_N1
\CPU_unit|R4_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(7));

-- Location: LCCOMB_X22_Y15_N0
\CPU_unit|Mux_unit|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~2_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|R6_reg|q\(7)) # ((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R4_reg|q\(7) & !\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(7),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R4_reg|q\(7),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\CPU_unit|Mux_unit|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~3_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux1~2_combout\ & (\CPU_unit|R7_reg|q\(7))) # (!\CPU_unit|Mux_unit|Mux1~2_combout\ & ((\CPU_unit|R5_reg|q\(7)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R7_reg|q\(7),
	datac => \CPU_unit|R5_reg|q\(7),
	datad => \CPU_unit|Mux_unit|Mux1~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~3_combout\);

-- Location: LCFF_X19_Y16_N21
\CPU_unit|G_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(7));

-- Location: LCFF_X18_Y15_N9
\CPU_unit|R2_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(7));

-- Location: LCFF_X19_Y15_N25
\CPU_unit|R0_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~14_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(7));

-- Location: LCCOMB_X19_Y15_N24
\CPU_unit|Mux_unit|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~4_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|uut|Mux24~8_combout\ & (\CPU_unit|R1_reg|q\(7))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- ((\CPU_unit|R0_reg|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R1_reg|q\(7),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R0_reg|q\(7),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~4_combout\);

-- Location: LCCOMB_X18_Y15_N8
\CPU_unit|Mux_unit|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~5_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux1~4_combout\ & (\CPU_unit|R3_reg|q\(7))) # (!\CPU_unit|Mux_unit|Mux1~4_combout\ & ((\CPU_unit|R2_reg|q\(7)))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R3_reg|q\(7),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R2_reg|q\(7),
	datad => \CPU_unit|Mux_unit|Mux1~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~5_combout\);

-- Location: LCCOMB_X18_Y15_N22
\CPU_unit|Mux_unit|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~6_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(7)) # ((\CPU_unit|Mux_unit|Mux1~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((!\CPU_unit|Mux_unit|Mux1~0_combout\ & \CPU_unit|Mux_unit|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(7),
	datac => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~5_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~6_combout\);

-- Location: LCCOMB_X18_Y15_N2
\CPU_unit|Mux_unit|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~7_combout\ = (\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|Mux_unit|Mux1~6_combout\ & (\memoey|memory~10_combout\)) # (!\CPU_unit|Mux_unit|Mux1~6_combout\ & ((\CPU_unit|Mux_unit|Mux1~3_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux1~0_combout\ & (((\CPU_unit|Mux_unit|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~10_combout\,
	datab => \CPU_unit|Mux_unit|Mux1~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~6_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~7_combout\);

-- Location: LCCOMB_X18_Y15_N24
\CPU_unit|ADDR_reg|q~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~14_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~7_combout\,
	combout => \CPU_unit|ADDR_reg|q~14_combout\);

-- Location: LCCOMB_X18_Y14_N2
\CPU_unit|Dout_reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[7]~feeder_combout\ = \CPU_unit|ADDR_reg|q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~14_combout\,
	combout => \CPU_unit|Dout_reg|q[7]~feeder_combout\);

-- Location: LCFF_X18_Y14_N3
\CPU_unit|Dout_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[7]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(7));

-- Location: LCFF_X16_Y15_N13
\memoey|memory_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(25));

-- Location: LCCOMB_X22_Y15_N30
\CPU_unit|IR_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~4_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(25))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(25),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \CPU_unit|IR_reg|q~4_combout\);

-- Location: LCFF_X23_Y15_N21
\CPU_unit|IR_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(7));

-- Location: LCCOMB_X23_Y15_N22
\CPU_unit|uut|addsub_sel~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|addsub_sel~2_combout\ = (\CPU_unit|IR_reg|q\(7) & !\CPU_unit|IR_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|IR_reg|q\(7),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|addsub_sel~2_combout\);

-- Location: LCCOMB_X23_Y15_N18
\CPU_unit|uut|Mux22~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~14_combout\ = (\CPU_unit|uut|step\(0) & ((\CPU_unit|uut|Mux22~13_combout\) # ((\CPU_unit|uut|addsub_sel~2_combout\ & \CPU_unit|uut|Decoder0~0_combout\)))) # (!\CPU_unit|uut|step\(0) & (\CPU_unit|uut|addsub_sel~2_combout\ & 
-- (\CPU_unit|uut|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|uut|addsub_sel~2_combout\,
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|uut|Mux22~13_combout\,
	combout => \CPU_unit|uut|Mux22~14_combout\);

-- Location: LCCOMB_X23_Y15_N2
\CPU_unit|uut|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux23~0_combout\ = (\CPU_unit|IR_reg|q\(4) & (\CPU_unit|uut|Mux22~11_combout\ & (!\CPU_unit|uut|Mux22~13_combout\ & !\CPU_unit|uut|Mux22~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(4),
	datab => \CPU_unit|uut|Mux22~11_combout\,
	datac => \CPU_unit|uut|Mux22~13_combout\,
	datad => \CPU_unit|uut|Mux22~14_combout\,
	combout => \CPU_unit|uut|Mux23~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\CPU_unit|uut|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux23~1_combout\ = (\CPU_unit|uut|Mux22~9_combout\) # ((\CPU_unit|uut|Mux23~0_combout\) # ((\CPU_unit|IR_reg|q\(1) & \CPU_unit|uut|Mux22~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(1),
	datab => \CPU_unit|uut|Mux22~14_combout\,
	datac => \CPU_unit|uut|Mux22~9_combout\,
	datad => \CPU_unit|uut|Mux23~0_combout\,
	combout => \CPU_unit|uut|Mux23~1_combout\);

-- Location: LCCOMB_X22_Y15_N2
\CPU_unit|ADDR_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~0_combout\ = (!\SW~combout\(1) & (((!\CPU_unit|uut|Mux23~1_combout\ & !\CPU_unit|uut|Mux22~17_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|uut|Mux22~17_combout\,
	datad => \CPU_unit|uut|Mux21~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~0_combout\);

-- Location: LCCOMB_X19_Y15_N18
\CPU_unit|Dout_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q~5_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|Dout_reg|q~5_combout\);

-- Location: LCCOMB_X18_Y14_N22
\CPU_unit|Dout_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[3]~feeder_combout\ = \CPU_unit|Dout_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q~5_combout\,
	combout => \CPU_unit|Dout_reg|q[3]~feeder_combout\);

-- Location: LCFF_X18_Y14_N23
\CPU_unit|Dout_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(3));

-- Location: LCCOMB_X16_Y14_N8
\LED|memory[0][3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][3]~8_combout\ = !\CPU_unit|Dout_reg|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(3),
	combout => \LED|memory[0][3]~8_combout\);

-- Location: LCCOMB_X15_Y15_N20
\LED|memory[0][7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][7]~0_combout\ = (!\CPU_unit|ADDR_reg|q\(8) & (\CPU_unit|W_reg|q~regout\ & (!\CPU_unit|ADDR_reg|q\(1) & !\CPU_unit|ADDR_reg|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(8),
	datab => \CPU_unit|W_reg|q~regout\,
	datac => \CPU_unit|ADDR_reg|q\(1),
	datad => \CPU_unit|ADDR_reg|q\(0),
	combout => \LED|memory[0][7]~0_combout\);

-- Location: LCFF_X15_Y15_N3
\CPU_unit|ADDR_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(6));

-- Location: LCFF_X15_Y15_N7
\CPU_unit|ADDR_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(5));

-- Location: LCCOMB_X15_Y15_N6
\LED|memory[0][7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][7]~1_combout\ = (!\CPU_unit|ADDR_reg|q\(4) & (!\CPU_unit|ADDR_reg|q\(3) & (!\CPU_unit|ADDR_reg|q\(5) & !\CPU_unit|ADDR_reg|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(4),
	datab => \CPU_unit|ADDR_reg|q\(3),
	datac => \CPU_unit|ADDR_reg|q\(5),
	datad => \CPU_unit|ADDR_reg|q\(2),
	combout => \LED|memory[0][7]~1_combout\);

-- Location: LCCOMB_X15_Y15_N2
\LED|memory[0][7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][7]~2_combout\ = (\CPU_unit|ADDR_reg|q\(7) & (\LED|memory[0][7]~0_combout\ & (!\CPU_unit|ADDR_reg|q\(6) & \LED|memory[0][7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(7),
	datab => \LED|memory[0][7]~0_combout\,
	datac => \CPU_unit|ADDR_reg|q\(6),
	datad => \LED|memory[0][7]~1_combout\,
	combout => \LED|memory[0][7]~2_combout\);

-- Location: LCFF_X16_Y14_N9
\LED|memory[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][3]~8_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][3]~regout\);

-- Location: LCCOMB_X10_Y14_N22
\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\);

-- Location: LCCOMB_X15_Y14_N18
\LED|memory[0][2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][2]~9_combout\ = !\CPU_unit|Dout_reg|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(2),
	combout => \LED|memory[0][2]~9_combout\);

-- Location: LCFF_X15_Y14_N19
\LED|memory[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][2]~9_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][2]~regout\);

-- Location: LCCOMB_X10_Y14_N2
\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\);

-- Location: LCCOMB_X10_Y14_N12
\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~55_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[30]~54_combout\,
	datad => VCC,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X10_Y14_N14
\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\ & 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~53_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[31]~52_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X16_Y14_N26
\LED|memory[0][7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][7]~4_combout\ = !\CPU_unit|Dout_reg|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(7),
	combout => \LED|memory[0][7]~4_combout\);

-- Location: LCFF_X16_Y14_N27
\LED|memory[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][7]~4_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][7]~regout\);

-- Location: LCCOMB_X15_Y14_N4
\LED|memory[0][6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][6]~5_combout\ = !\CPU_unit|Dout_reg|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(6),
	combout => \LED|memory[0][6]~5_combout\);

-- Location: LCFF_X15_Y14_N5
\LED|memory[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][6]~5_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][6]~regout\);

-- Location: LCCOMB_X15_Y14_N22
\LED|memory[0][5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][5]~6_combout\ = !\CPU_unit|Dout_reg|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(5),
	combout => \LED|memory[0][5]~6_combout\);

-- Location: LCFF_X15_Y14_N23
\LED|memory[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][5]~6_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][5]~regout\);

-- Location: LCCOMB_X12_Y13_N10
\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\LED|memory[0][7]~regout\ & (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\LED|memory[0][7]~regout\ & 
-- (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\LED|memory[0][7]~regout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][7]~regout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X12_Y13_N12
\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y13_N14
\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X11_Y13_N4
\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\LED|memory[0][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \LED|memory[0][5]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\);

-- Location: LCCOMB_X15_Y14_N20
\LED|memory[0][4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][4]~7_combout\ = !\CPU_unit|Dout_reg|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(4),
	combout => \LED|memory[0][4]~7_combout\);

-- Location: LCFF_X15_Y14_N21
\LED|memory[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][4]~7_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][4]~regout\);

-- Location: LCCOMB_X11_Y13_N26
\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\ = (!\LED|memory[0][4]~regout\ & \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][4]~regout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\);

-- Location: LCCOMB_X11_Y13_N6
\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~43_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[20]~42_combout\,
	datad => VCC,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X11_Y13_N8
\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\ & 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~41_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[21]~40_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X12_Y13_N22
\comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37_combout\);

-- Location: LCCOMB_X11_Y13_N0
\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\LED|memory[0][6]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \LED|memory[0][6]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\);

-- Location: LCCOMB_X11_Y13_N10
\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\)))))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~39_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[22]~38_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X11_Y13_N12
\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~36_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[23]~37_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y13_N14
\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y13_N14
\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X10_Y13_N22
\comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[26]~47_combout\);

-- Location: LCCOMB_X10_Y13_N26
\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\);

-- Location: LCCOMB_X10_Y13_N0
\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~48_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datad => VCC,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X10_Y13_N4
\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\)))))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~68_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X11_Y13_N30
\comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44_combout\ = (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X10_Y13_N6
\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~67_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y13_N8
\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y13_N12
\comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50_combout\);

-- Location: LCCOMB_X10_Y13_N28
\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\LED|memory[0][4]~regout\))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][4]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\);

-- Location: LCCOMB_X10_Y14_N16
\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\)))))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~51_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[32]~69_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X10_Y14_N18
\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[33]~50_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y14_N20
\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y14_N30
\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\);

-- Location: LCCOMB_X10_Y14_N4
\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\LED|memory[0][3]~regout\))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X9_Y14_N4
\comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58_combout\);

-- Location: LCCOMB_X9_Y14_N8
\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\);

-- Location: LCCOMB_X16_Y14_N2
\LED|memory[0][1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][1]~10_combout\ = !\CPU_unit|Dout_reg|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(1),
	combout => \LED|memory[0][1]~10_combout\);

-- Location: LCFF_X16_Y14_N3
\LED|memory[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][1]~10_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][1]~regout\);

-- Location: LCCOMB_X9_Y14_N0
\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\LED|memory[0][1]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][1]~regout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\);

-- Location: LCCOMB_X9_Y14_N20
\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~57_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[35]~56_combout\,
	datad => VCC,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X9_Y14_N22
\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\)))
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X9_Y14_N26
\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58_combout\ & 
-- !\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[38]~58_combout\,
	datad => VCC,
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y14_N28
\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X8_Y14_N10
\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\) # 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~59_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\);

-- Location: LCCOMB_X9_Y14_N18
\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\);

-- Location: LCCOMB_X8_Y14_N4
\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((!\LED|memory[0][1]~regout\))) # 
-- (!\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \LED|memory[0][1]~regout\,
	datad => \comb_21|Mod3|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\);

-- Location: LCCOMB_X16_Y14_N12
\LED|memory[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][0]~3_combout\ = !\CPU_unit|Dout_reg|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(0),
	combout => \LED|memory[0][0]~3_combout\);

-- Location: LCFF_X16_Y14_N13
\LED|memory[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][0]~3_combout\,
	ena => \LED|memory[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][0]~regout\);

-- Location: LCCOMB_X8_Y14_N12
\comb_38|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr6~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\)) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ $ (((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ & !\LED|memory[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr6~0_combout\);

-- Location: LCCOMB_X8_Y14_N26
\comb_38|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr5~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\) # ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\)))) # 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ $ (!\LED|memory[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr5~0_combout\);

-- Location: LCCOMB_X8_Y14_N24
\comb_38|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr4~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\)) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & 
-- (\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\) # (\LED|memory[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr4~0_combout\);

-- Location: LCCOMB_X8_Y14_N22
\comb_38|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr3~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\) # ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & 
-- !\LED|memory[0][0]~regout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ $ (((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ & 
-- !\LED|memory[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr3~0_combout\);

-- Location: LCCOMB_X8_Y14_N20
\comb_38|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr2~0_combout\ = ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\)) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & 
-- ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\)))) # (!\LED|memory[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr2~0_combout\);

-- Location: LCCOMB_X8_Y14_N18
\comb_38|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr1~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\) # ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\ & 
-- !\LED|memory[0][0]~regout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\) # ((!\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ 
-- & !\LED|memory[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr1~0_combout\);

-- Location: LCCOMB_X8_Y14_N8
\comb_38|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_38|WideOr0~0_combout\ = (\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ & ((\LED|memory[0][0]~regout\) # 
-- (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\)))) # (!\comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\ & (\comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\ $ 
-- ((\comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	datac => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	datad => \LED|memory[0][0]~regout\,
	combout => \comb_38|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \LED|memory[0][5]~regout\ $ (GND)
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\LED|memory[0][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][5]~regout\,
	datad => VCC,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X14_Y14_N22
\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\LED|memory[0][7]~regout\ & (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\LED|memory[0][7]~regout\ & 
-- (\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\LED|memory[0][7]~regout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][7]~regout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X14_Y14_N24
\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y14_N26
\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y14_N8
\comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37_combout\);

-- Location: LCCOMB_X13_Y14_N8
\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\ = (!\LED|memory[0][6]~regout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][6]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\);

-- Location: LCCOMB_X13_Y14_N4
\comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\ = (!\LED|memory[0][5]~regout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][5]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[21]~40_combout\);

-- Location: LCCOMB_X13_Y14_N18
\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\ = (!\LED|memory[0][4]~regout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][4]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\);

-- Location: LCCOMB_X13_Y14_N20
\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~42_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[20]~43_combout\,
	datad => VCC,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X13_Y14_N24
\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\)))))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~39_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[22]~38_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X13_Y14_N26
\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~36_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[23]~37_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y14_N28
\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y15_N2
\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)) # 
-- (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & VCC))
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X12_Y15_N4
\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & VCC)) # 
-- (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ $ (GND)))
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X12_Y15_N6
\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY(!\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y15_N8
\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y15_N30
\comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3_combout\);

-- Location: LCCOMB_X13_Y15_N8
\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\ = (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\);

-- Location: LCCOMB_X12_Y14_N18
\comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X13_Y14_N30
\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\LED|memory[0][5]~regout\)) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][5]~regout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X12_Y14_N2
\comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \LED|memory[0][4]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[26]~46_combout\);

-- Location: LCCOMB_X12_Y14_N14
\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\LED|memory[0][3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \LED|memory[0][3]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\);

-- Location: LCCOMB_X12_Y14_N22
\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[25]~48_combout\,
	datad => VCC,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X12_Y14_N26
\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\)))))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X12_Y14_N28
\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~64_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y14_N30
\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y15_N22
\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\);

-- Location: LCCOMB_X13_Y14_N0
\comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50_combout\);

-- Location: LCCOMB_X13_Y14_N14
\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\LED|memory[0][4]~regout\)) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \LED|memory[0][4]~regout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\);

-- Location: LCCOMB_X13_Y15_N28
\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\);

-- Location: LCCOMB_X14_Y15_N24
\comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[30]~54_combout\);

-- Location: LCCOMB_X13_Y15_N14
\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\ & 
-- (!\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\)))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~52_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[31]~53_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X13_Y15_N16
\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\)))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\)))))
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~51_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[32]~66_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X13_Y15_N18
\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~62_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[33]~50_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y15_N20
\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y15_N30
\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\);

-- Location: LCCOMB_X12_Y15_N14
\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\) # (\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\)))
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\) # (\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\,
	datad => VCC,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X12_Y15_N16
\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\) # 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\ & 
-- (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\)))
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\ & (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\ & 
-- !\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\,
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X12_Y15_N18
\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\) # 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\) # 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\)))))
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\) # 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\,
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X12_Y15_N20
\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2_combout\ & (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3_combout\ & 
-- !\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~2_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[38]~3_combout\,
	datad => VCC,
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y15_N22
\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y15_N28
\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\) # 
-- ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[36]~6_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\);

-- Location: LCCOMB_X12_Y15_N26
\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\) # 
-- ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~4_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \comb_21|Mod2|auto_generated|divider|divider|StageOut[37]~5_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\);

-- Location: LCCOMB_X14_Y15_N2
\comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56_combout\);

-- Location: LCCOMB_X14_Y15_N0
\comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57_combout\ = (!\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57_combout\);

-- Location: LCCOMB_X14_Y15_N26
\comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X14_Y15_N4
\comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60_combout\ = (!\LED|memory[0][1]~regout\ & \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED|memory[0][1]~regout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X14_Y15_N10
\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61_combout\) # (\comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => VCC,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X14_Y15_N12
\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X14_Y15_N14
\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~67_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[37]~57_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X14_Y15_N16
\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63_combout\ & (!\comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~63_combout\,
	datab => \comb_21|Div2|auto_generated|divider|divider|StageOut[38]~56_combout\,
	datad => VCC,
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y15_N18
\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y15_N10
\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\) # 
-- ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~0_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \comb_21|Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[35]~1_combout\,
	combout => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\);

-- Location: LCCOMB_X1_Y21_N8
\comb_39|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr6~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & (((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ $ (((!\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\comb_39|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr5~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\) # 
-- (\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\comb_39|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr4~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & (\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\)) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\) # (\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\comb_39|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr3~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\) # ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & 
-- !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ $ 
-- (((!\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\comb_39|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr2~0_combout\ = ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\ & 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\))) # (!\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\comb_39|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr1~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\) # 
-- ((!\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & 
-- ((\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\) # ((!\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ & !\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\comb_39|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_39|WideOr0~0_combout\ = (\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ & 
-- ((\comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\)))) # (!\comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\ & 
-- (\comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\ $ (((\comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	datab => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	datac => \comb_21|Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	combout => \comb_39|WideOr0~0_combout\);

-- Location: LCCOMB_X13_Y13_N16
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY(!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X13_Y13_N18
\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X13_Y13_N4
\comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \LED|memory[0][7]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3_combout\);

-- Location: LCCOMB_X14_Y13_N2
\comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LCCOMB_X13_Y13_N22
\comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \LED|memory[0][4]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6_combout\);

-- Location: LCCOMB_X13_Y13_N28
\comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9_combout\);

-- Location: LCCOMB_X14_Y13_N0
\comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\LED|memory[0][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \LED|memory[0][2]~regout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10_combout\);

-- Location: LCCOMB_X14_Y13_N16
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\ = CARRY((\comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11_combout\) # (\comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[57]~10_combout\,
	datad => VCC,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\);

-- Location: LCCOMB_X14_Y13_N18
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\ = CARRY((!\comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8_combout\ & (!\comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9_combout\ & 
-- !\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~8_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[58]~9_combout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1_cout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\);

-- Location: LCCOMB_X14_Y13_N20
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\ = CARRY((\comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7_combout\) # ((\comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6_combout\) # 
-- (!\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~7_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[59]~6_combout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3_cout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\);

-- Location: LCCOMB_X14_Y13_N22
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ = CARRY(((!\comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4_combout\ & !\comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\)) # 
-- (!\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~4_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5_cout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\);

-- Location: LCCOMB_X14_Y13_N24
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ = CARRY((!\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\ & ((\comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2_combout\) # 
-- (\comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~2_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[61]~3_combout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7_cout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\);

-- Location: LCCOMB_X14_Y13_N26
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1_combout\ & (!\comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0_combout\ & 
-- !\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~1_combout\,
	datab => \comb_21|Div1|auto_generated|divider|divider|StageOut[62]~0_combout\,
	datad => VCC,
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\,
	cout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X14_Y13_N28
\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X1_Y23_N16
\comb_40|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_40|WideOr6~0_combout\ = (\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \comb_40|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\comb_40|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_40|WideOr4~0_combout\ = (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \comb_40|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\comb_40|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_40|WideOr1~0_combout\ = (!\comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (!\comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \comb_21|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \comb_40|WideOr1~0_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_38|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_39|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_40|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_40|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_40|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_40|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|ALT_INV_memory[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod3|auto_generated|divider|divider|StageOut[41]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod3|auto_generated|divider|divider|StageOut[42]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod3|auto_generated|divider|divider|StageOut[43]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Div2|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod2|auto_generated|divider|divider|StageOut[41]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod2|auto_generated|divider|divider|StageOut[42]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_21|Mod2|auto_generated|divider|divider|StageOut[43]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


