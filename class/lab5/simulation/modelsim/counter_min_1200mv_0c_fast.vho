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

-- DATE "05/31/2022 18:28:17"

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

ENTITY 	counter IS
    PORT (
	S0 : IN std_logic;
	S2 : IN std_logic;
	R1 : IN std_logic;
	Enable : IN std_logic;
	HEX0 : OUT std_logic_vector(7 DOWNTO 1);
	HEX1 : OUT std_logic_vector(7 DOWNTO 1);
	OnLed : OUT std_logic
	);
END counter;

-- Design Ports Information
-- HEX0[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OnLed	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 1);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 1);
SIGNAL ww_OnLed : std_logic;
SIGNAL \Q~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \OnLed~output_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \R1~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Q~0clkctrl_outclk\ : std_logic;
SIGNAL \digit0[0]~5_combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \pro0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \digit0[0]~6\ : std_logic;
SIGNAL \digit0[1]~7_combout\ : std_logic;
SIGNAL \digit0[1]~8\ : std_logic;
SIGNAL \digit0[2]~9_combout\ : std_logic;
SIGNAL \digit0[2]~10\ : std_logic;
SIGNAL \digit0[3]~11_combout\ : std_logic;
SIGNAL \digit0[3]~12\ : std_logic;
SIGNAL \digit0[4]~13_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \digit1[0]~5_combout\ : std_logic;
SIGNAL \digit1[1]~8\ : std_logic;
SIGNAL \digit1[2]~9_combout\ : std_logic;
SIGNAL \digit1[2]~10\ : std_logic;
SIGNAL \digit1[3]~11_combout\ : std_logic;
SIGNAL \digit1[3]~12\ : std_logic;
SIGNAL \digit1[4]~13_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \digit1[0]~6\ : std_logic;
SIGNAL \digit1[1]~7_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL digit1 : std_logic_vector(4 DOWNTO 0);
SIGNAL digit0 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Q~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_pro0~0_combout\ : std_logic;

BEGIN

ww_S0 <= S0;
ww_S2 <= S2;
ww_R1 <= R1;
ww_Enable <= Enable;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
OnLed <= ww_OnLed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Q~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Q~0_combout\);
\ALT_INV_Q~0clkctrl_outclk\ <= NOT \Q~0clkctrl_outclk\;
\ALT_INV_Q~0_combout\ <= NOT \Q~0_combout\;
\ALT_INV_pro0~0_combout\ <= NOT \pro0~0_combout\;

-- Location: IOOBUF_X3_Y0_N2
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\HEX0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\HEX1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\OnLed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Q~0_combout\,
	devoe => ww_devoe,
	o => \OnLed~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\S2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\R1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1,
	o => \R1~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\Enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: LCCOMB_X1_Y14_N30
\Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\Enable~input_o\ & (\S2~input_o\ & ((\Q~0_combout\) # (!\R1~input_o\)))) # (!\Enable~input_o\ & (((\Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S2~input_o\,
	datab => \R1~input_o\,
	datac => \Q~0_combout\,
	datad => \Enable~input_o\,
	combout => \Q~0_combout\);

-- Location: CLKCTRL_G0
\Q~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Q~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Q~0clkctrl_outclk\);

