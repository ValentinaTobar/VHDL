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

-- DATE "03/05/2024 16:11:42"

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

ENTITY 	BCD7Seg2 IS
    PORT (
	SG_dis : IN std_logic_vector(3 DOWNTO 0);
	IA : IN std_logic;
	IB : IN std_logic;
	IC : IN std_logic;
	ID : IN std_logic;
	F : OUT std_logic_vector(6 DOWNTO 0)
	);
END BCD7Seg2;

-- Design Ports Information
-- F[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SG_dis[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SG_dis[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SG_dis[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SG_dis[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD7Seg2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SG_dis : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IA : std_logic;
SIGNAL ww_IB : std_logic;
SIGNAL ww_IC : std_logic;
SIGNAL ww_ID : std_logic;
SIGNAL ww_F : std_logic_vector(6 DOWNTO 0);
SIGNAL \F[6]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \IB~input_o\ : std_logic;
SIGNAL \IA~input_o\ : std_logic;
SIGNAL \SG_dis[0]~input_o\ : std_logic;
SIGNAL \SG_dis[1]~input_o\ : std_logic;
SIGNAL \SG_dis[2]~input_o\ : std_logic;
SIGNAL \SG_dis[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \IC~input_o\ : std_logic;
SIGNAL \ID~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \F[6]~0_combout\ : std_logic;
SIGNAL \F[6]~0clkctrl_outclk\ : std_logic;
SIGNAL \F[0]$latch~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \F[1]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \F[2]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \F[3]$latch~combout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \F[4]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \F[5]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \F[6]$latch~combout\ : std_logic;

BEGIN

ww_SG_dis <= SG_dis;
ww_IA <= IA;
ww_IB <= IB;
ww_IC <= IC;
ww_ID <= ID;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\F[6]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \F[6]~0_combout\);

-- Location: IOOBUF_X26_Y29_N16
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[0]$latch~combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[1]$latch~combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[2]$latch~combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[3]$latch~combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\F[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[4]$latch~combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\F[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[5]$latch~combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\F[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F[6]$latch~combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N22
\IB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IB,
	o => \IB~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\IA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA,
	o => \IA~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\SG_dis[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SG_dis(0),
	o => \SG_dis[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\SG_dis[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SG_dis(1),
	o => \SG_dis[1]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\SG_dis[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SG_dis(2),
	o => \SG_dis[2]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\SG_dis[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SG_dis(3),
	o => \SG_dis[3]~input_o\);

-- Location: LCCOMB_X22_Y28_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\SG_dis[0]~input_o\ & (\SG_dis[1]~input_o\ & (!\SG_dis[2]~input_o\ & \SG_dis[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SG_dis[0]~input_o\,
	datab => \SG_dis[1]~input_o\,
	datac => \SG_dis[2]~input_o\,
	datad => \SG_dis[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\IC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC,
	o => \IC~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\ID~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID,
	o => \ID~input_o\);

-- Location: LCCOMB_X22_Y28_N12
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\IB~input_o\ & (\Equal0~0_combout\ $ (((\IC~input_o\ & \ID~input_o\))))) # (!\IB~input_o\ & (!\IC~input_o\ & ((\ID~input_o\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \IC~input_o\,
	datac => \ID~input_o\,
	datad => \IB~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y28_N6
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\IB~input_o\ $ (\Equal0~0_combout\)) # (!\IA~input_o\))) # (!\Mux13~0_combout\ & (\IA~input_o\ $ (((!\IB~input_o\ & \Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IB~input_o\,
	datab => \IA~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X20_Y28_N0
\F[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[6]~0_combout\ = (\SG_dis[3]~input_o\ & (\SG_dis[1]~input_o\ & (\SG_dis[2]~input_o\ $ (!\SG_dis[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SG_dis[3]~input_o\,
	datab => \SG_dis[2]~input_o\,
	datac => \SG_dis[1]~input_o\,
	datad => \SG_dis[0]~input_o\,
	combout => \F[6]~0_combout\);

-- Location: CLKCTRL_G12
\F[6]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \F[6]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \F[6]~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N8
\F[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[0]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & (\Mux13~1_combout\)) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & ((\F[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~1_combout\,
	datac => \F[0]$latch~combout\,
	datad => \F[6]~0clkctrl_outclk\,
	combout => \F[0]$latch~combout\);

-- Location: LCCOMB_X22_Y28_N10
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\ID~input_o\ & ((\Equal0~0_combout\) # (\IA~input_o\ $ (!\IB~input_o\)))) # (!\ID~input_o\ & (\IB~input_o\ & (\Equal0~0_combout\ $ (\IA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \ID~input_o\,
	datac => \IA~input_o\,
	datad => \IB~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y28_N16
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\IA~input_o\ & (\Equal0~0_combout\ & ((!\IB~input_o\)))) # (!\IA~input_o\ & (\IB~input_o\ & (\Equal0~0_combout\ $ (!\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \ID~input_o\,
	datac => \IA~input_o\,
	datad => \IB~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X22_Y28_N22
\Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\IC~input_o\ & ((!\Mux12~1_combout\))) # (!\IC~input_o\ & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IC~input_o\,
	datab => \Mux12~0_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X22_Y28_N30
\F[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[1]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & ((\Mux12~2_combout\))) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & (\F[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]$latch~combout\,
	datac => \F[6]~0clkctrl_outclk\,
	datad => \Mux12~2_combout\,
	combout => \F[1]$latch~combout\);

-- Location: LCCOMB_X22_Y28_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\IC~input_o\ & ((\IA~input_o\ $ (\Equal0~0_combout\)))) # (!\IC~input_o\ & (\IB~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IB~input_o\,
	datab => \IA~input_o\,
	datac => \Equal0~0_combout\,
	datad => \IC~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\) # (\ID~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datad => \ID~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X23_Y28_N30
\F[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[2]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & ((\Mux11~1_combout\))) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & (\F[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[2]$latch~combout\,
	datac => \Mux11~1_combout\,
	datad => \F[6]~0clkctrl_outclk\,
	combout => \F[2]$latch~combout\);

-- Location: LCCOMB_X22_Y28_N26
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = \IA~input_o\ $ (\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IA~input_o\,
	datac => \Equal0~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X21_Y28_N20
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\ID~input_o\ & ((\Mux10~0_combout\) # (\IB~input_o\ $ (!\IC~input_o\)))) # (!\ID~input_o\ & ((\IC~input_o\ & (\Mux10~0_combout\)) # (!\IC~input_o\ & ((\IB~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID~input_o\,
	datab => \Mux10~0_combout\,
	datac => \IB~input_o\,
	datad => \IC~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X21_Y28_N24
\F[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[3]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & ((\Mux10~1_combout\))) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & (\F[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[3]$latch~combout\,
	datac => \Mux10~1_combout\,
	datad => \F[6]~0clkctrl_outclk\,
	combout => \F[3]$latch~combout\);

-- Location: LCCOMB_X21_Y28_N28
\Mux9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (!\SG_dis[0]~input_o\ & (!\SG_dis[2]~input_o\ & (\SG_dis[1]~input_o\ & \SG_dis[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SG_dis[0]~input_o\,
	datab => \SG_dis[2]~input_o\,
	datac => \SG_dis[1]~input_o\,
	datad => \SG_dis[3]~input_o\,
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X21_Y28_N26
\Mux9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\IB~input_o\ & ((\IC~input_o\ & (!\ID~input_o\)) # (!\IC~input_o\ & ((!\IA~input_o\))))) # (!\IB~input_o\ & (!\IA~input_o\ & ((\ID~input_o\) # (\IC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID~input_o\,
	datab => \IB~input_o\,
	datac => \IA~input_o\,
	datad => \IC~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X21_Y28_N12
\Mux9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\IB~input_o\ & (((\IA~input_o\)))) # (!\IB~input_o\ & (\IC~input_o\ & ((\IA~input_o\) # (!\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID~input_o\,
	datab => \IB~input_o\,
	datac => \IA~input_o\,
	datad => \IC~input_o\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X21_Y28_N22
\Mux9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (\Mux9~11_combout\ & (\Mux9~8_combout\)) # (!\Mux9~11_combout\ & ((\Mux9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~11_combout\,
	datac => \Mux9~8_combout\,
	datad => \Mux9~9_combout\,
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X21_Y28_N30
\F[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[4]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & (\Mux9~10_combout\)) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & ((\F[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~10_combout\,
	datac => \F[4]$latch~combout\,
	datad => \F[6]~0clkctrl_outclk\,
	combout => \F[4]$latch~combout\);

-- Location: LCCOMB_X22_Y28_N24
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\IA~input_o\ & (((!\IB~input_o\)) # (!\Equal0~0_combout\))) # (!\IA~input_o\ & ((\IB~input_o\ & ((!\ID~input_o\))) # (!\IB~input_o\ & (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \ID~input_o\,
	datac => \IA~input_o\,
	datad => \IB~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y28_N2
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Equal0~0_combout\ & (!\IA~input_o\ & ((\ID~input_o\) # (\IB~input_o\)))) # (!\Equal0~0_combout\ & (\IB~input_o\ & ((\ID~input_o\) # (\IA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \ID~input_o\,
	datac => \IA~input_o\,
	datad => \IB~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X22_Y28_N28
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\IC~input_o\ & (\Mux8~0_combout\)) # (!\IC~input_o\ & ((\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux8~1_combout\,
	datad => \IC~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X22_Y28_N0
\F[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[5]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & (\Mux8~2_combout\)) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & ((\F[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \F[5]$latch~combout\,
	datad => \F[6]~0clkctrl_outclk\,
	combout => \F[5]$latch~combout\);

-- Location: LCCOMB_X22_Y28_N18
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\IC~input_o\ & (\Equal0~0_combout\ & ((!\ID~input_o\) # (!\IB~input_o\)))) # (!\IC~input_o\ & ((\IB~input_o\ & ((\Equal0~0_combout\) # (!\ID~input_o\))) # (!\IB~input_o\ & (\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IB~input_o\,
	datab => \ID~input_o\,
	datac => \Equal0~0_combout\,
	datad => \IC~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = \Mux7~0_combout\ $ (((\IA~input_o\ & ((\ID~input_o\) # (\IC~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID~input_o\,
	datab => \Mux7~0_combout\,
	datac => \IA~input_o\,
	datad => \IC~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X21_Y28_N16
\F[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \F[6]$latch~combout\ = (GLOBAL(\F[6]~0clkctrl_outclk\) & (\Mux7~1_combout\)) # (!GLOBAL(\F[6]~0clkctrl_outclk\) & ((\F[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~1_combout\,
	datac => \F[6]~0clkctrl_outclk\,
	datad => \F[6]$latch~combout\,
	combout => \F[6]$latch~combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;
END structure;


