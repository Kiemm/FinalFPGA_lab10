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

-- DATE "04/08/2025 18:37:59"

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
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
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
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|WideOr0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~0_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~3_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~6_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~12_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~18_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~21_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~6_combout\ : std_logic;
SIGNAL \u3|Add0~10_combout\ : std_logic;
SIGNAL \u3|Add0~32_combout\ : std_logic;
SIGNAL \u3|Add0~45\ : std_logic;
SIGNAL \u3|Add0~46_combout\ : std_logic;
SIGNAL \u3|Add0~47\ : std_logic;
SIGNAL \u3|Add0~48_combout\ : std_logic;
SIGNAL \u3|Add0~49\ : std_logic;
SIGNAL \u3|Add0~50_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~10_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~13_combout\ : std_logic;
SIGNAL \memoey|memory~4_combout\ : std_logic;
SIGNAL \memoey|memory~6_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Add0~0_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~7_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~2_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[0]~2_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~9_combout\ : std_logic;
SIGNAL \u3|Equal0~1_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~5_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~8_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \u3|delay~5_combout\ : std_logic;
SIGNAL \u3|Add0~3\ : std_logic;
SIGNAL \u3|Add0~5\ : std_logic;
SIGNAL \u3|Add0~7\ : std_logic;
SIGNAL \u3|Add0~8_combout\ : std_logic;
SIGNAL \u3|Add0~9\ : std_logic;
SIGNAL \u3|Add0~11\ : std_logic;
SIGNAL \u3|Add0~12_combout\ : std_logic;
SIGNAL \u3|Add0~13\ : std_logic;
SIGNAL \u3|Add0~14_combout\ : std_logic;
SIGNAL \u3|delay~4_combout\ : std_logic;
SIGNAL \u3|Add0~15\ : std_logic;
SIGNAL \u3|Add0~16_combout\ : std_logic;
SIGNAL \u3|Add0~17\ : std_logic;
SIGNAL \u3|Add0~18_combout\ : std_logic;
SIGNAL \u3|delay~3_combout\ : std_logic;
SIGNAL \u3|Equal0~6_combout\ : std_logic;
SIGNAL \u3|Equal0~7_combout\ : std_logic;
SIGNAL \u3|delay~0_combout\ : std_logic;
SIGNAL \u3|Add0~31\ : std_logic;
SIGNAL \u3|Add0~33\ : std_logic;
SIGNAL \u3|Add0~34_combout\ : std_logic;
SIGNAL \u3|Add0~35\ : std_logic;
SIGNAL \u3|Add0~36_combout\ : std_logic;
SIGNAL \u3|Add0~37\ : std_logic;
SIGNAL \u3|Add0~39\ : std_logic;
SIGNAL \u3|Add0~40_combout\ : std_logic;
SIGNAL \u3|Add0~41\ : std_logic;
SIGNAL \u3|Add0~43\ : std_logic;
SIGNAL \u3|Add0~44_combout\ : std_logic;
SIGNAL \u3|Add0~42_combout\ : std_logic;
SIGNAL \u3|Add0~38_combout\ : std_logic;
SIGNAL \u3|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Equal0~4_combout\ : std_logic;
SIGNAL \u3|Equal0~3_combout\ : std_logic;
SIGNAL \u3|Equal0~5_combout\ : std_logic;
SIGNAL \u3|delay~6_combout\ : std_logic;
SIGNAL \u3|Add0~1\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u3|Add0~4_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|Add0~19\ : std_logic;
SIGNAL \u3|Add0~20_combout\ : std_logic;
SIGNAL \u3|delay~2_combout\ : std_logic;
SIGNAL \u3|Add0~21\ : std_logic;
SIGNAL \u3|Add0~22_combout\ : std_logic;
SIGNAL \u3|Add0~23\ : std_logic;
SIGNAL \u3|Add0~24_combout\ : std_logic;
SIGNAL \u3|Add0~25\ : std_logic;
SIGNAL \u3|Add0~26_combout\ : std_logic;
SIGNAL \u3|Add0~27\ : std_logic;
SIGNAL \u3|Add0~28_combout\ : std_logic;
SIGNAL \u3|Add0~29\ : std_logic;
SIGNAL \u3|Add0~30_combout\ : std_logic;
SIGNAL \u3|delay~1_combout\ : std_logic;
SIGNAL \u3|WideOr0~0_combout\ : std_logic;
SIGNAL \u3|WideOr0~1_combout\ : std_logic;
SIGNAL \u3|WideOr0~combout\ : std_logic;
SIGNAL \u3|WideOr0~clkctrl_outclk\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux34~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~17_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux8~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~7_combout\ : std_logic;
SIGNAL \CPU_unit|uut|addsub_sel~0_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~6_combout\ : std_logic;
SIGNAL \CPU_unit|R5_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|A_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|G_reg|q[0]~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~2_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux34~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux34~2_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[1]~2_combout\ : std_logic;
SIGNAL \CPU_unit|R4_reg|q[0]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~1_combout\ : std_logic;
SIGNAL \CPU_unit|R0_reg|q[0]~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux28~0_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[0]~0_combout\ : std_logic;
SIGNAL \CPU_unit|R3_reg|q[5]~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~3_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux7~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~5_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~5_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~7_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~8_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \memoey|memory~7_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[1]~3_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux4~5_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~7_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[23]~1_combout\ : std_logic;
SIGNAL \memoey|memory~9_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux2~5_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~9_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \memoey|memory~8_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~2_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~5_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~6_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~8_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \memoey|memory~5_combout\ : std_logic;
SIGNAL \CPU_unit|R1_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux6~5_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~6_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~8_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q[2]~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~5_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~9_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~6_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~7_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux24~8_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~5_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~11_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~16_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~18_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux3~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux23~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~6_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~7_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~8_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~9_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~5_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~1_combout\ : std_logic;
SIGNAL \memoey|memory~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux8~6_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~2_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~6_combout\ : std_logic;
SIGNAL \CPU_unit|R5_reg|q[2]~0_combout\ : std_logic;
SIGNAL \CPU_unit|R6_reg|q[2]~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~1_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux5~5_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~1_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|en_reg[15]~1_combout\ : std_logic;
SIGNAL \CPU_unit|flag_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|step[1]~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux19~0_combout\ : std_logic;
SIGNAL \SW[1]~clkctrl_outclk\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux20~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[5]~0_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~1_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux18~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~19_combout\ : std_logic;
SIGNAL \CPU_unit|A_reg|q[6]~2_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \memoey|memory~11_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux28~1_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~23_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[0]~3_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[0]~4_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[0]~6_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|q[0]~5_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~20_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~14_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~1\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~4\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~7\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~9_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~11_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~10\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~13\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~15_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~17_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~16\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~19\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~22\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~24_combout\ : std_logic;
SIGNAL \CPU_unit|R7_reg|Add0~26_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux0~5_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~11_combout\ : std_logic;
SIGNAL \CPU_unit|Dout_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~2_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux21~3_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux25~0_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux25~1_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~1_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q~10_combout\ : std_logic;
SIGNAL \CPU_unit|ADDR_reg|q[7]~11_combout\ : std_logic;
SIGNAL \CPU_unit|uut|en_reg[14]~0_combout\ : std_logic;
SIGNAL \CPU_unit|W_reg|q~regout\ : std_logic;
SIGNAL \wr_en_mem~combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \memoey|memory~2_combout\ : std_logic;
SIGNAL \memoey|memory~0_combout\ : std_logic;
SIGNAL \memoey|memory~1_combout\ : std_logic;
SIGNAL \memoey|memory~combout\ : std_logic;
SIGNAL \memoey|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \memoey|memory~10_combout\ : std_logic;
SIGNAL \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~2_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~3_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~4_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~0_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~1_combout\ : std_logic;
SIGNAL \CPU_unit|Mux_unit|Mux1~5_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~10_combout\ : std_logic;
SIGNAL \CPU_unit|IR_reg|q~4_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~12_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~14_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux22~15_combout\ : std_logic;
SIGNAL \CPU_unit|uut|Mux23~1_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~0_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q~1_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \CPU_unit|R2_reg|q[8]~feeder_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~3_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~0_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~2_combout\ : std_logic;
SIGNAL \LED|memory[0][0]~regout\ : std_logic;
SIGNAL \LED|memory[0][1]~4_combout\ : std_logic;
SIGNAL \LED|memory[0][1]~regout\ : std_logic;
SIGNAL \LED|memory[0][2]~5_combout\ : std_logic;
SIGNAL \LED|memory[0][2]~regout\ : std_logic;
SIGNAL \LED|memory[0][3]~6_combout\ : std_logic;
SIGNAL \LED|memory[0][3]~regout\ : std_logic;
SIGNAL \LED|memory[0][4]~7_combout\ : std_logic;
SIGNAL \LED|memory[0][4]~regout\ : std_logic;
SIGNAL \LED|memory[0][5]~8_combout\ : std_logic;
SIGNAL \LED|memory[0][5]~regout\ : std_logic;
SIGNAL \LED|memory[0][6]~9_combout\ : std_logic;
SIGNAL \LED|memory[0][6]~regout\ : std_logic;
SIGNAL \LED|memory[0][7]~10_combout\ : std_logic;
SIGNAL \LED|memory[0][7]~regout\ : std_logic;
SIGNAL \memoey|memory_rtl_0_bypass\ : std_logic_vector(0 TO 28);
SIGNAL \CPU_unit|R0_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R1_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R2_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R3_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R7_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|flag_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|delay\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \CPU_unit|A_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R5_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CPU_unit|G_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|Dout_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU_unit|uut|step\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU_unit|ADDR_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R6_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|R4_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU_unit|IR_reg|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \LED|ALT_INV_memory[0][7]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][6]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][5]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][4]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][3]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][2]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][1]~regout\ : std_logic;
SIGNAL \LED|ALT_INV_memory[0][0]~regout\ : std_logic;

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

\memoey|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\CPU_unit|ADDR_reg|q~10_combout\ & \CPU_unit|ADDR_reg|q~8_combout\ & \CPU_unit|ADDR_reg|q~6_combout\ & \CPU_unit|ADDR_reg|q~4_combout\ & \CPU_unit|ADDR_reg|q~2_combout\);

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
\LED|ALT_INV_memory[0][7]~regout\ <= NOT \LED|memory[0][7]~regout\;
\LED|ALT_INV_memory[0][6]~regout\ <= NOT \LED|memory[0][6]~regout\;
\LED|ALT_INV_memory[0][5]~regout\ <= NOT \LED|memory[0][5]~regout\;
\LED|ALT_INV_memory[0][4]~regout\ <= NOT \LED|memory[0][4]~regout\;
\LED|ALT_INV_memory[0][3]~regout\ <= NOT \LED|memory[0][3]~regout\;
\LED|ALT_INV_memory[0][2]~regout\ <= NOT \LED|memory[0][2]~regout\;
\LED|ALT_INV_memory[0][1]~regout\ <= NOT \LED|memory[0][1]~regout\;
\LED|ALT_INV_memory[0][0]~regout\ <= NOT \LED|memory[0][0]~regout\;

-- Location: LCFF_X45_Y13_N21
\CPU_unit|R7_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~2_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(0));

-- Location: M4K_X41_Y11
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

-- Location: LCFF_X44_Y11_N21
\CPU_unit|R7_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~5_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(1));

-- Location: LCFF_X44_Y11_N15
\CPU_unit|R7_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~8_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(2));

-- Location: LCCOMB_X45_Y11_N12
\CPU_unit|R7_reg|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~0_combout\ = \CPU_unit|R7_reg|q\(0) $ (VCC)
-- \CPU_unit|R7_reg|Add0~1\ = CARRY(\CPU_unit|R7_reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(0),
	datad => VCC,
	combout => \CPU_unit|R7_reg|Add0~0_combout\,
	cout => \CPU_unit|R7_reg|Add0~1\);

-- Location: LCCOMB_X45_Y11_N14
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

-- Location: LCCOMB_X45_Y11_N16
\CPU_unit|R7_reg|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~6_combout\ = (\CPU_unit|R7_reg|q\(2) & (\CPU_unit|R7_reg|Add0~4\ $ (GND))) # (!\CPU_unit|R7_reg|q\(2) & (!\CPU_unit|R7_reg|Add0~4\ & VCC))
-- \CPU_unit|R7_reg|Add0~7\ = CARRY((\CPU_unit|R7_reg|q\(2) & !\CPU_unit|R7_reg|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(2),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~4\,
	combout => \CPU_unit|R7_reg|Add0~6_combout\,
	cout => \CPU_unit|R7_reg|Add0~7\);

-- Location: LCCOMB_X45_Y11_N20
\CPU_unit|R7_reg|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~12_combout\ = (\CPU_unit|R7_reg|q\(4) & (\CPU_unit|R7_reg|Add0~10\ $ (GND))) # (!\CPU_unit|R7_reg|q\(4) & (!\CPU_unit|R7_reg|Add0~10\ & VCC))
-- \CPU_unit|R7_reg|Add0~13\ = CARRY((\CPU_unit|R7_reg|q\(4) & !\CPU_unit|R7_reg|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(4),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~10\,
	combout => \CPU_unit|R7_reg|Add0~12_combout\,
	cout => \CPU_unit|R7_reg|Add0~13\);

-- Location: LCCOMB_X45_Y11_N24
\CPU_unit|R7_reg|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~18_combout\ = (\CPU_unit|R7_reg|q\(6) & (\CPU_unit|R7_reg|Add0~16\ $ (GND))) # (!\CPU_unit|R7_reg|q\(6) & (!\CPU_unit|R7_reg|Add0~16\ & VCC))
-- \CPU_unit|R7_reg|Add0~19\ = CARRY((\CPU_unit|R7_reg|q\(6) & !\CPU_unit|R7_reg|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(6),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~16\,
	combout => \CPU_unit|R7_reg|Add0~18_combout\,
	cout => \CPU_unit|R7_reg|Add0~19\);

-- Location: LCCOMB_X45_Y11_N26
\CPU_unit|R7_reg|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~21_combout\ = (\CPU_unit|R7_reg|q\(7) & (!\CPU_unit|R7_reg|Add0~19\)) # (!\CPU_unit|R7_reg|q\(7) & ((\CPU_unit|R7_reg|Add0~19\) # (GND)))
-- \CPU_unit|R7_reg|Add0~22\ = CARRY((!\CPU_unit|R7_reg|Add0~19\) # (!\CPU_unit|R7_reg|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(7),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~19\,
	combout => \CPU_unit|R7_reg|Add0~21_combout\,
	cout => \CPU_unit|R7_reg|Add0~22\);

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

-- Location: LCCOMB_X1_Y13_N16
\u3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~10_combout\ = (\u3|delay\(5) & (!\u3|Add0~9\)) # (!\u3|delay\(5) & ((\u3|Add0~9\) # (GND)))
-- \u3|Add0~11\ = CARRY((!\u3|Add0~9\) # (!\u3|delay\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(5),
	datad => VCC,
	cin => \u3|Add0~9\,
	combout => \u3|Add0~10_combout\,
	cout => \u3|Add0~11\);

-- Location: LCCOMB_X1_Y12_N6
\u3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~32_combout\ = (\u3|delay\(16) & (\u3|Add0~31\ $ (GND))) # (!\u3|delay\(16) & (!\u3|Add0~31\ & VCC))
-- \u3|Add0~33\ = CARRY((\u3|delay\(16) & !\u3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(16),
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
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(24),
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

-- Location: LCCOMB_X44_Y14_N20
\CPU_unit|uut|Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~10_combout\ = (\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6)))) # (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|IR_reg|q\(7) & ((!\CPU_unit|uut|step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux22~10_combout\);

-- Location: LCCOMB_X44_Y14_N6
\CPU_unit|uut|Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~13_combout\ = (!\CPU_unit|uut|step\(2) & \CPU_unit|uut|Mux22~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|uut|Mux22~12_combout\,
	combout => \CPU_unit|uut|Mux22~13_combout\);

-- Location: LCFF_X44_Y14_N15
\CPU_unit|IR_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~7_combout\,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(1));

-- Location: LCFF_X43_Y10_N13
\CPU_unit|R6_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(0));