-- Location: LCCOMB_X5_Y1_N6
\digit0[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0[0]~5_combout\ = digit0(0) $ (VCC)
-- \digit0[0]~6\ = CARRY(digit0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datad => VCC,
	combout => \digit0[0]~5_combout\,
	cout => \digit0[0]~6\);

-- Location: IOIBUF_X7_Y0_N29
\S0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X6_Y1_N0
\pro0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pro0~0_combout\ = (\Enable~input_o\ & !\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~input_o\,
	datad => \S0~input_o\,
	combout => \pro0~0_combout\);

-- Location: LCCOMB_X5_Y1_N18
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!digit0(2) & (!digit0(1) & (!digit0(4) & !digit0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(2),
	datab => digit0(1),
	datac => digit0(4),
	datad => digit0(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y1_N16
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\LessThan0~0_combout\ & ((digit0(3)) # (digit0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(3),
	datac => digit0(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X5_Y1_N7
\digit0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit0[0]~5_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(0));

-- Location: LCCOMB_X5_Y1_N8
\digit0[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0[1]~7_combout\ = (digit0(1) & (!\digit0[0]~6\)) # (!digit0(1) & ((\digit0[0]~6\) # (GND)))
-- \digit0[1]~8\ = CARRY((!\digit0[0]~6\) # (!digit0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => digit0(1),
	datad => VCC,
	cin => \digit0[0]~6\,
	combout => \digit0[1]~7_combout\,
	cout => \digit0[1]~8\);

-- Location: FF_X5_Y1_N9
\digit0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit0[1]~7_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(1));

-- Location: LCCOMB_X5_Y1_N10
\digit0[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0[2]~9_combout\ = (digit0(2) & (\digit0[1]~8\ $ (GND))) # (!digit0(2) & (!\digit0[1]~8\ & VCC))
-- \digit0[2]~10\ = CARRY((digit0(2) & !\digit0[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => digit0(2),
	datad => VCC,
	cin => \digit0[1]~8\,
	combout => \digit0[2]~9_combout\,
	cout => \digit0[2]~10\);

-- Location: FF_X5_Y1_N11
\digit0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit0[2]~9_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(2));

-- Location: LCCOMB_X5_Y1_N12
\digit0[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0[3]~11_combout\ = (digit0(3) & (!\digit0[2]~10\)) # (!digit0(3) & ((\digit0[2]~10\) # (GND)))
-- \digit0[3]~12\ = CARRY((!\digit0[2]~10\) # (!digit0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => digit0(3),
	datad => VCC,
	cin => \digit0[2]~10\,
	combout => \digit0[3]~11_combout\,
	cout => \digit0[3]~12\);

-- Location: FF_X5_Y1_N13
\digit0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit0[3]~11_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(3));

-- Location: LCCOMB_X5_Y1_N14
\digit0[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0[4]~13_combout\ = \digit0[3]~12\ $ (!digit0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => digit0(4),
	cin => \digit0[3]~12\,
	combout => \digit0[4]~13_combout\);

-- Location: FF_X5_Y1_N15
\digit0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit0[4]~13_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(4));

-- Location: LCCOMB_X4_Y1_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (digit0(1) & (!digit0(3) & ((!digit0(0)) # (!digit0(2))))) # (!digit0(1) & (digit0(2) $ ((digit0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X4_Y1_N18
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (digit0(4)) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X4_Y1_N0
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (digit0(2) & ((digit0(3)) # ((digit0(1) & digit0(0))))) # (!digit0(2) & ((digit0(1)) # ((!digit0(3) & digit0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X4_Y1_N22
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (digit0(4)) # (\Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X4_Y1_N24
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (digit0(0)) # ((digit0(1) & ((digit0(3)))) # (!digit0(1) & (digit0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X4_Y1_N6
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (digit0(4)) # (\Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X4_Y1_N4
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (digit0(2) & ((digit0(3)) # (digit0(1) $ (!digit0(0))))) # (!digit0(2) & ((digit0(1) & (digit0(3))) # (!digit0(1) & ((digit0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X4_Y1_N14
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # (digit0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => digit0(4),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X4_Y1_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (digit0(2) & (((digit0(3))))) # (!digit0(2) & (digit0(1) & ((digit0(3)) # (!digit0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y1_N10
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (digit0(4)) # (\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X4_Y1_N12
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (digit0(2) & ((digit0(3)) # (digit0(1) $ (digit0(0))))) # (!digit0(2) & (digit0(1) & (digit0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y1_N30
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (digit0(4)) # (\Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X4_Y1_N16
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (digit0(1) & ((digit0(3)) # ((digit0(2) & !digit0(0))))) # (!digit0(1) & (digit0(2) $ (((!digit0(3) & digit0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(1),
	datab => digit0(2),
	datac => digit0(3),
	datad => digit0(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X4_Y1_N26
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (digit0(4)) # (\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit0(4),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X6_Y1_N16
\digit1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1[0]~5_combout\ = digit1(0) $ (VCC)
-- \digit1[0]~6\ = CARRY(digit1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit1(0),
	datad => VCC,
	combout => \digit1[0]~5_combout\,
	cout => \digit1[0]~6\);

-- Location: LCCOMB_X6_Y1_N18
\digit1[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1[1]~7_combout\ = (digit1(1) & (!\digit1[0]~6\)) # (!digit1(1) & ((\digit1[0]~6\) # (GND)))
-- \digit1[1]~8\ = CARRY((!\digit1[0]~6\) # (!digit1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => digit1(1),
	datad => VCC,
	cin => \digit1[0]~6\,
	combout => \digit1[1]~7_combout\,
	cout => \digit1[1]~8\);

-- Location: LCCOMB_X6_Y1_N20
\digit1[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1[2]~9_combout\ = (digit1(2) & (\digit1[1]~8\ $ (GND))) # (!digit1(2) & (!\digit1[1]~8\ & VCC))
-- \digit1[2]~10\ = CARRY((digit1(2) & !\digit1[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => digit1(2),
	datad => VCC,
	cin => \digit1[1]~8\,
	combout => \digit1[2]~9_combout\,
	cout => \digit1[2]~10\);

-- Location: FF_X6_Y1_N21
\digit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit1[2]~9_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(2));

-- Location: LCCOMB_X6_Y1_N22
\digit1[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1[3]~11_combout\ = (digit1(3) & (!\digit1[2]~10\)) # (!digit1(3) & ((\digit1[2]~10\) # (GND)))
-- \digit1[3]~12\ = CARRY((!\digit1[2]~10\) # (!digit1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datad => VCC,
	cin => \digit1[2]~10\,
	combout => \digit1[3]~11_combout\,
	cout => \digit1[3]~12\);

-- Location: FF_X6_Y1_N23
\digit1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit1[3]~11_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(3));

-- Location: LCCOMB_X6_Y1_N24
\digit1[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1[4]~13_combout\ = \digit1[3]~12\ $ (!digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => digit1(4),
	cin => \digit1[3]~12\,
	combout => \digit1[4]~13_combout\);

-- Location: FF_X6_Y1_N25
\digit1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit1[4]~13_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(4));

-- Location: LCCOMB_X6_Y1_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!digit1(1) & (!digit1(0) & (!digit1(2) & !digit1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(4),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y1_N6
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!\LessThan1~0_combout\ & ((digit1(4)) # (digit1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit1(4),
	datac => digit1(3),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X6_Y1_N17
\digit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit1[0]~5_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(0));

-- Location: FF_X6_Y1_N19
\digit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Q~0clkctrl_outclk\,
	d => \digit1[1]~7_combout\,
	clrn => \ALT_INV_pro0~0_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(1));

-- Location: LCCOMB_X5_Y1_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (digit1(1) & (!digit1(3) & ((!digit1(2)) # (!digit1(0))))) # (!digit1(1) & ((digit1(2) $ (digit1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X5_Y1_N26
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (digit1(4)) # (!\Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~0_combout\,
	datad => digit1(4),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X5_Y1_N20
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (digit1(0) & ((digit1(1)) # (digit1(2) $ (!digit1(3))))) # (!digit1(0) & ((digit1(2) & ((digit1(3)))) # (!digit1(2) & (digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X5_Y1_N4
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datad => digit1(4),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X6_Y1_N8
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (digit1(0)) # ((digit1(1) & (digit1(3))) # (!digit1(1) & ((digit1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X6_Y1_N26
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux11~0_combout\,
	datad => digit1(4),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X6_Y1_N12
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (digit1(0) & ((digit1(3)) # (digit1(1) $ (!digit1(2))))) # (!digit1(0) & ((digit1(1) & (digit1(3))) # (!digit1(1) & ((digit1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X6_Y1_N30
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datad => digit1(4),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X5_Y1_N30
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (digit1(2) & (((digit1(3))))) # (!digit1(2) & (digit1(1) & ((digit1(3)) # (!digit1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X5_Y1_N28
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux9~0_combout\,
	datad => digit1(4),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X5_Y1_N22
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (digit1(2) & ((digit1(3)) # (digit1(1) $ (digit1(0))))) # (!digit1(2) & (digit1(1) & ((digit1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X5_Y1_N24
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~0_combout\,
	datad => digit1(4),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X6_Y1_N28
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (digit1(1) & ((digit1(3)) # ((!digit1(0) & digit1(2))))) # (!digit1(1) & (digit1(2) $ (((digit1(0) & !digit1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X6_Y1_N14
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # (digit1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datad => digit1(4),
	combout => \Mux7~1_combout\);

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_OnLed <= \OnLed~output_o\;
END structure;


