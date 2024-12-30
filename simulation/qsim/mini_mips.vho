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

-- DATE "12/30/2024 21:06:30"

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
	input : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(31 DOWNTO 0);
	debug_pc : OUT std_logic_vector(9 DOWNTO 0);
	debug_ir : OUT std_logic_vector(31 DOWNTO 0);
	debug_opcode : OUT std_logic_vector(5 DOWNTO 0);
	debug_rt_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_rs_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_rd_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_shamt : OUT std_logic_vector(4 DOWNTO 0);
	debug_func : OUT std_logic_vector(5 DOWNTO 0);
	debug_immediate : OUT std_logic_vector(31 DOWNTO 0);
	debug_mem_data_out : OUT std_logic_vector(31 DOWNTO 0);
	debug_ar : OUT std_logic_vector(31 DOWNTO 0)
	);
END mini_mips;

-- Design Ports Information
-- input[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[28]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[29]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[30]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[31]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[9]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[10]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[11]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[14]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[15]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[16]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[17]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[18]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[19]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[20]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[21]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[22]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[23]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[24]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[26]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[27]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[28]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[29]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[31]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[5]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[9]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[12]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[13]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[16]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[17]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[18]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[19]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[20]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[22]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[23]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[24]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[25]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[26]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[27]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[28]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[29]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[30]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[31]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[11]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[14]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[17]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[18]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[19]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[22]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[24]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[26]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[27]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[28]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[29]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[30]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[8]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[10]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[16]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[17]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[19]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[20]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[21]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[22]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[23]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[24]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[25]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[26]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[27]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[28]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[29]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[30]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ar[31]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_pc : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_debug_ir : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_rt_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_rs_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_func : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_mem_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_ar : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \input[16]~input_o\ : std_logic;
SIGNAL \input[17]~input_o\ : std_logic;
SIGNAL \input[18]~input_o\ : std_logic;
SIGNAL \input[19]~input_o\ : std_logic;
SIGNAL \input[20]~input_o\ : std_logic;
SIGNAL \input[21]~input_o\ : std_logic;
SIGNAL \input[22]~input_o\ : std_logic;
SIGNAL \input[23]~input_o\ : std_logic;
SIGNAL \input[24]~input_o\ : std_logic;
SIGNAL \input[25]~input_o\ : std_logic;
SIGNAL \input[26]~input_o\ : std_logic;
SIGNAL \input[27]~input_o\ : std_logic;
SIGNAL \input[28]~input_o\ : std_logic;
SIGNAL \input[29]~input_o\ : std_logic;
SIGNAL \input[30]~input_o\ : std_logic;
SIGNAL \input[31]~input_o\ : std_logic;
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
SIGNAL \debug_rt_addr[0]~output_o\ : std_logic;
SIGNAL \debug_rt_addr[1]~output_o\ : std_logic;
SIGNAL \debug_rt_addr[2]~output_o\ : std_logic;
SIGNAL \debug_rt_addr[3]~output_o\ : std_logic;
SIGNAL \debug_rt_addr[4]~output_o\ : std_logic;
SIGNAL \debug_rs_addr[0]~output_o\ : std_logic;
SIGNAL \debug_rs_addr[1]~output_o\ : std_logic;
SIGNAL \debug_rs_addr[2]~output_o\ : std_logic;
SIGNAL \debug_rs_addr[3]~output_o\ : std_logic;
SIGNAL \debug_rs_addr[4]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[0]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[1]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[2]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[3]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[4]~output_o\ : std_logic;
SIGNAL \debug_shamt[0]~output_o\ : std_logic;
SIGNAL \debug_shamt[1]~output_o\ : std_logic;
SIGNAL \debug_shamt[2]~output_o\ : std_logic;
SIGNAL \debug_shamt[3]~output_o\ : std_logic;
SIGNAL \debug_shamt[4]~output_o\ : std_logic;
SIGNAL \debug_func[0]~output_o\ : std_logic;
SIGNAL \debug_func[1]~output_o\ : std_logic;
SIGNAL \debug_func[2]~output_o\ : std_logic;
SIGNAL \debug_func[3]~output_o\ : std_logic;
SIGNAL \debug_func[4]~output_o\ : std_logic;
SIGNAL \debug_func[5]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc[0]~32_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \pc[0]~33\ : std_logic;
SIGNAL \pc[1]~34_combout\ : std_logic;
SIGNAL \pc[1]~35\ : std_logic;
SIGNAL \pc[2]~36_combout\ : std_logic;
SIGNAL \pc[2]~37\ : std_logic;
SIGNAL \pc[3]~38_combout\ : std_logic;
SIGNAL \pc[3]~39\ : std_logic;
SIGNAL \pc[4]~40_combout\ : std_logic;
SIGNAL \pc[4]~41\ : std_logic;
SIGNAL \pc[5]~42_combout\ : std_logic;
SIGNAL \pc[5]~43\ : std_logic;
SIGNAL \pc[6]~44_combout\ : std_logic;
SIGNAL \pc[6]~45\ : std_logic;
SIGNAL \pc[7]~46_combout\ : std_logic;
SIGNAL \pc[7]~47\ : std_logic;
SIGNAL \pc[8]~48_combout\ : std_logic;
SIGNAL \pc[8]~49\ : std_logic;
SIGNAL \pc[9]~50_combout\ : std_logic;
SIGNAL \Memory_inst|memory~43_combout\ : std_logic;
SIGNAL \Memory_inst|memory~44_combout\ : std_logic;
SIGNAL \Memory_inst|memory~46_combout\ : std_logic;
SIGNAL \ir~0_combout\ : std_logic;
SIGNAL \ir~1_combout\ : std_logic;
SIGNAL \ir~2_combout\ : std_logic;
SIGNAL \opcode~0_combout\ : std_logic;
SIGNAL \rt_addr~0_combout\ : std_logic;
SIGNAL \rt_addr[0]~1_combout\ : std_logic;
SIGNAL \rs_addr~0_combout\ : std_logic;
SIGNAL \rs_addr~1_combout\ : std_logic;
SIGNAL \rs_addr[1]~feeder_combout\ : std_logic;
SIGNAL \rs_addr~2_combout\ : std_logic;
SIGNAL \rd_addr~0_combout\ : std_logic;
SIGNAL \func~0_combout\ : std_logic;
SIGNAL \func[1]~feeder_combout\ : std_logic;
SIGNAL \func[2]~feeder_combout\ : std_logic;
SIGNAL \rs_addr[1]~3_combout\ : std_logic;
SIGNAL \immediate[27]~feeder_combout\ : std_logic;
SIGNAL \Memory_inst|memory~45_combout\ : std_logic;
SIGNAL \Memory_inst|memory~47_combout\ : std_logic;
SIGNAL \AR~0_combout\ : std_logic;
SIGNAL \AR~1_combout\ : std_logic;
SIGNAL \AR~2_combout\ : std_logic;
SIGNAL \AR~3_combout\ : std_logic;
SIGNAL \AR~4_combout\ : std_logic;
SIGNAL \AR~5_combout\ : std_logic;
SIGNAL \AR~6_combout\ : std_logic;
SIGNAL \AR~7_combout\ : std_logic;
SIGNAL \AR~8_combout\ : std_logic;
SIGNAL \AR~9_combout\ : std_logic;
SIGNAL \pc[9]~51\ : std_logic;
SIGNAL \pc[10]~52_combout\ : std_logic;
SIGNAL \AR~10_combout\ : std_logic;
SIGNAL \pc[10]~53\ : std_logic;
SIGNAL \pc[11]~54_combout\ : std_logic;
SIGNAL \AR~11_combout\ : std_logic;
SIGNAL \pc[11]~55\ : std_logic;
SIGNAL \pc[12]~56_combout\ : std_logic;
SIGNAL \AR~12_combout\ : std_logic;
SIGNAL \pc[12]~57\ : std_logic;
SIGNAL \pc[13]~58_combout\ : std_logic;
SIGNAL \AR~13_combout\ : std_logic;
SIGNAL \pc[13]~59\ : std_logic;
SIGNAL \pc[14]~60_combout\ : std_logic;
SIGNAL \AR~14_combout\ : std_logic;
SIGNAL \pc[14]~61\ : std_logic;
SIGNAL \pc[15]~62_combout\ : std_logic;
SIGNAL \AR~15_combout\ : std_logic;
SIGNAL \pc[15]~63\ : std_logic;
SIGNAL \pc[16]~64_combout\ : std_logic;
SIGNAL \AR~16_combout\ : std_logic;
SIGNAL \pc[16]~65\ : std_logic;
SIGNAL \pc[17]~66_combout\ : std_logic;
SIGNAL \AR~17_combout\ : std_logic;
SIGNAL \pc[17]~67\ : std_logic;
SIGNAL \pc[18]~68_combout\ : std_logic;
SIGNAL \AR~18_combout\ : std_logic;
SIGNAL \pc[18]~69\ : std_logic;
SIGNAL \pc[19]~70_combout\ : std_logic;
SIGNAL \AR~19_combout\ : std_logic;
SIGNAL \pc[19]~71\ : std_logic;
SIGNAL \pc[20]~72_combout\ : std_logic;
SIGNAL \AR~20_combout\ : std_logic;
SIGNAL \pc[20]~73\ : std_logic;
SIGNAL \pc[21]~74_combout\ : std_logic;
SIGNAL \AR~21_combout\ : std_logic;
SIGNAL \pc[21]~75\ : std_logic;
SIGNAL \pc[22]~76_combout\ : std_logic;
SIGNAL \AR~22_combout\ : std_logic;
SIGNAL \pc[22]~77\ : std_logic;
SIGNAL \pc[23]~78_combout\ : std_logic;
SIGNAL \AR~23_combout\ : std_logic;
SIGNAL \pc[23]~79\ : std_logic;
SIGNAL \pc[24]~80_combout\ : std_logic;
SIGNAL \AR~24_combout\ : std_logic;
SIGNAL \pc[24]~81\ : std_logic;
SIGNAL \pc[25]~82_combout\ : std_logic;
SIGNAL \AR~25_combout\ : std_logic;
SIGNAL \pc[25]~83\ : std_logic;
SIGNAL \pc[26]~84_combout\ : std_logic;
SIGNAL \AR~26_combout\ : std_logic;
SIGNAL \pc[26]~85\ : std_logic;
SIGNAL \pc[27]~86_combout\ : std_logic;
SIGNAL \AR~27_combout\ : std_logic;
SIGNAL \pc[27]~87\ : std_logic;
SIGNAL \pc[28]~88_combout\ : std_logic;
SIGNAL \AR~28_combout\ : std_logic;
SIGNAL \pc[28]~89\ : std_logic;
SIGNAL \pc[29]~90_combout\ : std_logic;
SIGNAL \AR~29_combout\ : std_logic;
SIGNAL \pc[29]~91\ : std_logic;
SIGNAL \pc[30]~92_combout\ : std_logic;
SIGNAL \AR~30_combout\ : std_logic;
SIGNAL \pc[30]~93\ : std_logic;
SIGNAL \pc[31]~94_combout\ : std_logic;
SIGNAL \AR~31_combout\ : std_logic;
SIGNAL pc : std_logic_vector(31 DOWNTO 0);
SIGNAL rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ir : std_logic_vector(31 DOWNTO 0);
SIGNAL opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL rt_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL rs_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL func : std_logic_vector(5 DOWNTO 0);
SIGNAL immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL AR : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
ww_input <= input;
output <= ww_output;
debug_pc <= ww_debug_pc;
debug_ir <= ww_debug_ir;
debug_opcode <= ww_debug_opcode;
debug_rt_addr <= ww_debug_rt_addr;
debug_rs_addr <= ww_debug_rs_addr;
debug_rd_addr <= ww_debug_rd_addr;
debug_shamt <= ww_debug_shamt;
debug_func <= ww_debug_func;
debug_immediate <= ww_debug_immediate;
debug_mem_data_out <= ww_debug_mem_data_out;
debug_ar <= ww_debug_ar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X56_Y54_N16
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y36_N16
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X74_Y54_N16
\debug_ir[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(11),
	devoe => ww_devoe,
	o => \debug_ir[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\debug_ir[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(21),
	devoe => ww_devoe,
	o => \debug_ir[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X74_Y54_N2
\debug_ir[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(11),
	devoe => ww_devoe,
	o => \debug_ir[11]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\debug_ir[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(11),
	devoe => ww_devoe,
	o => \debug_ir[12]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X78_Y49_N9
\debug_ir[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(11),
	devoe => ww_devoe,
	o => \debug_ir[17]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\debug_ir[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(18),
	devoe => ww_devoe,
	o => \debug_ir[18]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X78_Y45_N9
\debug_ir[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(21),
	devoe => ww_devoe,
	o => \debug_ir[21]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N23
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X36_Y39_N30
\debug_ir[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(18),
	devoe => ww_devoe,
	o => \debug_ir[29]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X69_Y54_N23
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X78_Y40_N9
\debug_opcode[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => opcode(3),
	devoe => ww_devoe,
	o => \debug_opcode[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X78_Y42_N9
\debug_rt_addr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rt_addr(0),
	devoe => ww_devoe,
	o => \debug_rt_addr[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\debug_rt_addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rt_addr[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\debug_rt_addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rt_addr[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\debug_rt_addr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rt_addr[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\debug_rt_addr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rt_addr[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\debug_rs_addr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rs_addr(0),
	devoe => ww_devoe,
	o => \debug_rs_addr[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\debug_rs_addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rs_addr(1),
	devoe => ww_devoe,
	o => \debug_rs_addr[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\debug_rs_addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rs_addr(2),
	devoe => ww_devoe,
	o => \debug_rs_addr[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\debug_rs_addr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rs_addr[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\debug_rs_addr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rs_addr[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\debug_rd_addr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rd_addr(0),
	devoe => ww_devoe,
	o => \debug_rd_addr[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\debug_rd_addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rd_addr(1),
	devoe => ww_devoe,
	o => \debug_rd_addr[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\debug_rd_addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rd_addr(2),
	devoe => ww_devoe,
	o => \debug_rd_addr[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\debug_rd_addr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rd_addr[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\debug_rd_addr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rd_addr[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\debug_shamt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_shamt[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\debug_shamt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_shamt[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\debug_shamt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_shamt[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\debug_shamt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_shamt[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\debug_shamt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_shamt[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\debug_func[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_func[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\debug_func[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => func(1),
	devoe => ww_devoe,
	o => \debug_func[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\debug_func[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => func(2),
	devoe => ww_devoe,
	o => \debug_func[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\debug_func[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_func[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\debug_func[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_func[4]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\debug_func[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_func[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X54_Y54_N16
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

-- Location: IOOBUF_X62_Y0_N30
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X0_Y30_N23
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X0_Y37_N9
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

-- Location: IOOBUF_X78_Y42_N2
\debug_immediate[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(17),
	devoe => ww_devoe,
	o => \debug_immediate[17]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\debug_immediate[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(18),
	devoe => ww_devoe,
	o => \debug_immediate[18]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X49_Y0_N30
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X78_Y42_N16
\debug_immediate[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(27),
	devoe => ww_devoe,
	o => \debug_immediate[27]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\debug_immediate[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(28),
	devoe => ww_devoe,
	o => \debug_immediate[28]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X78_Y24_N2
\debug_mem_data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~45_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\debug_mem_data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~46_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X40_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X78_Y24_N24
\debug_mem_data_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~45_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[11]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\debug_mem_data_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~45_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[12]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
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

-- Location: IOOBUF_X0_Y37_N23
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X78_Y24_N9
\debug_mem_data_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~45_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[17]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\debug_mem_data_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~47_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[18]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X78_Y44_N24
\debug_mem_data_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~46_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[21]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X66_Y54_N30
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

-- Location: IOOBUF_X0_Y3_N23
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X78_Y23_N9
\debug_mem_data_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~47_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[29]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X78_Y37_N9
\debug_ar[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(0),
	devoe => ww_devoe,
	o => \debug_ar[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\debug_ar[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(1),
	devoe => ww_devoe,
	o => \debug_ar[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\debug_ar[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(2),
	devoe => ww_devoe,
	o => \debug_ar[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\debug_ar[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(3),
	devoe => ww_devoe,
	o => \debug_ar[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\debug_ar[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(4),
	devoe => ww_devoe,
	o => \debug_ar[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\debug_ar[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(5),
	devoe => ww_devoe,
	o => \debug_ar[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\debug_ar[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(6),
	devoe => ww_devoe,
	o => \debug_ar[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\debug_ar[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(7),
	devoe => ww_devoe,
	o => \debug_ar[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\debug_ar[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(8),
	devoe => ww_devoe,
	o => \debug_ar[8]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\debug_ar[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(9),
	devoe => ww_devoe,
	o => \debug_ar[9]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\debug_ar[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(10),
	devoe => ww_devoe,
	o => \debug_ar[10]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\debug_ar[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(11),
	devoe => ww_devoe,
	o => \debug_ar[11]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\debug_ar[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(12),
	devoe => ww_devoe,
	o => \debug_ar[12]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\debug_ar[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(13),
	devoe => ww_devoe,
	o => \debug_ar[13]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\debug_ar[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(14),
	devoe => ww_devoe,
	o => \debug_ar[14]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\debug_ar[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(15),
	devoe => ww_devoe,
	o => \debug_ar[15]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\debug_ar[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(16),
	devoe => ww_devoe,
	o => \debug_ar[16]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\debug_ar[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(17),
	devoe => ww_devoe,
	o => \debug_ar[17]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\debug_ar[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(18),
	devoe => ww_devoe,
	o => \debug_ar[18]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\debug_ar[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(19),
	devoe => ww_devoe,
	o => \debug_ar[19]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\debug_ar[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(20),
	devoe => ww_devoe,
	o => \debug_ar[20]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\debug_ar[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(21),
	devoe => ww_devoe,
	o => \debug_ar[21]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\debug_ar[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(22),
	devoe => ww_devoe,
	o => \debug_ar[22]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\debug_ar[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(23),
	devoe => ww_devoe,
	o => \debug_ar[23]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\debug_ar[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(24),
	devoe => ww_devoe,
	o => \debug_ar[24]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\debug_ar[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(25),
	devoe => ww_devoe,
	o => \debug_ar[25]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\debug_ar[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(26),
	devoe => ww_devoe,
	o => \debug_ar[26]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\debug_ar[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(27),
	devoe => ww_devoe,
	o => \debug_ar[27]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\debug_ar[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(28),
	devoe => ww_devoe,
	o => \debug_ar[28]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\debug_ar[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(29),
	devoe => ww_devoe,
	o => \debug_ar[29]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\debug_ar[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(30),
	devoe => ww_devoe,
	o => \debug_ar[30]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\debug_ar[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AR(31),
	devoe => ww_devoe,
	o => \debug_ar[31]~output_o\);

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

-- Location: LCCOMB_X76_Y35_N0
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

-- Location: IOIBUF_X78_Y40_N15
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

-- Location: FF_X76_Y35_N1
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

-- Location: LCCOMB_X76_Y35_N2
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

-- Location: FF_X76_Y35_N3
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

-- Location: LCCOMB_X76_Y35_N4
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

-- Location: FF_X76_Y35_N5
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

-- Location: LCCOMB_X76_Y35_N6
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

-- Location: FF_X76_Y35_N7
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

-- Location: LCCOMB_X76_Y35_N8
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

-- Location: FF_X76_Y35_N9
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

-- Location: LCCOMB_X76_Y35_N10
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

-- Location: FF_X76_Y35_N11
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

-- Location: LCCOMB_X76_Y35_N12
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

-- Location: FF_X76_Y35_N13
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

-- Location: LCCOMB_X76_Y35_N14
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

-- Location: FF_X76_Y35_N15
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

-- Location: LCCOMB_X76_Y35_N16
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

-- Location: FF_X76_Y35_N17
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

-- Location: LCCOMB_X76_Y35_N18
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

-- Location: FF_X76_Y35_N19
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

-- Location: LCCOMB_X77_Y37_N24
\Memory_inst|memory~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~43_combout\ = (!pc(2) & (!pc(1) & (!pc(3) & !pc(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(2),
	datab => pc(1),
	datac => pc(3),
	datad => pc(4),
	combout => \Memory_inst|memory~43_combout\);

-- Location: LCCOMB_X77_Y35_N16
\Memory_inst|memory~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~44_combout\ = (!pc(7) & (!pc(6) & (!pc(8) & !pc(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(7),
	datab => pc(6),
	datac => pc(8),
	datad => pc(5),
	combout => \Memory_inst|memory~44_combout\);

-- Location: LCCOMB_X77_Y37_N12
\Memory_inst|memory~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~46_combout\ = (\Memory_inst|memory~43_combout\ & (!pc(9) & \Memory_inst|memory~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memory_inst|memory~43_combout\,
	datac => pc(9),
	datad => \Memory_inst|memory~44_combout\,
	combout => \Memory_inst|memory~46_combout\);

-- Location: LCCOMB_X77_Y37_N8
\ir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~0_combout\ = (!pc(0) & (!\clr~input_o\ & \Memory_inst|memory~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => \clr~input_o\,
	datad => \Memory_inst|memory~46_combout\,
	combout => \ir~0_combout\);

-- Location: FF_X77_Y37_N9
\ir[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(11));

-- Location: LCCOMB_X77_Y37_N18
\ir~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~1_combout\ = (!pc(9) & (!\clr~input_o\ & (\Memory_inst|memory~44_combout\ & \Memory_inst|memory~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \clr~input_o\,
	datac => \Memory_inst|memory~44_combout\,
	datad => \Memory_inst|memory~43_combout\,
	combout => \ir~1_combout\);

-- Location: FF_X77_Y37_N19
\ir[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(21));

-- Location: LCCOMB_X77_Y37_N0
\ir~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~2_combout\ = (pc(0) & (!\clr~input_o\ & \Memory_inst|memory~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => \clr~input_o\,
	datad => \Memory_inst|memory~46_combout\,
	combout => \ir~2_combout\);

-- Location: FF_X77_Y37_N1
\ir[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(18));

-- Location: LCCOMB_X77_Y35_N26
\opcode~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode~0_combout\ = (ir(18) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ir(18),
	datad => \clr~input_o\,
	combout => \opcode~0_combout\);

-- Location: FF_X77_Y35_N27
\opcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(3));

-- Location: LCCOMB_X77_Y38_N8
\rt_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_addr~0_combout\ = (ir(21) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ir(21),
	datad => \clr~input_o\,
	combout => \rt_addr~0_combout\);

-- Location: LCCOMB_X77_Y38_N4
\rt_addr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_addr[0]~1_combout\ = (\clr~input_o\) # (!opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => opcode(3),
	combout => \rt_addr[0]~1_combout\);

-- Location: FF_X77_Y38_N5
\rt_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_addr~0_combout\,
	sload => VCC,
	ena => \rt_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rt_addr(0));

-- Location: LCCOMB_X77_Y37_N14
\rs_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr~0_combout\ = (ir(21) & (opcode(3) & !\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ir(21),
	datac => opcode(3),
	datad => \clr~input_o\,
	combout => \rs_addr~0_combout\);

-- Location: FF_X77_Y37_N15
\rs_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(0));

-- Location: LCCOMB_X77_Y35_N24
\rs_addr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr~1_combout\ = (!\clr~input_o\ & (!opcode(3) & ir(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => opcode(3),
	datad => ir(11),
	combout => \rs_addr~1_combout\);

-- Location: LCCOMB_X77_Y35_N8
\rs_addr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr[1]~feeder_combout\ = \rs_addr~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_addr~1_combout\,
	combout => \rs_addr[1]~feeder_combout\);

-- Location: FF_X77_Y35_N9
\rs_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_addr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(1));

-- Location: LCCOMB_X77_Y35_N10
\rs_addr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr~2_combout\ = (ir(18) & (!opcode(3) & !\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir(18),
	datac => opcode(3),
	datad => \clr~input_o\,
	combout => \rs_addr~2_combout\);

-- Location: FF_X77_Y35_N11
\rs_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(2));

-- Location: FF_X77_Y35_N25
\rd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(0));

-- Location: FF_X77_Y35_N13
\rd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ir(11),
	sclr => \clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(1));

-- Location: LCCOMB_X77_Y35_N6
\rd_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~0_combout\ = (ir(18) & (opcode(3) & !\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir(18),
	datac => opcode(3),
	datad => \clr~input_o\,
	combout => \rd_addr~0_combout\);

-- Location: FF_X77_Y35_N7
\rd_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(2));

-- Location: LCCOMB_X77_Y38_N28
\func~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func~0_combout\ = (!\clr~input_o\ & ir(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => ir(11),
	combout => \func~0_combout\);

-- Location: LCCOMB_X77_Y38_N26
\func[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[1]~feeder_combout\ = \func~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~0_combout\,
	combout => \func[1]~feeder_combout\);

-- Location: FF_X77_Y38_N27
\func[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \func[1]~feeder_combout\,
	ena => \rt_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(1));

-- Location: LCCOMB_X77_Y38_N16
\func[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[2]~feeder_combout\ = \rt_addr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rt_addr~0_combout\,
	combout => \func[2]~feeder_combout\);

-- Location: FF_X77_Y38_N17
\func[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \func[2]~feeder_combout\,
	ena => \rt_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(2));

-- Location: LCCOMB_X77_Y38_N30
\rs_addr[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr[1]~3_combout\ = (\clr~input_o\) # (opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => opcode(3),
	combout => \rs_addr[1]~3_combout\);

-- Location: FF_X77_Y38_N31
\immediate[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \func~0_combout\,
	sload => VCC,
	ena => \rs_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(17));

-- Location: FF_X77_Y38_N9
\immediate[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_addr~0_combout\,
	ena => \rs_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(18));

-- Location: LCCOMB_X77_Y38_N14
\immediate[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[27]~feeder_combout\ = \func~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~0_combout\,
	combout => \immediate[27]~feeder_combout\);

-- Location: FF_X77_Y38_N15
\immediate[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \immediate[27]~feeder_combout\,
	ena => \rs_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(27));

-- Location: FF_X77_Y38_N29
\immediate[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \func~0_combout\,
	ena => \rs_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(28));

-- Location: LCCOMB_X77_Y37_N30
\Memory_inst|memory~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~45_combout\ = (!pc(9) & (\Memory_inst|memory~44_combout\ & (!pc(0) & \Memory_inst|memory~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \Memory_inst|memory~44_combout\,
	datac => pc(0),
	datad => \Memory_inst|memory~43_combout\,
	combout => \Memory_inst|memory~45_combout\);

-- Location: LCCOMB_X77_Y37_N22
\Memory_inst|memory~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~47_combout\ = (!pc(9) & (\Memory_inst|memory~44_combout\ & (pc(0) & \Memory_inst|memory~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \Memory_inst|memory~44_combout\,
	datac => pc(0),
	datad => \Memory_inst|memory~43_combout\,
	combout => \Memory_inst|memory~47_combout\);

-- Location: LCCOMB_X77_Y37_N28
\AR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~0_combout\ = (pc(0) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datad => \clr~input_o\,
	combout => \AR~0_combout\);

-- Location: FF_X77_Y37_N29
\AR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(0));

-- Location: LCCOMB_X77_Y37_N10
\AR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~1_combout\ = (!\clr~input_o\ & pc(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => pc(1),
	combout => \AR~1_combout\);

-- Location: FF_X77_Y37_N11
\AR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(1));

-- Location: LCCOMB_X77_Y37_N20
\AR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~2_combout\ = (!\clr~input_o\ & pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => pc(2),
	combout => \AR~2_combout\);

-- Location: FF_X77_Y37_N21
\AR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(2));

-- Location: LCCOMB_X77_Y37_N2
\AR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~3_combout\ = (pc(3) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(3),
	datad => \clr~input_o\,
	combout => \AR~3_combout\);

-- Location: FF_X77_Y37_N3
\AR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(3));

-- Location: LCCOMB_X77_Y37_N16
\AR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~4_combout\ = (!\clr~input_o\ & pc(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => pc(4),
	combout => \AR~4_combout\);

-- Location: FF_X77_Y37_N17
\AR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(4));

-- Location: LCCOMB_X77_Y35_N2
\AR~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~5_combout\ = (pc(5) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(5),
	datad => \clr~input_o\,
	combout => \AR~5_combout\);

-- Location: FF_X77_Y35_N3
\AR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(5));

-- Location: LCCOMB_X77_Y35_N20
\AR~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~6_combout\ = (pc(6) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(6),
	datad => \clr~input_o\,
	combout => \AR~6_combout\);

-- Location: FF_X77_Y35_N21
\AR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(6));

-- Location: LCCOMB_X77_Y37_N26
\AR~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~7_combout\ = (!\clr~input_o\ & pc(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => pc(7),
	combout => \AR~7_combout\);

-- Location: FF_X77_Y37_N27
\AR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(7));

-- Location: LCCOMB_X77_Y35_N14
\AR~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~8_combout\ = (pc(8) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(8),
	datad => \clr~input_o\,
	combout => \AR~8_combout\);

-- Location: FF_X77_Y35_N15
\AR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(8));

-- Location: LCCOMB_X77_Y37_N4
\AR~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~9_combout\ = (pc(9) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datad => \clr~input_o\,
	combout => \AR~9_combout\);

-- Location: FF_X77_Y37_N5
\AR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(9));

-- Location: LCCOMB_X76_Y35_N20
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

-- Location: FF_X76_Y35_N21
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

-- Location: LCCOMB_X77_Y35_N28
\AR~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~10_combout\ = (pc(10) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(10),
	datad => \clr~input_o\,
	combout => \AR~10_combout\);

-- Location: FF_X77_Y35_N29
\AR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(10));

-- Location: LCCOMB_X76_Y35_N22
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

-- Location: FF_X76_Y35_N23
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

-- Location: LCCOMB_X77_Y35_N18
\AR~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~11_combout\ = (pc(11) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(11),
	datad => \clr~input_o\,
	combout => \AR~11_combout\);

-- Location: FF_X77_Y35_N19
\AR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(11));

-- Location: LCCOMB_X76_Y35_N24
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

-- Location: FF_X76_Y35_N25
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

-- Location: LCCOMB_X77_Y35_N0
\AR~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~12_combout\ = (pc(12) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(12),
	datad => \clr~input_o\,
	combout => \AR~12_combout\);

-- Location: FF_X77_Y35_N1
\AR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(12));

-- Location: LCCOMB_X76_Y35_N26
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

-- Location: FF_X76_Y35_N27
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

-- Location: LCCOMB_X77_Y35_N30
\AR~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~13_combout\ = (pc(13) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(13),
	datad => \clr~input_o\,
	combout => \AR~13_combout\);

-- Location: FF_X77_Y35_N31
\AR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(13));

-- Location: LCCOMB_X76_Y35_N28
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

-- Location: FF_X76_Y35_N29
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

-- Location: LCCOMB_X77_Y35_N4
\AR~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~14_combout\ = (pc(14) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(14),
	datad => \clr~input_o\,
	combout => \AR~14_combout\);

-- Location: FF_X77_Y35_N5
\AR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(14));

-- Location: LCCOMB_X76_Y35_N30
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

-- Location: FF_X76_Y35_N31
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

-- Location: LCCOMB_X77_Y35_N22
\AR~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~15_combout\ = (pc(15) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(15),
	datad => \clr~input_o\,
	combout => \AR~15_combout\);

-- Location: FF_X77_Y35_N23
\AR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(15));

-- Location: LCCOMB_X76_Y34_N0
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

-- Location: FF_X76_Y34_N1
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

-- Location: LCCOMB_X77_Y34_N24
\AR~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~16_combout\ = (!\clr~input_o\ & pc(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(16),
	combout => \AR~16_combout\);

-- Location: FF_X77_Y34_N25
\AR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(16));

-- Location: LCCOMB_X76_Y34_N2
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

-- Location: FF_X76_Y34_N3
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

-- Location: LCCOMB_X77_Y34_N2
\AR~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~17_combout\ = (pc(17) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(17),
	datac => \clr~input_o\,
	combout => \AR~17_combout\);

-- Location: FF_X77_Y34_N3
\AR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(17));

-- Location: LCCOMB_X76_Y34_N4
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

-- Location: FF_X76_Y34_N5
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

-- Location: LCCOMB_X77_Y34_N4
\AR~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~18_combout\ = (!\clr~input_o\ & pc(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(18),
	combout => \AR~18_combout\);

-- Location: FF_X77_Y34_N5
\AR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(18));

-- Location: LCCOMB_X76_Y34_N6
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

-- Location: FF_X76_Y34_N7
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

-- Location: LCCOMB_X77_Y34_N14
\AR~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~19_combout\ = (!\clr~input_o\ & pc(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(19),
	combout => \AR~19_combout\);

-- Location: FF_X77_Y34_N15
\AR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(19));

-- Location: LCCOMB_X76_Y34_N8
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

-- Location: FF_X76_Y34_N9
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

-- Location: LCCOMB_X77_Y34_N20
\AR~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~20_combout\ = (pc(20) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(20),
	datac => \clr~input_o\,
	combout => \AR~20_combout\);

-- Location: FF_X77_Y34_N21
\AR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(20));

-- Location: LCCOMB_X76_Y34_N10
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

-- Location: FF_X76_Y34_N11
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

-- Location: LCCOMB_X77_Y34_N22
\AR~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~21_combout\ = (pc(21) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(21),
	datac => \clr~input_o\,
	combout => \AR~21_combout\);

-- Location: FF_X77_Y34_N23
\AR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(21));

-- Location: LCCOMB_X76_Y34_N12
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

-- Location: FF_X76_Y34_N13
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

-- Location: LCCOMB_X77_Y34_N0
\AR~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~22_combout\ = (pc(22) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(22),
	datac => \clr~input_o\,
	combout => \AR~22_combout\);

-- Location: FF_X77_Y34_N1
\AR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(22));

-- Location: LCCOMB_X76_Y34_N14
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

-- Location: FF_X76_Y34_N15
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

-- Location: LCCOMB_X77_Y34_N6
\AR~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~23_combout\ = (pc(23) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(23),
	datac => \clr~input_o\,
	combout => \AR~23_combout\);

-- Location: FF_X77_Y34_N7
\AR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(23));

-- Location: LCCOMB_X76_Y34_N16
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

-- Location: FF_X76_Y34_N17
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

-- Location: LCCOMB_X77_Y34_N28
\AR~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~24_combout\ = (!\clr~input_o\ & pc(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(24),
	combout => \AR~24_combout\);

-- Location: FF_X77_Y34_N29
\AR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(24));

-- Location: LCCOMB_X76_Y34_N18
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

-- Location: FF_X76_Y34_N19
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

-- Location: LCCOMB_X77_Y34_N26
\AR~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~25_combout\ = (pc(25) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(25),
	datac => \clr~input_o\,
	combout => \AR~25_combout\);

-- Location: FF_X77_Y34_N27
\AR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(25));

-- Location: LCCOMB_X76_Y34_N20
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

-- Location: FF_X76_Y34_N21
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

-- Location: LCCOMB_X77_Y34_N8
\AR~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~26_combout\ = (pc(26) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(26),
	datac => \clr~input_o\,
	combout => \AR~26_combout\);

-- Location: FF_X77_Y34_N9
\AR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(26));

-- Location: LCCOMB_X76_Y34_N22
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

-- Location: FF_X76_Y34_N23
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

-- Location: LCCOMB_X77_Y34_N18
\AR~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~27_combout\ = (pc(27) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(27),
	datac => \clr~input_o\,
	combout => \AR~27_combout\);

-- Location: FF_X77_Y34_N19
\AR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(27));

-- Location: LCCOMB_X76_Y34_N24
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

-- Location: FF_X76_Y34_N25
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

-- Location: LCCOMB_X77_Y34_N12
\AR~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~28_combout\ = (pc(28) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(28),
	datac => \clr~input_o\,
	combout => \AR~28_combout\);

-- Location: FF_X77_Y34_N13
\AR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(28));

-- Location: LCCOMB_X76_Y34_N26
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

-- Location: FF_X76_Y34_N27
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

-- Location: LCCOMB_X77_Y34_N30
\AR~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~29_combout\ = (!\clr~input_o\ & pc(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(29),
	combout => \AR~29_combout\);

-- Location: FF_X77_Y34_N31
\AR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(29));

-- Location: LCCOMB_X76_Y34_N28
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

-- Location: FF_X76_Y34_N29
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

-- Location: LCCOMB_X77_Y34_N16
\AR~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~30_combout\ = (pc(30) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(30),
	datac => \clr~input_o\,
	combout => \AR~30_combout\);

-- Location: FF_X77_Y34_N17
\AR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(30));

-- Location: LCCOMB_X76_Y34_N30
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

-- Location: FF_X76_Y34_N31
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

-- Location: LCCOMB_X77_Y34_N10
\AR~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~31_combout\ = (pc(31) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(31),
	datac => \clr~input_o\,
	combout => \AR~31_combout\);

-- Location: FF_X77_Y34_N11
\AR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AR~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AR(31));

-- Location: IOIBUF_X0_Y27_N22
\input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\input[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: IOIBUF_X51_Y0_N15
\input[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\input[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\input[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N29
\input[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\input[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: IOIBUF_X78_Y20_N1
\input[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\input[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: IOIBUF_X78_Y17_N22
\input[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X78_Y15_N8
\input[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\input[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(16),
	o => \input[16]~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\input[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(17),
	o => \input[17]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\input[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(18),
	o => \input[18]~input_o\);

-- Location: IOIBUF_X62_Y0_N8
\input[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(19),
	o => \input[19]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\input[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(20),
	o => \input[20]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\input[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(21),
	o => \input[21]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\input[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(22),
	o => \input[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\input[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(23),
	o => \input[23]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\input[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(24),
	o => \input[24]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\input[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(25),
	o => \input[25]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\input[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(26),
	o => \input[26]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\input[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(27),
	o => \input[27]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\input[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(28),
	o => \input[28]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\input[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(29),
	o => \input[29]~input_o\);

-- Location: IOIBUF_X78_Y18_N1
\input[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(30),
	o => \input[30]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\input[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(31),
	o => \input[31]~input_o\);

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

ww_debug_rt_addr(0) <= \debug_rt_addr[0]~output_o\;

ww_debug_rt_addr(1) <= \debug_rt_addr[1]~output_o\;

ww_debug_rt_addr(2) <= \debug_rt_addr[2]~output_o\;

ww_debug_rt_addr(3) <= \debug_rt_addr[3]~output_o\;

ww_debug_rt_addr(4) <= \debug_rt_addr[4]~output_o\;

ww_debug_rs_addr(0) <= \debug_rs_addr[0]~output_o\;

ww_debug_rs_addr(1) <= \debug_rs_addr[1]~output_o\;

ww_debug_rs_addr(2) <= \debug_rs_addr[2]~output_o\;

ww_debug_rs_addr(3) <= \debug_rs_addr[3]~output_o\;

ww_debug_rs_addr(4) <= \debug_rs_addr[4]~output_o\;

ww_debug_rd_addr(0) <= \debug_rd_addr[0]~output_o\;

ww_debug_rd_addr(1) <= \debug_rd_addr[1]~output_o\;

ww_debug_rd_addr(2) <= \debug_rd_addr[2]~output_o\;

ww_debug_rd_addr(3) <= \debug_rd_addr[3]~output_o\;

ww_debug_rd_addr(4) <= \debug_rd_addr[4]~output_o\;

ww_debug_shamt(0) <= \debug_shamt[0]~output_o\;

ww_debug_shamt(1) <= \debug_shamt[1]~output_o\;

ww_debug_shamt(2) <= \debug_shamt[2]~output_o\;

ww_debug_shamt(3) <= \debug_shamt[3]~output_o\;

ww_debug_shamt(4) <= \debug_shamt[4]~output_o\;

ww_debug_func(0) <= \debug_func[0]~output_o\;

ww_debug_func(1) <= \debug_func[1]~output_o\;

ww_debug_func(2) <= \debug_func[2]~output_o\;

ww_debug_func(3) <= \debug_func[3]~output_o\;

ww_debug_func(4) <= \debug_func[4]~output_o\;

ww_debug_func(5) <= \debug_func[5]~output_o\;

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
END structure;