-- Location: LCFF_X40_Y12_N13
\memoey|memory_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(1));

-- Location: LCFF_X43_Y11_N11
\memoey|memory_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(5));

-- Location: LCFF_X42_Y12_N17
\memoey|memory_rtl_0_bypass[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(12));

-- Location: LCFF_X43_Y10_N25
\CPU_unit|R6_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[1]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(1));

-- Location: LCFF_X42_Y12_N11
\memoey|memory_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(13));

-- Location: LCCOMB_X42_Y13_N0
\memoey|memory~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~4_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(13))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(13),
	datab => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a1\,
	combout => \memoey|memory~4_combout\);

-- Location: LCFF_X43_Y10_N15
\CPU_unit|R6_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[2]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(2));

-- Location: LCCOMB_X43_Y11_N6
\memoey|memory~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~6_combout\ = (\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(17))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory_rtl_0_bypass\(17),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \memoey|memory~combout\,
	combout => \memoey|memory~6_combout\);

-- Location: LCFF_X43_Y10_N29
\CPU_unit|R6_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(4));

-- Location: LCFF_X43_Y10_N3
\CPU_unit|R6_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[5]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(5));

-- Location: LCFF_X42_Y12_N3
\memoey|memory_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(21));

-- Location: LCFF_X43_Y10_N17
\CPU_unit|R6_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R6_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(6));

-- Location: LCFF_X43_Y10_N23
\CPU_unit|R6_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(7));

-- Location: LCFF_X40_Y12_N25
\CPU_unit|ADDR_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(5));

-- Location: LCCOMB_X40_Y12_N24
\LED|memory[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][0]~1_combout\ = (!\CPU_unit|ADDR_reg|q\(4) & (!\CPU_unit|ADDR_reg|q\(3) & (!\CPU_unit|ADDR_reg|q\(5) & !\CPU_unit|ADDR_reg|q\(2))))

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
	combout => \LED|memory[0][0]~1_combout\);

-- Location: LCCOMB_X45_Y14_N16
\CPU_unit|uut|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Add0~0_combout\ = \CPU_unit|uut|step\(2) $ (((\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Add0~0_combout\);

-- Location: LCCOMB_X44_Y14_N14
\CPU_unit|IR_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~7_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((\memoey|memory_rtl_0_bypass\(13)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0|auto_generated|ram_block1a1\,
	datab => \memoey|memory_rtl_0_bypass\(13),
	datac => \SW~combout\(1),
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~7_combout\);

-- Location: LCCOMB_X45_Y13_N20
\CPU_unit|R7_reg|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~2_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux8~6_combout\ & \CPU_unit|Mux_unit|Mux3~7_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux28~1_combout\,
	datab => \CPU_unit|R7_reg|Add0~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux8~6_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~7_combout\,
	combout => \CPU_unit|R7_reg|Add0~2_combout\);

-- Location: LCCOMB_X40_Y13_N10
\CPU_unit|R7_reg|q[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[0]~2_combout\ = (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(0) & ((!\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6))))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6) & ((!\CPU_unit|IR_reg|q\(8)) # 
-- (!\CPU_unit|uut|step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|R7_reg|q[0]~2_combout\);

-- Location: LCCOMB_X43_Y13_N24
\CPU_unit|addsub_unit|Add1|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datac => \CPU_unit|uut|addsub_sel~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~6_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\);

-- Location: LCCOMB_X42_Y11_N20
\CPU_unit|ADDR_reg|q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~9_combout\ = (!\SW~combout\(1) & (\CPU_unit|ADDR_reg|q\(4) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|ADDR_reg|q\(4),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~9_combout\);

-- Location: LCFF_X1_Y13_N13
\u3|delay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(3));

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

-- Location: LCCOMB_X2_Y13_N30
\u3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~1_combout\ = (!\u3|delay\(24) & (!\u3|delay\(23) & (!\u3|delay\(0) & !\u3|delay\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(24),
	datab => \u3|delay\(23),
	datac => \u3|delay\(0),
	datad => \u3|delay\(25),
	combout => \u3|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y11_N20
\CPU_unit|R7_reg|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~5_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|Mux_unit|Mux3~7_combout\ & ((\CPU_unit|Mux_unit|Mux7~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|R7_reg|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|R7_reg|Add0~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~5_combout\);

-- Location: LCFF_X43_Y12_N1
\CPU_unit|A_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(1));

-- Location: LCFF_X43_Y13_N23
\CPU_unit|A_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~5_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(2));

-- Location: LCCOMB_X44_Y11_N14
\CPU_unit|R7_reg|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~8_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~6_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~8_combout\);

-- Location: LCFF_X44_Y11_N13
\CPU_unit|A_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~6_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(3));

-- Location: LCFF_X43_Y12_N7
\CPU_unit|A_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~7_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(4));

-- Location: LCFF_X43_Y12_N17
\CPU_unit|A_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~8_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(5));

-- Location: LCFF_X43_Y12_N9
\CPU_unit|A_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~9_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(6));

-- Location: LCFF_X43_Y12_N21
\CPU_unit|A_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~10_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(7));

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

-- Location: LCCOMB_X40_Y12_N12
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

-- Location: LCCOMB_X43_Y11_N10
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

-- Location: LCCOMB_X43_Y10_N12
\CPU_unit|R6_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[0]~feeder_combout\ = \CPU_unit|R2_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~1_combout\,
	combout => \CPU_unit|R6_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y10_N24
\CPU_unit|R6_reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[1]~feeder_combout\ = \CPU_unit|R2_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~4_combout\,
	combout => \CPU_unit|R6_reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X43_Y10_N14
\CPU_unit|R6_reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[2]~feeder_combout\ = \CPU_unit|R2_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~5_combout\,
	combout => \CPU_unit|R6_reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X43_Y10_N2
\CPU_unit|R6_reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[5]~feeder_combout\ = \CPU_unit|R2_reg|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~8_combout\,
	combout => \CPU_unit|R6_reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X43_Y10_N16
\CPU_unit|R6_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[6]~feeder_combout\ = \CPU_unit|R2_reg|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~9_combout\,
	combout => \CPU_unit|R6_reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N10
\memoey|memory_rtl_0_bypass[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[13]~feeder_combout\ = \CPU_unit|Dout_reg|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(1),
	combout => \memoey|memory_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N2
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

-- Location: LCCOMB_X42_Y12_N16
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

-- Location: LCCOMB_X1_Y13_N4
\u3|delay~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~5_combout\ = (\u3|Add0~10_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~10_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~7_combout\,
	combout => \u3|delay~5_combout\);

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

-- Location: LCFF_X1_Y13_N5
\u3|delay[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~5_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(5));

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

-- Location: LCFF_X1_Y13_N15
\u3|delay[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~8_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(4));

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

-- Location: LCFF_X1_Y13_N19
\u3|delay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~12_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(6));

-- Location: LCCOMB_X1_Y13_N20
\u3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~14_combout\ = (\u3|delay\(7) & (!\u3|Add0~13\)) # (!\u3|delay\(7) & ((\u3|Add0~13\) # (GND)))
-- \u3|Add0~15\ = CARRY((!\u3|Add0~13\) # (!\u3|delay\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(7),
	datad => VCC,
	cin => \u3|Add0~13\,
	combout => \u3|Add0~14_combout\,
	cout => \u3|Add0~15\);

-- Location: LCCOMB_X2_Y13_N14
\u3|delay~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~4_combout\ = (\u3|Add0~14_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Add0~14_combout\,
	datad => \u3|Equal0~7_combout\,
	combout => \u3|delay~4_combout\);

-- Location: LCFF_X2_Y13_N15
\u3|delay[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~4_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(7));

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

