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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/26/2019 11:16:32"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SPImaster IS
    PORT (
	clk : IN std_logic;
	txdata : IN std_logic_vector(7 DOWNTO 0);
	sck : OUT std_logic;
	mosi : OUT std_logic;
	ss_n : OUT std_logic
	);
END SPImaster;

-- Design Ports Information
-- sck	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mosi	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ss_n	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[7]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[6]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[5]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[4]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[3]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[1]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- txdata[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SPImaster IS
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
SIGNAL ww_txdata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sck : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_ss_n : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \txshift~7_combout\ : std_logic;
SIGNAL \txshift~8_combout\ : std_logic;
SIGNAL \txshift~9_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cntr~1_combout\ : std_logic;
SIGNAL \cntr~2_combout\ : std_logic;
SIGNAL \next.S_DATA_LAST~0_combout\ : std_logic;
SIGNAL \state.S_DATA_LAST~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S_IDLE~regout\ : std_logic;
SIGNAL \txshift[7]~2_combout\ : std_logic;
SIGNAL \cntr~0_combout\ : std_logic;
SIGNAL \next.S_DATA_W~0_combout\ : std_logic;
SIGNAL \state.S_DATA_W~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S_DATA_R~regout\ : std_logic;
SIGNAL \txshift~6_combout\ : std_logic;
SIGNAL \txshift~5_combout\ : std_logic;
SIGNAL \txshift~4_combout\ : std_logic;
SIGNAL \txshift~3_combout\ : std_logic;
SIGNAL \txshift~1_combout\ : std_logic;
SIGNAL \mosi~0_combout\ : std_logic;
SIGNAL txshift : std_logic_vector(7 DOWNTO 0);
SIGNAL cntr : std_logic_vector(2 DOWNTO 0);
SIGNAL \txdata~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state.S_IDLE~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_txdata <= txdata;
sck <= ww_sck;
mosi <= ww_mosi;
ss_n <= ww_ss_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_state.S_IDLE~regout\ <= NOT \state.S_IDLE~regout\;

-- Location: LCFF_X1_Y2_N13
\txshift[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~7_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(2));

-- Location: LCFF_X1_Y2_N31
\txshift[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~8_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(1));

-- Location: LCCOMB_X1_Y2_N12
\txshift~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~7_combout\ = (\state.S_DATA_W~regout\ & ((txshift(1)))) # (!\state.S_DATA_W~regout\ & (\txdata~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_DATA_W~regout\,
	datac => \txdata~combout\(2),
	datad => txshift(1),
	combout => \txshift~7_combout\);

-- Location: LCFF_X2_Y2_N31
\txshift[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(0));

-- Location: LCCOMB_X1_Y2_N30
\txshift~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~8_combout\ = (\state.S_DATA_W~regout\ & ((txshift(0)))) # (!\state.S_DATA_W~regout\ & (\txdata~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_DATA_W~regout\,
	datac => \txdata~combout\(1),
	datad => txshift(0),
	combout => \txshift~8_combout\);

-- Location: LCCOMB_X2_Y2_N30
\txshift~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~9_combout\ = (!\state.S_DATA_W~regout\ & ((\state.S_IDLE~regout\ & ((txshift(0)))) # (!\state.S_IDLE~regout\ & (\txdata~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \txdata~combout\(0),
	datab => \state.S_DATA_W~regout\,
	datac => txshift(0),
	datad => \state.S_IDLE~regout\,
	combout => \txshift~9_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[2]~I\ : cycloneii_io
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
	padio => ww_txdata(2),
	combout => \txdata~combout\(2));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[1]~I\ : cycloneii_io
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
	padio => ww_txdata(1),
	combout => \txdata~combout\(1));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[0]~I\ : cycloneii_io
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
	padio => ww_txdata(0),
	combout => \txdata~combout\(0));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N26
\cntr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cntr~1_combout\ = (!cntr(0) & \state.S_DATA_W~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cntr(0),
	datad => \state.S_DATA_W~regout\,
	combout => \cntr~1_combout\);

