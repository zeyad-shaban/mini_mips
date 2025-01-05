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

-- DATE "01/05/2025 10:22:39"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
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
	debug_rd_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_immediate : OUT std_logic_vector(31 DOWNTO 0);
	debug_mem_data_out : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_data_in : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rs : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rt : OUT std_logic_vector(31 DOWNTO 0);
	debug_bus_reg_rd : OUT std_logic_vector(31 DOWNTO 0);
	debug_reg_file_ld : OUT std_logic
	);
END mini_mips;

-- Design Ports Information
-- output[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[11]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[12]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[13]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[14]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[15]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[16]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[17]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[18]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[19]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[20]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[21]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[22]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[23]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[24]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[25]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[26]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[27]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[28]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[29]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[30]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pc[31]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[7]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[8]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[15]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[16]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[17]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[18]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[19]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[20]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[21]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[22]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[23]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[24]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[25]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[26]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[27]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[29]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[30]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_ir[31]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_opcode[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[4]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[8]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[11]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[13]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[17]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[18]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[19]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[21]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[22]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[23]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[24]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[26]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[27]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[28]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[29]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[30]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[31]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[12]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[13]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[14]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[16]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[17]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[18]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[19]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[21]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[22]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[23]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[25]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[26]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[27]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[28]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[29]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[30]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[31]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[14]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[16]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[17]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[18]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[19]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[20]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[22]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[23]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[25]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[26]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[28]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[29]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[30]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[31]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[9]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[10]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[14]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[15]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[16]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[19]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[20]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[22]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[24]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[25]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[26]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[27]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[28]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[29]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[30]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[31]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[2]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[9]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[15]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[18]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[19]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[20]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[21]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[22]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[23]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[24]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[26]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[27]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[28]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[30]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[31]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[7]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[12]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[14]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[16]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[18]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[19]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[20]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[21]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[22]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[23]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[24]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[25]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[26]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[27]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[29]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[30]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[31]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg_file_ld	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_debug_rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_debug_mem_data_out : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \debug_rd_addr[0]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[1]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[2]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[3]~output_o\ : std_logic;
SIGNAL \debug_rd_addr[4]~output_o\ : std_logic;
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
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \pc[0]~32_combout\ : std_logic;
SIGNAL \current_state.DECODE1~0_combout\ : std_logic;
SIGNAL \current_state.DECODE1~q\ : std_logic;
SIGNAL \current_state.DECODE2~feeder_combout\ : std_logic;
SIGNAL \current_state.DECODE2~q\ : std_logic;
SIGNAL \current_state.EXECUTE~feeder_combout\ : std_logic;
SIGNAL \current_state.EXECUTE~q\ : std_logic;
SIGNAL \current_state.WRITEBACK~feeder_combout\ : std_logic;
SIGNAL \current_state.WRITEBACK~q\ : std_logic;
SIGNAL \current_state.FETCH~0_combout\ : std_logic;
SIGNAL \current_state.FETCH~q\ : std_logic;
SIGNAL \pc[23]~34_combout\ : std_logic;
SIGNAL \pc[0]~33\ : std_logic;
SIGNAL \pc[1]~35_combout\ : std_logic;
SIGNAL \pc[1]~36\ : std_logic;
SIGNAL \pc[2]~37_combout\ : std_logic;
SIGNAL \pc[2]~38\ : std_logic;
SIGNAL \pc[3]~39_combout\ : std_logic;
SIGNAL \pc[3]~40\ : std_logic;
SIGNAL \pc[4]~41_combout\ : std_logic;
SIGNAL \pc[4]~42\ : std_logic;
SIGNAL \pc[5]~43_combout\ : std_logic;
SIGNAL \pc[5]~44\ : std_logic;
SIGNAL \pc[6]~45_combout\ : std_logic;
SIGNAL \pc[6]~46\ : std_logic;
SIGNAL \pc[7]~47_combout\ : std_logic;
SIGNAL \pc[7]~48\ : std_logic;
SIGNAL \pc[8]~49_combout\ : std_logic;
SIGNAL \pc[8]~50\ : std_logic;
SIGNAL \pc[9]~51_combout\ : std_logic;
SIGNAL \Memory_inst|memory~43_combout\ : std_logic;
SIGNAL \Memory_inst|memory~44_combout\ : std_logic;
SIGNAL \Memory_inst|memory~46_combout\ : std_logic;
SIGNAL \ir_temp[26]~feeder_combout\ : std_logic;
SIGNAL \ir_temp[0]~1_combout\ : std_logic;
SIGNAL \opcode_temp[0]~0_combout\ : std_logic;
SIGNAL \opcode~0_combout\ : std_logic;
SIGNAL \opcode[0]~1_combout\ : std_logic;
SIGNAL \Memory_inst|memory~56_combout\ : std_logic;
SIGNAL \opcode_temp[2]~feeder_combout\ : std_logic;
SIGNAL \opcode~3_combout\ : std_logic;
SIGNAL \Memory_inst|memory~57_combout\ : std_logic;
SIGNAL \Memory_inst|memory~58_combout\ : std_logic;
SIGNAL \opcode_temp[1]~feeder_combout\ : std_logic;
SIGNAL \opcode~2_combout\ : std_logic;
SIGNAL \bus_data_in[1]~58_combout\ : std_logic;
SIGNAL \bus_data_in[0]~60_combout\ : std_logic;
SIGNAL \Memory_inst|memory~45_combout\ : std_logic;
SIGNAL \ir~0_combout\ : std_logic;
SIGNAL \func[1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \func[3]~0_combout\ : std_logic;
SIGNAL \ir~2_combout\ : std_logic;
SIGNAL \func[3]~feeder_combout\ : std_logic;
SIGNAL \bus_data_in[0]~61_combout\ : std_logic;
SIGNAL \bus_data_in[0]~62_combout\ : std_logic;
SIGNAL \bus_data_in[1]~70_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \reg_file_ld~q\ : std_logic;
SIGNAL \Memory_inst|memory~47_combout\ : std_logic;
SIGNAL \Memory_inst|memory~50_combout\ : std_logic;
SIGNAL \Memory_inst|memory~51_combout\ : std_logic;
SIGNAL \rd_addr~1_combout\ : std_logic;
SIGNAL \Memory_inst|memory~48_combout\ : std_logic;
SIGNAL \Memory_inst|memory~49_combout\ : std_logic;
SIGNAL \rd_addr~0_combout\ : std_logic;
SIGNAL \Memory_inst|memory~52_combout\ : std_logic;
SIGNAL \Memory_inst|memory~53_combout\ : std_logic;
SIGNAL \rd_addr~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][3]~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][0]~q\ : std_logic;
SIGNAL \ir~8_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][15]~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][0]~q\ : std_logic;
SIGNAL \Memory_inst|memory~54_combout\ : std_logic;
SIGNAL \Memory_inst|memory~55_combout\ : std_logic;
SIGNAL \ir~7_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][20]~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][0]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][0]~40_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][0]~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux31~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux31~1_combout\ : std_logic;
SIGNAL \bus_data_in[0]~63_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[3][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux0~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux0~1_combout\ : std_logic;
SIGNAL \bus_data_in[23]~72_combout\ : std_logic;
SIGNAL \ir~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux1~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux1~1_combout\ : std_logic;
SIGNAL \bus_data_in~162_combout\ : std_logic;
SIGNAL \bus_data_in[23]~73_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][29]~q\ : std_logic;
SIGNAL \ir~5_combout\ : std_logic;
SIGNAL \ir~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux34~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux34~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][6]~36_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][28]~39_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][5]~38_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][31]~37_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux34~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux34~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux34~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux3~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux3~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux36~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux36~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux36~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux36~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux36~4_combout\ : std_logic;
SIGNAL \bus_data_in~158_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux38~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux38~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux38~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux38~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux38~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][23]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux40~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux40~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][23]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux40~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux40~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux40~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux44~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux44~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][19]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux44~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux44~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux44~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux15~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux15~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][14]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux17~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux17~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux50~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux50~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux50~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux50~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux50~4_combout\ : std_logic;
SIGNAL \ir~3_combout\ : std_logic;
SIGNAL \immediate[1]~0_combout\ : std_logic;
SIGNAL \bus_data_in~96_combout\ : std_logic;
SIGNAL \bus_data_in[12]~3_combout\ : std_logic;
SIGNAL \bus_data_in~93_combout\ : std_logic;
SIGNAL \bus_data_in[11]~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[3][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux23~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux23~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux56~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux56~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux56~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux56~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux56~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux26~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux26~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux28~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux28~1_combout\ : std_logic;
SIGNAL \bus_data_in~76_combout\ : std_logic;
SIGNAL \bus_data_in[3]~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][2]~43_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux29~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux29~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][1]~41_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux30~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux30~1_combout\ : std_logic;
SIGNAL \bus_data_in~65_combout\ : std_logic;
SIGNAL \bus_data_in[1]~0_combout\ : std_logic;
SIGNAL \bus_data_in[1]~66_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][0]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][0]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux63~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \bus_data_in~67_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \bus_data_in~68_combout\ : std_logic;
SIGNAL \bus_data_in[1]~69_combout\ : std_logic;
SIGNAL \bus_data_in[1]~71_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~5_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux62~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux62~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux62~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux62~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux62~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \bus_data_in~74_combout\ : std_logic;
SIGNAL \bus_data_in~75_combout\ : std_logic;
SIGNAL \bus_data_in~137_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][2]~42_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux61~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux61~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux61~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux61~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux61~4_combout\ : std_logic;
SIGNAL \bus_data_in~77_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \bus_data_in~78_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~7_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux60~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux60~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux60~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux60~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux60~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][4]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux59~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \bus_data_in~79_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \bus_data_in~80_combout\ : std_logic;
SIGNAL \bus_data_in~138_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~8_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux27~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux27~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \bus_data_in~81_combout\ : std_logic;
SIGNAL \bus_data_in~82_combout\ : std_logic;
SIGNAL \bus_data_in~139_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~9_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][5]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux58~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux58~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux58~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux58~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux58~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux57~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux57~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][6]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux57~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux57~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux57~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \bus_data_in~83_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \bus_data_in~84_combout\ : std_logic;
SIGNAL \bus_data_in~140_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~10_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux25~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux25~1_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \bus_data_in~85_combout\ : std_logic;
SIGNAL \bus_data_in~86_combout\ : std_logic;
SIGNAL \bus_data_in~141_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~11_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux24~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux24~1_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \bus_data_in~87_combout\ : std_logic;
SIGNAL \bus_data_in~88_combout\ : std_logic;
SIGNAL \bus_data_in~142_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~12_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux55~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux55~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux55~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux55~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux55~4_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \bus_data_in~89_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[3][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux54~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux54~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux54~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux54~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux54~4_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \bus_data_in~90_combout\ : std_logic;
SIGNAL \bus_data_in~143_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~13_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux22~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux22~1_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux53~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux53~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux53~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux53~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux53~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \bus_data_in~91_combout\ : std_logic;
SIGNAL \bus_data_in~92_combout\ : std_logic;
SIGNAL \bus_data_in~144_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~14_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux21~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux21~1_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux52~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux52~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux52~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux52~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux52~4_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \bus_data_in~94_combout\ : std_logic;
SIGNAL \bus_data_in~95_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~15_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux20~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux20~1_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \bus_data_in~97_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux51~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux51~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux51~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux51~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux51~4_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \bus_data_in~98_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~16_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux19~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux19~1_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \bus_data_in~99_combout\ : std_logic;
SIGNAL \bus_data_in~100_combout\ : std_logic;
SIGNAL \bus_data_in~145_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~17_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux18~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux18~1_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \bus_data_in~101_combout\ : std_logic;
SIGNAL \bus_data_in~102_combout\ : std_logic;
SIGNAL \bus_data_in~146_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~18_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux49~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux49~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux49~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux49~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux49~4_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \bus_data_in~103_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux48~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux48~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux48~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux48~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux48~4_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \bus_data_in~104_combout\ : std_logic;
SIGNAL \bus_data_in~147_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~19_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux16~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux16~1_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \bus_data_in~105_combout\ : std_logic;
SIGNAL \bus_data_in~106_combout\ : std_logic;
SIGNAL \bus_data_in~148_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~20_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux47~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux47~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux47~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux47~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux47~4_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \bus_data_in~107_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][17]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux46~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux46~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux46~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux46~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux46~4_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \bus_data_in~108_combout\ : std_logic;
SIGNAL \bus_data_in~149_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~21_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux14~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux14~1_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][18]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux45~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux45~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][18]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux45~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux45~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux45~4_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \bus_data_in~109_combout\ : std_logic;
SIGNAL \bus_data_in~110_combout\ : std_logic;
SIGNAL \bus_data_in~150_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~22_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][18]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux13~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux13~1_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \bus_data_in~111_combout\ : std_logic;
SIGNAL \bus_data_in~112_combout\ : std_logic;
SIGNAL \bus_data_in~151_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~23_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux12~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux12~1_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][20]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux43~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux43~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux43~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux43~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux43~4_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \bus_data_in~113_combout\ : std_logic;
SIGNAL \bus_data_in~114_combout\ : std_logic;
SIGNAL \bus_data_in~152_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~24_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux11~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux11~1_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \bus_data_in~115_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][21]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux42~4_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \bus_data_in~116_combout\ : std_logic;
SIGNAL \bus_data_in~153_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~25_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux10~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux10~1_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][22]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux41~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux41~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux41~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux41~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux41~4_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \bus_data_in~117_combout\ : std_logic;
SIGNAL \bus_data_in~118_combout\ : std_logic;
SIGNAL \bus_data_in~154_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~26_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux9~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux9~1_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \bus_data_in~119_combout\ : std_logic;
SIGNAL \bus_data_in~120_combout\ : std_logic;
SIGNAL \bus_data_in~155_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~27_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux8~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux8~1_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][24]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux39~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux39~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux39~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux39~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux39~4_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \bus_data_in~121_combout\ : std_logic;
SIGNAL \bus_data_in~122_combout\ : std_logic;
SIGNAL \bus_data_in~156_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~28_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux7~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux7~1_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \bus_data_in~123_combout\ : std_logic;
SIGNAL \bus_data_in~124_combout\ : std_logic;
SIGNAL \bus_data_in~157_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~29_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux6~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux6~1_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux37~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux37~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux37~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux37~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux37~4_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \bus_data_in~125_combout\ : std_logic;
SIGNAL \bus_data_in~126_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~30_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux5~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux5~1_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \bus_data_in~127_combout\ : std_logic;
SIGNAL \bus_data_in~128_combout\ : std_logic;
SIGNAL \bus_data_in~159_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~31_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux4~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux4~1_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \bus_data_in~160_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \bus_data_in~129_combout\ : std_logic;
SIGNAL \bus_data_in~130_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~32_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux35~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux35~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][28]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux35~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux35~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux35~4_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \bus_data_in~131_combout\ : std_logic;
SIGNAL \bus_data_in~132_combout\ : std_logic;
SIGNAL \bus_data_in~161_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~33_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux2~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux2~1_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \bus_data_in~133_combout\ : std_logic;
SIGNAL \bus_data_in~134_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~34_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux33~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux33~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux33~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux33~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux33~4_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \bus_data_in~135_combout\ : std_logic;
SIGNAL \bus_data_in~136_combout\ : std_logic;
SIGNAL \bus_data_in~163_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~35_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux32~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux32~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux32~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux32~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux32~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bus_data_in[0]~59_combout\ : std_logic;
SIGNAL \bus_data_in[0]~64_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux95~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~4_combout\ : std_logic;
SIGNAL \output~65_combout\ : std_logic;
SIGNAL \output[0]~64_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux94~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~4_combout\ : std_logic;
SIGNAL \output~66_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux93~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~4_combout\ : std_logic;
SIGNAL \output~67_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux92~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~4_combout\ : std_logic;
SIGNAL \output~68_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux91~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~4_combout\ : std_logic;
SIGNAL \output~69_combout\ : std_logic;
SIGNAL \output[4]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux90~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~4_combout\ : std_logic;
SIGNAL \output~70_combout\ : std_logic;
SIGNAL \output[5]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux89~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~4_combout\ : std_logic;
SIGNAL \output~71_combout\ : std_logic;
SIGNAL \output[6]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux88~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~4_combout\ : std_logic;
SIGNAL \output~72_combout\ : std_logic;
SIGNAL \output[7]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux87~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~4_combout\ : std_logic;
SIGNAL \output~73_combout\ : std_logic;
SIGNAL \output[8]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux86~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~4_combout\ : std_logic;
SIGNAL \output~74_combout\ : std_logic;
SIGNAL \output[9]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux85~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~4_combout\ : std_logic;
SIGNAL \output~75_combout\ : std_logic;
SIGNAL \output[10]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux84~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~4_combout\ : std_logic;
SIGNAL \output~76_combout\ : std_logic;
SIGNAL \output[11]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux83~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~4_combout\ : std_logic;
SIGNAL \output~77_combout\ : std_logic;
SIGNAL \output[12]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux82~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~4_combout\ : std_logic;
SIGNAL \output~78_combout\ : std_logic;
SIGNAL \output[13]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux81~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~4_combout\ : std_logic;
SIGNAL \output~79_combout\ : std_logic;
SIGNAL \output[14]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux80~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~4_combout\ : std_logic;
SIGNAL \output~80_combout\ : std_logic;
SIGNAL \output[15]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux79~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~4_combout\ : std_logic;
SIGNAL \output~81_combout\ : std_logic;
SIGNAL \output[16]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux78~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~4_combout\ : std_logic;
SIGNAL \output~82_combout\ : std_logic;
SIGNAL \output[17]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux77~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~4_combout\ : std_logic;
SIGNAL \output~83_combout\ : std_logic;
SIGNAL \output[18]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux76~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~4_combout\ : std_logic;
SIGNAL \output~84_combout\ : std_logic;
SIGNAL \output[19]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux75~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~4_combout\ : std_logic;
SIGNAL \output~85_combout\ : std_logic;
SIGNAL \output[20]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux74~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~4_combout\ : std_logic;
SIGNAL \output~86_combout\ : std_logic;
SIGNAL \output[21]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux73~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~4_combout\ : std_logic;
SIGNAL \output~87_combout\ : std_logic;
SIGNAL \output[22]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux72~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~4_combout\ : std_logic;
SIGNAL \output~88_combout\ : std_logic;
SIGNAL \output[23]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux71~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~4_combout\ : std_logic;
SIGNAL \output~89_combout\ : std_logic;
SIGNAL \output[24]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux70~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~4_combout\ : std_logic;
SIGNAL \output~90_combout\ : std_logic;
SIGNAL \output[25]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux69~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~4_combout\ : std_logic;
SIGNAL \output~91_combout\ : std_logic;
SIGNAL \output[26]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux68~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~4_combout\ : std_logic;
SIGNAL \output~92_combout\ : std_logic;
SIGNAL \output[27]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux67~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~4_combout\ : std_logic;
SIGNAL \output~93_combout\ : std_logic;
SIGNAL \output[28]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux66~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~4_combout\ : std_logic;
SIGNAL \output~94_combout\ : std_logic;
SIGNAL \output[29]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux65~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~4_combout\ : std_logic;
SIGNAL \output~95_combout\ : std_logic;
SIGNAL \output[30]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|Mux64~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~4_combout\ : std_logic;
SIGNAL \output~96_combout\ : std_logic;
SIGNAL \output[31]~reg0_q\ : std_logic;
SIGNAL \pc[9]~52\ : std_logic;
SIGNAL \pc[10]~53_combout\ : std_logic;
SIGNAL \pc[10]~54\ : std_logic;
SIGNAL \pc[11]~55_combout\ : std_logic;
SIGNAL \pc[11]~56\ : std_logic;
SIGNAL \pc[12]~57_combout\ : std_logic;
SIGNAL \pc[12]~58\ : std_logic;
SIGNAL \pc[13]~59_combout\ : std_logic;
SIGNAL \pc[13]~60\ : std_logic;
SIGNAL \pc[14]~61_combout\ : std_logic;
SIGNAL \pc[14]~62\ : std_logic;
SIGNAL \pc[15]~63_combout\ : std_logic;
SIGNAL \pc[15]~64\ : std_logic;
SIGNAL \pc[16]~65_combout\ : std_logic;
SIGNAL \pc[16]~66\ : std_logic;
SIGNAL \pc[17]~67_combout\ : std_logic;
SIGNAL \pc[17]~68\ : std_logic;
SIGNAL \pc[18]~69_combout\ : std_logic;
SIGNAL \pc[18]~70\ : std_logic;
SIGNAL \pc[19]~71_combout\ : std_logic;
SIGNAL \pc[19]~72\ : std_logic;
SIGNAL \pc[20]~73_combout\ : std_logic;
SIGNAL \pc[20]~74\ : std_logic;
SIGNAL \pc[21]~75_combout\ : std_logic;
SIGNAL \pc[21]~76\ : std_logic;
SIGNAL \pc[22]~77_combout\ : std_logic;
SIGNAL \pc[22]~78\ : std_logic;
SIGNAL \pc[23]~79_combout\ : std_logic;
SIGNAL \pc[23]~80\ : std_logic;
SIGNAL \pc[24]~81_combout\ : std_logic;
SIGNAL \pc[24]~82\ : std_logic;
SIGNAL \pc[25]~83_combout\ : std_logic;
SIGNAL \pc[25]~84\ : std_logic;
SIGNAL \pc[26]~85_combout\ : std_logic;
SIGNAL \pc[26]~86\ : std_logic;
SIGNAL \pc[27]~87_combout\ : std_logic;
SIGNAL \pc[27]~88\ : std_logic;
SIGNAL \pc[28]~89_combout\ : std_logic;
SIGNAL \pc[28]~90\ : std_logic;
SIGNAL \pc[29]~91_combout\ : std_logic;
SIGNAL \pc[29]~92\ : std_logic;
SIGNAL \pc[30]~93_combout\ : std_logic;
SIGNAL \pc[30]~94\ : std_logic;
SIGNAL \pc[31]~95_combout\ : std_logic;
SIGNAL \ir[1]~feeder_combout\ : std_logic;
SIGNAL \ir[27]~1_combout\ : std_logic;
SIGNAL \ir[3]~feeder_combout\ : std_logic;
SIGNAL \ir[11]~feeder_combout\ : std_logic;
SIGNAL \ir[12]~feeder_combout\ : std_logic;
SIGNAL \ir[22]~feeder_combout\ : std_logic;
SIGNAL \ir[26]~feeder_combout\ : std_logic;
SIGNAL \ir~9_combout\ : std_logic;
SIGNAL \ir[28]~feeder_combout\ : std_logic;
SIGNAL pc : std_logic_vector(31 DOWNTO 0);
SIGNAL bus_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ir : std_logic_vector(31 DOWNTO 0);
SIGNAL opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL rt_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL rs_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ir_temp : std_logic_vector(31 DOWNTO 0);
SIGNAL opcode_temp : std_logic_vector(5 DOWNTO 0);
SIGNAL func : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL ALT_INV_opcode : std_logic_vector(1 DOWNTO 1);

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
debug_rd_addr <= ww_debug_rd_addr;
debug_immediate <= ww_debug_immediate;
debug_mem_data_out <= ww_debug_mem_data_out;
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
ALT_INV_opcode(1) <= NOT opcode(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X51_Y0_N16
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N30
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X78_Y35_N2
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

-- Location: IOOBUF_X78_Y31_N2
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

-- Location: IOOBUF_X78_Y29_N2
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X78_Y31_N9
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

-- Location: IOOBUF_X78_Y30_N23
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

-- Location: IOOBUF_X78_Y29_N16
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

-- Location: IOOBUF_X78_Y34_N2
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y37_N23
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

-- Location: IOOBUF_X78_Y33_N23
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

-- Location: IOOBUF_X78_Y36_N16
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y36_N9
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y37_N16
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X54_Y54_N2
\debug_ir[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(1),
	devoe => ww_devoe,
	o => \debug_ir[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N9
\debug_ir[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(3),
	devoe => ww_devoe,
	o => \debug_ir[3]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X0_Y35_N23
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

-- Location: IOOBUF_X78_Y3_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N30
\debug_ir[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(12),
	devoe => ww_devoe,
	o => \debug_ir[12]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X51_Y54_N23
\debug_ir[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(16),
	devoe => ww_devoe,
	o => \debug_ir[16]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\debug_ir[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(17),
	devoe => ww_devoe,
	o => \debug_ir[17]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X0_Y3_N23
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOOBUF_X78_Y24_N16
\debug_ir[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(22),
	devoe => ww_devoe,
	o => \debug_ir[22]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
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

-- Location: IOOBUF_X0_Y37_N9
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

-- Location: IOOBUF_X62_Y0_N9
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

-- Location: IOOBUF_X51_Y54_N16
\debug_ir[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(26),
	devoe => ww_devoe,
	o => \debug_ir[26]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\debug_ir[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(27),
	devoe => ww_devoe,
	o => \debug_ir[27]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\debug_ir[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ir(28),
	devoe => ww_devoe,
	o => \debug_ir[28]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
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

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X40_Y0_N23
\debug_opcode[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => opcode(0),
	devoe => ww_devoe,
	o => \debug_opcode[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\debug_opcode[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => opcode(1),
	devoe => ww_devoe,
	o => \debug_opcode[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\debug_opcode[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => opcode(2),
	devoe => ww_devoe,
	o => \debug_opcode[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X0_Y36_N2
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X78_Y20_N9
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X46_Y54_N16
\debug_immediate[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(1),
	devoe => ww_devoe,
	o => \debug_immediate[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X46_Y54_N23
\debug_immediate[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(3),
	devoe => ww_devoe,
	o => \debug_immediate[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X71_Y54_N30
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X0_Y25_N2
\debug_immediate[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(11),
	devoe => ww_devoe,
	o => \debug_immediate[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\debug_immediate[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => immediate(11),
	devoe => ww_devoe,
	o => \debug_immediate[12]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X78_Y45_N2
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

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X78_Y20_N2
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X78_Y18_N2
\debug_mem_data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~46_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X69_Y54_N23
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X0_Y37_N2
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

-- Location: IOOBUF_X78_Y44_N2
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X78_Y17_N9
\debug_mem_data_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~47_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[11]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\debug_mem_data_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~47_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[12]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X0_Y30_N23
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

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X78_Y24_N24
\debug_mem_data_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~49_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[16]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\debug_mem_data_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~51_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[17]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\debug_mem_data_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~53_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[18]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X69_Y54_N16
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

-- Location: IOOBUF_X78_Y24_N9
\debug_mem_data_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~55_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[21]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\debug_mem_data_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~56_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[22]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X62_Y54_N30
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

-- Location: IOOBUF_X69_Y54_N30
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

-- Location: IOOBUF_X78_Y18_N16
\debug_mem_data_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~46_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[26]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\debug_mem_data_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~58_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[27]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\debug_mem_data_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memory_inst|memory~56_combout\,
	devoe => ww_devoe,
	o => \debug_mem_data_out[28]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X78_Y15_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X34_Y39_N30
\debug_bus_data_in[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(0),
	devoe => ww_devoe,
	o => \debug_bus_data_in[0]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\debug_bus_data_in[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(1),
	devoe => ww_devoe,
	o => \debug_bus_data_in[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\debug_bus_data_in[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(2),
	devoe => ww_devoe,
	o => \debug_bus_data_in[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\debug_bus_data_in[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(3),
	devoe => ww_devoe,
	o => \debug_bus_data_in[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\debug_bus_data_in[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(4),
	devoe => ww_devoe,
	o => \debug_bus_data_in[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\debug_bus_data_in[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(5),
	devoe => ww_devoe,
	o => \debug_bus_data_in[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\debug_bus_data_in[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(6),
	devoe => ww_devoe,
	o => \debug_bus_data_in[6]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\debug_bus_data_in[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(7),
	devoe => ww_devoe,
	o => \debug_bus_data_in[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\debug_bus_data_in[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(8),
	devoe => ww_devoe,
	o => \debug_bus_data_in[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\debug_bus_data_in[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(9),
	devoe => ww_devoe,
	o => \debug_bus_data_in[9]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\debug_bus_data_in[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(10),
	devoe => ww_devoe,
	o => \debug_bus_data_in[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\debug_bus_data_in[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(11),
	devoe => ww_devoe,
	o => \debug_bus_data_in[11]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\debug_bus_data_in[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(12),
	devoe => ww_devoe,
	o => \debug_bus_data_in[12]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\debug_bus_data_in[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(13),
	devoe => ww_devoe,
	o => \debug_bus_data_in[13]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\debug_bus_data_in[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(14),
	devoe => ww_devoe,
	o => \debug_bus_data_in[14]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\debug_bus_data_in[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(15),
	devoe => ww_devoe,
	o => \debug_bus_data_in[15]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\debug_bus_data_in[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(16),
	devoe => ww_devoe,
	o => \debug_bus_data_in[16]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\debug_bus_data_in[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(17),
	devoe => ww_devoe,
	o => \debug_bus_data_in[17]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\debug_bus_data_in[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(18),
	devoe => ww_devoe,
	o => \debug_bus_data_in[18]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\debug_bus_data_in[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(19),
	devoe => ww_devoe,
	o => \debug_bus_data_in[19]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\debug_bus_data_in[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(20),
	devoe => ww_devoe,
	o => \debug_bus_data_in[20]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\debug_bus_data_in[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(21),
	devoe => ww_devoe,
	o => \debug_bus_data_in[21]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\debug_bus_data_in[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(22),
	devoe => ww_devoe,
	o => \debug_bus_data_in[22]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\debug_bus_data_in[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(23),
	devoe => ww_devoe,
	o => \debug_bus_data_in[23]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\debug_bus_data_in[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(24),
	devoe => ww_devoe,
	o => \debug_bus_data_in[24]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\debug_bus_data_in[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(25),
	devoe => ww_devoe,
	o => \debug_bus_data_in[25]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\debug_bus_data_in[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(26),
	devoe => ww_devoe,
	o => \debug_bus_data_in[26]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\debug_bus_data_in[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(27),
	devoe => ww_devoe,
	o => \debug_bus_data_in[27]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\debug_bus_data_in[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(28),
	devoe => ww_devoe,
	o => \debug_bus_data_in[28]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\debug_bus_data_in[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(29),
	devoe => ww_devoe,
	o => \debug_bus_data_in[29]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\debug_bus_data_in[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(30),
	devoe => ww_devoe,
	o => \debug_bus_data_in[30]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\debug_bus_data_in[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bus_data_in(31),
	devoe => ww_devoe,
	o => \debug_bus_data_in[31]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\debug_bus_reg_rs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\debug_bus_reg_rs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\debug_bus_reg_rs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[2]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\debug_bus_reg_rs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\debug_bus_reg_rs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\debug_bus_reg_rs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\debug_bus_reg_rs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\debug_bus_reg_rs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\debug_bus_reg_rs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[8]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\debug_bus_reg_rs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[9]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\debug_bus_reg_rs[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\debug_bus_reg_rs[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[11]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\debug_bus_reg_rs[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[12]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\debug_bus_reg_rs[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[13]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\debug_bus_reg_rs[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\debug_bus_reg_rs[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\debug_bus_reg_rs[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[16]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\debug_bus_reg_rs[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[17]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\debug_bus_reg_rs[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[18]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\debug_bus_reg_rs[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[19]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\debug_bus_reg_rs[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\debug_bus_reg_rs[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[21]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\debug_bus_reg_rs[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[22]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\debug_bus_reg_rs[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[23]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\debug_bus_reg_rs[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[24]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\debug_bus_reg_rs[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[25]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\debug_bus_reg_rs[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[26]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\debug_bus_reg_rs[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[27]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\debug_bus_reg_rs[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[28]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\debug_bus_reg_rs[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[29]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\debug_bus_reg_rs[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[30]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\debug_bus_reg_rs[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[31]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\debug_bus_reg_rt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux63~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\debug_bus_reg_rt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux62~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[1]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\debug_bus_reg_rt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux61~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\debug_bus_reg_rt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux60~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\debug_bus_reg_rt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux59~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\debug_bus_reg_rt[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux58~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\debug_bus_reg_rt[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux57~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\debug_bus_reg_rt[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux56~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\debug_bus_reg_rt[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux55~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\debug_bus_reg_rt[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux54~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[9]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\debug_bus_reg_rt[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux53~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[10]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\debug_bus_reg_rt[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux52~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[11]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\debug_bus_reg_rt[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux51~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[12]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\debug_bus_reg_rt[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux50~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\debug_bus_reg_rt[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux49~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[14]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\debug_bus_reg_rt[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux48~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[15]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\debug_bus_reg_rt[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux47~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[16]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\debug_bus_reg_rt[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux46~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[17]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\debug_bus_reg_rt[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux45~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[18]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\debug_bus_reg_rt[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux44~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\debug_bus_reg_rt[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux43~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[20]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\debug_bus_reg_rt[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux42~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[21]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\debug_bus_reg_rt[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux41~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[22]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\debug_bus_reg_rt[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux40~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[23]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\debug_bus_reg_rt[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux39~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[24]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\debug_bus_reg_rt[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux38~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\debug_bus_reg_rt[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux37~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[26]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\debug_bus_reg_rt[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux36~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[27]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\debug_bus_reg_rt[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux35~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[28]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\debug_bus_reg_rt[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux34~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[29]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\debug_bus_reg_rt[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux33~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[30]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\debug_bus_reg_rt[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux32~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[31]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\debug_bus_reg_rd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux95~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\debug_bus_reg_rd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux94~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\debug_bus_reg_rd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux93~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\debug_bus_reg_rd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux92~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\debug_bus_reg_rd[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux91~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\debug_bus_reg_rd[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux90~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\debug_bus_reg_rd[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux89~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[6]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\debug_bus_reg_rd[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux88~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\debug_bus_reg_rd[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux87~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[8]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\debug_bus_reg_rd[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux86~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[9]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\debug_bus_reg_rd[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux85~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[10]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\debug_bus_reg_rd[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux84~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\debug_bus_reg_rd[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux83~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\debug_bus_reg_rd[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux82~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\debug_bus_reg_rd[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux81~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\debug_bus_reg_rd[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux80~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\debug_bus_reg_rd[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux79~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\debug_bus_reg_rd[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux78~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[17]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\debug_bus_reg_rd[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux77~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[18]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\debug_bus_reg_rd[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux76~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[19]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\debug_bus_reg_rd[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux75~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\debug_bus_reg_rd[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux74~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[21]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\debug_bus_reg_rd[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux73~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[22]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\debug_bus_reg_rd[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux72~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[23]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\debug_bus_reg_rd[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux71~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[24]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\debug_bus_reg_rd[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux70~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\debug_bus_reg_rd[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux69~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[26]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\debug_bus_reg_rd[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux68~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[27]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\debug_bus_reg_rd[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux67~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[28]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\debug_bus_reg_rd[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux66~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[29]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\debug_bus_reg_rd[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux65~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[30]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\debug_bus_reg_rd[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|Mux64~4_combout\,
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[31]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\debug_reg_file_ld~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_ld~q\,
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

-- Location: IOIBUF_X78_Y29_N8
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

-- Location: LCCOMB_X77_Y34_N0
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

-- Location: LCCOMB_X49_Y23_N0
\current_state.DECODE1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.DECODE1~0_combout\ = !\current_state.FETCH~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.FETCH~q\,
	combout => \current_state.DECODE1~0_combout\);

-- Location: FF_X49_Y23_N1
\current_state.DECODE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.DECODE1~0_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DECODE1~q\);

-- Location: LCCOMB_X49_Y23_N14
\current_state.DECODE2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.DECODE2~feeder_combout\ = \current_state.DECODE1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DECODE1~q\,
	combout => \current_state.DECODE2~feeder_combout\);

-- Location: FF_X49_Y23_N15
\current_state.DECODE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.DECODE2~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DECODE2~q\);

-- Location: LCCOMB_X49_Y23_N18
\current_state.EXECUTE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.EXECUTE~feeder_combout\ = \current_state.DECODE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.DECODE2~q\,
	combout => \current_state.EXECUTE~feeder_combout\);

-- Location: FF_X49_Y23_N19
\current_state.EXECUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.EXECUTE~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.EXECUTE~q\);

-- Location: LCCOMB_X49_Y23_N28
\current_state.WRITEBACK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.WRITEBACK~feeder_combout\ = \current_state.EXECUTE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.EXECUTE~q\,
	combout => \current_state.WRITEBACK~feeder_combout\);

-- Location: FF_X49_Y23_N29
\current_state.WRITEBACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.WRITEBACK~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITEBACK~q\);

-- Location: LCCOMB_X49_Y23_N2
\current_state.FETCH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.FETCH~0_combout\ = !\current_state.WRITEBACK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.WRITEBACK~q\,
	combout => \current_state.FETCH~0_combout\);

-- Location: FF_X49_Y23_N3
\current_state.FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.FETCH~0_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FETCH~q\);

-- Location: LCCOMB_X50_Y23_N20
\pc[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[23]~34_combout\ = (\clr~input_o\) # (!\current_state.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \current_state.FETCH~q\,
	combout => \pc[23]~34_combout\);

-- Location: FF_X77_Y34_N1
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
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LCCOMB_X77_Y34_N2
\pc[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[1]~35_combout\ = (pc(1) & (!\pc[0]~33\)) # (!pc(1) & ((\pc[0]~33\) # (GND)))
-- \pc[1]~36\ = CARRY((!\pc[0]~33\) # (!pc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(1),
	datad => VCC,
	cin => \pc[0]~33\,
	combout => \pc[1]~35_combout\,
	cout => \pc[1]~36\);

-- Location: FF_X77_Y34_N3
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[1]~35_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: LCCOMB_X77_Y34_N4
\pc[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[2]~37_combout\ = (pc(2) & (\pc[1]~36\ $ (GND))) # (!pc(2) & (!\pc[1]~36\ & VCC))
-- \pc[2]~38\ = CARRY((pc(2) & !\pc[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datad => VCC,
	cin => \pc[1]~36\,
	combout => \pc[2]~37_combout\,
	cout => \pc[2]~38\);

-- Location: FF_X77_Y34_N5
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[2]~37_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: LCCOMB_X77_Y34_N6
\pc[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[3]~39_combout\ = (pc(3) & (!\pc[2]~38\)) # (!pc(3) & ((\pc[2]~38\) # (GND)))
-- \pc[3]~40\ = CARRY((!\pc[2]~38\) # (!pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(3),
	datad => VCC,
	cin => \pc[2]~38\,
	combout => \pc[3]~39_combout\,
	cout => \pc[3]~40\);

-- Location: FF_X77_Y34_N7
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[3]~39_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LCCOMB_X77_Y34_N8
\pc[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[4]~41_combout\ = (pc(4) & (\pc[3]~40\ $ (GND))) # (!pc(4) & (!\pc[3]~40\ & VCC))
-- \pc[4]~42\ = CARRY((pc(4) & !\pc[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(4),
	datad => VCC,
	cin => \pc[3]~40\,
	combout => \pc[4]~41_combout\,
	cout => \pc[4]~42\);

-- Location: FF_X77_Y34_N9
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[4]~41_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: LCCOMB_X77_Y34_N10
\pc[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[5]~43_combout\ = (pc(5) & (!\pc[4]~42\)) # (!pc(5) & ((\pc[4]~42\) # (GND)))
-- \pc[5]~44\ = CARRY((!\pc[4]~42\) # (!pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(5),
	datad => VCC,
	cin => \pc[4]~42\,
	combout => \pc[5]~43_combout\,
	cout => \pc[5]~44\);

-- Location: FF_X77_Y34_N11
\pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[5]~43_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(5));

-- Location: LCCOMB_X77_Y34_N12
\pc[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[6]~45_combout\ = (pc(6) & (\pc[5]~44\ $ (GND))) # (!pc(6) & (!\pc[5]~44\ & VCC))
-- \pc[6]~46\ = CARRY((pc(6) & !\pc[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(6),
	datad => VCC,
	cin => \pc[5]~44\,
	combout => \pc[6]~45_combout\,
	cout => \pc[6]~46\);

-- Location: FF_X77_Y34_N13
\pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[6]~45_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(6));

-- Location: LCCOMB_X77_Y34_N14
\pc[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[7]~47_combout\ = (pc(7) & (!\pc[6]~46\)) # (!pc(7) & ((\pc[6]~46\) # (GND)))
-- \pc[7]~48\ = CARRY((!\pc[6]~46\) # (!pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(7),
	datad => VCC,
	cin => \pc[6]~46\,
	combout => \pc[7]~47_combout\,
	cout => \pc[7]~48\);

-- Location: FF_X77_Y34_N15
\pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[7]~47_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(7));

-- Location: LCCOMB_X77_Y34_N16
\pc[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[8]~49_combout\ = (pc(8) & (\pc[7]~48\ $ (GND))) # (!pc(8) & (!\pc[7]~48\ & VCC))
-- \pc[8]~50\ = CARRY((pc(8) & !\pc[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(8),
	datad => VCC,
	cin => \pc[7]~48\,
	combout => \pc[8]~49_combout\,
	cout => \pc[8]~50\);

-- Location: FF_X77_Y34_N17
\pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[8]~49_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(8));

-- Location: LCCOMB_X77_Y34_N18
\pc[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[9]~51_combout\ = (pc(9) & (!\pc[8]~50\)) # (!pc(9) & ((\pc[8]~50\) # (GND)))
-- \pc[9]~52\ = CARRY((!\pc[8]~50\) # (!pc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(9),
	datad => VCC,
	cin => \pc[8]~50\,
	combout => \pc[9]~51_combout\,
	cout => \pc[9]~52\);

-- Location: FF_X77_Y34_N19
\pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[9]~51_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(9));

-- Location: LCCOMB_X77_Y31_N8
\Memory_inst|memory~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~43_combout\ = (!pc(7) & (!pc(5) & (!pc(6) & !pc(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(7),
	datab => pc(5),
	datac => pc(6),
	datad => pc(4),
	combout => \Memory_inst|memory~43_combout\);

-- Location: LCCOMB_X77_Y23_N12
\Memory_inst|memory~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~44_combout\ = (!pc(9) & (!pc(8) & (\Memory_inst|memory~43_combout\ & !pc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => pc(8),
	datac => \Memory_inst|memory~43_combout\,
	datad => pc(3),
	combout => \Memory_inst|memory~44_combout\);

-- Location: LCCOMB_X77_Y23_N4
\Memory_inst|memory~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~46_combout\ = (!pc(1) & (!pc(2) & \Memory_inst|memory~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(1),
	datac => pc(2),
	datad => \Memory_inst|memory~44_combout\,
	combout => \Memory_inst|memory~46_combout\);

-- Location: LCCOMB_X77_Y23_N30
\ir_temp[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir_temp[26]~feeder_combout\ = \Memory_inst|memory~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memory_inst|memory~46_combout\,
	combout => \ir_temp[26]~feeder_combout\);

-- Location: LCCOMB_X50_Y23_N24
\ir_temp[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir_temp[0]~1_combout\ = (!\clr~input_o\ & !\current_state.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \current_state.FETCH~q\,
	combout => \ir_temp[0]~1_combout\);

-- Location: FF_X77_Y23_N31
\ir_temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_temp[26]~feeder_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(26));

-- Location: LCCOMB_X50_Y23_N26
\opcode_temp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode_temp[0]~0_combout\ = (!\clr~input_o\ & \current_state.DECODE1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => \current_state.DECODE1~q\,
	combout => \opcode_temp[0]~0_combout\);

-- Location: FF_X51_Y23_N27
\opcode_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ir_temp(26),
	sload => VCC,
	ena => \opcode_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode_temp(0));

-- Location: LCCOMB_X47_Y23_N24
\opcode~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode~0_combout\ = (!\clr~input_o\ & opcode_temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => opcode_temp(0),
	combout => \opcode~0_combout\);

-- Location: LCCOMB_X47_Y23_N4
\opcode[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode[0]~1_combout\ = (\current_state.DECODE2~q\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DECODE2~q\,
	datac => \clr~input_o\,
	combout => \opcode[0]~1_combout\);

-- Location: FF_X47_Y23_N25
\opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode~0_combout\,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(0));

-- Location: LCCOMB_X77_Y23_N16
\Memory_inst|memory~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~56_combout\ = (pc(0) & (!pc(1) & (pc(2) & \Memory_inst|memory~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => \Memory_inst|memory~44_combout\,
	combout => \Memory_inst|memory~56_combout\);

-- Location: FF_X77_Y23_N17
\ir_temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~56_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(22));

-- Location: LCCOMB_X51_Y23_N10
\opcode_temp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode_temp[2]~feeder_combout\ = ir_temp(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ir_temp(22),
	combout => \opcode_temp[2]~feeder_combout\);

-- Location: FF_X51_Y23_N11
\opcode_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode_temp[2]~feeder_combout\,
	ena => \opcode_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode_temp(2));

-- Location: LCCOMB_X47_Y23_N20
\opcode~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode~3_combout\ = (!\clr~input_o\ & opcode_temp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => opcode_temp(2),
	combout => \opcode~3_combout\);

-- Location: FF_X47_Y23_N21
\opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode~3_combout\,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(2));

-- Location: LCCOMB_X77_Y23_N26
\Memory_inst|memory~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~57_combout\ = (!pc(3) & (pc(2) $ (((pc(0) & pc(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \Memory_inst|memory~57_combout\);

-- Location: LCCOMB_X77_Y23_N24
\Memory_inst|memory~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~58_combout\ = (\Memory_inst|memory~57_combout\ & (\Memory_inst|memory~43_combout\ & (!pc(9) & !pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory_inst|memory~57_combout\,
	datab => \Memory_inst|memory~43_combout\,
	datac => pc(9),
	datad => pc(8),
	combout => \Memory_inst|memory~58_combout\);

-- Location: FF_X77_Y23_N25
\ir_temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~58_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(27));

-- Location: LCCOMB_X51_Y23_N20
\opcode_temp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode_temp[1]~feeder_combout\ = ir_temp(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ir_temp(27),
	combout => \opcode_temp[1]~feeder_combout\);

-- Location: FF_X51_Y23_N21
\opcode_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode_temp[1]~feeder_combout\,
	ena => \opcode_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode_temp(1));

-- Location: LCCOMB_X47_Y23_N10
\opcode~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opcode~2_combout\ = (opcode_temp(1) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode_temp(1),
	datac => \clr~input_o\,
	combout => \opcode~2_combout\);

-- Location: FF_X47_Y23_N11
\opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \opcode~2_combout\,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(1));

-- Location: LCCOMB_X49_Y23_N12
\bus_data_in[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~58_combout\ = (!\clr~input_o\ & \current_state.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \current_state.EXECUTE~q\,
	combout => \bus_data_in[1]~58_combout\);

-- Location: LCCOMB_X42_Y24_N30
\bus_data_in[0]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~60_combout\ = (\bus_data_in[1]~58_combout\ & ((opcode(0) & ((!opcode(1)) # (!opcode(2)))) # (!opcode(0) & (opcode(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in[1]~58_combout\,
	combout => \bus_data_in[0]~60_combout\);

-- Location: LCCOMB_X77_Y23_N6
\Memory_inst|memory~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~45_combout\ = (!pc(0) & (!pc(2) & \Memory_inst|memory~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datac => pc(2),
	datad => \Memory_inst|memory~44_combout\,
	combout => \Memory_inst|memory~45_combout\);

-- Location: FF_X77_Y23_N7
\ir_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~45_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(1));

-- Location: LCCOMB_X51_Y23_N2
\ir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~0_combout\ = (!\clr~input_o\ & ir_temp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(1),
	combout => \ir~0_combout\);

-- Location: LCCOMB_X47_Y23_N12
\func[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[1]~feeder_combout\ = \ir~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir~0_combout\,
	combout => \func[1]~feeder_combout\);

-- Location: LCCOMB_X51_Y23_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!opcode_temp(1) & (!opcode_temp(0) & !opcode_temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode_temp(1),
	datac => opcode_temp(0),
	datad => opcode_temp(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X47_Y23_N0
\func[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[3]~0_combout\ = (\clr~input_o\) # ((\current_state.DECODE2~q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DECODE2~q\,
	datac => \clr~input_o\,
	datad => \Equal0~0_combout\,
	combout => \func[3]~0_combout\);

-- Location: FF_X47_Y23_N13
\func[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \func[1]~feeder_combout\,
	ena => \func[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(1));

-- Location: LCCOMB_X51_Y23_N18
\ir~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~2_combout\ = (!\clr~input_o\ & ir_temp(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => ir_temp(26),
	combout => \ir~2_combout\);

-- Location: LCCOMB_X47_Y23_N18
\func[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[3]~feeder_combout\ = \ir~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~2_combout\,
	combout => \func[3]~feeder_combout\);

-- Location: FF_X47_Y23_N19
\func[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \func[3]~feeder_combout\,
	ena => \func[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(3));

-- Location: LCCOMB_X43_Y24_N24
\bus_data_in[0]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~61_combout\ = func(1) $ (func(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datac => func(3),
	combout => \bus_data_in[0]~61_combout\);

-- Location: LCCOMB_X42_Y24_N4
\bus_data_in[0]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~62_combout\ = (\bus_data_in[1]~58_combout\ & ((opcode(0) & (opcode(2) $ (opcode(1)))) # (!opcode(0) & ((opcode(2)) # (!opcode(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in[1]~58_combout\,
	combout => \bus_data_in[0]~62_combout\);

-- Location: LCCOMB_X45_Y23_N22
\bus_data_in[1]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~70_combout\ = (!opcode(0) & (!opcode(2) & (func(1) $ (!func(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => func(1),
	datad => func(3),
	combout => \bus_data_in[1]~70_combout\);

-- Location: LCCOMB_X47_Y23_N30
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (opcode(1) & (opcode(2) $ ((!opcode(0))))) # (!opcode(1) & (((\bus_data_in[1]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in[1]~70_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X49_Y23_N16
\Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\reg_file_ld~q\ & (((\current_state.EXECUTE~q\) # (!\current_state.WRITEBACK~q\)))) # (!\reg_file_ld~q\ & (!\Selector32~0_combout\ & ((\current_state.EXECUTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \current_state.WRITEBACK~q\,
	datac => \reg_file_ld~q\,
	datad => \current_state.EXECUTE~q\,
	combout => \Selector32~1_combout\);

-- Location: FF_X49_Y23_N17
reg_file_ld : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~1_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_ld~q\);

-- Location: LCCOMB_X77_Y23_N22
\Memory_inst|memory~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~47_combout\ = (!pc(0) & (pc(1) & (!pc(2) & \Memory_inst|memory~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => \Memory_inst|memory~44_combout\,
	combout => \Memory_inst|memory~47_combout\);

-- Location: FF_X77_Y23_N23
\ir_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~47_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(11));

-- Location: LCCOMB_X77_Y23_N20
\Memory_inst|memory~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~50_combout\ = (!pc(2) & (!pc(3) & ((pc(0)) # (pc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \Memory_inst|memory~50_combout\);

-- Location: LCCOMB_X77_Y23_N10
\Memory_inst|memory~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~51_combout\ = (!pc(9) & (\Memory_inst|memory~50_combout\ & (\Memory_inst|memory~43_combout\ & !pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \Memory_inst|memory~50_combout\,
	datac => \Memory_inst|memory~43_combout\,
	datad => pc(8),
	combout => \Memory_inst|memory~51_combout\);

-- Location: FF_X77_Y23_N11
\ir_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~51_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(17));

-- Location: LCCOMB_X47_Y23_N26
\rd_addr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~1_combout\ = (\Equal0~0_combout\ & (ir_temp(11))) # (!\Equal0~0_combout\ & ((ir_temp(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir_temp(11),
	datac => ir_temp(17),
	datad => \Equal0~0_combout\,
	combout => \rd_addr~1_combout\);

-- Location: FF_X47_Y23_N27
\rd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_addr~1_combout\,
	sclr => \clr~input_o\,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(1));

-- Location: LCCOMB_X77_Y23_N8
\Memory_inst|memory~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~48_combout\ = (pc(2)) # ((pc(3)) # (pc(0) $ (pc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \Memory_inst|memory~48_combout\);

-- Location: LCCOMB_X77_Y23_N18
\Memory_inst|memory~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~49_combout\ = (!\Memory_inst|memory~48_combout\ & (\Memory_inst|memory~43_combout\ & (!pc(9) & !pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory_inst|memory~48_combout\,
	datab => \Memory_inst|memory~43_combout\,
	datac => pc(9),
	datad => pc(8),
	combout => \Memory_inst|memory~49_combout\);

-- Location: FF_X77_Y23_N19
\ir_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~49_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(16));

-- Location: LCCOMB_X47_Y23_N28
\rd_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~0_combout\ = (\Equal0~0_combout\ & (ir_temp(11))) # (!\Equal0~0_combout\ & ((ir_temp(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir_temp(11),
	datac => ir_temp(16),
	datad => \Equal0~0_combout\,
	combout => \rd_addr~0_combout\);

-- Location: FF_X47_Y23_N29
\rd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_addr~0_combout\,
	sclr => \clr~input_o\,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(0));

-- Location: LCCOMB_X77_Y23_N0
\Memory_inst|memory~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~52_combout\ = (pc(2) & (!pc(3) & ((!pc(1)) # (!pc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \Memory_inst|memory~52_combout\);

-- Location: LCCOMB_X77_Y23_N14
\Memory_inst|memory~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~53_combout\ = (!pc(9) & (\Memory_inst|memory~52_combout\ & (\Memory_inst|memory~43_combout\ & !pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \Memory_inst|memory~52_combout\,
	datac => \Memory_inst|memory~43_combout\,
	datad => pc(8),
	combout => \Memory_inst|memory~53_combout\);

-- Location: FF_X77_Y23_N15
\ir_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~53_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(18));

-- Location: LCCOMB_X50_Y23_N16
\rd_addr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~2_combout\ = (\current_state.DECODE2~q\ & (ir_temp(18) & ((!\Equal0~0_combout\)))) # (!\current_state.DECODE2~q\ & (((rd_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DECODE2~q\,
	datab => ir_temp(18),
	datac => rd_addr(2),
	datad => \Equal0~0_combout\,
	combout => \rd_addr~2_combout\);

-- Location: FF_X50_Y23_N17
\rd_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_addr~2_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(2));

-- Location: LCCOMB_X46_Y20_N4
\RegFile_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~3_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (rd_addr(0) & !rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X45_Y20_N12
\RegFile_inst|registers[3][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][3]~4_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~3_combout\,
	combout => \RegFile_inst|registers[3][3]~4_combout\);

-- Location: FF_X40_Y21_N21
\RegFile_inst|registers[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~0_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][0]~q\);

-- Location: LCCOMB_X51_Y23_N28
\ir~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~8_combout\ = (!\clr~input_o\ & ir_temp(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(22),
	combout => \ir~8_combout\);

-- Location: FF_X44_Y19_N29
\rs_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~8_combout\,
	sload => VCC,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(1));

-- Location: LCCOMB_X46_Y20_N16
\RegFile_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~0_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (!rd_addr(0) & !rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X45_Y20_N8
\RegFile_inst|registers[2][15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][15]~1_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~0_combout\,
	combout => \RegFile_inst|registers[2][15]~1_combout\);

-- Location: FF_X43_Y21_N21
\RegFile_inst|registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~0_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][0]~q\);

-- Location: LCCOMB_X77_Y23_N28
\Memory_inst|memory~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~54_combout\ = (!pc(3) & ((pc(0) & (!pc(1) & pc(2))) # (!pc(0) & (pc(1) & !pc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(0),
	datab => pc(1),
	datac => pc(2),
	datad => pc(3),
	combout => \Memory_inst|memory~54_combout\);

-- Location: LCCOMB_X77_Y23_N2
\Memory_inst|memory~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~55_combout\ = (!pc(9) & (\Memory_inst|memory~54_combout\ & (\Memory_inst|memory~43_combout\ & !pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \Memory_inst|memory~54_combout\,
	datac => \Memory_inst|memory~43_combout\,
	datad => pc(8),
	combout => \Memory_inst|memory~55_combout\);

-- Location: FF_X77_Y23_N3
\ir_temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Memory_inst|memory~55_combout\,
	ena => \ir_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir_temp(21));

-- Location: LCCOMB_X51_Y23_N16
\ir~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~7_combout\ = (!\clr~input_o\ & ir_temp(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(21),
	combout => \ir~7_combout\);

-- Location: FF_X44_Y19_N19
\rs_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~7_combout\,
	sload => VCC,
	ena => \opcode[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(0));

-- Location: LCCOMB_X41_Y20_N10
\RegFile_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~2_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (!rd_addr(2) & !rd_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(2),
	datad => rd_addr(0),
	combout => \RegFile_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X41_Y20_N4
\RegFile_inst|registers[0][20]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][20]~3_combout\ = (\RegFile_inst|Decoder0~2_combout\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Decoder0~2_combout\,
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers[0][20]~3_combout\);

-- Location: FF_X43_Y19_N19
\RegFile_inst|registers[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~0_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][0]~q\);

-- Location: LCCOMB_X43_Y19_N24
\RegFile_inst|registers[1][0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][0]~40_combout\ = !\RegFile_inst|registers~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~0_combout\,
	combout => \RegFile_inst|registers[1][0]~40_combout\);

-- Location: LCCOMB_X46_Y20_N14
\RegFile_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~1_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (rd_addr(0) & !rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X45_Y20_N6
\RegFile_inst|registers[1][0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][0]~2_combout\ = (\RegFile_inst|Decoder0~1_combout\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Decoder0~1_combout\,
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers[1][0]~2_combout\);

-- Location: FF_X43_Y19_N25
\RegFile_inst|registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][0]~40_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][0]~q\);

-- Location: LCCOMB_X43_Y19_N18
\RegFile_inst|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux31~0_combout\ = (rs_addr(0) & ((rs_addr(1)) # ((!\RegFile_inst|registers[1][0]~q\)))) # (!rs_addr(0) & (!rs_addr(1) & (\RegFile_inst|registers[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][0]~q\,
	datad => \RegFile_inst|registers[1][0]~q\,
	combout => \RegFile_inst|Mux31~0_combout\);

-- Location: LCCOMB_X43_Y19_N16
\RegFile_inst|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux31~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux31~0_combout\ & (\RegFile_inst|registers[3][0]~q\)) # (!\RegFile_inst|Mux31~0_combout\ & ((\RegFile_inst|registers[2][0]~q\))))) # (!rs_addr(1) & (((\RegFile_inst|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][0]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][0]~q\,
	datad => \RegFile_inst|Mux31~0_combout\,
	combout => \RegFile_inst|Mux31~1_combout\);

-- Location: LCCOMB_X42_Y24_N18
\bus_data_in[0]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~63_combout\ = (\bus_data_in[0]~62_combout\ & ((\bus_data_in[0]~60_combout\ & ((\RegFile_inst|Mux31~1_combout\))) # (!\bus_data_in[0]~60_combout\ & (\bus_data_in[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[0]~60_combout\,
	datab => \bus_data_in[0]~61_combout\,
	datac => \bus_data_in[0]~62_combout\,
	datad => \RegFile_inst|Mux31~1_combout\,
	combout => \bus_data_in[0]~63_combout\);

-- Location: FF_X43_Y19_N21
\RegFile_inst|registers[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][31]~q\);

-- Location: FF_X41_Y19_N19
\RegFile_inst|registers[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][31]~q\);

-- Location: FF_X43_Y19_N31
\RegFile_inst|registers[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][31]~q\);

-- Location: FF_X41_Y19_N29
\RegFile_inst|registers[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][31]~q\);

-- Location: LCCOMB_X41_Y19_N28
\RegFile_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux0~0_combout\ = (rs_addr(1) & (((\RegFile_inst|registers[2][31]~q\) # (rs_addr(0))))) # (!rs_addr(1) & (\RegFile_inst|registers[0][31]~q\ & ((!rs_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][31]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][31]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y19_N24
\RegFile_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux0~1_combout\ = (\RegFile_inst|Mux0~0_combout\ & (((\RegFile_inst|registers[3][31]~q\) # (!rs_addr(0))))) # (!\RegFile_inst|Mux0~0_combout\ & (\RegFile_inst|registers[1][31]~q\ & ((rs_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][31]~q\,
	datab => \RegFile_inst|registers[3][31]~q\,
	datac => \RegFile_inst|Mux0~0_combout\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux0~1_combout\);

-- Location: LCCOMB_X43_Y24_N30
\bus_data_in[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[23]~72_combout\ = (opcode(1)) # ((func(1) & (!opcode(2) & !func(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => opcode(2),
	datac => func(3),
	datad => opcode(1),
	combout => \bus_data_in[23]~72_combout\);

-- Location: LCCOMB_X43_Y21_N8
\ir~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~6_combout\ = (ir_temp(18) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir_temp(18),
	datad => \clr~input_o\,
	combout => \ir~6_combout\);

-- Location: FF_X43_Y21_N9
\rt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~6_combout\,
	ena => \func[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rt_addr(2));

-- Location: FF_X42_Y19_N5
\RegFile_inst|registers[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][30]~q\);

-- Location: FF_X44_Y19_N31
\RegFile_inst|registers[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][30]~q\);

-- Location: LCCOMB_X45_Y19_N16
\RegFile_inst|registers[1][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][30]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[1][30]~feeder_combout\);

-- Location: FF_X45_Y19_N17
\RegFile_inst|registers[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][30]~feeder_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][30]~q\);

-- Location: LCCOMB_X44_Y19_N8
\RegFile_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux1~0_combout\ = (rs_addr(0) & ((rs_addr(1)) # ((\RegFile_inst|registers[1][30]~q\)))) # (!rs_addr(0) & (!rs_addr(1) & (\RegFile_inst|registers[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][30]~q\,
	datad => \RegFile_inst|registers[1][30]~q\,
	combout => \RegFile_inst|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y19_N26
\RegFile_inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux1~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux1~0_combout\ & (\RegFile_inst|registers[3][30]~q\)) # (!\RegFile_inst|Mux1~0_combout\ & ((\RegFile_inst|registers[2][30]~q\))))) # (!rs_addr(1) & (((\RegFile_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][30]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][30]~q\,
	datad => \RegFile_inst|Mux1~0_combout\,
	combout => \RegFile_inst|Mux1~1_combout\);

-- Location: LCCOMB_X38_Y22_N18
\bus_data_in~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~162_combout\ = (opcode(2) & (\RegFile_inst|Mux1~1_combout\)) # (!opcode(2) & ((opcode(1) & (\RegFile_inst|Mux1~1_combout\)) # (!opcode(1) & ((opcode(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux1~1_combout\,
	datab => opcode(2),
	datac => opcode(0),
	datad => opcode(1),
	combout => \bus_data_in~162_combout\);

-- Location: LCCOMB_X38_Y22_N30
\bus_data_in[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[23]~73_combout\ = (opcode(2)) # (opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datad => opcode(1),
	combout => \bus_data_in[23]~73_combout\);

-- Location: LCCOMB_X38_Y19_N10
\RegFile_inst|registers[2][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][29]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[2][29]~feeder_combout\);

-- Location: FF_X38_Y19_N11
\RegFile_inst|registers[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][29]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][29]~q\);

-- Location: LCCOMB_X50_Y23_N30
\ir~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~5_combout\ = (!\clr~input_o\ & ir_temp(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => ir_temp(17),
	combout => \ir~5_combout\);

-- Location: FF_X43_Y21_N31
\rt_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~5_combout\,
	sload => VCC,
	ena => \func[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rt_addr(1));

-- Location: LCCOMB_X51_Y23_N8
\ir~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~4_combout\ = (!\clr~input_o\ & ir_temp(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(16),
	combout => \ir~4_combout\);

-- Location: FF_X43_Y21_N29
\rt_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~4_combout\,
	sload => VCC,
	ena => \func[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rt_addr(0));

-- Location: LCCOMB_X39_Y19_N10
\RegFile_inst|registers[1][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][29]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[1][29]~feeder_combout\);

-- Location: FF_X39_Y19_N11
\RegFile_inst|registers[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][29]~feeder_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][29]~q\);

-- Location: FF_X38_Y21_N13
\RegFile_inst|registers[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][29]~q\);

-- Location: LCCOMB_X38_Y21_N0
\RegFile_inst|Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][29]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][29]~q\,
	datad => \RegFile_inst|registers[0][29]~q\,
	combout => \RegFile_inst|Mux34~2_combout\);

-- Location: LCCOMB_X38_Y22_N8
\RegFile_inst|Mux34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~3_combout\ = (\RegFile_inst|Mux34~2_combout\ & (((\RegFile_inst|registers[3][29]~q\) # (!rt_addr(1))))) # (!\RegFile_inst|Mux34~2_combout\ & (\RegFile_inst|registers[2][29]~q\ & ((rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][29]~q\,
	datab => \RegFile_inst|Mux34~2_combout\,
	datac => \RegFile_inst|registers[3][29]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux34~3_combout\);

-- Location: LCCOMB_X39_Y19_N28
\RegFile_inst|registers[5][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][29]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[5][29]~feeder_combout\);

-- Location: LCCOMB_X46_Y20_N12
\RegFile_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~4_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (rd_addr(0) & rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X45_Y20_N4
\RegFile_inst|registers[5][6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][6]~36_combout\ = (\RegFile_inst|Decoder0~4_combout\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Decoder0~4_combout\,
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers[5][6]~36_combout\);

-- Location: FF_X39_Y19_N29
\RegFile_inst|registers[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][29]~feeder_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][29]~q\);

-- Location: LCCOMB_X46_Y20_N18
\RegFile_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~7_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (rd_addr(0) & rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X46_Y20_N24
\RegFile_inst|registers[7][28]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][28]~39_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~7_combout\,
	combout => \RegFile_inst|registers[7][28]~39_combout\);

-- Location: FF_X39_Y23_N9
\RegFile_inst|registers[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][29]~q\);

-- Location: LCCOMB_X38_Y19_N28
\RegFile_inst|registers[4][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][29]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[4][29]~feeder_combout\);

-- Location: LCCOMB_X46_Y20_N2
\RegFile_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~6_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (!rd_addr(0) & rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X46_Y20_N20
\RegFile_inst|registers[4][5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][5]~38_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~6_combout\,
	combout => \RegFile_inst|registers[4][5]~38_combout\);

-- Location: FF_X38_Y19_N29
\RegFile_inst|registers[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][29]~feeder_combout\,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][29]~q\);

-- Location: LCCOMB_X46_Y20_N10
\RegFile_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~5_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (!rd_addr(0) & rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X46_Y20_N0
\RegFile_inst|registers[6][31]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][31]~37_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~5_combout\,
	combout => \RegFile_inst|registers[6][31]~37_combout\);

-- Location: FF_X42_Y21_N27
\RegFile_inst|registers[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][29]~q\);

-- Location: LCCOMB_X38_Y19_N18
\RegFile_inst|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][29]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[4][29]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|registers[6][29]~q\,
	combout => \RegFile_inst|Mux34~0_combout\);

-- Location: LCCOMB_X38_Y19_N24
\RegFile_inst|Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux34~0_combout\ & ((\RegFile_inst|registers[7][29]~q\))) # (!\RegFile_inst|Mux34~0_combout\ & (\RegFile_inst|registers[5][29]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[5][29]~q\,
	datac => \RegFile_inst|registers[7][29]~q\,
	datad => \RegFile_inst|Mux34~0_combout\,
	combout => \RegFile_inst|Mux34~1_combout\);

-- Location: LCCOMB_X38_Y22_N22
\RegFile_inst|Mux34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux34~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux34~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux34~3_combout\,
	datad => \RegFile_inst|Mux34~1_combout\,
	combout => \RegFile_inst|Mux34~4_combout\);

-- Location: FF_X40_Y19_N27
\RegFile_inst|registers[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][28]~q\);

-- Location: FF_X40_Y19_N17
\RegFile_inst|registers[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][28]~q\);

-- Location: FF_X40_Y20_N11
\RegFile_inst|registers[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][28]~q\);

-- Location: LCCOMB_X40_Y19_N16
\RegFile_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux3~0_combout\ = (rs_addr(0) & ((rs_addr(1)) # ((\RegFile_inst|registers[1][28]~q\)))) # (!rs_addr(0) & (!rs_addr(1) & ((\RegFile_inst|registers[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[1][28]~q\,
	datad => \RegFile_inst|registers[0][28]~q\,
	combout => \RegFile_inst|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y19_N26
\RegFile_inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux3~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux3~0_combout\ & ((\RegFile_inst|registers[3][28]~q\))) # (!\RegFile_inst|Mux3~0_combout\ & (\RegFile_inst|registers[2][28]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][28]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[3][28]~q\,
	datad => \RegFile_inst|Mux3~0_combout\,
	combout => \RegFile_inst|Mux3~1_combout\);

-- Location: FF_X39_Y20_N11
\RegFile_inst|registers[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][27]~q\);

-- Location: FF_X40_Y22_N17
\RegFile_inst|registers[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][27]~q\);

-- Location: FF_X40_Y20_N27
\RegFile_inst|registers[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][27]~q\);

-- Location: FF_X39_Y20_N1
\RegFile_inst|registers[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][27]~q\);

-- Location: LCCOMB_X40_Y20_N16
\RegFile_inst|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~0_combout\ = (rt_addr(1) & (((\RegFile_inst|registers[6][27]~q\) # (rt_addr(0))))) # (!rt_addr(1) & (\RegFile_inst|registers[4][27]~q\ & ((!rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][27]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[6][27]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux36~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\RegFile_inst|Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux36~0_combout\ & ((\RegFile_inst|registers[7][27]~q\))) # (!\RegFile_inst|Mux36~0_combout\ & (\RegFile_inst|registers[5][27]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][27]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[7][27]~q\,
	datad => \RegFile_inst|Mux36~0_combout\,
	combout => \RegFile_inst|Mux36~1_combout\);

-- Location: LCCOMB_X39_Y21_N6
\RegFile_inst|registers[2][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][27]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[2][27]~feeder_combout\);

-- Location: FF_X39_Y21_N7
\RegFile_inst|registers[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][27]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][27]~q\);

-- Location: LCCOMB_X39_Y19_N22
\RegFile_inst|registers[1][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][27]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[1][27]~feeder_combout\);

-- Location: FF_X39_Y19_N23
\RegFile_inst|registers[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][27]~feeder_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][27]~q\);

-- Location: FF_X38_Y21_N7
\RegFile_inst|registers[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][27]~q\);

-- Location: LCCOMB_X38_Y21_N14
\RegFile_inst|Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][27]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][27]~q\,
	datad => \RegFile_inst|registers[0][27]~q\,
	combout => \RegFile_inst|Mux36~2_combout\);

-- Location: LCCOMB_X39_Y21_N28
\RegFile_inst|Mux36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux36~2_combout\ & ((\RegFile_inst|registers[3][27]~q\))) # (!\RegFile_inst|Mux36~2_combout\ & (\RegFile_inst|registers[2][27]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][27]~q\,
	datab => \RegFile_inst|registers[3][27]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux36~2_combout\,
	combout => \RegFile_inst|Mux36~3_combout\);

-- Location: LCCOMB_X39_Y21_N26
\RegFile_inst|Mux36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux36~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux36~1_combout\,
	datad => \RegFile_inst|Mux36~3_combout\,
	combout => \RegFile_inst|Mux36~4_combout\);

-- Location: LCCOMB_X38_Y22_N26
\bus_data_in~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~158_combout\ = (opcode(2) & (\RegFile_inst|Mux5~1_combout\)) # (!opcode(2) & ((opcode(1) & (\RegFile_inst|Mux5~1_combout\)) # (!opcode(1) & ((opcode(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => \RegFile_inst|Mux5~1_combout\,
	datac => opcode(0),
	datad => opcode(1),
	combout => \bus_data_in~158_combout\);

-- Location: LCCOMB_X39_Y23_N16
\RegFile_inst|registers[7][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][25]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[7][25]~feeder_combout\);

-- Location: FF_X39_Y23_N17
\RegFile_inst|registers[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][25]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][25]~q\);

-- Location: FF_X39_Y20_N27
\RegFile_inst|registers[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][25]~q\);

-- Location: LCCOMB_X38_Y20_N8
\RegFile_inst|registers[4][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][25]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[4][25]~feeder_combout\);

-- Location: FF_X38_Y20_N9
\RegFile_inst|registers[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][25]~feeder_combout\,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][25]~q\);

-- Location: FF_X39_Y20_N25
\RegFile_inst|registers[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][25]~q\);

-- Location: LCCOMB_X39_Y20_N2
\RegFile_inst|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~0_combout\ = (rt_addr(1) & (((\RegFile_inst|registers[6][25]~q\) # (rt_addr(0))))) # (!rt_addr(1) & (\RegFile_inst|registers[4][25]~q\ & ((!rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][25]~q\,
	datab => \RegFile_inst|registers[6][25]~q\,
	datac => rt_addr(1),
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux38~0_combout\);

-- Location: LCCOMB_X39_Y20_N26
\RegFile_inst|Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux38~0_combout\ & (\RegFile_inst|registers[7][25]~q\)) # (!\RegFile_inst|Mux38~0_combout\ & ((\RegFile_inst|registers[5][25]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][25]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][25]~q\,
	datad => \RegFile_inst|Mux38~0_combout\,
	combout => \RegFile_inst|Mux38~1_combout\);

-- Location: LCCOMB_X38_Y19_N20
\RegFile_inst|registers[2][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][25]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[2][25]~feeder_combout\);

-- Location: FF_X38_Y19_N21
\RegFile_inst|registers[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][25]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][25]~q\);

-- Location: LCCOMB_X39_Y19_N4
\RegFile_inst|registers[1][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][25]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[1][25]~feeder_combout\);

-- Location: FF_X39_Y19_N5
\RegFile_inst|registers[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][25]~feeder_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][25]~q\);

-- Location: LCCOMB_X38_Y21_N20
\RegFile_inst|registers[0][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][25]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[0][25]~feeder_combout\);

-- Location: FF_X38_Y21_N21
\RegFile_inst|registers[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][25]~feeder_combout\,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][25]~q\);

-- Location: LCCOMB_X38_Y21_N4
\RegFile_inst|Mux38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][25]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][25]~q\,
	datad => \RegFile_inst|registers[0][25]~q\,
	combout => \RegFile_inst|Mux38~2_combout\);

-- Location: LCCOMB_X38_Y22_N6
\RegFile_inst|Mux38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~3_combout\ = (\RegFile_inst|Mux38~2_combout\ & ((\RegFile_inst|registers[3][25]~q\) # ((!rt_addr(1))))) # (!\RegFile_inst|Mux38~2_combout\ & (((\RegFile_inst|registers[2][25]~q\ & rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][25]~q\,
	datab => \RegFile_inst|registers[2][25]~q\,
	datac => \RegFile_inst|Mux38~2_combout\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux38~3_combout\);

-- Location: LCCOMB_X38_Y22_N24
\RegFile_inst|Mux38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux38~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux38~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux38~1_combout\,
	datad => \RegFile_inst|Mux38~3_combout\,
	combout => \RegFile_inst|Mux38~4_combout\);

-- Location: LCCOMB_X38_Y21_N16
\RegFile_inst|registers[7][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][23]~feeder_combout\ = \RegFile_inst|registers~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~27_combout\,
	combout => \RegFile_inst|registers[7][23]~feeder_combout\);

-- Location: FF_X38_Y21_N17
\RegFile_inst|registers[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][23]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][23]~q\);

-- Location: FF_X38_Y20_N1
\RegFile_inst|registers[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][23]~q\);

-- Location: FF_X38_Y20_N11
\RegFile_inst|registers[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][23]~q\);

-- Location: FF_X39_Y20_N7
\RegFile_inst|registers[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][23]~q\);

-- Location: LCCOMB_X38_Y20_N20
\RegFile_inst|Mux40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~0_combout\ = (rt_addr(1) & (((rt_addr(0)) # (\RegFile_inst|registers[6][23]~q\)))) # (!rt_addr(1) & (\RegFile_inst|registers[4][23]~q\ & (!rt_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][23]~q\,
	datab => rt_addr(1),
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[6][23]~q\,
	combout => \RegFile_inst|Mux40~0_combout\);

-- Location: LCCOMB_X38_Y20_N0
\RegFile_inst|Mux40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux40~0_combout\ & (\RegFile_inst|registers[7][23]~q\)) # (!\RegFile_inst|Mux40~0_combout\ & ((\RegFile_inst|registers[5][23]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][23]~q\,
	datac => \RegFile_inst|registers[5][23]~q\,
	datad => \RegFile_inst|Mux40~0_combout\,
	combout => \RegFile_inst|Mux40~1_combout\);

-- Location: LCCOMB_X39_Y21_N22
\RegFile_inst|registers[2][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][23]~feeder_combout\ = \RegFile_inst|registers~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~27_combout\,
	combout => \RegFile_inst|registers[2][23]~feeder_combout\);

-- Location: FF_X39_Y21_N23
\RegFile_inst|registers[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][23]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][23]~q\);

-- Location: FF_X41_Y21_N15
\RegFile_inst|registers[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][23]~q\);

-- Location: FF_X41_Y21_N13
\RegFile_inst|registers[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][23]~q\);

-- Location: LCCOMB_X41_Y21_N14
\RegFile_inst|Mux40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~2_combout\ = (rt_addr(0) & ((rt_addr(1)) # ((\RegFile_inst|registers[1][23]~q\)))) # (!rt_addr(0) & (!rt_addr(1) & (\RegFile_inst|registers[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][23]~q\,
	datad => \RegFile_inst|registers[1][23]~q\,
	combout => \RegFile_inst|Mux40~2_combout\);

-- Location: LCCOMB_X39_Y21_N20
\RegFile_inst|Mux40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux40~2_combout\ & ((\RegFile_inst|registers[3][23]~q\))) # (!\RegFile_inst|Mux40~2_combout\ & (\RegFile_inst|registers[2][23]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][23]~q\,
	datab => \RegFile_inst|registers[3][23]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux40~2_combout\,
	combout => \RegFile_inst|Mux40~3_combout\);

-- Location: LCCOMB_X39_Y21_N10
\RegFile_inst|Mux40~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux40~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux40~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux40~1_combout\,
	datad => \RegFile_inst|Mux40~3_combout\,
	combout => \RegFile_inst|Mux40~4_combout\);

-- Location: FF_X43_Y22_N27
\RegFile_inst|registers[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][19]~q\);

-- Location: FF_X43_Y22_N25
\RegFile_inst|registers[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][19]~q\);

-- Location: FF_X42_Y21_N1
\RegFile_inst|registers[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][19]~q\);

-- Location: FF_X41_Y22_N15
\RegFile_inst|registers[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][19]~q\);

-- Location: LCCOMB_X41_Y22_N14
\RegFile_inst|Mux44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][19]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][19]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[6][19]~q\,
	datac => \RegFile_inst|registers[4][19]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux44~0_combout\);

-- Location: LCCOMB_X43_Y22_N24
\RegFile_inst|Mux44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux44~0_combout\ & (\RegFile_inst|registers[7][19]~q\)) # (!\RegFile_inst|Mux44~0_combout\ & ((\RegFile_inst|registers[5][19]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][19]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][19]~q\,
	datad => \RegFile_inst|Mux44~0_combout\,
	combout => \RegFile_inst|Mux44~1_combout\);

-- Location: LCCOMB_X43_Y21_N4
\RegFile_inst|registers[2][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][19]~feeder_combout\ = \RegFile_inst|registers~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~23_combout\,
	combout => \RegFile_inst|registers[2][19]~feeder_combout\);

-- Location: FF_X43_Y21_N5
\RegFile_inst|registers[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][19]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][19]~q\);

-- Location: FF_X41_Y21_N29
\RegFile_inst|registers[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][19]~q\);

-- Location: FF_X41_Y21_N19
\RegFile_inst|registers[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][19]~q\);

-- Location: LCCOMB_X41_Y21_N18
\RegFile_inst|Mux44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~2_combout\ = (rt_addr(0) & ((\RegFile_inst|registers[1][19]~q\) # ((rt_addr(1))))) # (!rt_addr(0) & (((\RegFile_inst|registers[0][19]~q\ & !rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[1][19]~q\,
	datac => \RegFile_inst|registers[0][19]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux44~2_combout\);

-- Location: LCCOMB_X42_Y21_N30
\RegFile_inst|Mux44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux44~2_combout\ & ((\RegFile_inst|registers[3][19]~q\))) # (!\RegFile_inst|Mux44~2_combout\ & (\RegFile_inst|registers[2][19]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][19]~q\,
	datab => \RegFile_inst|registers[3][19]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux44~2_combout\,
	combout => \RegFile_inst|Mux44~3_combout\);

-- Location: LCCOMB_X43_Y22_N26
\RegFile_inst|Mux44~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux44~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux44~1_combout\,
	datad => \RegFile_inst|Mux44~3_combout\,
	combout => \RegFile_inst|Mux44~4_combout\);

-- Location: FF_X44_Y20_N11
\RegFile_inst|registers[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][16]~q\);

-- Location: FF_X45_Y20_N7
\RegFile_inst|registers[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][16]~q\);

-- Location: FF_X43_Y20_N1
\RegFile_inst|registers[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][16]~q\);

-- Location: FF_X44_Y20_N17
\RegFile_inst|registers[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][16]~q\);

-- Location: LCCOMB_X43_Y20_N0
\RegFile_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux15~0_combout\ = (rs_addr(1) & (rs_addr(0))) # (!rs_addr(1) & ((rs_addr(0) & (\RegFile_inst|registers[1][16]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][16]~q\,
	datad => \RegFile_inst|registers[0][16]~q\,
	combout => \RegFile_inst|Mux15~0_combout\);

-- Location: LCCOMB_X43_Y20_N6
\RegFile_inst|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux15~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux15~0_combout\ & (\RegFile_inst|registers[3][16]~q\)) # (!\RegFile_inst|Mux15~0_combout\ & ((\RegFile_inst|registers[2][16]~q\))))) # (!rs_addr(1) & (((\RegFile_inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][16]~q\,
	datab => \RegFile_inst|registers[2][16]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|Mux15~0_combout\,
	combout => \RegFile_inst|Mux15~1_combout\);

-- Location: LCCOMB_X45_Y20_N24
\RegFile_inst|registers[2][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][14]~feeder_combout\ = \RegFile_inst|registers~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~18_combout\,
	combout => \RegFile_inst|registers[2][14]~feeder_combout\);

-- Location: FF_X45_Y20_N25
\RegFile_inst|registers[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][14]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][14]~q\);

-- Location: FF_X43_Y20_N25
\RegFile_inst|registers[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][14]~q\);

-- Location: FF_X44_Y20_N13
\RegFile_inst|registers[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][14]~q\);

-- Location: LCCOMB_X43_Y20_N24
\RegFile_inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux17~0_combout\ = (rs_addr(1) & (rs_addr(0))) # (!rs_addr(1) & ((rs_addr(0) & (\RegFile_inst|registers[1][14]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][14]~q\,
	datad => \RegFile_inst|registers[0][14]~q\,
	combout => \RegFile_inst|Mux17~0_combout\);

-- Location: LCCOMB_X43_Y20_N22
\RegFile_inst|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux17~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux17~0_combout\ & ((\RegFile_inst|registers[3][14]~q\))) # (!\RegFile_inst|Mux17~0_combout\ & (\RegFile_inst|registers[2][14]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][14]~q\,
	datac => \RegFile_inst|registers[3][14]~q\,
	datad => \RegFile_inst|Mux17~0_combout\,
	combout => \RegFile_inst|Mux17~1_combout\);

-- Location: FF_X41_Y19_N13
\RegFile_inst|registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][13]~q\);

-- Location: FF_X40_Y20_N9
\RegFile_inst|registers[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][13]~q\);

-- Location: FF_X40_Y19_N13
\RegFile_inst|registers[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][13]~q\);

-- Location: LCCOMB_X40_Y20_N20
\RegFile_inst|Mux50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][13]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[0][13]~q\,
	datac => \RegFile_inst|registers[1][13]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux50~2_combout\);

-- Location: LCCOMB_X41_Y19_N14
\RegFile_inst|Mux50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux50~2_combout\ & ((\RegFile_inst|registers[3][13]~q\))) # (!\RegFile_inst|Mux50~2_combout\ & (\RegFile_inst|registers[2][13]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][13]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[3][13]~q\,
	datad => \RegFile_inst|Mux50~2_combout\,
	combout => \RegFile_inst|Mux50~3_combout\);

-- Location: FF_X45_Y21_N29
\RegFile_inst|registers[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~17_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][13]~q\);

-- Location: FF_X45_Y21_N19
\RegFile_inst|registers[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][13]~q\);

-- Location: FF_X46_Y21_N25
\RegFile_inst|registers[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][13]~q\);

-- Location: FF_X46_Y21_N27
\RegFile_inst|registers[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][13]~q\);

-- Location: LCCOMB_X46_Y21_N26
\RegFile_inst|Mux50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][13]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][13]~q\,
	datac => \RegFile_inst|registers[4][13]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux50~0_combout\);

-- Location: LCCOMB_X45_Y21_N18
\RegFile_inst|Mux50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux50~0_combout\ & (\RegFile_inst|registers[7][13]~q\)) # (!\RegFile_inst|Mux50~0_combout\ & ((\RegFile_inst|registers[5][13]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][13]~q\,
	datac => \RegFile_inst|registers[5][13]~q\,
	datad => \RegFile_inst|Mux50~0_combout\,
	combout => \RegFile_inst|Mux50~1_combout\);

-- Location: LCCOMB_X41_Y19_N16
\RegFile_inst|Mux50~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux50~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux50~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux50~3_combout\,
	datad => \RegFile_inst|Mux50~1_combout\,
	combout => \RegFile_inst|Mux50~4_combout\);

-- Location: LCCOMB_X47_Y23_N22
\ir~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~3_combout\ = (!\clr~input_o\ & ir_temp(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(11),
	combout => \ir~3_combout\);

-- Location: LCCOMB_X47_Y23_N2
\immediate[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[1]~0_combout\ = (\clr~input_o\) # ((\current_state.DECODE2~q\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DECODE2~q\,
	datac => \clr~input_o\,
	datad => \Equal0~0_combout\,
	combout => \immediate[1]~0_combout\);

-- Location: FF_X40_Y23_N15
\immediate[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~3_combout\,
	sload => VCC,
	ena => \immediate[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(11));

-- Location: LCCOMB_X46_Y23_N6
\bus_data_in~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~96_combout\ = immediate(11) $ (\RegFile_inst|Mux19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => immediate(11),
	datac => \RegFile_inst|Mux19~1_combout\,
	combout => \bus_data_in~96_combout\);

-- Location: LCCOMB_X46_Y23_N2
\bus_data_in[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[12]~3_combout\ = (opcode(2) & ((\RegFile_inst|Mux19~1_combout\))) # (!opcode(2) & (\bus_data_in~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~96_combout\,
	datab => opcode(2),
	datad => \RegFile_inst|Mux19~1_combout\,
	combout => \bus_data_in[12]~3_combout\);

-- Location: LCCOMB_X46_Y23_N16
\bus_data_in~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~93_combout\ = immediate(11) $ (\RegFile_inst|Mux20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => immediate(11),
	datac => \RegFile_inst|Mux20~1_combout\,
	combout => \bus_data_in~93_combout\);

-- Location: LCCOMB_X46_Y23_N12
\bus_data_in[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[11]~2_combout\ = (opcode(2) & (\RegFile_inst|Mux20~1_combout\)) # (!opcode(2) & ((\bus_data_in~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux20~1_combout\,
	datab => opcode(2),
	datad => \bus_data_in~93_combout\,
	combout => \bus_data_in[11]~2_combout\);

-- Location: LCCOMB_X45_Y23_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!opcode(0) & !opcode(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datad => opcode(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X44_Y23_N18
\RegFile_inst|registers[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][8]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[2][8]~feeder_combout\);

-- Location: FF_X44_Y23_N19
\RegFile_inst|registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][8]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][8]~q\);

-- Location: LCCOMB_X44_Y23_N8
\RegFile_inst|registers[3][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][8]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[3][8]~feeder_combout\);

-- Location: FF_X44_Y23_N9
\RegFile_inst|registers[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][8]~feeder_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][8]~q\);

-- Location: FF_X44_Y21_N11
\RegFile_inst|registers[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][8]~q\);

-- Location: FF_X44_Y21_N1
\RegFile_inst|registers[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][8]~q\);

-- Location: LCCOMB_X44_Y21_N0
\RegFile_inst|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux23~0_combout\ = (rs_addr(0) & (((\RegFile_inst|registers[1][8]~q\) # (rs_addr(1))))) # (!rs_addr(0) & (\RegFile_inst|registers[0][8]~q\ & ((!rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][8]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][8]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux23~0_combout\);

-- Location: LCCOMB_X44_Y23_N22
\RegFile_inst|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux23~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux23~0_combout\ & ((\RegFile_inst|registers[3][8]~q\))) # (!\RegFile_inst|Mux23~0_combout\ & (\RegFile_inst|registers[2][8]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][8]~q\,
	datac => \RegFile_inst|registers[3][8]~q\,
	datad => \RegFile_inst|Mux23~0_combout\,
	combout => \RegFile_inst|Mux23~1_combout\);

-- Location: LCCOMB_X46_Y23_N22
\RegFile_inst|registers[7][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][7]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[7][7]~feeder_combout\);

-- Location: FF_X46_Y23_N23
\RegFile_inst|registers[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][7]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][7]~q\);

-- Location: FF_X43_Y23_N15
\RegFile_inst|registers[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][7]~q\);

-- Location: FF_X43_Y23_N13
\RegFile_inst|registers[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][7]~q\);

-- Location: FF_X42_Y21_N19
\RegFile_inst|registers[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][7]~q\);

-- Location: LCCOMB_X43_Y23_N12
\RegFile_inst|Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~0_combout\ = (rt_addr(0) & (rt_addr(1))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][7]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][7]~q\,
	datad => \RegFile_inst|registers[6][7]~q\,
	combout => \RegFile_inst|Mux56~0_combout\);

-- Location: LCCOMB_X43_Y23_N14
\RegFile_inst|Mux56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux56~0_combout\ & (\RegFile_inst|registers[7][7]~q\)) # (!\RegFile_inst|Mux56~0_combout\ & ((\RegFile_inst|registers[5][7]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][7]~q\,
	datac => \RegFile_inst|registers[5][7]~q\,
	datad => \RegFile_inst|Mux56~0_combout\,
	combout => \RegFile_inst|Mux56~1_combout\);

-- Location: LCCOMB_X44_Y23_N20
\RegFile_inst|registers[3][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][7]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[3][7]~feeder_combout\);

-- Location: FF_X44_Y23_N21
\RegFile_inst|registers[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][7]~feeder_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][7]~q\);

-- Location: FF_X43_Y19_N13
\RegFile_inst|registers[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][7]~q\);

-- Location: FF_X43_Y19_N11
\RegFile_inst|registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][7]~q\);

-- Location: LCCOMB_X43_Y19_N12
\RegFile_inst|Mux56~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][7]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[0][7]~q\,
	datad => \RegFile_inst|registers[1][7]~q\,
	combout => \RegFile_inst|Mux56~2_combout\);

-- Location: LCCOMB_X44_Y23_N16
\RegFile_inst|Mux56~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~3_combout\ = (\RegFile_inst|Mux56~2_combout\ & (((\RegFile_inst|registers[3][7]~q\) # (!rt_addr(1))))) # (!\RegFile_inst|Mux56~2_combout\ & (\RegFile_inst|registers[2][7]~q\ & ((rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][7]~q\,
	datab => \RegFile_inst|registers[3][7]~q\,
	datac => \RegFile_inst|Mux56~2_combout\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux56~3_combout\);

-- Location: LCCOMB_X43_Y23_N2
\RegFile_inst|Mux56~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux56~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux56~1_combout\,
	datad => \RegFile_inst|Mux56~3_combout\,
	combout => \RegFile_inst|Mux56~4_combout\);

-- Location: FF_X42_Y19_N11
\RegFile_inst|registers[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][5]~q\);

-- Location: FF_X43_Y19_N3
\RegFile_inst|registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][5]~q\);

-- Location: FF_X42_Y19_N1
\RegFile_inst|registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][5]~q\);

-- Location: FF_X43_Y19_N29
\RegFile_inst|registers[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][5]~q\);

-- Location: LCCOMB_X42_Y19_N0
\RegFile_inst|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux26~0_combout\ = (rs_addr(0) & (rs_addr(1))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][5]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][5]~q\,
	datad => \RegFile_inst|registers[0][5]~q\,
	combout => \RegFile_inst|Mux26~0_combout\);

-- Location: LCCOMB_X42_Y19_N16
\RegFile_inst|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux26~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux26~0_combout\ & (\RegFile_inst|registers[3][5]~q\)) # (!\RegFile_inst|Mux26~0_combout\ & ((\RegFile_inst|registers[1][5]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][5]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][5]~q\,
	datad => \RegFile_inst|Mux26~0_combout\,
	combout => \RegFile_inst|Mux26~1_combout\);

-- Location: LCCOMB_X43_Y20_N4
\RegFile_inst|registers[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][3]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[1][3]~feeder_combout\);

-- Location: FF_X43_Y20_N5
\RegFile_inst|registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][3]~feeder_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][3]~q\);

-- Location: LCCOMB_X41_Y20_N12
\RegFile_inst|registers[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][3]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[0][3]~feeder_combout\);

-- Location: FF_X41_Y20_N13
\RegFile_inst|registers[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][3]~feeder_combout\,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][3]~q\);

-- Location: FF_X42_Y19_N29
\RegFile_inst|registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][3]~q\);

-- Location: LCCOMB_X42_Y19_N2
\RegFile_inst|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux28~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & ((\RegFile_inst|registers[2][3]~q\))) # (!rs_addr(1) & (\RegFile_inst|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][3]~q\,
	datab => \RegFile_inst|registers[2][3]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux28~0_combout\);

-- Location: LCCOMB_X43_Y20_N26
\RegFile_inst|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux28~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux28~0_combout\ & (\RegFile_inst|registers[3][3]~q\)) # (!\RegFile_inst|Mux28~0_combout\ & ((\RegFile_inst|registers[1][3]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][3]~q\,
	datab => \RegFile_inst|registers[1][3]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|Mux28~0_combout\,
	combout => \RegFile_inst|Mux28~1_combout\);

-- Location: FF_X40_Y23_N7
\immediate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~2_combout\,
	sload => VCC,
	ena => \immediate[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(3));

-- Location: LCCOMB_X45_Y23_N12
\bus_data_in~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~76_combout\ = \RegFile_inst|Mux28~1_combout\ $ (immediate(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux28~1_combout\,
	datac => immediate(3),
	combout => \bus_data_in~76_combout\);

-- Location: LCCOMB_X46_Y23_N18
\bus_data_in[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[3]~1_combout\ = (opcode(2) & (\RegFile_inst|Mux28~1_combout\)) # (!opcode(2) & ((\bus_data_in~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux28~1_combout\,
	datab => opcode(2),
	datad => \bus_data_in~76_combout\,
	combout => \bus_data_in[3]~1_combout\);

-- Location: FF_X45_Y23_N15
\RegFile_inst|registers[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][2]~q\);

-- Location: FF_X45_Y23_N9
\RegFile_inst|registers[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][2]~q\);

-- Location: LCCOMB_X45_Y19_N24
\RegFile_inst|registers[1][2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][2]~43_combout\ = !\RegFile_inst|registers~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~6_combout\,
	combout => \RegFile_inst|registers[1][2]~43_combout\);

-- Location: FF_X45_Y19_N25
\RegFile_inst|registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][2]~43_combout\,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][2]~q\);

-- Location: LCCOMB_X44_Y19_N26
\RegFile_inst|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux29~0_combout\ = (rs_addr(0) & ((rs_addr(1)) # ((!\RegFile_inst|registers[1][2]~q\)))) # (!rs_addr(0) & (!rs_addr(1) & (\RegFile_inst|registers[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][2]~q\,
	datad => \RegFile_inst|registers[1][2]~q\,
	combout => \RegFile_inst|Mux29~0_combout\);

-- Location: LCCOMB_X45_Y23_N24
\RegFile_inst|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux29~1_combout\ = (\RegFile_inst|Mux29~0_combout\ & (((\RegFile_inst|registers[3][2]~q\) # (!rs_addr(1))))) # (!\RegFile_inst|Mux29~0_combout\ & (!\RegFile_inst|registers[2][2]~q\ & ((rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][2]~q\,
	datab => \RegFile_inst|registers[3][2]~q\,
	datac => \RegFile_inst|Mux29~0_combout\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux29~1_combout\);

-- Location: FF_X41_Y20_N27
\RegFile_inst|registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][1]~q\);

-- Location: FF_X40_Y23_N1
\RegFile_inst|registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][1]~q\);

-- Location: LCCOMB_X45_Y20_N28
\RegFile_inst|registers[2][1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][1]~41_combout\ = !\RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[2][1]~41_combout\);

-- Location: FF_X45_Y20_N29
\RegFile_inst|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][1]~41_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][1]~q\);

-- Location: FF_X41_Y20_N5
\RegFile_inst|registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][1]~q\);

-- Location: LCCOMB_X44_Y19_N0
\RegFile_inst|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux30~0_combout\ = (rs_addr(0) & (rs_addr(1))) # (!rs_addr(0) & ((rs_addr(1) & (!\RegFile_inst|registers[2][1]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][1]~q\,
	datad => \RegFile_inst|registers[0][1]~q\,
	combout => \RegFile_inst|Mux30~0_combout\);

-- Location: LCCOMB_X40_Y23_N0
\RegFile_inst|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux30~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux30~0_combout\ & (\RegFile_inst|registers[3][1]~q\)) # (!\RegFile_inst|Mux30~0_combout\ & ((\RegFile_inst|registers[1][1]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][1]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][1]~q\,
	datad => \RegFile_inst|Mux30~0_combout\,
	combout => \RegFile_inst|Mux30~1_combout\);

-- Location: FF_X40_Y23_N3
\immediate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~0_combout\,
	sload => VCC,
	ena => \immediate[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(1));

-- Location: LCCOMB_X45_Y23_N2
\bus_data_in~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~65_combout\ = \RegFile_inst|Mux30~1_combout\ $ (immediate(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|Mux30~1_combout\,
	datad => immediate(1),
	combout => \bus_data_in~65_combout\);

-- Location: LCCOMB_X46_Y23_N24
\bus_data_in[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~0_combout\ = (opcode(2) & (\RegFile_inst|Mux30~1_combout\)) # (!opcode(2) & ((\bus_data_in~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux30~1_combout\,
	datab => opcode(2),
	datad => \bus_data_in~65_combout\,
	combout => \bus_data_in[1]~0_combout\);

-- Location: LCCOMB_X45_Y23_N28
\bus_data_in[1]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~66_combout\ = (opcode(2)) # ((!func(3) & (func(1) & !opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(3),
	datab => func(1),
	datac => opcode(0),
	datad => opcode(2),
	combout => \bus_data_in[1]~66_combout\);

-- Location: FF_X39_Y23_N27
\RegFile_inst|registers[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~0_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][0]~q\);

-- Location: LCCOMB_X42_Y21_N10
\RegFile_inst|registers[6][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][0]~feeder_combout\ = \RegFile_inst|registers~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~0_combout\,
	combout => \RegFile_inst|registers[6][0]~feeder_combout\);

-- Location: FF_X42_Y21_N11
\RegFile_inst|registers[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][0]~feeder_combout\,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][0]~q\);

-- Location: FF_X40_Y21_N7
\RegFile_inst|registers[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~0_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][0]~q\);

-- Location: LCCOMB_X43_Y21_N12
\RegFile_inst|Mux63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][0]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((!rt_addr(0) & \RegFile_inst|registers[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][0]~q\,
	datab => rt_addr(1),
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[4][0]~q\,
	combout => \RegFile_inst|Mux63~0_combout\);

-- Location: LCCOMB_X39_Y23_N4
\RegFile_inst|Mux63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux63~0_combout\ & (\RegFile_inst|registers[7][0]~q\)) # (!\RegFile_inst|Mux63~0_combout\ & ((\RegFile_inst|registers[5][0]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][0]~q\,
	datab => \RegFile_inst|registers[5][0]~q\,
	datac => rt_addr(0),
	datad => \RegFile_inst|Mux63~0_combout\,
	combout => \RegFile_inst|Mux63~1_combout\);

-- Location: LCCOMB_X43_Y21_N28
\RegFile_inst|Mux63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((!\RegFile_inst|registers[1][0]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][0]~q\,
	datab => rt_addr(1),
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[1][0]~q\,
	combout => \RegFile_inst|Mux63~2_combout\);

-- Location: LCCOMB_X43_Y21_N2
\RegFile_inst|Mux63~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux63~2_combout\ & ((\RegFile_inst|registers[3][0]~q\))) # (!\RegFile_inst|Mux63~2_combout\ & (\RegFile_inst|registers[2][0]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][0]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[3][0]~q\,
	datad => \RegFile_inst|Mux63~2_combout\,
	combout => \RegFile_inst|Mux63~3_combout\);

-- Location: LCCOMB_X39_Y23_N22
\RegFile_inst|Mux63~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux63~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux63~1_combout\,
	datad => \RegFile_inst|Mux63~3_combout\,
	combout => \RegFile_inst|Mux63~4_combout\);

-- Location: LCCOMB_X42_Y23_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\RegFile_inst|Mux63~4_combout\ & (\RegFile_inst|Mux31~1_combout\ $ (VCC))) # (!\RegFile_inst|Mux63~4_combout\ & (\RegFile_inst|Mux31~1_combout\ & VCC))
-- \Add1~1\ = CARRY((\RegFile_inst|Mux63~4_combout\ & \RegFile_inst|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux63~4_combout\,
	datab => \RegFile_inst|Mux31~1_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X42_Y23_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\RegFile_inst|Mux62~4_combout\ & ((\RegFile_inst|Mux30~1_combout\ & (\Add1~1\ & VCC)) # (!\RegFile_inst|Mux30~1_combout\ & (!\Add1~1\)))) # (!\RegFile_inst|Mux62~4_combout\ & ((\RegFile_inst|Mux30~1_combout\ & (!\Add1~1\)) # 
-- (!\RegFile_inst|Mux30~1_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\RegFile_inst|Mux62~4_combout\ & (!\RegFile_inst|Mux30~1_combout\ & !\Add1~1\)) # (!\RegFile_inst|Mux62~4_combout\ & ((!\Add1~1\) # (!\RegFile_inst|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux62~4_combout\,
	datab => \RegFile_inst|Mux30~1_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X45_Y23_N30
\bus_data_in~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~67_combout\ = (\Equal2~0_combout\ & ((\bus_data_in[1]~66_combout\ & ((\Add1~2_combout\))) # (!\bus_data_in[1]~66_combout\ & (\RegFile_inst|Mux63~4_combout\)))) # (!\Equal2~0_combout\ & (\bus_data_in[1]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \bus_data_in[1]~66_combout\,
	datac => \RegFile_inst|Mux63~4_combout\,
	datad => \Add1~2_combout\,
	combout => \bus_data_in~67_combout\);

-- Location: LCCOMB_X40_Y23_N2
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (immediate(1) & (\RegFile_inst|Mux30~1_combout\ $ (VCC))) # (!immediate(1) & (\RegFile_inst|Mux30~1_combout\ & VCC))
-- \Add3~1\ = CARRY((immediate(1) & \RegFile_inst|Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => immediate(1),
	datab => \RegFile_inst|Mux30~1_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X45_Y23_N16
\bus_data_in~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~68_combout\ = (\Equal2~0_combout\ & (((\bus_data_in~67_combout\)))) # (!\Equal2~0_combout\ & ((\bus_data_in~67_combout\ & ((\Add3~0_combout\))) # (!\bus_data_in~67_combout\ & (immediate(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => immediate(1),
	datac => \bus_data_in~67_combout\,
	datad => \Add3~0_combout\,
	combout => \bus_data_in~68_combout\);

-- Location: LCCOMB_X42_Y24_N20
\bus_data_in[1]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~69_combout\ = (opcode(2) $ (opcode(0))) # (!opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(2),
	datac => opcode(0),
	datad => opcode(1),
	combout => \bus_data_in[1]~69_combout\);

-- Location: LCCOMB_X42_Y24_N26
\bus_data_in[1]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~71_combout\ = (\bus_data_in[1]~58_combout\ & (\bus_data_in[1]~69_combout\ & ((opcode(1)) # (!\bus_data_in[1]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[1]~70_combout\,
	datab => \bus_data_in[1]~58_combout\,
	datac => opcode(1),
	datad => \bus_data_in[1]~69_combout\,
	combout => \bus_data_in[1]~71_combout\);

-- Location: FF_X46_Y23_N25
\bus_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[1]~0_combout\,
	asdata => \bus_data_in~68_combout\,
	sload => ALT_INV_opcode(1),
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(1));

-- Location: LCCOMB_X46_Y23_N4
\RegFile_inst|registers~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~5_combout\ = (!\clr~input_o\ & bus_data_in(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(1),
	combout => \RegFile_inst|registers~5_combout\);

-- Location: LCCOMB_X43_Y22_N20
\RegFile_inst|registers[7][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][1]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[7][1]~feeder_combout\);

-- Location: FF_X43_Y22_N21
\RegFile_inst|registers[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][1]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][1]~q\);

-- Location: FF_X42_Y20_N5
\RegFile_inst|registers[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][1]~q\);

-- Location: FF_X43_Y20_N29
\RegFile_inst|registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][1]~q\);

-- Location: FF_X42_Y20_N7
\RegFile_inst|registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][1]~q\);

-- Location: LCCOMB_X42_Y20_N6
\RegFile_inst|Mux62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][1]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][1]~q\,
	datac => \RegFile_inst|registers[4][1]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux62~0_combout\);

-- Location: LCCOMB_X42_Y20_N4
\RegFile_inst|Mux62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux62~0_combout\ & (\RegFile_inst|registers[7][1]~q\)) # (!\RegFile_inst|Mux62~0_combout\ & ((\RegFile_inst|registers[5][1]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][1]~q\,
	datac => \RegFile_inst|registers[5][1]~q\,
	datad => \RegFile_inst|Mux62~0_combout\,
	combout => \RegFile_inst|Mux62~1_combout\);

-- Location: LCCOMB_X41_Y20_N24
\RegFile_inst|Mux62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][1]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][1]~q\,
	datab => rt_addr(1),
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[1][1]~q\,
	combout => \RegFile_inst|Mux62~2_combout\);

-- Location: LCCOMB_X41_Y20_N22
\RegFile_inst|Mux62~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux62~2_combout\ & (\RegFile_inst|registers[3][1]~q\)) # (!\RegFile_inst|Mux62~2_combout\ & ((!\RegFile_inst|registers[2][1]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][1]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[2][1]~q\,
	datad => \RegFile_inst|Mux62~2_combout\,
	combout => \RegFile_inst|Mux62~3_combout\);

-- Location: LCCOMB_X42_Y20_N12
\RegFile_inst|Mux62~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux62~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux62~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux62~1_combout\,
	datad => \RegFile_inst|Mux62~3_combout\,
	combout => \RegFile_inst|Mux62~4_combout\);

-- Location: LCCOMB_X42_Y23_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\RegFile_inst|Mux61~4_combout\ $ (\RegFile_inst|Mux29~1_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\RegFile_inst|Mux61~4_combout\ & ((\RegFile_inst|Mux29~1_combout\) # (!\Add1~3\))) # (!\RegFile_inst|Mux61~4_combout\ & (\RegFile_inst|Mux29~1_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux61~4_combout\,
	datab => \RegFile_inst|Mux29~1_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X40_Y23_N4
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\RegFile_inst|Mux29~1_combout\ & (!\Add3~1\)) # (!\RegFile_inst|Mux29~1_combout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\RegFile_inst|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux29~1_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X42_Y24_N0
\bus_data_in~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~74_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\)))) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~2_combout\))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux62~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux62~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add3~2_combout\,
	combout => \bus_data_in~74_combout\);

-- Location: LCCOMB_X42_Y24_N2
\bus_data_in~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~75_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~74_combout\ & (\RegFile_inst|Mux29~1_combout\)) # (!\bus_data_in~74_combout\ & ((\Add1~4_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux29~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~4_combout\,
	datad => \bus_data_in~74_combout\,
	combout => \bus_data_in~75_combout\);

-- Location: LCCOMB_X42_Y24_N14
\bus_data_in~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~137_combout\ = (\bus_data_in~75_combout\ & (((opcode(2)) # (opcode(1))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in~75_combout\,
	combout => \bus_data_in~137_combout\);

-- Location: FF_X42_Y24_N15
\bus_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~137_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(2));

-- Location: LCCOMB_X45_Y22_N8
\RegFile_inst|registers~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~6_combout\ = (bus_data_in(2) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(2),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~6_combout\);

-- Location: LCCOMB_X45_Y20_N14
\RegFile_inst|registers[2][2]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][2]~42_combout\ = !\RegFile_inst|registers~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~6_combout\,
	combout => \RegFile_inst|registers[2][2]~42_combout\);

-- Location: FF_X45_Y20_N15
\RegFile_inst|registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][2]~42_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][2]~q\);

-- Location: LCCOMB_X45_Y23_N18
\RegFile_inst|Mux61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~2_combout\ = (rt_addr(0) & (((rt_addr(1)) # (!\RegFile_inst|registers[1][2]~q\)))) # (!rt_addr(0) & (\RegFile_inst|registers[0][2]~q\ & (!rt_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[0][2]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|registers[1][2]~q\,
	combout => \RegFile_inst|Mux61~2_combout\);

-- Location: LCCOMB_X45_Y23_N4
\RegFile_inst|Mux61~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux61~2_combout\ & ((\RegFile_inst|registers[3][2]~q\))) # (!\RegFile_inst|Mux61~2_combout\ & (!\RegFile_inst|registers[2][2]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][2]~q\,
	datab => \RegFile_inst|registers[3][2]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux61~2_combout\,
	combout => \RegFile_inst|Mux61~3_combout\);

-- Location: FF_X45_Y20_N9
\RegFile_inst|registers[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][2]~q\);

-- Location: FF_X42_Y20_N31
\RegFile_inst|registers[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][2]~q\);

-- Location: FF_X43_Y20_N3
\RegFile_inst|registers[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][2]~q\);

-- Location: FF_X42_Y20_N25
\RegFile_inst|registers[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][2]~q\);

-- Location: LCCOMB_X42_Y20_N18
\RegFile_inst|Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][2]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][2]~q\,
	datab => \RegFile_inst|registers[4][2]~q\,
	datac => rt_addr(0),
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux61~0_combout\);

-- Location: LCCOMB_X42_Y20_N30
\RegFile_inst|Mux61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux61~0_combout\ & (\RegFile_inst|registers[7][2]~q\)) # (!\RegFile_inst|Mux61~0_combout\ & ((\RegFile_inst|registers[5][2]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][2]~q\,
	datac => \RegFile_inst|registers[5][2]~q\,
	datad => \RegFile_inst|Mux61~0_combout\,
	combout => \RegFile_inst|Mux61~1_combout\);

-- Location: LCCOMB_X45_Y23_N26
\RegFile_inst|Mux61~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux61~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux61~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux61~3_combout\,
	datad => \RegFile_inst|Mux61~1_combout\,
	combout => \RegFile_inst|Mux61~4_combout\);

-- Location: LCCOMB_X45_Y23_N10
\bus_data_in~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~77_combout\ = (\Equal2~0_combout\ & (((\RegFile_inst|Mux61~4_combout\ & !\bus_data_in[1]~66_combout\)))) # (!\Equal2~0_combout\ & ((immediate(3)) # ((\bus_data_in[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => immediate(3),
	datac => \RegFile_inst|Mux61~4_combout\,
	datad => \bus_data_in[1]~66_combout\,
	combout => \bus_data_in~77_combout\);

-- Location: LCCOMB_X42_Y23_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\RegFile_inst|Mux60~4_combout\ & ((\RegFile_inst|Mux28~1_combout\ & (\Add1~5\ & VCC)) # (!\RegFile_inst|Mux28~1_combout\ & (!\Add1~5\)))) # (!\RegFile_inst|Mux60~4_combout\ & ((\RegFile_inst|Mux28~1_combout\ & (!\Add1~5\)) # 
-- (!\RegFile_inst|Mux28~1_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\RegFile_inst|Mux60~4_combout\ & (!\RegFile_inst|Mux28~1_combout\ & !\Add1~5\)) # (!\RegFile_inst|Mux60~4_combout\ & ((!\Add1~5\) # (!\RegFile_inst|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux60~4_combout\,
	datab => \RegFile_inst|Mux28~1_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X40_Y23_N6
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\RegFile_inst|Mux28~1_combout\ $ (immediate(3) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\RegFile_inst|Mux28~1_combout\ & ((immediate(3)) # (!\Add3~3\))) # (!\RegFile_inst|Mux28~1_combout\ & (immediate(3) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux28~1_combout\,
	datab => immediate(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X46_Y23_N30
\bus_data_in~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~78_combout\ = (\bus_data_in~77_combout\ & (((\Add3~4_combout\)) # (!\bus_data_in[1]~66_combout\))) # (!\bus_data_in~77_combout\ & (\bus_data_in[1]~66_combout\ & (\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~77_combout\,
	datab => \bus_data_in[1]~66_combout\,
	datac => \Add1~6_combout\,
	datad => \Add3~4_combout\,
	combout => \bus_data_in~78_combout\);

-- Location: FF_X46_Y23_N19
\bus_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[3]~1_combout\,
	asdata => \bus_data_in~78_combout\,
	sload => ALT_INV_opcode(1),
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(3));

-- Location: LCCOMB_X45_Y22_N22
\RegFile_inst|registers~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~7_combout\ = (!\clr~input_o\ & bus_data_in(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => bus_data_in(3),
	combout => \RegFile_inst|registers~7_combout\);

-- Location: FF_X41_Y20_N15
\RegFile_inst|registers[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][3]~q\);

-- Location: LCCOMB_X41_Y20_N0
\RegFile_inst|Mux60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][3]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][3]~q\,
	datab => rt_addr(1),
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[1][3]~q\,
	combout => \RegFile_inst|Mux60~2_combout\);

-- Location: LCCOMB_X41_Y20_N6
\RegFile_inst|Mux60~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux60~2_combout\ & (\RegFile_inst|registers[3][3]~q\)) # (!\RegFile_inst|Mux60~2_combout\ & ((\RegFile_inst|registers[2][3]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][3]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[2][3]~q\,
	datad => \RegFile_inst|Mux60~2_combout\,
	combout => \RegFile_inst|Mux60~3_combout\);

-- Location: FF_X42_Y20_N29
\RegFile_inst|registers[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][3]~q\);

-- Location: FF_X43_Y20_N13
\RegFile_inst|registers[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][3]~q\);

-- Location: FF_X42_Y20_N15
\RegFile_inst|registers[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][3]~q\);

-- Location: LCCOMB_X42_Y20_N14
\RegFile_inst|Mux60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][3]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][3]~q\,
	datac => \RegFile_inst|registers[4][3]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux60~0_combout\);

-- Location: FF_X45_Y21_N9
\RegFile_inst|registers[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][3]~q\);

-- Location: LCCOMB_X42_Y20_N16
\RegFile_inst|Mux60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux60~0_combout\ & ((\RegFile_inst|registers[7][3]~q\))) # (!\RegFile_inst|Mux60~0_combout\ & (\RegFile_inst|registers[5][3]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[5][3]~q\,
	datac => \RegFile_inst|Mux60~0_combout\,
	datad => \RegFile_inst|registers[7][3]~q\,
	combout => \RegFile_inst|Mux60~1_combout\);

-- Location: LCCOMB_X42_Y20_N2
\RegFile_inst|Mux60~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux60~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux60~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux60~3_combout\,
	datad => \RegFile_inst|Mux60~1_combout\,
	combout => \RegFile_inst|Mux60~4_combout\);

-- Location: FF_X43_Y20_N19
\RegFile_inst|registers[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][4]~q\);

-- Location: FF_X42_Y20_N27
\RegFile_inst|registers[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][4]~q\);

-- Location: LCCOMB_X42_Y20_N26
\RegFile_inst|Mux59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][4]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][4]~q\,
	datac => \RegFile_inst|registers[4][4]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux59~0_combout\);

-- Location: FF_X42_Y20_N1
\RegFile_inst|registers[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][4]~q\);

-- Location: LCCOMB_X45_Y20_N30
\RegFile_inst|registers[7][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][4]~feeder_combout\ = \RegFile_inst|registers~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~8_combout\,
	combout => \RegFile_inst|registers[7][4]~feeder_combout\);

-- Location: FF_X45_Y20_N31
\RegFile_inst|registers[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][4]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][4]~q\);

-- Location: LCCOMB_X42_Y20_N8
\RegFile_inst|Mux59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~1_combout\ = (\RegFile_inst|Mux59~0_combout\ & (((\RegFile_inst|registers[7][4]~q\) # (!rt_addr(0))))) # (!\RegFile_inst|Mux59~0_combout\ & (\RegFile_inst|registers[5][4]~q\ & (rt_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux59~0_combout\,
	datab => \RegFile_inst|registers[5][4]~q\,
	datac => rt_addr(0),
	datad => \RegFile_inst|registers[7][4]~q\,
	combout => \RegFile_inst|Mux59~1_combout\);

-- Location: FF_X44_Y21_N23
\RegFile_inst|registers[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][4]~q\);

-- Location: FF_X44_Y21_N9
\RegFile_inst|registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][4]~q\);

-- Location: LCCOMB_X44_Y21_N2
\RegFile_inst|Mux59~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][4]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][4]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[1][4]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux59~2_combout\);

-- Location: FF_X42_Y21_N29
\RegFile_inst|registers[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][4]~q\);

-- Location: LCCOMB_X43_Y21_N14
\RegFile_inst|Mux59~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~3_combout\ = (\RegFile_inst|Mux59~2_combout\ & ((\RegFile_inst|registers[3][4]~q\) # ((!rt_addr(1))))) # (!\RegFile_inst|Mux59~2_combout\ & (((\RegFile_inst|registers[2][4]~q\ & rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux59~2_combout\,
	datab => \RegFile_inst|registers[3][4]~q\,
	datac => \RegFile_inst|registers[2][4]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux59~3_combout\);

-- Location: LCCOMB_X42_Y20_N10
\RegFile_inst|Mux59~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux59~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux59~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux59~1_combout\,
	datad => \RegFile_inst|Mux59~3_combout\,
	combout => \RegFile_inst|Mux59~4_combout\);

-- Location: LCCOMB_X42_Y23_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\RegFile_inst|Mux27~1_combout\ $ (\RegFile_inst|Mux59~4_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\RegFile_inst|Mux27~1_combout\ & ((\RegFile_inst|Mux59~4_combout\) # (!\Add1~7\))) # (!\RegFile_inst|Mux27~1_combout\ & (\RegFile_inst|Mux59~4_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux27~1_combout\,
	datab => \RegFile_inst|Mux59~4_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X41_Y22_N8
\bus_data_in~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~79_combout\ = (\bus_data_in[23]~73_combout\ & (\bus_data_in[23]~72_combout\)) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~8_combout\))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux60~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux60~4_combout\,
	datad => \Add1~8_combout\,
	combout => \bus_data_in~79_combout\);

-- Location: LCCOMB_X40_Y23_N8
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\RegFile_inst|Mux27~1_combout\ & (!\Add3~5\)) # (!\RegFile_inst|Mux27~1_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\RegFile_inst|Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux27~1_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X41_Y22_N26
\bus_data_in~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~80_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~79_combout\ & (\RegFile_inst|Mux27~1_combout\)) # (!\bus_data_in~79_combout\ & ((\Add3~6_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux27~1_combout\,
	datac => \bus_data_in~79_combout\,
	datad => \Add3~6_combout\,
	combout => \bus_data_in~80_combout\);

-- Location: LCCOMB_X41_Y22_N12
\bus_data_in~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~138_combout\ = (\bus_data_in~80_combout\ & (((opcode(2)) # (opcode(1))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~80_combout\,
	datab => opcode(0),
	datac => opcode(2),
	datad => opcode(1),
	combout => \bus_data_in~138_combout\);

-- Location: FF_X41_Y22_N13
\bus_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~138_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(4));

-- Location: LCCOMB_X45_Y21_N8
\RegFile_inst|registers~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~8_combout\ = (!\clr~input_o\ & bus_data_in(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(4),
	combout => \RegFile_inst|registers~8_combout\);

-- Location: FF_X43_Y21_N23
\RegFile_inst|registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][4]~q\);

-- Location: LCCOMB_X44_Y21_N20
\RegFile_inst|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux27~0_combout\ = (rs_addr(0) & (((\RegFile_inst|registers[1][4]~q\) # (rs_addr(1))))) # (!rs_addr(0) & (\RegFile_inst|registers[0][4]~q\ & ((!rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][4]~q\,
	datab => \RegFile_inst|registers[1][4]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux27~0_combout\);

-- Location: LCCOMB_X42_Y21_N28
\RegFile_inst|Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux27~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux27~0_combout\ & ((\RegFile_inst|registers[3][4]~q\))) # (!\RegFile_inst|Mux27~0_combout\ & (\RegFile_inst|registers[2][4]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][4]~q\,
	datac => \RegFile_inst|registers[3][4]~q\,
	datad => \RegFile_inst|Mux27~0_combout\,
	combout => \RegFile_inst|Mux27~1_combout\);

-- Location: LCCOMB_X42_Y23_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\RegFile_inst|Mux26~1_combout\ & ((\RegFile_inst|Mux58~4_combout\ & (\Add1~9\ & VCC)) # (!\RegFile_inst|Mux58~4_combout\ & (!\Add1~9\)))) # (!\RegFile_inst|Mux26~1_combout\ & ((\RegFile_inst|Mux58~4_combout\ & (!\Add1~9\)) # 
-- (!\RegFile_inst|Mux58~4_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\RegFile_inst|Mux26~1_combout\ & (!\RegFile_inst|Mux58~4_combout\ & !\Add1~9\)) # (!\RegFile_inst|Mux26~1_combout\ & ((!\Add1~9\) # (!\RegFile_inst|Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux26~1_combout\,
	datab => \RegFile_inst|Mux58~4_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X40_Y23_N10
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\RegFile_inst|Mux26~1_combout\ & (\Add3~7\ $ (GND))) # (!\RegFile_inst|Mux26~1_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\RegFile_inst|Mux26~1_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux26~1_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X41_Y22_N28
\bus_data_in~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~81_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\)))) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~8_combout\))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux59~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux59~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add3~8_combout\,
	combout => \bus_data_in~81_combout\);

-- Location: LCCOMB_X41_Y22_N22
\bus_data_in~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~82_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~81_combout\ & (\RegFile_inst|Mux26~1_combout\)) # (!\bus_data_in~81_combout\ & ((\Add1~10_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux26~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~10_combout\,
	datad => \bus_data_in~81_combout\,
	combout => \bus_data_in~82_combout\);

-- Location: LCCOMB_X41_Y22_N18
\bus_data_in~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~139_combout\ = (\bus_data_in~82_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~82_combout\,
	datab => opcode(1),
	datac => opcode(2),
	datad => opcode(0),
	combout => \bus_data_in~139_combout\);

-- Location: FF_X41_Y22_N19
\bus_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~139_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(5));

-- Location: LCCOMB_X39_Y23_N10
\RegFile_inst|registers~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~9_combout\ = (bus_data_in(5) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(5),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~9_combout\);

-- Location: FF_X42_Y23_N25
\RegFile_inst|registers[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][5]~q\);

-- Location: FF_X43_Y23_N17
\RegFile_inst|registers[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][5]~q\);

-- Location: FF_X43_Y23_N7
\RegFile_inst|registers[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][5]~q\);

-- Location: LCCOMB_X43_Y20_N20
\RegFile_inst|registers[6][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][5]~feeder_combout\ = \RegFile_inst|registers~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~9_combout\,
	combout => \RegFile_inst|registers[6][5]~feeder_combout\);

-- Location: FF_X43_Y20_N21
\RegFile_inst|registers[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][5]~feeder_combout\,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][5]~q\);

-- Location: LCCOMB_X43_Y23_N6
\RegFile_inst|Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~0_combout\ = (rt_addr(0) & (rt_addr(1))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][5]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][5]~q\,
	datad => \RegFile_inst|registers[6][5]~q\,
	combout => \RegFile_inst|Mux58~0_combout\);

-- Location: LCCOMB_X43_Y23_N16
\RegFile_inst|Mux58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux58~0_combout\ & (\RegFile_inst|registers[7][5]~q\)) # (!\RegFile_inst|Mux58~0_combout\ & ((\RegFile_inst|registers[5][5]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][5]~q\,
	datac => \RegFile_inst|registers[5][5]~q\,
	datad => \RegFile_inst|Mux58~0_combout\,
	combout => \RegFile_inst|Mux58~1_combout\);

-- Location: LCCOMB_X43_Y19_N2
\RegFile_inst|Mux58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][5]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][5]~q\,
	datad => \RegFile_inst|registers[0][5]~q\,
	combout => \RegFile_inst|Mux58~2_combout\);

-- Location: LCCOMB_X42_Y19_N10
\RegFile_inst|Mux58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux58~2_combout\ & ((\RegFile_inst|registers[3][5]~q\))) # (!\RegFile_inst|Mux58~2_combout\ & (\RegFile_inst|registers[2][5]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][5]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[3][5]~q\,
	datad => \RegFile_inst|Mux58~2_combout\,
	combout => \RegFile_inst|Mux58~3_combout\);

-- Location: LCCOMB_X43_Y23_N0
\RegFile_inst|Mux58~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux58~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux58~1_combout\,
	datad => \RegFile_inst|Mux58~3_combout\,
	combout => \RegFile_inst|Mux58~4_combout\);

-- Location: FF_X42_Y21_N15
\RegFile_inst|registers[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][6]~q\);

-- Location: FF_X44_Y21_N29
\RegFile_inst|registers[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][6]~q\);

-- Location: FF_X44_Y21_N15
\RegFile_inst|registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][6]~q\);

-- Location: LCCOMB_X44_Y21_N12
\RegFile_inst|Mux57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~2_combout\ = (rt_addr(0) & (((\RegFile_inst|registers[1][6]~q\) # (rt_addr(1))))) # (!rt_addr(0) & (\RegFile_inst|registers[0][6]~q\ & ((!rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][6]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][6]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux57~2_combout\);

-- Location: LCCOMB_X43_Y21_N0
\RegFile_inst|Mux57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~3_combout\ = (\RegFile_inst|Mux57~2_combout\ & ((\RegFile_inst|registers[3][6]~q\) # ((!rt_addr(1))))) # (!\RegFile_inst|Mux57~2_combout\ & (((\RegFile_inst|registers[2][6]~q\ & rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][6]~q\,
	datab => \RegFile_inst|registers[2][6]~q\,
	datac => \RegFile_inst|Mux57~2_combout\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux57~3_combout\);

-- Location: LCCOMB_X46_Y23_N28
\RegFile_inst|registers[7][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][6]~feeder_combout\ = \RegFile_inst|registers~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~10_combout\,
	combout => \RegFile_inst|registers[7][6]~feeder_combout\);

-- Location: FF_X46_Y23_N29
\RegFile_inst|registers[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][6]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][6]~q\);

-- Location: FF_X43_Y23_N31
\RegFile_inst|registers[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][6]~q\);

-- Location: FF_X42_Y21_N21
\RegFile_inst|registers[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][6]~q\);

-- Location: FF_X43_Y23_N29
\RegFile_inst|registers[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][6]~q\);

-- Location: LCCOMB_X43_Y23_N28
\RegFile_inst|Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][6]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][6]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][6]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][6]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux57~0_combout\);

-- Location: LCCOMB_X43_Y23_N30
\RegFile_inst|Mux57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux57~0_combout\ & (\RegFile_inst|registers[7][6]~q\)) # (!\RegFile_inst|Mux57~0_combout\ & ((\RegFile_inst|registers[5][6]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][6]~q\,
	datac => \RegFile_inst|registers[5][6]~q\,
	datad => \RegFile_inst|Mux57~0_combout\,
	combout => \RegFile_inst|Mux57~1_combout\);

-- Location: LCCOMB_X43_Y21_N10
\RegFile_inst|Mux57~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux57~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux57~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux57~3_combout\,
	datac => rt_addr(2),
	datad => \RegFile_inst|Mux57~1_combout\,
	combout => \RegFile_inst|Mux57~4_combout\);

-- Location: LCCOMB_X42_Y23_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\RegFile_inst|Mux25~1_combout\ $ (\RegFile_inst|Mux57~4_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\RegFile_inst|Mux25~1_combout\ & ((\RegFile_inst|Mux57~4_combout\) # (!\Add1~11\))) # (!\RegFile_inst|Mux25~1_combout\ & (\RegFile_inst|Mux57~4_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux25~1_combout\,
	datab => \RegFile_inst|Mux57~4_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X41_Y23_N8
\bus_data_in~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~83_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\) # (\Add1~12_combout\)))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux58~4_combout\ & (!\bus_data_in[23]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux58~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add1~12_combout\,
	combout => \bus_data_in~83_combout\);

-- Location: LCCOMB_X40_Y23_N12
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\RegFile_inst|Mux25~1_combout\ & (!\Add3~9\)) # (!\RegFile_inst|Mux25~1_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\RegFile_inst|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux25~1_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X41_Y23_N6
\bus_data_in~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~84_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~83_combout\ & (\RegFile_inst|Mux25~1_combout\)) # (!\bus_data_in~83_combout\ & ((\Add3~10_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux25~1_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \bus_data_in~83_combout\,
	datad => \Add3~10_combout\,
	combout => \bus_data_in~84_combout\);

-- Location: LCCOMB_X41_Y23_N12
\bus_data_in~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~140_combout\ = (\bus_data_in~84_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~84_combout\,
	combout => \bus_data_in~140_combout\);

-- Location: FF_X41_Y23_N13
\bus_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~140_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(6));

-- Location: LCCOMB_X46_Y23_N26
\RegFile_inst|registers~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~10_combout\ = (!\clr~input_o\ & bus_data_in(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(6),
	combout => \RegFile_inst|registers~10_combout\);

-- Location: FF_X43_Y21_N17
\RegFile_inst|registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][6]~q\);

-- Location: LCCOMB_X44_Y21_N26
\RegFile_inst|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux25~0_combout\ = (rs_addr(0) & (((\RegFile_inst|registers[1][6]~q\) # (rs_addr(1))))) # (!rs_addr(0) & (\RegFile_inst|registers[0][6]~q\ & ((!rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][6]~q\,
	datab => \RegFile_inst|registers[1][6]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux25~0_combout\);

-- Location: LCCOMB_X42_Y21_N14
\RegFile_inst|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux25~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux25~0_combout\ & ((\RegFile_inst|registers[3][6]~q\))) # (!\RegFile_inst|Mux25~0_combout\ & (\RegFile_inst|registers[2][6]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][6]~q\,
	datac => \RegFile_inst|registers[3][6]~q\,
	datad => \RegFile_inst|Mux25~0_combout\,
	combout => \RegFile_inst|Mux25~1_combout\);

-- Location: LCCOMB_X42_Y23_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\RegFile_inst|Mux56~4_combout\ & ((\RegFile_inst|Mux24~1_combout\ & (\Add1~13\ & VCC)) # (!\RegFile_inst|Mux24~1_combout\ & (!\Add1~13\)))) # (!\RegFile_inst|Mux56~4_combout\ & ((\RegFile_inst|Mux24~1_combout\ & (!\Add1~13\)) # 
-- (!\RegFile_inst|Mux24~1_combout\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\RegFile_inst|Mux56~4_combout\ & (!\RegFile_inst|Mux24~1_combout\ & !\Add1~13\)) # (!\RegFile_inst|Mux56~4_combout\ & ((!\Add1~13\) # (!\RegFile_inst|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux56~4_combout\,
	datab => \RegFile_inst|Mux24~1_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X40_Y23_N14
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\RegFile_inst|Mux24~1_combout\ & (\Add3~11\ $ (GND))) # (!\RegFile_inst|Mux24~1_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\RegFile_inst|Mux24~1_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux24~1_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X41_Y23_N28
\bus_data_in~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~85_combout\ = (\bus_data_in[23]~73_combout\ & (((\bus_data_in[23]~72_combout\) # (\Add3~12_combout\)))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux57~4_combout\ & (!\bus_data_in[23]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux57~4_combout\,
	datac => \bus_data_in[23]~72_combout\,
	datad => \Add3~12_combout\,
	combout => \bus_data_in~85_combout\);

-- Location: LCCOMB_X41_Y23_N18
\bus_data_in~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~86_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~85_combout\ & (\RegFile_inst|Mux24~1_combout\)) # (!\bus_data_in~85_combout\ & ((\Add1~14_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux24~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~14_combout\,
	datad => \bus_data_in~85_combout\,
	combout => \bus_data_in~86_combout\);

-- Location: LCCOMB_X41_Y23_N22
\bus_data_in~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~141_combout\ = (\bus_data_in~86_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~86_combout\,
	combout => \bus_data_in~141_combout\);

-- Location: FF_X41_Y23_N23
\bus_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~141_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(7));

-- Location: LCCOMB_X46_Y23_N0
\RegFile_inst|registers~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~11_combout\ = (!\clr~input_o\ & bus_data_in(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(7),
	combout => \RegFile_inst|registers~11_combout\);

-- Location: LCCOMB_X45_Y19_N6
\RegFile_inst|registers[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][7]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[2][7]~feeder_combout\);

-- Location: FF_X45_Y19_N7
\RegFile_inst|registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][7]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][7]~q\);

-- Location: LCCOMB_X44_Y19_N24
\RegFile_inst|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux24~0_combout\ = (rs_addr(1) & ((\RegFile_inst|registers[2][7]~q\) # ((rs_addr(0))))) # (!rs_addr(1) & (((!rs_addr(0) & \RegFile_inst|registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][7]~q\,
	datab => rs_addr(1),
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[0][7]~q\,
	combout => \RegFile_inst|Mux24~0_combout\);

-- Location: LCCOMB_X43_Y19_N10
\RegFile_inst|Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux24~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux24~0_combout\ & ((\RegFile_inst|registers[3][7]~q\))) # (!\RegFile_inst|Mux24~0_combout\ & (\RegFile_inst|registers[1][7]~q\)))) # (!rs_addr(0) & (\RegFile_inst|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|Mux24~0_combout\,
	datac => \RegFile_inst|registers[1][7]~q\,
	datad => \RegFile_inst|registers[3][7]~q\,
	combout => \RegFile_inst|Mux24~1_combout\);

-- Location: LCCOMB_X40_Y23_N16
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\RegFile_inst|Mux23~1_combout\ & (!\Add3~13\)) # (!\RegFile_inst|Mux23~1_combout\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\RegFile_inst|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux23~1_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X42_Y23_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\RegFile_inst|Mux55~4_combout\ $ (\RegFile_inst|Mux23~1_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\RegFile_inst|Mux55~4_combout\ & ((\RegFile_inst|Mux23~1_combout\) # (!\Add1~15\))) # (!\RegFile_inst|Mux55~4_combout\ & (\RegFile_inst|Mux23~1_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux55~4_combout\,
	datab => \RegFile_inst|Mux23~1_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X42_Y24_N24
\bus_data_in~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~87_combout\ = (\bus_data_in[23]~73_combout\ & (\bus_data_in[23]~72_combout\)) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & (\Add1~16_combout\)) # (!\bus_data_in[23]~72_combout\ & ((\RegFile_inst|Mux56~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~16_combout\,
	datad => \RegFile_inst|Mux56~4_combout\,
	combout => \bus_data_in~87_combout\);

-- Location: LCCOMB_X42_Y24_N10
\bus_data_in~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~88_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~87_combout\ & (\RegFile_inst|Mux23~1_combout\)) # (!\bus_data_in~87_combout\ & ((\Add3~14_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux23~1_combout\,
	datac => \Add3~14_combout\,
	datad => \bus_data_in~87_combout\,
	combout => \bus_data_in~88_combout\);

-- Location: LCCOMB_X42_Y24_N8
\bus_data_in~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~142_combout\ = (\bus_data_in~88_combout\ & (((opcode(2)) # (opcode(1))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in~88_combout\,
	combout => \bus_data_in~142_combout\);

-- Location: FF_X42_Y24_N9
\bus_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~142_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(8));

-- Location: LCCOMB_X44_Y22_N30
\RegFile_inst|registers~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~12_combout\ = (!\clr~input_o\ & bus_data_in(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(8),
	combout => \RegFile_inst|registers~12_combout\);

-- Location: FF_X43_Y20_N31
\RegFile_inst|registers[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][8]~q\);

-- Location: FF_X43_Y23_N27
\RegFile_inst|registers[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][8]~q\);

-- Location: LCCOMB_X43_Y23_N26
\RegFile_inst|Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][8]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][8]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][8]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][8]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux55~0_combout\);

-- Location: FF_X43_Y23_N9
\RegFile_inst|registers[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][8]~q\);

-- Location: FF_X42_Y23_N9
\RegFile_inst|registers[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][8]~q\);

-- Location: LCCOMB_X43_Y23_N8
\RegFile_inst|Mux55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux55~0_combout\ & ((\RegFile_inst|registers[7][8]~q\))) # (!\RegFile_inst|Mux55~0_combout\ & (\RegFile_inst|registers[5][8]~q\)))) # (!rt_addr(0) & (\RegFile_inst|Mux55~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|Mux55~0_combout\,
	datac => \RegFile_inst|registers[5][8]~q\,
	datad => \RegFile_inst|registers[7][8]~q\,
	combout => \RegFile_inst|Mux55~1_combout\);

-- Location: LCCOMB_X44_Y21_N18
\RegFile_inst|Mux55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][8]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][8]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[1][8]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux55~2_combout\);

-- Location: LCCOMB_X44_Y23_N6
\RegFile_inst|Mux55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux55~2_combout\ & ((\RegFile_inst|registers[3][8]~q\))) # (!\RegFile_inst|Mux55~2_combout\ & (\RegFile_inst|registers[2][8]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[2][8]~q\,
	datac => \RegFile_inst|registers[3][8]~q\,
	datad => \RegFile_inst|Mux55~2_combout\,
	combout => \RegFile_inst|Mux55~3_combout\);

-- Location: LCCOMB_X43_Y23_N20
\RegFile_inst|Mux55~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux55~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux55~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux55~1_combout\,
	datad => \RegFile_inst|Mux55~3_combout\,
	combout => \RegFile_inst|Mux55~4_combout\);

-- Location: LCCOMB_X40_Y23_N18
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\RegFile_inst|Mux22~1_combout\ & (\Add3~15\ $ (GND))) # (!\RegFile_inst|Mux22~1_combout\ & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((\RegFile_inst|Mux22~1_combout\ & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux22~1_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X41_Y23_N4
\bus_data_in~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~89_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\) # ((\Add3~16_combout\)))) # (!\bus_data_in[23]~73_combout\ & (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux55~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux55~4_combout\,
	datad => \Add3~16_combout\,
	combout => \bus_data_in~89_combout\);

-- Location: FF_X42_Y19_N15
\RegFile_inst|registers[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][9]~q\);

-- Location: FF_X42_Y19_N13
\RegFile_inst|registers[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][9]~q\);

-- Location: FF_X43_Y19_N1
\RegFile_inst|registers[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][9]~q\);

-- Location: LCCOMB_X43_Y19_N26
\RegFile_inst|Mux54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~2_combout\ = (rt_addr(0) & (((\RegFile_inst|registers[1][9]~q\) # (rt_addr(1))))) # (!rt_addr(0) & (\RegFile_inst|registers[0][9]~q\ & ((!rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][9]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[1][9]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux54~2_combout\);

-- Location: LCCOMB_X42_Y19_N12
\RegFile_inst|Mux54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux54~2_combout\ & ((\RegFile_inst|registers[3][9]~q\))) # (!\RegFile_inst|Mux54~2_combout\ & (\RegFile_inst|registers[2][9]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][9]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[3][9]~q\,
	datad => \RegFile_inst|Mux54~2_combout\,
	combout => \RegFile_inst|Mux54~3_combout\);

-- Location: FF_X42_Y21_N5
\RegFile_inst|registers[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][9]~q\);

-- Location: FF_X43_Y23_N5
\RegFile_inst|registers[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][9]~q\);

-- Location: LCCOMB_X43_Y23_N4
\RegFile_inst|Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][9]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][9]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][9]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][9]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux54~0_combout\);

-- Location: FF_X43_Y23_N11
\RegFile_inst|registers[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][9]~q\);

-- Location: FF_X46_Y23_N21
\RegFile_inst|registers[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~13_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][9]~q\);

-- Location: LCCOMB_X43_Y23_N10
\RegFile_inst|Mux54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux54~0_combout\ & ((\RegFile_inst|registers[7][9]~q\))) # (!\RegFile_inst|Mux54~0_combout\ & (\RegFile_inst|registers[5][9]~q\)))) # (!rt_addr(0) & (\RegFile_inst|Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|Mux54~0_combout\,
	datac => \RegFile_inst|registers[5][9]~q\,
	datad => \RegFile_inst|registers[7][9]~q\,
	combout => \RegFile_inst|Mux54~1_combout\);

-- Location: LCCOMB_X43_Y23_N18
\RegFile_inst|Mux54~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux54~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux54~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux54~3_combout\,
	datad => \RegFile_inst|Mux54~1_combout\,
	combout => \RegFile_inst|Mux54~4_combout\);

-- Location: LCCOMB_X42_Y23_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\RegFile_inst|Mux22~1_combout\ & ((\RegFile_inst|Mux54~4_combout\ & (\Add1~17\ & VCC)) # (!\RegFile_inst|Mux54~4_combout\ & (!\Add1~17\)))) # (!\RegFile_inst|Mux22~1_combout\ & ((\RegFile_inst|Mux54~4_combout\ & (!\Add1~17\)) # 
-- (!\RegFile_inst|Mux54~4_combout\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\RegFile_inst|Mux22~1_combout\ & (!\RegFile_inst|Mux54~4_combout\ & !\Add1~17\)) # (!\RegFile_inst|Mux22~1_combout\ & ((!\Add1~17\) # (!\RegFile_inst|Mux54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux22~1_combout\,
	datab => \RegFile_inst|Mux54~4_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X41_Y23_N30
\bus_data_in~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~90_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~89_combout\ & (\RegFile_inst|Mux22~1_combout\)) # (!\bus_data_in~89_combout\ & ((\Add1~18_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux22~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in~89_combout\,
	datad => \Add1~18_combout\,
	combout => \bus_data_in~90_combout\);

-- Location: LCCOMB_X41_Y23_N24
\bus_data_in~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~143_combout\ = (\bus_data_in~90_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~90_combout\,
	combout => \bus_data_in~143_combout\);

-- Location: FF_X41_Y23_N25
\bus_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~143_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(9));

-- Location: LCCOMB_X46_Y23_N20
\RegFile_inst|registers~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~13_combout\ = (bus_data_in(9) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bus_data_in(9),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~13_combout\);

-- Location: FF_X43_Y19_N27
\RegFile_inst|registers[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][9]~q\);

-- Location: LCCOMB_X42_Y19_N14
\RegFile_inst|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux22~0_combout\ = (rs_addr(0) & (rs_addr(1))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][9]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[2][9]~q\,
	datad => \RegFile_inst|registers[0][9]~q\,
	combout => \RegFile_inst|Mux22~0_combout\);

-- Location: LCCOMB_X42_Y19_N30
\RegFile_inst|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux22~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux22~0_combout\ & ((\RegFile_inst|registers[3][9]~q\))) # (!\RegFile_inst|Mux22~0_combout\ & (\RegFile_inst|registers[1][9]~q\)))) # (!rs_addr(0) & (((\RegFile_inst|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][9]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|Mux22~0_combout\,
	datad => \RegFile_inst|registers[3][9]~q\,
	combout => \RegFile_inst|Mux22~1_combout\);

-- Location: LCCOMB_X40_Y23_N20
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\RegFile_inst|Mux21~1_combout\ & (!\Add3~17\)) # (!\RegFile_inst|Mux21~1_combout\ & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!\RegFile_inst|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux21~1_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X44_Y21_N5
\RegFile_inst|registers[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][10]~q\);

-- Location: FF_X44_Y21_N31
\RegFile_inst|registers[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][10]~q\);

-- Location: LCCOMB_X44_Y21_N30
\RegFile_inst|Mux53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][10]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][10]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][10]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux53~2_combout\);

-- Location: FF_X42_Y21_N25
\RegFile_inst|registers[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][10]~q\);

-- Location: LCCOMB_X43_Y21_N30
\RegFile_inst|Mux53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~3_combout\ = (\RegFile_inst|Mux53~2_combout\ & ((\RegFile_inst|registers[3][10]~q\) # ((!rt_addr(1))))) # (!\RegFile_inst|Mux53~2_combout\ & (((rt_addr(1) & \RegFile_inst|registers[2][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux53~2_combout\,
	datab => \RegFile_inst|registers[3][10]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|registers[2][10]~q\,
	combout => \RegFile_inst|Mux53~3_combout\);

-- Location: FF_X45_Y21_N25
\RegFile_inst|registers[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~14_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][10]~q\);

-- Location: FF_X45_Y21_N23
\RegFile_inst|registers[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][10]~q\);

-- Location: FF_X42_Y21_N23
\RegFile_inst|registers[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][10]~q\);

-- Location: FF_X40_Y21_N17
\RegFile_inst|registers[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][10]~q\);

-- Location: LCCOMB_X40_Y21_N10
\RegFile_inst|Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][10]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][10]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][10]~q\,
	datab => \RegFile_inst|registers[4][10]~q\,
	datac => rt_addr(1),
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux53~0_combout\);

-- Location: LCCOMB_X45_Y21_N22
\RegFile_inst|Mux53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux53~0_combout\ & (\RegFile_inst|registers[7][10]~q\)) # (!\RegFile_inst|Mux53~0_combout\ & ((\RegFile_inst|registers[5][10]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][10]~q\,
	datac => \RegFile_inst|registers[5][10]~q\,
	datad => \RegFile_inst|Mux53~0_combout\,
	combout => \RegFile_inst|Mux53~1_combout\);

-- Location: LCCOMB_X43_Y21_N24
\RegFile_inst|Mux53~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux53~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux53~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux53~3_combout\,
	datad => \RegFile_inst|Mux53~1_combout\,
	combout => \RegFile_inst|Mux53~4_combout\);

-- Location: LCCOMB_X42_Y23_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\RegFile_inst|Mux21~1_combout\ $ (\RegFile_inst|Mux53~4_combout\ $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\RegFile_inst|Mux21~1_combout\ & ((\RegFile_inst|Mux53~4_combout\) # (!\Add1~19\))) # (!\RegFile_inst|Mux21~1_combout\ & (\RegFile_inst|Mux53~4_combout\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux21~1_combout\,
	datab => \RegFile_inst|Mux53~4_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X43_Y23_N24
\bus_data_in~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~91_combout\ = (\bus_data_in[23]~73_combout\ & (((\bus_data_in[23]~72_combout\)))) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~20_combout\))) # (!\bus_data_in[23]~72_combout\ & 
-- (\RegFile_inst|Mux54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux54~4_combout\,
	datac => \bus_data_in[23]~72_combout\,
	datad => \Add1~20_combout\,
	combout => \bus_data_in~91_combout\);

-- Location: LCCOMB_X43_Y23_N22
\bus_data_in~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~92_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~91_combout\ & (\RegFile_inst|Mux21~1_combout\)) # (!\bus_data_in~91_combout\ & ((\Add3~18_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux21~1_combout\,
	datac => \Add3~18_combout\,
	datad => \bus_data_in~91_combout\,
	combout => \bus_data_in~92_combout\);

-- Location: LCCOMB_X41_Y23_N26
\bus_data_in~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~144_combout\ = (\bus_data_in~92_combout\ & (((opcode(2)) # (opcode(1))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in~92_combout\,
	combout => \bus_data_in~144_combout\);

-- Location: FF_X41_Y23_N27
\bus_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~144_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(10));

-- Location: LCCOMB_X45_Y21_N24
\RegFile_inst|registers~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~14_combout\ = (!\clr~input_o\ & bus_data_in(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(10),
	combout => \RegFile_inst|registers~14_combout\);

-- Location: FF_X43_Y21_N19
\RegFile_inst|registers[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][10]~q\);

-- Location: LCCOMB_X44_Y21_N24
\RegFile_inst|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux21~0_combout\ = (rs_addr(0) & (((\RegFile_inst|registers[1][10]~q\) # (rs_addr(1))))) # (!rs_addr(0) & (\RegFile_inst|registers[0][10]~q\ & ((!rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][10]~q\,
	datab => \RegFile_inst|registers[1][10]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux21~0_combout\);

-- Location: LCCOMB_X42_Y21_N24
\RegFile_inst|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux21~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux21~0_combout\ & ((\RegFile_inst|registers[3][10]~q\))) # (!\RegFile_inst|Mux21~0_combout\ & (\RegFile_inst|registers[2][10]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][10]~q\,
	datac => \RegFile_inst|registers[3][10]~q\,
	datad => \RegFile_inst|Mux21~0_combout\,
	combout => \RegFile_inst|Mux21~1_combout\);

-- Location: LCCOMB_X40_Y23_N22
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((immediate(11) $ (\RegFile_inst|Mux20~1_combout\ $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((immediate(11) & ((\RegFile_inst|Mux20~1_combout\) # (!\Add3~19\))) # (!immediate(11) & (\RegFile_inst|Mux20~1_combout\ & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => immediate(11),
	datab => \RegFile_inst|Mux20~1_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X43_Y19_N23
\RegFile_inst|registers[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][11]~q\);

-- Location: FF_X43_Y19_N5
\RegFile_inst|registers[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][11]~q\);

-- Location: LCCOMB_X43_Y19_N4
\RegFile_inst|Mux52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~2_combout\ = (rt_addr(0) & ((\RegFile_inst|registers[1][11]~q\) # ((rt_addr(1))))) # (!rt_addr(0) & (((\RegFile_inst|registers[0][11]~q\ & !rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][11]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[0][11]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux52~2_combout\);

-- Location: FF_X42_Y19_N25
\RegFile_inst|registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][11]~q\);

-- Location: LCCOMB_X42_Y19_N22
\RegFile_inst|Mux52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~3_combout\ = (\RegFile_inst|Mux52~2_combout\ & (((\RegFile_inst|registers[3][11]~q\)) # (!rt_addr(1)))) # (!\RegFile_inst|Mux52~2_combout\ & (rt_addr(1) & ((\RegFile_inst|registers[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux52~2_combout\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[3][11]~q\,
	datad => \RegFile_inst|registers[2][11]~q\,
	combout => \RegFile_inst|Mux52~3_combout\);

-- Location: FF_X45_Y21_N5
\RegFile_inst|registers[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][11]~q\);

-- Location: FF_X45_Y21_N7
\RegFile_inst|registers[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][11]~q\);

-- Location: FF_X46_Y21_N5
\RegFile_inst|registers[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][11]~q\);

-- Location: FF_X46_Y21_N23
\RegFile_inst|registers[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][11]~q\);

-- Location: LCCOMB_X46_Y21_N22
\RegFile_inst|Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][11]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][11]~q\,
	datac => \RegFile_inst|registers[4][11]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux52~0_combout\);

-- Location: LCCOMB_X45_Y21_N6
\RegFile_inst|Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux52~0_combout\ & (\RegFile_inst|registers[7][11]~q\)) # (!\RegFile_inst|Mux52~0_combout\ & ((\RegFile_inst|registers[5][11]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][11]~q\,
	datac => \RegFile_inst|registers[5][11]~q\,
	datad => \RegFile_inst|Mux52~0_combout\,
	combout => \RegFile_inst|Mux52~1_combout\);

-- Location: LCCOMB_X42_Y19_N6
\RegFile_inst|Mux52~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux52~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux52~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux52~3_combout\,
	datad => \RegFile_inst|Mux52~1_combout\,
	combout => \RegFile_inst|Mux52~4_combout\);

-- Location: LCCOMB_X42_Y23_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\RegFile_inst|Mux52~4_combout\ & ((\RegFile_inst|Mux20~1_combout\ & (\Add1~21\ & VCC)) # (!\RegFile_inst|Mux20~1_combout\ & (!\Add1~21\)))) # (!\RegFile_inst|Mux52~4_combout\ & ((\RegFile_inst|Mux20~1_combout\ & (!\Add1~21\)) # 
-- (!\RegFile_inst|Mux20~1_combout\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\RegFile_inst|Mux52~4_combout\ & (!\RegFile_inst|Mux20~1_combout\ & !\Add1~21\)) # (!\RegFile_inst|Mux52~4_combout\ & ((!\Add1~21\) # (!\RegFile_inst|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux52~4_combout\,
	datab => \RegFile_inst|Mux20~1_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X45_Y23_N20
\bus_data_in~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~94_combout\ = (\Equal2~0_combout\ & ((\bus_data_in[1]~66_combout\ & ((\Add1~22_combout\))) # (!\bus_data_in[1]~66_combout\ & (\RegFile_inst|Mux53~4_combout\)))) # (!\Equal2~0_combout\ & (\bus_data_in[1]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \bus_data_in[1]~66_combout\,
	datac => \RegFile_inst|Mux53~4_combout\,
	datad => \Add1~22_combout\,
	combout => \bus_data_in~94_combout\);

-- Location: LCCOMB_X45_Y23_N6
\bus_data_in~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~95_combout\ = (\Equal2~0_combout\ & (((\bus_data_in~94_combout\)))) # (!\Equal2~0_combout\ & ((\bus_data_in~94_combout\ & (\Add3~20_combout\)) # (!\bus_data_in~94_combout\ & ((immediate(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add3~20_combout\,
	datac => immediate(11),
	datad => \bus_data_in~94_combout\,
	combout => \bus_data_in~95_combout\);

-- Location: FF_X46_Y23_N13
\bus_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[11]~2_combout\,
	asdata => \bus_data_in~95_combout\,
	sload => ALT_INV_opcode(1),
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(11));

-- Location: LCCOMB_X46_Y20_N26
\RegFile_inst|registers~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~15_combout\ = (bus_data_in(11) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bus_data_in(11),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~15_combout\);

-- Location: FF_X42_Y19_N23
\RegFile_inst|registers[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][11]~q\);

-- Location: LCCOMB_X42_Y19_N24
\RegFile_inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux20~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & ((\RegFile_inst|registers[2][11]~q\))) # (!rs_addr(1) & (\RegFile_inst|registers[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][11]~q\,
	datac => \RegFile_inst|registers[2][11]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux20~0_combout\);

-- Location: LCCOMB_X43_Y19_N22
\RegFile_inst|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux20~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux20~0_combout\ & (\RegFile_inst|registers[3][11]~q\)) # (!\RegFile_inst|Mux20~0_combout\ & ((\RegFile_inst|registers[1][11]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][11]~q\,
	datac => \RegFile_inst|registers[1][11]~q\,
	datad => \RegFile_inst|Mux20~0_combout\,
	combout => \RegFile_inst|Mux20~1_combout\);

-- Location: LCCOMB_X40_Y23_N24
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\RegFile_inst|Mux19~1_combout\ & ((immediate(11) & (\Add3~21\ & VCC)) # (!immediate(11) & (!\Add3~21\)))) # (!\RegFile_inst|Mux19~1_combout\ & ((immediate(11) & (!\Add3~21\)) # (!immediate(11) & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((\RegFile_inst|Mux19~1_combout\ & (!immediate(11) & !\Add3~21\)) # (!\RegFile_inst|Mux19~1_combout\ & ((!\Add3~21\) # (!immediate(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux19~1_combout\,
	datab => immediate(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X46_Y23_N8
\bus_data_in~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~97_combout\ = (\bus_data_in[1]~66_combout\ & (((!\Equal2~0_combout\)))) # (!\bus_data_in[1]~66_combout\ & ((\Equal2~0_combout\ & ((\RegFile_inst|Mux52~4_combout\))) # (!\Equal2~0_combout\ & (immediate(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => immediate(11),
	datab => \bus_data_in[1]~66_combout\,
	datac => \RegFile_inst|Mux52~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \bus_data_in~97_combout\);

-- Location: LCCOMB_X43_Y22_N16
\RegFile_inst|registers[7][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][12]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[7][12]~feeder_combout\);

-- Location: FF_X43_Y22_N17
\RegFile_inst|registers[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][12]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][12]~q\);

-- Location: LCCOMB_X43_Y22_N30
\RegFile_inst|registers[5][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][12]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[5][12]~feeder_combout\);

-- Location: FF_X43_Y22_N31
\RegFile_inst|registers[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][12]~feeder_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][12]~q\);

-- Location: FF_X46_Y21_N13
\RegFile_inst|registers[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][12]~q\);

-- Location: FF_X46_Y21_N7
\RegFile_inst|registers[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][12]~q\);

-- Location: LCCOMB_X46_Y21_N6
\RegFile_inst|Mux51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][12]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][12]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[4][12]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux51~0_combout\);

-- Location: LCCOMB_X43_Y22_N14
\RegFile_inst|Mux51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux51~0_combout\ & (\RegFile_inst|registers[7][12]~q\)) # (!\RegFile_inst|Mux51~0_combout\ & ((\RegFile_inst|registers[5][12]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][12]~q\,
	datac => \RegFile_inst|registers[5][12]~q\,
	datad => \RegFile_inst|Mux51~0_combout\,
	combout => \RegFile_inst|Mux51~1_combout\);

-- Location: LCCOMB_X44_Y20_N26
\RegFile_inst|registers[3][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][12]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[3][12]~feeder_combout\);

-- Location: FF_X44_Y20_N27
\RegFile_inst|registers[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][12]~feeder_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][12]~q\);

-- Location: FF_X44_Y20_N29
\RegFile_inst|registers[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][12]~q\);

-- Location: FF_X43_Y20_N17
\RegFile_inst|registers[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][12]~q\);

-- Location: LCCOMB_X44_Y20_N0
\RegFile_inst|Mux51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][12]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[0][12]~q\,
	datac => \RegFile_inst|registers[1][12]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux51~2_combout\);

-- Location: LCCOMB_X44_Y22_N28
\RegFile_inst|Mux51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux51~2_combout\ & ((\RegFile_inst|registers[3][12]~q\))) # (!\RegFile_inst|Mux51~2_combout\ & (\RegFile_inst|registers[2][12]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][12]~q\,
	datab => \RegFile_inst|registers[3][12]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux51~2_combout\,
	combout => \RegFile_inst|Mux51~3_combout\);

-- Location: LCCOMB_X43_Y22_N8
\RegFile_inst|Mux51~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux51~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux51~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux51~1_combout\,
	datad => \RegFile_inst|Mux51~3_combout\,
	combout => \RegFile_inst|Mux51~4_combout\);

-- Location: LCCOMB_X42_Y23_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\RegFile_inst|Mux19~1_combout\ $ (\RegFile_inst|Mux51~4_combout\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\RegFile_inst|Mux19~1_combout\ & ((\RegFile_inst|Mux51~4_combout\) # (!\Add1~23\))) # (!\RegFile_inst|Mux19~1_combout\ & (\RegFile_inst|Mux51~4_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux19~1_combout\,
	datab => \RegFile_inst|Mux51~4_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X46_Y23_N14
\bus_data_in~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~98_combout\ = (\bus_data_in[1]~66_combout\ & ((\bus_data_in~97_combout\ & (\Add3~22_combout\)) # (!\bus_data_in~97_combout\ & ((\Add1~24_combout\))))) # (!\bus_data_in[1]~66_combout\ & (((\bus_data_in~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \bus_data_in[1]~66_combout\,
	datac => \bus_data_in~97_combout\,
	datad => \Add1~24_combout\,
	combout => \bus_data_in~98_combout\);

-- Location: FF_X46_Y23_N3
\bus_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[12]~3_combout\,
	asdata => \bus_data_in~98_combout\,
	sload => ALT_INV_opcode(1),
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(12));

-- Location: LCCOMB_X46_Y23_N10
\RegFile_inst|registers~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~16_combout\ = (!\clr~input_o\ & bus_data_in(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(12),
	combout => \RegFile_inst|registers~16_combout\);

-- Location: FF_X44_Y22_N31
\RegFile_inst|registers[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][12]~q\);

-- Location: LCCOMB_X43_Y20_N16
\RegFile_inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux19~0_combout\ = (rs_addr(1) & (rs_addr(0))) # (!rs_addr(1) & ((rs_addr(0) & (\RegFile_inst|registers[1][12]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][12]~q\,
	datad => \RegFile_inst|registers[0][12]~q\,
	combout => \RegFile_inst|Mux19~0_combout\);

-- Location: LCCOMB_X43_Y20_N10
\RegFile_inst|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux19~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux19~0_combout\ & ((\RegFile_inst|registers[3][12]~q\))) # (!\RegFile_inst|Mux19~0_combout\ & (\RegFile_inst|registers[2][12]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][12]~q\,
	datab => \RegFile_inst|registers[3][12]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|Mux19~0_combout\,
	combout => \RegFile_inst|Mux19~1_combout\);

-- Location: LCCOMB_X42_Y23_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\RegFile_inst|Mux18~1_combout\ & ((\RegFile_inst|Mux50~4_combout\ & (\Add1~25\ & VCC)) # (!\RegFile_inst|Mux50~4_combout\ & (!\Add1~25\)))) # (!\RegFile_inst|Mux18~1_combout\ & ((\RegFile_inst|Mux50~4_combout\ & (!\Add1~25\)) # 
-- (!\RegFile_inst|Mux50~4_combout\ & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\RegFile_inst|Mux18~1_combout\ & (!\RegFile_inst|Mux50~4_combout\ & !\Add1~25\)) # (!\RegFile_inst|Mux18~1_combout\ & ((!\Add1~25\) # (!\RegFile_inst|Mux50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux18~1_combout\,
	datab => \RegFile_inst|Mux50~4_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X40_Y23_N26
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\RegFile_inst|Mux18~1_combout\ & (\Add3~23\ $ (GND))) # (!\RegFile_inst|Mux18~1_combout\ & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\RegFile_inst|Mux18~1_combout\ & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux18~1_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X42_Y24_N16
\bus_data_in~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~99_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\) # ((\Add3~24_combout\)))) # (!\bus_data_in[23]~73_combout\ & (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux51~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux51~4_combout\,
	datad => \Add3~24_combout\,
	combout => \bus_data_in~99_combout\);

-- Location: LCCOMB_X42_Y24_N6
\bus_data_in~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~100_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~99_combout\ & (\RegFile_inst|Mux18~1_combout\)) # (!\bus_data_in~99_combout\ & ((\Add1~26_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux18~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~26_combout\,
	datad => \bus_data_in~99_combout\,
	combout => \bus_data_in~100_combout\);

-- Location: LCCOMB_X42_Y24_N22
\bus_data_in~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~145_combout\ = (\bus_data_in~100_combout\ & (((opcode(2)) # (opcode(1))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(2),
	datac => opcode(1),
	datad => \bus_data_in~100_combout\,
	combout => \bus_data_in~145_combout\);

-- Location: FF_X42_Y24_N23
\bus_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~145_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(13));

-- Location: LCCOMB_X45_Y21_N28
\RegFile_inst|registers~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~17_combout\ = (!\clr~input_o\ & bus_data_in(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(13),
	combout => \RegFile_inst|registers~17_combout\);

-- Location: FF_X41_Y19_N15
\RegFile_inst|registers[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][13]~q\);

-- Location: LCCOMB_X40_Y19_N6
\RegFile_inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux18~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][13]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[2][13]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|registers[0][13]~q\,
	combout => \RegFile_inst|Mux18~0_combout\);

-- Location: LCCOMB_X40_Y19_N4
\RegFile_inst|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux18~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux18~0_combout\ & (\RegFile_inst|registers[3][13]~q\)) # (!\RegFile_inst|Mux18~0_combout\ & ((\RegFile_inst|registers[1][13]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][13]~q\,
	datab => \RegFile_inst|registers[1][13]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|Mux18~0_combout\,
	combout => \RegFile_inst|Mux18~1_combout\);

-- Location: LCCOMB_X40_Y23_N28
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\RegFile_inst|Mux17~1_combout\ & (!\Add3~25\)) # (!\RegFile_inst|Mux17~1_combout\ & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\RegFile_inst|Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux17~1_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X42_Y23_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\RegFile_inst|Mux17~1_combout\ $ (\RegFile_inst|Mux49~4_combout\ $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\RegFile_inst|Mux17~1_combout\ & ((\RegFile_inst|Mux49~4_combout\) # (!\Add1~27\))) # (!\RegFile_inst|Mux17~1_combout\ & (\RegFile_inst|Mux49~4_combout\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux17~1_combout\,
	datab => \RegFile_inst|Mux49~4_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X41_Y24_N0
\bus_data_in~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~101_combout\ = (\bus_data_in[23]~73_combout\ & (((\bus_data_in[23]~72_combout\)))) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~28_combout\))) # (!\bus_data_in[23]~72_combout\ & 
-- (\RegFile_inst|Mux50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux50~4_combout\,
	datac => \Add1~28_combout\,
	datad => \bus_data_in[23]~72_combout\,
	combout => \bus_data_in~101_combout\);

-- Location: LCCOMB_X41_Y24_N2
\bus_data_in~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~102_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~101_combout\ & (\RegFile_inst|Mux17~1_combout\)) # (!\bus_data_in~101_combout\ & ((\Add3~26_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux17~1_combout\,
	datac => \Add3~26_combout\,
	datad => \bus_data_in~101_combout\,
	combout => \bus_data_in~102_combout\);

-- Location: LCCOMB_X41_Y24_N22
\bus_data_in~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~146_combout\ = (\bus_data_in~102_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~102_combout\,
	combout => \bus_data_in~146_combout\);

-- Location: FF_X41_Y24_N23
\bus_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~146_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(14));

-- Location: LCCOMB_X43_Y22_N18
\RegFile_inst|registers~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~18_combout\ = (!\clr~input_o\ & bus_data_in(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => bus_data_in(14),
	combout => \RegFile_inst|registers~18_combout\);

-- Location: FF_X44_Y20_N15
\RegFile_inst|registers[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][14]~q\);

-- Location: LCCOMB_X44_Y20_N6
\RegFile_inst|Mux49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][14]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][14]~q\,
	datab => \RegFile_inst|registers[1][14]~q\,
	datac => rt_addr(1),
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux49~2_combout\);

-- Location: LCCOMB_X44_Y20_N4
\RegFile_inst|Mux49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux49~2_combout\ & (\RegFile_inst|registers[3][14]~q\)) # (!\RegFile_inst|Mux49~2_combout\ & ((\RegFile_inst|registers[2][14]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux49~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][14]~q\,
	datab => \RegFile_inst|registers[2][14]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux49~2_combout\,
	combout => \RegFile_inst|Mux49~3_combout\);

-- Location: FF_X43_Y22_N29
\RegFile_inst|registers[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][14]~q\);

-- Location: FF_X46_Y21_N21
\RegFile_inst|registers[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][14]~q\);

-- Location: FF_X46_Y21_N15
\RegFile_inst|registers[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][14]~q\);

-- Location: LCCOMB_X46_Y21_N14
\RegFile_inst|Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][14]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][14]~q\,
	datac => \RegFile_inst|registers[4][14]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux49~0_combout\);

-- Location: FF_X43_Y22_N19
\RegFile_inst|registers[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~18_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][14]~q\);

-- Location: LCCOMB_X43_Y22_N6
\RegFile_inst|Mux49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux49~0_combout\ & (\RegFile_inst|registers[7][14]~q\)) # (!\RegFile_inst|Mux49~0_combout\ & ((\RegFile_inst|registers[5][14]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][14]~q\,
	datac => \RegFile_inst|Mux49~0_combout\,
	datad => \RegFile_inst|registers[5][14]~q\,
	combout => \RegFile_inst|Mux49~1_combout\);

-- Location: LCCOMB_X43_Y22_N0
\RegFile_inst|Mux49~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux49~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux49~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux49~3_combout\,
	datad => \RegFile_inst|Mux49~1_combout\,
	combout => \RegFile_inst|Mux49~4_combout\);

-- Location: LCCOMB_X40_Y23_N30
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\RegFile_inst|Mux16~1_combout\ & (\Add3~27\ $ (GND))) # (!\RegFile_inst|Mux16~1_combout\ & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((\RegFile_inst|Mux16~1_combout\ & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux16~1_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X41_Y24_N4
\bus_data_in~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~103_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\)))) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~28_combout\))) # (!\bus_data_in[23]~73_combout\ & 
-- (\RegFile_inst|Mux49~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux49~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add3~28_combout\,
	combout => \bus_data_in~103_combout\);

-- Location: FF_X45_Y21_N21
\RegFile_inst|registers[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][15]~q\);

-- Location: FF_X45_Y21_N11
\RegFile_inst|registers[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][15]~q\);

-- Location: FF_X46_Y21_N17
\RegFile_inst|registers[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][15]~q\);

-- Location: FF_X46_Y21_N19
\RegFile_inst|registers[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][15]~q\);

-- Location: LCCOMB_X46_Y21_N18
\RegFile_inst|Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][15]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][15]~q\,
	datac => \RegFile_inst|registers[4][15]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux48~0_combout\);

-- Location: LCCOMB_X45_Y21_N10
\RegFile_inst|Mux48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux48~0_combout\ & (\RegFile_inst|registers[7][15]~q\)) # (!\RegFile_inst|Mux48~0_combout\ & ((\RegFile_inst|registers[5][15]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][15]~q\,
	datac => \RegFile_inst|registers[5][15]~q\,
	datad => \RegFile_inst|Mux48~0_combout\,
	combout => \RegFile_inst|Mux48~1_combout\);

-- Location: FF_X42_Y19_N9
\RegFile_inst|registers[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][15]~q\);

-- Location: FF_X43_Y19_N7
\RegFile_inst|registers[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][15]~q\);

-- Location: LCCOMB_X43_Y19_N6
\RegFile_inst|Mux48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][15]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[0][15]~q\,
	datad => \RegFile_inst|registers[1][15]~q\,
	combout => \RegFile_inst|Mux48~2_combout\);

-- Location: FF_X41_Y19_N5
\RegFile_inst|registers[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][15]~q\);

-- Location: LCCOMB_X41_Y19_N4
\RegFile_inst|Mux48~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~3_combout\ = (\RegFile_inst|Mux48~2_combout\ & (((\RegFile_inst|registers[3][15]~q\) # (!rt_addr(1))))) # (!\RegFile_inst|Mux48~2_combout\ & (\RegFile_inst|registers[2][15]~q\ & ((rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][15]~q\,
	datab => \RegFile_inst|Mux48~2_combout\,
	datac => \RegFile_inst|registers[3][15]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux48~3_combout\);

-- Location: LCCOMB_X41_Y19_N10
\RegFile_inst|Mux48~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux48~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux48~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux48~1_combout\,
	datac => \RegFile_inst|Mux48~3_combout\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux48~4_combout\);

-- Location: LCCOMB_X42_Y23_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\RegFile_inst|Mux48~4_combout\ & ((\RegFile_inst|Mux16~1_combout\ & (\Add1~29\ & VCC)) # (!\RegFile_inst|Mux16~1_combout\ & (!\Add1~29\)))) # (!\RegFile_inst|Mux48~4_combout\ & ((\RegFile_inst|Mux16~1_combout\ & (!\Add1~29\)) # 
-- (!\RegFile_inst|Mux16~1_combout\ & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\RegFile_inst|Mux48~4_combout\ & (!\RegFile_inst|Mux16~1_combout\ & !\Add1~29\)) # (!\RegFile_inst|Mux48~4_combout\ & ((!\Add1~29\) # (!\RegFile_inst|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux48~4_combout\,
	datab => \RegFile_inst|Mux16~1_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X41_Y24_N18
\bus_data_in~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~104_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~103_combout\ & (\RegFile_inst|Mux16~1_combout\)) # (!\bus_data_in~103_combout\ & ((\Add1~30_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux16~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in~103_combout\,
	datad => \Add1~30_combout\,
	combout => \bus_data_in~104_combout\);

-- Location: LCCOMB_X41_Y24_N24
\bus_data_in~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~147_combout\ = (\bus_data_in~104_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~104_combout\,
	combout => \bus_data_in~147_combout\);

-- Location: FF_X41_Y24_N25
\bus_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~147_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(15));

-- Location: LCCOMB_X45_Y20_N18
\RegFile_inst|registers~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~19_combout\ = (bus_data_in(15) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(15),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~19_combout\);

-- Location: FF_X40_Y19_N15
\RegFile_inst|registers[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][15]~q\);

-- Location: LCCOMB_X42_Y19_N8
\RegFile_inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux16~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & ((\RegFile_inst|registers[2][15]~q\))) # (!rs_addr(1) & (\RegFile_inst|registers[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][15]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[2][15]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux16~0_combout\);

-- Location: LCCOMB_X41_Y19_N22
\RegFile_inst|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux16~1_combout\ = (\RegFile_inst|Mux16~0_combout\ & (((\RegFile_inst|registers[3][15]~q\) # (!rs_addr(0))))) # (!\RegFile_inst|Mux16~0_combout\ & (\RegFile_inst|registers[1][15]~q\ & ((rs_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][15]~q\,
	datab => \RegFile_inst|registers[3][15]~q\,
	datac => \RegFile_inst|Mux16~0_combout\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux16~1_combout\);

-- Location: LCCOMB_X40_Y22_N0
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\RegFile_inst|Mux15~1_combout\ & (!\Add3~29\)) # (!\RegFile_inst|Mux15~1_combout\ & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!\RegFile_inst|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux15~1_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X42_Y22_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\RegFile_inst|Mux47~4_combout\ $ (\RegFile_inst|Mux15~1_combout\ $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\RegFile_inst|Mux47~4_combout\ & ((\RegFile_inst|Mux15~1_combout\) # (!\Add1~31\))) # (!\RegFile_inst|Mux47~4_combout\ & (\RegFile_inst|Mux15~1_combout\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux47~4_combout\,
	datab => \RegFile_inst|Mux15~1_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X41_Y23_N0
\bus_data_in~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~105_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\) # (\Add1~32_combout\)))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux48~4_combout\ & (!\bus_data_in[23]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux48~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add1~32_combout\,
	combout => \bus_data_in~105_combout\);

-- Location: LCCOMB_X41_Y23_N10
\bus_data_in~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~106_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~105_combout\ & (\RegFile_inst|Mux15~1_combout\)) # (!\bus_data_in~105_combout\ & ((\Add3~30_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux15~1_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add3~30_combout\,
	datad => \bus_data_in~105_combout\,
	combout => \bus_data_in~106_combout\);

-- Location: LCCOMB_X41_Y23_N16
\bus_data_in~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~148_combout\ = (\bus_data_in~106_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~106_combout\,
	combout => \bus_data_in~148_combout\);

-- Location: FF_X41_Y23_N17
\bus_data_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~148_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(16));

-- Location: LCCOMB_X45_Y21_N0
\RegFile_inst|registers~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~20_combout\ = (!\clr~input_o\ & bus_data_in(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => bus_data_in(16),
	combout => \RegFile_inst|registers~20_combout\);

-- Location: FF_X45_Y21_N1
\RegFile_inst|registers[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~20_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][16]~q\);

-- Location: FF_X45_Y21_N31
\RegFile_inst|registers[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][16]~q\);

-- Location: FF_X46_Y21_N9
\RegFile_inst|registers[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][16]~q\);

-- Location: FF_X46_Y21_N3
\RegFile_inst|registers[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][16]~q\);

-- Location: LCCOMB_X46_Y21_N2
\RegFile_inst|Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][16]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][16]~q\,
	datac => \RegFile_inst|registers[4][16]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux47~0_combout\);

-- Location: LCCOMB_X45_Y21_N30
\RegFile_inst|Mux47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux47~0_combout\ & (\RegFile_inst|registers[7][16]~q\)) # (!\RegFile_inst|Mux47~0_combout\ & ((\RegFile_inst|registers[5][16]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][16]~q\,
	datac => \RegFile_inst|registers[5][16]~q\,
	datad => \RegFile_inst|Mux47~0_combout\,
	combout => \RegFile_inst|Mux47~1_combout\);

-- Location: LCCOMB_X44_Y20_N18
\RegFile_inst|Mux47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][16]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[0][16]~q\,
	datac => \RegFile_inst|registers[1][16]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux47~2_combout\);

-- Location: LCCOMB_X45_Y20_N16
\RegFile_inst|Mux47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux47~2_combout\ & ((\RegFile_inst|registers[3][16]~q\))) # (!\RegFile_inst|Mux47~2_combout\ & (\RegFile_inst|registers[2][16]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][16]~q\,
	datab => \RegFile_inst|registers[3][16]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux47~2_combout\,
	combout => \RegFile_inst|Mux47~3_combout\);

-- Location: LCCOMB_X45_Y20_N26
\RegFile_inst|Mux47~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux47~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux47~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux47~1_combout\,
	datad => \RegFile_inst|Mux47~3_combout\,
	combout => \RegFile_inst|Mux47~4_combout\);

-- Location: LCCOMB_X40_Y22_N2
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\RegFile_inst|Mux14~1_combout\ & (\Add3~31\ $ (GND))) # (!\RegFile_inst|Mux14~1_combout\ & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((\RegFile_inst|Mux14~1_combout\ & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux14~1_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X41_Y24_N8
\bus_data_in~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~107_combout\ = (\bus_data_in[23]~73_combout\ & (((\Add3~32_combout\) # (\bus_data_in[23]~72_combout\)))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux47~4_combout\ & ((!\bus_data_in[23]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux47~4_combout\,
	datac => \Add3~32_combout\,
	datad => \bus_data_in[23]~72_combout\,
	combout => \bus_data_in~107_combout\);

-- Location: LCCOMB_X45_Y19_N28
\RegFile_inst|registers[2][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][17]~feeder_combout\ = \RegFile_inst|registers~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~21_combout\,
	combout => \RegFile_inst|registers[2][17]~feeder_combout\);

-- Location: FF_X45_Y19_N29
\RegFile_inst|registers[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][17]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][17]~q\);

-- Location: FF_X44_Y20_N25
\RegFile_inst|registers[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][17]~q\);

-- Location: FF_X40_Y19_N9
\RegFile_inst|registers[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][17]~q\);

-- Location: LCCOMB_X44_Y20_N20
\RegFile_inst|Mux46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][17]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][17]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[1][17]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux46~2_combout\);

-- Location: LCCOMB_X44_Y20_N22
\RegFile_inst|Mux46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux46~2_combout\ & (\RegFile_inst|registers[3][17]~q\)) # (!\RegFile_inst|Mux46~2_combout\ & ((\RegFile_inst|registers[2][17]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[3][17]~q\,
	datac => \RegFile_inst|registers[2][17]~q\,
	datad => \RegFile_inst|Mux46~2_combout\,
	combout => \RegFile_inst|Mux46~3_combout\);

-- Location: FF_X45_Y21_N15
\RegFile_inst|registers[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][17]~q\);

-- Location: FF_X45_Y21_N17
\RegFile_inst|registers[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~21_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][17]~q\);

-- Location: FF_X46_Y21_N29
\RegFile_inst|registers[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][17]~q\);

-- Location: FF_X46_Y21_N11
\RegFile_inst|registers[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][17]~q\);

-- Location: LCCOMB_X46_Y21_N10
\RegFile_inst|Mux46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][17]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][17]~q\,
	datac => \RegFile_inst|registers[4][17]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux46~0_combout\);

-- Location: LCCOMB_X46_Y21_N0
\RegFile_inst|Mux46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux46~0_combout\ & ((\RegFile_inst|registers[7][17]~q\))) # (!\RegFile_inst|Mux46~0_combout\ & (\RegFile_inst|registers[5][17]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][17]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[7][17]~q\,
	datad => \RegFile_inst|Mux46~0_combout\,
	combout => \RegFile_inst|Mux46~1_combout\);

-- Location: LCCOMB_X43_Y22_N22
\RegFile_inst|Mux46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux46~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux46~3_combout\,
	datad => \RegFile_inst|Mux46~1_combout\,
	combout => \RegFile_inst|Mux46~4_combout\);

-- Location: LCCOMB_X42_Y22_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\RegFile_inst|Mux14~1_combout\ & ((\RegFile_inst|Mux46~4_combout\ & (\Add1~33\ & VCC)) # (!\RegFile_inst|Mux46~4_combout\ & (!\Add1~33\)))) # (!\RegFile_inst|Mux14~1_combout\ & ((\RegFile_inst|Mux46~4_combout\ & (!\Add1~33\)) # 
-- (!\RegFile_inst|Mux46~4_combout\ & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\RegFile_inst|Mux14~1_combout\ & (!\RegFile_inst|Mux46~4_combout\ & !\Add1~33\)) # (!\RegFile_inst|Mux14~1_combout\ & ((!\Add1~33\) # (!\RegFile_inst|Mux46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux14~1_combout\,
	datab => \RegFile_inst|Mux46~4_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X41_Y24_N10
\bus_data_in~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~108_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~107_combout\ & (\RegFile_inst|Mux14~1_combout\)) # (!\bus_data_in~107_combout\ & ((\Add1~34_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux14~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in~107_combout\,
	datad => \Add1~34_combout\,
	combout => \bus_data_in~108_combout\);

-- Location: LCCOMB_X41_Y24_N30
\bus_data_in~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~149_combout\ = (\bus_data_in~108_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~108_combout\,
	combout => \bus_data_in~149_combout\);

-- Location: FF_X41_Y24_N31
\bus_data_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~149_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(17));

-- Location: LCCOMB_X45_Y21_N16
\RegFile_inst|registers~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~21_combout\ = (!\clr~input_o\ & bus_data_in(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(17),
	combout => \RegFile_inst|registers~21_combout\);

-- Location: FF_X44_Y20_N3
\RegFile_inst|registers[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][17]~q\);

-- Location: LCCOMB_X45_Y19_N2
\RegFile_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux14~0_combout\ = (rs_addr(1) & ((\RegFile_inst|registers[2][17]~q\) # ((rs_addr(0))))) # (!rs_addr(1) & (((\RegFile_inst|registers[0][17]~q\ & !rs_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(1),
	datab => \RegFile_inst|registers[2][17]~q\,
	datac => \RegFile_inst|registers[0][17]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux14~0_combout\);

-- Location: LCCOMB_X40_Y19_N8
\RegFile_inst|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux14~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux14~0_combout\ & (\RegFile_inst|registers[3][17]~q\)) # (!\RegFile_inst|Mux14~0_combout\ & ((\RegFile_inst|registers[1][17]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][17]~q\,
	datac => \RegFile_inst|registers[1][17]~q\,
	datad => \RegFile_inst|Mux14~0_combout\,
	combout => \RegFile_inst|Mux14~1_combout\);

-- Location: LCCOMB_X40_Y22_N4
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\RegFile_inst|Mux13~1_combout\ & (!\Add3~33\)) # (!\RegFile_inst|Mux13~1_combout\ & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!\RegFile_inst|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux13~1_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X37_Y20_N8
\RegFile_inst|registers[7][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][18]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[7][18]~feeder_combout\);

-- Location: FF_X37_Y20_N9
\RegFile_inst|registers[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][18]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][18]~q\);

-- Location: FF_X38_Y20_N31
\RegFile_inst|registers[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][18]~q\);

-- Location: FF_X39_Y20_N17
\RegFile_inst|registers[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][18]~q\);

-- Location: LCCOMB_X38_Y20_N30
\RegFile_inst|Mux45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~0_combout\ = (rt_addr(0) & (rt_addr(1))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][18]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][18]~q\,
	datad => \RegFile_inst|registers[6][18]~q\,
	combout => \RegFile_inst|Mux45~0_combout\);

-- Location: FF_X38_Y20_N5
\RegFile_inst|registers[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][18]~q\);

-- Location: LCCOMB_X38_Y20_N24
\RegFile_inst|Mux45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux45~0_combout\ & (\RegFile_inst|registers[7][18]~q\)) # (!\RegFile_inst|Mux45~0_combout\ & ((\RegFile_inst|registers[5][18]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][18]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|Mux45~0_combout\,
	datad => \RegFile_inst|registers[5][18]~q\,
	combout => \RegFile_inst|Mux45~1_combout\);

-- Location: LCCOMB_X40_Y24_N12
\RegFile_inst|registers[2][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][18]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[2][18]~feeder_combout\);

-- Location: FF_X40_Y24_N13
\RegFile_inst|registers[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][18]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][18]~q\);

-- Location: FF_X41_Y21_N5
\RegFile_inst|registers[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][18]~q\);

-- Location: FF_X41_Y21_N23
\RegFile_inst|registers[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][18]~q\);

-- Location: LCCOMB_X41_Y21_N22
\RegFile_inst|Mux45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~2_combout\ = (rt_addr(0) & ((\RegFile_inst|registers[1][18]~q\) # ((rt_addr(1))))) # (!rt_addr(0) & (((\RegFile_inst|registers[0][18]~q\ & !rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[1][18]~q\,
	datac => \RegFile_inst|registers[0][18]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux45~2_combout\);

-- Location: LCCOMB_X40_Y24_N14
\RegFile_inst|Mux45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux45~2_combout\ & (\RegFile_inst|registers[3][18]~q\)) # (!\RegFile_inst|Mux45~2_combout\ & ((\RegFile_inst|registers[2][18]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][18]~q\,
	datab => \RegFile_inst|registers[2][18]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|Mux45~2_combout\,
	combout => \RegFile_inst|Mux45~3_combout\);

-- Location: LCCOMB_X41_Y20_N16
\RegFile_inst|Mux45~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux45~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux45~1_combout\,
	datad => \RegFile_inst|Mux45~3_combout\,
	combout => \RegFile_inst|Mux45~4_combout\);

-- Location: LCCOMB_X42_Y22_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\RegFile_inst|Mux13~1_combout\ $ (\RegFile_inst|Mux45~4_combout\ $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\RegFile_inst|Mux13~1_combout\ & ((\RegFile_inst|Mux45~4_combout\) # (!\Add1~35\))) # (!\RegFile_inst|Mux13~1_combout\ & (\RegFile_inst|Mux45~4_combout\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux13~1_combout\,
	datab => \RegFile_inst|Mux45~4_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X41_Y22_N16
\bus_data_in~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~109_combout\ = (\bus_data_in[23]~73_combout\ & (\bus_data_in[23]~72_combout\)) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~36_combout\))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux46~4_combout\,
	datad => \Add1~36_combout\,
	combout => \bus_data_in~109_combout\);

-- Location: LCCOMB_X41_Y22_N10
\bus_data_in~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~110_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~109_combout\ & (\RegFile_inst|Mux13~1_combout\)) # (!\bus_data_in~109_combout\ & ((\Add3~34_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux13~1_combout\,
	datab => \Add3~34_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \bus_data_in~109_combout\,
	combout => \bus_data_in~110_combout\);

-- Location: LCCOMB_X41_Y22_N4
\bus_data_in~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~150_combout\ = (\bus_data_in~110_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~110_combout\,
	datab => opcode(1),
	datac => opcode(2),
	datad => opcode(0),
	combout => \bus_data_in~150_combout\);

-- Location: FF_X41_Y22_N5
\bus_data_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~150_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(18));

-- Location: LCCOMB_X40_Y24_N20
\RegFile_inst|registers~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~22_combout\ = (!\clr~input_o\ & bus_data_in(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(18),
	combout => \RegFile_inst|registers~22_combout\);

-- Location: LCCOMB_X40_Y24_N10
\RegFile_inst|registers[3][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][18]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[3][18]~feeder_combout\);

-- Location: FF_X40_Y24_N11
\RegFile_inst|registers[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][18]~feeder_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][18]~q\);

-- Location: LCCOMB_X41_Y21_N4
\RegFile_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux13~0_combout\ = (rs_addr(1) & (((rs_addr(0))))) # (!rs_addr(1) & ((rs_addr(0) & ((\RegFile_inst|registers[1][18]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][18]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[1][18]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux13~0_combout\);

-- Location: LCCOMB_X40_Y24_N4
\RegFile_inst|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux13~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux13~0_combout\ & (\RegFile_inst|registers[3][18]~q\)) # (!\RegFile_inst|Mux13~0_combout\ & ((\RegFile_inst|registers[2][18]~q\))))) # (!rs_addr(1) & (((\RegFile_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][18]~q\,
	datab => \RegFile_inst|registers[2][18]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|Mux13~0_combout\,
	combout => \RegFile_inst|Mux13~1_combout\);

-- Location: LCCOMB_X42_Y22_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\RegFile_inst|Mux12~1_combout\ & ((\RegFile_inst|Mux44~4_combout\ & (\Add1~37\ & VCC)) # (!\RegFile_inst|Mux44~4_combout\ & (!\Add1~37\)))) # (!\RegFile_inst|Mux12~1_combout\ & ((\RegFile_inst|Mux44~4_combout\ & (!\Add1~37\)) # 
-- (!\RegFile_inst|Mux44~4_combout\ & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\RegFile_inst|Mux12~1_combout\ & (!\RegFile_inst|Mux44~4_combout\ & !\Add1~37\)) # (!\RegFile_inst|Mux12~1_combout\ & ((!\Add1~37\) # (!\RegFile_inst|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux12~1_combout\,
	datab => \RegFile_inst|Mux44~4_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X40_Y22_N6
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (\RegFile_inst|Mux12~1_combout\ & (\Add3~35\ $ (GND))) # (!\RegFile_inst|Mux12~1_combout\ & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((\RegFile_inst|Mux12~1_combout\ & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux12~1_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X41_Y24_N12
\bus_data_in~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~111_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\) # ((\Add3~36_combout\)))) # (!\bus_data_in[23]~73_combout\ & (!\bus_data_in[23]~72_combout\ & ((\RegFile_inst|Mux45~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add3~36_combout\,
	datad => \RegFile_inst|Mux45~4_combout\,
	combout => \bus_data_in~111_combout\);

-- Location: LCCOMB_X41_Y24_N14
\bus_data_in~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~112_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~111_combout\ & ((\RegFile_inst|Mux12~1_combout\))) # (!\bus_data_in~111_combout\ & (\Add1~38_combout\)))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux12~1_combout\,
	datad => \bus_data_in~111_combout\,
	combout => \bus_data_in~112_combout\);

-- Location: LCCOMB_X41_Y24_N16
\bus_data_in~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~151_combout\ = (\bus_data_in~112_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => \bus_data_in~112_combout\,
	datad => opcode(2),
	combout => \bus_data_in~151_combout\);

-- Location: FF_X41_Y24_N17
\bus_data_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~151_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(19));

-- Location: LCCOMB_X43_Y22_N28
\RegFile_inst|registers~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~23_combout\ = (bus_data_in(19) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bus_data_in(19),
	datab => \clr~input_o\,
	combout => \RegFile_inst|registers~23_combout\);

-- Location: FF_X42_Y21_N17
\RegFile_inst|registers[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][19]~q\);

-- Location: LCCOMB_X42_Y21_N2
\RegFile_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux12~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][19]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][19]~q\,
	datab => \RegFile_inst|registers[0][19]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux12~0_combout\);

-- Location: LCCOMB_X41_Y21_N28
\RegFile_inst|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux12~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux12~0_combout\ & (\RegFile_inst|registers[3][19]~q\)) # (!\RegFile_inst|Mux12~0_combout\ & ((\RegFile_inst|registers[1][19]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][19]~q\,
	datac => \RegFile_inst|registers[1][19]~q\,
	datad => \RegFile_inst|Mux12~0_combout\,
	combout => \RegFile_inst|Mux12~1_combout\);

-- Location: LCCOMB_X40_Y22_N8
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\RegFile_inst|Mux11~1_combout\ & (!\Add3~37\)) # (!\RegFile_inst|Mux11~1_combout\ & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!\RegFile_inst|Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux11~1_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X40_Y21_N3
\RegFile_inst|registers[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][20]~q\);

-- Location: LCCOMB_X39_Y21_N16
\RegFile_inst|registers[2][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][20]~feeder_combout\ = \RegFile_inst|registers~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~24_combout\,
	combout => \RegFile_inst|registers[2][20]~feeder_combout\);

-- Location: FF_X39_Y21_N17
\RegFile_inst|registers[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][20]~feeder_combout\,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][20]~q\);

-- Location: FF_X41_Y21_N17
\RegFile_inst|registers[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][20]~q\);

-- Location: LCCOMB_X41_Y21_N2
\RegFile_inst|Mux43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~2_combout\ = (rt_addr(0) & ((\RegFile_inst|registers[1][20]~q\) # ((rt_addr(1))))) # (!rt_addr(0) & (((\RegFile_inst|registers[0][20]~q\ & !rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[1][20]~q\,
	datac => \RegFile_inst|registers[0][20]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux43~2_combout\);

-- Location: LCCOMB_X40_Y21_N8
\RegFile_inst|Mux43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux43~2_combout\ & (\RegFile_inst|registers[3][20]~q\)) # (!\RegFile_inst|Mux43~2_combout\ & ((\RegFile_inst|registers[2][20]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[3][20]~q\,
	datac => \RegFile_inst|registers[2][20]~q\,
	datad => \RegFile_inst|Mux43~2_combout\,
	combout => \RegFile_inst|Mux43~3_combout\);

-- Location: FF_X45_Y21_N3
\RegFile_inst|registers[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][20]~q\);

-- Location: FF_X45_Y21_N13
\RegFile_inst|registers[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~24_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][20]~q\);

-- Location: FF_X40_Y21_N13
\RegFile_inst|registers[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][20]~q\);

-- Location: FF_X42_Y21_N9
\RegFile_inst|registers[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][20]~q\);

-- Location: LCCOMB_X40_Y21_N14
\RegFile_inst|Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~0_combout\ = (rt_addr(1) & (((\RegFile_inst|registers[6][20]~q\) # (rt_addr(0))))) # (!rt_addr(1) & (\RegFile_inst|registers[4][20]~q\ & ((!rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][20]~q\,
	datab => \RegFile_inst|registers[6][20]~q\,
	datac => rt_addr(1),
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux43~0_combout\);

-- Location: LCCOMB_X41_Y21_N6
\RegFile_inst|Mux43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux43~0_combout\ & ((\RegFile_inst|registers[7][20]~q\))) # (!\RegFile_inst|Mux43~0_combout\ & (\RegFile_inst|registers[5][20]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[5][20]~q\,
	datac => \RegFile_inst|registers[7][20]~q\,
	datad => \RegFile_inst|Mux43~0_combout\,
	combout => \RegFile_inst|Mux43~1_combout\);

-- Location: LCCOMB_X41_Y21_N10
\RegFile_inst|Mux43~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux43~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux43~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux43~3_combout\,
	datab => rt_addr(2),
	datad => \RegFile_inst|Mux43~1_combout\,
	combout => \RegFile_inst|Mux43~4_combout\);

-- Location: LCCOMB_X42_Y22_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\RegFile_inst|Mux43~4_combout\ $ (\RegFile_inst|Mux11~1_combout\ $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\RegFile_inst|Mux43~4_combout\ & ((\RegFile_inst|Mux11~1_combout\) # (!\Add1~39\))) # (!\RegFile_inst|Mux43~4_combout\ & (\RegFile_inst|Mux11~1_combout\ & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux43~4_combout\,
	datab => \RegFile_inst|Mux11~1_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X41_Y22_N24
\bus_data_in~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~113_combout\ = (\bus_data_in[23]~73_combout\ & (((\bus_data_in[23]~72_combout\)))) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~40_combout\))) # (!\bus_data_in[23]~72_combout\ & 
-- (\RegFile_inst|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux44~4_combout\,
	datac => \Add1~40_combout\,
	datad => \bus_data_in[23]~72_combout\,
	combout => \bus_data_in~113_combout\);

-- Location: LCCOMB_X41_Y22_N2
\bus_data_in~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~114_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~113_combout\ & ((\RegFile_inst|Mux11~1_combout\))) # (!\bus_data_in~113_combout\ & (\Add3~38_combout\)))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \RegFile_inst|Mux11~1_combout\,
	datad => \bus_data_in~113_combout\,
	combout => \bus_data_in~114_combout\);

-- Location: LCCOMB_X41_Y22_N30
\bus_data_in~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~152_combout\ = (\bus_data_in~114_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~114_combout\,
	combout => \bus_data_in~152_combout\);

-- Location: FF_X41_Y22_N31
\bus_data_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~152_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(20));

-- Location: LCCOMB_X45_Y21_N12
\RegFile_inst|registers~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~24_combout\ = (!\clr~input_o\ & bus_data_in(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => bus_data_in(20),
	combout => \RegFile_inst|registers~24_combout\);

-- Location: FF_X41_Y21_N3
\RegFile_inst|registers[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][20]~q\);

-- Location: LCCOMB_X41_Y21_N16
\RegFile_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux11~0_combout\ = (rs_addr(0) & (((\RegFile_inst|registers[1][20]~q\) # (rs_addr(1))))) # (!rs_addr(0) & (\RegFile_inst|registers[0][20]~q\ & ((!rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][20]~q\,
	datac => \RegFile_inst|registers[1][20]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux11~0_combout\);

-- Location: LCCOMB_X41_Y21_N0
\RegFile_inst|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux11~1_combout\ = (\RegFile_inst|Mux11~0_combout\ & (((\RegFile_inst|registers[3][20]~q\) # (!rs_addr(1))))) # (!\RegFile_inst|Mux11~0_combout\ & (\RegFile_inst|registers[2][20]~q\ & ((rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux11~0_combout\,
	datab => \RegFile_inst|registers[2][20]~q\,
	datac => \RegFile_inst|registers[3][20]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux11~1_combout\);

-- Location: LCCOMB_X40_Y22_N10
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\RegFile_inst|Mux10~1_combout\ & (\Add3~39\ $ (GND))) # (!\RegFile_inst|Mux10~1_combout\ & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((\RegFile_inst|Mux10~1_combout\ & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux10~1_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X43_Y22_N4
\bus_data_in~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~115_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\) # ((\Add3~40_combout\)))) # (!\bus_data_in[23]~73_combout\ & (!\bus_data_in[23]~72_combout\ & ((\RegFile_inst|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add3~40_combout\,
	datad => \RegFile_inst|Mux43~4_combout\,
	combout => \bus_data_in~115_combout\);

-- Location: FF_X39_Y20_N31
\RegFile_inst|registers[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][21]~q\);

-- Location: FF_X43_Y20_N9
\RegFile_inst|registers[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][21]~q\);

-- Location: FF_X42_Y20_N21
\RegFile_inst|registers[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][21]~q\);

-- Location: LCCOMB_X42_Y20_N20
\RegFile_inst|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][21]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][21]~q\,
	datac => \RegFile_inst|registers[4][21]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux42~0_combout\);

-- Location: LCCOMB_X38_Y21_N30
\RegFile_inst|registers[7][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][21]~feeder_combout\ = \RegFile_inst|registers~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~25_combout\,
	combout => \RegFile_inst|registers[7][21]~feeder_combout\);

-- Location: FF_X38_Y21_N31
\RegFile_inst|registers[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][21]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][21]~q\);

-- Location: LCCOMB_X41_Y20_N18
\RegFile_inst|Mux42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux42~0_combout\ & ((\RegFile_inst|registers[7][21]~q\))) # (!\RegFile_inst|Mux42~0_combout\ & (\RegFile_inst|registers[5][21]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[5][21]~q\,
	datac => \RegFile_inst|Mux42~0_combout\,
	datad => \RegFile_inst|registers[7][21]~q\,
	combout => \RegFile_inst|Mux42~1_combout\);

-- Location: FF_X41_Y21_N25
\RegFile_inst|registers[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][21]~q\);

-- Location: FF_X41_Y21_N31
\RegFile_inst|registers[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][21]~q\);

-- Location: LCCOMB_X40_Y21_N30
\RegFile_inst|Mux42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][21]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[0][21]~q\,
	datac => \RegFile_inst|registers[1][21]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux42~2_combout\);

-- Location: FF_X43_Y21_N27
\RegFile_inst|registers[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][21]~q\);

-- Location: LCCOMB_X40_Y21_N28
\RegFile_inst|Mux42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux42~2_combout\ & (\RegFile_inst|registers[3][21]~q\)) # (!\RegFile_inst|Mux42~2_combout\ & ((\RegFile_inst|registers[2][21]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[3][21]~q\,
	datac => \RegFile_inst|Mux42~2_combout\,
	datad => \RegFile_inst|registers[2][21]~q\,
	combout => \RegFile_inst|Mux42~3_combout\);

-- Location: LCCOMB_X41_Y21_N24
\RegFile_inst|Mux42~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux42~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux42~1_combout\,
	datab => rt_addr(2),
	datad => \RegFile_inst|Mux42~3_combout\,
	combout => \RegFile_inst|Mux42~4_combout\);

-- Location: LCCOMB_X42_Y22_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\RegFile_inst|Mux42~4_combout\ & ((\RegFile_inst|Mux10~1_combout\ & (\Add1~41\ & VCC)) # (!\RegFile_inst|Mux10~1_combout\ & (!\Add1~41\)))) # (!\RegFile_inst|Mux42~4_combout\ & ((\RegFile_inst|Mux10~1_combout\ & (!\Add1~41\)) # 
-- (!\RegFile_inst|Mux10~1_combout\ & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\RegFile_inst|Mux42~4_combout\ & (!\RegFile_inst|Mux10~1_combout\ & !\Add1~41\)) # (!\RegFile_inst|Mux42~4_combout\ & ((!\Add1~41\) # (!\RegFile_inst|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux42~4_combout\,
	datab => \RegFile_inst|Mux10~1_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X43_Y22_N2
\bus_data_in~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~116_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~115_combout\ & (\RegFile_inst|Mux10~1_combout\)) # (!\bus_data_in~115_combout\ & ((\Add1~42_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux10~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in~115_combout\,
	datad => \Add1~42_combout\,
	combout => \bus_data_in~116_combout\);

-- Location: LCCOMB_X44_Y22_N16
\bus_data_in~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~153_combout\ = (\bus_data_in~116_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~116_combout\,
	combout => \bus_data_in~153_combout\);

-- Location: FF_X44_Y22_N17
\bus_data_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~153_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(21));

-- Location: LCCOMB_X44_Y22_N18
\RegFile_inst|registers~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~25_combout\ = (!\clr~input_o\ & bus_data_in(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(21),
	combout => \RegFile_inst|registers~25_combout\);

-- Location: FF_X40_Y21_N5
\RegFile_inst|registers[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][21]~q\);

-- Location: LCCOMB_X43_Y21_N26
\RegFile_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux10~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & ((\RegFile_inst|registers[2][21]~q\))) # (!rs_addr(1) & (\RegFile_inst|registers[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][21]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[2][21]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux10~0_combout\);

-- Location: LCCOMB_X41_Y21_N30
\RegFile_inst|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux10~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux10~0_combout\ & (\RegFile_inst|registers[3][21]~q\)) # (!\RegFile_inst|Mux10~0_combout\ & ((\RegFile_inst|registers[1][21]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][21]~q\,
	datac => \RegFile_inst|registers[1][21]~q\,
	datad => \RegFile_inst|Mux10~0_combout\,
	combout => \RegFile_inst|Mux10~1_combout\);

-- Location: LCCOMB_X40_Y22_N12
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\RegFile_inst|Mux9~1_combout\ & (!\Add3~41\)) # (!\RegFile_inst|Mux9~1_combout\ & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!\RegFile_inst|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux9~1_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X37_Y20_N14
\RegFile_inst|registers[7][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][22]~feeder_combout\ = \RegFile_inst|registers~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~26_combout\,
	combout => \RegFile_inst|registers[7][22]~feeder_combout\);

-- Location: FF_X37_Y20_N15
\RegFile_inst|registers[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][22]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][22]~q\);

-- Location: FF_X38_Y20_N27
\RegFile_inst|registers[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][22]~q\);

-- Location: FF_X38_Y20_N17
\RegFile_inst|registers[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][22]~q\);

-- Location: FF_X39_Y20_N29
\RegFile_inst|registers[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][22]~q\);

-- Location: LCCOMB_X38_Y20_N16
\RegFile_inst|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~0_combout\ = (rt_addr(0) & (rt_addr(1))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][22]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[4][22]~q\,
	datad => \RegFile_inst|registers[6][22]~q\,
	combout => \RegFile_inst|Mux41~0_combout\);

-- Location: LCCOMB_X38_Y20_N26
\RegFile_inst|Mux41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux41~0_combout\ & (\RegFile_inst|registers[7][22]~q\)) # (!\RegFile_inst|Mux41~0_combout\ & ((\RegFile_inst|registers[5][22]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][22]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][22]~q\,
	datad => \RegFile_inst|Mux41~0_combout\,
	combout => \RegFile_inst|Mux41~1_combout\);

-- Location: FF_X41_Y19_N3
\RegFile_inst|registers[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][22]~q\);

-- Location: FF_X41_Y19_N9
\RegFile_inst|registers[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][22]~q\);

-- Location: FF_X41_Y21_N9
\RegFile_inst|registers[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][22]~q\);

-- Location: LCCOMB_X41_Y21_N8
\RegFile_inst|Mux41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][22]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][22]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][22]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux41~2_combout\);

-- Location: LCCOMB_X41_Y19_N8
\RegFile_inst|Mux41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux41~2_combout\ & (\RegFile_inst|registers[3][22]~q\)) # (!\RegFile_inst|Mux41~2_combout\ & ((\RegFile_inst|registers[2][22]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[3][22]~q\,
	datac => \RegFile_inst|registers[2][22]~q\,
	datad => \RegFile_inst|Mux41~2_combout\,
	combout => \RegFile_inst|Mux41~3_combout\);

-- Location: LCCOMB_X38_Y20_N22
\RegFile_inst|Mux41~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux41~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux41~1_combout\,
	datad => \RegFile_inst|Mux41~3_combout\,
	combout => \RegFile_inst|Mux41~4_combout\);

-- Location: LCCOMB_X42_Y22_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\RegFile_inst|Mux9~1_combout\ $ (\RegFile_inst|Mux41~4_combout\ $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\RegFile_inst|Mux9~1_combout\ & ((\RegFile_inst|Mux41~4_combout\) # (!\Add1~43\))) # (!\RegFile_inst|Mux9~1_combout\ & (\RegFile_inst|Mux41~4_combout\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux9~1_combout\,
	datab => \RegFile_inst|Mux41~4_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X41_Y23_N20
\bus_data_in~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~117_combout\ = (\bus_data_in[23]~73_combout\ & (\bus_data_in[23]~72_combout\)) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~44_combout\))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux42~4_combout\,
	datad => \Add1~44_combout\,
	combout => \bus_data_in~117_combout\);

-- Location: LCCOMB_X41_Y23_N2
\bus_data_in~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~118_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~117_combout\ & (\RegFile_inst|Mux9~1_combout\)) # (!\bus_data_in~117_combout\ & ((\Add3~42_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux9~1_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add3~42_combout\,
	datad => \bus_data_in~117_combout\,
	combout => \bus_data_in~118_combout\);

-- Location: LCCOMB_X41_Y23_N14
\bus_data_in~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~154_combout\ = (\bus_data_in~118_combout\ & ((opcode(1)) # ((opcode(2)) # (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \bus_data_in~118_combout\,
	combout => \bus_data_in~154_combout\);

-- Location: FF_X41_Y23_N15
\bus_data_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~154_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(22));

-- Location: LCCOMB_X39_Y23_N8
\RegFile_inst|registers~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~26_combout\ = (!\clr~input_o\ & bus_data_in(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(22),
	combout => \RegFile_inst|registers~26_combout\);

-- Location: FF_X41_Y21_N11
\RegFile_inst|registers[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][22]~q\);

-- Location: LCCOMB_X41_Y21_N26
\RegFile_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux9~0_combout\ = (rs_addr(1) & (((rs_addr(0))))) # (!rs_addr(1) & ((rs_addr(0) & (\RegFile_inst|registers[1][22]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][22]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][22]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux9~0_combout\);

-- Location: LCCOMB_X41_Y19_N2
\RegFile_inst|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux9~1_combout\ = (\RegFile_inst|Mux9~0_combout\ & (((\RegFile_inst|registers[3][22]~q\) # (!rs_addr(1))))) # (!\RegFile_inst|Mux9~0_combout\ & (\RegFile_inst|registers[2][22]~q\ & ((rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux9~0_combout\,
	datab => \RegFile_inst|registers[2][22]~q\,
	datac => \RegFile_inst|registers[3][22]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux9~1_combout\);

-- Location: LCCOMB_X42_Y22_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\RegFile_inst|Mux8~1_combout\ & ((\RegFile_inst|Mux40~4_combout\ & (\Add1~45\ & VCC)) # (!\RegFile_inst|Mux40~4_combout\ & (!\Add1~45\)))) # (!\RegFile_inst|Mux8~1_combout\ & ((\RegFile_inst|Mux40~4_combout\ & (!\Add1~45\)) # 
-- (!\RegFile_inst|Mux40~4_combout\ & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\RegFile_inst|Mux8~1_combout\ & (!\RegFile_inst|Mux40~4_combout\ & !\Add1~45\)) # (!\RegFile_inst|Mux8~1_combout\ & ((!\Add1~45\) # (!\RegFile_inst|Mux40~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux8~1_combout\,
	datab => \RegFile_inst|Mux40~4_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X40_Y22_N14
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\RegFile_inst|Mux8~1_combout\ & (\Add3~43\ $ (GND))) # (!\RegFile_inst|Mux8~1_combout\ & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((\RegFile_inst|Mux8~1_combout\ & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux8~1_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X39_Y22_N0
\bus_data_in~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~119_combout\ = (\bus_data_in[23]~72_combout\ & (\bus_data_in[23]~73_combout\)) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & (\Add3~44_combout\)) # (!\bus_data_in[23]~73_combout\ & ((\RegFile_inst|Mux41~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add3~44_combout\,
	datad => \RegFile_inst|Mux41~4_combout\,
	combout => \bus_data_in~119_combout\);

-- Location: LCCOMB_X39_Y22_N2
\bus_data_in~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~120_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~119_combout\ & (\RegFile_inst|Mux8~1_combout\)) # (!\bus_data_in~119_combout\ & ((\Add1~46_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \RegFile_inst|Mux8~1_combout\,
	datac => \Add1~46_combout\,
	datad => \bus_data_in~119_combout\,
	combout => \bus_data_in~120_combout\);

-- Location: LCCOMB_X39_Y22_N4
\bus_data_in~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~155_combout\ = (\bus_data_in~120_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~120_combout\,
	combout => \bus_data_in~155_combout\);

-- Location: FF_X39_Y22_N5
\bus_data_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~155_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(23));

-- Location: LCCOMB_X39_Y21_N24
\RegFile_inst|registers~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~27_combout\ = (!\clr~input_o\ & bus_data_in(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => bus_data_in(23),
	combout => \RegFile_inst|registers~27_combout\);

-- Location: FF_X39_Y21_N25
\RegFile_inst|registers[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~27_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][23]~q\);

-- Location: LCCOMB_X41_Y21_N20
\RegFile_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux8~0_combout\ = (rs_addr(1) & ((\RegFile_inst|registers[2][23]~q\) # ((rs_addr(0))))) # (!rs_addr(1) & (((\RegFile_inst|registers[0][23]~q\ & !rs_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][23]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][23]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux8~0_combout\);

-- Location: LCCOMB_X41_Y21_N12
\RegFile_inst|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux8~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux8~0_combout\ & (\RegFile_inst|registers[3][23]~q\)) # (!\RegFile_inst|Mux8~0_combout\ & ((\RegFile_inst|registers[1][23]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][23]~q\,
	datac => \RegFile_inst|registers[1][23]~q\,
	datad => \RegFile_inst|Mux8~0_combout\,
	combout => \RegFile_inst|Mux8~1_combout\);

-- Location: LCCOMB_X40_Y22_N16
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\RegFile_inst|Mux7~1_combout\ & (!\Add3~45\)) # (!\RegFile_inst|Mux7~1_combout\ & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!\RegFile_inst|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux7~1_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X38_Y21_N18
\RegFile_inst|registers[7][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][24]~feeder_combout\ = \RegFile_inst|registers~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~28_combout\,
	combout => \RegFile_inst|registers[7][24]~feeder_combout\);

-- Location: FF_X38_Y21_N19
\RegFile_inst|registers[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][24]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][24]~q\);

-- Location: FF_X38_Y20_N15
\RegFile_inst|registers[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][24]~q\);

-- Location: FF_X39_Y20_N5
\RegFile_inst|registers[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][24]~q\);

-- Location: FF_X38_Y20_N29
\RegFile_inst|registers[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][24]~q\);

-- Location: LCCOMB_X38_Y20_N6
\RegFile_inst|Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][24]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][24]~q\,
	datac => rt_addr(1),
	datad => \RegFile_inst|registers[4][24]~q\,
	combout => \RegFile_inst|Mux39~0_combout\);

-- Location: LCCOMB_X38_Y20_N14
\RegFile_inst|Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux39~0_combout\ & (\RegFile_inst|registers[7][24]~q\)) # (!\RegFile_inst|Mux39~0_combout\ & ((\RegFile_inst|registers[5][24]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[7][24]~q\,
	datac => \RegFile_inst|registers[5][24]~q\,
	datad => \RegFile_inst|Mux39~0_combout\,
	combout => \RegFile_inst|Mux39~1_combout\);

-- Location: FF_X41_Y19_N17
\RegFile_inst|registers[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][24]~q\);

-- Location: FF_X40_Y19_N3
\RegFile_inst|registers[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][24]~q\);

-- Location: FF_X40_Y20_N15
\RegFile_inst|registers[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][24]~q\);

-- Location: LCCOMB_X40_Y20_N18
\RegFile_inst|Mux39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][24]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][24]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][24]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux39~2_combout\);

-- Location: LCCOMB_X40_Y20_N24
\RegFile_inst|Mux39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux39~2_combout\ & (\RegFile_inst|registers[3][24]~q\)) # (!\RegFile_inst|Mux39~2_combout\ & ((\RegFile_inst|registers[2][24]~q\))))) # (!rt_addr(1) & (((\RegFile_inst|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[3][24]~q\,
	datac => \RegFile_inst|registers[2][24]~q\,
	datad => \RegFile_inst|Mux39~2_combout\,
	combout => \RegFile_inst|Mux39~3_combout\);

-- Location: LCCOMB_X41_Y20_N8
\RegFile_inst|Mux39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux39~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux39~1_combout\,
	datad => \RegFile_inst|Mux39~3_combout\,
	combout => \RegFile_inst|Mux39~4_combout\);

-- Location: LCCOMB_X42_Y22_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\RegFile_inst|Mux7~1_combout\ $ (\RegFile_inst|Mux39~4_combout\ $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\RegFile_inst|Mux7~1_combout\ & ((\RegFile_inst|Mux39~4_combout\) # (!\Add1~47\))) # (!\RegFile_inst|Mux7~1_combout\ & (\RegFile_inst|Mux39~4_combout\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux7~1_combout\,
	datab => \RegFile_inst|Mux39~4_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X41_Y22_N0
\bus_data_in~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~121_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\) # (\Add1~48_combout\)))) # (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux40~4_combout\ & (!\bus_data_in[23]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux40~4_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add1~48_combout\,
	combout => \bus_data_in~121_combout\);

-- Location: LCCOMB_X41_Y22_N6
\bus_data_in~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~122_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in~121_combout\ & (\RegFile_inst|Mux7~1_combout\)) # (!\bus_data_in~121_combout\ & ((\Add3~46_combout\))))) # (!\bus_data_in[23]~73_combout\ & (((\bus_data_in~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \RegFile_inst|Mux7~1_combout\,
	datac => \Add3~46_combout\,
	datad => \bus_data_in~121_combout\,
	combout => \bus_data_in~122_combout\);

-- Location: LCCOMB_X41_Y22_N20
\bus_data_in~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~156_combout\ = (\bus_data_in~122_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~122_combout\,
	combout => \bus_data_in~156_combout\);

-- Location: FF_X41_Y22_N21
\bus_data_in[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~156_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(24));

-- Location: LCCOMB_X38_Y21_N6
\RegFile_inst|registers~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~28_combout\ = (!\clr~input_o\ & bus_data_in(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(24),
	combout => \RegFile_inst|registers~28_combout\);

-- Location: FF_X40_Y19_N11
\RegFile_inst|registers[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][24]~q\);

-- Location: LCCOMB_X40_Y19_N0
\RegFile_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux7~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][24]~q\) # ((rs_addr(1))))) # (!rs_addr(0) & (((\RegFile_inst|registers[0][24]~q\ & !rs_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][24]~q\,
	datab => \RegFile_inst|registers[0][24]~q\,
	datac => rs_addr(0),
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y19_N28
\RegFile_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux7~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux7~0_combout\ & (\RegFile_inst|registers[3][24]~q\)) # (!\RegFile_inst|Mux7~0_combout\ & ((\RegFile_inst|registers[2][24]~q\))))) # (!rs_addr(1) & (((\RegFile_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][24]~q\,
	datab => \RegFile_inst|registers[2][24]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|Mux7~0_combout\,
	combout => \RegFile_inst|Mux7~1_combout\);

-- Location: LCCOMB_X42_Y22_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\RegFile_inst|Mux6~1_combout\ & ((\RegFile_inst|Mux38~4_combout\ & (\Add1~49\ & VCC)) # (!\RegFile_inst|Mux38~4_combout\ & (!\Add1~49\)))) # (!\RegFile_inst|Mux6~1_combout\ & ((\RegFile_inst|Mux38~4_combout\ & (!\Add1~49\)) # 
-- (!\RegFile_inst|Mux38~4_combout\ & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\RegFile_inst|Mux6~1_combout\ & (!\RegFile_inst|Mux38~4_combout\ & !\Add1~49\)) # (!\RegFile_inst|Mux6~1_combout\ & ((!\Add1~49\) # (!\RegFile_inst|Mux38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux6~1_combout\,
	datab => \RegFile_inst|Mux38~4_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X40_Y22_N18
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (\RegFile_inst|Mux6~1_combout\ & (\Add3~47\ $ (GND))) # (!\RegFile_inst|Mux6~1_combout\ & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((\RegFile_inst|Mux6~1_combout\ & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux6~1_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X39_Y22_N28
\bus_data_in~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~123_combout\ = (\bus_data_in[23]~72_combout\ & (\bus_data_in[23]~73_combout\)) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~48_combout\))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \RegFile_inst|Mux39~4_combout\,
	datad => \Add3~48_combout\,
	combout => \bus_data_in~123_combout\);

-- Location: LCCOMB_X39_Y22_N6
\bus_data_in~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~124_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~123_combout\ & (\RegFile_inst|Mux6~1_combout\)) # (!\bus_data_in~123_combout\ & ((\Add1~50_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \RegFile_inst|Mux6~1_combout\,
	datac => \Add1~50_combout\,
	datad => \bus_data_in~123_combout\,
	combout => \bus_data_in~124_combout\);

-- Location: LCCOMB_X39_Y22_N22
\bus_data_in~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~157_combout\ = (\bus_data_in~124_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~124_combout\,
	combout => \bus_data_in~157_combout\);

-- Location: FF_X39_Y22_N23
\bus_data_in[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~157_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(25));

-- Location: LCCOMB_X39_Y23_N12
\RegFile_inst|registers~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~29_combout\ = (bus_data_in(25) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(25),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~29_combout\);

-- Location: FF_X38_Y22_N31
\RegFile_inst|registers[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][25]~q\);

-- Location: LCCOMB_X39_Y19_N6
\RegFile_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux6~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & ((\RegFile_inst|registers[2][25]~q\))) # (!rs_addr(1) & (\RegFile_inst|registers[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][25]~q\,
	datac => rs_addr(1),
	datad => \RegFile_inst|registers[2][25]~q\,
	combout => \RegFile_inst|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y19_N12
\RegFile_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux6~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux6~0_combout\ & (\RegFile_inst|registers[3][25]~q\)) # (!\RegFile_inst|Mux6~0_combout\ & ((\RegFile_inst|registers[1][25]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][25]~q\,
	datac => \RegFile_inst|registers[1][25]~q\,
	datad => \RegFile_inst|Mux6~0_combout\,
	combout => \RegFile_inst|Mux6~1_combout\);

-- Location: LCCOMB_X40_Y22_N20
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\RegFile_inst|Mux5~1_combout\ & (!\Add3~49\)) # (!\RegFile_inst|Mux5~1_combout\ & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!\RegFile_inst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux5~1_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X39_Y23_N18
\RegFile_inst|registers[7][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][26]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[7][26]~feeder_combout\);

-- Location: FF_X39_Y23_N19
\RegFile_inst|registers[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][26]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][26]~q\);

-- Location: LCCOMB_X39_Y19_N26
\RegFile_inst|registers[5][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][26]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[5][26]~feeder_combout\);

-- Location: FF_X39_Y19_N27
\RegFile_inst|registers[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][26]~feeder_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][26]~q\);

-- Location: FF_X39_Y20_N21
\RegFile_inst|registers[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][26]~q\);

-- Location: LCCOMB_X38_Y19_N6
\RegFile_inst|registers[4][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][26]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[4][26]~feeder_combout\);

-- Location: FF_X38_Y19_N7
\RegFile_inst|registers[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][26]~feeder_combout\,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][26]~q\);

-- Location: LCCOMB_X39_Y19_N0
\RegFile_inst|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][26]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][26]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[4][26]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux37~0_combout\);

-- Location: LCCOMB_X39_Y19_N18
\RegFile_inst|Mux37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux37~0_combout\ & (\RegFile_inst|registers[7][26]~q\)) # (!\RegFile_inst|Mux37~0_combout\ & ((\RegFile_inst|registers[5][26]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][26]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][26]~q\,
	datad => \RegFile_inst|Mux37~0_combout\,
	combout => \RegFile_inst|Mux37~1_combout\);

-- Location: FF_X40_Y19_N31
\RegFile_inst|registers[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][26]~q\);

-- Location: FF_X40_Y19_N23
\RegFile_inst|registers[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][26]~q\);

-- Location: FF_X40_Y20_N5
\RegFile_inst|registers[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][26]~q\);

-- Location: LCCOMB_X40_Y20_N4
\RegFile_inst|Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][26]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][26]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][26]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux37~2_combout\);

-- Location: LCCOMB_X41_Y19_N20
\RegFile_inst|Mux37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~3_combout\ = (\RegFile_inst|Mux37~2_combout\ & (((\RegFile_inst|registers[3][26]~q\) # (!rt_addr(1))))) # (!\RegFile_inst|Mux37~2_combout\ & (\RegFile_inst|registers[2][26]~q\ & ((rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][26]~q\,
	datab => \RegFile_inst|registers[3][26]~q\,
	datac => \RegFile_inst|Mux37~2_combout\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux37~3_combout\);

-- Location: LCCOMB_X41_Y19_N6
\RegFile_inst|Mux37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux37~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux37~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux37~1_combout\,
	datad => \RegFile_inst|Mux37~3_combout\,
	combout => \RegFile_inst|Mux37~4_combout\);

-- Location: LCCOMB_X42_Y22_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\RegFile_inst|Mux5~1_combout\ $ (\RegFile_inst|Mux37~4_combout\ $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\RegFile_inst|Mux5~1_combout\ & ((\RegFile_inst|Mux37~4_combout\) # (!\Add1~51\))) # (!\RegFile_inst|Mux5~1_combout\ & (\RegFile_inst|Mux37~4_combout\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux5~1_combout\,
	datab => \RegFile_inst|Mux37~4_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X38_Y22_N16
\bus_data_in~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~125_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\) # ((\Add1~52_combout\)))) # (!\bus_data_in[23]~72_combout\ & (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux38~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \RegFile_inst|Mux38~4_combout\,
	datad => \Add1~52_combout\,
	combout => \bus_data_in~125_combout\);

-- Location: LCCOMB_X38_Y22_N12
\bus_data_in~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~126_combout\ = (\bus_data_in~125_combout\ & (\bus_data_in~158_combout\ $ ((!\bus_data_in[23]~73_combout\)))) # (!\bus_data_in~125_combout\ & (((\bus_data_in[23]~73_combout\ & \Add3~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~158_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add3~50_combout\,
	datad => \bus_data_in~125_combout\,
	combout => \bus_data_in~126_combout\);

-- Location: FF_X38_Y22_N13
\bus_data_in[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~126_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(26));

-- Location: LCCOMB_X39_Y23_N6
\RegFile_inst|registers~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~30_combout\ = (!\clr~input_o\ & bus_data_in(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(26),
	combout => \RegFile_inst|registers~30_combout\);

-- Location: FF_X41_Y19_N7
\RegFile_inst|registers[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][26]~q\);

-- Location: LCCOMB_X40_Y19_N20
\RegFile_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux5~0_combout\ = (rs_addr(0) & ((rs_addr(1)) # ((\RegFile_inst|registers[1][26]~q\)))) # (!rs_addr(0) & (!rs_addr(1) & (\RegFile_inst|registers[0][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[0][26]~q\,
	datad => \RegFile_inst|registers[1][26]~q\,
	combout => \RegFile_inst|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y19_N30
\RegFile_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux5~1_combout\ = (rs_addr(1) & ((\RegFile_inst|Mux5~0_combout\ & ((\RegFile_inst|registers[3][26]~q\))) # (!\RegFile_inst|Mux5~0_combout\ & (\RegFile_inst|registers[2][26]~q\)))) # (!rs_addr(1) & (((\RegFile_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][26]~q\,
	datab => rs_addr(1),
	datac => \RegFile_inst|registers[3][26]~q\,
	datad => \RegFile_inst|Mux5~0_combout\,
	combout => \RegFile_inst|Mux5~1_combout\);

-- Location: LCCOMB_X42_Y22_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\RegFile_inst|Mux4~1_combout\ & ((\RegFile_inst|Mux36~4_combout\ & (\Add1~53\ & VCC)) # (!\RegFile_inst|Mux36~4_combout\ & (!\Add1~53\)))) # (!\RegFile_inst|Mux4~1_combout\ & ((\RegFile_inst|Mux36~4_combout\ & (!\Add1~53\)) # 
-- (!\RegFile_inst|Mux36~4_combout\ & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\RegFile_inst|Mux4~1_combout\ & (!\RegFile_inst|Mux36~4_combout\ & !\Add1~53\)) # (!\RegFile_inst|Mux4~1_combout\ & ((!\Add1~53\) # (!\RegFile_inst|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux4~1_combout\,
	datab => \RegFile_inst|Mux36~4_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X40_Y22_N22
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (\RegFile_inst|Mux4~1_combout\ & (\Add3~51\ $ (GND))) # (!\RegFile_inst|Mux4~1_combout\ & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((\RegFile_inst|Mux4~1_combout\ & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux4~1_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X39_Y22_N16
\bus_data_in~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~127_combout\ = (\bus_data_in[23]~72_combout\ & (\bus_data_in[23]~73_combout\)) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~52_combout\))) # (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \RegFile_inst|Mux37~4_combout\,
	datad => \Add3~52_combout\,
	combout => \bus_data_in~127_combout\);

-- Location: LCCOMB_X39_Y22_N18
\bus_data_in~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~128_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~127_combout\ & (\RegFile_inst|Mux4~1_combout\)) # (!\bus_data_in~127_combout\ & ((\Add1~54_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \RegFile_inst|Mux4~1_combout\,
	datac => \Add1~54_combout\,
	datad => \bus_data_in~127_combout\,
	combout => \bus_data_in~128_combout\);

-- Location: LCCOMB_X39_Y22_N20
\bus_data_in~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~159_combout\ = (\bus_data_in~128_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~128_combout\,
	combout => \bus_data_in~159_combout\);

-- Location: FF_X39_Y22_N21
\bus_data_in[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~159_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(27));

-- Location: LCCOMB_X39_Y22_N8
\RegFile_inst|registers~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~31_combout\ = (!\clr~input_o\ & bus_data_in(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(27),
	combout => \RegFile_inst|registers~31_combout\);

-- Location: LCCOMB_X39_Y21_N14
\RegFile_inst|registers[3][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][27]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[3][27]~feeder_combout\);

-- Location: FF_X39_Y21_N15
\RegFile_inst|registers[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][27]~feeder_combout\,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][27]~q\);

-- Location: LCCOMB_X39_Y21_N8
\RegFile_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux4~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][27]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][27]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[0][27]~q\,
	datad => rs_addr(1),
	combout => \RegFile_inst|Mux4~0_combout\);

-- Location: LCCOMB_X39_Y19_N24
\RegFile_inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux4~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux4~0_combout\ & (\RegFile_inst|registers[3][27]~q\)) # (!\RegFile_inst|Mux4~0_combout\ & ((\RegFile_inst|registers[1][27]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][27]~q\,
	datac => \RegFile_inst|registers[1][27]~q\,
	datad => \RegFile_inst|Mux4~0_combout\,
	combout => \RegFile_inst|Mux4~1_combout\);

-- Location: LCCOMB_X40_Y22_N24
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\RegFile_inst|Mux3~1_combout\ & (!\Add3~53\)) # (!\RegFile_inst|Mux3~1_combout\ & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!\RegFile_inst|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux3~1_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X38_Y22_N4
\bus_data_in~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~160_combout\ = (opcode(2) & (((\RegFile_inst|Mux3~1_combout\)))) # (!opcode(2) & ((opcode(1) & ((\RegFile_inst|Mux3~1_combout\))) # (!opcode(1) & (opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datac => opcode(0),
	datad => \RegFile_inst|Mux3~1_combout\,
	combout => \bus_data_in~160_combout\);

-- Location: LCCOMB_X42_Y22_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\RegFile_inst|Mux35~4_combout\ $ (\RegFile_inst|Mux3~1_combout\ $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\RegFile_inst|Mux35~4_combout\ & ((\RegFile_inst|Mux3~1_combout\) # (!\Add1~55\))) # (!\RegFile_inst|Mux35~4_combout\ & (\RegFile_inst|Mux3~1_combout\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux35~4_combout\,
	datab => \RegFile_inst|Mux3~1_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X38_Y22_N2
\bus_data_in~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~129_combout\ = (\bus_data_in[23]~73_combout\ & (((\bus_data_in[23]~72_combout\)))) # (!\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\ & ((\Add1~56_combout\))) # (!\bus_data_in[23]~72_combout\ & 
-- (\RegFile_inst|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux36~4_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add1~56_combout\,
	datad => \bus_data_in[23]~72_combout\,
	combout => \bus_data_in~129_combout\);

-- Location: LCCOMB_X38_Y22_N14
\bus_data_in~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~130_combout\ = (\bus_data_in~129_combout\ & ((\bus_data_in[23]~73_combout\ $ (!\bus_data_in~160_combout\)))) # (!\bus_data_in~129_combout\ & (\Add3~54_combout\ & (\bus_data_in[23]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \bus_data_in~160_combout\,
	datad => \bus_data_in~129_combout\,
	combout => \bus_data_in~130_combout\);

-- Location: FF_X38_Y22_N15
\bus_data_in[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~130_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(28));

-- Location: LCCOMB_X39_Y23_N24
\RegFile_inst|registers~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~32_combout\ = (!\clr~input_o\ & bus_data_in(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(28),
	combout => \RegFile_inst|registers~32_combout\);

-- Location: FF_X39_Y22_N9
\RegFile_inst|registers[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][28]~q\);

-- Location: LCCOMB_X40_Y20_N10
\RegFile_inst|Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~2_combout\ = (rt_addr(1) & (((rt_addr(0))))) # (!rt_addr(1) & ((rt_addr(0) & (\RegFile_inst|registers[1][28]~q\)) # (!rt_addr(0) & ((\RegFile_inst|registers[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][28]~q\,
	datab => rt_addr(1),
	datac => \RegFile_inst|registers[0][28]~q\,
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux35~2_combout\);

-- Location: LCCOMB_X39_Y22_N30
\RegFile_inst|Mux35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux35~2_combout\ & ((\RegFile_inst|registers[3][28]~q\))) # (!\RegFile_inst|Mux35~2_combout\ & (\RegFile_inst|registers[2][28]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[2][28]~q\,
	datac => \RegFile_inst|Mux35~2_combout\,
	datad => \RegFile_inst|registers[3][28]~q\,
	combout => \RegFile_inst|Mux35~3_combout\);

-- Location: LCCOMB_X37_Y20_N16
\RegFile_inst|registers[7][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][28]~feeder_combout\ = \RegFile_inst|registers~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~32_combout\,
	combout => \RegFile_inst|registers[7][28]~feeder_combout\);

-- Location: FF_X37_Y20_N17
\RegFile_inst|registers[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][28]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][28]~q\);

-- Location: FF_X39_Y20_N23
\RegFile_inst|registers[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][28]~q\);

-- Location: FF_X39_Y20_N13
\RegFile_inst|registers[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][28]~q\);

-- Location: FF_X40_Y20_N29
\RegFile_inst|registers[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][28]~q\);

-- Location: LCCOMB_X39_Y20_N18
\RegFile_inst|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~0_combout\ = (rt_addr(1) & ((\RegFile_inst|registers[6][28]~q\) # ((rt_addr(0))))) # (!rt_addr(1) & (((\RegFile_inst|registers[4][28]~q\ & !rt_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][28]~q\,
	datab => \RegFile_inst|registers[4][28]~q\,
	datac => rt_addr(1),
	datad => rt_addr(0),
	combout => \RegFile_inst|Mux35~0_combout\);

-- Location: LCCOMB_X39_Y20_N22
\RegFile_inst|Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux35~0_combout\ & (\RegFile_inst|registers[7][28]~q\)) # (!\RegFile_inst|Mux35~0_combout\ & ((\RegFile_inst|registers[5][28]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][28]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][28]~q\,
	datad => \RegFile_inst|Mux35~0_combout\,
	combout => \RegFile_inst|Mux35~1_combout\);

-- Location: LCCOMB_X39_Y22_N24
\RegFile_inst|Mux35~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux35~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux35~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datac => \RegFile_inst|Mux35~3_combout\,
	datad => \RegFile_inst|Mux35~1_combout\,
	combout => \RegFile_inst|Mux35~4_combout\);

-- Location: LCCOMB_X42_Y22_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\RegFile_inst|Mux2~1_combout\ & ((\RegFile_inst|Mux34~4_combout\ & (\Add1~57\ & VCC)) # (!\RegFile_inst|Mux34~4_combout\ & (!\Add1~57\)))) # (!\RegFile_inst|Mux2~1_combout\ & ((\RegFile_inst|Mux34~4_combout\ & (!\Add1~57\)) # 
-- (!\RegFile_inst|Mux34~4_combout\ & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\RegFile_inst|Mux2~1_combout\ & (!\RegFile_inst|Mux34~4_combout\ & !\Add1~57\)) # (!\RegFile_inst|Mux2~1_combout\ & ((!\Add1~57\) # (!\RegFile_inst|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux2~1_combout\,
	datab => \RegFile_inst|Mux34~4_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X40_Y22_N26
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (\RegFile_inst|Mux2~1_combout\ & (\Add3~55\ $ (GND))) # (!\RegFile_inst|Mux2~1_combout\ & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((\RegFile_inst|Mux2~1_combout\ & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux2~1_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X39_Y22_N12
\bus_data_in~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~131_combout\ = (\bus_data_in[23]~72_combout\ & (((\bus_data_in[23]~73_combout\)))) # (!\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\ & ((\Add3~56_combout\))) # (!\bus_data_in[23]~73_combout\ & 
-- (\RegFile_inst|Mux35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \RegFile_inst|Mux35~4_combout\,
	datac => \bus_data_in[23]~73_combout\,
	datad => \Add3~56_combout\,
	combout => \bus_data_in~131_combout\);

-- Location: LCCOMB_X39_Y22_N10
\bus_data_in~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~132_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~131_combout\ & (\RegFile_inst|Mux2~1_combout\)) # (!\bus_data_in~131_combout\ & ((\Add1~58_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \RegFile_inst|Mux2~1_combout\,
	datac => \Add1~58_combout\,
	datad => \bus_data_in~131_combout\,
	combout => \bus_data_in~132_combout\);

-- Location: LCCOMB_X39_Y22_N14
\bus_data_in~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~161_combout\ = (\bus_data_in~132_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~132_combout\,
	combout => \bus_data_in~161_combout\);

-- Location: FF_X39_Y22_N15
\bus_data_in[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~161_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(29));

-- Location: LCCOMB_X39_Y23_N30
\RegFile_inst|registers~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~33_combout\ = (bus_data_in(29) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(29),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~33_combout\);

-- Location: FF_X38_Y22_N9
\RegFile_inst|registers[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][29]~q\);

-- Location: LCCOMB_X38_Y19_N12
\RegFile_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux2~0_combout\ = (rs_addr(0) & (((rs_addr(1))))) # (!rs_addr(0) & ((rs_addr(1) & (\RegFile_inst|registers[2][29]~q\)) # (!rs_addr(1) & ((\RegFile_inst|registers[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][29]~q\,
	datab => rs_addr(0),
	datac => rs_addr(1),
	datad => \RegFile_inst|registers[0][29]~q\,
	combout => \RegFile_inst|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y19_N20
\RegFile_inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux2~1_combout\ = (rs_addr(0) & ((\RegFile_inst|Mux2~0_combout\ & (\RegFile_inst|registers[3][29]~q\)) # (!\RegFile_inst|Mux2~0_combout\ & ((\RegFile_inst|registers[1][29]~q\))))) # (!rs_addr(0) & (((\RegFile_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[3][29]~q\,
	datac => \RegFile_inst|registers[1][29]~q\,
	datad => \RegFile_inst|Mux2~0_combout\,
	combout => \RegFile_inst|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y22_N28
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\RegFile_inst|Mux1~1_combout\ & (!\Add3~57\)) # (!\RegFile_inst|Mux1~1_combout\ & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!\RegFile_inst|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux1~1_combout\,
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X42_Y22_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\RegFile_inst|Mux33~4_combout\ $ (\RegFile_inst|Mux1~1_combout\ $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\RegFile_inst|Mux33~4_combout\ & ((\RegFile_inst|Mux1~1_combout\) # (!\Add1~59\))) # (!\RegFile_inst|Mux33~4_combout\ & (\RegFile_inst|Mux1~1_combout\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux33~4_combout\,
	datab => \RegFile_inst|Mux1~1_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X38_Y22_N0
\bus_data_in~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~133_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in[23]~73_combout\) # ((\Add1~60_combout\)))) # (!\bus_data_in[23]~72_combout\ & (!\bus_data_in[23]~73_combout\ & (\RegFile_inst|Mux34~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~72_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \RegFile_inst|Mux34~4_combout\,
	datad => \Add1~60_combout\,
	combout => \bus_data_in~133_combout\);

-- Location: LCCOMB_X38_Y22_N28
\bus_data_in~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~134_combout\ = (\bus_data_in~133_combout\ & (\bus_data_in~162_combout\ $ ((!\bus_data_in[23]~73_combout\)))) # (!\bus_data_in~133_combout\ & (((\bus_data_in[23]~73_combout\ & \Add3~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in~162_combout\,
	datab => \bus_data_in[23]~73_combout\,
	datac => \Add3~58_combout\,
	datad => \bus_data_in~133_combout\,
	combout => \bus_data_in~134_combout\);

-- Location: FF_X38_Y22_N29
\bus_data_in[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~134_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(30));

-- Location: LCCOMB_X38_Y21_N12
\RegFile_inst|registers~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~34_combout\ = (bus_data_in(30) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bus_data_in(30),
	datab => \clr~input_o\,
	combout => \RegFile_inst|registers~34_combout\);

-- Location: FF_X42_Y19_N27
\RegFile_inst|registers[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][30]~q\);

-- Location: LCCOMB_X44_Y19_N10
\RegFile_inst|Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~2_combout\ = (rt_addr(0) & (((\RegFile_inst|registers[1][30]~q\) # (rt_addr(1))))) # (!rt_addr(0) & (\RegFile_inst|registers[0][30]~q\ & ((!rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][30]~q\,
	datab => \RegFile_inst|registers[1][30]~q\,
	datac => rt_addr(0),
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux33~2_combout\);

-- Location: LCCOMB_X42_Y19_N4
\RegFile_inst|Mux33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~3_combout\ = (\RegFile_inst|Mux33~2_combout\ & (((\RegFile_inst|registers[3][30]~q\) # (!rt_addr(1))))) # (!\RegFile_inst|Mux33~2_combout\ & (\RegFile_inst|registers[2][30]~q\ & ((rt_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][30]~q\,
	datab => \RegFile_inst|Mux33~2_combout\,
	datac => \RegFile_inst|registers[3][30]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux33~3_combout\);

-- Location: LCCOMB_X39_Y19_N30
\RegFile_inst|registers[5][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][30]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[5][30]~feeder_combout\);

-- Location: FF_X39_Y19_N31
\RegFile_inst|registers[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][30]~feeder_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][30]~q\);

-- Location: LCCOMB_X38_Y21_N26
\RegFile_inst|registers[7][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][30]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[7][30]~feeder_combout\);

-- Location: FF_X38_Y21_N27
\RegFile_inst|registers[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][30]~feeder_combout\,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][30]~q\);

-- Location: FF_X43_Y20_N15
\RegFile_inst|registers[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][30]~q\);

-- Location: FF_X42_Y20_N23
\RegFile_inst|registers[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][30]~q\);

-- Location: LCCOMB_X42_Y20_N22
\RegFile_inst|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & (\RegFile_inst|registers[6][30]~q\)) # (!rt_addr(1) & ((\RegFile_inst|registers[4][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[6][30]~q\,
	datac => \RegFile_inst|registers[4][30]~q\,
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux33~0_combout\);

-- Location: LCCOMB_X42_Y19_N20
\RegFile_inst|Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux33~0_combout\ & ((\RegFile_inst|registers[7][30]~q\))) # (!\RegFile_inst|Mux33~0_combout\ & (\RegFile_inst|registers[5][30]~q\)))) # (!rt_addr(0) & (((\RegFile_inst|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(0),
	datab => \RegFile_inst|registers[5][30]~q\,
	datac => \RegFile_inst|registers[7][30]~q\,
	datad => \RegFile_inst|Mux33~0_combout\,
	combout => \RegFile_inst|Mux33~1_combout\);

-- Location: LCCOMB_X42_Y19_N28
\RegFile_inst|Mux33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~4_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux33~1_combout\))) # (!rt_addr(2) & (\RegFile_inst|Mux33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|Mux33~3_combout\,
	datad => \RegFile_inst|Mux33~1_combout\,
	combout => \RegFile_inst|Mux33~4_combout\);

-- Location: LCCOMB_X42_Y22_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \RegFile_inst|Mux0~1_combout\ $ (\Add1~61\ $ (\RegFile_inst|Mux32~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux0~1_combout\,
	datad => \RegFile_inst|Mux32~4_combout\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X40_Y22_N30
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = \RegFile_inst|Mux0~1_combout\ $ (!\Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux0~1_combout\,
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

-- Location: LCCOMB_X41_Y24_N20
\bus_data_in~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~135_combout\ = (\bus_data_in[23]~73_combout\ & ((\bus_data_in[23]~72_combout\) # ((\Add3~60_combout\)))) # (!\bus_data_in[23]~73_combout\ & (!\bus_data_in[23]~72_combout\ & (\RegFile_inst|Mux33~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[23]~73_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \RegFile_inst|Mux33~4_combout\,
	datad => \Add3~60_combout\,
	combout => \bus_data_in~135_combout\);

-- Location: LCCOMB_X41_Y24_N6
\bus_data_in~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~136_combout\ = (\bus_data_in[23]~72_combout\ & ((\bus_data_in~135_combout\ & (\RegFile_inst|Mux0~1_combout\)) # (!\bus_data_in~135_combout\ & ((\Add1~62_combout\))))) # (!\bus_data_in[23]~72_combout\ & (((\bus_data_in~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux0~1_combout\,
	datab => \bus_data_in[23]~72_combout\,
	datac => \Add1~62_combout\,
	datad => \bus_data_in~135_combout\,
	combout => \bus_data_in~136_combout\);

-- Location: LCCOMB_X41_Y24_N26
\bus_data_in~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~163_combout\ = (\bus_data_in~136_combout\ & (((opcode(1)) # (opcode(2))) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \bus_data_in~136_combout\,
	combout => \bus_data_in~163_combout\);

-- Location: FF_X41_Y24_N27
\bus_data_in[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~163_combout\,
	ena => \bus_data_in[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(31));

-- Location: LCCOMB_X46_Y20_N30
\RegFile_inst|registers~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~35_combout\ = (bus_data_in(31) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(31),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~35_combout\);

-- Location: FF_X43_Y22_N9
\RegFile_inst|registers[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][31]~q\);

-- Location: FF_X39_Y19_N17
\RegFile_inst|registers[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][31]~q\);

-- Location: FF_X46_Y20_N27
\RegFile_inst|registers[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][31]~q\);

-- Location: FF_X46_Y20_N25
\RegFile_inst|registers[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~35_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][31]~q\);

-- Location: LCCOMB_X46_Y20_N28
\RegFile_inst|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~0_combout\ = (rt_addr(0) & (((rt_addr(1))))) # (!rt_addr(0) & ((rt_addr(1) & ((\RegFile_inst|registers[6][31]~q\))) # (!rt_addr(1) & (\RegFile_inst|registers[4][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][31]~q\,
	datab => \RegFile_inst|registers[6][31]~q\,
	datac => rt_addr(0),
	datad => rt_addr(1),
	combout => \RegFile_inst|Mux32~0_combout\);

-- Location: LCCOMB_X39_Y19_N16
\RegFile_inst|Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~1_combout\ = (rt_addr(0) & ((\RegFile_inst|Mux32~0_combout\ & (\RegFile_inst|registers[7][31]~q\)) # (!\RegFile_inst|Mux32~0_combout\ & ((\RegFile_inst|registers[5][31]~q\))))) # (!rt_addr(0) & (((\RegFile_inst|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][31]~q\,
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[5][31]~q\,
	datad => \RegFile_inst|Mux32~0_combout\,
	combout => \RegFile_inst|Mux32~1_combout\);

-- Location: LCCOMB_X43_Y19_N30
\RegFile_inst|Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~2_combout\ = (rt_addr(1) & (rt_addr(0))) # (!rt_addr(1) & ((rt_addr(0) & ((\RegFile_inst|registers[1][31]~q\))) # (!rt_addr(0) & (\RegFile_inst|registers[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => rt_addr(0),
	datac => \RegFile_inst|registers[0][31]~q\,
	datad => \RegFile_inst|registers[1][31]~q\,
	combout => \RegFile_inst|Mux32~2_combout\);

-- Location: LCCOMB_X41_Y19_N26
\RegFile_inst|Mux32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~3_combout\ = (rt_addr(1) & ((\RegFile_inst|Mux32~2_combout\ & ((\RegFile_inst|registers[3][31]~q\))) # (!\RegFile_inst|Mux32~2_combout\ & (\RegFile_inst|registers[2][31]~q\)))) # (!rt_addr(1) & (((\RegFile_inst|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(1),
	datab => \RegFile_inst|registers[2][31]~q\,
	datac => \RegFile_inst|Mux32~2_combout\,
	datad => \RegFile_inst|registers[3][31]~q\,
	combout => \RegFile_inst|Mux32~3_combout\);

-- Location: LCCOMB_X41_Y19_N0
\RegFile_inst|Mux32~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~4_combout\ = (rt_addr(2) & (\RegFile_inst|Mux32~1_combout\)) # (!rt_addr(2) & ((\RegFile_inst|Mux32~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux32~1_combout\,
	datac => \RegFile_inst|Mux32~3_combout\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux32~4_combout\);

-- Location: LCCOMB_X42_Y24_N28
\bus_data_in[0]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~59_combout\ = (func(1) & ((\Add1~0_combout\))) # (!func(1) & (\RegFile_inst|Mux32~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => func(1),
	datac => \RegFile_inst|Mux32~4_combout\,
	datad => \Add1~0_combout\,
	combout => \bus_data_in[0]~59_combout\);

-- Location: LCCOMB_X42_Y24_N12
\bus_data_in[0]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~64_combout\ = (\bus_data_in[0]~60_combout\ & (\bus_data_in[0]~63_combout\)) # (!\bus_data_in[0]~60_combout\ & ((\bus_data_in[0]~63_combout\ & ((\bus_data_in[0]~59_combout\))) # (!\bus_data_in[0]~63_combout\ & (bus_data_in(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_data_in[0]~60_combout\,
	datab => \bus_data_in[0]~63_combout\,
	datac => bus_data_in(0),
	datad => \bus_data_in[0]~59_combout\,
	combout => \bus_data_in[0]~64_combout\);

-- Location: FF_X42_Y24_N13
\bus_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(0));

-- Location: LCCOMB_X39_Y23_N26
\RegFile_inst|registers~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~0_combout\ = (!\clr~input_o\ & bus_data_in(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(0),
	combout => \RegFile_inst|registers~0_combout\);

-- Location: LCCOMB_X39_Y23_N28
\RegFile_inst|registers[5][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][0]~feeder_combout\ = \RegFile_inst|registers~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~0_combout\,
	combout => \RegFile_inst|registers[5][0]~feeder_combout\);

-- Location: FF_X39_Y23_N29
\RegFile_inst|registers[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][0]~feeder_combout\,
	ena => \RegFile_inst|registers[5][6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][0]~q\);

-- Location: LCCOMB_X40_Y21_N6
\RegFile_inst|Mux95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][0]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][0]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][0]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[4][0]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux95~0_combout\);

-- Location: LCCOMB_X40_Y21_N26
\RegFile_inst|Mux95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux95~0_combout\ & ((\RegFile_inst|registers[7][0]~q\))) # (!\RegFile_inst|Mux95~0_combout\ & (\RegFile_inst|registers[5][0]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][0]~q\,
	datab => \RegFile_inst|registers[7][0]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|Mux95~0_combout\,
	combout => \RegFile_inst|Mux95~1_combout\);

-- Location: LCCOMB_X43_Y21_N6
\RegFile_inst|Mux95~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~2_combout\ = (rd_addr(0) & (((rd_addr(1)) # (!\RegFile_inst|registers[1][0]~q\)))) # (!rd_addr(0) & (\RegFile_inst|registers[0][0]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][0]~q\,
	datab => \RegFile_inst|registers[1][0]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux95~2_combout\);

-- Location: LCCOMB_X43_Y21_N20
\RegFile_inst|Mux95~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~3_combout\ = (\RegFile_inst|Mux95~2_combout\ & ((\RegFile_inst|registers[3][0]~q\) # ((!rd_addr(1))))) # (!\RegFile_inst|Mux95~2_combout\ & (((\RegFile_inst|registers[2][0]~q\ & rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][0]~q\,
	datab => \RegFile_inst|Mux95~2_combout\,
	datac => \RegFile_inst|registers[2][0]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux95~3_combout\);

-- Location: LCCOMB_X40_Y21_N20
\RegFile_inst|Mux95~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux95~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux95~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux95~1_combout\,
	datab => \RegFile_inst|Mux95~3_combout\,
	datad => rd_addr(2),
	combout => \RegFile_inst|Mux95~4_combout\);

-- Location: LCCOMB_X47_Y1_N28
\output~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~65_combout\ = (\RegFile_inst|Mux95~4_combout\) # ((opcode(0)) # ((opcode(2)) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux95~4_combout\,
	datab => opcode(0),
	datac => opcode(1),
	datad => opcode(2),
	combout => \output~65_combout\);

-- Location: LCCOMB_X38_Y1_N6
\output[0]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~64_combout\ = (opcode(1) & (\bus_data_in[1]~58_combout\ & (opcode(2) $ (!opcode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \bus_data_in[1]~58_combout\,
	combout => \output[0]~64_combout\);

-- Location: FF_X47_Y1_N29
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~65_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X43_Y20_N28
\RegFile_inst|Mux94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][1]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][1]~q\,
	datad => \RegFile_inst|registers[4][1]~q\,
	combout => \RegFile_inst|Mux94~0_combout\);

-- Location: LCCOMB_X40_Y20_N30
\RegFile_inst|Mux94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux94~0_combout\ & ((\RegFile_inst|registers[7][1]~q\))) # (!\RegFile_inst|Mux94~0_combout\ & (\RegFile_inst|registers[5][1]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][1]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][1]~q\,
	datad => \RegFile_inst|Mux94~0_combout\,
	combout => \RegFile_inst|Mux94~1_combout\);

-- Location: LCCOMB_X41_Y20_N2
\RegFile_inst|Mux94~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][1]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][1]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][1]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][1]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux94~2_combout\);

-- Location: LCCOMB_X41_Y20_N26
\RegFile_inst|Mux94~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~3_combout\ = (\RegFile_inst|Mux94~2_combout\ & (((\RegFile_inst|registers[3][1]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux94~2_combout\ & (!\RegFile_inst|registers[2][1]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][1]~q\,
	datab => \RegFile_inst|Mux94~2_combout\,
	datac => \RegFile_inst|registers[3][1]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux94~3_combout\);

-- Location: LCCOMB_X40_Y20_N28
\RegFile_inst|Mux94~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux94~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux94~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux94~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux94~3_combout\,
	combout => \RegFile_inst|Mux94~4_combout\);

-- Location: LCCOMB_X47_Y1_N26
\output~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~66_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux94~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux94~4_combout\,
	combout => \output~66_combout\);

-- Location: FF_X47_Y1_N27
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~66_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X45_Y23_N0
\RegFile_inst|Mux93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((!\RegFile_inst|registers[1][2]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][2]~q\,
	datad => \RegFile_inst|registers[1][2]~q\,
	combout => \RegFile_inst|Mux93~2_combout\);

-- Location: LCCOMB_X45_Y23_N14
\RegFile_inst|Mux93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux93~2_combout\ & (\RegFile_inst|registers[3][2]~q\)) # (!\RegFile_inst|Mux93~2_combout\ & ((!\RegFile_inst|registers[2][2]~q\))))) # (!rd_addr(1) & (\RegFile_inst|Mux93~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|Mux93~2_combout\,
	datac => \RegFile_inst|registers[3][2]~q\,
	datad => \RegFile_inst|registers[2][2]~q\,
	combout => \RegFile_inst|Mux93~3_combout\);

-- Location: LCCOMB_X43_Y20_N2
\RegFile_inst|Mux93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][2]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][2]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][2]~q\,
	datac => \RegFile_inst|registers[6][2]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux93~0_combout\);

-- Location: LCCOMB_X45_Y20_N0
\RegFile_inst|Mux93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~1_combout\ = (\RegFile_inst|Mux93~0_combout\ & (((\RegFile_inst|registers[7][2]~q\)) # (!rd_addr(0)))) # (!\RegFile_inst|Mux93~0_combout\ & (rd_addr(0) & (\RegFile_inst|registers[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux93~0_combout\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][2]~q\,
	datad => \RegFile_inst|registers[7][2]~q\,
	combout => \RegFile_inst|Mux93~1_combout\);

-- Location: LCCOMB_X45_Y20_N10
\RegFile_inst|Mux93~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux93~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux93~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux93~3_combout\,
	datad => \RegFile_inst|Mux93~1_combout\,
	combout => \RegFile_inst|Mux93~4_combout\);

-- Location: LCCOMB_X47_Y1_N0
\output~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~67_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux93~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux93~4_combout\,
	combout => \output~67_combout\);

-- Location: FF_X47_Y1_N1
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~67_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X41_Y20_N28
\RegFile_inst|Mux92~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][3]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((!rd_addr(1) & \RegFile_inst|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][3]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[0][3]~q\,
	combout => \RegFile_inst|Mux92~2_combout\);

-- Location: LCCOMB_X41_Y20_N14
\RegFile_inst|Mux92~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~3_combout\ = (\RegFile_inst|Mux92~2_combout\ & (((\RegFile_inst|registers[3][3]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux92~2_combout\ & (\RegFile_inst|registers[2][3]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][3]~q\,
	datab => \RegFile_inst|Mux92~2_combout\,
	datac => \RegFile_inst|registers[3][3]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux92~3_combout\);

-- Location: LCCOMB_X43_Y20_N12
\RegFile_inst|Mux92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][3]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][3]~q\,
	datad => \RegFile_inst|registers[4][3]~q\,
	combout => \RegFile_inst|Mux92~0_combout\);

-- Location: LCCOMB_X42_Y20_N28
\RegFile_inst|Mux92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~1_combout\ = (\RegFile_inst|Mux92~0_combout\ & ((\RegFile_inst|registers[7][3]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux92~0_combout\ & (((\RegFile_inst|registers[5][3]~q\ & rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][3]~q\,
	datab => \RegFile_inst|Mux92~0_combout\,
	datac => \RegFile_inst|registers[5][3]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux92~1_combout\);

-- Location: LCCOMB_X41_Y20_N30
\RegFile_inst|Mux92~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux92~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux92~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux92~3_combout\,
	datad => \RegFile_inst|Mux92~1_combout\,
	combout => \RegFile_inst|Mux92~4_combout\);

-- Location: LCCOMB_X47_Y1_N6
\output~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~68_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux92~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux92~4_combout\,
	combout => \output~68_combout\);

-- Location: FF_X47_Y1_N7
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~68_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: LCCOMB_X44_Y21_N22
\RegFile_inst|Mux91~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][4]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][4]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][4]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][4]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux91~2_combout\);

-- Location: LCCOMB_X43_Y21_N22
\RegFile_inst|Mux91~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux91~2_combout\ & (\RegFile_inst|registers[3][4]~q\)) # (!\RegFile_inst|Mux91~2_combout\ & ((\RegFile_inst|registers[2][4]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux91~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][4]~q\,
	datac => \RegFile_inst|registers[2][4]~q\,
	datad => \RegFile_inst|Mux91~2_combout\,
	combout => \RegFile_inst|Mux91~3_combout\);

-- Location: LCCOMB_X43_Y20_N18
\RegFile_inst|Mux91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][4]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][4]~q\,
	datad => \RegFile_inst|registers[4][4]~q\,
	combout => \RegFile_inst|Mux91~0_combout\);

-- Location: LCCOMB_X42_Y20_N0
\RegFile_inst|Mux91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~1_combout\ = (\RegFile_inst|Mux91~0_combout\ & ((\RegFile_inst|registers[7][4]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux91~0_combout\ & (((\RegFile_inst|registers[5][4]~q\ & rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][4]~q\,
	datab => \RegFile_inst|Mux91~0_combout\,
	datac => \RegFile_inst|registers[5][4]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux91~1_combout\);

-- Location: LCCOMB_X46_Y20_N6
\RegFile_inst|Mux91~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux91~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux91~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux91~3_combout\,
	datad => \RegFile_inst|Mux91~1_combout\,
	combout => \RegFile_inst|Mux91~4_combout\);

-- Location: LCCOMB_X47_Y1_N24
\output~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~69_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux91~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux91~4_combout\,
	combout => \output~69_combout\);

-- Location: FF_X47_Y1_N25
\output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~69_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_q\);

-- Location: LCCOMB_X44_Y23_N12
\RegFile_inst|Mux90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][5]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][5]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][5]~q\,
	datab => \RegFile_inst|registers[4][5]~q\,
	datac => rd_addr(1),
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux90~0_combout\);

-- Location: LCCOMB_X44_Y23_N14
\RegFile_inst|Mux90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~1_combout\ = (\RegFile_inst|Mux90~0_combout\ & (((\RegFile_inst|registers[7][5]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux90~0_combout\ & (\RegFile_inst|registers[5][5]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux90~0_combout\,
	datab => \RegFile_inst|registers[5][5]~q\,
	datac => \RegFile_inst|registers[7][5]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux90~1_combout\);

-- Location: LCCOMB_X43_Y19_N28
\RegFile_inst|Mux90~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][5]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][5]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][5]~q\,
	datac => \RegFile_inst|registers[0][5]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux90~2_combout\);

-- Location: LCCOMB_X43_Y19_N8
\RegFile_inst|Mux90~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~3_combout\ = (\RegFile_inst|Mux90~2_combout\ & (((\RegFile_inst|registers[3][5]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux90~2_combout\ & (\RegFile_inst|registers[2][5]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][5]~q\,
	datab => \RegFile_inst|Mux90~2_combout\,
	datac => \RegFile_inst|registers[3][5]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux90~3_combout\);

-- Location: LCCOMB_X44_Y19_N18
\RegFile_inst|Mux90~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux90~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux90~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux90~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux90~3_combout\,
	combout => \RegFile_inst|Mux90~4_combout\);

-- Location: LCCOMB_X47_Y1_N22
\output~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~70_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux90~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux90~4_combout\,
	combout => \output~70_combout\);

-- Location: FF_X47_Y1_N23
\output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~70_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~reg0_q\);

-- Location: LCCOMB_X44_Y21_N14
\RegFile_inst|Mux89~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][6]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][6]~q\,
	datad => \RegFile_inst|registers[0][6]~q\,
	combout => \RegFile_inst|Mux89~2_combout\);

-- Location: LCCOMB_X43_Y21_N16
\RegFile_inst|Mux89~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux89~2_combout\ & ((\RegFile_inst|registers[3][6]~q\))) # (!\RegFile_inst|Mux89~2_combout\ & (\RegFile_inst|registers[2][6]~q\)))) # (!rd_addr(1) & (\RegFile_inst|Mux89~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|Mux89~2_combout\,
	datac => \RegFile_inst|registers[2][6]~q\,
	datad => \RegFile_inst|registers[3][6]~q\,
	combout => \RegFile_inst|Mux89~3_combout\);

-- Location: LCCOMB_X42_Y21_N20
\RegFile_inst|Mux89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][6]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][6]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][6]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][6]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux89~0_combout\);

-- Location: LCCOMB_X44_Y21_N16
\RegFile_inst|Mux89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux89~0_combout\ & (\RegFile_inst|registers[7][6]~q\)) # (!\RegFile_inst|Mux89~0_combout\ & ((\RegFile_inst|registers[5][6]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][6]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|Mux89~0_combout\,
	datad => \RegFile_inst|registers[5][6]~q\,
	combout => \RegFile_inst|Mux89~1_combout\);

-- Location: LCCOMB_X44_Y21_N8
\RegFile_inst|Mux89~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux89~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux89~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux89~3_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux89~1_combout\,
	combout => \RegFile_inst|Mux89~4_combout\);

-- Location: LCCOMB_X47_Y1_N12
\output~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~71_combout\ = ((opcode(0)) # ((\RegFile_inst|Mux89~4_combout\) # (opcode(2)))) # (!opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(0),
	datac => \RegFile_inst|Mux89~4_combout\,
	datad => opcode(2),
	combout => \output~71_combout\);

-- Location: FF_X47_Y1_N13
\output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~71_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~reg0_q\);

-- Location: LCCOMB_X44_Y19_N16
\RegFile_inst|Mux88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][7]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((!rd_addr(1) & \RegFile_inst|registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][7]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[0][7]~q\,
	combout => \RegFile_inst|Mux88~2_combout\);

-- Location: LCCOMB_X44_Y23_N26
\RegFile_inst|Mux88~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux88~2_combout\ & (\RegFile_inst|registers[3][7]~q\)) # (!\RegFile_inst|Mux88~2_combout\ & ((\RegFile_inst|registers[2][7]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux88~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][7]~q\,
	datac => \RegFile_inst|Mux88~2_combout\,
	datad => \RegFile_inst|registers[2][7]~q\,
	combout => \RegFile_inst|Mux88~3_combout\);

-- Location: LCCOMB_X42_Y21_N18
\RegFile_inst|Mux88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~0_combout\ = (rd_addr(0) & (rd_addr(1))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][7]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][7]~q\,
	datad => \RegFile_inst|registers[4][7]~q\,
	combout => \RegFile_inst|Mux88~0_combout\);

-- Location: LCCOMB_X44_Y23_N0
\RegFile_inst|Mux88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux88~0_combout\ & ((\RegFile_inst|registers[7][7]~q\))) # (!\RegFile_inst|Mux88~0_combout\ & (\RegFile_inst|registers[5][7]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][7]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][7]~q\,
	datad => \RegFile_inst|Mux88~0_combout\,
	combout => \RegFile_inst|Mux88~1_combout\);

-- Location: LCCOMB_X44_Y23_N28
\RegFile_inst|Mux88~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux88~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux88~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux88~3_combout\,
	datad => \RegFile_inst|Mux88~1_combout\,
	combout => \RegFile_inst|Mux88~4_combout\);

-- Location: LCCOMB_X47_Y1_N10
\output~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~72_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux88~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux88~4_combout\,
	combout => \output~72_combout\);

-- Location: FF_X47_Y1_N11
\output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~72_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[7]~reg0_q\);

-- Location: LCCOMB_X44_Y21_N10
\RegFile_inst|Mux87~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][8]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][8]~q\,
	datad => \RegFile_inst|registers[1][8]~q\,
	combout => \RegFile_inst|Mux87~2_combout\);

-- Location: LCCOMB_X44_Y23_N24
\RegFile_inst|Mux87~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux87~2_combout\ & (\RegFile_inst|registers[3][8]~q\)) # (!\RegFile_inst|Mux87~2_combout\ & ((\RegFile_inst|registers[2][8]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux87~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][8]~q\,
	datac => \RegFile_inst|Mux87~2_combout\,
	datad => \RegFile_inst|registers[2][8]~q\,
	combout => \RegFile_inst|Mux87~3_combout\);

-- Location: LCCOMB_X43_Y20_N30
\RegFile_inst|Mux87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][8]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][8]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][8]~q\,
	datac => \RegFile_inst|registers[6][8]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux87~0_combout\);

-- Location: LCCOMB_X44_Y23_N10
\RegFile_inst|Mux87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux87~0_combout\ & ((\RegFile_inst|registers[7][8]~q\))) # (!\RegFile_inst|Mux87~0_combout\ & (\RegFile_inst|registers[5][8]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][8]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][8]~q\,
	datad => \RegFile_inst|Mux87~0_combout\,
	combout => \RegFile_inst|Mux87~1_combout\);

-- Location: LCCOMB_X44_Y23_N30
\RegFile_inst|Mux87~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux87~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux87~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux87~3_combout\,
	datad => \RegFile_inst|Mux87~1_combout\,
	combout => \RegFile_inst|Mux87~4_combout\);

-- Location: LCCOMB_X47_Y1_N16
\output~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~73_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux87~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux87~4_combout\,
	combout => \output~73_combout\);

-- Location: FF_X47_Y1_N17
\output[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~73_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[8]~reg0_q\);

-- Location: LCCOMB_X43_Y19_N0
\RegFile_inst|Mux86~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][9]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][9]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][9]~q\,
	datac => \RegFile_inst|registers[0][9]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux86~2_combout\);

-- Location: LCCOMB_X43_Y19_N14
\RegFile_inst|Mux86~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~3_combout\ = (\RegFile_inst|Mux86~2_combout\ & (((\RegFile_inst|registers[3][9]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux86~2_combout\ & (\RegFile_inst|registers[2][9]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][9]~q\,
	datab => \RegFile_inst|Mux86~2_combout\,
	datac => \RegFile_inst|registers[3][9]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux86~3_combout\);

-- Location: LCCOMB_X42_Y21_N4
\RegFile_inst|Mux86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][9]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][9]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][9]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][9]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux86~0_combout\);

-- Location: LCCOMB_X44_Y23_N4
\RegFile_inst|Mux86~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux86~0_combout\ & ((\RegFile_inst|registers[7][9]~q\))) # (!\RegFile_inst|Mux86~0_combout\ & (\RegFile_inst|registers[5][9]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][9]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][9]~q\,
	datad => \RegFile_inst|Mux86~0_combout\,
	combout => \RegFile_inst|Mux86~1_combout\);

-- Location: LCCOMB_X44_Y19_N6
\RegFile_inst|Mux86~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux86~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux86~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux86~3_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux86~1_combout\,
	combout => \RegFile_inst|Mux86~4_combout\);

-- Location: LCCOMB_X47_Y1_N18
\output~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~74_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux86~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux86~4_combout\,
	combout => \output~74_combout\);

-- Location: FF_X47_Y1_N19
\output[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~74_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[9]~reg0_q\);

-- Location: LCCOMB_X44_Y21_N4
\RegFile_inst|Mux85~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][10]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][10]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][10]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][10]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux85~2_combout\);

-- Location: LCCOMB_X43_Y21_N18
\RegFile_inst|Mux85~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux85~2_combout\ & (\RegFile_inst|registers[3][10]~q\)) # (!\RegFile_inst|Mux85~2_combout\ & ((\RegFile_inst|registers[2][10]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux85~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][10]~q\,
	datac => \RegFile_inst|registers[2][10]~q\,
	datad => \RegFile_inst|Mux85~2_combout\,
	combout => \RegFile_inst|Mux85~3_combout\);

-- Location: LCCOMB_X42_Y21_N22
\RegFile_inst|Mux85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][10]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][10]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][10]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][10]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux85~0_combout\);

-- Location: LCCOMB_X44_Y21_N6
\RegFile_inst|Mux85~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~1_combout\ = (\RegFile_inst|Mux85~0_combout\ & ((\RegFile_inst|registers[7][10]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux85~0_combout\ & (((rd_addr(0) & \RegFile_inst|registers[5][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux85~0_combout\,
	datab => \RegFile_inst|registers[7][10]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|registers[5][10]~q\,
	combout => \RegFile_inst|Mux85~1_combout\);

-- Location: LCCOMB_X44_Y21_N28
\RegFile_inst|Mux85~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux85~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux85~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux85~3_combout\,
	datad => \RegFile_inst|Mux85~1_combout\,
	combout => \RegFile_inst|Mux85~4_combout\);

-- Location: LCCOMB_X47_Y1_N20
\output~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~75_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux85~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux85~4_combout\,
	combout => \output~75_combout\);

-- Location: FF_X47_Y1_N21
\output[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~75_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[10]~reg0_q\);

-- Location: LCCOMB_X46_Y21_N4
\RegFile_inst|Mux84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][11]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][11]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][11]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][11]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux84~0_combout\);

-- Location: LCCOMB_X45_Y21_N4
\RegFile_inst|Mux84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~1_combout\ = (\RegFile_inst|Mux84~0_combout\ & (((\RegFile_inst|registers[7][11]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux84~0_combout\ & (\RegFile_inst|registers[5][11]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][11]~q\,
	datab => \RegFile_inst|Mux84~0_combout\,
	datac => \RegFile_inst|registers[7][11]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux84~1_combout\);

-- Location: LCCOMB_X44_Y19_N20
\RegFile_inst|Mux84~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][11]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][11]~q\,
	datad => \RegFile_inst|registers[1][11]~q\,
	combout => \RegFile_inst|Mux84~2_combout\);

-- Location: LCCOMB_X44_Y19_N2
\RegFile_inst|Mux84~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~3_combout\ = (\RegFile_inst|Mux84~2_combout\ & (((\RegFile_inst|registers[3][11]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux84~2_combout\ & (\RegFile_inst|registers[2][11]~q\ & (rd_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][11]~q\,
	datab => \RegFile_inst|Mux84~2_combout\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[3][11]~q\,
	combout => \RegFile_inst|Mux84~3_combout\);

-- Location: LCCOMB_X44_Y19_N28
\RegFile_inst|Mux84~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux84~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux84~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux84~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux84~3_combout\,
	combout => \RegFile_inst|Mux84~4_combout\);

-- Location: LCCOMB_X47_Y1_N30
\output~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~76_combout\ = (\RegFile_inst|Mux84~4_combout\) # ((opcode(0)) # ((opcode(2)) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux84~4_combout\,
	datab => opcode(0),
	datac => opcode(1),
	datad => opcode(2),
	combout => \output~76_combout\);

-- Location: FF_X47_Y1_N31
\output[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~76_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[11]~reg0_q\);

-- Location: LCCOMB_X44_Y20_N28
\RegFile_inst|Mux83~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][12]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[1][12]~q\,
	datac => \RegFile_inst|registers[0][12]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux83~2_combout\);

-- Location: LCCOMB_X44_Y20_N8
\RegFile_inst|Mux83~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux83~2_combout\ & (\RegFile_inst|registers[3][12]~q\)) # (!\RegFile_inst|Mux83~2_combout\ & ((\RegFile_inst|registers[2][12]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][12]~q\,
	datab => \RegFile_inst|registers[2][12]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|Mux83~2_combout\,
	combout => \RegFile_inst|Mux83~3_combout\);

-- Location: LCCOMB_X46_Y21_N12
\RegFile_inst|Mux83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][12]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][12]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][12]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][12]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux83~0_combout\);

-- Location: LCCOMB_X43_Y22_N12
\RegFile_inst|Mux83~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux83~0_combout\ & ((\RegFile_inst|registers[7][12]~q\))) # (!\RegFile_inst|Mux83~0_combout\ & (\RegFile_inst|registers[5][12]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][12]~q\,
	datab => \RegFile_inst|registers[7][12]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|Mux83~0_combout\,
	combout => \RegFile_inst|Mux83~1_combout\);

-- Location: LCCOMB_X44_Y20_N30
\RegFile_inst|Mux83~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux83~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux83~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux83~3_combout\,
	datad => \RegFile_inst|Mux83~1_combout\,
	combout => \RegFile_inst|Mux83~4_combout\);

-- Location: LCCOMB_X38_Y1_N28
\output~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~77_combout\ = (\RegFile_inst|Mux83~4_combout\) # (((opcode(0)) # (opcode(2))) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux83~4_combout\,
	datab => opcode(1),
	datac => opcode(0),
	datad => opcode(2),
	combout => \output~77_combout\);

-- Location: FF_X38_Y1_N29
\output[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~77_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[12]~reg0_q\);

-- Location: LCCOMB_X40_Y19_N12
\RegFile_inst|Mux82~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][13]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][13]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][13]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux82~2_combout\);

-- Location: LCCOMB_X40_Y19_N24
\RegFile_inst|Mux82~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~3_combout\ = (\RegFile_inst|Mux82~2_combout\ & (((\RegFile_inst|registers[3][13]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux82~2_combout\ & (\RegFile_inst|registers[2][13]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux82~2_combout\,
	datab => \RegFile_inst|registers[2][13]~q\,
	datac => \RegFile_inst|registers[3][13]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux82~3_combout\);

-- Location: LCCOMB_X46_Y21_N24
\RegFile_inst|Mux82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][13]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][13]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][13]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][13]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux82~0_combout\);

-- Location: LCCOMB_X45_Y19_N18
\RegFile_inst|Mux82~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~1_combout\ = (\RegFile_inst|Mux82~0_combout\ & (((\RegFile_inst|registers[7][13]~q\)) # (!rd_addr(0)))) # (!\RegFile_inst|Mux82~0_combout\ & (rd_addr(0) & (\RegFile_inst|registers[5][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux82~0_combout\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][13]~q\,
	datad => \RegFile_inst|registers[7][13]~q\,
	combout => \RegFile_inst|Mux82~1_combout\);

-- Location: LCCOMB_X41_Y19_N12
\RegFile_inst|Mux82~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux82~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux82~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux82~3_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux82~1_combout\,
	combout => \RegFile_inst|Mux82~4_combout\);

-- Location: LCCOMB_X38_Y1_N22
\output~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~78_combout\ = (opcode(2)) # (((opcode(0)) # (\RegFile_inst|Mux82~4_combout\)) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datac => opcode(0),
	datad => \RegFile_inst|Mux82~4_combout\,
	combout => \output~78_combout\);

-- Location: FF_X38_Y1_N23
\output[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~78_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[13]~reg0_q\);

-- Location: LCCOMB_X44_Y20_N12
\RegFile_inst|Mux81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][14]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[1][14]~q\,
	datac => \RegFile_inst|registers[0][14]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux81~2_combout\);

-- Location: LCCOMB_X44_Y20_N14
\RegFile_inst|Mux81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux81~2_combout\ & ((\RegFile_inst|registers[3][14]~q\))) # (!\RegFile_inst|Mux81~2_combout\ & (\RegFile_inst|registers[2][14]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[2][14]~q\,
	datac => \RegFile_inst|registers[3][14]~q\,
	datad => \RegFile_inst|Mux81~2_combout\,
	combout => \RegFile_inst|Mux81~3_combout\);

-- Location: LCCOMB_X46_Y21_N20
\RegFile_inst|Mux81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][14]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][14]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][14]~q\,
	datac => \RegFile_inst|registers[6][14]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux81~0_combout\);

-- Location: LCCOMB_X43_Y22_N10
\RegFile_inst|Mux81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux81~0_combout\ & (\RegFile_inst|registers[7][14]~q\)) # (!\RegFile_inst|Mux81~0_combout\ & ((\RegFile_inst|registers[5][14]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[7][14]~q\,
	datac => \RegFile_inst|Mux81~0_combout\,
	datad => \RegFile_inst|registers[5][14]~q\,
	combout => \RegFile_inst|Mux81~1_combout\);

-- Location: LCCOMB_X44_Y20_N10
\RegFile_inst|Mux81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux81~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux81~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux81~3_combout\,
	datad => \RegFile_inst|Mux81~1_combout\,
	combout => \RegFile_inst|Mux81~4_combout\);

-- Location: LCCOMB_X38_Y1_N12
\output~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~79_combout\ = (opcode(2)) # (((\RegFile_inst|Mux81~4_combout\) # (opcode(0))) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datac => \RegFile_inst|Mux81~4_combout\,
	datad => opcode(0),
	combout => \output~79_combout\);

-- Location: FF_X38_Y1_N13
\output[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~79_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[14]~reg0_q\);

-- Location: LCCOMB_X42_Y19_N18
\RegFile_inst|Mux80~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~2_combout\ = (rd_addr(0) & (((rd_addr(1)) # (\RegFile_inst|registers[1][15]~q\)))) # (!rd_addr(0) & (\RegFile_inst|registers[0][15]~q\ & (!rd_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][15]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[1][15]~q\,
	combout => \RegFile_inst|Mux80~2_combout\);

-- Location: LCCOMB_X41_Y19_N30
\RegFile_inst|Mux80~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux80~2_combout\ & ((\RegFile_inst|registers[3][15]~q\))) # (!\RegFile_inst|Mux80~2_combout\ & (\RegFile_inst|registers[2][15]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][15]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][15]~q\,
	datad => \RegFile_inst|Mux80~2_combout\,
	combout => \RegFile_inst|Mux80~3_combout\);

-- Location: LCCOMB_X46_Y21_N16
\RegFile_inst|Mux80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][15]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][15]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][15]~q\,
	datac => \RegFile_inst|registers[6][15]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux80~0_combout\);

-- Location: LCCOMB_X45_Y21_N20
\RegFile_inst|Mux80~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~1_combout\ = (\RegFile_inst|Mux80~0_combout\ & (((\RegFile_inst|registers[7][15]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux80~0_combout\ & (\RegFile_inst|registers[5][15]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][15]~q\,
	datab => \RegFile_inst|Mux80~0_combout\,
	datac => \RegFile_inst|registers[7][15]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux80~1_combout\);

-- Location: LCCOMB_X45_Y19_N4
\RegFile_inst|Mux80~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux80~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux80~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux80~3_combout\,
	datad => \RegFile_inst|Mux80~1_combout\,
	combout => \RegFile_inst|Mux80~4_combout\);

-- Location: LCCOMB_X47_Y1_N8
\output~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~80_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux80~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux80~4_combout\,
	combout => \output~80_combout\);

-- Location: FF_X47_Y1_N9
\output[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~80_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[15]~reg0_q\);

-- Location: LCCOMB_X46_Y21_N8
\RegFile_inst|Mux79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~0_combout\ = (rd_addr(0) & (rd_addr(1))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][16]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][16]~q\,
	datad => \RegFile_inst|registers[4][16]~q\,
	combout => \RegFile_inst|Mux79~0_combout\);

-- Location: LCCOMB_X46_Y21_N30
\RegFile_inst|Mux79~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux79~0_combout\ & ((\RegFile_inst|registers[7][16]~q\))) # (!\RegFile_inst|Mux79~0_combout\ & (\RegFile_inst|registers[5][16]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][16]~q\,
	datac => \RegFile_inst|registers[7][16]~q\,
	datad => \RegFile_inst|Mux79~0_combout\,
	combout => \RegFile_inst|Mux79~1_combout\);

-- Location: LCCOMB_X44_Y20_N16
\RegFile_inst|Mux79~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][16]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][16]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][16]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux79~2_combout\);

-- Location: LCCOMB_X45_Y20_N20
\RegFile_inst|Mux79~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~3_combout\ = (\RegFile_inst|Mux79~2_combout\ & (((\RegFile_inst|registers[3][16]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux79~2_combout\ & (\RegFile_inst|registers[2][16]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][16]~q\,
	datab => \RegFile_inst|registers[3][16]~q\,
	datac => \RegFile_inst|Mux79~2_combout\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux79~3_combout\);

-- Location: LCCOMB_X46_Y20_N8
\RegFile_inst|Mux79~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux79~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux79~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux79~1_combout\,
	datad => \RegFile_inst|Mux79~3_combout\,
	combout => \RegFile_inst|Mux79~4_combout\);

-- Location: LCCOMB_X47_Y1_N14
\output~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~81_combout\ = ((opcode(0)) # ((\RegFile_inst|Mux79~4_combout\) # (opcode(2)))) # (!opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(0),
	datac => \RegFile_inst|Mux79~4_combout\,
	datad => opcode(2),
	combout => \output~81_combout\);

-- Location: FF_X47_Y1_N15
\output[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~81_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[16]~reg0_q\);

-- Location: LCCOMB_X46_Y21_N28
\RegFile_inst|Mux78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][17]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][17]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][17]~q\,
	datac => \RegFile_inst|registers[6][17]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux78~0_combout\);

-- Location: LCCOMB_X45_Y21_N14
\RegFile_inst|Mux78~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux78~0_combout\ & (\RegFile_inst|registers[7][17]~q\)) # (!\RegFile_inst|Mux78~0_combout\ & ((\RegFile_inst|registers[5][17]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[7][17]~q\,
	datac => \RegFile_inst|registers[5][17]~q\,
	datad => \RegFile_inst|Mux78~0_combout\,
	combout => \RegFile_inst|Mux78~1_combout\);

-- Location: LCCOMB_X44_Y20_N24
\RegFile_inst|Mux78~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][17]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[1][17]~q\,
	datac => \RegFile_inst|registers[0][17]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux78~2_combout\);

-- Location: LCCOMB_X44_Y20_N2
\RegFile_inst|Mux78~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux78~2_combout\ & ((\RegFile_inst|registers[3][17]~q\))) # (!\RegFile_inst|Mux78~2_combout\ & (\RegFile_inst|registers[2][17]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[2][17]~q\,
	datac => \RegFile_inst|registers[3][17]~q\,
	datad => \RegFile_inst|Mux78~2_combout\,
	combout => \RegFile_inst|Mux78~3_combout\);

-- Location: LCCOMB_X45_Y20_N22
\RegFile_inst|Mux78~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux78~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux78~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux78~1_combout\,
	datad => \RegFile_inst|Mux78~3_combout\,
	combout => \RegFile_inst|Mux78~4_combout\);

-- Location: LCCOMB_X38_Y1_N18
\output~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~82_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux78~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux78~4_combout\,
	combout => \output~82_combout\);

-- Location: FF_X38_Y1_N19
\output[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~82_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[17]~reg0_q\);

-- Location: LCCOMB_X39_Y20_N16
\RegFile_inst|Mux77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][18]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][18]~q\,
	datad => \RegFile_inst|registers[4][18]~q\,
	combout => \RegFile_inst|Mux77~0_combout\);

-- Location: LCCOMB_X38_Y20_N4
\RegFile_inst|Mux77~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~1_combout\ = (\RegFile_inst|Mux77~0_combout\ & (((\RegFile_inst|registers[7][18]~q\)) # (!rd_addr(0)))) # (!\RegFile_inst|Mux77~0_combout\ & (rd_addr(0) & (\RegFile_inst|registers[5][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux77~0_combout\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][18]~q\,
	datad => \RegFile_inst|registers[7][18]~q\,
	combout => \RegFile_inst|Mux77~1_combout\);

-- Location: LCCOMB_X41_Y20_N20
\RegFile_inst|Mux77~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][18]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][18]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][18]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][18]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux77~2_combout\);

-- Location: LCCOMB_X38_Y20_N18
\RegFile_inst|Mux77~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux77~2_combout\ & (\RegFile_inst|registers[3][18]~q\)) # (!\RegFile_inst|Mux77~2_combout\ & ((\RegFile_inst|registers[2][18]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][18]~q\,
	datac => \RegFile_inst|registers[2][18]~q\,
	datad => \RegFile_inst|Mux77~2_combout\,
	combout => \RegFile_inst|Mux77~3_combout\);

-- Location: LCCOMB_X38_Y20_N10
\RegFile_inst|Mux77~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux77~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux77~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux77~1_combout\,
	datad => \RegFile_inst|Mux77~3_combout\,
	combout => \RegFile_inst|Mux77~4_combout\);

-- Location: LCCOMB_X38_Y1_N8
\output~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~83_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux77~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux77~4_combout\,
	combout => \output~83_combout\);

-- Location: FF_X38_Y1_N9
\output[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~83_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[18]~reg0_q\);

-- Location: LCCOMB_X42_Y21_N0
\RegFile_inst|Mux76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][19]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][19]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][19]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][19]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux76~0_combout\);

-- Location: LCCOMB_X42_Y21_N12
\RegFile_inst|Mux76~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux76~0_combout\ & ((\RegFile_inst|registers[7][19]~q\))) # (!\RegFile_inst|Mux76~0_combout\ & (\RegFile_inst|registers[5][19]~q\)))) # (!rd_addr(0) & (\RegFile_inst|Mux76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|Mux76~0_combout\,
	datac => \RegFile_inst|registers[5][19]~q\,
	datad => \RegFile_inst|registers[7][19]~q\,
	combout => \RegFile_inst|Mux76~1_combout\);

-- Location: LCCOMB_X42_Y21_N6
\RegFile_inst|Mux76~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][19]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((!rd_addr(1) & \RegFile_inst|registers[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][19]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[0][19]~q\,
	combout => \RegFile_inst|Mux76~2_combout\);

-- Location: LCCOMB_X42_Y21_N16
\RegFile_inst|Mux76~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux76~2_combout\ & ((\RegFile_inst|registers[3][19]~q\))) # (!\RegFile_inst|Mux76~2_combout\ & (\RegFile_inst|registers[2][19]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux76~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][19]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][19]~q\,
	datad => \RegFile_inst|Mux76~2_combout\,
	combout => \RegFile_inst|Mux76~3_combout\);

-- Location: LCCOMB_X42_Y20_N24
\RegFile_inst|Mux76~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux76~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux76~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux76~1_combout\,
	datad => \RegFile_inst|Mux76~3_combout\,
	combout => \RegFile_inst|Mux76~4_combout\);

-- Location: LCCOMB_X38_Y1_N10
\output~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~84_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux76~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux76~4_combout\,
	combout => \output~84_combout\);

-- Location: FF_X38_Y1_N11
\output[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~84_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[19]~reg0_q\);

-- Location: LCCOMB_X42_Y21_N8
\RegFile_inst|Mux75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][20]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][20]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][20]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][20]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux75~0_combout\);

-- Location: LCCOMB_X45_Y21_N2
\RegFile_inst|Mux75~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~1_combout\ = (\RegFile_inst|Mux75~0_combout\ & (((\RegFile_inst|registers[7][20]~q\)) # (!rd_addr(0)))) # (!\RegFile_inst|Mux75~0_combout\ & (rd_addr(0) & (\RegFile_inst|registers[5][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux75~0_combout\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][20]~q\,
	datad => \RegFile_inst|registers[7][20]~q\,
	combout => \RegFile_inst|Mux75~1_combout\);

-- Location: LCCOMB_X40_Y21_N0
\RegFile_inst|Mux75~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][20]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[1][20]~q\,
	datac => \RegFile_inst|registers[0][20]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux75~2_combout\);

-- Location: LCCOMB_X40_Y21_N2
\RegFile_inst|Mux75~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux75~2_combout\ & ((\RegFile_inst|registers[3][20]~q\))) # (!\RegFile_inst|Mux75~2_combout\ & (\RegFile_inst|registers[2][20]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux75~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][20]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][20]~q\,
	datad => \RegFile_inst|Mux75~2_combout\,
	combout => \RegFile_inst|Mux75~3_combout\);

-- Location: LCCOMB_X40_Y21_N12
\RegFile_inst|Mux75~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux75~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux75~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux75~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux75~3_combout\,
	combout => \RegFile_inst|Mux75~4_combout\);

-- Location: LCCOMB_X38_Y1_N16
\output~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~85_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux75~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux75~4_combout\,
	combout => \output~85_combout\);

-- Location: FF_X38_Y1_N17
\output[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~85_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[20]~reg0_q\);

-- Location: LCCOMB_X43_Y20_N8
\RegFile_inst|Mux74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][21]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][21]~q\,
	datad => \RegFile_inst|registers[4][21]~q\,
	combout => \RegFile_inst|Mux74~0_combout\);

-- Location: LCCOMB_X39_Y20_N30
\RegFile_inst|Mux74~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux74~0_combout\ & (\RegFile_inst|registers[7][21]~q\)) # (!\RegFile_inst|Mux74~0_combout\ & ((\RegFile_inst|registers[5][21]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][21]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][21]~q\,
	datad => \RegFile_inst|Mux74~0_combout\,
	combout => \RegFile_inst|Mux74~1_combout\);

-- Location: LCCOMB_X40_Y21_N22
\RegFile_inst|Mux74~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][21]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][21]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[0][21]~q\,
	datac => \RegFile_inst|registers[1][21]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux74~2_combout\);

-- Location: LCCOMB_X40_Y21_N4
\RegFile_inst|Mux74~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~3_combout\ = (\RegFile_inst|Mux74~2_combout\ & (((\RegFile_inst|registers[3][21]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux74~2_combout\ & (rd_addr(1) & ((\RegFile_inst|registers[2][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux74~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][21]~q\,
	datad => \RegFile_inst|registers[2][21]~q\,
	combout => \RegFile_inst|Mux74~3_combout\);

-- Location: LCCOMB_X40_Y21_N16
\RegFile_inst|Mux74~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux74~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux74~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux74~1_combout\,
	datab => \RegFile_inst|Mux74~3_combout\,
	datad => rd_addr(2),
	combout => \RegFile_inst|Mux74~4_combout\);

-- Location: LCCOMB_X41_Y24_N28
\output~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~86_combout\ = (opcode(0)) # (((opcode(2)) # (\RegFile_inst|Mux74~4_combout\)) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \RegFile_inst|Mux74~4_combout\,
	combout => \output~86_combout\);

-- Location: FF_X41_Y24_N29
\output[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~86_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[21]~reg0_q\);

-- Location: LCCOMB_X45_Y21_N26
\RegFile_inst|Mux73~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][22]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][22]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][22]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux73~2_combout\);

-- Location: LCCOMB_X44_Y19_N4
\RegFile_inst|Mux73~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux73~2_combout\ & (\RegFile_inst|registers[3][22]~q\)) # (!\RegFile_inst|Mux73~2_combout\ & ((\RegFile_inst|registers[2][22]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux73~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][22]~q\,
	datac => \RegFile_inst|registers[2][22]~q\,
	datad => \RegFile_inst|Mux73~2_combout\,
	combout => \RegFile_inst|Mux73~3_combout\);

-- Location: LCCOMB_X39_Y20_N28
\RegFile_inst|Mux73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][22]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][22]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][22]~q\,
	datac => \RegFile_inst|registers[6][22]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux73~0_combout\);

-- Location: LCCOMB_X38_Y20_N12
\RegFile_inst|Mux73~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux73~0_combout\ & (\RegFile_inst|registers[7][22]~q\)) # (!\RegFile_inst|Mux73~0_combout\ & ((\RegFile_inst|registers[5][22]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][22]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][22]~q\,
	datad => \RegFile_inst|Mux73~0_combout\,
	combout => \RegFile_inst|Mux73~1_combout\);

-- Location: LCCOMB_X39_Y20_N10
\RegFile_inst|Mux73~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux73~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux73~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux73~3_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux73~1_combout\,
	combout => \RegFile_inst|Mux73~4_combout\);

-- Location: LCCOMB_X38_Y1_N30
\output~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~87_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux73~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux73~4_combout\,
	combout => \output~87_combout\);

-- Location: FF_X38_Y1_N31
\output[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~87_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[22]~reg0_q\);

-- Location: LCCOMB_X39_Y20_N6
\RegFile_inst|Mux72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][23]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][23]~q\,
	datad => \RegFile_inst|registers[4][23]~q\,
	combout => \RegFile_inst|Mux72~0_combout\);

-- Location: LCCOMB_X39_Y20_N8
\RegFile_inst|Mux72~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~1_combout\ = (\RegFile_inst|Mux72~0_combout\ & ((\RegFile_inst|registers[7][23]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux72~0_combout\ & (((\RegFile_inst|registers[5][23]~q\ & rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux72~0_combout\,
	datab => \RegFile_inst|registers[7][23]~q\,
	datac => \RegFile_inst|registers[5][23]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux72~1_combout\);

-- Location: LCCOMB_X40_Y21_N24
\RegFile_inst|Mux72~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][23]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][23]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[0][23]~q\,
	datac => \RegFile_inst|registers[1][23]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux72~2_combout\);

-- Location: LCCOMB_X40_Y21_N18
\RegFile_inst|Mux72~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux72~2_combout\ & ((\RegFile_inst|registers[3][23]~q\))) # (!\RegFile_inst|Mux72~2_combout\ & (\RegFile_inst|registers[2][23]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux72~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[2][23]~q\,
	datac => \RegFile_inst|registers[3][23]~q\,
	datad => \RegFile_inst|Mux72~2_combout\,
	combout => \RegFile_inst|Mux72~3_combout\);

-- Location: LCCOMB_X40_Y20_N8
\RegFile_inst|Mux72~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux72~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux72~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux72~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux72~3_combout\,
	combout => \RegFile_inst|Mux72~4_combout\);

-- Location: LCCOMB_X38_Y1_N4
\output~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~88_combout\ = (opcode(0)) # (((opcode(2)) # (\RegFile_inst|Mux72~4_combout\)) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => opcode(1),
	datac => opcode(2),
	datad => \RegFile_inst|Mux72~4_combout\,
	combout => \output~88_combout\);

-- Location: FF_X38_Y1_N5
\output[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~88_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[23]~reg0_q\);

-- Location: LCCOMB_X38_Y20_N28
\RegFile_inst|Mux71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][24]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][24]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][24]~q\,
	datac => \RegFile_inst|registers[4][24]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux71~0_combout\);

-- Location: LCCOMB_X38_Y20_N2
\RegFile_inst|Mux71~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux71~0_combout\ & (\RegFile_inst|registers[7][24]~q\)) # (!\RegFile_inst|Mux71~0_combout\ & ((\RegFile_inst|registers[5][24]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[7][24]~q\,
	datac => \RegFile_inst|registers[5][24]~q\,
	datad => \RegFile_inst|Mux71~0_combout\,
	combout => \RegFile_inst|Mux71~1_combout\);

-- Location: LCCOMB_X40_Y19_N2
\RegFile_inst|Mux71~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][24]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][24]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][24]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux71~2_combout\);

-- Location: LCCOMB_X40_Y19_N10
\RegFile_inst|Mux71~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux71~2_combout\ & ((\RegFile_inst|registers[3][24]~q\))) # (!\RegFile_inst|Mux71~2_combout\ & (\RegFile_inst|registers[2][24]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[2][24]~q\,
	datac => \RegFile_inst|registers[3][24]~q\,
	datad => \RegFile_inst|Mux71~2_combout\,
	combout => \RegFile_inst|Mux71~3_combout\);

-- Location: LCCOMB_X39_Y20_N4
\RegFile_inst|Mux71~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux71~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux71~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux71~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux71~3_combout\,
	combout => \RegFile_inst|Mux71~4_combout\);

-- Location: LCCOMB_X38_Y1_N14
\output~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~89_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux71~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux71~4_combout\,
	combout => \output~89_combout\);

-- Location: FF_X38_Y1_N15
\output[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~89_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[24]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N4
\RegFile_inst|Mux70~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][25]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((!rd_addr(1) & \RegFile_inst|registers[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][25]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[0][25]~q\,
	combout => \RegFile_inst|Mux70~2_combout\);

-- Location: LCCOMB_X39_Y21_N30
\RegFile_inst|Mux70~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux70~2_combout\ & ((\RegFile_inst|registers[3][25]~q\))) # (!\RegFile_inst|Mux70~2_combout\ & (\RegFile_inst|registers[2][25]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][25]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|Mux70~2_combout\,
	datad => \RegFile_inst|registers[3][25]~q\,
	combout => \RegFile_inst|Mux70~3_combout\);

-- Location: LCCOMB_X39_Y20_N24
\RegFile_inst|Mux70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][25]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][25]~q\,
	datad => \RegFile_inst|registers[4][25]~q\,
	combout => \RegFile_inst|Mux70~0_combout\);

-- Location: LCCOMB_X39_Y20_N14
\RegFile_inst|Mux70~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~1_combout\ = (\RegFile_inst|Mux70~0_combout\ & ((\RegFile_inst|registers[7][25]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux70~0_combout\ & (((\RegFile_inst|registers[5][25]~q\ & rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][25]~q\,
	datab => \RegFile_inst|Mux70~0_combout\,
	datac => \RegFile_inst|registers[5][25]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux70~1_combout\);

-- Location: LCCOMB_X40_Y20_N26
\RegFile_inst|Mux70~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux70~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux70~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux70~3_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux70~1_combout\,
	combout => \RegFile_inst|Mux70~4_combout\);

-- Location: LCCOMB_X47_Y1_N4
\output~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~90_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux70~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux70~4_combout\,
	combout => \output~90_combout\);

-- Location: FF_X47_Y1_N5
\output[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~90_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[25]~reg0_q\);

-- Location: LCCOMB_X39_Y20_N20
\RegFile_inst|Mux69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][26]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][26]~q\,
	datad => \RegFile_inst|registers[4][26]~q\,
	combout => \RegFile_inst|Mux69~0_combout\);

-- Location: LCCOMB_X39_Y19_N2
\RegFile_inst|Mux69~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux69~0_combout\ & (\RegFile_inst|registers[7][26]~q\)) # (!\RegFile_inst|Mux69~0_combout\ & ((\RegFile_inst|registers[5][26]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][26]~q\,
	datab => \RegFile_inst|registers[5][26]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|Mux69~0_combout\,
	combout => \RegFile_inst|Mux69~1_combout\);

-- Location: LCCOMB_X40_Y19_N22
\RegFile_inst|Mux69~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][26]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][26]~q\,
	datad => \RegFile_inst|registers[0][26]~q\,
	combout => \RegFile_inst|Mux69~2_combout\);

-- Location: LCCOMB_X40_Y19_N18
\RegFile_inst|Mux69~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~3_combout\ = (\RegFile_inst|Mux69~2_combout\ & (((\RegFile_inst|registers[3][26]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux69~2_combout\ & (rd_addr(1) & ((\RegFile_inst|registers[2][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux69~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][26]~q\,
	datad => \RegFile_inst|registers[2][26]~q\,
	combout => \RegFile_inst|Mux69~3_combout\);

-- Location: LCCOMB_X39_Y19_N8
\RegFile_inst|Mux69~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux69~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux69~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux69~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux69~3_combout\,
	combout => \RegFile_inst|Mux69~4_combout\);

-- Location: LCCOMB_X38_Y1_N0
\output~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~91_combout\ = (\RegFile_inst|Mux69~4_combout\) # (((opcode(0)) # (opcode(2))) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux69~4_combout\,
	datab => opcode(1),
	datac => opcode(0),
	datad => opcode(2),
	combout => \output~91_combout\);

-- Location: FF_X38_Y1_N1
\output[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~91_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[26]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N12
\RegFile_inst|Mux68~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][27]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][27]~q\,
	datab => \RegFile_inst|registers[0][27]~q\,
	datac => rd_addr(1),
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux68~2_combout\);

-- Location: LCCOMB_X39_Y21_N18
\RegFile_inst|Mux68~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~3_combout\ = (\RegFile_inst|Mux68~2_combout\ & ((\RegFile_inst|registers[3][27]~q\) # ((!rd_addr(1))))) # (!\RegFile_inst|Mux68~2_combout\ & (((rd_addr(1) & \RegFile_inst|registers[2][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux68~2_combout\,
	datab => \RegFile_inst|registers[3][27]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[2][27]~q\,
	combout => \RegFile_inst|Mux68~3_combout\);

-- Location: LCCOMB_X39_Y20_N0
\RegFile_inst|Mux68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][27]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][27]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][27]~q\,
	datac => \RegFile_inst|registers[6][27]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux68~0_combout\);

-- Location: LCCOMB_X40_Y20_N0
\RegFile_inst|Mux68~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux68~0_combout\ & ((\RegFile_inst|registers[7][27]~q\))) # (!\RegFile_inst|Mux68~0_combout\ & (\RegFile_inst|registers[5][27]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][27]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][27]~q\,
	datad => \RegFile_inst|Mux68~0_combout\,
	combout => \RegFile_inst|Mux68~1_combout\);

-- Location: LCCOMB_X40_Y20_N14
\RegFile_inst|Mux68~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux68~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux68~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux68~3_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux68~1_combout\,
	combout => \RegFile_inst|Mux68~4_combout\);

-- Location: LCCOMB_X38_Y1_N26
\output~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~92_combout\ = (opcode(2)) # (((opcode(0)) # (\RegFile_inst|Mux68~4_combout\)) # (!opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datac => opcode(0),
	datad => \RegFile_inst|Mux68~4_combout\,
	combout => \output~92_combout\);

-- Location: FF_X38_Y1_N27
\output[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~92_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[27]~reg0_q\);

-- Location: LCCOMB_X40_Y20_N12
\RegFile_inst|Mux67~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~2_combout\ = (rd_addr(0) & (((rd_addr(1)) # (\RegFile_inst|registers[1][28]~q\)))) # (!rd_addr(0) & (\RegFile_inst|registers[0][28]~q\ & (!rd_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][28]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[1][28]~q\,
	combout => \RegFile_inst|Mux67~2_combout\);

-- Location: LCCOMB_X39_Y22_N26
\RegFile_inst|Mux67~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux67~2_combout\ & (\RegFile_inst|registers[3][28]~q\)) # (!\RegFile_inst|Mux67~2_combout\ & ((\RegFile_inst|registers[2][28]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux67~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][28]~q\,
	datac => \RegFile_inst|registers[2][28]~q\,
	datad => \RegFile_inst|Mux67~2_combout\,
	combout => \RegFile_inst|Mux67~3_combout\);

-- Location: LCCOMB_X39_Y20_N12
\RegFile_inst|Mux67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][28]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][28]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[4][28]~q\,
	datac => \RegFile_inst|registers[6][28]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux67~0_combout\);

-- Location: LCCOMB_X40_Y20_N2
\RegFile_inst|Mux67~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~1_combout\ = (\RegFile_inst|Mux67~0_combout\ & (((\RegFile_inst|registers[7][28]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux67~0_combout\ & (\RegFile_inst|registers[5][28]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux67~0_combout\,
	datab => \RegFile_inst|registers[5][28]~q\,
	datac => \RegFile_inst|registers[7][28]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux67~1_combout\);

-- Location: LCCOMB_X40_Y20_N6
\RegFile_inst|Mux67~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux67~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux67~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux67~3_combout\,
	datad => \RegFile_inst|Mux67~1_combout\,
	combout => \RegFile_inst|Mux67~4_combout\);

-- Location: LCCOMB_X38_Y1_N20
\output~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~93_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux67~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux67~4_combout\,
	combout => \output~93_combout\);

-- Location: FF_X38_Y1_N21
\output[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~93_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[28]~reg0_q\);

-- Location: LCCOMB_X38_Y22_N20
\RegFile_inst|Mux66~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][29]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[1][29]~q\,
	datac => \RegFile_inst|registers[0][29]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux66~2_combout\);

-- Location: LCCOMB_X38_Y22_N10
\RegFile_inst|Mux66~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~3_combout\ = (\RegFile_inst|Mux66~2_combout\ & ((\RegFile_inst|registers[3][29]~q\) # ((!rd_addr(1))))) # (!\RegFile_inst|Mux66~2_combout\ & (((rd_addr(1) & \RegFile_inst|registers[2][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][29]~q\,
	datab => \RegFile_inst|Mux66~2_combout\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[2][29]~q\,
	combout => \RegFile_inst|Mux66~3_combout\);

-- Location: LCCOMB_X42_Y21_N26
\RegFile_inst|Mux66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~0_combout\ = (rd_addr(1) & (((\RegFile_inst|registers[6][29]~q\) # (rd_addr(0))))) # (!rd_addr(1) & (\RegFile_inst|registers[4][29]~q\ & ((!rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][29]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[6][29]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux66~0_combout\);

-- Location: LCCOMB_X39_Y23_N2
\RegFile_inst|Mux66~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux66~0_combout\ & ((\RegFile_inst|registers[7][29]~q\))) # (!\RegFile_inst|Mux66~0_combout\ & (\RegFile_inst|registers[5][29]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][29]~q\,
	datab => \RegFile_inst|registers[7][29]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|Mux66~0_combout\,
	combout => \RegFile_inst|Mux66~1_combout\);

-- Location: LCCOMB_X39_Y23_N20
\RegFile_inst|Mux66~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux66~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux66~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux66~3_combout\,
	datad => \RegFile_inst|Mux66~1_combout\,
	combout => \RegFile_inst|Mux66~4_combout\);

-- Location: LCCOMB_X38_Y1_N2
\output~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~94_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux66~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux66~4_combout\,
	combout => \output~94_combout\);

-- Location: FF_X38_Y1_N3
\output[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~94_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[29]~reg0_q\);

-- Location: LCCOMB_X44_Y19_N30
\RegFile_inst|Mux65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][30]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][30]~q\,
	datad => \RegFile_inst|registers[1][30]~q\,
	combout => \RegFile_inst|Mux65~2_combout\);

-- Location: LCCOMB_X44_Y19_N12
\RegFile_inst|Mux65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux65~2_combout\ & (\RegFile_inst|registers[3][30]~q\)) # (!\RegFile_inst|Mux65~2_combout\ & ((\RegFile_inst|registers[2][30]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][30]~q\,
	datab => \RegFile_inst|registers[2][30]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|Mux65~2_combout\,
	combout => \RegFile_inst|Mux65~3_combout\);

-- Location: LCCOMB_X43_Y20_N14
\RegFile_inst|Mux65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][30]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & ((\RegFile_inst|registers[4][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[6][30]~q\,
	datad => \RegFile_inst|registers[4][30]~q\,
	combout => \RegFile_inst|Mux65~0_combout\);

-- Location: LCCOMB_X44_Y19_N14
\RegFile_inst|Mux65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~1_combout\ = (\RegFile_inst|Mux65~0_combout\ & (((\RegFile_inst|registers[7][30]~q\)) # (!rd_addr(0)))) # (!\RegFile_inst|Mux65~0_combout\ & (rd_addr(0) & ((\RegFile_inst|registers[5][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux65~0_combout\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][30]~q\,
	datad => \RegFile_inst|registers[5][30]~q\,
	combout => \RegFile_inst|Mux65~1_combout\);

-- Location: LCCOMB_X44_Y19_N22
\RegFile_inst|Mux65~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux65~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux65~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux65~3_combout\,
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux65~1_combout\,
	combout => \RegFile_inst|Mux65~4_combout\);

-- Location: LCCOMB_X38_Y1_N24
\output~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~95_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux65~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux65~4_combout\,
	combout => \output~95_combout\);

-- Location: FF_X38_Y1_N25
\output[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~95_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[30]~reg0_q\);

-- Location: LCCOMB_X46_Y20_N22
\RegFile_inst|Mux64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & ((\RegFile_inst|registers[6][31]~q\))) # (!rd_addr(1) & (\RegFile_inst|registers[4][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][31]~q\,
	datab => \RegFile_inst|registers[6][31]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux64~0_combout\);

-- Location: LCCOMB_X39_Y19_N14
\RegFile_inst|Mux64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux64~0_combout\ & (\RegFile_inst|registers[7][31]~q\)) # (!\RegFile_inst|Mux64~0_combout\ & ((\RegFile_inst|registers[5][31]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][31]~q\,
	datab => \RegFile_inst|registers[5][31]~q\,
	datac => rd_addr(0),
	datad => \RegFile_inst|Mux64~0_combout\,
	combout => \RegFile_inst|Mux64~1_combout\);

-- Location: LCCOMB_X43_Y19_N20
\RegFile_inst|Mux64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][31]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][31]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][31]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux64~2_combout\);

-- Location: LCCOMB_X41_Y19_N18
\RegFile_inst|Mux64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~3_combout\ = (\RegFile_inst|Mux64~2_combout\ & (((\RegFile_inst|registers[3][31]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux64~2_combout\ & (rd_addr(1) & ((\RegFile_inst|registers[2][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux64~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[3][31]~q\,
	datad => \RegFile_inst|registers[2][31]~q\,
	combout => \RegFile_inst|Mux64~3_combout\);

-- Location: LCCOMB_X40_Y19_N14
\RegFile_inst|Mux64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux64~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux64~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux64~3_combout\,
	combout => \RegFile_inst|Mux64~4_combout\);

-- Location: LCCOMB_X47_Y1_N2
\output~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~96_combout\ = (opcode(2)) # ((opcode(0)) # ((\RegFile_inst|Mux64~4_combout\) # (!opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(0),
	datac => opcode(1),
	datad => \RegFile_inst|Mux64~4_combout\,
	combout => \output~96_combout\);

-- Location: FF_X47_Y1_N3
\output[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output~96_combout\,
	ena => \output[0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[31]~reg0_q\);

-- Location: LCCOMB_X77_Y34_N20
\pc[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[10]~53_combout\ = (pc(10) & (\pc[9]~52\ $ (GND))) # (!pc(10) & (!\pc[9]~52\ & VCC))
-- \pc[10]~54\ = CARRY((pc(10) & !\pc[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(10),
	datad => VCC,
	cin => \pc[9]~52\,
	combout => \pc[10]~53_combout\,
	cout => \pc[10]~54\);

-- Location: FF_X77_Y34_N21
\pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[10]~53_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(10));

-- Location: LCCOMB_X77_Y34_N22
\pc[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[11]~55_combout\ = (pc(11) & (!\pc[10]~54\)) # (!pc(11) & ((\pc[10]~54\) # (GND)))
-- \pc[11]~56\ = CARRY((!\pc[10]~54\) # (!pc(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(11),
	datad => VCC,
	cin => \pc[10]~54\,
	combout => \pc[11]~55_combout\,
	cout => \pc[11]~56\);

-- Location: FF_X77_Y34_N23
\pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[11]~55_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(11));

-- Location: LCCOMB_X77_Y34_N24
\pc[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[12]~57_combout\ = (pc(12) & (\pc[11]~56\ $ (GND))) # (!pc(12) & (!\pc[11]~56\ & VCC))
-- \pc[12]~58\ = CARRY((pc(12) & !\pc[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(12),
	datad => VCC,
	cin => \pc[11]~56\,
	combout => \pc[12]~57_combout\,
	cout => \pc[12]~58\);

-- Location: FF_X77_Y34_N25
\pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[12]~57_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(12));

-- Location: LCCOMB_X77_Y34_N26
\pc[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[13]~59_combout\ = (pc(13) & (!\pc[12]~58\)) # (!pc(13) & ((\pc[12]~58\) # (GND)))
-- \pc[13]~60\ = CARRY((!\pc[12]~58\) # (!pc(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(13),
	datad => VCC,
	cin => \pc[12]~58\,
	combout => \pc[13]~59_combout\,
	cout => \pc[13]~60\);

-- Location: FF_X77_Y34_N27
\pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[13]~59_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(13));

-- Location: LCCOMB_X77_Y34_N28
\pc[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[14]~61_combout\ = (pc(14) & (\pc[13]~60\ $ (GND))) # (!pc(14) & (!\pc[13]~60\ & VCC))
-- \pc[14]~62\ = CARRY((pc(14) & !\pc[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(14),
	datad => VCC,
	cin => \pc[13]~60\,
	combout => \pc[14]~61_combout\,
	cout => \pc[14]~62\);

-- Location: FF_X77_Y34_N29
\pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[14]~61_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(14));

-- Location: LCCOMB_X77_Y34_N30
\pc[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[15]~63_combout\ = (pc(15) & (!\pc[14]~62\)) # (!pc(15) & ((\pc[14]~62\) # (GND)))
-- \pc[15]~64\ = CARRY((!\pc[14]~62\) # (!pc(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(15),
	datad => VCC,
	cin => \pc[14]~62\,
	combout => \pc[15]~63_combout\,
	cout => \pc[15]~64\);

-- Location: FF_X77_Y34_N31
\pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[15]~63_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(15));

-- Location: LCCOMB_X77_Y33_N0
\pc[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[16]~65_combout\ = (pc(16) & (\pc[15]~64\ $ (GND))) # (!pc(16) & (!\pc[15]~64\ & VCC))
-- \pc[16]~66\ = CARRY((pc(16) & !\pc[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(16),
	datad => VCC,
	cin => \pc[15]~64\,
	combout => \pc[16]~65_combout\,
	cout => \pc[16]~66\);

-- Location: FF_X77_Y33_N1
\pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[16]~65_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(16));

-- Location: LCCOMB_X77_Y33_N2
\pc[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[17]~67_combout\ = (pc(17) & (!\pc[16]~66\)) # (!pc(17) & ((\pc[16]~66\) # (GND)))
-- \pc[17]~68\ = CARRY((!\pc[16]~66\) # (!pc(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(17),
	datad => VCC,
	cin => \pc[16]~66\,
	combout => \pc[17]~67_combout\,
	cout => \pc[17]~68\);

-- Location: FF_X77_Y33_N3
\pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[17]~67_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(17));

-- Location: LCCOMB_X77_Y33_N4
\pc[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[18]~69_combout\ = (pc(18) & (\pc[17]~68\ $ (GND))) # (!pc(18) & (!\pc[17]~68\ & VCC))
-- \pc[18]~70\ = CARRY((pc(18) & !\pc[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(18),
	datad => VCC,
	cin => \pc[17]~68\,
	combout => \pc[18]~69_combout\,
	cout => \pc[18]~70\);

-- Location: FF_X77_Y33_N5
\pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[18]~69_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(18));

-- Location: LCCOMB_X77_Y33_N6
\pc[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[19]~71_combout\ = (pc(19) & (!\pc[18]~70\)) # (!pc(19) & ((\pc[18]~70\) # (GND)))
-- \pc[19]~72\ = CARRY((!\pc[18]~70\) # (!pc(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(19),
	datad => VCC,
	cin => \pc[18]~70\,
	combout => \pc[19]~71_combout\,
	cout => \pc[19]~72\);

-- Location: FF_X77_Y33_N7
\pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[19]~71_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(19));

-- Location: LCCOMB_X77_Y33_N8
\pc[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[20]~73_combout\ = (pc(20) & (\pc[19]~72\ $ (GND))) # (!pc(20) & (!\pc[19]~72\ & VCC))
-- \pc[20]~74\ = CARRY((pc(20) & !\pc[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(20),
	datad => VCC,
	cin => \pc[19]~72\,
	combout => \pc[20]~73_combout\,
	cout => \pc[20]~74\);

-- Location: FF_X77_Y33_N9
\pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[20]~73_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(20));

-- Location: LCCOMB_X77_Y33_N10
\pc[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[21]~75_combout\ = (pc(21) & (!\pc[20]~74\)) # (!pc(21) & ((\pc[20]~74\) # (GND)))
-- \pc[21]~76\ = CARRY((!\pc[20]~74\) # (!pc(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(21),
	datad => VCC,
	cin => \pc[20]~74\,
	combout => \pc[21]~75_combout\,
	cout => \pc[21]~76\);

-- Location: FF_X77_Y33_N11
\pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[21]~75_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(21));

-- Location: LCCOMB_X77_Y33_N12
\pc[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[22]~77_combout\ = (pc(22) & (\pc[21]~76\ $ (GND))) # (!pc(22) & (!\pc[21]~76\ & VCC))
-- \pc[22]~78\ = CARRY((pc(22) & !\pc[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(22),
	datad => VCC,
	cin => \pc[21]~76\,
	combout => \pc[22]~77_combout\,
	cout => \pc[22]~78\);

-- Location: FF_X77_Y33_N13
\pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[22]~77_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(22));

-- Location: LCCOMB_X77_Y33_N14
\pc[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[23]~79_combout\ = (pc(23) & (!\pc[22]~78\)) # (!pc(23) & ((\pc[22]~78\) # (GND)))
-- \pc[23]~80\ = CARRY((!\pc[22]~78\) # (!pc(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(23),
	datad => VCC,
	cin => \pc[22]~78\,
	combout => \pc[23]~79_combout\,
	cout => \pc[23]~80\);

-- Location: FF_X77_Y33_N15
\pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[23]~79_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(23));

-- Location: LCCOMB_X77_Y33_N16
\pc[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[24]~81_combout\ = (pc(24) & (\pc[23]~80\ $ (GND))) # (!pc(24) & (!\pc[23]~80\ & VCC))
-- \pc[24]~82\ = CARRY((pc(24) & !\pc[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(24),
	datad => VCC,
	cin => \pc[23]~80\,
	combout => \pc[24]~81_combout\,
	cout => \pc[24]~82\);

-- Location: FF_X77_Y33_N17
\pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[24]~81_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(24));

-- Location: LCCOMB_X77_Y33_N18
\pc[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[25]~83_combout\ = (pc(25) & (!\pc[24]~82\)) # (!pc(25) & ((\pc[24]~82\) # (GND)))
-- \pc[25]~84\ = CARRY((!\pc[24]~82\) # (!pc(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(25),
	datad => VCC,
	cin => \pc[24]~82\,
	combout => \pc[25]~83_combout\,
	cout => \pc[25]~84\);

-- Location: FF_X77_Y33_N19
\pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[25]~83_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(25));

-- Location: LCCOMB_X77_Y33_N20
\pc[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[26]~85_combout\ = (pc(26) & (\pc[25]~84\ $ (GND))) # (!pc(26) & (!\pc[25]~84\ & VCC))
-- \pc[26]~86\ = CARRY((pc(26) & !\pc[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(26),
	datad => VCC,
	cin => \pc[25]~84\,
	combout => \pc[26]~85_combout\,
	cout => \pc[26]~86\);

-- Location: FF_X77_Y33_N21
\pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[26]~85_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(26));

-- Location: LCCOMB_X77_Y33_N22
\pc[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[27]~87_combout\ = (pc(27) & (!\pc[26]~86\)) # (!pc(27) & ((\pc[26]~86\) # (GND)))
-- \pc[27]~88\ = CARRY((!\pc[26]~86\) # (!pc(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(27),
	datad => VCC,
	cin => \pc[26]~86\,
	combout => \pc[27]~87_combout\,
	cout => \pc[27]~88\);

-- Location: FF_X77_Y33_N23
\pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[27]~87_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(27));

-- Location: LCCOMB_X77_Y33_N24
\pc[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[28]~89_combout\ = (pc(28) & (\pc[27]~88\ $ (GND))) # (!pc(28) & (!\pc[27]~88\ & VCC))
-- \pc[28]~90\ = CARRY((pc(28) & !\pc[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(28),
	datad => VCC,
	cin => \pc[27]~88\,
	combout => \pc[28]~89_combout\,
	cout => \pc[28]~90\);

-- Location: FF_X77_Y33_N25
\pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[28]~89_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(28));

-- Location: LCCOMB_X77_Y33_N26
\pc[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[29]~91_combout\ = (pc(29) & (!\pc[28]~90\)) # (!pc(29) & ((\pc[28]~90\) # (GND)))
-- \pc[29]~92\ = CARRY((!\pc[28]~90\) # (!pc(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(29),
	datad => VCC,
	cin => \pc[28]~90\,
	combout => \pc[29]~91_combout\,
	cout => \pc[29]~92\);

-- Location: FF_X77_Y33_N27
\pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[29]~91_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(29));

-- Location: LCCOMB_X77_Y33_N28
\pc[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[30]~93_combout\ = (pc(30) & (\pc[29]~92\ $ (GND))) # (!pc(30) & (!\pc[29]~92\ & VCC))
-- \pc[30]~94\ = CARRY((pc(30) & !\pc[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(30),
	datad => VCC,
	cin => \pc[29]~92\,
	combout => \pc[30]~93_combout\,
	cout => \pc[30]~94\);

-- Location: FF_X77_Y33_N29
\pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[30]~93_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(30));

-- Location: LCCOMB_X77_Y33_N30
\pc[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[31]~95_combout\ = pc(31) $ (\pc[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(31),
	cin => \pc[30]~94\,
	combout => \pc[31]~95_combout\);

-- Location: FF_X77_Y33_N31
\pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[31]~95_combout\,
	sclr => \clr~input_o\,
	ena => \pc[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(31));

-- Location: LCCOMB_X51_Y23_N24
\ir[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[1]~feeder_combout\ = \ir~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~0_combout\,
	combout => \ir[1]~feeder_combout\);

-- Location: LCCOMB_X50_Y23_N18
\ir[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[27]~1_combout\ = (\clr~input_o\) # (\current_state.DECODE1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => \current_state.DECODE1~q\,
	combout => \ir[27]~1_combout\);

-- Location: FF_X51_Y23_N25
\ir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[1]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(1));

-- Location: LCCOMB_X51_Y23_N6
\ir[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[3]~feeder_combout\ = \ir~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir~2_combout\,
	combout => \ir[3]~feeder_combout\);

-- Location: FF_X51_Y23_N7
\ir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[3]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(3));

-- Location: LCCOMB_X51_Y23_N0
\ir[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[11]~feeder_combout\ = \ir~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~3_combout\,
	combout => \ir[11]~feeder_combout\);

-- Location: FF_X51_Y23_N1
\ir[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[11]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(11));

-- Location: LCCOMB_X51_Y23_N30
\ir[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[12]~feeder_combout\ = \ir~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~3_combout\,
	combout => \ir[12]~feeder_combout\);

-- Location: FF_X51_Y23_N31
\ir[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[12]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(12));

-- Location: FF_X51_Y23_N9
\ir[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~4_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(16));

-- Location: FF_X50_Y23_N31
\ir[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~5_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(17));

-- Location: FF_X51_Y23_N19
\ir[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir~6_combout\,
	sload => VCC,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(18));

-- Location: FF_X51_Y23_N17
\ir[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~7_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(21));

-- Location: LCCOMB_X51_Y23_N22
\ir[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[22]~feeder_combout\ = \ir~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~8_combout\,
	combout => \ir[22]~feeder_combout\);

-- Location: FF_X51_Y23_N23
\ir[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[22]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(22));

-- Location: LCCOMB_X51_Y23_N4
\ir[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[26]~feeder_combout\ = \ir~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir~2_combout\,
	combout => \ir[26]~feeder_combout\);

-- Location: FF_X51_Y23_N5
\ir[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[26]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(26));

-- Location: LCCOMB_X51_Y23_N14
\ir~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~9_combout\ = (!\clr~input_o\ & ir_temp(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => ir_temp(27),
	combout => \ir~9_combout\);

-- Location: FF_X51_Y23_N15
\ir[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir~9_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(27));

-- Location: LCCOMB_X51_Y23_N12
\ir[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir[28]~feeder_combout\ = \ir~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir~8_combout\,
	combout => \ir[28]~feeder_combout\);

-- Location: FF_X51_Y23_N13
\ir[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[28]~feeder_combout\,
	ena => \ir[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ir(28));

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

ww_debug_rd_addr(0) <= \debug_rd_addr[0]~output_o\;

ww_debug_rd_addr(1) <= \debug_rd_addr[1]~output_o\;

ww_debug_rd_addr(2) <= \debug_rd_addr[2]~output_o\;

ww_debug_rd_addr(3) <= \debug_rd_addr[3]~output_o\;

ww_debug_rd_addr(4) <= \debug_rd_addr[4]~output_o\;

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