-- Location: LCFF_X1_Y13_N23
\u3|delay[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~16_combout\,
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

-- Location: LCCOMB_X2_Y13_N22
\u3|delay~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~3_combout\ = (\u3|Add0~18_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|Equal0~7_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Add0~18_combout\,
	combout => \u3|delay~3_combout\);

-- Location: LCFF_X2_Y13_N23
\u3|delay[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~3_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(9));

-- Location: LCCOMB_X2_Y13_N18
\u3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~6_combout\ = (\u3|delay\(16) & (\u3|delay\(9) & (\u3|delay\(15) & \u3|delay\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(16),
	datab => \u3|delay\(9),
	datac => \u3|delay\(15),
	datad => \u3|delay\(10),
	combout => \u3|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y13_N28
\u3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~7_combout\ = (\u3|delay\(5) & (\u3|delay\(7) & \u3|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(5),
	datac => \u3|delay\(7),
	datad => \u3|Equal0~6_combout\,
	combout => \u3|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y12_N30
\u3|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~0_combout\ = (\u3|Add0~32_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~32_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|delay~0_combout\);

-- Location: LCFF_X1_Y12_N31
\u3|delay[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~0_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(16));

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

-- Location: LCCOMB_X1_Y12_N12
\u3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~38_combout\ = (\u3|delay\(19) & (!\u3|Add0~37\)) # (!\u3|delay\(19) & ((\u3|Add0~37\) # (GND)))
-- \u3|Add0~39\ = CARRY((!\u3|Add0~37\) # (!\u3|delay\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(19),
	datad => VCC,
	cin => \u3|Add0~37\,
	combout => \u3|Add0~38_combout\,
	cout => \u3|Add0~39\);

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

-- Location: LCFF_X1_Y12_N19
\u3|delay[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~44_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(22));

-- Location: LCFF_X1_Y12_N17
\u3|delay[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~42_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(21));

-- Location: LCFF_X1_Y12_N13
\u3|delay[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~38_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(19));

-- Location: LCCOMB_X2_Y12_N0
\u3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~2_combout\ = (!\u3|delay\(20) & (!\u3|delay\(22) & (!\u3|delay\(21) & !\u3|delay\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(20),
	datab => \u3|delay\(22),
	datac => \u3|delay\(21),
	datad => \u3|delay\(19),
	combout => \u3|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y13_N20
\u3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~4_combout\ = (!\u3|delay\(6) & (!\u3|delay\(11) & (!\u3|delay\(12) & !\u3|delay\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(6),
	datab => \u3|delay\(11),
	datac => \u3|delay\(12),
	datad => \u3|delay\(8),
	combout => \u3|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y12_N28
\u3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~3_combout\ = (!\u3|delay\(18) & (!\u3|delay\(13) & (!\u3|delay\(17) & !\u3|delay\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(18),
	datab => \u3|delay\(13),
	datac => \u3|delay\(17),
	datad => \u3|delay\(14),
	combout => \u3|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y13_N10
\u3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~5_combout\ = (\u3|Equal0~1_combout\ & (\u3|Equal0~2_combout\ & (\u3|Equal0~4_combout\ & \u3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~1_combout\,
	datab => \u3|Equal0~2_combout\,
	datac => \u3|Equal0~4_combout\,
	datad => \u3|Equal0~3_combout\,
	combout => \u3|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y13_N0
\u3|delay~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~6_combout\ = (\u3|Add0~0_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~0_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~7_combout\,
	combout => \u3|delay~6_combout\);

-- Location: LCFF_X1_Y13_N1
\u3|delay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~6_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(0));

-- Location: LCFF_X1_Y13_N9
\u3|delay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(1));

-- Location: LCFF_X1_Y13_N11
\u3|delay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(2));

-- Location: LCCOMB_X1_Y13_N2
\u3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = (!\u3|delay\(3) & (!\u3|delay\(1) & (!\u3|delay\(4) & !\u3|delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(3),
	datab => \u3|delay\(1),
	datac => \u3|delay\(4),
	datad => \u3|delay\(2),
	combout => \u3|Equal0~0_combout\);

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

-- Location: LCCOMB_X2_Y13_N12
\u3|delay~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~2_combout\ = (\u3|Add0~20_combout\ & (((!\u3|Equal0~7_combout\) # (!\u3|Equal0~0_combout\)) # (!\u3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~5_combout\,
	datab => \u3|Equal0~0_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Add0~20_combout\,
	combout => \u3|delay~2_combout\);

-- Location: LCFF_X2_Y13_N13
\u3|delay[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~2_combout\,
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

-- Location: LCCOMB_X1_Y12_N2
\u3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~28_combout\ = (\u3|delay\(14) & (\u3|Add0~27\ $ (GND))) # (!\u3|delay\(14) & (!\u3|Add0~27\ & VCC))
-- \u3|Add0~29\ = CARRY((\u3|delay\(14) & !\u3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(14),
	datad => VCC,
	cin => \u3|Add0~27\,
	combout => \u3|Add0~28_combout\,
	cout => \u3|Add0~29\);

-- Location: LCFF_X1_Y12_N3
\u3|delay[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|Add0~28_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(14));

-- Location: LCCOMB_X1_Y12_N26
\u3|delay~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|delay~1_combout\ = (\u3|Add0~30_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~7_combout\)) # (!\u3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|Add0~30_combout\,
	datac => \u3|Equal0~7_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|delay~1_combout\);

-- Location: LCFF_X1_Y12_N27
\u3|delay[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \u3|delay~1_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|delay\(15));

-- Location: LCCOMB_X2_Y13_N26
\u3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~0_combout\ = (\u3|delay\(10)) # ((\u3|delay\(15)) # ((\u3|delay\(16)) # (\u3|delay\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|delay\(10),
	datab => \u3|delay\(15),
	datac => \u3|delay\(16),
	datad => \u3|delay\(9),
	combout => \u3|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y13_N16
\u3|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|WideOr0~1_combout\ = (\u3|delay\(7)) # (\u3|delay\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|delay\(7),
	datac => \u3|delay\(5),
	combout => \u3|WideOr0~1_combout\);

-- Location: LCCOMB_X2_Y13_N24
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

-- Location: LCCOMB_X42_Y10_N0
\CPU_unit|Dout_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[0]~feeder_combout\ = \CPU_unit|R2_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~1_combout\,
	combout => \CPU_unit|Dout_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y14_N0
\CPU_unit|uut|Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux34~1_combout\ = (\CPU_unit|IR_reg|q\(8) & !\CPU_unit|IR_reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|IR_reg|q\(7),
	combout => \CPU_unit|uut|Mux34~1_combout\);

-- Location: LCCOMB_X42_Y14_N22
\CPU_unit|uut|step[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~2_combout\ = ((\CPU_unit|IR_reg|q\(6) & !\CPU_unit|IR_reg|q\(7))) # (!\CPU_unit|IR_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|IR_reg|q\(7),
	combout => \CPU_unit|uut|step[1]~2_combout\);

-- Location: LCCOMB_X42_Y13_N30
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

-- Location: LCCOMB_X43_Y14_N4
\CPU_unit|uut|Mux22~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~17_combout\ = (\CPU_unit|IR_reg|q\(7)) # (\CPU_unit|IR_reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|IR_reg|q\(7),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|Mux22~17_combout\);

-- Location: LCCOMB_X42_Y14_N12
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

-- Location: LCCOMB_X43_Y14_N6
\CPU_unit|uut|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~0_combout\ = (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(1) & (\CPU_unit|uut|Mux22~17_combout\ & \CPU_unit|uut|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|uut|Mux22~17_combout\,
	datad => \CPU_unit|uut|Mux8~0_combout\,
	combout => \CPU_unit|uut|Mux21~0_combout\);

-- Location: LCCOMB_X43_Y14_N20
\CPU_unit|uut|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~1_combout\ = (\CPU_unit|uut|Mux21~0_combout\) # ((\CPU_unit|uut|Decoder0~0_combout\ & (\CPU_unit|IR_reg|q\(8) & !\CPU_unit|uut|Mux22~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Decoder0~0_combout\,
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|Mux22~17_combout\,
	datad => \CPU_unit|uut|Mux21~0_combout\,
	combout => \CPU_unit|uut|Mux21~1_combout\);

-- Location: LCCOMB_X43_Y12_N0
\CPU_unit|Mux_unit|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~7_combout\ = ((!\CPU_unit|uut|Mux22~18_combout\ & !\CPU_unit|uut|Mux23~1_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~18_combout\,
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datad => \CPU_unit|uut|Mux21~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~7_combout\);

-- Location: LCCOMB_X42_Y14_N26
\CPU_unit|uut|addsub_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|addsub_sel~0_combout\ = (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(8) & \CPU_unit|uut|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|Decoder0~0_combout\,
	combout => \CPU_unit|uut|addsub_sel~0_combout\);

-- Location: LCCOMB_X44_Y11_N12
\CPU_unit|R2_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~6_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|R2_reg|q~6_combout\);

-- Location: LCCOMB_X44_Y10_N24
\CPU_unit|R5_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R5_reg|q[3]~feeder_combout\ = \CPU_unit|R2_reg|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~6_combout\,
	combout => \CPU_unit|R5_reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y11_N8
\CPU_unit|ADDR_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~0_combout\ = (\CPU_unit|ADDR_reg|q\(0) & (!\SW~combout\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(0),
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~0_combout\);

-- Location: LCCOMB_X42_Y10_N22
\CPU_unit|A_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|A_reg|q[0]~feeder_combout\ = \CPU_unit|R2_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~1_combout\,
	combout => \CPU_unit|A_reg|q[0]~feeder_combout\);

-- Location: LCFF_X42_Y10_N23
\CPU_unit|A_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|A_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(0));

-- Location: LCCOMB_X43_Y13_N2
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\CPU_unit|uut|addsub_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~0_combout\,
	datad => VCC,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X43_Y13_N4
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\ = (\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & ((\CPU_unit|A_reg|q\(0) & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\CPU_unit|A_reg|q\(0) & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)))) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & ((\CPU_unit|A_reg|q\(0) & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\CPU_unit|A_reg|q\(0) & 
-- ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\ = CARRY((\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & (!\CPU_unit|A_reg|q\(0) & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\ & ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\) # (!\CPU_unit|A_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|addsub_unit|Add1|auto_generated|_~0_combout\,
	datab => \CPU_unit|A_reg|q\(0),
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[0]~1_cout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X44_Y14_N10
\CPU_unit|G_reg|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|G_reg|q[0]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(8) & \CPU_unit|uut|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \SW~combout\(1),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|Decoder0~0_combout\,
	combout => \CPU_unit|G_reg|q[0]~0_combout\);

-- Location: LCFF_X43_Y13_N5
\CPU_unit|G_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~2_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(0));

-- Location: LCCOMB_X45_Y14_N18
\CPU_unit|uut|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~0_combout\ = (\CPU_unit|uut|step\(0) & ((\CPU_unit|IR_reg|q\(7) & ((!\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))) # (!\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(6))))) # (!\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(7) & 
-- (!\CPU_unit|IR_reg|q\(6) & \CPU_unit|IR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux24~0_combout\);

-- Location: LCCOMB_X45_Y14_N14
\CPU_unit|uut|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~2_combout\ = (\CPU_unit|IR_reg|q\(0) & ((\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(6) & \CPU_unit|IR_reg|q\(8))) # (!\CPU_unit|uut|step\(0) & ((!\CPU_unit|IR_reg|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(0),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux24~2_combout\);

-- Location: LCCOMB_X43_Y11_N12
\CPU_unit|ADDR_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~3_combout\ = (!\SW~combout\(1) & (\CPU_unit|ADDR_reg|q\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|ADDR_reg|q\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~3_combout\);

-- Location: LCCOMB_X43_Y12_N24
\CPU_unit|R2_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~4_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|R2_reg|q~4_combout\);

-- Location: LCFF_X44_Y10_N17
\CPU_unit|R5_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(1));

-- Location: LCCOMB_X42_Y14_N14
\CPU_unit|uut|Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux34~0_combout\ = \CPU_unit|uut|step\(1) $ (((!\CPU_unit|IR_reg|q\(6) & !\CPU_unit|IR_reg|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|IR_reg|q\(6),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(7),
	combout => \CPU_unit|uut|Mux34~0_combout\);

-- Location: LCCOMB_X42_Y14_N6
\CPU_unit|uut|Mux34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux34~2_combout\ = (\CPU_unit|uut|Mux34~1_combout\ & (((\CPU_unit|uut|Decoder0~0_combout\)))) # (!\CPU_unit|uut|Mux34~1_combout\ & (\CPU_unit|uut|Mux8~0_combout\ & (\CPU_unit|uut|Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux8~0_combout\,
	datab => \CPU_unit|uut|Mux34~1_combout\,
	datac => \CPU_unit|uut|Mux34~0_combout\,
	datad => \CPU_unit|uut|Decoder0~0_combout\,
	combout => \CPU_unit|uut|Mux34~2_combout\);

-- Location: LCCOMB_X42_Y13_N12
\CPU_unit|R2_reg|q[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[1]~2_combout\ = (!\CPU_unit|IR_reg|q\(3) & (\CPU_unit|uut|Mux34~2_combout\ & ((!\CPU_unit|IR_reg|q\(6)) # (!\CPU_unit|IR_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(3),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|Mux34~2_combout\,
	combout => \CPU_unit|R2_reg|q[1]~2_combout\);

-- Location: LCCOMB_X45_Y13_N28
\CPU_unit|R4_reg|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R4_reg|q[0]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|IR_reg|q\(4) & \CPU_unit|R2_reg|q[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \CPU_unit|R2_reg|q[1]~2_combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|R4_reg|q[0]~0_combout\);

-- Location: LCFF_X44_Y10_N11
\CPU_unit|R4_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(1));

-- Location: LCCOMB_X44_Y10_N10
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

-- Location: LCCOMB_X44_Y10_N16
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

-- Location: LCCOMB_X45_Y13_N22
\CPU_unit|R0_reg|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R0_reg|q[0]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|IR_reg|q\(4) & \CPU_unit|R2_reg|q[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \CPU_unit|R2_reg|q[1]~2_combout\,
	datad => \SW~combout\(1),
	combout => \CPU_unit|R0_reg|q[0]~0_combout\);

-- Location: LCFF_X43_Y14_N3
\CPU_unit|R0_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(1));

-- Location: LCCOMB_X42_Y13_N28
\CPU_unit|uut|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux28~0_combout\ = (\CPU_unit|IR_reg|q\(3) & (\CPU_unit|uut|Mux34~2_combout\ & ((!\CPU_unit|IR_reg|q\(6)) # (!\CPU_unit|IR_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(3),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|Mux34~2_combout\,
	combout => \CPU_unit|uut|Mux28~0_combout\);

-- Location: LCCOMB_X44_Y11_N2
\CPU_unit|R1_reg|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[0]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R1_reg|q[0]~0_combout\);

-- Location: LCFF_X43_Y12_N23
\CPU_unit|R1_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(1));

-- Location: LCCOMB_X44_Y11_N28
\CPU_unit|R3_reg|q[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R3_reg|q[5]~0_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R3_reg|q[5]~0_combout\);

-- Location: LCFF_X43_Y14_N29
\CPU_unit|R3_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(1));

-- Location: LCCOMB_X43_Y14_N28
\CPU_unit|Mux_unit|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~2_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R3_reg|q\(1)) # (!\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R1_reg|q\(1) & ((\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R1_reg|q\(1),
	datac => \CPU_unit|R3_reg|q\(1),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~2_combout\);

-- Location: LCCOMB_X43_Y14_N2
\CPU_unit|Mux_unit|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~3_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|Mux_unit|Mux7~2_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux7~2_combout\ & (\CPU_unit|R2_reg|q\(1))) # (!\CPU_unit|Mux_unit|Mux7~2_combout\ & 
-- ((\CPU_unit|R0_reg|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(1),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R0_reg|q\(1),
	datad => \CPU_unit|Mux_unit|Mux7~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~3_combout\);

-- Location: LCCOMB_X43_Y13_N26
\CPU_unit|addsub_unit|Add1|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datac => \CPU_unit|uut|addsub_sel~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\);

-- Location: LCCOMB_X43_Y13_N6
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\ = ((\CPU_unit|A_reg|q\(1) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ = CARRY((\CPU_unit|A_reg|q\(1) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\))) # (!\CPU_unit|A_reg|q\(1) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(1),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[1]~3\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\);

-- Location: LCFF_X43_Y13_N7
\CPU_unit|G_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~4_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(1));

-- Location: LCCOMB_X43_Y14_N22
\CPU_unit|Mux_unit|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (((\CPU_unit|G_reg|q\(1)) # (\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|Mux_unit|Mux7~3_combout\ & ((!\CPU_unit|Mux_unit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|Mux_unit|Mux7~3_combout\,
	datac => \CPU_unit|G_reg|q\(1),
	datad => \CPU_unit|Mux_unit|Mux3~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~4_combout\);

-- Location: LCCOMB_X43_Y13_N0
\CPU_unit|Mux_unit|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux7~5_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux7~4_combout\ & (\memoey|memory~4_combout\)) # (!\CPU_unit|Mux_unit|Mux7~4_combout\ & ((\CPU_unit|Mux_unit|Mux7~1_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (((\CPU_unit|Mux_unit|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~4_combout\,
	datab => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux7~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux7~5_combout\);

-- Location: LCCOMB_X42_Y11_N18
\CPU_unit|ADDR_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~4_combout\ = (\CPU_unit|ADDR_reg|q~3_combout\) # ((\CPU_unit|Mux_unit|Mux3~7_combout\ & (\CPU_unit|ADDR_reg|q~1_combout\ & \CPU_unit|Mux_unit|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|ADDR_reg|q~1_combout\,
	datac => \CPU_unit|ADDR_reg|q~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux7~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~4_combout\);

-- Location: LCFF_X42_Y11_N19
\CPU_unit|ADDR_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(1));

-- Location: LCCOMB_X43_Y11_N14
\CPU_unit|ADDR_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~5_combout\ = (!\SW~combout\(1) & (\CPU_unit|ADDR_reg|q\(2) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|ADDR_reg|q\(2),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~5_combout\);

-- Location: LCCOMB_X43_Y13_N22
\CPU_unit|R2_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~5_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|R2_reg|q~5_combout\);

-- Location: LCCOMB_X42_Y12_N26
\CPU_unit|Dout_reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[2]~feeder_combout\ = \CPU_unit|R2_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~5_combout\,
	combout => \CPU_unit|Dout_reg|q[2]~feeder_combout\);

-- Location: LCFF_X42_Y12_N27
\CPU_unit|Dout_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[2]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(2));

-- Location: LCFF_X42_Y11_N9
\memoey|memory_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X42_Y11_N26
\CPU_unit|ADDR_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~7_combout\ = (\CPU_unit|ADDR_reg|q\(3) & (!\SW~combout\(1) & \CPU_unit|uut|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(3),
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~7_combout\);

-- Location: LCCOMB_X42_Y11_N30
\CPU_unit|ADDR_reg|q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~8_combout\ = (\CPU_unit|ADDR_reg|q~7_combout\) # ((\CPU_unit|Mux_unit|Mux3~7_combout\ & (\CPU_unit|ADDR_reg|q~1_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|ADDR_reg|q~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux5~5_combout\,
	datad => \CPU_unit|ADDR_reg|q~7_combout\,
	combout => \CPU_unit|ADDR_reg|q~8_combout\);

-- Location: LCCOMB_X42_Y11_N4
\CPU_unit|ADDR_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q[3]~feeder_combout\ = \CPU_unit|ADDR_reg|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|ADDR_reg|q~8_combout\,
	combout => \CPU_unit|ADDR_reg|q[3]~feeder_combout\);

-- Location: LCFF_X42_Y11_N5
\CPU_unit|ADDR_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(3));

-- Location: LCCOMB_X42_Y12_N18
\CPU_unit|Dout_reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[1]~feeder_combout\ = \CPU_unit|R2_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~4_combout\,
	combout => \CPU_unit|Dout_reg|q[1]~feeder_combout\);

-- Location: LCFF_X42_Y12_N19
\CPU_unit|Dout_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[1]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(1));

-- Location: LCCOMB_X40_Y11_N20
\CPU_unit|Dout_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[3]~feeder_combout\ = \CPU_unit|R2_reg|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~6_combout\,
	combout => \CPU_unit|Dout_reg|q[3]~feeder_combout\);

-- Location: LCFF_X40_Y11_N21
\CPU_unit|Dout_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(3));

-- Location: LCCOMB_X43_Y13_N30
\CPU_unit|addsub_unit|Add1|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datac => \CPU_unit|uut|addsub_sel~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\);

-- Location: LCCOMB_X44_Y13_N20
\CPU_unit|addsub_unit|Add1|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\);

-- Location: LCCOMB_X43_Y13_N8
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\ = (\CPU_unit|A_reg|q\(2) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)))) # (!\CPU_unit|A_reg|q\(2) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\ = CARRY((\CPU_unit|A_reg|q\(2) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\)) # (!\CPU_unit|A_reg|q\(2) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(2),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[2]~5\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X43_Y13_N10
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\ = ((\CPU_unit|A_reg|q\(3) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ = CARRY((\CPU_unit|A_reg|q\(3) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\))) # (!\CPU_unit|A_reg|q\(3) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(3),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~7\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X43_Y13_N12
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\ = (\CPU_unit|A_reg|q\(4) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)))) # (!\CPU_unit|A_reg|q\(4) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\ = CARRY((\CPU_unit|A_reg|q\(4) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\)) # (!\CPU_unit|A_reg|q\(4) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(4),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~9\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\);

-- Location: LCFF_X43_Y13_N13
\CPU_unit|G_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~10_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(4));

