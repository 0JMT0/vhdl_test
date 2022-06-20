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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/07/2022 18:38:05"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock IS
    PORT (
	CLK : IN std_logic;
	Hex0 : OUT std_logic_vector(0 TO 7);
	Hex1 : OUT std_logic_vector(0 TO 7);
	Hex2 : OUT std_logic_vector(0 TO 7);
	Hex3 : OUT std_logic_vector(0 TO 7)
	);
END clock;

-- Design Ports Information
-- Hex0[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[5]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[4]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[7]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[3]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[6]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Hex0 : std_logic_vector(0 TO 7);
SIGNAL ww_Hex1 : std_logic_vector(0 TO 7);
SIGNAL ww_Hex2 : std_logic_vector(0 TO 7);
SIGNAL ww_Hex3 : std_logic_vector(0 TO 7);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Hex0[7]~output_o\ : std_logic;
SIGNAL \Hex0[6]~output_o\ : std_logic;
SIGNAL \Hex0[5]~output_o\ : std_logic;
SIGNAL \Hex0[4]~output_o\ : std_logic;
SIGNAL \Hex0[3]~output_o\ : std_logic;
SIGNAL \Hex0[2]~output_o\ : std_logic;
SIGNAL \Hex0[1]~output_o\ : std_logic;
SIGNAL \Hex0[0]~output_o\ : std_logic;
SIGNAL \Hex1[7]~output_o\ : std_logic;
SIGNAL \Hex1[6]~output_o\ : std_logic;
SIGNAL \Hex1[5]~output_o\ : std_logic;
SIGNAL \Hex1[4]~output_o\ : std_logic;
SIGNAL \Hex1[3]~output_o\ : std_logic;
SIGNAL \Hex1[2]~output_o\ : std_logic;
SIGNAL \Hex1[1]~output_o\ : std_logic;
SIGNAL \Hex1[0]~output_o\ : std_logic;
SIGNAL \Hex2[7]~output_o\ : std_logic;
SIGNAL \Hex2[6]~output_o\ : std_logic;
SIGNAL \Hex2[5]~output_o\ : std_logic;
SIGNAL \Hex2[4]~output_o\ : std_logic;
SIGNAL \Hex2[3]~output_o\ : std_logic;
SIGNAL \Hex2[2]~output_o\ : std_logic;
SIGNAL \Hex2[1]~output_o\ : std_logic;
SIGNAL \Hex2[0]~output_o\ : std_logic;
SIGNAL \Hex3[7]~output_o\ : std_logic;
SIGNAL \Hex3[6]~output_o\ : std_logic;
SIGNAL \Hex3[5]~output_o\ : std_logic;
SIGNAL \Hex3[4]~output_o\ : std_logic;
SIGNAL \Hex3[3]~output_o\ : std_logic;
SIGNAL \Hex3[2]~output_o\ : std_logic;
SIGNAL \Hex3[1]~output_o\ : std_logic;
SIGNAL \Hex3[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \digits~0_combout\ : std_logic;
SIGNAL \Ticks[0]~32_combout\ : std_logic;
SIGNAL \Ticks[0]~33\ : std_logic;
SIGNAL \Ticks[1]~34_combout\ : std_logic;
SIGNAL \Ticks[1]~35\ : std_logic;
SIGNAL \Ticks[2]~36_combout\ : std_logic;
SIGNAL \Ticks[2]~37\ : std_logic;
SIGNAL \Ticks[3]~38_combout\ : std_logic;
SIGNAL \Ticks[3]~39\ : std_logic;
SIGNAL \Ticks[4]~40_combout\ : std_logic;
SIGNAL \Ticks[4]~41\ : std_logic;
SIGNAL \Ticks[5]~42_combout\ : std_logic;
SIGNAL \Ticks[5]~43\ : std_logic;
SIGNAL \Ticks[6]~44_combout\ : std_logic;
SIGNAL \Ticks[6]~45\ : std_logic;
SIGNAL \Ticks[7]~46_combout\ : std_logic;
SIGNAL \Ticks[7]~47\ : std_logic;
SIGNAL \Ticks[8]~48_combout\ : std_logic;
SIGNAL \Ticks[8]~49\ : std_logic;
SIGNAL \Ticks[9]~50_combout\ : std_logic;
SIGNAL \Ticks[9]~51\ : std_logic;
SIGNAL \Ticks[10]~52_combout\ : std_logic;
SIGNAL \Ticks[10]~53\ : std_logic;
SIGNAL \Ticks[11]~54_combout\ : std_logic;
SIGNAL \Ticks[11]~55\ : std_logic;
SIGNAL \Ticks[12]~56_combout\ : std_logic;
SIGNAL \Ticks[12]~57\ : std_logic;
SIGNAL \Ticks[13]~58_combout\ : std_logic;
SIGNAL \Ticks[13]~59\ : std_logic;
SIGNAL \Ticks[14]~60_combout\ : std_logic;
SIGNAL \Ticks[14]~61\ : std_logic;
SIGNAL \Ticks[15]~62_combout\ : std_logic;
SIGNAL \Ticks[15]~63\ : std_logic;
SIGNAL \Ticks[16]~64_combout\ : std_logic;
SIGNAL \Ticks[16]~65\ : std_logic;
SIGNAL \Ticks[17]~66_combout\ : std_logic;
SIGNAL \Ticks[17]~67\ : std_logic;
SIGNAL \Ticks[18]~68_combout\ : std_logic;
SIGNAL \Ticks[18]~69\ : std_logic;
SIGNAL \Ticks[19]~70_combout\ : std_logic;
SIGNAL \Ticks[19]~71\ : std_logic;
SIGNAL \Ticks[20]~72_combout\ : std_logic;
SIGNAL \Ticks[20]~73\ : std_logic;
SIGNAL \Ticks[21]~74_combout\ : std_logic;
SIGNAL \Ticks[21]~75\ : std_logic;
SIGNAL \Ticks[22]~76_combout\ : std_logic;
SIGNAL \Ticks[22]~77\ : std_logic;
SIGNAL \Ticks[23]~78_combout\ : std_logic;
SIGNAL \Ticks[23]~79\ : std_logic;
SIGNAL \Ticks[24]~80_combout\ : std_logic;
SIGNAL \Ticks[24]~81\ : std_logic;
SIGNAL \Ticks[25]~82_combout\ : std_logic;
SIGNAL \Ticks[25]~83\ : std_logic;
SIGNAL \Ticks[26]~84_combout\ : std_logic;
SIGNAL \Ticks[26]~85\ : std_logic;
SIGNAL \Ticks[27]~86_combout\ : std_logic;
SIGNAL \Ticks[27]~87\ : std_logic;
SIGNAL \Ticks[28]~88_combout\ : std_logic;
SIGNAL \Ticks[28]~89\ : std_logic;
SIGNAL \Ticks[29]~90_combout\ : std_logic;
SIGNAL \Ticks[29]~91\ : std_logic;
SIGNAL \Ticks[30]~92_combout\ : std_logic;
SIGNAL \Ticks[30]~93\ : std_logic;
SIGNAL \Ticks[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \digits[0][0]~q\ : std_logic;
SIGNAL \digits~3_combout\ : std_logic;
SIGNAL \digits[0][3]~q\ : std_logic;
SIGNAL \digits~1_combout\ : std_logic;
SIGNAL \digits[0][1]~q\ : std_logic;
SIGNAL \digits~2_combout\ : std_logic;
SIGNAL \digits[0][2]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \digits~7_combout\ : std_logic;
SIGNAL \digits[3][0]~5_combout\ : std_logic;
SIGNAL \digits[1][2]~q\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \digits~8_combout\ : std_logic;
SIGNAL \digits[1][3]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \digits~4_combout\ : std_logic;
SIGNAL \digits[1][0]~q\ : std_logic;
SIGNAL \digits~6_combout\ : std_logic;
SIGNAL \digits[1][1]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \digits~11_combout\ : std_logic;
SIGNAL \digits[2][3]~10_combout\ : std_logic;
SIGNAL \digits[2][1]~q\ : std_logic;
SIGNAL \digits~12_combout\ : std_logic;
SIGNAL \digits[2][2]~q\ : std_logic;
SIGNAL \digits~9_combout\ : std_logic;
SIGNAL \digits[2][0]~q\ : std_logic;
SIGNAL \digits~13_combout\ : std_logic;
SIGNAL \digits[2][3]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \digits~19_combout\ : std_logic;
SIGNAL \digits[3][3]~15_combout\ : std_logic;
SIGNAL \digits[3][3]~16_combout\ : std_logic;
SIGNAL \digits[3][3]~17_combout\ : std_logic;
SIGNAL \digits[3][2]~q\ : std_logic;
SIGNAL \digits~14_combout\ : std_logic;
SIGNAL \digits[3][0]~q\ : std_logic;
SIGNAL \digits~18_combout\ : std_logic;
SIGNAL \digits[3][1]~q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL Ticks : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X23_Y0_N23
\Hex0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex0[7]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\Hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[6]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\Hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[5]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\Hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[4]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\Hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\Hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\Hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\Hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\Hex1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex1[7]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\Hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\Hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[5]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\Hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[4]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\Hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\Hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\Hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\Hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\Hex2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hex2[7]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\Hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[6]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\Hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[5]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\Hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[4]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\Hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\Hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\Hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[1]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\Hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Hex3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Hex3[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\Hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\Hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\Hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\Hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\Hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\Hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux22~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\Hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y16_N20
\digits~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~0_combout\ = ((\digits[0][3]~q\ & ((\digits[0][2]~q\) # (!\digits[0][1]~q\)))) # (!\digits[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][1]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][0]~q\,
	datad => \digits[0][2]~q\,
	combout => \digits~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\Ticks[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[0]~32_combout\ = Ticks(0) $ (VCC)
-- \Ticks[0]~33\ = CARRY(Ticks(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Ticks(0),
	datad => VCC,
	combout => \Ticks[0]~32_combout\,
	cout => \Ticks[0]~33\);

-- Location: FF_X31_Y16_N1
\Ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[0]~32_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(0));

-- Location: LCCOMB_X31_Y16_N2
\Ticks[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[1]~34_combout\ = (Ticks(1) & (!\Ticks[0]~33\)) # (!Ticks(1) & ((\Ticks[0]~33\) # (GND)))
-- \Ticks[1]~35\ = CARRY((!\Ticks[0]~33\) # (!Ticks(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(1),
	datad => VCC,
	cin => \Ticks[0]~33\,
	combout => \Ticks[1]~34_combout\,
	cout => \Ticks[1]~35\);

-- Location: FF_X31_Y16_N3
\Ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[1]~34_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(1));

-- Location: LCCOMB_X31_Y16_N4
\Ticks[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[2]~36_combout\ = (Ticks(2) & (\Ticks[1]~35\ $ (GND))) # (!Ticks(2) & (!\Ticks[1]~35\ & VCC))
-- \Ticks[2]~37\ = CARRY((Ticks(2) & !\Ticks[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(2),
	datad => VCC,
	cin => \Ticks[1]~35\,
	combout => \Ticks[2]~36_combout\,
	cout => \Ticks[2]~37\);

-- Location: FF_X31_Y16_N5
\Ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[2]~36_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(2));

-- Location: LCCOMB_X31_Y16_N6
\Ticks[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[3]~38_combout\ = (Ticks(3) & (!\Ticks[2]~37\)) # (!Ticks(3) & ((\Ticks[2]~37\) # (GND)))
-- \Ticks[3]~39\ = CARRY((!\Ticks[2]~37\) # (!Ticks(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(3),
	datad => VCC,
	cin => \Ticks[2]~37\,
	combout => \Ticks[3]~38_combout\,
	cout => \Ticks[3]~39\);

-- Location: FF_X31_Y16_N7
\Ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[3]~38_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(3));

-- Location: LCCOMB_X31_Y16_N8
\Ticks[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[4]~40_combout\ = (Ticks(4) & (\Ticks[3]~39\ $ (GND))) # (!Ticks(4) & (!\Ticks[3]~39\ & VCC))
-- \Ticks[4]~41\ = CARRY((Ticks(4) & !\Ticks[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(4),
	datad => VCC,
	cin => \Ticks[3]~39\,
	combout => \Ticks[4]~40_combout\,
	cout => \Ticks[4]~41\);

-- Location: FF_X31_Y16_N9
\Ticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[4]~40_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(4));

-- Location: LCCOMB_X31_Y16_N10
\Ticks[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[5]~42_combout\ = (Ticks(5) & (!\Ticks[4]~41\)) # (!Ticks(5) & ((\Ticks[4]~41\) # (GND)))
-- \Ticks[5]~43\ = CARRY((!\Ticks[4]~41\) # (!Ticks(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(5),
	datad => VCC,
	cin => \Ticks[4]~41\,
	combout => \Ticks[5]~42_combout\,
	cout => \Ticks[5]~43\);

-- Location: FF_X31_Y16_N11
\Ticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[5]~42_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(5));

-- Location: LCCOMB_X31_Y16_N12
\Ticks[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[6]~44_combout\ = (Ticks(6) & (\Ticks[5]~43\ $ (GND))) # (!Ticks(6) & (!\Ticks[5]~43\ & VCC))
-- \Ticks[6]~45\ = CARRY((Ticks(6) & !\Ticks[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(6),
	datad => VCC,
	cin => \Ticks[5]~43\,
	combout => \Ticks[6]~44_combout\,
	cout => \Ticks[6]~45\);

-- Location: FF_X31_Y16_N13
\Ticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[6]~44_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(6));

-- Location: LCCOMB_X31_Y16_N14
\Ticks[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[7]~46_combout\ = (Ticks(7) & (!\Ticks[6]~45\)) # (!Ticks(7) & ((\Ticks[6]~45\) # (GND)))
-- \Ticks[7]~47\ = CARRY((!\Ticks[6]~45\) # (!Ticks(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(7),
	datad => VCC,
	cin => \Ticks[6]~45\,
	combout => \Ticks[7]~46_combout\,
	cout => \Ticks[7]~47\);

-- Location: FF_X31_Y16_N15
\Ticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[7]~46_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(7));

-- Location: LCCOMB_X31_Y16_N16
\Ticks[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[8]~48_combout\ = (Ticks(8) & (\Ticks[7]~47\ $ (GND))) # (!Ticks(8) & (!\Ticks[7]~47\ & VCC))
-- \Ticks[8]~49\ = CARRY((Ticks(8) & !\Ticks[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(8),
	datad => VCC,
	cin => \Ticks[7]~47\,
	combout => \Ticks[8]~48_combout\,
	cout => \Ticks[8]~49\);

-- Location: FF_X31_Y16_N17
\Ticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[8]~48_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(8));

-- Location: LCCOMB_X31_Y16_N18
\Ticks[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[9]~50_combout\ = (Ticks(9) & (!\Ticks[8]~49\)) # (!Ticks(9) & ((\Ticks[8]~49\) # (GND)))
-- \Ticks[9]~51\ = CARRY((!\Ticks[8]~49\) # (!Ticks(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(9),
	datad => VCC,
	cin => \Ticks[8]~49\,
	combout => \Ticks[9]~50_combout\,
	cout => \Ticks[9]~51\);

-- Location: FF_X31_Y16_N19
\Ticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[9]~50_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(9));

-- Location: LCCOMB_X31_Y16_N20
\Ticks[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[10]~52_combout\ = (Ticks(10) & (\Ticks[9]~51\ $ (GND))) # (!Ticks(10) & (!\Ticks[9]~51\ & VCC))
-- \Ticks[10]~53\ = CARRY((Ticks(10) & !\Ticks[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(10),
	datad => VCC,
	cin => \Ticks[9]~51\,
	combout => \Ticks[10]~52_combout\,
	cout => \Ticks[10]~53\);

-- Location: FF_X31_Y16_N21
\Ticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[10]~52_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(10));

-- Location: LCCOMB_X31_Y16_N22
\Ticks[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[11]~54_combout\ = (Ticks(11) & (!\Ticks[10]~53\)) # (!Ticks(11) & ((\Ticks[10]~53\) # (GND)))
-- \Ticks[11]~55\ = CARRY((!\Ticks[10]~53\) # (!Ticks(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(11),
	datad => VCC,
	cin => \Ticks[10]~53\,
	combout => \Ticks[11]~54_combout\,
	cout => \Ticks[11]~55\);

-- Location: FF_X31_Y16_N23
\Ticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[11]~54_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(11));

-- Location: LCCOMB_X31_Y16_N24
\Ticks[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[12]~56_combout\ = (Ticks(12) & (\Ticks[11]~55\ $ (GND))) # (!Ticks(12) & (!\Ticks[11]~55\ & VCC))
-- \Ticks[12]~57\ = CARRY((Ticks(12) & !\Ticks[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(12),
	datad => VCC,
	cin => \Ticks[11]~55\,
	combout => \Ticks[12]~56_combout\,
	cout => \Ticks[12]~57\);

-- Location: FF_X31_Y16_N25
\Ticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[12]~56_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(12));

-- Location: LCCOMB_X31_Y16_N26
\Ticks[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[13]~58_combout\ = (Ticks(13) & (!\Ticks[12]~57\)) # (!Ticks(13) & ((\Ticks[12]~57\) # (GND)))
-- \Ticks[13]~59\ = CARRY((!\Ticks[12]~57\) # (!Ticks(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(13),
	datad => VCC,
	cin => \Ticks[12]~57\,
	combout => \Ticks[13]~58_combout\,
	cout => \Ticks[13]~59\);

-- Location: FF_X31_Y16_N27
\Ticks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[13]~58_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(13));

-- Location: LCCOMB_X31_Y16_N28
\Ticks[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[14]~60_combout\ = (Ticks(14) & (\Ticks[13]~59\ $ (GND))) # (!Ticks(14) & (!\Ticks[13]~59\ & VCC))
-- \Ticks[14]~61\ = CARRY((Ticks(14) & !\Ticks[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(14),
	datad => VCC,
	cin => \Ticks[13]~59\,
	combout => \Ticks[14]~60_combout\,
	cout => \Ticks[14]~61\);

-- Location: FF_X31_Y16_N29
\Ticks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[14]~60_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(14));

-- Location: LCCOMB_X31_Y16_N30
\Ticks[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[15]~62_combout\ = (Ticks(15) & (!\Ticks[14]~61\)) # (!Ticks(15) & ((\Ticks[14]~61\) # (GND)))
-- \Ticks[15]~63\ = CARRY((!\Ticks[14]~61\) # (!Ticks(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(15),
	datad => VCC,
	cin => \Ticks[14]~61\,
	combout => \Ticks[15]~62_combout\,
	cout => \Ticks[15]~63\);

-- Location: FF_X31_Y16_N31
\Ticks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[15]~62_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(15));

-- Location: LCCOMB_X31_Y15_N0
\Ticks[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[16]~64_combout\ = (Ticks(16) & (\Ticks[15]~63\ $ (GND))) # (!Ticks(16) & (!\Ticks[15]~63\ & VCC))
-- \Ticks[16]~65\ = CARRY((Ticks(16) & !\Ticks[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(16),
	datad => VCC,
	cin => \Ticks[15]~63\,
	combout => \Ticks[16]~64_combout\,
	cout => \Ticks[16]~65\);

-- Location: FF_X31_Y15_N1
\Ticks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[16]~64_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(16));

-- Location: LCCOMB_X31_Y15_N2
\Ticks[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[17]~66_combout\ = (Ticks(17) & (!\Ticks[16]~65\)) # (!Ticks(17) & ((\Ticks[16]~65\) # (GND)))
-- \Ticks[17]~67\ = CARRY((!\Ticks[16]~65\) # (!Ticks(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(17),
	datad => VCC,
	cin => \Ticks[16]~65\,
	combout => \Ticks[17]~66_combout\,
	cout => \Ticks[17]~67\);

-- Location: FF_X31_Y15_N3
\Ticks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[17]~66_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(17));

-- Location: LCCOMB_X31_Y15_N4
\Ticks[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[18]~68_combout\ = (Ticks(18) & (\Ticks[17]~67\ $ (GND))) # (!Ticks(18) & (!\Ticks[17]~67\ & VCC))
-- \Ticks[18]~69\ = CARRY((Ticks(18) & !\Ticks[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(18),
	datad => VCC,
	cin => \Ticks[17]~67\,
	combout => \Ticks[18]~68_combout\,
	cout => \Ticks[18]~69\);

-- Location: FF_X32_Y15_N9
\Ticks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Ticks[18]~68_combout\,
	sclr => \LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(18));

-- Location: LCCOMB_X31_Y15_N6
\Ticks[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[19]~70_combout\ = (Ticks(19) & (!\Ticks[18]~69\)) # (!Ticks(19) & ((\Ticks[18]~69\) # (GND)))
-- \Ticks[19]~71\ = CARRY((!\Ticks[18]~69\) # (!Ticks(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(19),
	datad => VCC,
	cin => \Ticks[18]~69\,
	combout => \Ticks[19]~70_combout\,
	cout => \Ticks[19]~71\);

-- Location: FF_X31_Y15_N7
\Ticks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[19]~70_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(19));

-- Location: LCCOMB_X31_Y15_N8
\Ticks[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[20]~72_combout\ = (Ticks(20) & (\Ticks[19]~71\ $ (GND))) # (!Ticks(20) & (!\Ticks[19]~71\ & VCC))
-- \Ticks[20]~73\ = CARRY((Ticks(20) & !\Ticks[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(20),
	datad => VCC,
	cin => \Ticks[19]~71\,
	combout => \Ticks[20]~72_combout\,
	cout => \Ticks[20]~73\);

-- Location: FF_X31_Y15_N9
\Ticks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[20]~72_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(20));

-- Location: LCCOMB_X31_Y15_N10
\Ticks[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[21]~74_combout\ = (Ticks(21) & (!\Ticks[20]~73\)) # (!Ticks(21) & ((\Ticks[20]~73\) # (GND)))
-- \Ticks[21]~75\ = CARRY((!\Ticks[20]~73\) # (!Ticks(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(21),
	datad => VCC,
	cin => \Ticks[20]~73\,
	combout => \Ticks[21]~74_combout\,
	cout => \Ticks[21]~75\);

-- Location: FF_X31_Y15_N11
\Ticks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[21]~74_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(21));

-- Location: LCCOMB_X31_Y15_N12
\Ticks[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[22]~76_combout\ = (Ticks(22) & (\Ticks[21]~75\ $ (GND))) # (!Ticks(22) & (!\Ticks[21]~75\ & VCC))
-- \Ticks[22]~77\ = CARRY((Ticks(22) & !\Ticks[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(22),
	datad => VCC,
	cin => \Ticks[21]~75\,
	combout => \Ticks[22]~76_combout\,
	cout => \Ticks[22]~77\);

-- Location: FF_X31_Y15_N13
\Ticks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[22]~76_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(22));

-- Location: LCCOMB_X31_Y15_N14
\Ticks[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[23]~78_combout\ = (Ticks(23) & (!\Ticks[22]~77\)) # (!Ticks(23) & ((\Ticks[22]~77\) # (GND)))
-- \Ticks[23]~79\ = CARRY((!\Ticks[22]~77\) # (!Ticks(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(23),
	datad => VCC,
	cin => \Ticks[22]~77\,
	combout => \Ticks[23]~78_combout\,
	cout => \Ticks[23]~79\);

-- Location: FF_X31_Y15_N15
\Ticks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[23]~78_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(23));

-- Location: LCCOMB_X31_Y15_N16
\Ticks[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[24]~80_combout\ = (Ticks(24) & (\Ticks[23]~79\ $ (GND))) # (!Ticks(24) & (!\Ticks[23]~79\ & VCC))
-- \Ticks[24]~81\ = CARRY((Ticks(24) & !\Ticks[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(24),
	datad => VCC,
	cin => \Ticks[23]~79\,
	combout => \Ticks[24]~80_combout\,
	cout => \Ticks[24]~81\);

-- Location: FF_X31_Y15_N17
\Ticks[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[24]~80_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(24));

-- Location: LCCOMB_X31_Y15_N18
\Ticks[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[25]~82_combout\ = (Ticks(25) & (!\Ticks[24]~81\)) # (!Ticks(25) & ((\Ticks[24]~81\) # (GND)))
-- \Ticks[25]~83\ = CARRY((!\Ticks[24]~81\) # (!Ticks(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(25),
	datad => VCC,
	cin => \Ticks[24]~81\,
	combout => \Ticks[25]~82_combout\,
	cout => \Ticks[25]~83\);

-- Location: FF_X31_Y15_N19
\Ticks[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[25]~82_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(25));

-- Location: LCCOMB_X31_Y15_N20
\Ticks[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[26]~84_combout\ = (Ticks(26) & (\Ticks[25]~83\ $ (GND))) # (!Ticks(26) & (!\Ticks[25]~83\ & VCC))
-- \Ticks[26]~85\ = CARRY((Ticks(26) & !\Ticks[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(26),
	datad => VCC,
	cin => \Ticks[25]~83\,
	combout => \Ticks[26]~84_combout\,
	cout => \Ticks[26]~85\);

-- Location: FF_X31_Y15_N21
\Ticks[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[26]~84_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(26));

-- Location: LCCOMB_X31_Y15_N22
\Ticks[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[27]~86_combout\ = (Ticks(27) & (!\Ticks[26]~85\)) # (!Ticks(27) & ((\Ticks[26]~85\) # (GND)))
-- \Ticks[27]~87\ = CARRY((!\Ticks[26]~85\) # (!Ticks(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(27),
	datad => VCC,
	cin => \Ticks[26]~85\,
	combout => \Ticks[27]~86_combout\,
	cout => \Ticks[27]~87\);

-- Location: FF_X31_Y15_N23
\Ticks[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[27]~86_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(27));

-- Location: LCCOMB_X31_Y15_N24
\Ticks[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[28]~88_combout\ = (Ticks(28) & (\Ticks[27]~87\ $ (GND))) # (!Ticks(28) & (!\Ticks[27]~87\ & VCC))
-- \Ticks[28]~89\ = CARRY((Ticks(28) & !\Ticks[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(28),
	datad => VCC,
	cin => \Ticks[27]~87\,
	combout => \Ticks[28]~88_combout\,
	cout => \Ticks[28]~89\);

-- Location: FF_X31_Y15_N25
\Ticks[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[28]~88_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(28));

-- Location: LCCOMB_X31_Y15_N26
\Ticks[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[29]~90_combout\ = (Ticks(29) & (!\Ticks[28]~89\)) # (!Ticks(29) & ((\Ticks[28]~89\) # (GND)))
-- \Ticks[29]~91\ = CARRY((!\Ticks[28]~89\) # (!Ticks(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(29),
	datad => VCC,
	cin => \Ticks[28]~89\,
	combout => \Ticks[29]~90_combout\,
	cout => \Ticks[29]~91\);

-- Location: FF_X31_Y15_N27
\Ticks[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[29]~90_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(29));

-- Location: LCCOMB_X31_Y15_N28
\Ticks[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[30]~92_combout\ = (Ticks(30) & (\Ticks[29]~91\ $ (GND))) # (!Ticks(30) & (!\Ticks[29]~91\ & VCC))
-- \Ticks[30]~93\ = CARRY((Ticks(30) & !\Ticks[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Ticks(30),
	datad => VCC,
	cin => \Ticks[29]~91\,
	combout => \Ticks[30]~92_combout\,
	cout => \Ticks[30]~93\);

-- Location: FF_X31_Y15_N29
\Ticks[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[30]~92_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(30));

-- Location: LCCOMB_X31_Y15_N30
\Ticks[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ticks[31]~94_combout\ = Ticks(31) $ (\Ticks[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(31),
	cin => \Ticks[30]~93\,
	combout => \Ticks[31]~94_combout\);

-- Location: FF_X31_Y15_N31
\Ticks[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Ticks[31]~94_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ticks(31));

-- Location: LCCOMB_X32_Y16_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (Ticks(16) & (Ticks(14) & (Ticks(15) & Ticks(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(16),
	datab => Ticks(14),
	datac => Ticks(15),
	datad => Ticks(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y16_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!Ticks(8) & (!Ticks(9) & (!Ticks(11) & !Ticks(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(8),
	datab => Ticks(9),
	datac => Ticks(11),
	datad => Ticks(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y16_N30
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!Ticks(1)) # (!Ticks(2))) # (!Ticks(3))) # (!Ticks(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(0),
	datab => Ticks(3),
	datac => Ticks(2),
	datad => Ticks(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y16_N20
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!Ticks(4) & (!Ticks(5) & !Ticks(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(4),
	datac => Ticks(5),
	datad => Ticks(6),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y16_N18
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (((\LessThan0~2_combout\ & \LessThan0~3_combout\)) # (!Ticks(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(7),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y16_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!Ticks(13) & ((\LessThan0~4_combout\) # (!Ticks(12))))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(13),
	datab => Ticks(12),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y15_N0
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!Ticks(23) & (!Ticks(25) & (!Ticks(24) & !Ticks(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(23),
	datab => Ticks(25),
	datac => Ticks(24),
	datad => Ticks(22),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y16_N14
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!Ticks(27) & (!Ticks(28) & (!Ticks(29) & !Ticks(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(27),
	datab => Ticks(28),
	datac => Ticks(29),
	datad => Ticks(26),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y15_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!Ticks(20) & (!Ticks(18) & (!Ticks(19) & !Ticks(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(20),
	datab => Ticks(18),
	datac => Ticks(19),
	datad => Ticks(21),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y16_N0
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!Ticks(30) & (\LessThan0~7_combout\ & (\LessThan0~8_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(30),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X32_Y16_N6
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!Ticks(31) & ((!\LessThan0~9_combout\) # (!\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Ticks(31),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X37_Y16_N21
\digits[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~0_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[0][0]~q\);

-- Location: LCCOMB_X37_Y16_N18
\digits~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~3_combout\ = (\digits[0][1]~q\ & (\digits[0][0]~q\ & (\digits[0][3]~q\ & !\digits[0][2]~q\))) # (!\digits[0][1]~q\ & (!\digits[0][0]~q\ & (!\digits[0][3]~q\ & \digits[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][1]~q\,
	datab => \digits[0][0]~q\,
	datac => \digits[0][3]~q\,
	datad => \digits[0][2]~q\,
	combout => \digits~3_combout\);

-- Location: FF_X37_Y16_N19
\digits[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~3_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[0][3]~q\);

-- Location: LCCOMB_X37_Y16_N26
\digits~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~1_combout\ = (\digits[0][3]~q\) # (\digits[0][1]~q\ $ (!\digits[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[0][3]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \digits~1_combout\);

-- Location: FF_X37_Y16_N27
\digits[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~1_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[0][1]~q\);

-- Location: LCCOMB_X37_Y16_N12
\digits~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~2_combout\ = (!\digits[0][3]~q\ & (\digits[0][2]~q\ $ (((!\digits[0][1]~q\ & !\digits[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][1]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][2]~q\,
	datad => \digits[0][0]~q\,
	combout => \digits~2_combout\);

-- Location: FF_X37_Y16_N13
\digits[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~2_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[0][2]~q\);

-- Location: LCCOMB_X37_Y16_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\digits[0][3]~q\) # ((\digits[0][2]~q\ & ((\digits[0][1]~q\) # (\digits[0][0]~q\))) # (!\digits[0][2]~q\ & (!\digits[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X37_Y16_N14
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\digits[0][3]~q\ & ((\digits[0][2]~q\ & (!\digits[0][1]~q\ & !\digits[0][0]~q\)) # (!\digits[0][2]~q\ & ((!\digits[0][0]~q\) # (!\digits[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X37_Y16_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ((\digits[0][2]~q\ & \digits[0][1]~q\)) # (!\digits[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X37_Y16_N22
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\digits[0][2]~q\ & (\digits[0][1]~q\ $ (!\digits[0][0]~q\))) # (!\digits[0][2]~q\ & (\digits[0][1]~q\ & !\digits[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X37_Y16_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\digits[0][2]~q\ & (!\digits[0][1]~q\ & \digits[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X37_Y16_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\digits[0][1]~q\ $ (!\digits[0][0]~q\)) # (!\digits[0][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X37_Y16_N8
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\digits[0][3]~q\ & ((\digits[0][2]~q\ & ((\digits[0][0]~q\))) # (!\digits[0][2]~q\ & (\digits[0][1]~q\ & !\digits[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X37_Y16_N10
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\digits[0][3]~q\ & ((\digits[0][2]~q\) # ((!\digits[0][0]~q\) # (!\digits[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[0][2]~q\,
	datab => \digits[0][3]~q\,
	datac => \digits[0][1]~q\,
	datad => \digits[0][0]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y16_N14
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \digits[1][2]~q\ $ (((!\digits[1][0]~q\) # (!\digits[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][2]~q\,
	datac => \digits[1][0]~q\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X35_Y16_N24
\digits~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~7_combout\ = ((!\LessThan1~0_combout\ & \LessThan2~0_combout\)) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \LessThan2~0_combout\,
	combout => \digits~7_combout\);

-- Location: LCCOMB_X35_Y16_N12
\digits[3][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits[3][0]~5_combout\ = (\LessThan2~0_combout\ & (!Ticks(31) & ((!\LessThan0~5_combout\) # (!\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => Ticks(31),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~5_combout\,
	combout => \digits[3][0]~5_combout\);

-- Location: FF_X35_Y16_N25
\digits[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~7_combout\,
	ena => \digits[3][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[1][2]~q\);

-- Location: LCCOMB_X35_Y16_N20
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = \digits[1][3]~q\ $ (((\digits[1][1]~q\ & (\digits[1][0]~q\ & !\digits[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][3]~q\,
	datac => \digits[1][0]~q\,
	datad => \digits[1][2]~q\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X35_Y16_N18
\digits~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~8_combout\ = (\Add2~1_combout\ & ((\LessThan1~0_combout\) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Add2~1_combout\,
	datac => \LessThan2~0_combout\,
	combout => \digits~8_combout\);

-- Location: FF_X35_Y16_N19
\digits[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~8_combout\,
	ena => \digits[3][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[1][3]~q\);

-- Location: LCCOMB_X35_Y16_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\digits[1][3]~q\ & ((\digits[1][2]~q\) # ((!\digits[1][1]~q\ & !\digits[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][3]~q\,
	datac => \digits[1][0]~q\,
	datad => \digits[1][2]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y16_N8
\digits~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~4_combout\ = (!\digits[1][0]~q\ & ((\LessThan1~0_combout\) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => \digits[1][0]~q\,
	datad => \LessThan1~0_combout\,
	combout => \digits~4_combout\);

-- Location: FF_X35_Y16_N9
\digits[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~4_combout\,
	ena => \digits[3][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[1][0]~q\);

-- Location: LCCOMB_X35_Y16_N22
\digits~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~6_combout\ = (\LessThan2~0_combout\ & (\LessThan1~0_combout\ & (\digits[1][0]~q\ $ (\digits[1][1]~q\)))) # (!\LessThan2~0_combout\ & (\digits[1][0]~q\ $ ((\digits[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \digits[1][0]~q\,
	datac => \digits[1][1]~q\,
	datad => \LessThan1~0_combout\,
	combout => \digits~6_combout\);

-- Location: FF_X35_Y16_N23
\digits[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~6_combout\,
	ena => \digits[3][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[1][1]~q\);

-- Location: LCCOMB_X35_Y16_N16
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\digits[1][3]~q\) # ((\digits[1][1]~q\ & ((\digits[1][2]~q\) # (!\digits[1][0]~q\))) # (!\digits[1][1]~q\ & ((!\digits[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][3]~q\,
	datac => \digits[1][0]~q\,
	datad => \digits[1][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X35_Y16_N2
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\digits[1][3]~q\ & ((\digits[1][1]~q\ & ((\digits[1][0]~q\) # (\digits[1][2]~q\))) # (!\digits[1][1]~q\ & (\digits[1][0]~q\ & \digits[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][3]~q\,
	datac => \digits[1][0]~q\,
	datad => \digits[1][2]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X35_Y16_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\digits[1][0]~q\) # ((!\digits[1][1]~q\ & !\digits[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][2]~q\,
	datac => \digits[1][0]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X35_Y16_N6
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\digits[1][1]~q\ & (!\digits[1][2]~q\ & \digits[1][0]~q\)) # (!\digits[1][1]~q\ & (\digits[1][2]~q\ $ (!\digits[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][2]~q\,
	datac => \digits[1][0]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X35_Y16_N0
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\digits[1][1]~q\ & (\digits[1][2]~q\ & !\digits[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][2]~q\,
	datac => \digits[1][0]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X35_Y16_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\digits[1][2]~q\) # (\digits[1][1]~q\ $ (!\digits[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][2]~q\,
	datac => \digits[1][0]~q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X35_Y16_N28
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\digits[1][3]~q\ & ((\digits[1][0]~q\ & (!\digits[1][1]~q\ & \digits[1][2]~q\)) # (!\digits[1][0]~q\ & ((!\digits[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1][1]~q\,
	datab => \digits[1][3]~q\,
	datac => \digits[1][0]~q\,
	datad => \digits[1][2]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y16_N12
\digits~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~11_combout\ = (!\digits[2][3]~q\ & (\digits[2][0]~q\ $ (!\digits[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[2][0]~q\,
	datac => \digits[2][1]~q\,
	datad => \digits[2][3]~q\,
	combout => \digits~11_combout\);

-- Location: LCCOMB_X32_Y16_N4
\digits[2][3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits[2][3]~10_combout\ = (\LessThan2~0_combout\ & (!\LessThan1~0_combout\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \digits[2][3]~10_combout\);

-- Location: FF_X32_Y16_N13
\digits[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~11_combout\,
	ena => \digits[2][3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[2][1]~q\);

-- Location: LCCOMB_X33_Y16_N26
\digits~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~12_combout\ = (\digits[2][3]~q\) # (\digits[2][2]~q\ $ (((!\digits[2][0]~q\ & \digits[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][3]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][2]~q\,
	datad => \digits[2][1]~q\,
	combout => \digits~12_combout\);

-- Location: FF_X33_Y16_N27
\digits[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~12_combout\,
	ena => \digits[2][3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[2][2]~q\);

-- Location: LCCOMB_X33_Y16_N4
\digits~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~9_combout\ = ((\digits[2][3]~q\ & ((\digits[2][1]~q\) # (!\digits[2][2]~q\)))) # (!\digits[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][3]~q\,
	datac => \digits[2][0]~q\,
	datad => \digits[2][1]~q\,
	combout => \digits~9_combout\);

-- Location: FF_X33_Y16_N5
\digits[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~9_combout\,
	ena => \digits[2][3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[2][0]~q\);

-- Location: LCCOMB_X33_Y16_N10
\digits~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~13_combout\ = (\digits[2][3]~q\ & (\digits[2][0]~q\ & (\digits[2][2]~q\ & !\digits[2][1]~q\))) # (!\digits[2][3]~q\ & (!\digits[2][0]~q\ & (!\digits[2][2]~q\ & \digits[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][3]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][2]~q\,
	datad => \digits[2][1]~q\,
	combout => \digits~13_combout\);

-- Location: FF_X32_Y16_N27
\digits[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \digits~13_combout\,
	sload => VCC,
	ena => \digits[2][3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[2][3]~q\);

-- Location: LCCOMB_X33_Y16_N8
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\digits[2][3]~q\) # ((\digits[2][2]~q\ & ((\digits[2][1]~q\))) # (!\digits[2][2]~q\ & ((\digits[2][0]~q\) # (!\digits[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][3]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][2]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X33_Y16_N2
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\digits[2][3]~q\ & ((\digits[2][0]~q\ & (\digits[2][2]~q\ & \digits[2][1]~q\)) # (!\digits[2][0]~q\ & ((\digits[2][2]~q\) # (\digits[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][3]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][2]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X33_Y16_N24
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ((!\digits[2][2]~q\ & !\digits[2][1]~q\)) # (!\digits[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][0]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X33_Y16_N6
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\digits[2][2]~q\ & (!\digits[2][0]~q\ & !\digits[2][1]~q\)) # (!\digits[2][2]~q\ & (\digits[2][0]~q\ $ (\digits[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][0]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X33_Y16_N0
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\digits[2][2]~q\ & (\digits[2][0]~q\ & \digits[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][0]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X33_Y16_N30
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\digits[2][2]~q\) # (\digits[2][0]~q\ $ (\digits[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][0]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X33_Y16_N20
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\digits[2][3]~q\ & ((\digits[2][0]~q\ & (!\digits[2][2]~q\)) # (!\digits[2][0]~q\ & (\digits[2][2]~q\ & !\digits[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][3]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][2]~q\,
	datad => \digits[2][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X32_Y16_N28
\digits~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~19_combout\ = (\digits[3][1]~q\ & ((\digits[3][2]~q\) # (\digits[3][0]~q\))) # (!\digits[3][1]~q\ & ((!\digits[3][0]~q\) # (!\digits[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[3][1]~q\,
	datac => \digits[3][2]~q\,
	datad => \digits[3][0]~q\,
	combout => \digits~19_combout\);

-- Location: LCCOMB_X33_Y16_N12
\digits[3][3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits[3][3]~15_combout\ = (\digits[2][3]~q\ & (((\digits[2][1]~q\) # (!\digits[2][0]~q\)) # (!\digits[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[2][2]~q\,
	datab => \digits[2][0]~q\,
	datac => \digits[2][3]~q\,
	datad => \digits[2][1]~q\,
	combout => \digits[3][3]~15_combout\);

-- Location: LCCOMB_X32_Y16_N26
\digits[3][3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits[3][3]~16_combout\ = (!Ticks(31) & (\digits[3][3]~15_combout\ & \LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Ticks(31),
	datab => \digits[3][3]~15_combout\,
	datad => \LessThan2~0_combout\,
	combout => \digits[3][3]~16_combout\);

-- Location: LCCOMB_X32_Y16_N2
\digits[3][3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits[3][3]~17_combout\ = (\digits[3][3]~16_combout\ & (!\LessThan1~0_combout\ & ((!\LessThan0~9_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[3][3]~16_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~9_combout\,
	combout => \digits[3][3]~17_combout\);

-- Location: FF_X32_Y16_N29
\digits[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~19_combout\,
	ena => \digits[3][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[3][2]~q\);

-- Location: LCCOMB_X32_Y16_N16
\digits~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~14_combout\ = (!\digits[3][0]~q\ & ((\digits[3][1]~q\) # (\digits[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \digits~14_combout\);

-- Location: FF_X32_Y16_N17
\digits[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~14_combout\,
	ena => \digits[3][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[3][0]~q\);

-- Location: LCCOMB_X32_Y16_N10
\digits~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digits~18_combout\ = (\digits[3][0]~q\ $ (\digits[3][1]~q\)) # (!\digits[3][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][0]~q\,
	datac => \digits[3][1]~q\,
	datad => \digits[3][2]~q\,
	combout => \digits~18_combout\);

-- Location: FF_X32_Y16_N11
\digits[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \digits~18_combout\,
	ena => \digits[3][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digits[3][1]~q\);

-- Location: LCCOMB_X37_Y18_N8
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\digits[3][1]~q\ & ((!\digits[3][2]~q\))) # (!\digits[3][1]~q\ & ((\digits[3][2]~q\) # (!\digits[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X37_Y18_N6
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\digits[3][1]~q\ & (\digits[3][0]~q\ & \digits[3][2]~q\)) # (!\digits[3][1]~q\ & ((\digits[3][0]~q\) # (\digits[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X37_Y18_N24
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\digits[3][0]~q\) # ((\digits[3][1]~q\ & !\digits[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X37_Y18_N14
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\digits[3][1]~q\ & (\digits[3][0]~q\ $ (!\digits[3][2]~q\))) # (!\digits[3][1]~q\ & (\digits[3][0]~q\ & !\digits[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X37_Y18_N4
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\digits[3][1]~q\ & (!\digits[3][0]~q\ & \digits[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X37_Y18_N10
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\digits[3][2]~q\) # (\digits[3][1]~q\ $ (\digits[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X37_Y18_N12
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\digits[3][0]~q\ & (\digits[3][1]~q\ & \digits[3][2]~q\)) # (!\digits[3][0]~q\ & ((!\digits[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3][1]~q\,
	datac => \digits[3][0]~q\,
	datad => \digits[3][2]~q\,
	combout => \Mux21~0_combout\);

ww_Hex0(7) <= \Hex0[7]~output_o\;

ww_Hex0(6) <= \Hex0[6]~output_o\;

ww_Hex0(5) <= \Hex0[5]~output_o\;

ww_Hex0(4) <= \Hex0[4]~output_o\;

ww_Hex0(3) <= \Hex0[3]~output_o\;

ww_Hex0(2) <= \Hex0[2]~output_o\;

ww_Hex0(1) <= \Hex0[1]~output_o\;

ww_Hex0(0) <= \Hex0[0]~output_o\;

ww_Hex1(7) <= \Hex1[7]~output_o\;

ww_Hex1(6) <= \Hex1[6]~output_o\;

ww_Hex1(5) <= \Hex1[5]~output_o\;

ww_Hex1(4) <= \Hex1[4]~output_o\;

ww_Hex1(3) <= \Hex1[3]~output_o\;

ww_Hex1(2) <= \Hex1[2]~output_o\;

ww_Hex1(1) <= \Hex1[1]~output_o\;

ww_Hex1(0) <= \Hex1[0]~output_o\;

ww_Hex2(7) <= \Hex2[7]~output_o\;

ww_Hex2(6) <= \Hex2[6]~output_o\;

ww_Hex2(5) <= \Hex2[5]~output_o\;

ww_Hex2(4) <= \Hex2[4]~output_o\;

ww_Hex2(3) <= \Hex2[3]~output_o\;

ww_Hex2(2) <= \Hex2[2]~output_o\;

ww_Hex2(1) <= \Hex2[1]~output_o\;

ww_Hex2(0) <= \Hex2[0]~output_o\;

ww_Hex3(7) <= \Hex3[7]~output_o\;

ww_Hex3(6) <= \Hex3[6]~output_o\;

ww_Hex3(5) <= \Hex3[5]~output_o\;

ww_Hex3(4) <= \Hex3[4]~output_o\;

ww_Hex3(3) <= \Hex3[3]~output_o\;

ww_Hex3(2) <= \Hex3[2]~output_o\;

ww_Hex3(1) <= \Hex3[1]~output_o\;

ww_Hex3(0) <= \Hex3[0]~output_o\;
END structure;


