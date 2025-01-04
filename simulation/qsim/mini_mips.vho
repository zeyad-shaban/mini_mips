-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/04/2025 21:09:47"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mini_mips IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	output : OUT std_logic_vector(31 DOWNTO 0);
	debug_pc : OUT std_logic_vector(31 DOWNTO 0);
	debug_ir : OUT std_logic_vector(31 DOWNTO 0);
	debug_opcode : OUT std_logic_vector(5 DOWNTO 0);
	debug_immediate : OUT std_logic_vector(31 DOWNTO 0);
	debug_mem_data_out : OUT std_logic_vector(31 DOWNTO 0);
	debug_ar : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_data_in : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rs : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rt : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rd : OUT std_logic_vector(31 DOWNTO 0);
	debug_reg_file_ld : OUT std_logic
	);
END mini_mips;

-- Design Ports Information
-- output[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[10]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[17]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[18]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[20]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[21]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[24]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[25]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[26]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[27]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[28]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[29]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[30]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[31]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[3]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[8]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[15]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[17]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[18]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[20]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[22]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[25]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[26]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[27]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[28]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[29]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[30]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[31]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[7]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[12]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[17]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[19]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[20]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[21]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[23]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[24]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[25]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[26]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[27]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[28]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[30]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[31]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[8]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[9]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[12]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[13]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[15]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[16]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[17]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[18]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[20]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[21]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[22]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[25]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[27]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[28]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[29]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[31]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[11]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[14]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[16]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[17]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[19]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[20]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[21]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[22]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[23]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[24]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[25]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[26]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[27]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[28]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[29]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[30]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[31]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[8]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[9]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[12]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[13]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[14]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[15]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[16]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[17]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[18]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[19]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[20]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[21]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[22]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[23]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[24]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[25]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[27]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[28]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[29]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[30]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[31]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[10]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[11]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[12]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[14]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[17]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[18]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[19]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[20]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[21]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[22]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[23]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[24]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[25]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[28]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[29]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[30]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[31]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[8]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[9]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[10]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[11]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[17]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[18]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[19]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[20]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[21]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[23]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[25]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[27]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[28]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[29]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[30]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[31]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[7]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[8]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[9]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[10]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[12]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[15]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[16]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[19]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[20]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[21]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[22]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[23]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[24]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[25]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[26]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[28]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[29]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[30]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[31]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg_file_ld	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_mips IS
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
SIGNAL ww_clr : std_logic;
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_ir : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_mem_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_ar : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_bus_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_bus_reg_rs : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_bus_reg_rt : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_bus_reg_rd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_reg_file_ld : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \output[16]~output_o\ : std_logic;
SIGNAL \output[17]~output_o\ : std_logic;
SIGNAL \output[18]~output_o\ : std_logic;
SIGNAL \output[19]~output_o\ : std_logic;
SIGNAL \output[20]~output_o\ : std_logic;
SIGNAL \output[21]~output_o\ : std_logic;
SIGNAL \output[22]~output_o\ : std_logic;
SIGNAL \output[23]~output_o\ : std_logic;
SIGNAL \output[24]~output_o\ : std_logic;
SIGNAL \output[25]~output_o\ : std_logic;
SIGNAL \output[26]~output_o\ : std_logic;
SIGNAL \output[27]~output_o\ : std_logic;
SIGNAL \output[28]~output_o\ : std_logic;
SIGNAL \output[29]~output_o\ : std_logic;
SIGNAL \output[30]~output_o\ : std_logic;
SIGNAL \output[31]~output_o\ : std_logic;
SIGNAL \debug_pc[0]~output_o\ : std_logic;
SIGNAL \debug_pc[1]~output_o\ : std_logic;
SIGNAL \debug_pc[2]~output_o\ : std_logic;
SIGNAL \debug_pc[3]~output_o\ : std_logic;
SIGNAL \debug_pc[4]~output_o\ : std_logic;
SIGNAL \debug_pc[5]~output_o\ : std_logic;
SIGNAL \debug_pc[6]~output_o\ : std_logic;
SIGNAL \debug_pc[7]~output_o\ : std_logic;
SIGNAL \debug_pc[8]~output_o\ : std_logic;
SIGNAL \debug_pc[9]~output_o\ : std_logic;
SIGNAL \debug_pc[10]~output_o\ : std_logic;
SIGNAL \debug_pc[11]~output_o\ : std_logic;
SIGNAL \debug_pc[12]~output_o\ : std_logic;
SIGNAL \debug_pc[13]~output_o\ : std_logic;
SIGNAL \debug_pc[14]~output_o\ : std_logic;
SIGNAL \debug_pc[15]~output_o\ : std_logic;
SIGNAL \debug_pc[16]~output_o\ : std_logic;
SIGNAL \debug_pc[17]~output_o\ : std_logic;
SIGNAL \debug_pc[18]~output_o\ : std_logic;
SIGNAL \debug_pc[19]~output_o\ : std_logic;
SIGNAL \debug_pc[20]~output_o\ : std_logic;
SIGNAL \debug_pc[21]~output_o\ : std_logic;
SIGNAL \debug_pc[22]~output_o\ : std_logic;
SIGNAL \debug_pc[23]~output_o\ : std_logic;
SIGNAL \debug_pc[24]~output_o\ : std_logic;
SIGNAL \debug_pc[25]~output_o\ : std_logic;
SIGNAL \debug_pc[26]~output_o\ : std_logic;
SIGNAL \debug_pc[27]~output_o\ : std_logic;
SIGNAL \debug_pc[28]~output_o\ : std_logic;
SIGNAL \debug_pc[29]~output_o\ : std_logic;
SIGNAL \debug_pc[30]~output_o\ : std_logic;
SIGNAL \debug_pc[31]~output_o\ : std_logic;
SIGNAL \debug_ir[0]~output_o\ : std_logic;
SIGNAL \debug_ir[1]~output_o\ : std_logic;
SIGNAL \debug_ir[2]~output_o\ : std_logic;
SIGNAL \debug_ir[3]~output_o\ : std_logic;
SIGNAL \debug_ir[4]~output_o\ : std_logic;
SIGNAL \debug_ir[5]~output_o\ : std_logic;
SIGNAL \debug_ir[6]~output_o\ : std_logic;
SIGNAL \debug_ir[7]~output_o\ : std_logic;
SIGNAL \debug_ir[8]~output_o\ : std_logic;
SIGNAL \debug_ir[9]~output_o\ : std_logic;
SIGNAL \debug_ir[10]~output_o\ : std_logic;
SIGNAL \debug_ir[11]~output_o\ : std_logic;
SIGNAL \debug_ir[12]~output_o\ : std_logic;
SIGNAL \debug_ir[13]~output_o\ : std_logic;
SIGNAL \debug_ir[14]~output_o\ : std_logic;
SIGNAL \debug_ir[15]~output_o\ : std_logic;
SIGNAL \debug_ir[16]~output_o\ : std_logic;
SIGNAL \debug_ir[17]~output_o\ : std_logic;
SIGNAL \debug_ir[18]~output_o\ : std_logic;
SIGNAL \debug_ir[19]~output_o\ : std_logic;
SIGNAL \debug_ir[20]~output_o\ : std_logic;
SIGNAL \debug_ir[21]~output_o\ : std_logic;
SIGNAL \debug_ir[22]~output_o\ : std_logic;
SIGNAL \debug_ir[23]~output_o\ : std_logic;
SIGNAL \debug_ir[24]~output_o\ : std_logic;
SIGNAL \debug_ir[25]~output_o\ : std_logic;
SIGNAL \debug_ir[26]~output_o\ : std_logic;
SIGNAL \debug_ir[27]~output_o\ : std_logic;
SIGNAL \debug_ir[28]~output_o\ : std_logic;
SIGNAL \debug_ir[29]~output_o\ : std_logic;
SIGNAL \debug_ir[30]~output_o\ : std_logic;
SIGNAL \debug_ir[31]~output_o\ : std_logic;
SIGNAL \debug_opcode[0]~output_o\ : std_logic;
SIGNAL \debug_opcode[1]~output_o\ : std_logic;
SIGNAL \debug_opcode[2]~output_o\ : std_logic;
SIGNAL \debug_opcode[3]~output_o\ : std_logic;
SIGNAL \debug_opcode[4]~output_o\ : std_logic;
SIGNAL \debug_opcode[5]~output_o\ : std_logic;
SIGNAL \debug_immediate[0]~output_o\ : std_logic;
SIGNAL \debug_immediate[1]~output_o\ : std_logic;
SIGNAL \debug_immediate[2]~output_o\ : std_logic;
SIGNAL \debug_immediate[3]~output_o\ : std_logic;
SIGNAL \debug_immediate[4]~output_o\ : std_logic;
SIGNAL \debug_immediate[5]~output_o\ : std_logic;
SIGNAL \debug_immediate[6]~output_o\ : std_logic;
SIGNAL \debug_immediate[7]~output_o\ : std_logic;
SIGNAL \debug_immediate[8]~output_o\ : std_logic;
SIGNAL \debug_immediate[9]~output_o\ : std_logic;
SIGNAL \debug_immediate[10]~output_o\ : std_logic;
SIGNAL \debug_immediate[11]~output_o\ : std_logic;
SIGNAL \debug_immediate[12]~output_o\ : std_logic;
SIGNAL \debug_immediate[13]~output_o\ : std_logic;
SIGNAL \debug_immediate[14]~output_o\ : std_logic;
SIGNAL \debug_immediate[15]~output_o\ : std_logic;
SIGNAL \debug_immediate[16]~output_o\ : std_logic;
SIGNAL \debug_immediate[17]~output_o\ : std_logic;
SIGNAL \debug_immediate[18]~output_o\ : std_logic;
SIGNAL \debug_immediate[19]~output_o\ : std_logic;
SIGNAL \debug_immediate[20]~output_o\ : std_logic;
SIGNAL \debug_immediate[21]~output_o\ : std_logic;
SIGNAL \debug_immediate[22]~output_o\ : std_logic;
SIGNAL \debug_immediate[23]~output_o\ : std_logic;
SIGNAL \debug_immediate[24]~output_o\ : std_logic;
SIGNAL \debug_immediate[25]~output_o\ : std_logic;
SIGNAL \debug_immediate[26]~output_o\ : std_logic;
SIGNAL \debug_immediate[27]~output_o\ : std_logic;
SIGNAL \debug_immediate[28]~output_o\ : std_logic;
SIGNAL \debug_immediate[29]~output_o\ : std_logic;
SIGNAL \debug_immediate[30]~output_o\ : std_logic;
SIGNAL \debug_immediate[31]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[0]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[1]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[2]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[3]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[4]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[5]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[6]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[7]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[8]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[9]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[10]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[11]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[12]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[13]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[14]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[15]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[16]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[17]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[18]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[19]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[20]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[21]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[22]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[23]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[24]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[25]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[26]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[27]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[28]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[29]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[30]~output_o\ : std_logic;
SIGNAL \debug_mem_data_out[31]~output_o\ : std_logic;
SIGNAL \debug_ar[0]~output_o\ : std_logic;
SIGNAL \debug_ar[1]~output_o\ : std_logic;
SIGNAL \debug_ar[2]~output_o\ : std_logic;
SIGNAL \debug_ar[3]~output_o\ : std_logic;
SIGNAL \debug_ar[4]~output_o\ : std_logic;
SIGNAL \debug_ar[5]~output_o\ : std_logic;
SIGNAL \debug_ar[6]~output_o\ : std_logic;
SIGNAL \debug_ar[7]~output_o\ : std_logic;
SIGNAL \debug_ar[8]~output_o\ : std_logic;
SIGNAL \debug_ar[9]~output_o\ : std_logic;
SIGNAL \debug_ar[10]~output_o\ : std_logic;
SIGNAL \debug_ar[11]~output_o\ : std_logic;
SIGNAL \debug_ar[12]~output_o\ : std_logic;
SIGNAL \debug_ar[13]~output_o\ : std_logic;
SIGNAL \debug_ar[14]~output_o\ : std_logic;
SIGNAL \debug_ar[15]~output_o\ : std_logic;
SIGNAL \debug_ar[16]~output_o\ : std_logic;
SIGNAL \debug_ar[17]~output_o\ : std_logic;
SIGNAL \debug_ar[18]~output_o\ : std_logic;
SIGNAL \debug_ar[19]~output_o\ : std_logic;
SIGNAL \debug_ar[20]~output_o\ : std_logic;
SIGNAL \debug_ar[21]~output_o\ : std_logic;
SIGNAL \debug_ar[22]~output_o\ : std_logic;
SIGNAL \debug_ar[23]~output_o\ : std_logic;
SIGNAL \debug_ar[24]~output_o\ : std_logic;
SIGNAL \debug_ar[25]~output_o\ : std_logic;
SIGNAL \debug_ar[26]~output_o\ : std_logic;
SIGNAL \debug_ar[27]~output_o\ : std_logic;
SIGNAL \debug_ar[28]~output_o\ : std_logic;
SIGNAL \debug_ar[29]~output_o\ : std_logic;
SIGNAL \debug_ar[30]~output_o\ : std_logic;
SIGNAL \debug_ar[31]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[0]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[1]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[2]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[3]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[4]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[5]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[6]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[7]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[8]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[9]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[10]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[11]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[12]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[13]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[14]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[15]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[16]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[17]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[18]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[19]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[20]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[21]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[22]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[23]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[24]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[25]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[26]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[27]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[28]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[29]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[30]~output_o\ : std_logic;
SIGNAL \debug_bus_data_in[31]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[0]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[1]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[2]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[3]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[4]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[5]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[6]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[7]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[8]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[9]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[10]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[11]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[12]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[13]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[14]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[15]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[16]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[17]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[18]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[19]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[20]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[21]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[22]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[23]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[24]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[25]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[26]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[27]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[28]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[29]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[30]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rs[31]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[0]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[1]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[2]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[3]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[4]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[5]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[6]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[7]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[8]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[9]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[10]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[11]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[12]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[13]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[14]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[15]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[16]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[17]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[18]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[19]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[20]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[21]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[22]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[23]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[24]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[25]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[26]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[27]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[28]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[29]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[30]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rt[31]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[0]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[1]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[2]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[3]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[4]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[5]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[6]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[7]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[8]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[9]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[10]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[11]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[12]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[13]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[14]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[15]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[16]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[17]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[18]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[19]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[20]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[21]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[22]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[23]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[24]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[25]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[26]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[27]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[28]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[29]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[30]~output_o\ : std_logic;
SIGNAL \debug_bus_reg_rd[31]~output_o\ : std_logic;
SIGNAL \debug_reg_file_ld~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc[0]~32_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \output[0]~reg0feeder_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \pc[0]~33\ : std_logic;
SIGNAL \pc[1]~34_combout\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \pc[1]~35\ : std_logic;
SIGNAL \pc[2]~36_combout\ : std_logic;
SIGNAL \output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \pc[2]~37\ : std_logic;
SIGNAL \pc[3]~38_combout\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \pc[3]~39\ : std_logic;
SIGNAL \pc[4]~40_combout\ : std_logic;
SIGNAL \output[4]~reg0feeder_combout\ : std_logic;
SIGNAL \output[4]~reg0_q\ : std_logic;
SIGNAL \pc[4]~41\ : std_logic;
SIGNAL \pc[5]~42_combout\ : std_logic;
SIGNAL \output[5]~reg0feeder_combout\ : std_logic;
SIGNAL \output[5]~reg0_q\ : std_logic;
SIGNAL \pc[5]~43\ : std_logic;
SIGNAL \pc[6]~44_combout\ : std_logic;
SIGNAL \output[6]~reg0feeder_combout\ : std_logic;
SIGNAL \output[6]~reg0_q\ : std_logic;
SIGNAL \pc[6]~45\ : std_logic;
SIGNAL \pc[7]~46_combout\ : std_logic;
SIGNAL \output[7]~reg0feeder_combout\ : std_logic;
SIGNAL \output[7]~reg0_q\ : std_logic;
SIGNAL \pc[7]~47\ : std_logic;
SIGNAL \pc[8]~48_combout\ : std_logic;
SIGNAL \output[8]~reg0feeder_combout\ : std_logic;
SIGNAL \output[8]~reg0_q\ : std_logic;
SIGNAL \pc[8]~49\ : std_logic;
SIGNAL \pc[9]~50_combout\ : std_logic;
SIGNAL \output[9]~reg0feeder_combout\ : std_logic;
SIGNAL \output[9]~reg0_q\ : std_logic;
SIGNAL \pc[9]~51\ : std_logic;
SIGNAL \pc[10]~52_combout\ : std_logic;
SIGNAL \output[10]~reg0feeder_combout\ : std_logic;
SIGNAL \output[10]~reg0_q\ : std_logic;
SIGNAL \pc[10]~53\ : std_logic;
SIGNAL \pc[11]~54_combout\ : std_logic;
SIGNAL \output[11]~reg0feeder_combout\ : std_logic;
SIGNAL \output[11]~reg0_q\ : std_logic;
SIGNAL \pc[11]~55\ : std_logic;
SIGNAL \pc[12]~56_combout\ : std_logic;
SIGNAL \output[12]~reg0feeder_combout\ : std_logic;
SIGNAL \output[12]~reg0_q\ : std_logic;
SIGNAL \pc[12]~57\ : std_logic;
SIGNAL \pc[13]~58_combout\ : std_logic;
SIGNAL \output[13]~reg0feeder_combout\ : std_logic;
SIGNAL \output[13]~reg0_q\ : std_logic;
SIGNAL \pc[13]~59\ : std_logic;
SIGNAL \pc[14]~60_combout\ : std_logic;
SIGNAL \output[14]~reg0feeder_combout\ : std_logic;
SIGNAL \output[14]~reg0_q\ : std_logic;
SIGNAL \pc[14]~61\ : std_logic;
SIGNAL \pc[15]~62_combout\ : std_logic;
SIGNAL \output[15]~reg0feeder_combout\ : std_logic;
SIGNAL \output[15]~reg0_q\ : std_logic;
SIGNAL \pc[15]~63\ : std_logic;
SIGNAL \pc[16]~64_combout\ : std_logic;
SIGNAL \output[16]~reg0feeder_combout\ : std_logic;
SIGNAL \output[16]~reg0_q\ : std_logic;
SIGNAL \pc[16]~65\ : std_logic;
SIGNAL \pc[17]~66_combout\ : std_logic;
SIGNAL \output[17]~reg0feeder_combout\ : std_logic;
SIGNAL \output[17]~reg0_q\ : std_logic;
SIGNAL \pc[17]~67\ : std_logic;
SIGNAL \pc[18]~68_combout\ : std_logic;
SIGNAL \output[18]~reg0feeder_combout\ : std_logic;
SIGNAL \output[18]~reg0_q\ : std_logic;
SIGNAL \pc[18]~69\ : std_logic;
SIGNAL \pc[19]~70_combout\ : std_logic;
SIGNAL \output[19]~reg0feeder_combout\ : std_logic;
SIGNAL \output[19]~reg0_q\ : std_logic;
SIGNAL \pc[19]~71\ : std_logic;
SIGNAL \pc[20]~72_combout\ : std_logic;
SIGNAL \output[20]~reg0feeder_combout\ : std_logic;
SIGNAL \output[20]~reg0_q\ : std_logic;
SIGNAL \pc[20]~73\ : std_logic;
SIGNAL \pc[21]~74_combout\ : std_logic;
SIGNAL \output[21]~reg0feeder_combout\ : std_logic;
SIGNAL \output[21]~reg0_q\ : std_logic;
SIGNAL \pc[21]~75\ : std_logic;
SIGNAL \pc[22]~76_combout\ : std_logic;
SIGNAL \output[22]~reg0feeder_combout\ : std_logic;
SIGNAL \output[22]~reg0_q\ : std_logic;
SIGNAL \pc[22]~77\ : std_logic;
SIGNAL \pc[23]~78_combout\ : std_logic;
SIGNAL \output[23]~reg0feeder_combout\ : std_logic;
SIGNAL \output[23]~reg0_q\ : std_logic;
SIGNAL \pc[23]~79\ : std_logic;
SIGNAL \pc[24]~80_combout\ : std_logic;
SIGNAL \output[24]~reg0feeder_combout\ : std_logic;
SIGNAL \output[24]~reg0_q\ : std_logic;
SIGNAL \pc[24]~81\ : std_logic;
SIGNAL \pc[25]~82_combout\ : std_logic;
SIGNAL \output[25]~reg0feeder_combout\ : std_logic;
SIGNAL \output[25]~reg0_q\ : std_logic;
SIGNAL \pc[25]~83\ : std_logic;
SIGNAL \pc[26]~84_combout\ : std_logic;
SIGNAL \output[26]~reg0feeder_combout\ : std_logic;
SIGNAL \output[26]~reg0_q\ : std_logic;
SIGNAL \pc[26]~85\ : std_logic;
SIGNAL \pc[27]~86_combout\ : std_logic;
SIGNAL \output[27]~reg0feeder_combout\ : std_logic;
SIGNAL \output[27]~reg0_q\ : std_logic;
SIGNAL \pc[27]~87\ : std_logic;
SIGNAL \pc[28]~88_combout\ : std_logic;
SIGNAL \output[28]~reg0feeder_combout\ : std_logic;
SIGNAL \output[28]~reg0_q\ : std_logic;
SIGNAL \pc[28]~89\ : std_logic;
SIGNAL \pc[29]~90_combout\ : std_logic;
SIGNAL \output[29]~reg0feeder_combout\ : std_logic;
SIGNAL \output[29]~reg0_q\ : std_logic;
SIGNAL \pc[29]~91\ : std_logic;
SIGNAL \pc[30]~92_combout\ : std_logic;
SIGNAL \output[30]~reg0feeder_combout\ : std_logic;
SIGNAL \output[30]~reg0_q\ : std_logic;
SIGNAL \pc[30]~93\ : std_logic;
SIGNAL \pc[31]~94_combout\ : std_logic;
SIGNAL \output[31]~reg0feeder_combout\ : std_logic;
SIGNAL \output[31]~reg0_q\ : std_logic;
SIGNAL pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clr~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
output <= ww_output;
debug_pc <= ww_debug_pc;
debug_ir <= ww_debug_ir;
debug_opcode <= ww_debug_opcode;
debug_immediate <= ww_debug_immediate;
debug_mem_data_out <= ww_debug_mem_data_out;
debug_ar <= ww_debug_ar;
debug_bus_data_in <= ww_debug_bus_data_in;
debug_bus_reg_rs <= ww_debug_bus_reg_rs;
debug_bus_reg_rt <= ww_debug_bus_reg_rt;
debug_bus_reg_rd <= ww_debug_bus_reg_rd;
debug_reg_file_ld <= ww_debug_reg_file_ld;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N9
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]~reg0_q\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[5]~reg0_q\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[6]~reg0_q\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[7]~reg0_q\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[8]~reg0_q\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[9]~reg0_q\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[10]~reg0_q\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[11]~reg0_q\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[12]~reg0_q\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[13]~reg0_q\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[14]~reg0_q\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[15]~reg0_q\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[16]~reg0_q\,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[17]~reg0_q\,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[18]~reg0_q\,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[19]~reg0_q\,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[20]~reg0_q\,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[21]~reg0_q\,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[22]~reg0_q\,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[23]~reg0_q\,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[24]~reg0_q\,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[25]~reg0_q\,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[26]~reg0_q\,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[27]~reg0_q\,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[28]~reg0_q\,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[29]~reg0_q\,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[30]~reg0_q\,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[31]~reg0_q\,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\debug_pc[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(0),
	devoe => ww_devoe,
	o => \debug_pc[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\debug_pc[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(1),
	devoe => ww_devoe,
	o => \debug_pc[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\debug_pc[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(2),
	devoe => ww_devoe,
	o => \debug_pc[2]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\debug_pc[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(3),
	devoe => ww_devoe,
	o => \debug_pc[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\debug_pc[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(4),
	devoe => ww_devoe,
	o => \debug_pc[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\debug_pc[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(5),
	devoe => ww_devoe,
	o => \debug_pc[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\debug_pc[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(6),
	devoe => ww_devoe,
	o => \debug_pc[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\debug_pc[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(7),
	devoe => ww_devoe,
	o => \debug_pc[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\debug_pc[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(8),
	devoe => ww_devoe,
	o => \debug_pc[8]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\debug_pc[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(9),
	devoe => ww_devoe,
	o => \debug_pc[9]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\debug_pc[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(10),
	devoe => ww_devoe,
	o => \debug_pc[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\debug_pc[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(11),
	devoe => ww_devoe,
	o => \debug_pc[11]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\debug_pc[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(12),
	devoe => ww_devoe,
	o => \debug_pc[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\debug_pc[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(13),
	devoe => ww_devoe,
	o => \debug_pc[13]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\debug_pc[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(14),
	devoe => ww_devoe,
	o => \debug_pc[14]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\debug_pc[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(15),
	devoe => ww_devoe,
	o => \debug_pc[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\debug_pc[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(16),
	devoe => ww_devoe,
	o => \debug_pc[16]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\debug_pc[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(17),
	devoe => ww_devoe,
	o => \debug_pc[17]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\debug_pc[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(18),
	devoe => ww_devoe,
	o => \debug_pc[18]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\debug_pc[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(19),
	devoe => ww_devoe,
	o => \debug_pc[19]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\debug_pc[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(20),
	devoe => ww_devoe,
	o => \debug_pc[20]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\debug_pc[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(21),
	devoe => ww_devoe,
	o => \debug_pc[21]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\debug_pc[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(22),
	devoe => ww_devoe,
	o => \debug_pc[22]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\debug_pc[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(23),
	devoe => ww_devoe,
	o => \debug_pc[23]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\debug_pc[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(24),
	devoe => ww_devoe,
	o => \debug_pc[24]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\debug_pc[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(25),
	devoe => ww_devoe,
	o => \debug_pc[25]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\debug_pc[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(26),
	devoe => ww_devoe,
	o => \debug_pc[26]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\debug_pc[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(27),
	devoe => ww_devoe,
	o => \debug_pc[27]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\debug_pc[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(28),
	devoe => ww_devoe,
	o => \debug_pc[28]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\debug_pc[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(29),
	devoe => ww_devoe,
	o => \debug_pc[29]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\debug_pc[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(30),
	devoe => ww_devoe,
	o => \debug_pc[30]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\debug_pc[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pc(31),
	devoe => ww_devoe,
	o => \debug_pc[31]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\debug_ir[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\debug_ir[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\debug_ir[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[2]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\debug_ir[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\debug_ir[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[4]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\debug_ir[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\debug_ir[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\debug_ir[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\debug_ir[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\debug_ir[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\debug_ir[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[10]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\debug_ir[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[11]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\debug_ir[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[12]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\debug_ir[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\debug_ir[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\debug_ir[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\debug_ir[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[16]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\debug_ir[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[17]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\debug_ir[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[18]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\debug_ir[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[19]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\debug_ir[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[20]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\debug_ir[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[21]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\debug_ir[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[22]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\debug_ir[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[23]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\debug_ir[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[24]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\debug_ir[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[25]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\debug_ir[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[26]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\debug_ir[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[27]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\debug_ir[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[28]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\debug_ir[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[29]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\debug_ir[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\debug_ir[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ir[31]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\debug_opcode[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\debug_opcode[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\debug_opcode[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\debug_opcode[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\debug_opcode[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\debug_opcode[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_opcode[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\debug_immediate[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\debug_immediate[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\debug_immediate[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[2]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\debug_immediate[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\debug_immediate[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\debug_immediate[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\debug_immediate[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\debug_immediate[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[7]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\debug_immediate[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[8]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\debug_immediate[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[9]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\debug_immediate[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[10]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\debug_immediate[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[11]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\debug_immediate[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[12]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\debug_immediate[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[13]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\debug_immediate[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\debug_immediate[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\debug_immediate[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\debug_immediate[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[17]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\debug_immediate[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[18]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\debug_immediate[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\debug_immediate[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\debug_immediate[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[21]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\debug_immediate[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[22]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\debug_immediate[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\debug_immediate[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[24]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\debug_immediate[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\debug_immediate[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[26]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\debug_immediate[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[27]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\debug_immediate[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[28]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\debug_immediate[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[29]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\debug_immediate[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[30]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\debug_immediate[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_immediate[31]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\debug_mem_data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\debug_mem_data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\debug_mem_data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\debug_mem_data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\debug_mem_data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\debug_mem_data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\debug_mem_data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\debug_mem_data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\debug_mem_data_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[8]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\debug_mem_data_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\debug_mem_data_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[10]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\debug_mem_data_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[11]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\debug_mem_data_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[12]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\debug_mem_data_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[13]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\debug_mem_data_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\debug_mem_data_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[15]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\debug_mem_data_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[16]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\debug_mem_data_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[17]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\debug_mem_data_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[18]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\debug_mem_data_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[19]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\debug_mem_data_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[20]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\debug_mem_data_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[21]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\debug_mem_data_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\debug_mem_data_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\debug_mem_data_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[24]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\debug_mem_data_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[25]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\debug_mem_data_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[26]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\debug_mem_data_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[27]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\debug_mem_data_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[28]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\debug_mem_data_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[29]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\debug_mem_data_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[30]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\debug_mem_data_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_mem_data_out[31]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\debug_ar[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\debug_ar[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\debug_ar[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\debug_ar[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\debug_ar[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\debug_ar[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\debug_ar[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\debug_ar[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\debug_ar[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\debug_ar[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[9]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\debug_ar[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\debug_ar[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\debug_ar[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[12]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\debug_ar[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[13]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\debug_ar[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[14]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\debug_ar[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\debug_ar[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\debug_ar[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[17]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\debug_ar[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[18]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\debug_ar[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[19]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\debug_ar[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\debug_ar[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[21]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\debug_ar[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[22]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\debug_ar[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[23]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\debug_ar[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[24]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\debug_ar[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[25]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\debug_ar[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[26]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\debug_ar[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[27]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\debug_ar[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[28]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\debug_ar[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[29]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\debug_ar[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[30]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\debug_ar[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_ar[31]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\debug_bus_data_in[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\debug_bus_data_in[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\debug_bus_data_in[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\debug_bus_data_in[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\debug_bus_data_in[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\debug_bus_data_in[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[5]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\debug_bus_data_in[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[6]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\debug_bus_data_in[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\debug_bus_data_in[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[8]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\debug_bus_data_in[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[9]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\debug_bus_data_in[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[10]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\debug_bus_data_in[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\debug_bus_data_in[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\debug_bus_data_in[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[13]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\debug_bus_data_in[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\debug_bus_data_in[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\debug_bus_data_in[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[16]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\debug_bus_data_in[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[17]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\debug_bus_data_in[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[18]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\debug_bus_data_in[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[19]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\debug_bus_data_in[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[20]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\debug_bus_data_in[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[21]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\debug_bus_data_in[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[22]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\debug_bus_data_in[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[23]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\debug_bus_data_in[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[24]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\debug_bus_data_in[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[25]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\debug_bus_data_in[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[26]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\debug_bus_data_in[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[27]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\debug_bus_data_in[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[28]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\debug_bus_data_in[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[29]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\debug_bus_data_in[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[30]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\debug_bus_data_in[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_data_in[31]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\debug_bus_reg_rs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\debug_bus_reg_rs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\debug_bus_reg_rs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\debug_bus_reg_rs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\debug_bus_reg_rs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[4]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\debug_bus_reg_rs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\debug_bus_reg_rs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\debug_bus_reg_rs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\debug_bus_reg_rs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\debug_bus_reg_rs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[9]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\debug_bus_reg_rs[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[10]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\debug_bus_reg_rs[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[11]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\debug_bus_reg_rs[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\debug_bus_reg_rs[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[13]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\debug_bus_reg_rs[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\debug_bus_reg_rs[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[15]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\debug_bus_reg_rs[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[16]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\debug_bus_reg_rs[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[17]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\debug_bus_reg_rs[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[18]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\debug_bus_reg_rs[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\debug_bus_reg_rs[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[20]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\debug_bus_reg_rs[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[21]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\debug_bus_reg_rs[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[22]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\debug_bus_reg_rs[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[23]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\debug_bus_reg_rs[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\debug_bus_reg_rs[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\debug_bus_reg_rs[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[26]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\debug_bus_reg_rs[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[27]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\debug_bus_reg_rs[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[28]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\debug_bus_reg_rs[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[29]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\debug_bus_reg_rs[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[30]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\debug_bus_reg_rs[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[31]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\debug_bus_reg_rt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\debug_bus_reg_rt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\debug_bus_reg_rt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\debug_bus_reg_rt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\debug_bus_reg_rt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\debug_bus_reg_rt[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\debug_bus_reg_rt[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\debug_bus_reg_rt[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\debug_bus_reg_rt[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[8]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\debug_bus_reg_rt[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\debug_bus_reg_rt[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\debug_bus_reg_rt[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[11]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\debug_bus_reg_rt[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[12]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\debug_bus_reg_rt[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\debug_bus_reg_rt[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[14]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\debug_bus_reg_rt[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[15]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\debug_bus_reg_rt[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[16]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\debug_bus_reg_rt[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[17]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\debug_bus_reg_rt[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[18]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\debug_bus_reg_rt[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[19]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\debug_bus_reg_rt[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[20]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\debug_bus_reg_rt[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[21]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\debug_bus_reg_rt[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[22]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\debug_bus_reg_rt[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[23]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\debug_bus_reg_rt[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[24]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\debug_bus_reg_rt[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[25]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\debug_bus_reg_rt[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[26]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\debug_bus_reg_rt[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[27]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\debug_bus_reg_rt[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[28]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\debug_bus_reg_rt[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[29]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\debug_bus_reg_rt[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[30]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\debug_bus_reg_rt[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[31]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\debug_bus_reg_rd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\debug_bus_reg_rd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\debug_bus_reg_rd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\debug_bus_reg_rd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\debug_bus_reg_rd[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\debug_bus_reg_rd[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\debug_bus_reg_rd[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\debug_bus_reg_rd[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\debug_bus_reg_rd[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[8]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\debug_bus_reg_rd[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\debug_bus_reg_rd[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\debug_bus_reg_rd[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[11]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\debug_bus_reg_rd[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[12]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\debug_bus_reg_rd[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[13]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\debug_bus_reg_rd[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\debug_bus_reg_rd[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[15]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\debug_bus_reg_rd[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[16]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\debug_bus_reg_rd[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[17]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\debug_bus_reg_rd[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[18]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\debug_bus_reg_rd[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\debug_bus_reg_rd[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[20]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\debug_bus_reg_rd[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[21]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\debug_bus_reg_rd[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[22]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\debug_bus_reg_rd[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[23]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\debug_bus_reg_rd[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[24]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\debug_bus_reg_rd[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[25]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\debug_bus_reg_rd[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[26]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\debug_bus_reg_rd[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[27]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\debug_bus_reg_rd[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[28]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\debug_bus_reg_rd[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[29]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\debug_bus_reg_rd[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[30]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\debug_bus_reg_rd[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[31]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\debug_reg_file_ld~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_reg_file_ld~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X63_Y51_N0
\pc[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[0]~32_combout\ = pc(0) $ (VCC)
-- \pc[0]~33\ = CARRY(pc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(0),
	datad => VCC,
	combout => \pc[0]~32_combout\,
	cout => \pc[0]~33\);

-- Location: IOIBUF_X74_Y54_N8
\clr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: FF_X63_Y51_N1
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[0]~32_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LCCOMB_X55_Y53_N12
\output[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~reg0feeder_combout\ = pc(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(0),
	combout => \output[0]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N13
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[0]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N2
\pc[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[1]~34_combout\ = (pc(1) & (!\pc[0]~33\)) # (!pc(1) & ((\pc[0]~33\) # (GND)))
-- \pc[1]~35\ = CARRY((!\pc[0]~33\) # (!pc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(1),
	datad => VCC,
	cin => \pc[0]~33\,
	combout => \pc[1]~34_combout\,
	cout => \pc[1]~35\);

-- Location: FF_X63_Y51_N3
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[1]~34_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: LCCOMB_X55_Y53_N30
\output[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = pc(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N31
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[1]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N4
\pc[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[2]~36_combout\ = (pc(2) & (\pc[1]~35\ $ (GND))) # (!pc(2) & (!\pc[1]~35\ & VCC))
-- \pc[2]~37\ = CARRY((pc(2) & !\pc[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datad => VCC,
	cin => \pc[1]~35\,
	combout => \pc[2]~36_combout\,
	cout => \pc[2]~37\);

-- Location: FF_X63_Y51_N5
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[2]~36_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: LCCOMB_X55_Y53_N16
\output[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]~reg0feeder_combout\ = pc(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(2),
	combout => \output[2]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N17
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[2]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N6
\pc[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[3]~38_combout\ = (pc(3) & (!\pc[2]~37\)) # (!pc(3) & ((\pc[2]~37\) # (GND)))
-- \pc[3]~39\ = CARRY((!\pc[2]~37\) # (!pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(3),
	datad => VCC,
	cin => \pc[2]~37\,
	combout => \pc[3]~38_combout\,
	cout => \pc[3]~39\);

-- Location: FF_X63_Y51_N7
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[3]~38_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LCCOMB_X70_Y50_N20
\output[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = pc(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(3),
	combout => \output[3]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N21
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[3]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N8
\pc[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[4]~40_combout\ = (pc(4) & (\pc[3]~39\ $ (GND))) # (!pc(4) & (!\pc[3]~39\ & VCC))
-- \pc[4]~41\ = CARRY((pc(4) & !\pc[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(4),
	datad => VCC,
	cin => \pc[3]~39\,
	combout => \pc[4]~40_combout\,
	cout => \pc[4]~41\);

-- Location: FF_X63_Y51_N9
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[4]~40_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: LCCOMB_X55_Y53_N6
\output[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]~reg0feeder_combout\ = pc(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(4),
	combout => \output[4]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N7
\output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[4]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N10
\pc[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[5]~42_combout\ = (pc(5) & (!\pc[4]~41\)) # (!pc(5) & ((\pc[4]~41\) # (GND)))
-- \pc[5]~43\ = CARRY((!\pc[4]~41\) # (!pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(5),
	datad => VCC,
	cin => \pc[4]~41\,
	combout => \pc[5]~42_combout\,
	cout => \pc[5]~43\);

-- Location: FF_X63_Y51_N11
\pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[5]~42_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(5));

-- Location: LCCOMB_X55_Y53_N24
\output[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[5]~reg0feeder_combout\ = pc(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(5),
	combout => \output[5]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N25
\output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[5]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N12
\pc[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[6]~44_combout\ = (pc(6) & (\pc[5]~43\ $ (GND))) # (!pc(6) & (!\pc[5]~43\ & VCC))
-- \pc[6]~45\ = CARRY((pc(6) & !\pc[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(6),
	datad => VCC,
	cin => \pc[5]~43\,
	combout => \pc[6]~44_combout\,
	cout => \pc[6]~45\);

-- Location: FF_X63_Y51_N13
\pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[6]~44_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(6));

-- Location: LCCOMB_X55_Y53_N14
\output[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[6]~reg0feeder_combout\ = pc(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(6),
	combout => \output[6]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N15
\output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[6]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N14
\pc[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[7]~46_combout\ = (pc(7) & (!\pc[6]~45\)) # (!pc(7) & ((\pc[6]~45\) # (GND)))
-- \pc[7]~47\ = CARRY((!\pc[6]~45\) # (!pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(7),
	datad => VCC,
	cin => \pc[6]~45\,
	combout => \pc[7]~46_combout\,
	cout => \pc[7]~47\);

-- Location: FF_X63_Y51_N15
\pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[7]~46_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(7));

-- Location: LCCOMB_X55_Y53_N8
\output[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[7]~reg0feeder_combout\ = pc(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(7),
	combout => \output[7]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N9
\output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[7]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[7]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N16
\pc[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[8]~48_combout\ = (pc(8) & (\pc[7]~47\ $ (GND))) # (!pc(8) & (!\pc[7]~47\ & VCC))
-- \pc[8]~49\ = CARRY((pc(8) & !\pc[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(8),
	datad => VCC,
	cin => \pc[7]~47\,
	combout => \pc[8]~48_combout\,
	cout => \pc[8]~49\);

-- Location: FF_X63_Y51_N17
\pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[8]~48_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(8));

-- Location: LCCOMB_X55_Y53_N26
\output[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[8]~reg0feeder_combout\ = pc(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(8),
	combout => \output[8]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N27
\output[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[8]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[8]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N18
\pc[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[9]~50_combout\ = (pc(9) & (!\pc[8]~49\)) # (!pc(9) & ((\pc[8]~49\) # (GND)))
-- \pc[9]~51\ = CARRY((!\pc[8]~49\) # (!pc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(9),
	datad => VCC,
	cin => \pc[8]~49\,
	combout => \pc[9]~50_combout\,
	cout => \pc[9]~51\);

-- Location: FF_X63_Y51_N19
\pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[9]~50_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(9));

-- Location: LCCOMB_X55_Y53_N0
\output[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[9]~reg0feeder_combout\ = pc(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(9),
	combout => \output[9]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N1
\output[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[9]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[9]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N20
\pc[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[10]~52_combout\ = (pc(10) & (\pc[9]~51\ $ (GND))) # (!pc(10) & (!\pc[9]~51\ & VCC))
-- \pc[10]~53\ = CARRY((pc(10) & !\pc[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(10),
	datad => VCC,
	cin => \pc[9]~51\,
	combout => \pc[10]~52_combout\,
	cout => \pc[10]~53\);

-- Location: FF_X63_Y51_N21
\pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[10]~52_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(10));

-- Location: LCCOMB_X55_Y53_N22
\output[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[10]~reg0feeder_combout\ = pc(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(10),
	combout => \output[10]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N23
\output[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[10]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[10]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N22
\pc[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[11]~54_combout\ = (pc(11) & (!\pc[10]~53\)) # (!pc(11) & ((\pc[10]~53\) # (GND)))
-- \pc[11]~55\ = CARRY((!\pc[10]~53\) # (!pc(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(11),
	datad => VCC,
	cin => \pc[10]~53\,
	combout => \pc[11]~54_combout\,
	cout => \pc[11]~55\);

-- Location: FF_X63_Y51_N23
\pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[11]~54_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(11));

-- Location: LCCOMB_X55_Y53_N4
\output[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[11]~reg0feeder_combout\ = pc(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(11),
	combout => \output[11]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N5
\output[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[11]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[11]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N24
\pc[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[12]~56_combout\ = (pc(12) & (\pc[11]~55\ $ (GND))) # (!pc(12) & (!\pc[11]~55\ & VCC))
-- \pc[12]~57\ = CARRY((pc(12) & !\pc[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(12),
	datad => VCC,
	cin => \pc[11]~55\,
	combout => \pc[12]~56_combout\,
	cout => \pc[12]~57\);

-- Location: FF_X63_Y51_N25
\pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[12]~56_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(12));

-- Location: LCCOMB_X55_Y53_N2
\output[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[12]~reg0feeder_combout\ = pc(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(12),
	combout => \output[12]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N3
\output[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[12]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[12]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N26
\pc[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[13]~58_combout\ = (pc(13) & (!\pc[12]~57\)) # (!pc(13) & ((\pc[12]~57\) # (GND)))
-- \pc[13]~59\ = CARRY((!\pc[12]~57\) # (!pc(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(13),
	datad => VCC,
	cin => \pc[12]~57\,
	combout => \pc[13]~58_combout\,
	cout => \pc[13]~59\);

-- Location: FF_X63_Y51_N27
\pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[13]~58_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(13));

-- Location: LCCOMB_X70_Y50_N18
\output[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[13]~reg0feeder_combout\ = pc(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(13),
	combout => \output[13]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N19
\output[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[13]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[13]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N28
\pc[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[14]~60_combout\ = (pc(14) & (\pc[13]~59\ $ (GND))) # (!pc(14) & (!\pc[13]~59\ & VCC))
-- \pc[14]~61\ = CARRY((pc(14) & !\pc[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(14),
	datad => VCC,
	cin => \pc[13]~59\,
	combout => \pc[14]~60_combout\,
	cout => \pc[14]~61\);

-- Location: FF_X63_Y51_N29
\pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[14]~60_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(14));

-- Location: LCCOMB_X55_Y53_N20
\output[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[14]~reg0feeder_combout\ = pc(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(14),
	combout => \output[14]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N21
\output[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[14]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[14]~reg0_q\);

-- Location: LCCOMB_X63_Y51_N30
\pc[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[15]~62_combout\ = (pc(15) & (!\pc[14]~61\)) # (!pc(15) & ((\pc[14]~61\) # (GND)))
-- \pc[15]~63\ = CARRY((!\pc[14]~61\) # (!pc(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(15),
	datad => VCC,
	cin => \pc[14]~61\,
	combout => \pc[15]~62_combout\,
	cout => \pc[15]~63\);

-- Location: FF_X63_Y51_N31
\pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[15]~62_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(15));

-- Location: LCCOMB_X55_Y53_N10
\output[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[15]~reg0feeder_combout\ = pc(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(15),
	combout => \output[15]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N11
\output[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[15]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[15]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N0
\pc[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[16]~64_combout\ = (pc(16) & (\pc[15]~63\ $ (GND))) # (!pc(16) & (!\pc[15]~63\ & VCC))
-- \pc[16]~65\ = CARRY((pc(16) & !\pc[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(16),
	datad => VCC,
	cin => \pc[15]~63\,
	combout => \pc[16]~64_combout\,
	cout => \pc[16]~65\);

-- Location: FF_X63_Y50_N1
\pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[16]~64_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(16));

-- Location: LCCOMB_X74_Y50_N4
\output[16]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[16]~reg0feeder_combout\ = pc(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(16),
	combout => \output[16]~reg0feeder_combout\);

-- Location: FF_X74_Y50_N5
\output[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[16]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[16]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N2
\pc[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[17]~66_combout\ = (pc(17) & (!\pc[16]~65\)) # (!pc(17) & ((\pc[16]~65\) # (GND)))
-- \pc[17]~67\ = CARRY((!\pc[16]~65\) # (!pc(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(17),
	datad => VCC,
	cin => \pc[16]~65\,
	combout => \pc[17]~66_combout\,
	cout => \pc[17]~67\);

-- Location: FF_X63_Y50_N3
\pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[17]~66_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(17));

-- Location: LCCOMB_X70_Y50_N8
\output[17]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[17]~reg0feeder_combout\ = pc(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(17),
	combout => \output[17]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N9
\output[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[17]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[17]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N4
\pc[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[18]~68_combout\ = (pc(18) & (\pc[17]~67\ $ (GND))) # (!pc(18) & (!\pc[17]~67\ & VCC))
-- \pc[18]~69\ = CARRY((pc(18) & !\pc[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(18),
	datad => VCC,
	cin => \pc[17]~67\,
	combout => \pc[18]~68_combout\,
	cout => \pc[18]~69\);

-- Location: FF_X63_Y50_N5
\pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[18]~68_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(18));

-- Location: LCCOMB_X70_Y50_N6
\output[18]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[18]~reg0feeder_combout\ = pc(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(18),
	combout => \output[18]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N7
\output[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[18]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[18]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N6
\pc[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[19]~70_combout\ = (pc(19) & (!\pc[18]~69\)) # (!pc(19) & ((\pc[18]~69\) # (GND)))
-- \pc[19]~71\ = CARRY((!\pc[18]~69\) # (!pc(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(19),
	datad => VCC,
	cin => \pc[18]~69\,
	combout => \pc[19]~70_combout\,
	cout => \pc[19]~71\);

-- Location: FF_X63_Y50_N7
\pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[19]~70_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(19));

-- Location: LCCOMB_X70_Y50_N4
\output[19]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[19]~reg0feeder_combout\ = pc(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(19),
	combout => \output[19]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N5
\output[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[19]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[19]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N8
\pc[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[20]~72_combout\ = (pc(20) & (\pc[19]~71\ $ (GND))) # (!pc(20) & (!\pc[19]~71\ & VCC))
-- \pc[20]~73\ = CARRY((pc(20) & !\pc[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(20),
	datad => VCC,
	cin => \pc[19]~71\,
	combout => \pc[20]~72_combout\,
	cout => \pc[20]~73\);

-- Location: FF_X63_Y50_N9
\pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[20]~72_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(20));

-- Location: LCCOMB_X70_Y50_N22
\output[20]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[20]~reg0feeder_combout\ = pc(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(20),
	combout => \output[20]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N23
\output[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[20]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[20]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N10
\pc[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[21]~74_combout\ = (pc(21) & (!\pc[20]~73\)) # (!pc(21) & ((\pc[20]~73\) # (GND)))
-- \pc[21]~75\ = CARRY((!\pc[20]~73\) # (!pc(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(21),
	datad => VCC,
	cin => \pc[20]~73\,
	combout => \pc[21]~74_combout\,
	cout => \pc[21]~75\);

-- Location: FF_X63_Y50_N11
\pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[21]~74_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(21));

-- Location: LCCOMB_X70_Y50_N12
\output[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[21]~reg0feeder_combout\ = pc(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(21),
	combout => \output[21]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N13
\output[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[21]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[21]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N12
\pc[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[22]~76_combout\ = (pc(22) & (\pc[21]~75\ $ (GND))) # (!pc(22) & (!\pc[21]~75\ & VCC))
-- \pc[22]~77\ = CARRY((pc(22) & !\pc[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(22),
	datad => VCC,
	cin => \pc[21]~75\,
	combout => \pc[22]~76_combout\,
	cout => \pc[22]~77\);

-- Location: FF_X63_Y50_N13
\pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[22]~76_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(22));

-- Location: LCCOMB_X70_Y50_N2
\output[22]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[22]~reg0feeder_combout\ = pc(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(22),
	combout => \output[22]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N3
\output[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[22]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[22]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N14
\pc[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[23]~78_combout\ = (pc(23) & (!\pc[22]~77\)) # (!pc(23) & ((\pc[22]~77\) # (GND)))
-- \pc[23]~79\ = CARRY((!\pc[22]~77\) # (!pc(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(23),
	datad => VCC,
	cin => \pc[22]~77\,
	combout => \pc[23]~78_combout\,
	cout => \pc[23]~79\);

-- Location: FF_X63_Y50_N15
\pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[23]~78_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(23));

-- Location: LCCOMB_X70_Y50_N28
\output[23]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[23]~reg0feeder_combout\ = pc(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(23),
	combout => \output[23]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N29
\output[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[23]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[23]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N16
\pc[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[24]~80_combout\ = (pc(24) & (\pc[23]~79\ $ (GND))) # (!pc(24) & (!\pc[23]~79\ & VCC))
-- \pc[24]~81\ = CARRY((pc(24) & !\pc[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(24),
	datad => VCC,
	cin => \pc[23]~79\,
	combout => \pc[24]~80_combout\,
	cout => \pc[24]~81\);

-- Location: FF_X63_Y50_N17
\pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[24]~80_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(24));

-- Location: LCCOMB_X70_Y50_N10
\output[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[24]~reg0feeder_combout\ = pc(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(24),
	combout => \output[24]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N11
\output[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[24]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[24]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N18
\pc[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[25]~82_combout\ = (pc(25) & (!\pc[24]~81\)) # (!pc(25) & ((\pc[24]~81\) # (GND)))
-- \pc[25]~83\ = CARRY((!\pc[24]~81\) # (!pc(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(25),
	datad => VCC,
	cin => \pc[24]~81\,
	combout => \pc[25]~82_combout\,
	cout => \pc[25]~83\);

-- Location: FF_X63_Y50_N19
\pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[25]~82_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(25));

-- Location: LCCOMB_X70_Y50_N0
\output[25]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[25]~reg0feeder_combout\ = pc(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(25),
	combout => \output[25]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N1
\output[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[25]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[25]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N20
\pc[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[26]~84_combout\ = (pc(26) & (\pc[25]~83\ $ (GND))) # (!pc(26) & (!\pc[25]~83\ & VCC))
-- \pc[26]~85\ = CARRY((pc(26) & !\pc[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(26),
	datad => VCC,
	cin => \pc[25]~83\,
	combout => \pc[26]~84_combout\,
	cout => \pc[26]~85\);

-- Location: FF_X63_Y50_N21
\pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[26]~84_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(26));

-- Location: LCCOMB_X70_Y50_N14
\output[26]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[26]~reg0feeder_combout\ = pc(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(26),
	combout => \output[26]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N15
\output[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[26]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[26]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N22
\pc[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[27]~86_combout\ = (pc(27) & (!\pc[26]~85\)) # (!pc(27) & ((\pc[26]~85\) # (GND)))
-- \pc[27]~87\ = CARRY((!\pc[26]~85\) # (!pc(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(27),
	datad => VCC,
	cin => \pc[26]~85\,
	combout => \pc[27]~86_combout\,
	cout => \pc[27]~87\);

-- Location: FF_X63_Y50_N23
\pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[27]~86_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(27));

-- Location: LCCOMB_X55_Y53_N28
\output[27]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[27]~reg0feeder_combout\ = pc(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(27),
	combout => \output[27]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N29
\output[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[27]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[27]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N24
\pc[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[28]~88_combout\ = (pc(28) & (\pc[27]~87\ $ (GND))) # (!pc(28) & (!\pc[27]~87\ & VCC))
-- \pc[28]~89\ = CARRY((pc(28) & !\pc[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(28),
	datad => VCC,
	cin => \pc[27]~87\,
	combout => \pc[28]~88_combout\,
	cout => \pc[28]~89\);

-- Location: FF_X63_Y50_N25
\pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[28]~88_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(28));

-- Location: LCCOMB_X70_Y50_N16
\output[28]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[28]~reg0feeder_combout\ = pc(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(28),
	combout => \output[28]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N17
\output[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[28]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[28]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N26
\pc[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[29]~90_combout\ = (pc(29) & (!\pc[28]~89\)) # (!pc(29) & ((\pc[28]~89\) # (GND)))
-- \pc[29]~91\ = CARRY((!\pc[28]~89\) # (!pc(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(29),
	datad => VCC,
	cin => \pc[28]~89\,
	combout => \pc[29]~90_combout\,
	cout => \pc[29]~91\);

-- Location: FF_X63_Y50_N27
\pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[29]~90_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(29));

-- Location: LCCOMB_X70_Y50_N30
\output[29]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[29]~reg0feeder_combout\ = pc(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(29),
	combout => \output[29]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N31
\output[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[29]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[29]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N28
\pc[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[30]~92_combout\ = (pc(30) & (\pc[29]~91\ $ (GND))) # (!pc(30) & (!\pc[29]~91\ & VCC))
-- \pc[30]~93\ = CARRY((pc(30) & !\pc[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(30),
	datad => VCC,
	cin => \pc[29]~91\,
	combout => \pc[30]~92_combout\,
	cout => \pc[30]~93\);

-- Location: FF_X63_Y50_N29
\pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[30]~92_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(30));

-- Location: LCCOMB_X70_Y50_N24
\output[30]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[30]~reg0feeder_combout\ = pc(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(30),
	combout => \output[30]~reg0feeder_combout\);

-- Location: FF_X70_Y50_N25
\output[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[30]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[30]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N30
\pc[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[31]~94_combout\ = pc(31) $ (\pc[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(31),
	cin => \pc[30]~93\,
	combout => \pc[31]~94_combout\);

-- Location: FF_X63_Y50_N31
\pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[31]~94_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(31));

-- Location: LCCOMB_X55_Y53_N18
\output[31]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[31]~reg0feeder_combout\ = pc(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(31),
	combout => \output[31]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N19
\output[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[31]~reg0feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[31]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_output(16) <= \output[16]~output_o\;

ww_output(17) <= \output[17]~output_o\;

ww_output(18) <= \output[18]~output_o\;

ww_output(19) <= \output[19]~output_o\;

ww_output(20) <= \output[20]~output_o\;

ww_output(21) <= \output[21]~output_o\;

ww_output(22) <= \output[22]~output_o\;

ww_output(23) <= \output[23]~output_o\;

ww_output(24) <= \output[24]~output_o\;

ww_output(25) <= \output[25]~output_o\;

ww_output(26) <= \output[26]~output_o\;

ww_output(27) <= \output[27]~output_o\;

ww_output(28) <= \output[28]~output_o\;

ww_output(29) <= \output[29]~output_o\;

ww_output(30) <= \output[30]~output_o\;

ww_output(31) <= \output[31]~output_o\;

ww_debug_pc(0) <= \debug_pc[0]~output_o\;

ww_debug_pc(1) <= \debug_pc[1]~output_o\;

ww_debug_pc(2) <= \debug_pc[2]~output_o\;

ww_debug_pc(3) <= \debug_pc[3]~output_o\;

ww_debug_pc(4) <= \debug_pc[4]~output_o\;

ww_debug_pc(5) <= \debug_pc[5]~output_o\;

ww_debug_pc(6) <= \debug_pc[6]~output_o\;

ww_debug_pc(7) <= \debug_pc[7]~output_o\;

ww_debug_pc(8) <= \debug_pc[8]~output_o\;

ww_debug_pc(9) <= \debug_pc[9]~output_o\;

ww_debug_pc(10) <= \debug_pc[10]~output_o\;

ww_debug_pc(11) <= \debug_pc[11]~output_o\;

ww_debug_pc(12) <= \debug_pc[12]~output_o\;

ww_debug_pc(13) <= \debug_pc[13]~output_o\;

ww_debug_pc(14) <= \debug_pc[14]~output_o\;

ww_debug_pc(15) <= \debug_pc[15]~output_o\;

ww_debug_pc(16) <= \debug_pc[16]~output_o\;

ww_debug_pc(17) <= \debug_pc[17]~output_o\;

ww_debug_pc(18) <= \debug_pc[18]~output_o\;

ww_debug_pc(19) <= \debug_pc[19]~output_o\;

ww_debug_pc(20) <= \debug_pc[20]~output_o\;

ww_debug_pc(21) <= \debug_pc[21]~output_o\;

ww_debug_pc(22) <= \debug_pc[22]~output_o\;

ww_debug_pc(23) <= \debug_pc[23]~output_o\;

ww_debug_pc(24) <= \debug_pc[24]~output_o\;

ww_debug_pc(25) <= \debug_pc[25]~output_o\;

ww_debug_pc(26) <= \debug_pc[26]~output_o\;

ww_debug_pc(27) <= \debug_pc[27]~output_o\;

ww_debug_pc(28) <= \debug_pc[28]~output_o\;

ww_debug_pc(29) <= \debug_pc[29]~output_o\;

ww_debug_pc(30) <= \debug_pc[30]~output_o\;

ww_debug_pc(31) <= \debug_pc[31]~output_o\;

ww_debug_ir(0) <= \debug_ir[0]~output_o\;

ww_debug_ir(1) <= \debug_ir[1]~output_o\;

ww_debug_ir(2) <= \debug_ir[2]~output_o\;

ww_debug_ir(3) <= \debug_ir[3]~output_o\;

ww_debug_ir(4) <= \debug_ir[4]~output_o\;

ww_debug_ir(5) <= \debug_ir[5]~output_o\;

ww_debug_ir(6) <= \debug_ir[6]~output_o\;

ww_debug_ir(7) <= \debug_ir[7]~output_o\;

ww_debug_ir(8) <= \debug_ir[8]~output_o\;

ww_debug_ir(9) <= \debug_ir[9]~output_o\;

ww_debug_ir(10) <= \debug_ir[10]~output_o\;

ww_debug_ir(11) <= \debug_ir[11]~output_o\;

ww_debug_ir(12) <= \debug_ir[12]~output_o\;

ww_debug_ir(13) <= \debug_ir[13]~output_o\;

ww_debug_ir(14) <= \debug_ir[14]~output_o\;

ww_debug_ir(15) <= \debug_ir[15]~output_o\;

ww_debug_ir(16) <= \debug_ir[16]~output_o\;

ww_debug_ir(17) <= \debug_ir[17]~output_o\;

ww_debug_ir(18) <= \debug_ir[18]~output_o\;

ww_debug_ir(19) <= \debug_ir[19]~output_o\;

ww_debug_ir(20) <= \debug_ir[20]~output_o\;

ww_debug_ir(21) <= \debug_ir[21]~output_o\;

ww_debug_ir(22) <= \debug_ir[22]~output_o\;

ww_debug_ir(23) <= \debug_ir[23]~output_o\;

ww_debug_ir(24) <= \debug_ir[24]~output_o\;

ww_debug_ir(25) <= \debug_ir[25]~output_o\;

ww_debug_ir(26) <= \debug_ir[26]~output_o\;

ww_debug_ir(27) <= \debug_ir[27]~output_o\;

ww_debug_ir(28) <= \debug_ir[28]~output_o\;

ww_debug_ir(29) <= \debug_ir[29]~output_o\;

ww_debug_ir(30) <= \debug_ir[30]~output_o\;

ww_debug_ir(31) <= \debug_ir[31]~output_o\;

ww_debug_opcode(0) <= \debug_opcode[0]~output_o\;

ww_debug_opcode(1) <= \debug_opcode[1]~output_o\;

ww_debug_opcode(2) <= \debug_opcode[2]~output_o\;

ww_debug_opcode(3) <= \debug_opcode[3]~output_o\;

ww_debug_opcode(4) <= \debug_opcode[4]~output_o\;

ww_debug_opcode(5) <= \debug_opcode[5]~output_o\;

ww_debug_immediate(0) <= \debug_immediate[0]~output_o\;

ww_debug_immediate(1) <= \debug_immediate[1]~output_o\;

ww_debug_immediate(2) <= \debug_immediate[2]~output_o\;

ww_debug_immediate(3) <= \debug_immediate[3]~output_o\;

ww_debug_immediate(4) <= \debug_immediate[4]~output_o\;

ww_debug_immediate(5) <= \debug_immediate[5]~output_o\;

ww_debug_immediate(6) <= \debug_immediate[6]~output_o\;

ww_debug_immediate(7) <= \debug_immediate[7]~output_o\;

ww_debug_immediate(8) <= \debug_immediate[8]~output_o\;

ww_debug_immediate(9) <= \debug_immediate[9]~output_o\;

ww_debug_immediate(10) <= \debug_immediate[10]~output_o\;

ww_debug_immediate(11) <= \debug_immediate[11]~output_o\;

ww_debug_immediate(12) <= \debug_immediate[12]~output_o\;

ww_debug_immediate(13) <= \debug_immediate[13]~output_o\;

ww_debug_immediate(14) <= \debug_immediate[14]~output_o\;

ww_debug_immediate(15) <= \debug_immediate[15]~output_o\;

ww_debug_immediate(16) <= \debug_immediate[16]~output_o\;

ww_debug_immediate(17) <= \debug_immediate[17]~output_o\;

ww_debug_immediate(18) <= \debug_immediate[18]~output_o\;

ww_debug_immediate(19) <= \debug_immediate[19]~output_o\;

ww_debug_immediate(20) <= \debug_immediate[20]~output_o\;

ww_debug_immediate(21) <= \debug_immediate[21]~output_o\;

ww_debug_immediate(22) <= \debug_immediate[22]~output_o\;

ww_debug_immediate(23) <= \debug_immediate[23]~output_o\;

ww_debug_immediate(24) <= \debug_immediate[24]~output_o\;

ww_debug_immediate(25) <= \debug_immediate[25]~output_o\;

ww_debug_immediate(26) <= \debug_immediate[26]~output_o\;

ww_debug_immediate(27) <= \debug_immediate[27]~output_o\;

ww_debug_immediate(28) <= \debug_immediate[28]~output_o\;

ww_debug_immediate(29) <= \debug_immediate[29]~output_o\;

ww_debug_immediate(30) <= \debug_immediate[30]~output_o\;

ww_debug_immediate(31) <= \debug_immediate[31]~output_o\;

ww_debug_mem_data_out(0) <= \debug_mem_data_out[0]~output_o\;

ww_debug_mem_data_out(1) <= \debug_mem_data_out[1]~output_o\;

ww_debug_mem_data_out(2) <= \debug_mem_data_out[2]~output_o\;

ww_debug_mem_data_out(3) <= \debug_mem_data_out[3]~output_o\;

ww_debug_mem_data_out(4) <= \debug_mem_data_out[4]~output_o\;

ww_debug_mem_data_out(5) <= \debug_mem_data_out[5]~output_o\;

ww_debug_mem_data_out(6) <= \debug_mem_data_out[6]~output_o\;

ww_debug_mem_data_out(7) <= \debug_mem_data_out[7]~output_o\;

ww_debug_mem_data_out(8) <= \debug_mem_data_out[8]~output_o\;

ww_debug_mem_data_out(9) <= \debug_mem_data_out[9]~output_o\;

ww_debug_mem_data_out(10) <= \debug_mem_data_out[10]~output_o\;

ww_debug_mem_data_out(11) <= \debug_mem_data_out[11]~output_o\;

ww_debug_mem_data_out(12) <= \debug_mem_data_out[12]~output_o\;

ww_debug_mem_data_out(13) <= \debug_mem_data_out[13]~output_o\;

ww_debug_mem_data_out(14) <= \debug_mem_data_out[14]~output_o\;

ww_debug_mem_data_out(15) <= \debug_mem_data_out[15]~output_o\;

ww_debug_mem_data_out(16) <= \debug_mem_data_out[16]~output_o\;

ww_debug_mem_data_out(17) <= \debug_mem_data_out[17]~output_o\;

ww_debug_mem_data_out(18) <= \debug_mem_data_out[18]~output_o\;

ww_debug_mem_data_out(19) <= \debug_mem_data_out[19]~output_o\;

ww_debug_mem_data_out(20) <= \debug_mem_data_out[20]~output_o\;

ww_debug_mem_data_out(21) <= \debug_mem_data_out[21]~output_o\;

ww_debug_mem_data_out(22) <= \debug_mem_data_out[22]~output_o\;

ww_debug_mem_data_out(23) <= \debug_mem_data_out[23]~output_o\;

ww_debug_mem_data_out(24) <= \debug_mem_data_out[24]~output_o\;

ww_debug_mem_data_out(25) <= \debug_mem_data_out[25]~output_o\;

ww_debug_mem_data_out(26) <= \debug_mem_data_out[26]~output_o\;

ww_debug_mem_data_out(27) <= \debug_mem_data_out[27]~output_o\;

ww_debug_mem_data_out(28) <= \debug_mem_data_out[28]~output_o\;

ww_debug_mem_data_out(29) <= \debug_mem_data_out[29]~output_o\;

ww_debug_mem_data_out(30) <= \debug_mem_data_out[30]~output_o\;

ww_debug_mem_data_out(31) <= \debug_mem_data_out[31]~output_o\;

ww_debug_ar(0) <= \debug_ar[0]~output_o\;

ww_debug_ar(1) <= \debug_ar[1]~output_o\;

ww_debug_ar(2) <= \debug_ar[2]~output_o\;

ww_debug_ar(3) <= \debug_ar[3]~output_o\;

ww_debug_ar(4) <= \debug_ar[4]~output_o\;

ww_debug_ar(5) <= \debug_ar[5]~output_o\;

ww_debug_ar(6) <= \debug_ar[6]~output_o\;

ww_debug_ar(7) <= \debug_ar[7]~output_o\;

ww_debug_ar(8) <= \debug_ar[8]~output_o\;

ww_debug_ar(9) <= \debug_ar[9]~output_o\;

ww_debug_ar(10) <= \debug_ar[10]~output_o\;

ww_debug_ar(11) <= \debug_ar[11]~output_o\;

ww_debug_ar(12) <= \debug_ar[12]~output_o\;

ww_debug_ar(13) <= \debug_ar[13]~output_o\;

ww_debug_ar(14) <= \debug_ar[14]~output_o\;

ww_debug_ar(15) <= \debug_ar[15]~output_o\;

ww_debug_ar(16) <= \debug_ar[16]~output_o\;

ww_debug_ar(17) <= \debug_ar[17]~output_o\;

ww_debug_ar(18) <= \debug_ar[18]~output_o\;

ww_debug_ar(19) <= \debug_ar[19]~output_o\;

ww_debug_ar(20) <= \debug_ar[20]~output_o\;

ww_debug_ar(21) <= \debug_ar[21]~output_o\;

ww_debug_ar(22) <= \debug_ar[22]~output_o\;

ww_debug_ar(23) <= \debug_ar[23]~output_o\;

ww_debug_ar(24) <= \debug_ar[24]~output_o\;

ww_debug_ar(25) <= \debug_ar[25]~output_o\;

ww_debug_ar(26) <= \debug_ar[26]~output_o\;

ww_debug_ar(27) <= \debug_ar[27]~output_o\;

ww_debug_ar(28) <= \debug_ar[28]~output_o\;

ww_debug_ar(29) <= \debug_ar[29]~output_o\;

ww_debug_ar(30) <= \debug_ar[30]~output_o\;

ww_debug_ar(31) <= \debug_ar[31]~output_o\;

ww_debug_bus_data_in(0) <= \debug_bus_data_in[0]~output_o\;

ww_debug_bus_data_in(1) <= \debug_bus_data_in[1]~output_o\;

ww_debug_bus_data_in(2) <= \debug_bus_data_in[2]~output_o\;

ww_debug_bus_data_in(3) <= \debug_bus_data_in[3]~output_o\;

ww_debug_bus_data_in(4) <= \debug_bus_data_in[4]~output_o\;

ww_debug_bus_data_in(5) <= \debug_bus_data_in[5]~output_o\;

ww_debug_bus_data_in(6) <= \debug_bus_data_in[6]~output_o\;

ww_debug_bus_data_in(7) <= \debug_bus_data_in[7]~output_o\;

ww_debug_bus_data_in(8) <= \debug_bus_data_in[8]~output_o\;

ww_debug_bus_data_in(9) <= \debug_bus_data_in[9]~output_o\;

ww_debug_bus_data_in(10) <= \debug_bus_data_in[10]~output_o\;

ww_debug_bus_data_in(11) <= \debug_bus_data_in[11]~output_o\;

ww_debug_bus_data_in(12) <= \debug_bus_data_in[12]~output_o\;

ww_debug_bus_data_in(13) <= \debug_bus_data_in[13]~output_o\;

ww_debug_bus_data_in(14) <= \debug_bus_data_in[14]~output_o\;

ww_debug_bus_data_in(15) <= \debug_bus_data_in[15]~output_o\;

ww_debug_bus_data_in(16) <= \debug_bus_data_in[16]~output_o\;

ww_debug_bus_data_in(17) <= \debug_bus_data_in[17]~output_o\;

ww_debug_bus_data_in(18) <= \debug_bus_data_in[18]~output_o\;

ww_debug_bus_data_in(19) <= \debug_bus_data_in[19]~output_o\;

ww_debug_bus_data_in(20) <= \debug_bus_data_in[20]~output_o\;

ww_debug_bus_data_in(21) <= \debug_bus_data_in[21]~output_o\;

ww_debug_bus_data_in(22) <= \debug_bus_data_in[22]~output_o\;

ww_debug_bus_data_in(23) <= \debug_bus_data_in[23]~output_o\;

ww_debug_bus_data_in(24) <= \debug_bus_data_in[24]~output_o\;

ww_debug_bus_data_in(25) <= \debug_bus_data_in[25]~output_o\;

ww_debug_bus_data_in(26) <= \debug_bus_data_in[26]~output_o\;

ww_debug_bus_data_in(27) <= \debug_bus_data_in[27]~output_o\;

ww_debug_bus_data_in(28) <= \debug_bus_data_in[28]~output_o\;

ww_debug_bus_data_in(29) <= \debug_bus_data_in[29]~output_o\;

ww_debug_bus_data_in(30) <= \debug_bus_data_in[30]~output_o\;

ww_debug_bus_data_in(31) <= \debug_bus_data_in[31]~output_o\;

ww_debug_bus_reg_rs(0) <= \debug_bus_reg_rs[0]~output_o\;

ww_debug_bus_reg_rs(1) <= \debug_bus_reg_rs[1]~output_o\;

ww_debug_bus_reg_rs(2) <= \debug_bus_reg_rs[2]~output_o\;

ww_debug_bus_reg_rs(3) <= \debug_bus_reg_rs[3]~output_o\;

ww_debug_bus_reg_rs(4) <= \debug_bus_reg_rs[4]~output_o\;

ww_debug_bus_reg_rs(5) <= \debug_bus_reg_rs[5]~output_o\;

ww_debug_bus_reg_rs(6) <= \debug_bus_reg_rs[6]~output_o\;

ww_debug_bus_reg_rs(7) <= \debug_bus_reg_rs[7]~output_o\;

ww_debug_bus_reg_rs(8) <= \debug_bus_reg_rs[8]~output_o\;

ww_debug_bus_reg_rs(9) <= \debug_bus_reg_rs[9]~output_o\;

ww_debug_bus_reg_rs(10) <= \debug_bus_reg_rs[10]~output_o\;

ww_debug_bus_reg_rs(11) <= \debug_bus_reg_rs[11]~output_o\;

ww_debug_bus_reg_rs(12) <= \debug_bus_reg_rs[12]~output_o\;

ww_debug_bus_reg_rs(13) <= \debug_bus_reg_rs[13]~output_o\;

ww_debug_bus_reg_rs(14) <= \debug_bus_reg_rs[14]~output_o\;

ww_debug_bus_reg_rs(15) <= \debug_bus_reg_rs[15]~output_o\;

ww_debug_bus_reg_rs(16) <= \debug_bus_reg_rs[16]~output_o\;

ww_debug_bus_reg_rs(17) <= \debug_bus_reg_rs[17]~output_o\;

ww_debug_bus_reg_rs(18) <= \debug_bus_reg_rs[18]~output_o\;

ww_debug_bus_reg_rs(19) <= \debug_bus_reg_rs[19]~output_o\;

ww_debug_bus_reg_rs(20) <= \debug_bus_reg_rs[20]~output_o\;

ww_debug_bus_reg_rs(21) <= \debug_bus_reg_rs[21]~output_o\;

ww_debug_bus_reg_rs(22) <= \debug_bus_reg_rs[22]~output_o\;

ww_debug_bus_reg_rs(23) <= \debug_bus_reg_rs[23]~output_o\;

ww_debug_bus_reg_rs(24) <= \debug_bus_reg_rs[24]~output_o\;

ww_debug_bus_reg_rs(25) <= \debug_bus_reg_rs[25]~output_o\;

ww_debug_bus_reg_rs(26) <= \debug_bus_reg_rs[26]~output_o\;

ww_debug_bus_reg_rs(27) <= \debug_bus_reg_rs[27]~output_o\;

ww_debug_bus_reg_rs(28) <= \debug_bus_reg_rs[28]~output_o\;

ww_debug_bus_reg_rs(29) <= \debug_bus_reg_rs[29]~output_o\;

ww_debug_bus_reg_rs(30) <= \debug_bus_reg_rs[30]~output_o\;

ww_debug_bus_reg_rs(31) <= \debug_bus_reg_rs[31]~output_o\;

ww_debug_bus_reg_rt(0) <= \debug_bus_reg_rt[0]~output_o\;

ww_debug_bus_reg_rt(1) <= \debug_bus_reg_rt[1]~output_o\;

ww_debug_bus_reg_rt(2) <= \debug_bus_reg_rt[2]~output_o\;

ww_debug_bus_reg_rt(3) <= \debug_bus_reg_rt[3]~output_o\;

ww_debug_bus_reg_rt(4) <= \debug_bus_reg_rt[4]~output_o\;

ww_debug_bus_reg_rt(5) <= \debug_bus_reg_rt[5]~output_o\;

ww_debug_bus_reg_rt(6) <= \debug_bus_reg_rt[6]~output_o\;

ww_debug_bus_reg_rt(7) <= \debug_bus_reg_rt[7]~output_o\;

ww_debug_bus_reg_rt(8) <= \debug_bus_reg_rt[8]~output_o\;

ww_debug_bus_reg_rt(9) <= \debug_bus_reg_rt[9]~output_o\;

ww_debug_bus_reg_rt(10) <= \debug_bus_reg_rt[10]~output_o\;

ww_debug_bus_reg_rt(11) <= \debug_bus_reg_rt[11]~output_o\;

ww_debug_bus_reg_rt(12) <= \debug_bus_reg_rt[12]~output_o\;

ww_debug_bus_reg_rt(13) <= \debug_bus_reg_rt[13]~output_o\;

ww_debug_bus_reg_rt(14) <= \debug_bus_reg_rt[14]~output_o\;

ww_debug_bus_reg_rt(15) <= \debug_bus_reg_rt[15]~output_o\;

ww_debug_bus_reg_rt(16) <= \debug_bus_reg_rt[16]~output_o\;

ww_debug_bus_reg_rt(17) <= \debug_bus_reg_rt[17]~output_o\;

ww_debug_bus_reg_rt(18) <= \debug_bus_reg_rt[18]~output_o\;

ww_debug_bus_reg_rt(19) <= \debug_bus_reg_rt[19]~output_o\;

ww_debug_bus_reg_rt(20) <= \debug_bus_reg_rt[20]~output_o\;

ww_debug_bus_reg_rt(21) <= \debug_bus_reg_rt[21]~output_o\;

ww_debug_bus_reg_rt(22) <= \debug_bus_reg_rt[22]~output_o\;

ww_debug_bus_reg_rt(23) <= \debug_bus_reg_rt[23]~output_o\;

ww_debug_bus_reg_rt(24) <= \debug_bus_reg_rt[24]~output_o\;

ww_debug_bus_reg_rt(25) <= \debug_bus_reg_rt[25]~output_o\;

ww_debug_bus_reg_rt(26) <= \debug_bus_reg_rt[26]~output_o\;

ww_debug_bus_reg_rt(27) <= \debug_bus_reg_rt[27]~output_o\;

ww_debug_bus_reg_rt(28) <= \debug_bus_reg_rt[28]~output_o\;

ww_debug_bus_reg_rt(29) <= \debug_bus_reg_rt[29]~output_o\;

ww_debug_bus_reg_rt(30) <= \debug_bus_reg_rt[30]~output_o\;

ww_debug_bus_reg_rt(31) <= \debug_bus_reg_rt[31]~output_o\;

ww_debug_bus_reg_rd(0) <= \debug_bus_reg_rd[0]~output_o\;

ww_debug_bus_reg_rd(1) <= \debug_bus_reg_rd[1]~output_o\;

ww_debug_bus_reg_rd(2) <= \debug_bus_reg_rd[2]~output_o\;

ww_debug_bus_reg_rd(3) <= \debug_bus_reg_rd[3]~output_o\;

ww_debug_bus_reg_rd(4) <= \debug_bus_reg_rd[4]~output_o\;

ww_debug_bus_reg_rd(5) <= \debug_bus_reg_rd[5]~output_o\;

ww_debug_bus_reg_rd(6) <= \debug_bus_reg_rd[6]~output_o\;

ww_debug_bus_reg_rd(7) <= \debug_bus_reg_rd[7]~output_o\;

ww_debug_bus_reg_rd(8) <= \debug_bus_reg_rd[8]~output_o\;

ww_debug_bus_reg_rd(9) <= \debug_bus_reg_rd[9]~output_o\;

ww_debug_bus_reg_rd(10) <= \debug_bus_reg_rd[10]~output_o\;

ww_debug_bus_reg_rd(11) <= \debug_bus_reg_rd[11]~output_o\;

ww_debug_bus_reg_rd(12) <= \debug_bus_reg_rd[12]~output_o\;

ww_debug_bus_reg_rd(13) <= \debug_bus_reg_rd[13]~output_o\;

ww_debug_bus_reg_rd(14) <= \debug_bus_reg_rd[14]~output_o\;

ww_debug_bus_reg_rd(15) <= \debug_bus_reg_rd[15]~output_o\;

ww_debug_bus_reg_rd(16) <= \debug_bus_reg_rd[16]~output_o\;

ww_debug_bus_reg_rd(17) <= \debug_bus_reg_rd[17]~output_o\;

ww_debug_bus_reg_rd(18) <= \debug_bus_reg_rd[18]~output_o\;

ww_debug_bus_reg_rd(19) <= \debug_bus_reg_rd[19]~output_o\;

ww_debug_bus_reg_rd(20) <= \debug_bus_reg_rd[20]~output_o\;

ww_debug_bus_reg_rd(21) <= \debug_bus_reg_rd[21]~output_o\;

ww_debug_bus_reg_rd(22) <= \debug_bus_reg_rd[22]~output_o\;

ww_debug_bus_reg_rd(23) <= \debug_bus_reg_rd[23]~output_o\;

ww_debug_bus_reg_rd(24) <= \debug_bus_reg_rd[24]~output_o\;

ww_debug_bus_reg_rd(25) <= \debug_bus_reg_rd[25]~output_o\;

ww_debug_bus_reg_rd(26) <= \debug_bus_reg_rd[26]~output_o\;

ww_debug_bus_reg_rd(27) <= \debug_bus_reg_rd[27]~output_o\;

ww_debug_bus_reg_rd(28) <= \debug_bus_reg_rd[28]~output_o\;

ww_debug_bus_reg_rd(29) <= \debug_bus_reg_rd[29]~output_o\;

ww_debug_bus_reg_rd(30) <= \debug_bus_reg_rd[30]~output_o\;

ww_debug_bus_reg_rd(31) <= \debug_bus_reg_rd[31]~output_o\;

ww_debug_reg_file_ld <= \debug_reg_file_ld~output_o\;
END structure;