-- Location: LCCOMB_X42_Y11_N0
\memoey|memory~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~7_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(19))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(19),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \memoey|memory~7_combout\);

-- Location: LCCOMB_X42_Y13_N10
\CPU_unit|R2_reg|q[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[1]~3_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|R2_reg|q[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \SW~combout\(1),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|R2_reg|q[1]~2_combout\,
	combout => \CPU_unit|R2_reg|q[1]~3_combout\);

-- Location: LCFF_X43_Y10_N27
\CPU_unit|R2_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(4));

-- Location: LCFF_X43_Y14_N9
\CPU_unit|R3_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(4));

-- Location: LCCOMB_X43_Y12_N28
\CPU_unit|R1_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[4]~feeder_combout\ = \CPU_unit|R2_reg|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~7_combout\,
	combout => \CPU_unit|R1_reg|q[4]~feeder_combout\);

-- Location: LCFF_X43_Y12_N29
\CPU_unit|R1_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(4));

-- Location: LCFF_X43_Y14_N27
\CPU_unit|R0_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(4));

-- Location: LCCOMB_X43_Y14_N26
\CPU_unit|Mux_unit|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~2_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|uut|Mux24~8_combout\ & (\CPU_unit|R1_reg|q\(4))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- ((\CPU_unit|R0_reg|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R1_reg|q\(4),
	datac => \CPU_unit|R0_reg|q\(4),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~2_combout\);

-- Location: LCCOMB_X43_Y14_N8
\CPU_unit|Mux_unit|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux4~2_combout\ & ((\CPU_unit|R3_reg|q\(4)))) # (!\CPU_unit|Mux_unit|Mux4~2_combout\ & (\CPU_unit|R2_reg|q\(4))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R2_reg|q\(4),
	datac => \CPU_unit|R3_reg|q\(4),
	datad => \CPU_unit|Mux_unit|Mux4~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~3_combout\);

-- Location: LCFF_X44_Y10_N3
\CPU_unit|R5_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(4));

-- Location: LCFF_X44_Y10_N1
\CPU_unit|R4_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~7_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(4));

-- Location: LCCOMB_X44_Y10_N0
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

-- Location: LCCOMB_X44_Y10_N2
\CPU_unit|Mux_unit|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux4~0_combout\ & (\CPU_unit|R7_reg|q\(4))) # (!\CPU_unit|Mux_unit|Mux4~0_combout\ & ((\CPU_unit|R5_reg|q\(4)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(4),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(4),
	datad => \CPU_unit|Mux_unit|Mux4~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~1_combout\);

-- Location: LCCOMB_X43_Y14_N10
\CPU_unit|Mux_unit|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~4_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & (((\CPU_unit|uut|Mux21~1_combout\) # (\CPU_unit|Mux_unit|Mux4~1_combout\)))) # (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|Mux_unit|Mux4~3_combout\ & 
-- (!\CPU_unit|uut|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux4~3_combout\,
	datac => \CPU_unit|uut|Mux21~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~4_combout\);

-- Location: LCCOMB_X43_Y14_N16
\CPU_unit|Mux_unit|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux4~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux4~4_combout\ & ((\memoey|memory~7_combout\))) # (!\CPU_unit|Mux_unit|Mux4~4_combout\ & (\CPU_unit|G_reg|q\(4))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(4),
	datac => \memoey|memory~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux4~5_combout\);

-- Location: LCCOMB_X43_Y12_N6
\CPU_unit|R2_reg|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~7_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|R2_reg|q~7_combout\);

-- Location: LCCOMB_X42_Y12_N8
\CPU_unit|Dout_reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[4]~feeder_combout\ = \CPU_unit|R2_reg|q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~7_combout\,
	combout => \CPU_unit|Dout_reg|q[4]~feeder_combout\);

-- Location: LCFF_X42_Y12_N9
\CPU_unit|Dout_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[4]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(4));

-- Location: LCCOMB_X44_Y12_N10
\CPU_unit|addsub_unit|Add1|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\);

-- Location: LCCOMB_X44_Y12_N8
\CPU_unit|addsub_unit|Add1|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|addsub_sel~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~6_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\);

-- Location: LCCOMB_X43_Y13_N14
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\ = ((\CPU_unit|A_reg|q\(5) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ = CARRY((\CPU_unit|A_reg|q\(5) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\))) # (!\CPU_unit|A_reg|q\(5) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(5),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[5]~11\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X43_Y13_N16
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\ = (\CPU_unit|A_reg|q\(6) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\ & VCC)) # 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)))) # (!\CPU_unit|A_reg|q\(6) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & 
-- (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & ((\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\) # (GND)))))
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\ = CARRY((\CPU_unit|A_reg|q\(6) & (!\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\)) # (!\CPU_unit|A_reg|q\(6) & 
-- ((!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(6),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~13\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\);

-- Location: LCFF_X43_Y13_N17
\CPU_unit|G_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~14_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(6));

-- Location: LCCOMB_X42_Y12_N12
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

-- Location: LCFF_X42_Y12_N13
\memoey|memory_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(23));

-- Location: LCCOMB_X44_Y12_N14
\memoey|memory~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~9_combout\ = (\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(23))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(23),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \memoey|memory~9_combout\);

-- Location: LCFF_X44_Y12_N23
\CPU_unit|R3_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(6));

-- Location: LCFF_X43_Y12_N15
\CPU_unit|R1_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(6));

-- Location: LCFF_X44_Y12_N29
\CPU_unit|R0_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(6));

-- Location: LCCOMB_X44_Y12_N28
\CPU_unit|Mux_unit|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(6)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(6) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(6),
	datac => \CPU_unit|R0_reg|q\(6),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~2_combout\);

-- Location: LCCOMB_X44_Y12_N22
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

-- Location: LCFF_X44_Y10_N31
\CPU_unit|R5_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(6));

-- Location: LCFF_X44_Y10_N29
\CPU_unit|R4_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(6));

-- Location: LCCOMB_X44_Y10_N28
\CPU_unit|Mux_unit|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(6))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(6),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(6),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y10_N30
\CPU_unit|Mux_unit|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux2~0_combout\ & (\CPU_unit|R7_reg|q\(6))) # (!\CPU_unit|Mux_unit|Mux2~0_combout\ & ((\CPU_unit|R5_reg|q\(6)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(6),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(6),
	datad => \CPU_unit|Mux_unit|Mux2~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~1_combout\);

-- Location: LCCOMB_X44_Y12_N0
\CPU_unit|Mux_unit|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux2~1_combout\))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|Mux_unit|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|Mux_unit|Mux2~3_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~4_combout\);

-- Location: LCCOMB_X44_Y12_N12
\CPU_unit|Mux_unit|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux2~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux2~4_combout\ & ((\memoey|memory~9_combout\))) # (!\CPU_unit|Mux_unit|Mux2~4_combout\ & (\CPU_unit|G_reg|q\(6))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(6),
	datac => \memoey|memory~9_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux2~5_combout\);

-- Location: LCCOMB_X43_Y12_N8
\CPU_unit|R2_reg|q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~9_combout\ = (\CPU_unit|Mux_unit|Mux2~5_combout\ & \CPU_unit|R2_reg|q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Mux_unit|Mux2~5_combout\,
	datad => \CPU_unit|R2_reg|q~0_combout\,
	combout => \CPU_unit|R2_reg|q~9_combout\);

-- Location: LCCOMB_X42_Y12_N28
\CPU_unit|Dout_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[6]~feeder_combout\ = \CPU_unit|R2_reg|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~9_combout\,
	combout => \CPU_unit|Dout_reg|q[6]~feeder_combout\);

-- Location: LCFF_X42_Y12_N29
\CPU_unit|Dout_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(6));

-- Location: LCCOMB_X44_Y12_N4
\memoey|memory~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~8_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(21))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(21),
	datac => \memoey|memory~combout\,
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \memoey|memory~8_combout\);

-- Location: LCFF_X44_Y10_N15
\CPU_unit|R5_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(5));

-- Location: LCFF_X44_Y10_N13
\CPU_unit|R4_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(5));

-- Location: LCCOMB_X44_Y10_N12
\CPU_unit|Mux_unit|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(5))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
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
	combout => \CPU_unit|Mux_unit|Mux3~1_combout\);

-- Location: LCCOMB_X44_Y10_N14
\CPU_unit|Mux_unit|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux3~1_combout\ & (\CPU_unit|R7_reg|q\(5))) # (!\CPU_unit|Mux_unit|Mux3~1_combout\ & ((\CPU_unit|R5_reg|q\(5)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(5),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(5),
	datad => \CPU_unit|Mux_unit|Mux3~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~2_combout\);

-- Location: LCFF_X43_Y13_N15
\CPU_unit|G_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[6]~12_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(5));

-- Location: LCFF_X44_Y12_N25
\CPU_unit|R3_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(5));

-- Location: LCFF_X43_Y12_N25
\CPU_unit|R1_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(5));

-- Location: LCFF_X44_Y12_N7
\CPU_unit|R0_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(5));

-- Location: LCCOMB_X44_Y12_N6
\CPU_unit|Mux_unit|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~3_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(5)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(5) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(5),
	datac => \CPU_unit|R0_reg|q\(5),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~3_combout\);

-- Location: LCCOMB_X44_Y12_N24
\CPU_unit|Mux_unit|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~4_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux3~3_combout\ & ((\CPU_unit|R3_reg|q\(5)))) # (!\CPU_unit|Mux_unit|Mux3~3_combout\ & (\CPU_unit|R2_reg|q\(5))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(5),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(5),
	datad => \CPU_unit|Mux_unit|Mux3~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~4_combout\);

-- Location: LCCOMB_X44_Y12_N18
\CPU_unit|Mux_unit|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(5)) # ((\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~4_combout\ & !\CPU_unit|Mux_unit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(5),
	datac => \CPU_unit|Mux_unit|Mux3~4_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~5_combout\);

-- Location: LCCOMB_X44_Y12_N30
\CPU_unit|Mux_unit|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~6_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux3~5_combout\ & (\memoey|memory~8_combout\)) # (!\CPU_unit|Mux_unit|Mux3~5_combout\ & ((\CPU_unit|Mux_unit|Mux3~2_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (((\CPU_unit|Mux_unit|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datab => \memoey|memory~8_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~2_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~5_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~6_combout\);

-- Location: LCCOMB_X43_Y12_N16
\CPU_unit|R2_reg|q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~8_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~6_combout\,
	combout => \CPU_unit|R2_reg|q~8_combout\);

-- Location: LCFF_X42_Y12_N7
\CPU_unit|Dout_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(5));

-- Location: LCCOMB_X43_Y11_N30
\memoey|memory~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~5_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(15))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(15),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a2\,
	combout => \memoey|memory~5_combout\);

-- Location: LCFF_X44_Y13_N15
\CPU_unit|R3_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(2));

-- Location: LCCOMB_X43_Y12_N30
\CPU_unit|R1_reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R1_reg|q[2]~feeder_combout\ = \CPU_unit|R2_reg|q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~5_combout\,
	combout => \CPU_unit|R1_reg|q[2]~feeder_combout\);

-- Location: LCFF_X43_Y12_N31
\CPU_unit|R1_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R1_reg|q[2]~feeder_combout\,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(2));

-- Location: LCFF_X44_Y13_N29
\CPU_unit|R0_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(2));

-- Location: LCCOMB_X44_Y13_N28
\CPU_unit|Mux_unit|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(2)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(2) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(2),
	datac => \CPU_unit|R0_reg|q\(2),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~2_combout\);

-- Location: LCCOMB_X44_Y13_N14
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

-- Location: LCFF_X44_Y10_N5
\CPU_unit|R5_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(2));

-- Location: LCFF_X44_Y10_N23
\CPU_unit|R4_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(2));

-- Location: LCCOMB_X44_Y10_N22
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

-- Location: LCCOMB_X44_Y10_N4
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

-- Location: LCCOMB_X44_Y13_N12
\CPU_unit|Mux_unit|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|Mux_unit|Mux3~0_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux6~1_combout\))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|Mux_unit|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux6~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~4_combout\);

-- Location: LCCOMB_X44_Y13_N6
\CPU_unit|Mux_unit|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux6~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux6~4_combout\ & ((\memoey|memory~5_combout\))) # (!\CPU_unit|Mux_unit|Mux6~4_combout\ & (\CPU_unit|G_reg|q\(2))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(2),
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \memoey|memory~5_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux6~5_combout\);

-- Location: LCCOMB_X43_Y11_N2
\CPU_unit|ADDR_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~6_combout\ = (\CPU_unit|ADDR_reg|q~5_combout\) # ((\CPU_unit|Mux_unit|Mux3~7_combout\ & (\CPU_unit|ADDR_reg|q~1_combout\ & \CPU_unit|Mux_unit|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|ADDR_reg|q~5_combout\,
	datac => \CPU_unit|ADDR_reg|q~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux6~5_combout\,
	combout => \CPU_unit|ADDR_reg|q~6_combout\);

-- Location: LCFF_X43_Y11_N19
\CPU_unit|ADDR_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(2));

-- Location: LCCOMB_X43_Y11_N4
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

-- Location: LCFF_X43_Y11_N5
\memoey|memory_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(17));

-- Location: LCCOMB_X43_Y11_N22
\CPU_unit|IR_reg|q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~8_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((!\memoey|memory_rtl_0_bypass\(17)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a3\,
	datac => \memoey|memory_rtl_0_bypass\(17),
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~8_combout\);

-- Location: LCCOMB_X40_Y13_N0
\CPU_unit|IR_reg|q[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q[2]~1_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|uut|step\(1) & (!\CPU_unit|uut|step\(2) & !\CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q[2]~1_combout\);

-- Location: LCFF_X45_Y14_N17
\CPU_unit|IR_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~8_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(3));

-- Location: LCCOMB_X45_Y14_N6
\CPU_unit|uut|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~1_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|uut|step\(1) & (\CPU_unit|IR_reg|q\(3) & !\CPU_unit|IR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|IR_reg|q\(3),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux24~1_combout\);

-- Location: LCCOMB_X45_Y14_N24
\CPU_unit|uut|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~3_combout\ = (\CPU_unit|uut|Mux24~1_combout\) # ((!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|uut|Mux24~2_combout\,
	datad => \CPU_unit|uut|Mux24~1_combout\,
	combout => \CPU_unit|uut|Mux24~3_combout\);

-- Location: LCCOMB_X45_Y14_N20
\CPU_unit|uut|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~5_combout\ = (\CPU_unit|uut|step\(0) & (((!\CPU_unit|IR_reg|q\(8))))) # (!\CPU_unit|uut|step\(0) & ((\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|IR_reg|q\(3)) # (!\CPU_unit|IR_reg|q\(8)))) # (!\CPU_unit|IR_reg|q\(6) & 
-- ((\CPU_unit|IR_reg|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(3),
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux24~5_combout\);

-- Location: LCCOMB_X45_Y14_N8
\CPU_unit|IR_reg|q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~9_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(11))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(11),
	datab => \SW~combout\(1),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~9_combout\);

-- Location: LCFF_X45_Y14_N9
\CPU_unit|IR_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~9_combout\,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(0));

