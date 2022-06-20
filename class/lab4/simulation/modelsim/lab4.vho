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

-- DATE "05/24/2022 17:39:55"

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

ENTITY 	lab4 IS
    PORT (
	c0 : IN std_logic;
	a : IN std_logic_vector(4 DOWNTO 1);
	b : IN std_logic_vector(4 DOWNTO 1);
	c4 : OUT std_logic;
	sum : OUT std_logic_vector(4 DOWNTO 1)
	);
END lab4;

-- Design Ports Information
-- c4	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_c4 : std_logic;
SIGNAL ww_sum : std_logic_vector(4 DOWNTO 1);
SIGNAL \c4~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \add4|adders:1:adder|c_out~0_combout\ : std_logic;
SIGNAL \add4|adders:2:adder|c_out~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \add4|adders:3:adder|c_out~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \add4|adders:4:adder|c_out~0_combout\ : std_logic;
SIGNAL \add4|adders:1:adder|sum~0_combout\ : std_logic;
SIGNAL \add4|adders:2:adder|sum~combout\ : std_logic;
SIGNAL \add4|adders:3:adder|sum~combout\ : std_logic;
SIGNAL \add4|adders:4:adder|sum~combout\ : std_logic;

BEGIN

ww_c0 <= c0;
ww_a <= a;
ww_b <= b;
c4 <= ww_c4;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N2
\c4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4|adders:4:adder|c_out~0_combout\,
	devoe => ww_devoe,
	o => \c4~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4|adders:1:adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4|adders:2:adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4|adders:3:adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add4|adders:4:adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\c0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\add4|adders:1:adder|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:1:adder|c_out~0_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # (\c0~input_o\))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & \c0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => \c0~input_o\,
	combout => \add4|adders:1:adder|c_out~0_combout\);

-- Location: LCCOMB_X1_Y12_N26
\add4|adders:2:adder|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:2:adder|c_out~0_combout\ = (\a[2]~input_o\ & ((\b[2]~input_o\) # (\add4|adders:1:adder|c_out~0_combout\))) # (!\a[2]~input_o\ & (\b[2]~input_o\ & \add4|adders:1:adder|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \add4|adders:1:adder|c_out~0_combout\,
	combout => \add4|adders:2:adder|c_out~0_combout\);

-- Location: IOIBUF_X26_Y0_N15
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y12_N12
\add4|adders:3:adder|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:3:adder|c_out~0_combout\ = (\b[3]~input_o\ & ((\add4|adders:2:adder|c_out~0_combout\) # (\a[3]~input_o\))) # (!\b[3]~input_o\ & (\add4|adders:2:adder|c_out~0_combout\ & \a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \add4|adders:2:adder|c_out~0_combout\,
	datad => \a[3]~input_o\,
	combout => \add4|adders:3:adder|c_out~0_combout\);

-- Location: IOIBUF_X1_Y29_N22
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X1_Y12_N30
\add4|adders:4:adder|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:4:adder|c_out~0_combout\ = (\add4|adders:3:adder|c_out~0_combout\ & ((\b[4]~input_o\) # (\a[4]~input_o\))) # (!\add4|adders:3:adder|c_out~0_combout\ & (\b[4]~input_o\ & \a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4|adders:3:adder|c_out~0_combout\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \add4|adders:4:adder|c_out~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\add4|adders:1:adder|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:1:adder|sum~0_combout\ = \a[1]~input_o\ $ (\b[1]~input_o\ $ (\c0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => \c0~input_o\,
	combout => \add4|adders:1:adder|sum~0_combout\);

-- Location: LCCOMB_X1_Y12_N2
\add4|adders:2:adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:2:adder|sum~combout\ = \a[2]~input_o\ $ (\b[2]~input_o\ $ (\add4|adders:1:adder|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \add4|adders:1:adder|c_out~0_combout\,
	combout => \add4|adders:2:adder|sum~combout\);

-- Location: LCCOMB_X1_Y12_N4
\add4|adders:3:adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:3:adder|sum~combout\ = \b[3]~input_o\ $ (\add4|adders:2:adder|c_out~0_combout\ $ (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \add4|adders:2:adder|c_out~0_combout\,
	datad => \a[3]~input_o\,
	combout => \add4|adders:3:adder|sum~combout\);

-- Location: LCCOMB_X1_Y12_N14
\add4|adders:4:adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \add4|adders:4:adder|sum~combout\ = \add4|adders:3:adder|c_out~0_combout\ $ (\b[4]~input_o\ $ (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add4|adders:3:adder|c_out~0_combout\,
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \add4|adders:4:adder|sum~combout\);

ww_c4 <= \c4~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;
END structure;


