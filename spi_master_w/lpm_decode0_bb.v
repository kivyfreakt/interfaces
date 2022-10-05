// megafunction wizard: %LPM_DECODE%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_DECODE 

// ============================================================
// File Name: lpm_decode0.v
// Megafunction Name(s):
// 			LPM_DECODE
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.0 Build 162 10/23/2013 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module lpm_decode0 (
	data,
	eq9);

	input	[3:0]  data;
	output	  eq9;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: BaseDec NUMERIC "1"
// Retrieval info: PRIVATE: EnableInput NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: eq0 NUMERIC "0"
// Retrieval info: PRIVATE: eq1 NUMERIC "0"
// Retrieval info: PRIVATE: eq10 NUMERIC "0"
// Retrieval info: PRIVATE: eq11 NUMERIC "0"
// Retrieval info: PRIVATE: eq12 NUMERIC "0"
// Retrieval info: PRIVATE: eq13 NUMERIC "0"
// Retrieval info: PRIVATE: eq14 NUMERIC "0"
// Retrieval info: PRIVATE: eq15 NUMERIC "0"
// Retrieval info: PRIVATE: eq2 NUMERIC "0"
// Retrieval info: PRIVATE: eq3 NUMERIC "0"
// Retrieval info: PRIVATE: eq4 NUMERIC "0"
// Retrieval info: PRIVATE: eq5 NUMERIC "0"
// Retrieval info: PRIVATE: eq6 NUMERIC "0"
// Retrieval info: PRIVATE: eq7 NUMERIC "0"
// Retrieval info: PRIVATE: eq8 NUMERIC "0"
// Retrieval info: PRIVATE: eq9 NUMERIC "1"
// Retrieval info: PRIVATE: nBit NUMERIC "4"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DECODES NUMERIC "16"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DECODE"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
// Retrieval info: USED_PORT: @eq 0 0 16 0 OUTPUT NODEFVAL "@eq[15..0]"
// Retrieval info: USED_PORT: data 0 0 4 0 INPUT NODEFVAL "data[3..0]"
// Retrieval info: USED_PORT: eq9 0 0 0 0 OUTPUT NODEFVAL "eq9"
// Retrieval info: CONNECT: @data 0 0 4 0 data 0 0 4 0
// Retrieval info: CONNECT: eq9 0 0 0 0 @eq 0 0 1 9
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode0_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