-- Location: LCCOMB_X45_Y14_N12
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

-- Location: LCCOMB_X45_Y14_N10
\CPU_unit|uut|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~4_combout\ = (\CPU_unit|IR_reg|q\(0) & (\CPU_unit|uut|Decoder0~1_combout\ & ((\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(0),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|Decoder0~1_combout\,
	combout => \CPU_unit|uut|Mux24~4_combout\);

-- Location: LCCOMB_X45_Y14_N26
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

-- Location: LCCOMB_X45_Y14_N28
\CPU_unit|uut|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~7_combout\ = (\CPU_unit|IR_reg|q\(7) & (((\CPU_unit|uut|Mux24~3_combout\)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(2) & ((\CPU_unit|uut|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|Mux24~3_combout\,
	datad => \CPU_unit|uut|Mux24~6_combout\,
	combout => \CPU_unit|uut|Mux24~7_combout\);

-- Location: LCCOMB_X45_Y14_N22
\CPU_unit|uut|Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux24~8_combout\ = (\CPU_unit|uut|Mux24~7_combout\) # ((\CPU_unit|uut|step\(2) & (\CPU_unit|uut|Mux24~0_combout\ & !\CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|uut|Mux24~0_combout\,
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|Mux24~7_combout\,
	combout => \CPU_unit|uut|Mux24~8_combout\);

-- Location: LCCOMB_X43_Y11_N24
\CPU_unit|IR_reg|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~5_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(15))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(15),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~5_combout\);

-- Location: LCFF_X44_Y14_N19
\CPU_unit|IR_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(2));

-- Location: LCCOMB_X45_Y13_N30
\CPU_unit|IR_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~0_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(21))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(21),
	datab => \SW~combout\(1),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a5\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~0_combout\);

-- Location: LCFF_X45_Y13_N31
\CPU_unit|IR_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~0_combout\,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(5));

-- Location: LCCOMB_X44_Y14_N2
\CPU_unit|uut|Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~11_combout\ = (\CPU_unit|uut|Mux22~10_combout\ & (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) $ (!\CPU_unit|IR_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~10_combout\,
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|IR_reg|q\(7),
	combout => \CPU_unit|uut|Mux22~11_combout\);

-- Location: LCCOMB_X44_Y14_N28
\CPU_unit|uut|Mux22~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~16_combout\ = (!\CPU_unit|uut|Mux22~13_combout\ & (\CPU_unit|IR_reg|q\(5) & (\CPU_unit|uut|Mux22~11_combout\ & !\CPU_unit|uut|Mux22~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~13_combout\,
	datab => \CPU_unit|IR_reg|q\(5),
	datac => \CPU_unit|uut|Mux22~11_combout\,
	datad => \CPU_unit|uut|Mux22~15_combout\,
	combout => \CPU_unit|uut|Mux22~16_combout\);

-- Location: LCCOMB_X44_Y14_N18
\CPU_unit|uut|Mux22~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~18_combout\ = (\CPU_unit|uut|Mux22~9_combout\) # ((\CPU_unit|uut|Mux22~16_combout\) # ((\CPU_unit|uut|Mux22~15_combout\ & \CPU_unit|IR_reg|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~9_combout\,
	datab => \CPU_unit|uut|Mux22~15_combout\,
	datac => \CPU_unit|IR_reg|q\(2),
	datad => \CPU_unit|uut|Mux22~16_combout\,
	combout => \CPU_unit|uut|Mux22~18_combout\);

-- Location: LCCOMB_X44_Y13_N8
\CPU_unit|Mux_unit|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux3~0_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|uut|Mux24~8_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|uut|Mux22~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|uut|Mux24~8_combout\,
	datad => \CPU_unit|uut|Mux22~18_combout\,
	combout => \CPU_unit|Mux_unit|Mux3~0_combout\);

-- Location: LCFF_X44_Y13_N3
\CPU_unit|R3_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(0));

-- Location: LCFF_X43_Y12_N5
\CPU_unit|R1_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(0));

-- Location: LCFF_X44_Y13_N27
\CPU_unit|R0_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(0));

-- Location: LCCOMB_X44_Y14_N4
\CPU_unit|uut|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux23~0_combout\ = (!\CPU_unit|uut|Mux22~13_combout\ & (\CPU_unit|IR_reg|q\(4) & (\CPU_unit|uut|Mux22~11_combout\ & !\CPU_unit|uut|Mux22~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~13_combout\,
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \CPU_unit|uut|Mux22~11_combout\,
	datad => \CPU_unit|uut|Mux22~15_combout\,
	combout => \CPU_unit|uut|Mux23~0_combout\);

-- Location: LCCOMB_X43_Y14_N18
\CPU_unit|uut|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~6_combout\ = (\CPU_unit|uut|step\(0) & (((!\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(2))))) # (!\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(1) & !\CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux22~6_combout\);

-- Location: LCCOMB_X43_Y14_N24
\CPU_unit|uut|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~7_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux22~7_combout\);

-- Location: LCCOMB_X44_Y14_N24
\CPU_unit|uut|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~4_combout\ = (\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & !\CPU_unit|uut|step\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux22~4_combout\);

-- Location: LCCOMB_X44_Y14_N22
\CPU_unit|uut|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~3_combout\ = (\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(2) & (!\CPU_unit|uut|step\(1) & !\CPU_unit|uut|step\(0)))) # (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux22~3_combout\);

-- Location: LCCOMB_X44_Y14_N30
\CPU_unit|uut|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~8_combout\ = (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|IR_reg|q\(7))) # (!\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|IR_reg|q\(7) & (\CPU_unit|uut|Mux22~4_combout\)) # (!\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|uut|Mux22~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|Mux22~4_combout\,
	datad => \CPU_unit|uut|Mux22~3_combout\,
	combout => \CPU_unit|uut|Mux22~8_combout\);

-- Location: LCCOMB_X43_Y14_N30
\CPU_unit|uut|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~9_combout\ = (\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|Mux22~8_combout\ & ((\CPU_unit|uut|Mux22~7_combout\))) # (!\CPU_unit|uut|Mux22~8_combout\ & (\CPU_unit|uut|Mux22~6_combout\)))) # (!\CPU_unit|IR_reg|q\(6) & 
-- (((\CPU_unit|uut|Mux22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|uut|Mux22~6_combout\,
	datac => \CPU_unit|uut|Mux22~7_combout\,
	datad => \CPU_unit|uut|Mux22~8_combout\,
	combout => \CPU_unit|uut|Mux22~9_combout\);

-- Location: LCCOMB_X44_Y13_N0
\CPU_unit|Mux_unit|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~2_combout\ = (\CPU_unit|uut|Mux23~0_combout\) # ((\CPU_unit|uut|Mux22~9_combout\) # ((\CPU_unit|IR_reg|q\(1) & \CPU_unit|uut|Mux22~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(1),
	datab => \CPU_unit|uut|Mux22~15_combout\,
	datac => \CPU_unit|uut|Mux23~0_combout\,
	datad => \CPU_unit|uut|Mux22~9_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~2_combout\);

-- Location: LCCOMB_X44_Y13_N26
\CPU_unit|Mux_unit|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~3_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(0)) # ((\CPU_unit|Mux_unit|Mux8~2_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(0) & !\CPU_unit|Mux_unit|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(0),
	datac => \CPU_unit|R0_reg|q\(0),
	datad => \CPU_unit|Mux_unit|Mux8~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~3_combout\);

-- Location: LCCOMB_X44_Y13_N2
\CPU_unit|Mux_unit|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~4_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux8~3_combout\ & ((\CPU_unit|R3_reg|q\(0)))) # (!\CPU_unit|Mux_unit|Mux8~3_combout\ & (\CPU_unit|R2_reg|q\(0))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(0),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(0),
	datad => \CPU_unit|Mux_unit|Mux8~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~4_combout\);

-- Location: LCCOMB_X44_Y13_N4
\CPU_unit|Mux_unit|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(0)) # ((\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((!\CPU_unit|Mux_unit|Mux3~0_combout\ & \CPU_unit|Mux_unit|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(0),
	datac => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~5_combout\);

-- Location: LCFF_X44_Y10_N21
\CPU_unit|R5_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(0));

-- Location: LCFF_X44_Y10_N19
\CPU_unit|R4_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~1_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(0));

-- Location: LCCOMB_X44_Y10_N18
\CPU_unit|Mux_unit|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(0))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(0),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(0),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~0_combout\);

-- Location: LCCOMB_X44_Y10_N20
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

-- Location: LCFF_X42_Y11_N21
\memoey|memory_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(11));

-- Location: LCCOMB_X43_Y11_N28
\memoey|memory~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~3_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(11))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(11),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \memoey|memory~3_combout\);

-- Location: LCCOMB_X44_Y13_N30
\CPU_unit|Mux_unit|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux8~6_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux8~5_combout\ & ((\memoey|memory~3_combout\))) # (!\CPU_unit|Mux_unit|Mux8~5_combout\ & (\CPU_unit|Mux_unit|Mux8~1_combout\)))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|Mux_unit|Mux8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux8~5_combout\,
	datac => \CPU_unit|Mux_unit|Mux8~1_combout\,
	datad => \memoey|memory~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux8~6_combout\);

-- Location: LCCOMB_X43_Y11_N16
\CPU_unit|ADDR_reg|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~2_combout\ = (\CPU_unit|ADDR_reg|q~0_combout\) # ((\CPU_unit|ADDR_reg|q~1_combout\ & (\CPU_unit|Mux_unit|Mux8~6_combout\ & \CPU_unit|Mux_unit|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~1_combout\,
	datab => \CPU_unit|ADDR_reg|q~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux8~6_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~7_combout\,
	combout => \CPU_unit|ADDR_reg|q~2_combout\);

-- Location: LCFF_X43_Y11_N13
\CPU_unit|ADDR_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(0));

-- Location: LCFF_X42_Y11_N27
\memoey|memory_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(19));

-- Location: LCCOMB_X45_Y13_N24
\CPU_unit|IR_reg|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~6_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & ((\memoey|memory_rtl_0_bypass\(19)))) # (!\memoey|memory~combout\ & (\memoey|memory_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~combout\,
	datab => \memoey|memory_rtl_0|auto_generated|ram_block1a4\,
	datac => \memoey|memory_rtl_0_bypass\(19),
	datad => \SW~combout\(1),
	combout => \CPU_unit|IR_reg|q~6_combout\);

-- Location: LCFF_X45_Y13_N25
\CPU_unit|IR_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|IR_reg|q~6_combout\,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(4));

-- Location: LCCOMB_X44_Y11_N26
\CPU_unit|R5_reg|q[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R5_reg|q[2]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (!\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datac => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R5_reg|q[2]~0_combout\);

-- Location: LCFF_X44_Y10_N25
\CPU_unit|R5_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R5_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(3));

-- Location: LCFF_X45_Y11_N9
\CPU_unit|R4_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(3));

-- Location: LCCOMB_X42_Y13_N16
\CPU_unit|R6_reg|q[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R6_reg|q[2]~2_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|R2_reg|q[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \SW~combout\(1),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|R2_reg|q[1]~2_combout\,
	combout => \CPU_unit|R6_reg|q[2]~2_combout\);

-- Location: LCFF_X43_Y11_N21
\CPU_unit|R6_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(3));

-- Location: LCCOMB_X43_Y11_N20
\CPU_unit|Mux_unit|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~0_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|R6_reg|q\(3)) # (\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R4_reg|q\(3) & ((!\CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R4_reg|q\(3),
	datac => \CPU_unit|R6_reg|q\(3),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y11_N26
\CPU_unit|Mux_unit|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~1_combout\ = (\CPU_unit|Mux_unit|Mux5~0_combout\ & ((\CPU_unit|R7_reg|q\(3)) # ((!\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|Mux_unit|Mux5~0_combout\ & (((\CPU_unit|R5_reg|q\(3) & \CPU_unit|uut|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(3),
	datab => \CPU_unit|R5_reg|q\(3),
	datac => \CPU_unit|Mux_unit|Mux5~0_combout\,
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~1_combout\);

-- Location: LCCOMB_X43_Y10_N4
\CPU_unit|R2_reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[3]~feeder_combout\ = \CPU_unit|R2_reg|q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~6_combout\,
	combout => \CPU_unit|R2_reg|q[3]~feeder_combout\);

-- Location: LCFF_X43_Y10_N5
\CPU_unit|R2_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[3]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(3));

-- Location: LCFF_X43_Y14_N15
\CPU_unit|R3_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(3));

-- Location: LCFF_X45_Y11_N11
\CPU_unit|R1_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(3));

-- Location: LCFF_X43_Y14_N1
\CPU_unit|R0_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~6_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(3));

-- Location: LCCOMB_X43_Y14_N0
\CPU_unit|Mux_unit|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~2_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & (((\CPU_unit|uut|Mux24~8_combout\)))) # (!\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|uut|Mux24~8_combout\ & (\CPU_unit|R1_reg|q\(3))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- ((\CPU_unit|R0_reg|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R1_reg|q\(3),
	datac => \CPU_unit|R0_reg|q\(3),
	datad => \CPU_unit|uut|Mux24~8_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~2_combout\);

-- Location: LCCOMB_X43_Y14_N14
\CPU_unit|Mux_unit|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux5~2_combout\ & ((\CPU_unit|R3_reg|q\(3)))) # (!\CPU_unit|Mux_unit|Mux5~2_combout\ & (\CPU_unit|R2_reg|q\(3))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux23~1_combout\,
	datab => \CPU_unit|R2_reg|q\(3),
	datac => \CPU_unit|R3_reg|q\(3),
	datad => \CPU_unit|Mux_unit|Mux5~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~3_combout\);

-- Location: LCCOMB_X43_Y14_N12
\CPU_unit|Mux_unit|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(3)) # ((\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((\CPU_unit|Mux_unit|Mux5~3_combout\ & !\CPU_unit|Mux_unit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(3),
	datab => \CPU_unit|uut|Mux21~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux5~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~4_combout\);

-- Location: LCCOMB_X43_Y11_N8
\CPU_unit|Mux_unit|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux5~5_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux5~4_combout\ & (\memoey|memory~6_combout\)) # (!\CPU_unit|Mux_unit|Mux5~4_combout\ & ((\CPU_unit|Mux_unit|Mux5~1_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (((\CPU_unit|Mux_unit|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory~6_combout\,
	datab => \CPU_unit|Mux_unit|Mux5~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux5~5_combout\);

-- Location: LCCOMB_X43_Y13_N28
\CPU_unit|addsub_unit|Add1|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datac => \CPU_unit|uut|addsub_sel~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~3_combout\);

-- Location: LCFF_X43_Y13_N11
\CPU_unit|G_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[4]~8_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(3));

-- Location: LCFF_X43_Y13_N9
\CPU_unit|G_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[3]~6_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(2));

