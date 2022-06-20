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

-- DATE "05/17/2022 18:33:53"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	sw : IN std_logic_vector(8 DOWNTO 0);
	seve1 : OUT std_logic_vector(6 DOWNTO 0);
	seve2 : OUT std_logic_vector(6 DOWNTO 0);
	seve3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab3;

-- Design Ports Information
-- seve1[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve1[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve2[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seve3[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_seve1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seve2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seve3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \seve1[0]~output_o\ : std_logic;
SIGNAL \seve1[1]~output_o\ : std_logic;
SIGNAL \seve1[2]~output_o\ : std_logic;
SIGNAL \seve1[3]~output_o\ : std_logic;
SIGNAL \seve1[4]~output_o\ : std_logic;
SIGNAL \seve1[5]~output_o\ : std_logic;
SIGNAL \seve1[6]~output_o\ : std_logic;
SIGNAL \seve2[0]~output_o\ : std_logic;
SIGNAL \seve2[1]~output_o\ : std_logic;
SIGNAL \seve2[2]~output_o\ : std_logic;
SIGNAL \seve2[3]~output_o\ : std_logic;
SIGNAL \seve2[4]~output_o\ : std_logic;
SIGNAL \seve2[5]~output_o\ : std_logic;
SIGNAL \seve2[6]~output_o\ : std_logic;
SIGNAL \seve3[0]~output_o\ : std_logic;
SIGNAL \seve3[1]~output_o\ : std_logic;
SIGNAL \seve3[2]~output_o\ : std_logic;
SIGNAL \seve3[3]~output_o\ : std_logic;
SIGNAL \seve3[4]~output_o\ : std_logic;
SIGNAL \seve3[5]~output_o\ : std_logic;
SIGNAL \seve3[6]~output_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \seve2~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \RB_process~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \seve3~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
seve1 <= ww_seve1;
seve2 <= ww_seve2;
seve3 <= ww_seve3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X9_Y0_N30
\seve1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seve1[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\seve1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seve1[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\seve1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~1_combout\,
	devoe => ww_devoe,
	o => \seve1[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\seve1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seve1[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\seve1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \seve1[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\seve1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seve1[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\seve1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seve1[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\seve2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \seve2[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\seve2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \seve2[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\seve2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \seve2[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\seve2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \seve2[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\seve2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seve2~0_combout\,
	devoe => ww_devoe,
	o => \seve2[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\seve2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \seve2[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\seve2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \seve2[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\seve3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \seve3[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\seve3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \seve3[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\seve3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \seve3[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\seve3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \seve3[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\seve3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seve3~0_combout\,
	devoe => ww_devoe,
	o => \seve3[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\seve3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \seve3[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\seve3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \seve3[6]~output_o\);

-- Location: IOIBUF_X0_Y2_N1
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X5_Y2_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sw[8]~input_o\ & ((!\sw[7]~input_o\) # (!\sw[6]~input_o\))) # (!\sw[8]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X5_Y2_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((\sw[6]~input_o\ & \sw[7]~input_o\)) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X5_Y2_N4
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\sw[6]~input_o\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X5_Y2_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = \sw[7]~input_o\ $ (((!\sw[8]~input_o\) # (!\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y2_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sw[6]~input_o\ & !\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datad => \sw[8]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y2_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sw[6]~input_o\ & (\sw[8]~input_o\ & !\sw[7]~input_o\)) # (!\sw[6]~input_o\ & (\sw[8]~input_o\ $ (!\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X5_Y2_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sw[8]~input_o\ & (\sw[6]~input_o\)) # (!\sw[8]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X5_Y0_N1
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X5_Y2_N14
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\sw[4]~input_o\ & ((!\sw[5]~input_o\) # (!\sw[3]~input_o\))) # (!\sw[4]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X5_Y2_N24
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\sw[6]~input_o\ & (!\sw[8]~input_o\ & !\sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y2_N2
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\sw[4]~input_o\ & ((\sw[3]~input_o\) # ((!\sw[5]~input_o\)))) # (!\sw[4]~input_o\ & (!\sw[5]~input_o\ & ((\sw[3]~input_o\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X5_Y2_N12
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\sw[3]~input_o\) # ((!\sw[4]~input_o\ & ((\sw[5]~input_o\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X5_Y2_N30
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\sw[3]~input_o\ & (\sw[4]~input_o\ $ ((!\sw[5]~input_o\)))) # (!\sw[3]~input_o\ & (!\sw[4]~input_o\ & ((\sw[5]~input_o\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X5_Y2_N16
\seve2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seve2~0_combout\ = (!\sw[3]~input_o\ & (!\sw[5]~input_o\ & ((\sw[4]~input_o\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \seve2~0_combout\);

-- Location: LCCOMB_X5_Y2_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\sw[5]~input_o\ & (\sw[4]~input_o\ $ ((\sw[3]~input_o\)))) # (!\sw[5]~input_o\ & (!\sw[4]~input_o\ & (!\sw[3]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X5_Y2_N28
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sw[5]~input_o\ & (((!\sw[3]~input_o\)))) # (!\sw[5]~input_o\ & (!\sw[4]~input_o\ & ((\sw[3]~input_o\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X0_Y8_N8
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X1_Y8_N16
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\sw[2]~input_o\ & ((!\sw[1]~input_o\) # (!\sw[0]~input_o\))) # (!\sw[2]~input_o\ & ((\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X5_Y2_N22
\RB_process~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RB_process~0_combout\ = (!\sw[4]~input_o\ & (!\sw[3]~input_o\ & (!\sw[5]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \RB_process~0_combout\);

-- Location: LCCOMB_X1_Y8_N10
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\sw[0]~input_o\ & (((\sw[1]~input_o\)) # (!\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & ((\RB_process~0_combout\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\sw[0]~input_o\) # ((!\sw[1]~input_o\ & ((\sw[2]~input_o\) # (\RB_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X1_Y8_N30
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\sw[0]~input_o\ & (\sw[2]~input_o\ $ (((!\sw[1]~input_o\))))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & ((\sw[2]~input_o\) # (\RB_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X1_Y8_N24
\seve3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seve3~0_combout\ = (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & ((\RB_process~0_combout\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \seve3~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (((\sw[1]~input_o\))))) # (!\sw[2]~input_o\ & (!\sw[0]~input_o\ & (\RB_process~0_combout\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\sw[2]~input_o\ & (!\sw[0]~input_o\)) # (!\sw[2]~input_o\ & (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\RB_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \RB_process~0_combout\,
	datad => \sw[1]~input_o\,
	combout => \Mux14~0_combout\);

ww_seve1(0) <= \seve1[0]~output_o\;

ww_seve1(1) <= \seve1[1]~output_o\;

ww_seve1(2) <= \seve1[2]~output_o\;

ww_seve1(3) <= \seve1[3]~output_o\;

ww_seve1(4) <= \seve1[4]~output_o\;

ww_seve1(5) <= \seve1[5]~output_o\;

ww_seve1(6) <= \seve1[6]~output_o\;

ww_seve2(0) <= \seve2[0]~output_o\;

ww_seve2(1) <= \seve2[1]~output_o\;

ww_seve2(2) <= \seve2[2]~output_o\;

ww_seve2(3) <= \seve2[3]~output_o\;

ww_seve2(4) <= \seve2[4]~output_o\;

ww_seve2(5) <= \seve2[5]~output_o\;

ww_seve2(6) <= \seve2[6]~output_o\;

ww_seve3(0) <= \seve3[0]~output_o\;

ww_seve3(1) <= \seve3[1]~output_o\;

ww_seve3(2) <= \seve3[2]~output_o\;

ww_seve3(3) <= \seve3[3]~output_o\;

ww_seve3(4) <= \seve3[4]~output_o\;

ww_seve3(5) <= \seve3[5]~output_o\;

ww_seve3(6) <= \seve3[6]~output_o\;
END structure;