-- Location: LCCOMB_X1_Y2_N24
\cntr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cntr~2_combout\ = (\state.S_DATA_W~regout\ & (cntr(1) $ (cntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_DATA_W~regout\,
	datac => cntr(1),
	datad => cntr(0),
	combout => \cntr~2_combout\);

-- Location: LCFF_X1_Y2_N25
\cntr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cntr~2_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cntr(1));

-- Location: LCCOMB_X1_Y2_N4
\next.S_DATA_LAST~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.S_DATA_LAST~0_combout\ = (\state.S_DATA_R~regout\ & (cntr(2) & (cntr(1) & cntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_DATA_R~regout\,
	datab => cntr(2),
	datac => cntr(1),
	datad => cntr(0),
	combout => \next.S_DATA_LAST~0_combout\);

-- Location: LCFF_X1_Y2_N5
\state.S_DATA_LAST\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next.S_DATA_LAST~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_DATA_LAST~regout\);

-- Location: LCCOMB_X1_Y2_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cntr(0) & (cntr(1) & cntr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cntr(0),
	datac => cntr(1),
	datad => cntr(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y2_N8
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.S_DATA_LAST~regout\ & ((!\Equal0~0_combout\) # (!\state.S_DATA_W~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_DATA_W~regout\,
	datac => \state.S_DATA_LAST~regout\,
	datad => \Equal0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X1_Y2_N9
\state.S_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_IDLE~regout\);

-- Location: LCCOMB_X1_Y2_N14
\txshift[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift[7]~2_combout\ = \state.S_IDLE~regout\ $ (!\state.S_DATA_W~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_IDLE~regout\,
	datad => \state.S_DATA_W~regout\,
	combout => \txshift[7]~2_combout\);

-- Location: LCFF_X1_Y2_N27
\cntr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cntr~1_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cntr(0));

-- Location: LCCOMB_X1_Y2_N28
\cntr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cntr~0_combout\ = (\state.S_DATA_W~regout\ & (cntr(2) $ (((cntr(1) & cntr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cntr(1),
	datab => cntr(0),
	datac => cntr(2),
	datad => \state.S_DATA_W~regout\,
	combout => \cntr~0_combout\);

-- Location: LCFF_X1_Y2_N29
\cntr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cntr~0_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cntr(2));

-- Location: LCCOMB_X1_Y2_N18
\next.S_DATA_W~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.S_DATA_W~0_combout\ = (\state.S_DATA_R~regout\ & (((!cntr(0)) # (!cntr(1))) # (!cntr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_DATA_R~regout\,
	datab => cntr(2),
	datac => cntr(1),
	datad => cntr(0),
	combout => \next.S_DATA_W~0_combout\);

-- Location: LCFF_X1_Y2_N19
\state.S_DATA_W\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next.S_DATA_W~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_DATA_W~regout\);

-- Location: LCCOMB_X1_Y2_N16
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\state.S_DATA_W~regout\ & !\Equal0~0_combout\)) # (!\state.S_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_IDLE~regout\,
	datab => \state.S_DATA_W~regout\,
	datad => \Equal0~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X1_Y2_N17
\state.S_DATA_R\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_DATA_R~regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[7]~I\ : cycloneii_io
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
	padio => ww_txdata(7),
	combout => \txdata~combout\(7));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[5]~I\ : cycloneii_io
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
	padio => ww_txdata(5),
	combout => \txdata~combout\(5));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[3]~I\ : cycloneii_io
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
	padio => ww_txdata(3),
	combout => \txdata~combout\(3));

-- Location: LCCOMB_X1_Y2_N6
\txshift~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~6_combout\ = (\state.S_DATA_W~regout\ & (txshift(2))) # (!\state.S_DATA_W~regout\ & ((\txdata~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => txshift(2),
	datab => \txdata~combout\(3),
	datad => \state.S_DATA_W~regout\,
	combout => \txshift~6_combout\);

-- Location: LCFF_X1_Y2_N7
\txshift[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~6_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[4]~I\ : cycloneii_io
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
	padio => ww_txdata(4),
	combout => \txdata~combout\(4));

-- Location: LCCOMB_X1_Y2_N20
\txshift~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~5_combout\ = (\state.S_DATA_W~regout\ & (txshift(3))) # (!\state.S_DATA_W~regout\ & ((\txdata~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => txshift(3),
	datac => \txdata~combout\(4),
	datad => \state.S_DATA_W~regout\,
	combout => \txshift~5_combout\);

-- Location: LCFF_X1_Y2_N21
\txshift[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~5_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(4));

-- Location: LCCOMB_X1_Y2_N10
\txshift~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~4_combout\ = (\state.S_DATA_W~regout\ & ((txshift(4)))) # (!\state.S_DATA_W~regout\ & (\txdata~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \txdata~combout\(5),
	datac => txshift(4),
	datad => \state.S_DATA_W~regout\,
	combout => \txshift~4_combout\);

-- Location: LCFF_X1_Y2_N11
\txshift[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~4_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\txdata[6]~I\ : cycloneii_io
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
	padio => ww_txdata(6),
	combout => \txdata~combout\(6));

-- Location: LCCOMB_X1_Y2_N0
\txshift~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~3_combout\ = (\state.S_DATA_W~regout\ & (txshift(5))) # (!\state.S_DATA_W~regout\ & ((\txdata~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => txshift(5),
	datac => \txdata~combout\(6),
	datad => \state.S_DATA_W~regout\,
	combout => \txshift~3_combout\);

-- Location: LCFF_X1_Y2_N1
\txshift[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~3_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(6));

-- Location: LCCOMB_X1_Y2_N22
\txshift~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \txshift~1_combout\ = (\state.S_DATA_W~regout\ & ((txshift(6)))) # (!\state.S_DATA_W~regout\ & (\txdata~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_DATA_W~regout\,
	datac => \txdata~combout\(7),
	datad => txshift(6),
	combout => \txshift~1_combout\);

-- Location: LCFF_X1_Y2_N23
\txshift[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \txshift~1_combout\,
	ena => \txshift[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => txshift(7));

-- Location: LCCOMB_X2_Y2_N28
\mosi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mosi~0_combout\ = (\state.S_IDLE~regout\ & txshift(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_IDLE~regout\,
	datad => txshift(7),
	combout => \mosi~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sck~I\ : cycloneii_io
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
	datain => \state.S_DATA_R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sck);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mosi~I\ : cycloneii_io
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
	datain => \mosi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mosi);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ss_n~I\ : cycloneii_io
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
	datain => \ALT_INV_state.S_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ss_n);
END structure;