-- Location: LCCOMB_X42_Y13_N8
\CPU_unit|flag_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~0_combout\ = (!\CPU_unit|G_reg|q\(1) & (!\CPU_unit|G_reg|q\(3) & (!\CPU_unit|G_reg|q\(2) & !\CPU_unit|G_reg|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(1),
	datab => \CPU_unit|G_reg|q\(3),
	datac => \CPU_unit|G_reg|q\(2),
	datad => \CPU_unit|G_reg|q\(0),
	combout => \CPU_unit|flag_reg|q~0_combout\);

-- Location: LCCOMB_X43_Y12_N18
\CPU_unit|flag_reg|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~1_combout\ = (!\CPU_unit|G_reg|q\(7) & (!\CPU_unit|G_reg|q\(6) & (!\CPU_unit|G_reg|q\(4) & !\CPU_unit|G_reg|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(7),
	datab => \CPU_unit|G_reg|q\(6),
	datac => \CPU_unit|G_reg|q\(4),
	datad => \CPU_unit|G_reg|q\(5),
	combout => \CPU_unit|flag_reg|q~1_combout\);

-- Location: LCCOMB_X42_Y13_N18
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

-- Location: LCCOMB_X42_Y14_N10
\CPU_unit|uut|en_reg[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|en_reg[15]~1_combout\ = (\CPU_unit|uut|Mux18~0_combout\ & (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux18~0_combout\,
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|Mux8~0_combout\,
	combout => \CPU_unit|uut|en_reg[15]~1_combout\);

-- Location: LCCOMB_X42_Y14_N30
\CPU_unit|flag_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|flag_reg|q~3_combout\ = (\CPU_unit|uut|en_reg[15]~1_combout\ & (!\CPU_unit|G_reg|q\(8) & (\CPU_unit|flag_reg|q~2_combout\))) # (!\CPU_unit|uut|en_reg[15]~1_combout\ & (((\CPU_unit|flag_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|G_reg|q\(8),
	datab => \CPU_unit|flag_reg|q~2_combout\,
	datac => \CPU_unit|flag_reg|q\(0),
	datad => \CPU_unit|uut|en_reg[15]~1_combout\,
	combout => \CPU_unit|flag_reg|q~3_combout\);

-- Location: LCFF_X42_Y14_N31
\CPU_unit|flag_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|flag_reg|q~3_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|flag_reg|q\(0));

-- Location: LCCOMB_X42_Y13_N20
\CPU_unit|uut|step[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~0_combout\ = ((\CPU_unit|uut|step\(0)) # ((!\CPU_unit|uut|step\(2) & !\CPU_unit|flag_reg|q\(0)))) # (!\CPU_unit|uut|step\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|flag_reg|q\(0),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|step[1]~0_combout\);

-- Location: LCCOMB_X42_Y13_N2
\CPU_unit|uut|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~0_combout\ = (!\CPU_unit|IR_reg|q\(6) & \CPU_unit|IR_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux18~0_combout\);

-- Location: LCCOMB_X42_Y13_N6
\CPU_unit|uut|step[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~1_combout\ = (\CPU_unit|uut|Mux18~0_combout\ & ((\CPU_unit|IR_reg|q\(7) & ((\CPU_unit|uut|step[1]~0_combout\))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(7),
	datab => \CPU_unit|uut|Decoder0~2_combout\,
	datac => \CPU_unit|uut|step[1]~0_combout\,
	datad => \CPU_unit|uut|Mux18~0_combout\,
	combout => \CPU_unit|uut|step[1]~1_combout\);

-- Location: LCCOMB_X42_Y14_N28
\CPU_unit|uut|step[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~3_combout\ = (\CPU_unit|uut|step\(2) & (!\CPU_unit|uut|step\(0) & (\CPU_unit|uut|Mux22~17_combout\ $ (!\CPU_unit|uut|step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~17_combout\,
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|step[1]~3_combout\);

-- Location: LCCOMB_X42_Y14_N18
\CPU_unit|uut|step[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|step[1]~4_combout\ = (\CPU_unit|uut|step[1]~1_combout\) # ((\CPU_unit|uut|step[1]~2_combout\ & !\CPU_unit|uut|step[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step[1]~2_combout\,
	datac => \CPU_unit|uut|step[1]~1_combout\,
	datad => \CPU_unit|uut|step[1]~3_combout\,
	combout => \CPU_unit|uut|step[1]~4_combout\);

-- Location: LCCOMB_X45_Y14_N4
\CPU_unit|uut|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux19~0_combout\ = (\CPU_unit|uut|step[1]~4_combout\ & (\CPU_unit|uut|step\(0) $ (\CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step\(0),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step[1]~4_combout\,
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

-- Location: LCFF_X45_Y14_N5
\CPU_unit|uut|step[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|uut|Mux19~0_combout\,
	aclr => \SW[1]~clkctrl_outclk\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|uut|step\(1));

-- Location: LCCOMB_X42_Y14_N2
\CPU_unit|uut|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~0_combout\ = (\CPU_unit|uut|step\(2)) # ((\CPU_unit|IR_reg|q\(7) & \CPU_unit|flag_reg|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(2),
	datab => \CPU_unit|IR_reg|q\(7),
	datad => \CPU_unit|flag_reg|q\(0),
	combout => \CPU_unit|uut|Mux20~0_combout\);

-- Location: LCCOMB_X42_Y14_N8
\CPU_unit|uut|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~1_combout\ = (\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|IR_reg|q\(7)) # ((\CPU_unit|uut|step\(1) & \CPU_unit|uut|Mux20~0_combout\)))) # (!\CPU_unit|IR_reg|q\(6) & (\CPU_unit|IR_reg|q\(7) & (\CPU_unit|uut|step\(1) & 
-- \CPU_unit|uut|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|Mux20~0_combout\,
	combout => \CPU_unit|uut|Mux20~1_combout\);

-- Location: LCCOMB_X45_Y14_N30
\CPU_unit|uut|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux20~2_combout\ = (!\CPU_unit|uut|step\(0) & ((\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|Mux20~1_combout\)) # (!\CPU_unit|IR_reg|q\(8) & ((!\CPU_unit|uut|step[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|Mux20~1_combout\,
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|step[1]~3_combout\,
	combout => \CPU_unit|uut|Mux20~2_combout\);

-- Location: LCFF_X45_Y14_N31
\CPU_unit|uut|step[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|uut|Mux20~2_combout\,
	aclr => \SW[1]~clkctrl_outclk\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|uut|step\(0));

-- Location: LCCOMB_X44_Y14_N8
\CPU_unit|uut|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Decoder0~0_combout\ = (\CPU_unit|uut|step\(1) & (!\CPU_unit|uut|step\(2) & !\CPU_unit|uut|step\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(1),
	datab => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Decoder0~0_combout\);

-- Location: LCCOMB_X42_Y14_N24
\CPU_unit|Dout_reg|q[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[5]~0_combout\ = (\SW~combout\(1)) # ((\CPU_unit|uut|Mux34~1_combout\ & (\CPU_unit|uut|Decoder0~0_combout\ & \CPU_unit|IR_reg|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|uut|Mux34~1_combout\,
	datac => \CPU_unit|uut|Decoder0~0_combout\,
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|Dout_reg|q[5]~0_combout\);

-- Location: LCFF_X42_Y10_N1
\CPU_unit|Dout_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(0));

-- Location: LCCOMB_X45_Y13_N26
\CPU_unit|IR_reg|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~2_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (!\memoey|memory_rtl_0_bypass\(23))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(23),
	datab => \SW~combout\(1),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a6\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~2_combout\);

-- Location: LCFF_X44_Y14_N21
\CPU_unit|IR_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~2_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(6));

-- Location: LCCOMB_X45_Y14_N0
\CPU_unit|uut|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~1_combout\ = (\CPU_unit|IR_reg|q\(8) & (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|IR_reg|q\(6) & !\CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux18~1_combout\);

-- Location: LCCOMB_X45_Y14_N2
\CPU_unit|uut|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux18~2_combout\ = (\CPU_unit|uut|step[1]~4_combout\ & (\CPU_unit|uut|Add0~0_combout\)) # (!\CPU_unit|uut|step[1]~4_combout\ & ((\CPU_unit|uut|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Add0~0_combout\,
	datab => \CPU_unit|uut|Mux18~1_combout\,
	datad => \CPU_unit|uut|step[1]~4_combout\,
	combout => \CPU_unit|uut|Mux18~2_combout\);

-- Location: LCFF_X44_Y14_N3
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

-- Location: LCCOMB_X40_Y13_N2
\CPU_unit|uut|Mux22~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~19_combout\ = (\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(1) & !\CPU_unit|IR_reg|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|uut|Mux22~19_combout\);

-- Location: LCCOMB_X40_Y13_N12
\CPU_unit|A_reg|q[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|A_reg|q[6]~2_combout\ = (\SW~combout\(1)) # ((!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & \CPU_unit|uut|Mux22~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|Mux22~19_combout\,
	combout => \CPU_unit|A_reg|q[6]~2_combout\);

-- Location: LCFF_X43_Y12_N11
\CPU_unit|A_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q~11_combout\,
	ena => \CPU_unit|A_reg|q[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|A_reg|q\(8));

-- Location: LCCOMB_X43_Y12_N26
\CPU_unit|addsub_unit|Add1|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~0_combout\,
	datab => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\);

-- Location: LCCOMB_X44_Y13_N18
\CPU_unit|addsub_unit|Add1|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ = \CPU_unit|uut|addsub_sel~0_combout\ $ (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|addsub_sel~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~5_combout\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\);

-- Location: LCCOMB_X43_Y13_N18
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\ = ((\CPU_unit|A_reg|q\(7) $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ $ (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\)))) # (GND)
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ = CARRY((\CPU_unit|A_reg|q\(7) & ((\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\) # (!\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\))) # (!\CPU_unit|A_reg|q\(7) & 
-- (\CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\ & !\CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|A_reg|q\(7),
	datab => \CPU_unit|addsub_unit|Add1|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[7]~15\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\,
	cout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X43_Y13_N20
\CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\ = \CPU_unit|A_reg|q\(8) $ (\CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\ $ (\CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|A_reg|q\(8),
	datad => \CPU_unit|addsub_unit|Add1|auto_generated|_~8_combout\,
	cin => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~17\,
	combout => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\);

-- Location: LCFF_X43_Y13_N21
\CPU_unit|G_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[9]~18_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(8));

-- Location: LCCOMB_X42_Y12_N14
\memoey|memory~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~11_combout\ = (\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(27))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoey|memory~combout\,
	datac => \memoey|memory_rtl_0_bypass\(27),
	datad => \memoey|memory_rtl_0|auto_generated|ram_block1a8\,
	combout => \memoey|memory~11_combout\);

-- Location: LCFF_X44_Y12_N17
\CPU_unit|R3_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(8));

-- Location: LCFF_X43_Y12_N27
\CPU_unit|R1_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(8));

-- Location: LCFF_X44_Y12_N27
\CPU_unit|R0_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(8));

-- Location: LCCOMB_X44_Y12_N26
\CPU_unit|Mux_unit|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(8)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(8) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(8),
	datac => \CPU_unit|R0_reg|q\(8),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~2_combout\);

-- Location: LCCOMB_X44_Y12_N16
\CPU_unit|Mux_unit|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux0~2_combout\ & ((\CPU_unit|R3_reg|q\(8)))) # (!\CPU_unit|Mux_unit|Mux0~2_combout\ & (\CPU_unit|R2_reg|q\(8))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(8),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(8),
	datad => \CPU_unit|Mux_unit|Mux0~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~3_combout\);

-- Location: LCCOMB_X44_Y11_N8
\CPU_unit|uut|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux28~1_combout\ = (\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|uut|Mux28~1_combout\);

-- Location: LCCOMB_X44_Y11_N24
\CPU_unit|R7_reg|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~23_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux1~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~21_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~23_combout\);

-- Location: LCCOMB_X40_Y13_N28
\CPU_unit|R7_reg|q[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[0]~3_combout\ = (\CPU_unit|uut|step\(0) & ((\CPU_unit|IR_reg|q\(7)) # ((\CPU_unit|IR_reg|q\(6)) # (!\CPU_unit|IR_reg|q\(8))))) # (!\CPU_unit|uut|step\(0) & (\CPU_unit|IR_reg|q\(8) & (\CPU_unit|IR_reg|q\(7) $ (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|IR_reg|q\(8),
	combout => \CPU_unit|R7_reg|q[0]~3_combout\);

-- Location: LCCOMB_X40_Y13_N14
\CPU_unit|R7_reg|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[0]~4_combout\ = (\CPU_unit|uut|step\(2) & ((!\CPU_unit|R7_reg|q[0]~3_combout\) # (!\CPU_unit|R7_reg|q[0]~2_combout\))) # (!\CPU_unit|uut|step\(2) & ((\CPU_unit|R7_reg|q[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q[0]~2_combout\,
	datab => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|R7_reg|q[0]~3_combout\,
	combout => \CPU_unit|R7_reg|q[0]~4_combout\);

-- Location: LCCOMB_X42_Y13_N26
\CPU_unit|R7_reg|q[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[0]~6_combout\ = (\SW~combout\(1)) # ((\CPU_unit|IR_reg|q\(5) & (\CPU_unit|IR_reg|q\(4) & \CPU_unit|uut|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(5),
	datab => \SW~combout\(1),
	datac => \CPU_unit|IR_reg|q\(4),
	datad => \CPU_unit|uut|Mux28~0_combout\,
	combout => \CPU_unit|R7_reg|q[0]~6_combout\);

-- Location: LCCOMB_X40_Y13_N24
\CPU_unit|R7_reg|q[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|q[0]~5_combout\ = (\CPU_unit|R7_reg|q[0]~6_combout\) # ((\CPU_unit|R7_reg|q[0]~2_combout\ & (\CPU_unit|R7_reg|q[0]~4_combout\ & !\CPU_unit|uut|step\(1))) # (!\CPU_unit|R7_reg|q[0]~2_combout\ & (!\CPU_unit|R7_reg|q[0]~4_combout\ & 
-- \CPU_unit|uut|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q[0]~2_combout\,
	datab => \CPU_unit|R7_reg|q[0]~4_combout\,
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|R7_reg|q[0]~6_combout\,
	combout => \CPU_unit|R7_reg|q[0]~5_combout\);

-- Location: LCFF_X44_Y11_N25
\CPU_unit|R7_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~23_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(7));

-- Location: LCCOMB_X44_Y11_N6
\CPU_unit|R7_reg|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~20_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux2~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~18_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux2~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~20_combout\);

-- Location: LCFF_X44_Y11_N7
\CPU_unit|R7_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~20_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(6));

-- Location: LCCOMB_X44_Y11_N18
\CPU_unit|R7_reg|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~14_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|Mux_unit|Mux3~7_combout\ & \CPU_unit|Mux_unit|Mux4~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|R7_reg|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|Add0~12_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|Mux_unit|Mux4~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~14_combout\);

-- Location: LCFF_X44_Y11_N19
\CPU_unit|R7_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~14_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(4));

-- Location: LCCOMB_X45_Y11_N18
\CPU_unit|R7_reg|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~9_combout\ = (\CPU_unit|R7_reg|q\(3) & (!\CPU_unit|R7_reg|Add0~7\)) # (!\CPU_unit|R7_reg|q\(3) & ((\CPU_unit|R7_reg|Add0~7\) # (GND)))
-- \CPU_unit|R7_reg|Add0~10\ = CARRY((!\CPU_unit|R7_reg|Add0~7\) # (!\CPU_unit|R7_reg|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(3),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~7\,
	combout => \CPU_unit|R7_reg|Add0~9_combout\,
	cout => \CPU_unit|R7_reg|Add0~10\);

-- Location: LCCOMB_X44_Y11_N4
\CPU_unit|R7_reg|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~11_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|Mux_unit|Mux3~7_combout\ & ((\CPU_unit|Mux_unit|Mux5~5_combout\)))) # (!\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|R7_reg|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|R7_reg|Add0~9_combout\,
	datac => \CPU_unit|uut|Mux28~1_combout\,
	datad => \CPU_unit|Mux_unit|Mux5~5_combout\,
	combout => \CPU_unit|R7_reg|Add0~11_combout\);

-- Location: LCFF_X44_Y11_N5
\CPU_unit|R7_reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~11_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(3));

-- Location: LCCOMB_X45_Y11_N22
\CPU_unit|R7_reg|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~15_combout\ = (\CPU_unit|R7_reg|q\(5) & (!\CPU_unit|R7_reg|Add0~13\)) # (!\CPU_unit|R7_reg|q\(5) & ((\CPU_unit|R7_reg|Add0~13\) # (GND)))
-- \CPU_unit|R7_reg|Add0~16\ = CARRY((!\CPU_unit|R7_reg|Add0~13\) # (!\CPU_unit|R7_reg|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R7_reg|q\(5),
	datad => VCC,
	cin => \CPU_unit|R7_reg|Add0~13\,
	combout => \CPU_unit|R7_reg|Add0~15_combout\,
	cout => \CPU_unit|R7_reg|Add0~16\);

-- Location: LCCOMB_X44_Y11_N16
\CPU_unit|R7_reg|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~17_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|Mux_unit|Mux3~7_combout\ & (\CPU_unit|Mux_unit|Mux3~6_combout\))) # (!\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|R7_reg|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~6_combout\,
	datad => \CPU_unit|R7_reg|Add0~15_combout\,
	combout => \CPU_unit|R7_reg|Add0~17_combout\);

-- Location: LCFF_X44_Y11_N17
\CPU_unit|R7_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~17_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(5));

-- Location: LCCOMB_X45_Y11_N28
\CPU_unit|R7_reg|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~24_combout\ = \CPU_unit|R7_reg|Add0~22\ $ (!\CPU_unit|R7_reg|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R7_reg|q\(8),
	cin => \CPU_unit|R7_reg|Add0~22\,
	combout => \CPU_unit|R7_reg|Add0~24_combout\);

-- Location: LCCOMB_X44_Y11_N10
\CPU_unit|R7_reg|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R7_reg|Add0~26_combout\ = (\CPU_unit|uut|Mux28~1_combout\ & (\CPU_unit|Mux_unit|Mux0~5_combout\ & (\CPU_unit|Mux_unit|Mux3~7_combout\))) # (!\CPU_unit|uut|Mux28~1_combout\ & (((\CPU_unit|R7_reg|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux0~5_combout\,
	datab => \CPU_unit|uut|Mux28~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux3~7_combout\,
	datad => \CPU_unit|R7_reg|Add0~24_combout\,
	combout => \CPU_unit|R7_reg|Add0~26_combout\);

-- Location: LCFF_X44_Y11_N11
\CPU_unit|R7_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R7_reg|Add0~26_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|R7_reg|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R7_reg|q\(8));

-- Location: LCFF_X45_Y12_N29
\CPU_unit|R5_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(8));

-- Location: LCFF_X43_Y11_N15
\CPU_unit|R6_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R6_reg|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R6_reg|q\(8));

-- Location: LCFF_X45_Y12_N3
\CPU_unit|R4_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(8));

-- Location: LCCOMB_X45_Y12_N2
\CPU_unit|Mux_unit|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(8))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R6_reg|q\(8),
	datac => \CPU_unit|R4_reg|q\(8),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y12_N28
\CPU_unit|Mux_unit|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux0~0_combout\ & (\CPU_unit|R7_reg|q\(8))) # (!\CPU_unit|Mux_unit|Mux0~0_combout\ & ((\CPU_unit|R5_reg|q\(8)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R7_reg|q\(8),
	datac => \CPU_unit|R5_reg|q\(8),
	datad => \CPU_unit|Mux_unit|Mux0~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~1_combout\);

-- Location: LCCOMB_X44_Y12_N2
\CPU_unit|Mux_unit|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & (\CPU_unit|Mux_unit|Mux3~0_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux0~1_combout\))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (\CPU_unit|Mux_unit|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datac => \CPU_unit|Mux_unit|Mux0~3_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~4_combout\);

-- Location: LCCOMB_X43_Y12_N12
\CPU_unit|Mux_unit|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux0~5_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|Mux_unit|Mux0~4_combout\ & ((\memoey|memory~11_combout\))) # (!\CPU_unit|Mux_unit|Mux0~4_combout\ & (\CPU_unit|G_reg|q\(8))))) # (!\CPU_unit|uut|Mux21~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(8),
	datac => \memoey|memory~11_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~4_combout\,
	combout => \CPU_unit|Mux_unit|Mux0~5_combout\);

-- Location: LCCOMB_X43_Y12_N10
\CPU_unit|R2_reg|q~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~11_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux0~5_combout\,
	combout => \CPU_unit|R2_reg|q~11_combout\);

-- Location: LCCOMB_X42_Y12_N24
\CPU_unit|Dout_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Dout_reg|q[8]~feeder_combout\ = \CPU_unit|R2_reg|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~11_combout\,
	combout => \CPU_unit|Dout_reg|q[8]~feeder_combout\);

-- Location: LCFF_X42_Y12_N25
\CPU_unit|Dout_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|Dout_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(8));

-- Location: LCFF_X42_Y12_N15
\memoey|memory_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(27));

-- Location: LCCOMB_X42_Y14_N16
\CPU_unit|IR_reg|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~3_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(27))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(27),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a8\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~3_combout\);

-- Location: LCFF_X44_Y14_N11
\CPU_unit|IR_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~3_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(8));

-- Location: LCCOMB_X40_Y13_N22
\CPU_unit|uut|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~2_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|uut|step\(1) & ((\CPU_unit|IR_reg|q\(8)) # (\CPU_unit|uut|step\(2))))) # (!\CPU_unit|uut|step\(0) & (!\CPU_unit|IR_reg|q\(8) & (\CPU_unit|uut|step\(1) & !\CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux21~2_combout\);

-- Location: LCCOMB_X42_Y13_N4
\CPU_unit|uut|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~4_combout\ = (!\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & (\CPU_unit|uut|step\(2) & \CPU_unit|uut|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|uut|step\(1),
	datac => \CPU_unit|uut|step\(2),
	datad => \CPU_unit|uut|step\(0),
	combout => \CPU_unit|uut|Mux21~4_combout\);

-- Location: LCCOMB_X40_Y13_N8
\CPU_unit|uut|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux21~3_combout\ = (\CPU_unit|uut|step\(0) & (!\CPU_unit|uut|step\(2) & (\CPU_unit|IR_reg|q\(8) $ (\CPU_unit|uut|step\(1))))) # (!\CPU_unit|uut|step\(0) & (\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|uut|step\(1) & \CPU_unit|uut|step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|step\(0),
	datab => \CPU_unit|IR_reg|q\(8),
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|uut|step\(2),
	combout => \CPU_unit|uut|Mux21~3_combout\);

-- Location: LCCOMB_X42_Y13_N22
\CPU_unit|uut|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux25~0_combout\ = (\CPU_unit|IR_reg|q\(6) & (\CPU_unit|IR_reg|q\(7))) # (!\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|IR_reg|q\(7) & ((!\CPU_unit|uut|Decoder0~2_combout\))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|uut|Mux21~3_combout\,
	datad => \CPU_unit|uut|Decoder0~2_combout\,
	combout => \CPU_unit|uut|Mux25~0_combout\);

-- Location: LCCOMB_X42_Y13_N14
\CPU_unit|uut|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux25~1_combout\ = (\CPU_unit|IR_reg|q\(6) & ((\CPU_unit|uut|Mux25~0_combout\ & ((!\CPU_unit|uut|Mux21~4_combout\))) # (!\CPU_unit|uut|Mux25~0_combout\ & (!\CPU_unit|uut|Mux21~2_combout\)))) # (!\CPU_unit|IR_reg|q\(6) & 
-- (((\CPU_unit|uut|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(6),
	datab => \CPU_unit|uut|Mux21~2_combout\,
	datac => \CPU_unit|uut|Mux21~4_combout\,
	datad => \CPU_unit|uut|Mux25~0_combout\,
	combout => \CPU_unit|uut|Mux25~1_combout\);

-- Location: LCCOMB_X43_Y11_N18
\CPU_unit|ADDR_reg|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~1_combout\ = (!\SW~combout\(1) & !\CPU_unit|uut|Mux25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q~1_combout\);

-- Location: LCCOMB_X42_Y11_N2
\CPU_unit|ADDR_reg|q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q~10_combout\ = (\CPU_unit|ADDR_reg|q~9_combout\) # ((\CPU_unit|ADDR_reg|q~1_combout\ & (\CPU_unit|Mux_unit|Mux4~5_combout\ & \CPU_unit|Mux_unit|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q~9_combout\,
	datab => \CPU_unit|ADDR_reg|q~1_combout\,
	datac => \CPU_unit|Mux_unit|Mux4~5_combout\,
	datad => \CPU_unit|Mux_unit|Mux3~7_combout\,
	combout => \CPU_unit|ADDR_reg|q~10_combout\);

-- Location: LCFF_X42_Y11_N3
\CPU_unit|ADDR_reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|ADDR_reg|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(4));

-- Location: LCFF_X42_Y12_N23
\memoey|memory_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(9));

-- Location: LCCOMB_X40_Y12_N28
\CPU_unit|ADDR_reg|q[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|ADDR_reg|q[7]~11_combout\ = (\SW~combout\(1)) # (!\CPU_unit|uut|Mux25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux25~1_combout\,
	combout => \CPU_unit|ADDR_reg|q[7]~11_combout\);

-- Location: LCFF_X40_Y12_N3
\CPU_unit|ADDR_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(7));

-- Location: LCCOMB_X42_Y14_N4
\CPU_unit|uut|en_reg[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|en_reg[14]~0_combout\ = (\CPU_unit|uut|Mux8~0_combout\ & (\CPU_unit|uut|Mux34~1_combout\ & (\CPU_unit|uut|step\(1) & \CPU_unit|IR_reg|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux8~0_combout\,
	datab => \CPU_unit|uut|Mux34~1_combout\,
	datac => \CPU_unit|uut|step\(1),
	datad => \CPU_unit|IR_reg|q\(6),
	combout => \CPU_unit|uut|en_reg[14]~0_combout\);

-- Location: LCFF_X42_Y14_N5
\CPU_unit|W_reg|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|uut|en_reg[14]~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|W_reg|q~regout\);

-- Location: LCFF_X40_Y12_N29
\CPU_unit|ADDR_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~11_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(8));

-- Location: LCCOMB_X40_Y12_N30
wr_en_mem : cycloneii_lcell_comb
-- Equation(s):
-- \wr_en_mem~combout\ = (!\CPU_unit|ADDR_reg|q\(7) & (\CPU_unit|W_reg|q~regout\ & !\CPU_unit|ADDR_reg|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|ADDR_reg|q\(7),
	datac => \CPU_unit|W_reg|q~regout\,
	datad => \CPU_unit|ADDR_reg|q\(8),
	combout => \wr_en_mem~combout\);

-- Location: LCCOMB_X40_Y12_N22
\memoey|memory_rtl_0_bypass[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory_rtl_0_bypass[0]~feeder_combout\ = \wr_en_mem~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wr_en_mem~combout\,
	combout => \memoey|memory_rtl_0_bypass[0]~feeder_combout\);

-- Location: LCFF_X40_Y12_N23
\memoey|memory_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \memoey|memory_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(0));

-- Location: LCCOMB_X42_Y12_N22
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

-- Location: LCFF_X42_Y12_N5
\memoey|memory_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(3));

-- Location: LCCOMB_X42_Y12_N4
\memoey|memory~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~0_combout\ = (\memoey|memory_rtl_0_bypass\(1) & (\CPU_unit|ADDR_reg|q\(0) & (\CPU_unit|ADDR_reg|q\(1) $ (!\memoey|memory_rtl_0_bypass\(3))))) # (!\memoey|memory_rtl_0_bypass\(1) & (!\CPU_unit|ADDR_reg|q\(0) & (\CPU_unit|ADDR_reg|q\(1) $ 
-- (!\memoey|memory_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(1),
	datab => \CPU_unit|ADDR_reg|q\(1),
	datac => \memoey|memory_rtl_0_bypass\(3),
	datad => \CPU_unit|ADDR_reg|q\(0),
	combout => \memoey|memory~0_combout\);

-- Location: LCFF_X43_Y11_N1
\memoey|memory_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|ADDR_reg|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(7));

-- Location: LCCOMB_X43_Y11_N0
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

-- Location: LCCOMB_X42_Y12_N0
\memoey|memory\ : cycloneii_lcell_comb
-- Equation(s):
-- \memoey|memory~combout\ = ((\memoey|memory~2_combout\ & (\memoey|memory~0_combout\ & \memoey|memory~1_combout\))) # (!\memoey|memory_rtl_0_bypass\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoey|memory_rtl_0_bypass\(12),
	datab => \memoey|memory~2_combout\,
	datac => \memoey|memory~0_combout\,
	datad => \memoey|memory~1_combout\,
	combout => \memoey|memory~combout\);

-- Location: LCCOMB_X42_Y13_N24
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

-- Location: LCFF_X43_Y13_N19
\CPU_unit|G_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|addsub_unit|Add1|auto_generated|result_int[8]~16_combout\,
	sclr => \SW~combout\(1),
	ena => \CPU_unit|G_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|G_reg|q\(7));

-- Location: LCFF_X44_Y13_N11
\CPU_unit|R3_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R3_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R3_reg|q\(7));

-- Location: LCFF_X43_Y12_N3
\CPU_unit|R1_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R1_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R1_reg|q\(7));

-- Location: LCFF_X44_Y13_N17
\CPU_unit|R0_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R0_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R0_reg|q\(7));

-- Location: LCCOMB_X44_Y13_N16
\CPU_unit|Mux_unit|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~2_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|R1_reg|q\(7)) # ((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|R0_reg|q\(7) & !\CPU_unit|uut|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux24~8_combout\,
	datab => \CPU_unit|R1_reg|q\(7),
	datac => \CPU_unit|R0_reg|q\(7),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~2_combout\);

-- Location: LCCOMB_X44_Y13_N10
\CPU_unit|Mux_unit|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~3_combout\ = (\CPU_unit|uut|Mux23~1_combout\ & ((\CPU_unit|Mux_unit|Mux1~2_combout\ & ((\CPU_unit|R3_reg|q\(7)))) # (!\CPU_unit|Mux_unit|Mux1~2_combout\ & (\CPU_unit|R2_reg|q\(7))))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R2_reg|q\(7),
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \CPU_unit|R3_reg|q\(7),
	datad => \CPU_unit|Mux_unit|Mux1~2_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~3_combout\);

-- Location: LCCOMB_X44_Y13_N24
\CPU_unit|Mux_unit|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~4_combout\ = (\CPU_unit|uut|Mux21~1_combout\ & ((\CPU_unit|G_reg|q\(7)) # ((\CPU_unit|Mux_unit|Mux3~0_combout\)))) # (!\CPU_unit|uut|Mux21~1_combout\ & (((!\CPU_unit|Mux_unit|Mux3~0_combout\ & \CPU_unit|Mux_unit|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux21~1_combout\,
	datab => \CPU_unit|G_reg|q\(7),
	datac => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~3_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~4_combout\);

-- Location: LCFF_X44_Y10_N7
\CPU_unit|R5_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R5_reg|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R5_reg|q\(7));

-- Location: LCFF_X44_Y10_N9
\CPU_unit|R4_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R4_reg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R4_reg|q\(7));

-- Location: LCCOMB_X44_Y10_N8
\CPU_unit|Mux_unit|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~0_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & (((\CPU_unit|uut|Mux23~1_combout\)))) # (!\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|uut|Mux23~1_combout\ & (\CPU_unit|R6_reg|q\(7))) # (!\CPU_unit|uut|Mux23~1_combout\ & 
-- ((\CPU_unit|R4_reg|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R6_reg|q\(7),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R4_reg|q\(7),
	datad => \CPU_unit|uut|Mux23~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y10_N6
\CPU_unit|Mux_unit|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~1_combout\ = (\CPU_unit|uut|Mux24~8_combout\ & ((\CPU_unit|Mux_unit|Mux1~0_combout\ & (\CPU_unit|R7_reg|q\(7))) # (!\CPU_unit|Mux_unit|Mux1~0_combout\ & ((\CPU_unit|R5_reg|q\(7)))))) # (!\CPU_unit|uut|Mux24~8_combout\ & 
-- (((\CPU_unit|Mux_unit|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|R7_reg|q\(7),
	datab => \CPU_unit|uut|Mux24~8_combout\,
	datac => \CPU_unit|R5_reg|q\(7),
	datad => \CPU_unit|Mux_unit|Mux1~0_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~1_combout\);

-- Location: LCCOMB_X44_Y13_N22
\CPU_unit|Mux_unit|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|Mux_unit|Mux1~5_combout\ = (\CPU_unit|Mux_unit|Mux3~0_combout\ & ((\CPU_unit|Mux_unit|Mux1~4_combout\ & (\memoey|memory~10_combout\)) # (!\CPU_unit|Mux_unit|Mux1~4_combout\ & ((\CPU_unit|Mux_unit|Mux1~1_combout\))))) # 
-- (!\CPU_unit|Mux_unit|Mux3~0_combout\ & (((\CPU_unit|Mux_unit|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|Mux_unit|Mux3~0_combout\,
	datab => \memoey|memory~10_combout\,
	datac => \CPU_unit|Mux_unit|Mux1~4_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~1_combout\,
	combout => \CPU_unit|Mux_unit|Mux1~5_combout\);

-- Location: LCCOMB_X43_Y12_N20
\CPU_unit|R2_reg|q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~10_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux1~5_combout\,
	combout => \CPU_unit|R2_reg|q~10_combout\);

-- Location: LCFF_X42_Y12_N21
\CPU_unit|Dout_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|Dout_reg|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|Dout_reg|q\(7));

-- Location: LCFF_X42_Y12_N31
\memoey|memory_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|Dout_reg|q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memoey|memory_rtl_0_bypass\(25));

-- Location: LCCOMB_X42_Y14_N20
\CPU_unit|IR_reg|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|IR_reg|q~4_combout\ = (!\SW~combout\(1) & ((\memoey|memory~combout\ & (\memoey|memory_rtl_0_bypass\(25))) # (!\memoey|memory~combout\ & ((\memoey|memory_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \memoey|memory_rtl_0_bypass\(25),
	datac => \memoey|memory_rtl_0|auto_generated|ram_block1a7\,
	datad => \memoey|memory~combout\,
	combout => \CPU_unit|IR_reg|q~4_combout\);

-- Location: LCFF_X44_Y14_N9
\CPU_unit|IR_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|IR_reg|q~4_combout\,
	sload => VCC,
	ena => \CPU_unit|IR_reg|q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|IR_reg|q\(7));

-- Location: LCCOMB_X44_Y14_N12
\CPU_unit|uut|Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~12_combout\ = (\CPU_unit|IR_reg|q\(7) & (\CPU_unit|IR_reg|q\(8) & (!\CPU_unit|IR_reg|q\(6) & \CPU_unit|uut|step\(1)))) # (!\CPU_unit|IR_reg|q\(7) & (!\CPU_unit|uut|step\(1) & ((\CPU_unit|IR_reg|q\(8)) # (!\CPU_unit|IR_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(8),
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(6),
	datad => \CPU_unit|uut|step\(1),
	combout => \CPU_unit|uut|Mux22~12_combout\);

-- Location: LCCOMB_X44_Y14_N0
\CPU_unit|uut|Mux22~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~14_combout\ = (!\CPU_unit|uut|step\(2) & (\CPU_unit|uut|step\(0) & \CPU_unit|uut|Mux22~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|uut|step\(2),
	datac => \CPU_unit|uut|step\(0),
	datad => \CPU_unit|uut|Mux22~12_combout\,
	combout => \CPU_unit|uut|Mux22~14_combout\);

-- Location: LCCOMB_X44_Y14_N26
\CPU_unit|uut|Mux22~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux22~15_combout\ = (\CPU_unit|uut|Mux22~14_combout\) # ((\CPU_unit|uut|Decoder0~0_combout\ & (\CPU_unit|IR_reg|q\(7) & !\CPU_unit|IR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Decoder0~0_combout\,
	datab => \CPU_unit|IR_reg|q\(7),
	datac => \CPU_unit|IR_reg|q\(8),
	datad => \CPU_unit|uut|Mux22~14_combout\,
	combout => \CPU_unit|uut|Mux22~15_combout\);

-- Location: LCCOMB_X44_Y14_N16
\CPU_unit|uut|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|uut|Mux23~1_combout\ = (\CPU_unit|uut|Mux22~9_combout\) # ((\CPU_unit|uut|Mux23~0_combout\) # ((\CPU_unit|IR_reg|q\(1) & \CPU_unit|uut|Mux22~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|IR_reg|q\(1),
	datab => \CPU_unit|uut|Mux22~15_combout\,
	datac => \CPU_unit|uut|Mux22~9_combout\,
	datad => \CPU_unit|uut|Mux23~0_combout\,
	combout => \CPU_unit|uut|Mux23~1_combout\);

-- Location: LCCOMB_X44_Y12_N20
\CPU_unit|R2_reg|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~0_combout\ = (!\SW~combout\(1) & (((!\CPU_unit|uut|Mux22~18_combout\ & !\CPU_unit|uut|Mux23~1_combout\)) # (!\CPU_unit|uut|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|uut|Mux22~18_combout\,
	datab => \CPU_unit|uut|Mux23~1_combout\,
	datac => \SW~combout\(1),
	datad => \CPU_unit|uut|Mux21~1_combout\,
	combout => \CPU_unit|R2_reg|q~0_combout\);

-- Location: LCCOMB_X43_Y10_N6
\CPU_unit|R2_reg|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q~1_combout\ = (\CPU_unit|R2_reg|q~0_combout\ & \CPU_unit|Mux_unit|Mux8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_unit|R2_reg|q~0_combout\,
	datad => \CPU_unit|Mux_unit|Mux8~6_combout\,
	combout => \CPU_unit|R2_reg|q~1_combout\);

-- Location: LCCOMB_X43_Y10_N20
\CPU_unit|R2_reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[0]~feeder_combout\ = \CPU_unit|R2_reg|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~1_combout\,
	combout => \CPU_unit|R2_reg|q[0]~feeder_combout\);

-- Location: LCFF_X43_Y10_N21
\CPU_unit|R2_reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[0]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(0));

-- Location: LCCOMB_X43_Y10_N30
\CPU_unit|R2_reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[1]~feeder_combout\ = \CPU_unit|R2_reg|q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~4_combout\,
	combout => \CPU_unit|R2_reg|q[1]~feeder_combout\);

-- Location: LCFF_X43_Y10_N31
\CPU_unit|R2_reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[1]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(1));

-- Location: LCFF_X42_Y13_N1
\CPU_unit|R2_reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~5_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(2));

-- Location: LCCOMB_X43_Y10_N8
\CPU_unit|R2_reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[5]~feeder_combout\ = \CPU_unit|R2_reg|q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~8_combout\,
	combout => \CPU_unit|R2_reg|q[5]~feeder_combout\);

-- Location: LCFF_X43_Y10_N9
\CPU_unit|R2_reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[5]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(5));

-- Location: LCCOMB_X43_Y10_N18
\CPU_unit|R2_reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[6]~feeder_combout\ = \CPU_unit|R2_reg|q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~9_combout\,
	combout => \CPU_unit|R2_reg|q[6]~feeder_combout\);

-- Location: LCFF_X43_Y10_N19
\CPU_unit|R2_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[6]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(6));

-- Location: LCFF_X43_Y10_N1
\CPU_unit|R2_reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~10_combout\,
	sload => VCC,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(7));

-- Location: LCCOMB_X43_Y10_N10
\CPU_unit|R2_reg|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CPU_unit|R2_reg|q[8]~feeder_combout\ = \CPU_unit|R2_reg|q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|R2_reg|q~11_combout\,
	combout => \CPU_unit|R2_reg|q[8]~feeder_combout\);

-- Location: LCFF_X43_Y10_N11
\CPU_unit|R2_reg|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \CPU_unit|R2_reg|q[8]~feeder_combout\,
	ena => \CPU_unit|R2_reg|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|R2_reg|q\(8));

-- Location: LCCOMB_X42_Y11_N12
\LED|memory[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][0]~3_combout\ = !\CPU_unit|Dout_reg|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q\(0),
	combout => \LED|memory[0][0]~3_combout\);

-- Location: LCFF_X40_Y12_N17
\CPU_unit|ADDR_reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	sdata => \CPU_unit|R2_reg|q~9_combout\,
	sload => VCC,
	ena => \CPU_unit|ADDR_reg|q[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CPU_unit|ADDR_reg|q\(6));

-- Location: LCCOMB_X40_Y12_N26
\LED|memory[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][0]~0_combout\ = (!\CPU_unit|ADDR_reg|q\(0) & (!\CPU_unit|ADDR_reg|q\(1) & (\CPU_unit|W_reg|q~regout\ & !\CPU_unit|ADDR_reg|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_unit|ADDR_reg|q\(0),
	datab => \CPU_unit|ADDR_reg|q\(1),
	datac => \CPU_unit|W_reg|q~regout\,
	datad => \CPU_unit|ADDR_reg|q\(8),
	combout => \LED|memory[0][0]~0_combout\);

-- Location: LCCOMB_X40_Y12_N16
\LED|memory[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][0]~2_combout\ = (\LED|memory[0][0]~1_combout\ & (\CPU_unit|ADDR_reg|q\(7) & (!\CPU_unit|ADDR_reg|q\(6) & \LED|memory[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED|memory[0][0]~1_combout\,
	datab => \CPU_unit|ADDR_reg|q\(7),
	datac => \CPU_unit|ADDR_reg|q\(6),
	datad => \LED|memory[0][0]~0_combout\,
	combout => \LED|memory[0][0]~2_combout\);

-- Location: LCFF_X42_Y11_N13
\LED|memory[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][0]~3_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][0]~regout\);

-- Location: LCCOMB_X42_Y11_N10
\LED|memory[0][1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][1]~4_combout\ = !\CPU_unit|Dout_reg|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(1),
	combout => \LED|memory[0][1]~4_combout\);

-- Location: LCFF_X42_Y11_N11
\LED|memory[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][1]~4_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][1]~regout\);

-- Location: LCCOMB_X42_Y11_N28
\LED|memory[0][2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][2]~5_combout\ = !\CPU_unit|Dout_reg|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q\(2),
	combout => \LED|memory[0][2]~5_combout\);

-- Location: LCFF_X42_Y11_N29
\LED|memory[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][2]~5_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][2]~regout\);

-- Location: LCCOMB_X42_Y11_N22
\LED|memory[0][3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][3]~6_combout\ = !\CPU_unit|Dout_reg|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(3),
	combout => \LED|memory[0][3]~6_combout\);

-- Location: LCFF_X42_Y11_N23
\LED|memory[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][3]~6_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][3]~regout\);

-- Location: LCCOMB_X42_Y11_N16
\LED|memory[0][4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][4]~7_combout\ = !\CPU_unit|Dout_reg|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q\(4),
	combout => \LED|memory[0][4]~7_combout\);

-- Location: LCFF_X42_Y11_N17
\LED|memory[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][4]~7_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][4]~regout\);

-- Location: LCCOMB_X42_Y11_N6
\LED|memory[0][5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][5]~8_combout\ = !\CPU_unit|Dout_reg|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_unit|Dout_reg|q\(5),
	combout => \LED|memory[0][5]~8_combout\);

-- Location: LCFF_X42_Y11_N7
\LED|memory[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][5]~8_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][5]~regout\);

-- Location: LCCOMB_X42_Y11_N24
\LED|memory[0][6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][6]~9_combout\ = !\CPU_unit|Dout_reg|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q\(6),
	combout => \LED|memory[0][6]~9_combout\);

-- Location: LCFF_X42_Y11_N25
\LED|memory[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][6]~9_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][6]~regout\);

-- Location: LCCOMB_X42_Y11_N14
\LED|memory[0][7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|memory[0][7]~10_combout\ = !\CPU_unit|Dout_reg|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_unit|Dout_reg|q\(7),
	combout => \LED|memory[0][7]~10_combout\);

-- Location: LCFF_X42_Y11_N15
\LED|memory[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u3|WideOr0~clkctrl_outclk\,
	datain => \LED|memory[0][7]~10_combout\,
	ena => \LED|memory[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|memory[0][7]~regout\);

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

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
	datain => \CPU_unit|R2_reg|q\(0),
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
	datain => \CPU_unit|R2_reg|q\(1),
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
	datain => \CPU_unit|R2_reg|q\(2),
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
	datain => \CPU_unit|R2_reg|q\(3),
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
	datain => \CPU_unit|R2_reg|q\(4),
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
	datain => \CPU_unit|R2_reg|q\(5),
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
	datain => \CPU_unit|R2_reg|q\(6),
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
	datain => \CPU_unit|R2_reg|q\(7),
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
	datain => \CPU_unit|R2_reg|q\(8),
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
	datain => \LED|ALT_INV_memory[0][1]~regout\,
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
	datain => \LED|ALT_INV_memory[0][2]~regout\,
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
	datain => \LED|ALT_INV_memory[0][3]~regout\,
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
	datain => \LED|ALT_INV_memory[0][4]~regout\,
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
	datain => \LED|ALT_INV_memory[0][5]~regout\,
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
	datain => \LED|ALT_INV_memory[0][6]~regout\,
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
	datain => \LED|ALT_INV_memory[0][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


