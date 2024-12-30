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

-- DATE "12/30/2024 23:12:29"

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
	input : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(31 DOWNTO 0);
	debug_rt_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_rs_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_rd_addr : OUT std_logic_vector(4 DOWNTO 0);
	debug_shamt : OUT std_logic_vector(4 DOWNTO 0);
	debug_func : OUT std_logic_vector(5 DOWNTO 0);
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
-- input[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[28]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[29]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[31]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rt_addr[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rs_addr[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_rd_addr[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_shamt[4]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_func[5]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[9]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[10]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[11]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[12]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[15]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[17]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[18]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[19]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[21]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[23]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[24]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[25]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[26]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[27]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[28]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[29]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[30]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_immediate[31]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[7]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[9]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[14]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[16]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[17]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[18]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[20]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[21]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[22]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[23]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[24]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[25]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[26]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[27]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[28]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[29]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[30]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_mem_data_out[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[12]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[15]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[16]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[17]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[18]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[19]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[20]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[21]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[23]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[25]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[26]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[27]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[28]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[30]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_data_in[31]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[16]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[18]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[19]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[20]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[22]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[23]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[24]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[25]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[27]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[28]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[29]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[30]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rs[31]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[12]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[13]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[17]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[19]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[20]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[21]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[22]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[23]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[25]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[27]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[28]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rt[31]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[1]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[4]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[6]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[12]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[14]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[17]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[18]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[19]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[20]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[23]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[24]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[25]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[26]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[27]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[28]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[29]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bus_reg_rd[31]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_reg_file_ld	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_debug_rt_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_rs_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug_func : std_logic_vector(5 DOWNTO 0);
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
SIGNAL \pc[0]~10_combout\ : std_logic;
SIGNAL \AR~8_combout\ : std_logic;
SIGNAL \pc[0]~11\ : std_logic;
SIGNAL \pc[1]~12_combout\ : std_logic;
SIGNAL \pc[1]~13\ : std_logic;
SIGNAL \pc[2]~14_combout\ : std_logic;
SIGNAL \pc[2]~15\ : std_logic;
SIGNAL \pc[3]~16_combout\ : std_logic;
SIGNAL \pc[3]~17\ : std_logic;
SIGNAL \pc[4]~18_combout\ : std_logic;
SIGNAL \pc[4]~19\ : std_logic;
SIGNAL \pc[5]~20_combout\ : std_logic;
SIGNAL \pc[5]~21\ : std_logic;
SIGNAL \pc[6]~22_combout\ : std_logic;
SIGNAL \pc[6]~23\ : std_logic;
SIGNAL \pc[7]~24_combout\ : std_logic;
SIGNAL \pc[7]~25\ : std_logic;
SIGNAL \pc[8]~26_combout\ : std_logic;
SIGNAL \pc[8]~27\ : std_logic;
SIGNAL \pc[9]~28_combout\ : std_logic;
SIGNAL \AR~9_combout\ : std_logic;
SIGNAL \AR~7_combout\ : std_logic;
SIGNAL \AR~5_combout\ : std_logic;
SIGNAL \AR~6_combout\ : std_logic;
SIGNAL \AR~4_combout\ : std_logic;
SIGNAL \Memory_inst|memory~44_combout\ : std_logic;
SIGNAL \AR~3_combout\ : std_logic;
SIGNAL \AR~2_combout\ : std_logic;
SIGNAL \AR~1_combout\ : std_logic;
SIGNAL \AR~0_combout\ : std_logic;
SIGNAL \Memory_inst|memory~43_combout\ : std_logic;
SIGNAL \Memory_inst|memory~46_combout\ : std_logic;
SIGNAL \ir~1_combout\ : std_logic;
SIGNAL \rt_addr~0_combout\ : std_logic;
SIGNAL \rd_addr~1_combout\ : std_logic;
SIGNAL \immediate[17]~0_combout\ : std_logic;
SIGNAL \ir~2_combout\ : std_logic;
SIGNAL \rs_addr~0_combout\ : std_logic;
SIGNAL \func[1]~1_combout\ : std_logic;
SIGNAL \reg_file_ld~0_combout\ : std_logic;
SIGNAL \reg_file_ld~q\ : std_logic;
SIGNAL \ir~0_combout\ : std_logic;
SIGNAL \rd_addr~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][24]~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][0]~q\ : std_logic;
SIGNAL \rs_addr[0]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux31~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][18]~35_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][0]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][6]~37_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][0]~36_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][0]~q\ : std_logic;
SIGNAL \func~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux63~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bus_data_in[0]~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][8]~40_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux95~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][0]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][12]~38_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][6]~39_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][0]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux95~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux95~4_combout\ : std_logic;
SIGNAL \output[0]~reg0feeder_combout\ : std_logic;
SIGNAL \output[0]~0_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][1]~42_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux62~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux62~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][12]~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux30~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \bus_data_in~1_combout\ : std_logic;
SIGNAL \bus_data_in[1]~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][1]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][1]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux94~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][1]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux94~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux94~4_combout\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][2]~43_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux61~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux61~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux29~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \bus_data_in~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~5_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux93~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][2]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux93~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][2]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][2]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux93~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux93~4_combout\ : std_logic;
SIGNAL \output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux60~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux60~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux28~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \bus_data_in~4_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][3]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][3]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux92~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][3]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux92~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux92~4_combout\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][4]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux27~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][4]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux59~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \bus_data_in~5_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~7_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][4]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux91~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][4]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][4]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][4]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux91~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux91~4_combout\ : std_logic;
SIGNAL \output[4]~reg0feeder_combout\ : std_logic;
SIGNAL \output[4]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][5]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux26~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux58~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][5]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux58~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \bus_data_in~6_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~8_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][5]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux90~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][5]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][5]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][5]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux90~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux90~4_combout\ : std_logic;
SIGNAL \output[5]~reg0feeder_combout\ : std_logic;
SIGNAL \output[5]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][6]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux25~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][6]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux57~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][6]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux57~1_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \bus_data_in~7_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~9_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][6]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux89~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][6]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][6]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux89~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux89~4_combout\ : std_logic;
SIGNAL \output[6]~reg0feeder_combout\ : std_logic;
SIGNAL \output[6]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux56~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux56~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux24~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \bus_data_in~8_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~10_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][7]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][7]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux88~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][7]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux88~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux88~4_combout\ : std_logic;
SIGNAL \output[7]~reg0feeder_combout\ : std_logic;
SIGNAL \output[7]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux23~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux55~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux55~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \bus_data_in~9_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~11_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][8]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][8]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux87~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][8]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux87~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux87~4_combout\ : std_logic;
SIGNAL \output[8]~reg0feeder_combout\ : std_logic;
SIGNAL \output[8]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][9]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][9]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux54~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux54~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux22~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \bus_data_in~10_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~12_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][9]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][9]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][9]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux86~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][9]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux86~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux86~4_combout\ : std_logic;
SIGNAL \output[9]~reg0feeder_combout\ : std_logic;
SIGNAL \output[9]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux53~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][10]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux53~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][10]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux21~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \bus_data_in~11_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~13_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][10]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][10]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux85~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][10]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][10]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux85~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux85~4_combout\ : std_logic;
SIGNAL \output[10]~reg0feeder_combout\ : std_logic;
SIGNAL \output[10]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][11]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][11]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux52~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux52~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][11]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux20~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \bus_data_in~12_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~14_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][11]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][11]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux84~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][11]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux84~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux84~4_combout\ : std_logic;
SIGNAL \output[11]~reg0feeder_combout\ : std_logic;
SIGNAL \output[11]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux19~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux51~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux51~1_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \bus_data_in~13_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~15_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux83~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][12]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][12]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][12]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux83~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux83~4_combout\ : std_logic;
SIGNAL \output[12]~reg0feeder_combout\ : std_logic;
SIGNAL \output[12]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][13]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][13]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][13]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][13]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux50~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux50~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux18~0_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \bus_data_in~14_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~16_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux82~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][13]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux82~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][13]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux82~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux82~4_combout\ : std_logic;
SIGNAL \output[13]~reg0feeder_combout\ : std_logic;
SIGNAL \output[13]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][14]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][14]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux49~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][14]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux49~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux17~0_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \bus_data_in~15_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~17_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux81~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][14]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][14]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][14]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux81~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux81~4_combout\ : std_logic;
SIGNAL \output[14]~reg0feeder_combout\ : std_logic;
SIGNAL \output[14]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][15]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][15]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux48~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux48~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux16~0_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \bus_data_in~16_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~18_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][15]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux80~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][15]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][15]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux80~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][15]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux80~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux80~4_combout\ : std_logic;
SIGNAL \output[15]~reg0feeder_combout\ : std_logic;
SIGNAL \output[15]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][16]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][16]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux47~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux47~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux15~0_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \bus_data_in~17_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~19_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][16]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][16]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux79~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][16]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux79~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux79~4_combout\ : std_logic;
SIGNAL \output[16]~reg0feeder_combout\ : std_logic;
SIGNAL \output[16]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][17]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][17]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux46~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux46~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux14~0_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \bus_data_in~18_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~20_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][17]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux78~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][17]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux78~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux78~4_combout\ : std_logic;
SIGNAL \output[17]~reg0feeder_combout\ : std_logic;
SIGNAL \output[17]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux13~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux45~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][18]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux45~1_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \bus_data_in~19_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~21_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux77~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][18]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][18]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][18]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux77~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux77~4_combout\ : std_logic;
SIGNAL \output[18]~reg0feeder_combout\ : std_logic;
SIGNAL \output[18]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][19]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][19]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux44~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux44~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux12~0_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \bus_data_in~20_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~22_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][19]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][19]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux76~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][19]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux76~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux76~4_combout\ : std_logic;
SIGNAL \output[19]~reg0feeder_combout\ : std_logic;
SIGNAL \output[19]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux43~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux43~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][20]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux11~0_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \bus_data_in~21_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~23_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][20]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux75~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][20]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][20]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux75~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][20]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux75~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux75~4_combout\ : std_logic;
SIGNAL \output[20]~reg0feeder_combout\ : std_logic;
SIGNAL \output[20]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][21]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][21]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux10~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][21]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux42~1_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \bus_data_in~22_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~24_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux74~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][21]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][21]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][21]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux74~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux74~4_combout\ : std_logic;
SIGNAL \output[21]~reg0feeder_combout\ : std_logic;
SIGNAL \output[21]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][22]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][22]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][22]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux41~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux41~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux9~0_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \bus_data_in~23_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~25_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][22]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux73~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux73~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][22]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux73~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux73~4_combout\ : std_logic;
SIGNAL \output[22]~reg0feeder_combout\ : std_logic;
SIGNAL \output[22]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][23]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][23]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux40~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux40~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux8~0_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \bus_data_in~24_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~26_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][23]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][23]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux72~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][23]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux72~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux72~4_combout\ : std_logic;
SIGNAL \output[23]~reg0feeder_combout\ : std_logic;
SIGNAL \output[23]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][24]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux39~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux39~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux7~0_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \bus_data_in~25_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~27_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux71~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][24]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][24]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][24]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux71~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux71~4_combout\ : std_logic;
SIGNAL \output[24]~reg0feeder_combout\ : std_logic;
SIGNAL \output[24]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux38~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux38~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux6~0_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \bus_data_in~26_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~28_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][25]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][25]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux70~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][25]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux70~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux70~4_combout\ : std_logic;
SIGNAL \output[25]~reg0feeder_combout\ : std_logic;
SIGNAL \output[25]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux5~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux37~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux37~1_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \bus_data_in~27_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~29_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux69~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][26]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][26]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][26]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux69~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux69~4_combout\ : std_logic;
SIGNAL \output[26]~reg0feeder_combout\ : std_logic;
SIGNAL \output[26]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux4~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux36~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux36~1_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \bus_data_in~28_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~30_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[3][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux68~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~3_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][27]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][27]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[5][27]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux68~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux68~4_combout\ : std_logic;
SIGNAL \output[27]~reg0feeder_combout\ : std_logic;
SIGNAL \output[27]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[1][28]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux3~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][28]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux35~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][28]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux35~1_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \bus_data_in~29_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~31_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][28]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][28]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux67~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][28]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux67~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux67~4_combout\ : std_logic;
SIGNAL \output[28]~reg0feeder_combout\ : std_logic;
SIGNAL \output[28]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux34~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux34~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux2~0_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \bus_data_in~30_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~32_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][29]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][29]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux66~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][29]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux66~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux66~4_combout\ : std_logic;
SIGNAL \output[29]~reg0feeder_combout\ : std_logic;
SIGNAL \output[29]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux33~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[2][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[6][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux33~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux1~0_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \bus_data_in~31_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~33_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][30]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][30]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[7][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux65~0_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~1_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~2_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][30]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux65~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux65~4_combout\ : std_logic;
SIGNAL \output[30]~reg0feeder_combout\ : std_logic;
SIGNAL \output[30]~reg0_q\ : std_logic;
SIGNAL \RegFile_inst|registers[4][31]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[4][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[0][31]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[0][31]~q\ : std_logic;
SIGNAL \RegFile_inst|registers[2][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux32~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[6][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux32~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[1][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux0~0_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \bus_data_in~32_combout\ : std_logic;
SIGNAL \RegFile_inst|registers~34_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][31]~feeder_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[5][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux64~0_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[7][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux64~1_combout\ : std_logic;
SIGNAL \RegFile_inst|registers[3][31]~q\ : std_logic;
SIGNAL \RegFile_inst|Mux64~2_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~3_combout\ : std_logic;
SIGNAL \RegFile_inst|Mux64~4_combout\ : std_logic;
SIGNAL \output[31]~reg0feeder_combout\ : std_logic;
SIGNAL \output[31]~reg0_q\ : std_logic;
SIGNAL \immediate[17]~feeder_combout\ : std_logic;
SIGNAL \immediate[18]~feeder_combout\ : std_logic;
SIGNAL \immediate[27]~feeder_combout\ : std_logic;
SIGNAL \immediate[28]~feeder_combout\ : std_logic;
SIGNAL \Memory_inst|memory~45_combout\ : std_logic;
SIGNAL \Memory_inst|memory~47_combout\ : std_logic;
SIGNAL rd_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL pc : std_logic_vector(31 DOWNTO 0);
SIGNAL func : std_logic_vector(5 DOWNTO 0);
SIGNAL bus_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL rt_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL AR : std_logic_vector(31 DOWNTO 0);
SIGNAL rs_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegFile_inst|bus_reg_rs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegFile_inst|bus_reg_rt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegFile_inst|bus_reg_rd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ir : std_logic_vector(31 DOWNTO 0);

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
debug_rt_addr <= ww_debug_rt_addr;
debug_rs_addr <= ww_debug_rs_addr;
debug_rd_addr <= ww_debug_rd_addr;
debug_shamt <= ww_debug_shamt;
debug_func <= ww_debug_func;
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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y30_N16
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X78_Y45_N2
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

-- Location: IOOBUF_X78_Y3_N16
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y42_N9
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X78_Y17_N2
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X78_Y36_N9
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

-- Location: IOOBUF_X78_Y34_N2
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X78_Y42_N23
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

-- Location: IOOBUF_X78_Y49_N23
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y18_N9
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

-- Location: IOOBUF_X78_Y45_N9
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y44_N9
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

-- Location: IOOBUF_X78_Y3_N23
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

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X0_Y25_N2
\debug_rt_addr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rt_addr[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\debug_rt_addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => func(1),
	devoe => ww_devoe,
	o => \debug_rt_addr[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\debug_rt_addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rt_addr(2),
	devoe => ww_devoe,
	o => \debug_rt_addr[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X78_Y30_N9
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

-- Location: IOOBUF_X38_Y0_N9
\debug_rs_addr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rs_addr[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\debug_rs_addr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_rs_addr[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X78_Y29_N16
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X0_Y18_N2
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X0_Y28_N2
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: IOOBUF_X0_Y36_N2
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N23
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

-- Location: IOOBUF_X0_Y29_N2
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X78_Y3_N2
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

-- Location: IOOBUF_X78_Y21_N9
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

-- Location: IOOBUF_X0_Y29_N9
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X18_Y0_N30
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X49_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X78_Y49_N16
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X78_Y17_N9
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X62_Y0_N30
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

-- Location: IOOBUF_X69_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X78_Y31_N2
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X56_Y54_N30
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X78_Y3_N9
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

-- Location: IOOBUF_X66_Y54_N30
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

-- Location: IOOBUF_X78_Y17_N16
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X51_Y54_N30
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X78_Y16_N2
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X69_Y0_N16
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X60_Y54_N9
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X78_Y17_N23
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

-- Location: IOOBUF_X64_Y54_N2
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X78_Y16_N16
\debug_bus_reg_rs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(0),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\debug_bus_reg_rs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(1),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\debug_bus_reg_rs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(2),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\debug_bus_reg_rs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(3),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\debug_bus_reg_rs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(4),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[4]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\debug_bus_reg_rs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(5),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\debug_bus_reg_rs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(6),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[6]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\debug_bus_reg_rs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(7),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\debug_bus_reg_rs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(8),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\debug_bus_reg_rs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(9),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\debug_bus_reg_rs[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(10),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\debug_bus_reg_rs[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(11),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[11]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\debug_bus_reg_rs[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(12),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[12]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\debug_bus_reg_rs[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(13),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[13]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\debug_bus_reg_rs[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(14),
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
	i => \RegFile_inst|bus_reg_rs\(15),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[15]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\debug_bus_reg_rs[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(16),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[16]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\debug_bus_reg_rs[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(17),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[17]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\debug_bus_reg_rs[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(18),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[18]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\debug_bus_reg_rs[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(19),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\debug_bus_reg_rs[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(20),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[20]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\debug_bus_reg_rs[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(21),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[21]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\debug_bus_reg_rs[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(22),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[22]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\debug_bus_reg_rs[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(23),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[23]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\debug_bus_reg_rs[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(24),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[24]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\debug_bus_reg_rs[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(25),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[25]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\debug_bus_reg_rs[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(26),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[26]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\debug_bus_reg_rs[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(27),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[27]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\debug_bus_reg_rs[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(28),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[28]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\debug_bus_reg_rs[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(29),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[29]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\debug_bus_reg_rs[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(30),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\debug_bus_reg_rs[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rs\(31),
	devoe => ww_devoe,
	o => \debug_bus_reg_rs[31]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\debug_bus_reg_rt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(0),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\debug_bus_reg_rt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(1),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[1]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\debug_bus_reg_rt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(2),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\debug_bus_reg_rt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(3),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\debug_bus_reg_rt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(4),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[4]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\debug_bus_reg_rt[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(5),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\debug_bus_reg_rt[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(6),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\debug_bus_reg_rt[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(7),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\debug_bus_reg_rt[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(8),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[8]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\debug_bus_reg_rt[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(9),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\debug_bus_reg_rt[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(10),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\debug_bus_reg_rt[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(11),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[11]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\debug_bus_reg_rt[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(12),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[12]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\debug_bus_reg_rt[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(13),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[13]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\debug_bus_reg_rt[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(14),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[14]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\debug_bus_reg_rt[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(15),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[15]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\debug_bus_reg_rt[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(16),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[16]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\debug_bus_reg_rt[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(17),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[17]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\debug_bus_reg_rt[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(18),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[18]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\debug_bus_reg_rt[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(19),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[19]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\debug_bus_reg_rt[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(20),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[20]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\debug_bus_reg_rt[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(21),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[21]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\debug_bus_reg_rt[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(22),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[22]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\debug_bus_reg_rt[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(23),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[23]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\debug_bus_reg_rt[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(24),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[24]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\debug_bus_reg_rt[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(25),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[25]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\debug_bus_reg_rt[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(26),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[26]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\debug_bus_reg_rt[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(27),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[27]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\debug_bus_reg_rt[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(28),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[28]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\debug_bus_reg_rt[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(29),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[29]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\debug_bus_reg_rt[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(30),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[30]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\debug_bus_reg_rt[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rt\(31),
	devoe => ww_devoe,
	o => \debug_bus_reg_rt[31]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\debug_bus_reg_rd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(0),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\debug_bus_reg_rd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(1),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\debug_bus_reg_rd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(2),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\debug_bus_reg_rd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(3),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\debug_bus_reg_rd[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(4),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\debug_bus_reg_rd[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(5),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\debug_bus_reg_rd[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(6),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\debug_bus_reg_rd[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(7),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\debug_bus_reg_rd[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(8),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[8]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\debug_bus_reg_rd[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(9),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[9]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\debug_bus_reg_rd[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(10),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[10]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\debug_bus_reg_rd[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(11),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[11]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\debug_bus_reg_rd[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(12),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\debug_bus_reg_rd[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(13),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[13]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\debug_bus_reg_rd[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(14),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[14]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\debug_bus_reg_rd[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(15),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\debug_bus_reg_rd[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(16),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[16]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\debug_bus_reg_rd[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(17),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[17]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\debug_bus_reg_rd[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(18),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[18]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\debug_bus_reg_rd[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(19),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[19]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\debug_bus_reg_rd[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(20),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[20]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\debug_bus_reg_rd[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(21),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[21]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\debug_bus_reg_rd[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(22),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[22]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\debug_bus_reg_rd[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(23),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[23]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\debug_bus_reg_rd[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(24),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[24]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\debug_bus_reg_rd[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(25),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[25]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\debug_bus_reg_rd[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(26),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[26]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\debug_bus_reg_rd[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(27),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[27]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\debug_bus_reg_rd[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(28),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[28]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\debug_bus_reg_rd[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(29),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[29]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\debug_bus_reg_rd[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(30),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[30]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\debug_bus_reg_rd[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegFile_inst|bus_reg_rd\(31),
	devoe => ww_devoe,
	o => \debug_bus_reg_rd[31]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOIBUF_X78_Y30_N22
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

-- Location: LCCOMB_X76_Y32_N4
\pc[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[0]~10_combout\ = pc(0) $ (VCC)
-- \pc[0]~11\ = CARRY(pc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(0),
	datad => VCC,
	combout => \pc[0]~10_combout\,
	cout => \pc[0]~11\);

-- Location: FF_X76_Y32_N5
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[0]~10_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LCCOMB_X76_Y32_N2
\AR~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~8_combout\ = (!\clr~input_o\ & pc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(0),
	combout => \AR~8_combout\);

-- Location: FF_X76_Y32_N3
\AR[0]\ : dffeas
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
	q => AR(0));

-- Location: LCCOMB_X76_Y32_N6
\pc[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[1]~12_combout\ = (pc(1) & (!\pc[0]~11\)) # (!pc(1) & ((\pc[0]~11\) # (GND)))
-- \pc[1]~13\ = CARRY((!\pc[0]~11\) # (!pc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(1),
	datad => VCC,
	cin => \pc[0]~11\,
	combout => \pc[1]~12_combout\,
	cout => \pc[1]~13\);

-- Location: FF_X76_Y32_N7
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[1]~12_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: LCCOMB_X76_Y32_N8
\pc[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[2]~14_combout\ = (pc(2) & (\pc[1]~13\ $ (GND))) # (!pc(2) & (!\pc[1]~13\ & VCC))
-- \pc[2]~15\ = CARRY((pc(2) & !\pc[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datad => VCC,
	cin => \pc[1]~13\,
	combout => \pc[2]~14_combout\,
	cout => \pc[2]~15\);

-- Location: FF_X76_Y32_N9
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[2]~14_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: LCCOMB_X76_Y32_N10
\pc[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[3]~16_combout\ = (pc(3) & (!\pc[2]~15\)) # (!pc(3) & ((\pc[2]~15\) # (GND)))
-- \pc[3]~17\ = CARRY((!\pc[2]~15\) # (!pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(3),
	datad => VCC,
	cin => \pc[2]~15\,
	combout => \pc[3]~16_combout\,
	cout => \pc[3]~17\);

-- Location: FF_X76_Y32_N11
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[3]~16_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LCCOMB_X76_Y32_N12
\pc[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[4]~18_combout\ = (pc(4) & (\pc[3]~17\ $ (GND))) # (!pc(4) & (!\pc[3]~17\ & VCC))
-- \pc[4]~19\ = CARRY((pc(4) & !\pc[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(4),
	datad => VCC,
	cin => \pc[3]~17\,
	combout => \pc[4]~18_combout\,
	cout => \pc[4]~19\);

-- Location: FF_X76_Y32_N13
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[4]~18_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: LCCOMB_X76_Y32_N14
\pc[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[5]~20_combout\ = (pc(5) & (!\pc[4]~19\)) # (!pc(5) & ((\pc[4]~19\) # (GND)))
-- \pc[5]~21\ = CARRY((!\pc[4]~19\) # (!pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(5),
	datad => VCC,
	cin => \pc[4]~19\,
	combout => \pc[5]~20_combout\,
	cout => \pc[5]~21\);

-- Location: FF_X76_Y32_N15
\pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[5]~20_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(5));

-- Location: LCCOMB_X76_Y32_N16
\pc[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[6]~22_combout\ = (pc(6) & (\pc[5]~21\ $ (GND))) # (!pc(6) & (!\pc[5]~21\ & VCC))
-- \pc[6]~23\ = CARRY((pc(6) & !\pc[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(6),
	datad => VCC,
	cin => \pc[5]~21\,
	combout => \pc[6]~22_combout\,
	cout => \pc[6]~23\);

-- Location: FF_X76_Y32_N17
\pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[6]~22_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(6));

-- Location: LCCOMB_X76_Y32_N18
\pc[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[7]~24_combout\ = (pc(7) & (!\pc[6]~23\)) # (!pc(7) & ((\pc[6]~23\) # (GND)))
-- \pc[7]~25\ = CARRY((!\pc[6]~23\) # (!pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(7),
	datad => VCC,
	cin => \pc[6]~23\,
	combout => \pc[7]~24_combout\,
	cout => \pc[7]~25\);

-- Location: FF_X76_Y32_N19
\pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[7]~24_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(7));

-- Location: LCCOMB_X76_Y32_N20
\pc[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[8]~26_combout\ = (pc(8) & (\pc[7]~25\ $ (GND))) # (!pc(8) & (!\pc[7]~25\ & VCC))
-- \pc[8]~27\ = CARRY((pc(8) & !\pc[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pc(8),
	datad => VCC,
	cin => \pc[7]~25\,
	combout => \pc[8]~26_combout\,
	cout => \pc[8]~27\);

-- Location: FF_X76_Y32_N21
\pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[8]~26_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(8));

-- Location: LCCOMB_X76_Y32_N22
\pc[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc[9]~28_combout\ = pc(9) $ (\pc[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	cin => \pc[8]~27\,
	combout => \pc[9]~28_combout\);

-- Location: FF_X76_Y32_N23
\pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[9]~28_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(9));

-- Location: LCCOMB_X72_Y35_N6
\AR~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~9_combout\ = (!\clr~input_o\ & pc(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => pc(9),
	combout => \AR~9_combout\);

-- Location: FF_X72_Y35_N7
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

-- Location: LCCOMB_X75_Y32_N30
\AR~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~7_combout\ = (!\clr~input_o\ & pc(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(8),
	combout => \AR~7_combout\);

-- Location: FF_X75_Y32_N31
\AR[8]\ : dffeas
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
	q => AR(8));

-- Location: LCCOMB_X75_Y32_N18
\AR~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~5_combout\ = (!\clr~input_o\ & pc(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(6),
	combout => \AR~5_combout\);

-- Location: FF_X75_Y32_N19
\AR[6]\ : dffeas
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
	q => AR(6));

-- Location: LCCOMB_X75_Y32_N8
\AR~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~6_combout\ = (!\clr~input_o\ & pc(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(7),
	combout => \AR~6_combout\);

-- Location: FF_X75_Y32_N9
\AR[7]\ : dffeas
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
	q => AR(7));

-- Location: LCCOMB_X75_Y32_N24
\AR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~4_combout\ = (!\clr~input_o\ & pc(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(5),
	combout => \AR~4_combout\);

-- Location: FF_X75_Y32_N25
\AR[5]\ : dffeas
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
	q => AR(5));

-- Location: LCCOMB_X75_Y32_N12
\Memory_inst|memory~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~44_combout\ = (!AR(8) & (!AR(6) & (!AR(7) & !AR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AR(8),
	datab => AR(6),
	datac => AR(7),
	datad => AR(5),
	combout => \Memory_inst|memory~44_combout\);

-- Location: LCCOMB_X76_Y32_N30
\AR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~3_combout\ = (!\clr~input_o\ & pc(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(4),
	combout => \AR~3_combout\);

-- Location: FF_X76_Y32_N31
\AR[4]\ : dffeas
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
	q => AR(4));

-- Location: LCCOMB_X76_Y32_N0
\AR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~2_combout\ = (!\clr~input_o\ & pc(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(3),
	combout => \AR~2_combout\);

-- Location: FF_X76_Y32_N1
\AR[3]\ : dffeas
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
	q => AR(3));

-- Location: LCCOMB_X76_Y32_N26
\AR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~1_combout\ = (!\clr~input_o\ & pc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => pc(2),
	combout => \AR~1_combout\);

-- Location: FF_X76_Y32_N27
\AR[2]\ : dffeas
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
	q => AR(2));

-- Location: LCCOMB_X76_Y32_N24
\AR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AR~0_combout\ = (!\clr~input_o\ & pc(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => pc(1),
	combout => \AR~0_combout\);

-- Location: FF_X76_Y32_N25
\AR[1]\ : dffeas
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
	q => AR(1));

-- Location: LCCOMB_X76_Y32_N28
\Memory_inst|memory~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~43_combout\ = (!AR(4) & (!AR(3) & (!AR(2) & !AR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AR(4),
	datab => AR(3),
	datac => AR(2),
	datad => AR(1),
	combout => \Memory_inst|memory~43_combout\);

-- Location: LCCOMB_X72_Y35_N2
\Memory_inst|memory~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~46_combout\ = (!AR(9) & (\Memory_inst|memory~44_combout\ & \Memory_inst|memory~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AR(9),
	datac => \Memory_inst|memory~44_combout\,
	datad => \Memory_inst|memory~43_combout\,
	combout => \Memory_inst|memory~46_combout\);

-- Location: LCCOMB_X72_Y35_N22
\ir~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~1_combout\ = (!\clr~input_o\ & (AR(0) & \Memory_inst|memory~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => AR(0),
	datad => \Memory_inst|memory~46_combout\,
	combout => \ir~1_combout\);

-- Location: FF_X72_Y35_N23
\ir[18]\ : dffeas
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
	q => ir(18));

-- Location: LCCOMB_X72_Y35_N26
\rt_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_addr~0_combout\ = (ir(18) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ir(18),
	datad => \clr~input_o\,
	combout => \rt_addr~0_combout\);

-- Location: FF_X72_Y35_N27
\opcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcode(3));

-- Location: LCCOMB_X72_Y35_N14
\rd_addr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~1_combout\ = (ir(18) & opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ir(18),
	datac => opcode(3),
	combout => \rd_addr~1_combout\);

-- Location: FF_X72_Y35_N15
\rd_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_addr~1_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(2));

-- Location: LCCOMB_X75_Y33_N10
\immediate[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[17]~0_combout\ = (\clr~input_o\) # (opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => opcode(3),
	combout => \immediate[17]~0_combout\);

-- Location: LCCOMB_X72_Y35_N12
\ir~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~2_combout\ = (!\clr~input_o\ & (\Memory_inst|memory~43_combout\ & (\Memory_inst|memory~44_combout\ & !AR(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => \Memory_inst|memory~43_combout\,
	datac => \Memory_inst|memory~44_combout\,
	datad => AR(9),
	combout => \ir~2_combout\);

-- Location: FF_X72_Y35_N13
\ir[21]\ : dffeas
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
	q => ir(21));

-- Location: LCCOMB_X72_Y35_N10
\rs_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr~0_combout\ = (!\clr~input_o\ & ir(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => ir(21),
	combout => \rs_addr~0_combout\);

-- Location: LCCOMB_X71_Y30_N18
\func[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \func[1]~1_combout\ = (\clr~input_o\) # (!opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => opcode(3),
	combout => \func[1]~1_combout\);

-- Location: FF_X71_Y30_N9
\func[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_addr~0_combout\,
	sload => VCC,
	ena => \func[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(2));

-- Location: LCCOMB_X75_Y33_N12
\reg_file_ld~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file_ld~0_combout\ = (func(2) & !opcode(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(2),
	datad => opcode(3),
	combout => \reg_file_ld~0_combout\);

-- Location: FF_X75_Y33_N13
reg_file_ld : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file_ld~0_combout\,
	sclr => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_ld~q\);

-- Location: LCCOMB_X72_Y35_N24
\ir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ir~0_combout\ = (!\clr~input_o\ & (!AR(0) & \Memory_inst|memory~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => AR(0),
	datad => \Memory_inst|memory~46_combout\,
	combout => \ir~0_combout\);

-- Location: FF_X72_Y35_N25
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

-- Location: FF_X71_Y32_N13
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

-- Location: LCCOMB_X72_Y35_N8
\rd_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd_addr~0_combout\ = (!opcode(3) & ir(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => opcode(3),
	datad => ir(11),
	combout => \rd_addr~0_combout\);

-- Location: FF_X72_Y35_N9
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_addr(0));

-- Location: LCCOMB_X71_Y33_N4
\RegFile_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~0_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (!rd_addr(0) & !rd_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_ld~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => rd_addr(2),
	combout => \RegFile_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X71_Y33_N26
\RegFile_inst|registers[0][24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][24]~1_combout\ = (\RegFile_inst|Decoder0~0_combout\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|Decoder0~0_combout\,
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers[0][24]~1_combout\);

-- Location: FF_X70_Y30_N9
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
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][0]~q\);

-- Location: LCCOMB_X71_Y33_N24
\RegFile_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~1_combout\ = (!rd_addr(2) & (\reg_file_ld~q\ & (!rd_addr(1) & rd_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \reg_file_ld~q\,
	datac => rd_addr(1),
	datad => rd_addr(0),
	combout => \RegFile_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X71_Y30_N22
\RegFile_inst|registers~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~2_combout\ = (\clr~input_o\) # ((\RegFile_inst|Decoder0~1_combout\ & (!bus_data_in(0))) # (!\RegFile_inst|Decoder0~1_combout\ & ((\RegFile_inst|registers[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => bus_data_in(0),
	datac => \RegFile_inst|registers[1][0]~q\,
	datad => \RegFile_inst|Decoder0~1_combout\,
	combout => \RegFile_inst|registers~2_combout\);

-- Location: FF_X71_Y30_N23
\RegFile_inst|registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][0]~q\);

-- Location: LCCOMB_X72_Y35_N16
\rs_addr[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_addr[0]~feeder_combout\ = \rs_addr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_addr~0_combout\,
	combout => \rs_addr[0]~feeder_combout\);

-- Location: FF_X72_Y35_N17
\rs_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_addr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rs_addr(0));

-- Location: LCCOMB_X69_Y32_N8
\RegFile_inst|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux31~0_combout\ = (rs_addr(0) & ((!\RegFile_inst|registers[1][0]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][0]~q\,
	datac => \RegFile_inst|registers[1][0]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux31~0_combout\);

-- Location: FF_X69_Y32_N9
\RegFile_inst|bus_reg_rs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(0));

-- Location: LCCOMB_X71_Y33_N18
\RegFile_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~2_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (!rd_addr(0) & rd_addr(2))))

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
	combout => \RegFile_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X71_Y33_N14
\RegFile_inst|registers[4][18]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][18]~35_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~2_combout\,
	combout => \RegFile_inst|registers[4][18]~35_combout\);

-- Location: FF_X72_Y32_N5
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
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][0]~q\);

-- Location: LCCOMB_X72_Y32_N22
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

-- Location: LCCOMB_X71_Y33_N2
\RegFile_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~4_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (!rd_addr(0) & rd_addr(2))))

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
	combout => \RegFile_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X71_Y33_N10
\RegFile_inst|registers[6][6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][6]~37_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~4_combout\,
	combout => \RegFile_inst|registers[6][6]~37_combout\);

-- Location: FF_X72_Y32_N23
\RegFile_inst|registers[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][0]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][0]~q\);

-- Location: FF_X71_Y30_N15
\rt_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_addr~0_combout\,
	sload => VCC,
	ena => \func[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rt_addr(2));

-- Location: LCCOMB_X71_Y33_N12
\RegFile_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~3_combout\ = (\reg_file_ld~q\ & (rd_addr(1) & (!rd_addr(0) & !rd_addr(2))))

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
	combout => \RegFile_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X71_Y33_N20
\RegFile_inst|registers[2][0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][0]~36_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~3_combout\,
	combout => \RegFile_inst|registers[2][0]~36_combout\);

-- Location: FF_X70_Y33_N31
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
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][0]~q\);

-- Location: LCCOMB_X71_Y33_N0
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

-- Location: FF_X71_Y30_N25
\func[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \func~0_combout\,
	sload => VCC,
	ena => \func[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => func(1));

-- Location: LCCOMB_X70_Y33_N0
\RegFile_inst|Mux63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & ((\RegFile_inst|registers[2][0]~q\))) # (!func(1) & (\RegFile_inst|registers[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][0]~q\,
	datab => \RegFile_inst|registers[2][0]~q\,
	datac => rt_addr(2),
	datad => func(1),
	combout => \RegFile_inst|Mux63~0_combout\);

-- Location: LCCOMB_X71_Y32_N28
\RegFile_inst|Mux63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux63~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux63~0_combout\ & ((\RegFile_inst|registers[6][0]~q\))) # (!\RegFile_inst|Mux63~0_combout\ & (\RegFile_inst|registers[4][0]~q\)))) # (!rt_addr(2) & (((\RegFile_inst|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][0]~q\,
	datab => \RegFile_inst|registers[6][0]~q\,
	datac => rt_addr(2),
	datad => \RegFile_inst|Mux63~0_combout\,
	combout => \RegFile_inst|Mux63~1_combout\);

-- Location: FF_X71_Y32_N29
\RegFile_inst|bus_reg_rt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(0));

-- Location: LCCOMB_X70_Y32_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\RegFile_inst|bus_reg_rs\(0) & (\RegFile_inst|bus_reg_rt\(0) $ (VCC))) # (!\RegFile_inst|bus_reg_rs\(0) & (\RegFile_inst|bus_reg_rt\(0) & VCC))
-- \Add1~1\ = CARRY((\RegFile_inst|bus_reg_rs\(0) & \RegFile_inst|bus_reg_rt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(0),
	datab => \RegFile_inst|bus_reg_rt\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X75_Y33_N26
\bus_data_in[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[0]~0_combout\ = (\immediate[17]~0_combout\ & (((bus_data_in(0))))) # (!\immediate[17]~0_combout\ & ((func(2) & (\Add1~0_combout\)) # (!func(2) & ((bus_data_in(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[17]~0_combout\,
	datab => \Add1~0_combout\,
	datac => bus_data_in(0),
	datad => func(2),
	combout => \bus_data_in[0]~0_combout\);

-- Location: FF_X75_Y33_N27
\bus_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(0));

-- Location: LCCOMB_X71_Y30_N2
\RegFile_inst|registers~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~0_combout\ = (!\clr~input_o\ & bus_data_in(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => bus_data_in(0),
	combout => \RegFile_inst|registers~0_combout\);

-- Location: LCCOMB_X71_Y33_N6
\RegFile_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~7_combout\ = (!rd_addr(2) & (\reg_file_ld~q\ & (rd_addr(1) & rd_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \reg_file_ld~q\,
	datac => rd_addr(1),
	datad => rd_addr(0),
	combout => \RegFile_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X71_Y33_N16
\RegFile_inst|registers[3][8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][8]~40_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~7_combout\,
	combout => \RegFile_inst|registers[3][8]~40_combout\);

-- Location: FF_X70_Y32_N13
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
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][0]~q\);

-- Location: LCCOMB_X70_Y33_N24
\RegFile_inst|Mux95~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~2_combout\ = (rd_addr(0) & (((rd_addr(1))) # (!\RegFile_inst|registers[1][0]~q\))) # (!rd_addr(0) & (((!rd_addr(1) & \RegFile_inst|registers[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][0]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[0][0]~q\,
	combout => \RegFile_inst|Mux95~2_combout\);

-- Location: LCCOMB_X70_Y33_N30
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

-- Location: LCCOMB_X74_Y33_N8
\RegFile_inst|registers[5][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][0]~feeder_combout\ = \RegFile_inst|registers~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~0_combout\,
	combout => \RegFile_inst|registers[5][0]~feeder_combout\);

-- Location: LCCOMB_X71_Y33_N28
\RegFile_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~5_combout\ = (\reg_file_ld~q\ & (!rd_addr(1) & (rd_addr(0) & rd_addr(2))))

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
	combout => \RegFile_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X71_Y33_N22
\RegFile_inst|registers[5][12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][12]~38_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~5_combout\,
	combout => \RegFile_inst|registers[5][12]~38_combout\);

-- Location: FF_X74_Y33_N9
\RegFile_inst|registers[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][0]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][0]~q\);

-- Location: LCCOMB_X72_Y33_N18
\RegFile_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Decoder0~6_combout\ = (rd_addr(0) & (\reg_file_ld~q\ & (rd_addr(2) & rd_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \reg_file_ld~q\,
	datac => rd_addr(2),
	datad => rd_addr(1),
	combout => \RegFile_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X72_Y33_N2
\RegFile_inst|registers[7][6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][6]~39_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~6_combout\,
	combout => \RegFile_inst|registers[7][6]~39_combout\);

-- Location: FF_X72_Y33_N21
\RegFile_inst|registers[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~0_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][0]~q\);

-- Location: LCCOMB_X72_Y32_N4
\RegFile_inst|Mux95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][0]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][0]~q\,
	datac => \RegFile_inst|registers[4][0]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux95~0_combout\);

-- Location: LCCOMB_X72_Y33_N20
\RegFile_inst|Mux95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux95~0_combout\ & ((\RegFile_inst|registers[7][0]~q\))) # (!\RegFile_inst|Mux95~0_combout\ & (\RegFile_inst|registers[5][0]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][0]~q\,
	datac => \RegFile_inst|registers[7][0]~q\,
	datad => \RegFile_inst|Mux95~0_combout\,
	combout => \RegFile_inst|Mux95~1_combout\);

-- Location: LCCOMB_X70_Y33_N2
\RegFile_inst|Mux95~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux95~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux95~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux95~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux95~3_combout\,
	datad => \RegFile_inst|Mux95~1_combout\,
	combout => \RegFile_inst|Mux95~4_combout\);

-- Location: FF_X70_Y33_N3
\RegFile_inst|bus_reg_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux95~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(0));

-- Location: LCCOMB_X77_Y33_N24
\output[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(0),
	combout => \output[0]~reg0feeder_combout\);

-- Location: LCCOMB_X75_Y33_N20
\output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~0_combout\ = (!\clr~input_o\ & (opcode(3) & (func(1) & !func(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => opcode(3),
	datac => func(1),
	datad => func(2),
	combout => \output[0]~0_combout\);

-- Location: FF_X77_Y33_N25
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[0]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N18
\RegFile_inst|registers[6][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][1]~feeder_combout\ = \RegFile_inst|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~3_combout\,
	combout => \RegFile_inst|registers[6][1]~feeder_combout\);

-- Location: FF_X72_Y32_N19
\RegFile_inst|registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][1]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][1]~q\);

-- Location: LCCOMB_X69_Y34_N26
\RegFile_inst|registers[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][1]~feeder_combout\ = \RegFile_inst|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~3_combout\,
	combout => \RegFile_inst|registers[0][1]~feeder_combout\);

-- Location: FF_X69_Y34_N27
\RegFile_inst|registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][1]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][1]~q\);

-- Location: LCCOMB_X70_Y33_N10
\RegFile_inst|registers[2][1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][1]~42_combout\ = !\RegFile_inst|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~3_combout\,
	combout => \RegFile_inst|registers[2][1]~42_combout\);

-- Location: FF_X70_Y33_N11
\RegFile_inst|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][1]~42_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][1]~q\);

-- Location: LCCOMB_X69_Y32_N24
\RegFile_inst|Mux62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~0_combout\ = (rt_addr(2) & (func(1))) # (!rt_addr(2) & ((func(1) & ((!\RegFile_inst|registers[2][1]~q\))) # (!func(1) & (\RegFile_inst|registers[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => func(1),
	datac => \RegFile_inst|registers[0][1]~q\,
	datad => \RegFile_inst|registers[2][1]~q\,
	combout => \RegFile_inst|Mux62~0_combout\);

-- Location: FF_X72_Y32_N1
\RegFile_inst|registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~3_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][1]~q\);

-- Location: LCCOMB_X69_Y32_N12
\RegFile_inst|Mux62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux62~1_combout\ = (\RegFile_inst|Mux62~0_combout\ & ((\RegFile_inst|registers[6][1]~q\) # ((!rt_addr(2))))) # (!\RegFile_inst|Mux62~0_combout\ & (((\RegFile_inst|registers[4][1]~q\ & rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][1]~q\,
	datab => \RegFile_inst|Mux62~0_combout\,
	datac => \RegFile_inst|registers[4][1]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux62~1_combout\);

-- Location: FF_X69_Y32_N13
\RegFile_inst|bus_reg_rt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(1));

-- Location: LCCOMB_X71_Y33_N8
\RegFile_inst|registers[1][12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][12]~4_combout\ = (\clr~input_o\) # (\RegFile_inst|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \RegFile_inst|Decoder0~1_combout\,
	combout => \RegFile_inst|registers[1][12]~4_combout\);

-- Location: FF_X69_Y34_N25
\RegFile_inst|registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~3_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][1]~q\);

-- Location: LCCOMB_X69_Y34_N24
\RegFile_inst|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux30~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][1]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][1]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][1]~q\,
	combout => \RegFile_inst|Mux30~0_combout\);

-- Location: FF_X70_Y32_N5
\RegFile_inst|bus_reg_rs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux30~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(1));

-- Location: LCCOMB_X71_Y30_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (func(2) & !func(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => func(2),
	datad => func(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X70_Y32_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\RegFile_inst|bus_reg_rt\(1) & ((\RegFile_inst|bus_reg_rs\(1) & (\Add1~1\ & VCC)) # (!\RegFile_inst|bus_reg_rs\(1) & (!\Add1~1\)))) # (!\RegFile_inst|bus_reg_rt\(1) & ((\RegFile_inst|bus_reg_rs\(1) & (!\Add1~1\)) # 
-- (!\RegFile_inst|bus_reg_rs\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\RegFile_inst|bus_reg_rt\(1) & (!\RegFile_inst|bus_reg_rs\(1) & !\Add1~1\)) # (!\RegFile_inst|bus_reg_rt\(1) & ((!\Add1~1\) # (!\RegFile_inst|bus_reg_rs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(1),
	datab => \RegFile_inst|bus_reg_rs\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X69_Y31_N12
\bus_data_in~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~1_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(1) $ ((\RegFile_inst|bus_reg_rs\(1))))) # (!\Equal2~0_combout\ & (((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(1),
	datab => \RegFile_inst|bus_reg_rs\(1),
	datac => \Equal2~0_combout\,
	datad => \Add1~2_combout\,
	combout => \bus_data_in~1_combout\);

-- Location: LCCOMB_X71_Y30_N28
\bus_data_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in[1]~2_combout\ = (!\clr~input_o\ & (func(2) & !opcode(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => func(2),
	datad => opcode(3),
	combout => \bus_data_in[1]~2_combout\);

-- Location: FF_X69_Y31_N13
\bus_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~1_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(1));

-- Location: LCCOMB_X69_Y31_N0
\RegFile_inst|registers~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~3_combout\ = (!\clr~input_o\ & bus_data_in(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(1),
	combout => \RegFile_inst|registers~3_combout\);

-- Location: LCCOMB_X72_Y34_N8
\RegFile_inst|registers[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][1]~feeder_combout\ = \RegFile_inst|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~3_combout\,
	combout => \RegFile_inst|registers[5][1]~feeder_combout\);

-- Location: FF_X72_Y34_N9
\RegFile_inst|registers[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][1]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][1]~q\);

-- Location: FF_X72_Y33_N31
\RegFile_inst|registers[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~3_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][1]~q\);

-- Location: LCCOMB_X72_Y32_N0
\RegFile_inst|Mux94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][1]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][1]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][1]~q\,
	datac => \RegFile_inst|registers[4][1]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux94~0_combout\);

-- Location: LCCOMB_X72_Y33_N30
\RegFile_inst|Mux94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux94~0_combout\ & ((\RegFile_inst|registers[7][1]~q\))) # (!\RegFile_inst|Mux94~0_combout\ & (\RegFile_inst|registers[5][1]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][1]~q\,
	datac => \RegFile_inst|registers[7][1]~q\,
	datad => \RegFile_inst|Mux94~0_combout\,
	combout => \RegFile_inst|Mux94~1_combout\);

-- Location: FF_X70_Y32_N1
\RegFile_inst|registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~3_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][1]~q\);

-- Location: LCCOMB_X69_Y32_N4
\RegFile_inst|Mux94~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][1]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][1]~q\,
	datad => \RegFile_inst|registers[1][1]~q\,
	combout => \RegFile_inst|Mux94~2_combout\);

-- Location: LCCOMB_X69_Y32_N26
\RegFile_inst|Mux94~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux94~2_combout\ & (\RegFile_inst|registers[3][1]~q\)) # (!\RegFile_inst|Mux94~2_combout\ & ((!\RegFile_inst|registers[2][1]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux94~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][1]~q\,
	datac => \RegFile_inst|Mux94~2_combout\,
	datad => \RegFile_inst|registers[2][1]~q\,
	combout => \RegFile_inst|Mux94~3_combout\);

-- Location: LCCOMB_X69_Y32_N0
\RegFile_inst|Mux94~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux94~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux94~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux94~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux94~1_combout\,
	datac => \RegFile_inst|Mux94~3_combout\,
	datad => rd_addr(2),
	combout => \RegFile_inst|Mux94~4_combout\);

-- Location: FF_X69_Y32_N1
\RegFile_inst|bus_reg_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux94~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(1));

-- Location: LCCOMB_X77_Y33_N6
\output[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N7
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[1]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X70_Y33_N20
\RegFile_inst|registers[2][2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][2]~43_combout\ = !\RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[2][2]~43_combout\);

-- Location: FF_X70_Y33_N21
\RegFile_inst|registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][2]~43_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][2]~q\);

-- Location: LCCOMB_X72_Y30_N2
\RegFile_inst|registers[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][2]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[0][2]~feeder_combout\);

-- Location: FF_X72_Y30_N3
\RegFile_inst|registers[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][2]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][2]~q\);

-- Location: LCCOMB_X71_Y32_N26
\RegFile_inst|Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & (!\RegFile_inst|registers[2][2]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][2]~q\,
	datab => rt_addr(2),
	datac => func(1),
	datad => \RegFile_inst|registers[0][2]~q\,
	combout => \RegFile_inst|Mux61~0_combout\);

-- Location: FF_X72_Y32_N25
\RegFile_inst|registers[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][2]~q\);

-- Location: LCCOMB_X71_Y32_N0
\RegFile_inst|Mux61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux61~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux61~0_combout\ & (\RegFile_inst|registers[6][2]~q\)) # (!\RegFile_inst|Mux61~0_combout\ & ((\RegFile_inst|registers[4][2]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][2]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux61~0_combout\,
	datad => \RegFile_inst|registers[4][2]~q\,
	combout => \RegFile_inst|Mux61~1_combout\);

-- Location: FF_X70_Y32_N29
\RegFile_inst|bus_reg_rt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux61~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(2));

-- Location: LCCOMB_X72_Y30_N24
\RegFile_inst|registers[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][2]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[1][2]~feeder_combout\);

-- Location: FF_X72_Y30_N25
\RegFile_inst|registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][2]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][2]~q\);

-- Location: LCCOMB_X71_Y32_N2
\RegFile_inst|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux29~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][2]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][2]~q\,
	datad => \RegFile_inst|registers[1][2]~q\,
	combout => \RegFile_inst|Mux29~0_combout\);

-- Location: FF_X71_Y32_N3
\RegFile_inst|bus_reg_rs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(2));

-- Location: LCCOMB_X70_Y32_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\RegFile_inst|bus_reg_rs\(2) $ (\RegFile_inst|bus_reg_rt\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\RegFile_inst|bus_reg_rs\(2) & ((\RegFile_inst|bus_reg_rt\(2)) # (!\Add1~3\))) # (!\RegFile_inst|bus_reg_rs\(2) & (\RegFile_inst|bus_reg_rt\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(2),
	datab => \RegFile_inst|bus_reg_rt\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X72_Y31_N8
\bus_data_in~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~3_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(2) $ ((\RegFile_inst|bus_reg_rs\(2))))) # (!\Equal2~0_combout\ & (((\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(2),
	datab => \RegFile_inst|bus_reg_rs\(2),
	datac => \Add1~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \bus_data_in~3_combout\);

-- Location: FF_X72_Y31_N9
\bus_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~3_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(2));

-- Location: LCCOMB_X72_Y31_N28
\RegFile_inst|registers~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~5_combout\ = (bus_data_in(2) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(2),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~5_combout\);

-- Location: LCCOMB_X72_Y32_N26
\RegFile_inst|registers[6][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][2]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[6][2]~feeder_combout\);

-- Location: FF_X72_Y32_N27
\RegFile_inst|registers[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][2]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][2]~q\);

-- Location: LCCOMB_X72_Y32_N24
\RegFile_inst|Mux93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][2]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][2]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][2]~q\,
	datac => \RegFile_inst|registers[4][2]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux93~0_combout\);

-- Location: FF_X72_Y33_N13
\RegFile_inst|registers[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~5_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][2]~q\);

-- Location: LCCOMB_X74_Y33_N14
\RegFile_inst|registers[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][2]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[5][2]~feeder_combout\);

-- Location: FF_X74_Y33_N15
\RegFile_inst|registers[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][2]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][2]~q\);

-- Location: LCCOMB_X72_Y33_N12
\RegFile_inst|Mux93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux93~0_combout\ & (\RegFile_inst|registers[7][2]~q\)) # (!\RegFile_inst|Mux93~0_combout\ & ((\RegFile_inst|registers[5][2]~q\))))) # (!rd_addr(0) & (\RegFile_inst|Mux93~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|Mux93~0_combout\,
	datac => \RegFile_inst|registers[7][2]~q\,
	datad => \RegFile_inst|registers[5][2]~q\,
	combout => \RegFile_inst|Mux93~1_combout\);

-- Location: LCCOMB_X72_Y31_N4
\RegFile_inst|registers[3][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][2]~feeder_combout\ = \RegFile_inst|registers~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~5_combout\,
	combout => \RegFile_inst|registers[3][2]~feeder_combout\);

-- Location: FF_X72_Y31_N5
\RegFile_inst|registers[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][2]~feeder_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][2]~q\);

-- Location: LCCOMB_X71_Y32_N8
\RegFile_inst|Mux93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][2]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][2]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][2]~q\,
	datab => \RegFile_inst|registers[0][2]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux93~2_combout\);

-- Location: LCCOMB_X71_Y32_N12
\RegFile_inst|Mux93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux93~2_combout\ & ((\RegFile_inst|registers[3][2]~q\))) # (!\RegFile_inst|Mux93~2_combout\ & (!\RegFile_inst|registers[2][2]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux93~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][2]~q\,
	datab => \RegFile_inst|registers[3][2]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|Mux93~2_combout\,
	combout => \RegFile_inst|Mux93~3_combout\);

-- Location: LCCOMB_X72_Y33_N24
\RegFile_inst|Mux93~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux93~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux93~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux93~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux93~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux93~3_combout\,
	combout => \RegFile_inst|Mux93~4_combout\);

-- Location: FF_X72_Y33_N25
\RegFile_inst|bus_reg_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux93~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(2));

-- Location: LCCOMB_X77_Y33_N12
\output[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(2),
	combout => \output[2]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N13
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[2]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N14
\RegFile_inst|registers[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][3]~feeder_combout\ = \RegFile_inst|registers~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~6_combout\,
	combout => \RegFile_inst|registers[6][3]~feeder_combout\);

-- Location: FF_X72_Y32_N15
\RegFile_inst|registers[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][3]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][3]~q\);

-- Location: FF_X70_Y33_N7
\RegFile_inst|registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][3]~q\);

-- Location: FF_X69_Y32_N3
\RegFile_inst|registers[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][3]~q\);

-- Location: LCCOMB_X69_Y32_N22
\RegFile_inst|Mux60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~0_combout\ = (rt_addr(2) & (func(1))) # (!rt_addr(2) & ((func(1) & (\RegFile_inst|registers[2][3]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => func(1),
	datac => \RegFile_inst|registers[2][3]~q\,
	datad => \RegFile_inst|registers[0][3]~q\,
	combout => \RegFile_inst|Mux60~0_combout\);

-- Location: FF_X72_Y32_N17
\RegFile_inst|registers[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][3]~q\);

-- Location: LCCOMB_X69_Y32_N6
\RegFile_inst|Mux60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux60~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux60~0_combout\ & (\RegFile_inst|registers[6][3]~q\)) # (!\RegFile_inst|Mux60~0_combout\ & ((\RegFile_inst|registers[4][3]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[6][3]~q\,
	datac => \RegFile_inst|Mux60~0_combout\,
	datad => \RegFile_inst|registers[4][3]~q\,
	combout => \RegFile_inst|Mux60~1_combout\);

-- Location: FF_X69_Y32_N7
\RegFile_inst|bus_reg_rt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux60~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(3));

-- Location: LCCOMB_X69_Y34_N4
\RegFile_inst|registers[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][3]~feeder_combout\ = \RegFile_inst|registers~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~6_combout\,
	combout => \RegFile_inst|registers[1][3]~feeder_combout\);

-- Location: FF_X69_Y34_N5
\RegFile_inst|registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][3]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][3]~q\);

-- Location: LCCOMB_X69_Y32_N14
\RegFile_inst|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux28~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][3]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][3]~q\,
	datad => \RegFile_inst|registers[1][3]~q\,
	combout => \RegFile_inst|Mux28~0_combout\);

-- Location: FF_X69_Y32_N15
\RegFile_inst|bus_reg_rs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(3));

-- Location: LCCOMB_X70_Y32_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\RegFile_inst|bus_reg_rs\(3) & ((\RegFile_inst|bus_reg_rt\(3) & (\Add1~5\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(3) & (!\Add1~5\)))) # (!\RegFile_inst|bus_reg_rs\(3) & ((\RegFile_inst|bus_reg_rt\(3) & (!\Add1~5\)) # 
-- (!\RegFile_inst|bus_reg_rt\(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\RegFile_inst|bus_reg_rs\(3) & (!\RegFile_inst|bus_reg_rt\(3) & !\Add1~5\)) # (!\RegFile_inst|bus_reg_rs\(3) & ((!\Add1~5\) # (!\RegFile_inst|bus_reg_rt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(3),
	datab => \RegFile_inst|bus_reg_rt\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X69_Y31_N30
\bus_data_in~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~4_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(3) $ ((\RegFile_inst|bus_reg_rs\(3))))) # (!\Equal2~0_combout\ & (((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(3),
	datab => \Equal2~0_combout\,
	datac => \RegFile_inst|bus_reg_rs\(3),
	datad => \Add1~6_combout\,
	combout => \bus_data_in~4_combout\);

-- Location: FF_X69_Y31_N31
\bus_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~4_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(3));

-- Location: LCCOMB_X69_Y31_N18
\RegFile_inst|registers~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~6_combout\ = (!\clr~input_o\ & bus_data_in(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => bus_data_in(3),
	combout => \RegFile_inst|registers~6_combout\);

-- Location: FF_X72_Y33_N3
\RegFile_inst|registers[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][3]~q\);

-- Location: LCCOMB_X74_Y33_N24
\RegFile_inst|registers[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][3]~feeder_combout\ = \RegFile_inst|registers~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~6_combout\,
	combout => \RegFile_inst|registers[5][3]~feeder_combout\);

-- Location: FF_X74_Y33_N25
\RegFile_inst|registers[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][3]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][3]~q\);

-- Location: LCCOMB_X72_Y32_N16
\RegFile_inst|Mux92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][3]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][3]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][3]~q\,
	datac => \RegFile_inst|registers[4][3]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux92~0_combout\);

-- Location: LCCOMB_X70_Y33_N26
\RegFile_inst|Mux92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~1_combout\ = (\RegFile_inst|Mux92~0_combout\ & ((\RegFile_inst|registers[7][3]~q\) # ((!rd_addr(0))))) # (!\RegFile_inst|Mux92~0_combout\ & (((\RegFile_inst|registers[5][3]~q\ & rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][3]~q\,
	datab => \RegFile_inst|registers[5][3]~q\,
	datac => \RegFile_inst|Mux92~0_combout\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux92~1_combout\);

-- Location: FF_X71_Y31_N9
\RegFile_inst|registers[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~6_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][3]~q\);

-- Location: LCCOMB_X69_Y32_N2
\RegFile_inst|Mux92~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~2_combout\ = (rd_addr(1) & (rd_addr(0))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][3]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][3]~q\,
	datad => \RegFile_inst|registers[1][3]~q\,
	combout => \RegFile_inst|Mux92~2_combout\);

-- Location: LCCOMB_X70_Y33_N6
\RegFile_inst|Mux92~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux92~2_combout\ & (\RegFile_inst|registers[3][3]~q\)) # (!\RegFile_inst|Mux92~2_combout\ & ((\RegFile_inst|registers[2][3]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux92~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][3]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][3]~q\,
	datad => \RegFile_inst|Mux92~2_combout\,
	combout => \RegFile_inst|Mux92~3_combout\);

-- Location: LCCOMB_X70_Y33_N28
\RegFile_inst|Mux92~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux92~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux92~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux92~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux92~1_combout\,
	datad => \RegFile_inst|Mux92~3_combout\,
	combout => \RegFile_inst|Mux92~4_combout\);

-- Location: FF_X70_Y33_N29
\RegFile_inst|bus_reg_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux92~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(3));

-- Location: LCCOMB_X77_Y33_N2
\output[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(3),
	combout => \output[3]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N3
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[3]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N14
\RegFile_inst|registers[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][4]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[0][4]~feeder_combout\);

-- Location: FF_X72_Y30_N15
\RegFile_inst|registers[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][4]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][4]~q\);

-- Location: FF_X72_Y30_N21
\RegFile_inst|registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][4]~q\);

-- Location: LCCOMB_X71_Y32_N20
\RegFile_inst|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux27~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][4]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][4]~q\,
	datac => \RegFile_inst|registers[1][4]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux27~0_combout\);

-- Location: FF_X71_Y32_N21
\RegFile_inst|bus_reg_rs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(4));

-- Location: FF_X75_Y32_N5
\RegFile_inst|registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][4]~q\);

-- Location: LCCOMB_X75_Y32_N26
\RegFile_inst|Mux59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~0_combout\ = (func(1) & ((rt_addr(2)) # ((\RegFile_inst|registers[2][4]~q\)))) # (!func(1) & (!rt_addr(2) & ((\RegFile_inst|registers[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[2][4]~q\,
	datad => \RegFile_inst|registers[0][4]~q\,
	combout => \RegFile_inst|Mux59~0_combout\);

-- Location: FF_X72_Y32_N21
\RegFile_inst|registers[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][4]~q\);

-- Location: LCCOMB_X72_Y32_N10
\RegFile_inst|registers[6][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][4]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[6][4]~feeder_combout\);

-- Location: FF_X72_Y32_N11
\RegFile_inst|registers[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][4]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][4]~q\);

-- Location: LCCOMB_X71_Y32_N22
\RegFile_inst|Mux59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux59~1_combout\ = (\RegFile_inst|Mux59~0_combout\ & (((\RegFile_inst|registers[6][4]~q\) # (!rt_addr(2))))) # (!\RegFile_inst|Mux59~0_combout\ & (\RegFile_inst|registers[4][4]~q\ & (rt_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux59~0_combout\,
	datab => \RegFile_inst|registers[4][4]~q\,
	datac => rt_addr(2),
	datad => \RegFile_inst|registers[6][4]~q\,
	combout => \RegFile_inst|Mux59~1_combout\);

-- Location: FF_X71_Y32_N23
\RegFile_inst|bus_reg_rt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(4));

-- Location: LCCOMB_X70_Y32_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\RegFile_inst|bus_reg_rt\(4) $ (\RegFile_inst|bus_reg_rs\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\RegFile_inst|bus_reg_rt\(4) & ((\RegFile_inst|bus_reg_rs\(4)) # (!\Add1~7\))) # (!\RegFile_inst|bus_reg_rt\(4) & (\RegFile_inst|bus_reg_rs\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(4),
	datab => \RegFile_inst|bus_reg_rs\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X72_Y31_N30
\bus_data_in~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~5_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(4) $ ((\RegFile_inst|bus_reg_rt\(4))))) # (!\Equal2~0_combout\ & (((\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rs\(4),
	datac => \RegFile_inst|bus_reg_rt\(4),
	datad => \Add1~8_combout\,
	combout => \bus_data_in~5_combout\);

-- Location: FF_X72_Y31_N31
\bus_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~5_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(4));

-- Location: LCCOMB_X72_Y31_N22
\RegFile_inst|registers~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~7_combout\ = (bus_data_in(4) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(4),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~7_combout\);

-- Location: LCCOMB_X72_Y31_N10
\RegFile_inst|registers[3][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][4]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[3][4]~feeder_combout\);

-- Location: FF_X72_Y31_N11
\RegFile_inst|registers[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][4]~feeder_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][4]~q\);

-- Location: LCCOMB_X72_Y30_N20
\RegFile_inst|Mux91~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][4]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][4]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][4]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][4]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux91~2_combout\);

-- Location: LCCOMB_X75_Y32_N4
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

-- Location: LCCOMB_X74_Y31_N18
\RegFile_inst|registers[5][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][4]~feeder_combout\ = \RegFile_inst|registers~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~7_combout\,
	combout => \RegFile_inst|registers[5][4]~feeder_combout\);

-- Location: FF_X74_Y31_N19
\RegFile_inst|registers[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][4]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][4]~q\);

-- Location: FF_X74_Y32_N25
\RegFile_inst|registers[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~7_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][4]~q\);

-- Location: LCCOMB_X72_Y32_N20
\RegFile_inst|Mux91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][4]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][4]~q\,
	datac => \RegFile_inst|registers[4][4]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux91~0_combout\);

-- Location: LCCOMB_X74_Y32_N24
\RegFile_inst|Mux91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux91~0_combout\ & ((\RegFile_inst|registers[7][4]~q\))) # (!\RegFile_inst|Mux91~0_combout\ & (\RegFile_inst|registers[5][4]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][4]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][4]~q\,
	datad => \RegFile_inst|Mux91~0_combout\,
	combout => \RegFile_inst|Mux91~1_combout\);

-- Location: LCCOMB_X75_Y32_N6
\RegFile_inst|Mux91~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux91~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux91~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux91~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux91~3_combout\,
	datad => \RegFile_inst|Mux91~1_combout\,
	combout => \RegFile_inst|Mux91~4_combout\);

-- Location: FF_X75_Y32_N7
\RegFile_inst|bus_reg_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux91~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(4));

-- Location: LCCOMB_X77_Y33_N8
\output[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(4),
	combout => \output[4]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N9
\output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[4]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N28
\RegFile_inst|registers[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][5]~feeder_combout\ = \RegFile_inst|registers~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~8_combout\,
	combout => \RegFile_inst|registers[1][5]~feeder_combout\);

-- Location: FF_X72_Y30_N29
\RegFile_inst|registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][5]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][5]~q\);

-- Location: FF_X72_Y30_N7
\RegFile_inst|registers[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][5]~q\);

-- Location: LCCOMB_X74_Y32_N16
\RegFile_inst|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux26~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][5]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][5]~q\,
	datac => \RegFile_inst|registers[0][5]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux26~0_combout\);

-- Location: FF_X74_Y32_N17
\RegFile_inst|bus_reg_rs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(5));

-- Location: FF_X75_Y32_N21
\RegFile_inst|registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][5]~q\);

-- Location: LCCOMB_X75_Y32_N22
\RegFile_inst|Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~0_combout\ = (func(1) & (((\RegFile_inst|registers[2][5]~q\) # (rt_addr(2))))) # (!func(1) & (\RegFile_inst|registers[0][5]~q\ & ((!rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[0][5]~q\,
	datac => \RegFile_inst|registers[2][5]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux58~0_combout\);

-- Location: LCCOMB_X72_Y32_N6
\RegFile_inst|registers[6][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][5]~feeder_combout\ = \RegFile_inst|registers~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~8_combout\,
	combout => \RegFile_inst|registers[6][5]~feeder_combout\);

-- Location: FF_X72_Y32_N7
\RegFile_inst|registers[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][5]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][5]~q\);

-- Location: FF_X72_Y32_N29
\RegFile_inst|registers[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][5]~q\);

-- Location: LCCOMB_X75_Y32_N14
\RegFile_inst|Mux58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux58~1_combout\ = (\RegFile_inst|Mux58~0_combout\ & (((\RegFile_inst|registers[6][5]~q\)) # (!rt_addr(2)))) # (!\RegFile_inst|Mux58~0_combout\ & (rt_addr(2) & ((\RegFile_inst|registers[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux58~0_combout\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[6][5]~q\,
	datad => \RegFile_inst|registers[4][5]~q\,
	combout => \RegFile_inst|Mux58~1_combout\);

-- Location: FF_X75_Y32_N15
\RegFile_inst|bus_reg_rt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(5));

-- Location: LCCOMB_X70_Y32_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\RegFile_inst|bus_reg_rs\(5) & ((\RegFile_inst|bus_reg_rt\(5) & (\Add1~9\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(5) & (!\Add1~9\)))) # (!\RegFile_inst|bus_reg_rs\(5) & ((\RegFile_inst|bus_reg_rt\(5) & (!\Add1~9\)) # 
-- (!\RegFile_inst|bus_reg_rt\(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\RegFile_inst|bus_reg_rs\(5) & (!\RegFile_inst|bus_reg_rt\(5) & !\Add1~9\)) # (!\RegFile_inst|bus_reg_rs\(5) & ((!\Add1~9\) # (!\RegFile_inst|bus_reg_rt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(5),
	datab => \RegFile_inst|bus_reg_rt\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X72_Y31_N24
\bus_data_in~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~6_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(5) $ ((\RegFile_inst|bus_reg_rt\(5))))) # (!\Equal2~0_combout\ & (((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rs\(5),
	datac => \RegFile_inst|bus_reg_rt\(5),
	datad => \Add1~10_combout\,
	combout => \bus_data_in~6_combout\);

-- Location: FF_X72_Y31_N25
\bus_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~6_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(5));

-- Location: LCCOMB_X72_Y31_N0
\RegFile_inst|registers~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~8_combout\ = (!\clr~input_o\ & bus_data_in(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(5),
	combout => \RegFile_inst|registers~8_combout\);

-- Location: LCCOMB_X72_Y31_N16
\RegFile_inst|registers[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][5]~feeder_combout\ = \RegFile_inst|registers~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~8_combout\,
	combout => \RegFile_inst|registers[3][5]~feeder_combout\);

-- Location: FF_X72_Y31_N17
\RegFile_inst|registers[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][5]~feeder_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][5]~q\);

-- Location: LCCOMB_X72_Y30_N6
\RegFile_inst|Mux90~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][5]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][5]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][5]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux90~2_combout\);

-- Location: LCCOMB_X75_Y32_N20
\RegFile_inst|Mux90~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux90~2_combout\ & (\RegFile_inst|registers[3][5]~q\)) # (!\RegFile_inst|Mux90~2_combout\ & ((\RegFile_inst|registers[2][5]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux90~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][5]~q\,
	datac => \RegFile_inst|registers[2][5]~q\,
	datad => \RegFile_inst|Mux90~2_combout\,
	combout => \RegFile_inst|Mux90~3_combout\);

-- Location: LCCOMB_X72_Y34_N6
\RegFile_inst|registers[5][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][5]~feeder_combout\ = \RegFile_inst|registers~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~8_combout\,
	combout => \RegFile_inst|registers[5][5]~feeder_combout\);

-- Location: FF_X72_Y34_N7
\RegFile_inst|registers[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][5]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][5]~q\);

-- Location: FF_X72_Y34_N25
\RegFile_inst|registers[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~8_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][5]~q\);

-- Location: LCCOMB_X72_Y32_N28
\RegFile_inst|Mux90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][5]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][5]~q\,
	datac => \RegFile_inst|registers[4][5]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux90~0_combout\);

-- Location: LCCOMB_X72_Y34_N24
\RegFile_inst|Mux90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux90~0_combout\ & ((\RegFile_inst|registers[7][5]~q\))) # (!\RegFile_inst|Mux90~0_combout\ & (\RegFile_inst|registers[5][5]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][5]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][5]~q\,
	datad => \RegFile_inst|Mux90~0_combout\,
	combout => \RegFile_inst|Mux90~1_combout\);

-- Location: LCCOMB_X75_Y32_N0
\RegFile_inst|Mux90~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux90~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux90~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux90~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datab => \RegFile_inst|Mux90~3_combout\,
	datad => \RegFile_inst|Mux90~1_combout\,
	combout => \RegFile_inst|Mux90~4_combout\);

-- Location: FF_X75_Y32_N1
\RegFile_inst|bus_reg_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux90~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(5));

-- Location: LCCOMB_X77_Y33_N22
\output[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[5]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(5),
	combout => \output[5]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N23
\output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[5]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~reg0_q\);

-- Location: FF_X69_Y35_N19
\RegFile_inst|registers[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][6]~q\);

-- Location: LCCOMB_X69_Y35_N8
\RegFile_inst|registers[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][6]~feeder_combout\ = \RegFile_inst|registers~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~9_combout\,
	combout => \RegFile_inst|registers[1][6]~feeder_combout\);

-- Location: FF_X69_Y35_N9
\RegFile_inst|registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][6]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][6]~q\);

-- Location: LCCOMB_X69_Y32_N20
\RegFile_inst|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux25~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][6]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[0][6]~q\,
	datad => \RegFile_inst|registers[1][6]~q\,
	combout => \RegFile_inst|Mux25~0_combout\);

-- Location: FF_X69_Y32_N21
\RegFile_inst|bus_reg_rs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(6));

-- Location: LCCOMB_X72_Y32_N2
\RegFile_inst|registers[6][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][6]~feeder_combout\ = \RegFile_inst|registers~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~9_combout\,
	combout => \RegFile_inst|registers[6][6]~feeder_combout\);

-- Location: FF_X72_Y32_N3
\RegFile_inst|registers[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][6]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][6]~q\);

-- Location: FF_X72_Y32_N9
\RegFile_inst|registers[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][6]~q\);

-- Location: LCCOMB_X69_Y35_N16
\RegFile_inst|Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & ((\RegFile_inst|registers[4][6]~q\))) # (!rt_addr(2) & (\RegFile_inst|registers[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][6]~q\,
	datab => \RegFile_inst|registers[4][6]~q\,
	datac => func(1),
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux57~0_combout\);

-- Location: LCCOMB_X70_Y35_N2
\RegFile_inst|registers[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][6]~feeder_combout\ = \RegFile_inst|registers~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~9_combout\,
	combout => \RegFile_inst|registers[2][6]~feeder_combout\);

-- Location: FF_X70_Y35_N3
\RegFile_inst|registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][6]~feeder_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][6]~q\);

-- Location: LCCOMB_X70_Y35_N20
\RegFile_inst|Mux57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux57~1_combout\ = (func(1) & ((\RegFile_inst|Mux57~0_combout\ & (\RegFile_inst|registers[6][6]~q\)) # (!\RegFile_inst|Mux57~0_combout\ & ((\RegFile_inst|registers[2][6]~q\))))) # (!func(1) & (((\RegFile_inst|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[6][6]~q\,
	datac => \RegFile_inst|Mux57~0_combout\,
	datad => \RegFile_inst|registers[2][6]~q\,
	combout => \RegFile_inst|Mux57~1_combout\);

-- Location: FF_X70_Y35_N21
\RegFile_inst|bus_reg_rt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(6));

-- Location: LCCOMB_X70_Y32_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\RegFile_inst|bus_reg_rt\(6) $ (\RegFile_inst|bus_reg_rs\(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\RegFile_inst|bus_reg_rt\(6) & ((\RegFile_inst|bus_reg_rs\(6)) # (!\Add1~11\))) # (!\RegFile_inst|bus_reg_rt\(6) & (\RegFile_inst|bus_reg_rs\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(6),
	datab => \RegFile_inst|bus_reg_rs\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X72_Y31_N18
\bus_data_in~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~7_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(6) $ ((\RegFile_inst|bus_reg_rt\(6))))) # (!\Equal2~0_combout\ & (((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(6),
	datab => \RegFile_inst|bus_reg_rt\(6),
	datac => \Add1~12_combout\,
	datad => \Equal2~0_combout\,
	combout => \bus_data_in~7_combout\);

-- Location: FF_X72_Y31_N19
\bus_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~7_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(6));

-- Location: LCCOMB_X72_Y31_N26
\RegFile_inst|registers~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~9_combout\ = (!\clr~input_o\ & bus_data_in(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(6),
	combout => \RegFile_inst|registers~9_combout\);

-- Location: LCCOMB_X69_Y33_N28
\RegFile_inst|registers[3][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][6]~feeder_combout\ = \RegFile_inst|registers~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~9_combout\,
	combout => \RegFile_inst|registers[3][6]~feeder_combout\);

-- Location: FF_X69_Y33_N29
\RegFile_inst|registers[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][6]~feeder_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][6]~q\);

-- Location: LCCOMB_X69_Y35_N18
\RegFile_inst|Mux89~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][6]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][6]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][6]~q\,
	datac => \RegFile_inst|registers[0][6]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux89~2_combout\);

-- Location: LCCOMB_X69_Y35_N28
\RegFile_inst|Mux89~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux89~2_combout\ & (\RegFile_inst|registers[3][6]~q\)) # (!\RegFile_inst|Mux89~2_combout\ & ((\RegFile_inst|registers[2][6]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][6]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][6]~q\,
	datad => \RegFile_inst|Mux89~2_combout\,
	combout => \RegFile_inst|Mux89~3_combout\);

-- Location: FF_X71_Y33_N23
\RegFile_inst|registers[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][6]~q\);

-- Location: FF_X72_Y33_N1
\RegFile_inst|registers[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~9_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][6]~q\);

-- Location: LCCOMB_X72_Y32_N8
\RegFile_inst|Mux89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][6]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & (\RegFile_inst|registers[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][6]~q\,
	datad => \RegFile_inst|registers[6][6]~q\,
	combout => \RegFile_inst|Mux89~0_combout\);

-- Location: LCCOMB_X72_Y33_N0
\RegFile_inst|Mux89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux89~0_combout\ & ((\RegFile_inst|registers[7][6]~q\))) # (!\RegFile_inst|Mux89~0_combout\ & (\RegFile_inst|registers[5][6]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][6]~q\,
	datac => \RegFile_inst|registers[7][6]~q\,
	datad => \RegFile_inst|Mux89~0_combout\,
	combout => \RegFile_inst|Mux89~1_combout\);

-- Location: LCCOMB_X72_Y33_N26
\RegFile_inst|Mux89~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux89~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux89~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux89~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux89~3_combout\,
	datad => \RegFile_inst|Mux89~1_combout\,
	combout => \RegFile_inst|Mux89~4_combout\);

-- Location: FF_X72_Y33_N27
\RegFile_inst|bus_reg_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux89~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(6));

-- Location: LCCOMB_X77_Y35_N4
\output[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[6]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(6),
	combout => \output[6]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N5
\output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[6]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~reg0_q\);

-- Location: FF_X70_Y33_N13
\RegFile_inst|registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][7]~q\);

-- Location: LCCOMB_X69_Y35_N10
\RegFile_inst|registers[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][7]~feeder_combout\ = \RegFile_inst|registers~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~10_combout\,
	combout => \RegFile_inst|registers[0][7]~feeder_combout\);

-- Location: FF_X69_Y35_N11
\RegFile_inst|registers[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][7]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][7]~q\);

-- Location: LCCOMB_X70_Y33_N22
\RegFile_inst|Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & (\RegFile_inst|registers[2][7]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][7]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[0][7]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux56~0_combout\);

-- Location: FF_X72_Y32_N13
\RegFile_inst|registers[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][7]~q\);

-- Location: LCCOMB_X72_Y32_N30
\RegFile_inst|registers[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][7]~feeder_combout\ = \RegFile_inst|registers~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~10_combout\,
	combout => \RegFile_inst|registers[6][7]~feeder_combout\);

-- Location: FF_X72_Y32_N31
\RegFile_inst|registers[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][7]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][7]~q\);

-- Location: LCCOMB_X69_Y32_N16
\RegFile_inst|Mux56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux56~1_combout\ = (\RegFile_inst|Mux56~0_combout\ & (((\RegFile_inst|registers[6][7]~q\) # (!rt_addr(2))))) # (!\RegFile_inst|Mux56~0_combout\ & (\RegFile_inst|registers[4][7]~q\ & ((rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux56~0_combout\,
	datab => \RegFile_inst|registers[4][7]~q\,
	datac => \RegFile_inst|registers[6][7]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux56~1_combout\);

-- Location: FF_X69_Y32_N17
\RegFile_inst|bus_reg_rt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(7));

-- Location: LCCOMB_X69_Y35_N0
\RegFile_inst|registers[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][7]~feeder_combout\ = \RegFile_inst|registers~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~10_combout\,
	combout => \RegFile_inst|registers[1][7]~feeder_combout\);

-- Location: FF_X69_Y35_N1
\RegFile_inst|registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][7]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][7]~q\);

-- Location: LCCOMB_X69_Y32_N18
\RegFile_inst|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux24~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][7]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][7]~q\,
	datac => \RegFile_inst|registers[1][7]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux24~0_combout\);

-- Location: FF_X69_Y32_N19
\RegFile_inst|bus_reg_rs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(7));

-- Location: LCCOMB_X70_Y32_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\RegFile_inst|bus_reg_rt\(7) & ((\RegFile_inst|bus_reg_rs\(7) & (\Add1~13\ & VCC)) # (!\RegFile_inst|bus_reg_rs\(7) & (!\Add1~13\)))) # (!\RegFile_inst|bus_reg_rt\(7) & ((\RegFile_inst|bus_reg_rs\(7) & (!\Add1~13\)) # 
-- (!\RegFile_inst|bus_reg_rs\(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\RegFile_inst|bus_reg_rt\(7) & (!\RegFile_inst|bus_reg_rs\(7) & !\Add1~13\)) # (!\RegFile_inst|bus_reg_rt\(7) & ((!\Add1~13\) # (!\RegFile_inst|bus_reg_rs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(7),
	datab => \RegFile_inst|bus_reg_rs\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X72_Y31_N20
\bus_data_in~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~8_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(7) $ ((\RegFile_inst|bus_reg_rs\(7))))) # (!\Equal2~0_combout\ & (((\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(7),
	datac => \RegFile_inst|bus_reg_rs\(7),
	datad => \Add1~14_combout\,
	combout => \bus_data_in~8_combout\);

-- Location: FF_X72_Y31_N21
\bus_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~8_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(7));

-- Location: LCCOMB_X72_Y31_N14
\RegFile_inst|registers~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~10_combout\ = (!\clr~input_o\ & bus_data_in(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(7),
	combout => \RegFile_inst|registers~10_combout\);

-- Location: LCCOMB_X74_Y33_N26
\RegFile_inst|registers[5][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][7]~feeder_combout\ = \RegFile_inst|registers~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~10_combout\,
	combout => \RegFile_inst|registers[5][7]~feeder_combout\);

-- Location: FF_X74_Y33_N27
\RegFile_inst|registers[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][7]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][7]~q\);

-- Location: FF_X72_Y33_N7
\RegFile_inst|registers[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][7]~q\);

-- Location: LCCOMB_X72_Y32_N12
\RegFile_inst|Mux88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][7]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][7]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][7]~q\,
	datac => \RegFile_inst|registers[4][7]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux88~0_combout\);

-- Location: LCCOMB_X72_Y33_N6
\RegFile_inst|Mux88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux88~0_combout\ & ((\RegFile_inst|registers[7][7]~q\))) # (!\RegFile_inst|Mux88~0_combout\ & (\RegFile_inst|registers[5][7]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][7]~q\,
	datac => \RegFile_inst|registers[7][7]~q\,
	datad => \RegFile_inst|Mux88~0_combout\,
	combout => \RegFile_inst|Mux88~1_combout\);

-- Location: FF_X71_Y33_N21
\RegFile_inst|registers[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~10_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][7]~q\);

-- Location: LCCOMB_X69_Y35_N30
\RegFile_inst|Mux88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][7]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][7]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][7]~q\,
	datab => \RegFile_inst|registers[1][7]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux88~2_combout\);

-- Location: LCCOMB_X70_Y33_N12
\RegFile_inst|Mux88~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux88~2_combout\ & (\RegFile_inst|registers[3][7]~q\)) # (!\RegFile_inst|Mux88~2_combout\ & ((\RegFile_inst|registers[2][7]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux88~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][7]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][7]~q\,
	datad => \RegFile_inst|Mux88~2_combout\,
	combout => \RegFile_inst|Mux88~3_combout\);

-- Location: LCCOMB_X72_Y33_N8
\RegFile_inst|Mux88~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux88~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux88~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux88~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux88~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux88~3_combout\,
	combout => \RegFile_inst|Mux88~4_combout\);

-- Location: FF_X72_Y33_N9
\RegFile_inst|bus_reg_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux88~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(7));

-- Location: LCCOMB_X77_Y35_N14
\output[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[7]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(7),
	combout => \output[7]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N15
\output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[7]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[7]~reg0_q\);

-- Location: LCCOMB_X69_Y35_N12
\RegFile_inst|registers[1][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][8]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[1][8]~feeder_combout\);

-- Location: FF_X69_Y35_N13
\RegFile_inst|registers[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][8]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][8]~q\);

-- Location: FF_X69_Y35_N7
\RegFile_inst|registers[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][8]~q\);

-- Location: LCCOMB_X69_Y32_N28
\RegFile_inst|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux23~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][8]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[1][8]~q\,
	datad => \RegFile_inst|registers[0][8]~q\,
	combout => \RegFile_inst|Mux23~0_combout\);

-- Location: FF_X69_Y32_N29
\RegFile_inst|bus_reg_rs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(8));

-- Location: LCCOMB_X70_Y35_N0
\RegFile_inst|registers[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][8]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[2][8]~feeder_combout\);

-- Location: FF_X70_Y35_N1
\RegFile_inst|registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][8]~feeder_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][8]~q\);

-- Location: LCCOMB_X74_Y35_N26
\RegFile_inst|registers[6][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][8]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[6][8]~feeder_combout\);

-- Location: FF_X74_Y35_N27
\RegFile_inst|registers[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][8]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][8]~q\);

-- Location: LCCOMB_X74_Y35_N8
\RegFile_inst|registers[4][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][8]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[4][8]~feeder_combout\);

-- Location: FF_X74_Y35_N9
\RegFile_inst|registers[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][8]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][8]~q\);

-- Location: LCCOMB_X69_Y35_N14
\RegFile_inst|Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & ((\RegFile_inst|registers[4][8]~q\))) # (!rt_addr(2) & (\RegFile_inst|registers[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][8]~q\,
	datab => \RegFile_inst|registers[4][8]~q\,
	datac => func(1),
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux55~0_combout\);

-- Location: LCCOMB_X70_Y35_N30
\RegFile_inst|Mux55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux55~1_combout\ = (func(1) & ((\RegFile_inst|Mux55~0_combout\ & ((\RegFile_inst|registers[6][8]~q\))) # (!\RegFile_inst|Mux55~0_combout\ & (\RegFile_inst|registers[2][8]~q\)))) # (!func(1) & (((\RegFile_inst|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[2][8]~q\,
	datac => \RegFile_inst|registers[6][8]~q\,
	datad => \RegFile_inst|Mux55~0_combout\,
	combout => \RegFile_inst|Mux55~1_combout\);

-- Location: FF_X70_Y35_N31
\RegFile_inst|bus_reg_rt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux55~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(8));

-- Location: LCCOMB_X70_Y32_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\RegFile_inst|bus_reg_rt\(8) $ (\RegFile_inst|bus_reg_rs\(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\RegFile_inst|bus_reg_rt\(8) & ((\RegFile_inst|bus_reg_rs\(8)) # (!\Add1~15\))) # (!\RegFile_inst|bus_reg_rt\(8) & (\RegFile_inst|bus_reg_rs\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(8),
	datab => \RegFile_inst|bus_reg_rs\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X69_Y31_N24
\bus_data_in~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~9_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(8) $ (((\RegFile_inst|bus_reg_rt\(8)))))) # (!\Equal2~0_combout\ & (((\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(8),
	datab => \Equal2~0_combout\,
	datac => \Add1~16_combout\,
	datad => \RegFile_inst|bus_reg_rt\(8),
	combout => \bus_data_in~9_combout\);

-- Location: FF_X69_Y31_N25
\bus_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~9_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(8));

-- Location: LCCOMB_X69_Y31_N16
\RegFile_inst|registers~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~11_combout\ = (!\clr~input_o\ & bus_data_in(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(8),
	combout => \RegFile_inst|registers~11_combout\);

-- Location: LCCOMB_X74_Y33_N20
\RegFile_inst|registers[5][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][8]~feeder_combout\ = \RegFile_inst|registers~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~11_combout\,
	combout => \RegFile_inst|registers[5][8]~feeder_combout\);

-- Location: FF_X74_Y33_N21
\RegFile_inst|registers[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][8]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][8]~q\);

-- Location: FF_X72_Y33_N17
\RegFile_inst|registers[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~11_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][8]~q\);

-- Location: LCCOMB_X72_Y35_N18
\RegFile_inst|Mux87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & ((\RegFile_inst|registers[6][8]~q\))) # (!rd_addr(1) & (\RegFile_inst|registers[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][8]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[6][8]~q\,
	combout => \RegFile_inst|Mux87~0_combout\);

-- Location: LCCOMB_X72_Y33_N16
\RegFile_inst|Mux87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux87~0_combout\ & ((\RegFile_inst|registers[7][8]~q\))) # (!\RegFile_inst|Mux87~0_combout\ & (\RegFile_inst|registers[5][8]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][8]~q\,
	datac => \RegFile_inst|registers[7][8]~q\,
	datad => \RegFile_inst|Mux87~0_combout\,
	combout => \RegFile_inst|Mux87~1_combout\);

-- Location: FF_X69_Y31_N17
\RegFile_inst|registers[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~11_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][8]~q\);

-- Location: LCCOMB_X69_Y35_N6
\RegFile_inst|Mux87~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][8]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][8]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][8]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][8]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux87~2_combout\);

-- Location: LCCOMB_X69_Y35_N24
\RegFile_inst|Mux87~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux87~2_combout\ & (\RegFile_inst|registers[3][8]~q\)) # (!\RegFile_inst|Mux87~2_combout\ & ((\RegFile_inst|registers[2][8]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux87~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][8]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][8]~q\,
	datad => \RegFile_inst|Mux87~2_combout\,
	combout => \RegFile_inst|Mux87~3_combout\);

-- Location: LCCOMB_X72_Y33_N14
\RegFile_inst|Mux87~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux87~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux87~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux87~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux87~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux87~3_combout\,
	combout => \RegFile_inst|Mux87~4_combout\);

-- Location: FF_X72_Y33_N15
\RegFile_inst|bus_reg_rd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux87~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(8));

-- Location: LCCOMB_X77_Y35_N24
\output[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[8]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(8),
	combout => \output[8]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N25
\output[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[8]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[8]~reg0_q\);

-- Location: LCCOMB_X74_Y35_N18
\RegFile_inst|registers[6][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][9]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[6][9]~feeder_combout\);

-- Location: FF_X74_Y35_N19
\RegFile_inst|registers[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][9]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][9]~q\);

-- Location: FF_X74_Y35_N13
\RegFile_inst|registers[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][9]~q\);

-- Location: FF_X70_Y35_N7
\RegFile_inst|registers[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][9]~q\);

-- Location: LCCOMB_X69_Y35_N26
\RegFile_inst|registers[0][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][9]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[0][9]~feeder_combout\);

-- Location: FF_X69_Y35_N27
\RegFile_inst|registers[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][9]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][9]~q\);

-- Location: LCCOMB_X75_Y32_N16
\RegFile_inst|Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & (\RegFile_inst|registers[2][9]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][9]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[0][9]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux54~0_combout\);

-- Location: LCCOMB_X75_Y32_N28
\RegFile_inst|Mux54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux54~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux54~0_combout\ & (\RegFile_inst|registers[6][9]~q\)) # (!\RegFile_inst|Mux54~0_combout\ & ((\RegFile_inst|registers[4][9]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[6][9]~q\,
	datac => \RegFile_inst|registers[4][9]~q\,
	datad => \RegFile_inst|Mux54~0_combout\,
	combout => \RegFile_inst|Mux54~1_combout\);

-- Location: FF_X75_Y32_N29
\RegFile_inst|bus_reg_rt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(9));

-- Location: FF_X69_Y35_N5
\RegFile_inst|registers[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][9]~q\);

-- Location: LCCOMB_X69_Y35_N4
\RegFile_inst|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux22~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][9]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][9]~q\,
	datac => \RegFile_inst|registers[1][9]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux22~0_combout\);

-- Location: FF_X70_Y32_N23
\RegFile_inst|bus_reg_rs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux22~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(9));

-- Location: LCCOMB_X70_Y32_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\RegFile_inst|bus_reg_rs\(9) & ((\RegFile_inst|bus_reg_rt\(9) & (\Add1~17\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(9) & (!\Add1~17\)))) # (!\RegFile_inst|bus_reg_rs\(9) & ((\RegFile_inst|bus_reg_rt\(9) & (!\Add1~17\)) # 
-- (!\RegFile_inst|bus_reg_rt\(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\RegFile_inst|bus_reg_rs\(9) & (!\RegFile_inst|bus_reg_rt\(9) & !\Add1~17\)) # (!\RegFile_inst|bus_reg_rs\(9) & ((!\Add1~17\) # (!\RegFile_inst|bus_reg_rt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(9),
	datab => \RegFile_inst|bus_reg_rt\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X71_Y31_N20
\bus_data_in~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~10_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(9) $ ((\RegFile_inst|bus_reg_rs\(9))))) # (!\Equal2~0_combout\ & (((\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(9),
	datab => \Equal2~0_combout\,
	datac => \RegFile_inst|bus_reg_rs\(9),
	datad => \Add1~18_combout\,
	combout => \bus_data_in~10_combout\);

-- Location: FF_X71_Y31_N21
\bus_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~10_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(9));

-- Location: LCCOMB_X69_Y33_N8
\RegFile_inst|registers~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~12_combout\ = (!\clr~input_o\ & bus_data_in(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(9),
	combout => \RegFile_inst|registers~12_combout\);

-- Location: LCCOMB_X74_Y33_N28
\RegFile_inst|registers[7][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][9]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[7][9]~feeder_combout\);

-- Location: FF_X74_Y33_N29
\RegFile_inst|registers[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][9]~feeder_combout\,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][9]~q\);

-- Location: LCCOMB_X74_Y33_N30
\RegFile_inst|registers[5][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][9]~feeder_combout\ = \RegFile_inst|registers~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~12_combout\,
	combout => \RegFile_inst|registers[5][9]~feeder_combout\);

-- Location: FF_X74_Y33_N31
\RegFile_inst|registers[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][9]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][9]~q\);

-- Location: LCCOMB_X74_Y35_N12
\RegFile_inst|Mux86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][9]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][9]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][9]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux86~0_combout\);

-- Location: LCCOMB_X74_Y32_N26
\RegFile_inst|Mux86~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux86~0_combout\ & (\RegFile_inst|registers[7][9]~q\)) # (!\RegFile_inst|Mux86~0_combout\ & ((\RegFile_inst|registers[5][9]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[7][9]~q\,
	datac => \RegFile_inst|registers[5][9]~q\,
	datad => \RegFile_inst|Mux86~0_combout\,
	combout => \RegFile_inst|Mux86~1_combout\);

-- Location: FF_X69_Y33_N27
\RegFile_inst|registers[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~12_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][9]~q\);

-- Location: LCCOMB_X69_Y35_N22
\RegFile_inst|Mux86~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][9]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][9]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][9]~q\,
	datab => \RegFile_inst|registers[1][9]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux86~2_combout\);

-- Location: LCCOMB_X70_Y35_N6
\RegFile_inst|Mux86~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux86~2_combout\ & (\RegFile_inst|registers[3][9]~q\)) # (!\RegFile_inst|Mux86~2_combout\ & ((\RegFile_inst|registers[2][9]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux86~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][9]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][9]~q\,
	datad => \RegFile_inst|Mux86~2_combout\,
	combout => \RegFile_inst|Mux86~3_combout\);

-- Location: LCCOMB_X74_Y32_N10
\RegFile_inst|Mux86~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux86~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux86~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux86~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux86~1_combout\,
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux86~3_combout\,
	combout => \RegFile_inst|Mux86~4_combout\);

-- Location: FF_X74_Y32_N11
\RegFile_inst|bus_reg_rd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux86~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(9));

-- Location: LCCOMB_X77_Y33_N4
\output[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[9]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(9),
	combout => \output[9]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N5
\output[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[9]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[9]~reg0_q\);

-- Location: FF_X74_Y35_N25
\RegFile_inst|registers[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][10]~q\);

-- Location: FF_X71_Y35_N31
\RegFile_inst|registers[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][10]~q\);

-- Location: LCCOMB_X70_Y35_N22
\RegFile_inst|Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & (\RegFile_inst|registers[4][10]~q\)) # (!rt_addr(2) & ((\RegFile_inst|registers[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[4][10]~q\,
	datac => rt_addr(2),
	datad => \RegFile_inst|registers[0][10]~q\,
	combout => \RegFile_inst|Mux53~0_combout\);

-- Location: FF_X70_Y35_N5
\RegFile_inst|registers[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][10]~q\);

-- Location: LCCOMB_X74_Y35_N6
\RegFile_inst|registers[6][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][10]~feeder_combout\ = \RegFile_inst|registers~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~13_combout\,
	combout => \RegFile_inst|registers[6][10]~feeder_combout\);

-- Location: FF_X74_Y35_N7
\RegFile_inst|registers[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][10]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][10]~q\);

-- Location: LCCOMB_X70_Y35_N8
\RegFile_inst|Mux53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux53~1_combout\ = (\RegFile_inst|Mux53~0_combout\ & (((\RegFile_inst|registers[6][10]~q\) # (!func(1))))) # (!\RegFile_inst|Mux53~0_combout\ & (\RegFile_inst|registers[2][10]~q\ & ((func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux53~0_combout\,
	datab => \RegFile_inst|registers[2][10]~q\,
	datac => \RegFile_inst|registers[6][10]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux53~1_combout\);

-- Location: FF_X70_Y35_N9
\RegFile_inst|bus_reg_rt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(10));

-- Location: LCCOMB_X71_Y35_N0
\RegFile_inst|registers[1][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][10]~feeder_combout\ = \RegFile_inst|registers~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~13_combout\,
	combout => \RegFile_inst|registers[1][10]~feeder_combout\);

-- Location: FF_X71_Y35_N1
\RegFile_inst|registers[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][10]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][10]~q\);

-- Location: LCCOMB_X70_Y35_N12
\RegFile_inst|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux21~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][10]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][10]~q\,
	datac => \RegFile_inst|registers[1][10]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux21~0_combout\);

-- Location: FF_X70_Y35_N13
\RegFile_inst|bus_reg_rs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(10));

-- Location: LCCOMB_X70_Y32_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\RegFile_inst|bus_reg_rt\(10) $ (\RegFile_inst|bus_reg_rs\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\RegFile_inst|bus_reg_rt\(10) & ((\RegFile_inst|bus_reg_rs\(10)) # (!\Add1~19\))) # (!\RegFile_inst|bus_reg_rt\(10) & (\RegFile_inst|bus_reg_rs\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(10),
	datab => \RegFile_inst|bus_reg_rs\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X69_Y33_N20
\bus_data_in~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~11_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(10) $ ((\RegFile_inst|bus_reg_rs\(10))))) # (!\Equal2~0_combout\ & (((\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(10),
	datac => \RegFile_inst|bus_reg_rs\(10),
	datad => \Add1~20_combout\,
	combout => \bus_data_in~11_combout\);

-- Location: FF_X69_Y33_N21
\bus_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~11_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(10));

-- Location: LCCOMB_X69_Y33_N30
\RegFile_inst|registers~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~13_combout\ = (!\clr~input_o\ & bus_data_in(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(10),
	combout => \RegFile_inst|registers~13_combout\);

-- Location: LCCOMB_X74_Y33_N2
\RegFile_inst|registers[5][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][10]~feeder_combout\ = \RegFile_inst|registers~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~13_combout\,
	combout => \RegFile_inst|registers[5][10]~feeder_combout\);

-- Location: FF_X74_Y33_N3
\RegFile_inst|registers[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][10]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][10]~q\);

-- Location: FF_X74_Y32_N29
\RegFile_inst|registers[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~13_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][10]~q\);

-- Location: LCCOMB_X74_Y35_N24
\RegFile_inst|Mux85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][10]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][10]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][10]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux85~0_combout\);

-- Location: LCCOMB_X74_Y32_N28
\RegFile_inst|Mux85~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux85~0_combout\ & ((\RegFile_inst|registers[7][10]~q\))) # (!\RegFile_inst|Mux85~0_combout\ & (\RegFile_inst|registers[5][10]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][10]~q\,
	datac => \RegFile_inst|registers[7][10]~q\,
	datad => \RegFile_inst|Mux85~0_combout\,
	combout => \RegFile_inst|Mux85~1_combout\);

-- Location: LCCOMB_X71_Y35_N30
\RegFile_inst|Mux85~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][10]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & (\RegFile_inst|registers[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][10]~q\,
	datad => \RegFile_inst|registers[1][10]~q\,
	combout => \RegFile_inst|Mux85~2_combout\);

-- Location: LCCOMB_X69_Y33_N16
\RegFile_inst|registers[3][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[3][10]~feeder_combout\ = \RegFile_inst|registers~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~13_combout\,
	combout => \RegFile_inst|registers[3][10]~feeder_combout\);

-- Location: FF_X69_Y33_N17
\RegFile_inst|registers[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[3][10]~feeder_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][10]~q\);

-- Location: LCCOMB_X70_Y35_N4
\RegFile_inst|Mux85~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~3_combout\ = (\RegFile_inst|Mux85~2_combout\ & (((\RegFile_inst|registers[3][10]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux85~2_combout\ & (rd_addr(1) & (\RegFile_inst|registers[2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux85~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][10]~q\,
	datad => \RegFile_inst|registers[3][10]~q\,
	combout => \RegFile_inst|Mux85~3_combout\);

-- Location: LCCOMB_X74_Y32_N0
\RegFile_inst|Mux85~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux85~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux85~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux85~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux85~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux85~3_combout\,
	combout => \RegFile_inst|Mux85~4_combout\);

-- Location: FF_X74_Y32_N1
\RegFile_inst|bus_reg_rd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux85~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(10));

-- Location: LCCOMB_X77_Y33_N10
\output[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[10]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(10),
	combout => \output[10]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N11
\output[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[10]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[10]~reg0_q\);

-- Location: LCCOMB_X74_Y35_N2
\RegFile_inst|registers[6][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][11]~feeder_combout\ = \RegFile_inst|registers~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~14_combout\,
	combout => \RegFile_inst|registers[6][11]~feeder_combout\);

-- Location: FF_X74_Y35_N3
\RegFile_inst|registers[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][11]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][11]~q\);

-- Location: FF_X70_Y35_N17
\RegFile_inst|registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][11]~q\);

-- Location: LCCOMB_X71_Y35_N10
\RegFile_inst|registers[0][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][11]~feeder_combout\ = \RegFile_inst|registers~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~14_combout\,
	combout => \RegFile_inst|registers[0][11]~feeder_combout\);

-- Location: FF_X71_Y35_N11
\RegFile_inst|registers[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][11]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][11]~q\);

-- Location: LCCOMB_X70_Y35_N26
\RegFile_inst|Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & (\RegFile_inst|registers[2][11]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[2][11]~q\,
	datac => \RegFile_inst|registers[0][11]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux52~0_combout\);

-- Location: FF_X74_Y35_N29
\RegFile_inst|registers[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][11]~q\);

-- Location: LCCOMB_X69_Y32_N30
\RegFile_inst|Mux52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux52~1_combout\ = (\RegFile_inst|Mux52~0_combout\ & ((\RegFile_inst|registers[6][11]~q\) # ((!rt_addr(2))))) # (!\RegFile_inst|Mux52~0_combout\ & (((\RegFile_inst|registers[4][11]~q\ & rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][11]~q\,
	datab => \RegFile_inst|Mux52~0_combout\,
	datac => \RegFile_inst|registers[4][11]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux52~1_combout\);

-- Location: FF_X69_Y32_N31
\RegFile_inst|bus_reg_rt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(11));

-- Location: LCCOMB_X71_Y35_N12
\RegFile_inst|registers[1][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][11]~feeder_combout\ = \RegFile_inst|registers~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~14_combout\,
	combout => \RegFile_inst|registers[1][11]~feeder_combout\);

-- Location: FF_X71_Y35_N13
\RegFile_inst|registers[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][11]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][11]~q\);

-- Location: LCCOMB_X70_Y35_N10
\RegFile_inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux20~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][11]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[1][11]~q\,
	datac => \RegFile_inst|registers[0][11]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux20~0_combout\);

-- Location: FF_X70_Y35_N11
\RegFile_inst|bus_reg_rs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(11));

-- Location: LCCOMB_X70_Y32_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\RegFile_inst|bus_reg_rs\(11) & ((\RegFile_inst|bus_reg_rt\(11) & (\Add1~21\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(11) & (!\Add1~21\)))) # (!\RegFile_inst|bus_reg_rs\(11) & ((\RegFile_inst|bus_reg_rt\(11) & (!\Add1~21\)) # 
-- (!\RegFile_inst|bus_reg_rt\(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\RegFile_inst|bus_reg_rs\(11) & (!\RegFile_inst|bus_reg_rt\(11) & !\Add1~21\)) # (!\RegFile_inst|bus_reg_rs\(11) & ((!\Add1~21\) # (!\RegFile_inst|bus_reg_rt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(11),
	datab => \RegFile_inst|bus_reg_rt\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X69_Y33_N6
\bus_data_in~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~12_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(11) $ (((\RegFile_inst|bus_reg_rs\(11)))))) # (!\Equal2~0_combout\ & (((\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(11),
	datac => \Add1~22_combout\,
	datad => \RegFile_inst|bus_reg_rs\(11),
	combout => \bus_data_in~12_combout\);

-- Location: FF_X69_Y33_N7
\bus_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~12_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(11));

-- Location: LCCOMB_X69_Y33_N10
\RegFile_inst|registers~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~14_combout\ = (!\clr~input_o\ & bus_data_in(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(11),
	combout => \RegFile_inst|registers~14_combout\);

-- Location: LCCOMB_X74_Y33_N0
\RegFile_inst|registers[5][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][11]~feeder_combout\ = \RegFile_inst|registers~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~14_combout\,
	combout => \RegFile_inst|registers[5][11]~feeder_combout\);

-- Location: FF_X74_Y33_N1
\RegFile_inst|registers[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][11]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][11]~q\);

-- Location: FF_X72_Y33_N23
\RegFile_inst|registers[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][11]~q\);

-- Location: LCCOMB_X74_Y35_N28
\RegFile_inst|Mux84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][11]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][11]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][11]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux84~0_combout\);

-- Location: LCCOMB_X72_Y33_N22
\RegFile_inst|Mux84~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux84~0_combout\ & ((\RegFile_inst|registers[7][11]~q\))) # (!\RegFile_inst|Mux84~0_combout\ & (\RegFile_inst|registers[5][11]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][11]~q\,
	datac => \RegFile_inst|registers[7][11]~q\,
	datad => \RegFile_inst|Mux84~0_combout\,
	combout => \RegFile_inst|Mux84~1_combout\);

-- Location: FF_X69_Y33_N23
\RegFile_inst|registers[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~14_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][11]~q\);

-- Location: LCCOMB_X70_Y35_N18
\RegFile_inst|Mux84~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][11]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][11]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[1][11]~q\,
	datac => \RegFile_inst|registers[0][11]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux84~2_combout\);

-- Location: LCCOMB_X70_Y35_N16
\RegFile_inst|Mux84~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux84~2_combout\ & (\RegFile_inst|registers[3][11]~q\)) # (!\RegFile_inst|Mux84~2_combout\ & ((\RegFile_inst|registers[2][11]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux84~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][11]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][11]~q\,
	datad => \RegFile_inst|Mux84~2_combout\,
	combout => \RegFile_inst|Mux84~3_combout\);

-- Location: LCCOMB_X72_Y33_N28
\RegFile_inst|Mux84~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux84~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux84~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux84~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux84~1_combout\,
	datad => \RegFile_inst|Mux84~3_combout\,
	combout => \RegFile_inst|Mux84~4_combout\);

-- Location: FF_X72_Y33_N29
\RegFile_inst|bus_reg_rd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux84~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(11));

-- Location: LCCOMB_X77_Y33_N0
\output[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[11]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(11),
	combout => \output[11]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N1
\output[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[11]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[11]~reg0_q\);

-- Location: LCCOMB_X71_Y35_N16
\RegFile_inst|registers[1][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][12]~feeder_combout\ = \RegFile_inst|registers~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~15_combout\,
	combout => \RegFile_inst|registers[1][12]~feeder_combout\);

-- Location: FF_X71_Y35_N17
\RegFile_inst|registers[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][12]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][12]~q\);

-- Location: FF_X71_Y35_N27
\RegFile_inst|registers[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][12]~q\);

-- Location: LCCOMB_X71_Y32_N10
\RegFile_inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux19~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][12]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datab => \RegFile_inst|registers[1][12]~q\,
	datac => \RegFile_inst|registers[0][12]~q\,
	combout => \RegFile_inst|Mux19~0_combout\);

-- Location: FF_X71_Y32_N11
\RegFile_inst|bus_reg_rs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(12));

-- Location: FF_X70_Y35_N29
\RegFile_inst|registers[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][12]~q\);

-- Location: LCCOMB_X74_Y35_N10
\RegFile_inst|registers[6][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][12]~feeder_combout\ = \RegFile_inst|registers~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~15_combout\,
	combout => \RegFile_inst|registers[6][12]~feeder_combout\);

-- Location: FF_X74_Y35_N11
\RegFile_inst|registers[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][12]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][12]~q\);

-- Location: FF_X74_Y35_N5
\RegFile_inst|registers[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][12]~q\);

-- Location: LCCOMB_X71_Y35_N4
\RegFile_inst|Mux51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & ((\RegFile_inst|registers[4][12]~q\))) # (!rt_addr(2) & (\RegFile_inst|registers[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][12]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[4][12]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux51~0_combout\);

-- Location: LCCOMB_X70_Y35_N14
\RegFile_inst|Mux51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux51~1_combout\ = (func(1) & ((\RegFile_inst|Mux51~0_combout\ & ((\RegFile_inst|registers[6][12]~q\))) # (!\RegFile_inst|Mux51~0_combout\ & (\RegFile_inst|registers[2][12]~q\)))) # (!func(1) & (((\RegFile_inst|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[2][12]~q\,
	datac => \RegFile_inst|registers[6][12]~q\,
	datad => \RegFile_inst|Mux51~0_combout\,
	combout => \RegFile_inst|Mux51~1_combout\);

-- Location: FF_X70_Y35_N15
\RegFile_inst|bus_reg_rt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(12));

-- Location: LCCOMB_X70_Y32_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\RegFile_inst|bus_reg_rt\(12) $ (\RegFile_inst|bus_reg_rs\(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\RegFile_inst|bus_reg_rt\(12) & ((\RegFile_inst|bus_reg_rs\(12)) # (!\Add1~23\))) # (!\RegFile_inst|bus_reg_rt\(12) & (\RegFile_inst|bus_reg_rs\(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(12),
	datab => \RegFile_inst|bus_reg_rs\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X69_Y33_N24
\bus_data_in~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~13_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(12) $ (((\RegFile_inst|bus_reg_rt\(12)))))) # (!\Equal2~0_combout\ & (((\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rs\(12),
	datac => \Add1~24_combout\,
	datad => \RegFile_inst|bus_reg_rt\(12),
	combout => \bus_data_in~13_combout\);

-- Location: FF_X69_Y33_N25
\bus_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~13_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(12));

-- Location: LCCOMB_X69_Y33_N0
\RegFile_inst|registers~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~15_combout\ = (!\clr~input_o\ & bus_data_in(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(12),
	combout => \RegFile_inst|registers~15_combout\);

-- Location: FF_X69_Y33_N1
\RegFile_inst|registers[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~15_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][12]~q\);

-- Location: LCCOMB_X71_Y35_N26
\RegFile_inst|Mux83~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][12]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][12]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][12]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][12]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux83~2_combout\);

-- Location: LCCOMB_X70_Y35_N28
\RegFile_inst|Mux83~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux83~2_combout\ & (\RegFile_inst|registers[3][12]~q\)) # (!\RegFile_inst|Mux83~2_combout\ & ((\RegFile_inst|registers[2][12]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][12]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][12]~q\,
	datad => \RegFile_inst|Mux83~2_combout\,
	combout => \RegFile_inst|Mux83~3_combout\);

-- Location: LCCOMB_X74_Y34_N28
\RegFile_inst|registers[5][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][12]~feeder_combout\ = \RegFile_inst|registers~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~15_combout\,
	combout => \RegFile_inst|registers[5][12]~feeder_combout\);

-- Location: FF_X74_Y34_N29
\RegFile_inst|registers[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][12]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][12]~q\);

-- Location: FF_X74_Y34_N7
\RegFile_inst|registers[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~15_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][12]~q\);

-- Location: LCCOMB_X74_Y35_N4
\RegFile_inst|Mux83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][12]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][12]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][12]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux83~0_combout\);

-- Location: LCCOMB_X74_Y34_N6
\RegFile_inst|Mux83~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux83~0_combout\ & ((\RegFile_inst|registers[7][12]~q\))) # (!\RegFile_inst|Mux83~0_combout\ & (\RegFile_inst|registers[5][12]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][12]~q\,
	datac => \RegFile_inst|registers[7][12]~q\,
	datad => \RegFile_inst|Mux83~0_combout\,
	combout => \RegFile_inst|Mux83~1_combout\);

-- Location: LCCOMB_X71_Y34_N16
\RegFile_inst|Mux83~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux83~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux83~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux83~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux83~3_combout\,
	datad => \RegFile_inst|Mux83~1_combout\,
	combout => \RegFile_inst|Mux83~4_combout\);

-- Location: FF_X71_Y34_N17
\RegFile_inst|bus_reg_rd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux83~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(12));

-- Location: LCCOMB_X77_Y33_N18
\output[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[12]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(12),
	combout => \output[12]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N19
\output[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[12]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[12]~reg0_q\);

-- Location: LCCOMB_X74_Y35_N14
\RegFile_inst|registers[6][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][13]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[6][13]~feeder_combout\);

-- Location: FF_X74_Y35_N15
\RegFile_inst|registers[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][13]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][13]~q\);

-- Location: LCCOMB_X74_Y35_N0
\RegFile_inst|registers[4][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][13]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[4][13]~feeder_combout\);

-- Location: FF_X74_Y35_N1
\RegFile_inst|registers[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][13]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][13]~q\);

-- Location: FF_X71_Y34_N15
\RegFile_inst|registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][13]~q\);

-- Location: LCCOMB_X71_Y35_N22
\RegFile_inst|registers[0][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][13]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[0][13]~feeder_combout\);

-- Location: FF_X71_Y35_N23
\RegFile_inst|registers[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][13]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][13]~q\);

-- Location: LCCOMB_X71_Y35_N14
\RegFile_inst|Mux50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~0_combout\ = (func(1) & ((\RegFile_inst|registers[2][13]~q\) # ((rt_addr(2))))) # (!func(1) & (((\RegFile_inst|registers[0][13]~q\ & !rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][13]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[0][13]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux50~0_combout\);

-- Location: LCCOMB_X71_Y32_N16
\RegFile_inst|Mux50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux50~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux50~0_combout\ & (\RegFile_inst|registers[6][13]~q\)) # (!\RegFile_inst|Mux50~0_combout\ & ((\RegFile_inst|registers[4][13]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][13]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[4][13]~q\,
	datad => \RegFile_inst|Mux50~0_combout\,
	combout => \RegFile_inst|Mux50~1_combout\);

-- Location: FF_X71_Y32_N17
\RegFile_inst|bus_reg_rt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(13));

-- Location: FF_X71_Y35_N9
\RegFile_inst|registers[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][13]~q\);

-- Location: LCCOMB_X71_Y32_N4
\RegFile_inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux18~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][13]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][13]~q\,
	datac => \RegFile_inst|registers[1][13]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux18~0_combout\);

-- Location: FF_X71_Y32_N5
\RegFile_inst|bus_reg_rs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(13));

-- Location: LCCOMB_X70_Y32_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\RegFile_inst|bus_reg_rs\(13) & ((\RegFile_inst|bus_reg_rt\(13) & (\Add1~25\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(13) & (!\Add1~25\)))) # (!\RegFile_inst|bus_reg_rs\(13) & ((\RegFile_inst|bus_reg_rt\(13) & (!\Add1~25\)) # 
-- (!\RegFile_inst|bus_reg_rt\(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\RegFile_inst|bus_reg_rs\(13) & (!\RegFile_inst|bus_reg_rt\(13) & !\Add1~25\)) # (!\RegFile_inst|bus_reg_rs\(13) & ((!\Add1~25\) # (!\RegFile_inst|bus_reg_rt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(13),
	datab => \RegFile_inst|bus_reg_rt\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X69_Y33_N2
\bus_data_in~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~14_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(13) $ ((\RegFile_inst|bus_reg_rs\(13))))) # (!\Equal2~0_combout\ & (((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(13),
	datac => \RegFile_inst|bus_reg_rs\(13),
	datad => \Add1~26_combout\,
	combout => \bus_data_in~14_combout\);

-- Location: FF_X69_Y33_N3
\bus_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~14_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(13));

-- Location: LCCOMB_X69_Y33_N4
\RegFile_inst|registers~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~16_combout\ = (!\clr~input_o\ & bus_data_in(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(13),
	combout => \RegFile_inst|registers~16_combout\);

-- Location: FF_X71_Y33_N1
\RegFile_inst|registers[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][13]~q\);

-- Location: LCCOMB_X71_Y35_N8
\RegFile_inst|Mux82~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][13]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][13]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][13]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][13]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux82~2_combout\);

-- Location: LCCOMB_X71_Y34_N14
\RegFile_inst|Mux82~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux82~2_combout\ & (\RegFile_inst|registers[3][13]~q\)) # (!\RegFile_inst|Mux82~2_combout\ & ((\RegFile_inst|registers[2][13]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][13]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][13]~q\,
	datad => \RegFile_inst|Mux82~2_combout\,
	combout => \RegFile_inst|Mux82~3_combout\);

-- Location: LCCOMB_X72_Y34_N10
\RegFile_inst|registers[5][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][13]~feeder_combout\ = \RegFile_inst|registers~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~16_combout\,
	combout => \RegFile_inst|registers[5][13]~feeder_combout\);

-- Location: FF_X72_Y34_N11
\RegFile_inst|registers[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][13]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][13]~q\);

-- Location: LCCOMB_X74_Y35_N30
\RegFile_inst|Mux82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][13]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][13]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[4][13]~q\,
	combout => \RegFile_inst|Mux82~0_combout\);

-- Location: FF_X72_Y34_N5
\RegFile_inst|registers[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~16_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][13]~q\);

-- Location: LCCOMB_X72_Y34_N4
\RegFile_inst|Mux82~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~1_combout\ = (\RegFile_inst|Mux82~0_combout\ & (((\RegFile_inst|registers[7][13]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux82~0_combout\ & (\RegFile_inst|registers[5][13]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][13]~q\,
	datab => \RegFile_inst|Mux82~0_combout\,
	datac => \RegFile_inst|registers[7][13]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux82~1_combout\);

-- Location: LCCOMB_X71_Y34_N2
\RegFile_inst|Mux82~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux82~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux82~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux82~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux82~3_combout\,
	datad => \RegFile_inst|Mux82~1_combout\,
	combout => \RegFile_inst|Mux82~4_combout\);

-- Location: FF_X71_Y34_N3
\RegFile_inst|bus_reg_rd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux82~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(13));

-- Location: LCCOMB_X77_Y34_N16
\output[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[13]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(13),
	combout => \output[13]~reg0feeder_combout\);

-- Location: FF_X77_Y34_N17
\output[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[13]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[13]~reg0_q\);

-- Location: LCCOMB_X74_Y35_N16
\RegFile_inst|registers[4][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][14]~feeder_combout\ = \RegFile_inst|registers~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~17_combout\,
	combout => \RegFile_inst|registers[4][14]~feeder_combout\);

-- Location: FF_X74_Y35_N17
\RegFile_inst|registers[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][14]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][14]~q\);

-- Location: LCCOMB_X71_Y35_N18
\RegFile_inst|registers[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][14]~feeder_combout\ = \RegFile_inst|registers~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~17_combout\,
	combout => \RegFile_inst|registers[0][14]~feeder_combout\);

-- Location: FF_X71_Y35_N19
\RegFile_inst|registers[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][14]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][14]~q\);

-- Location: LCCOMB_X71_Y35_N20
\RegFile_inst|Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & (\RegFile_inst|registers[4][14]~q\)) # (!rt_addr(2) & ((\RegFile_inst|registers[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][14]~q\,
	datab => func(1),
	datac => rt_addr(2),
	datad => \RegFile_inst|registers[0][14]~q\,
	combout => \RegFile_inst|Mux49~0_combout\);

-- Location: FF_X70_Y34_N1
\RegFile_inst|registers[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][14]~q\);

-- Location: LCCOMB_X72_Y35_N4
\RegFile_inst|registers[6][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][14]~feeder_combout\ = \RegFile_inst|registers~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~17_combout\,
	combout => \RegFile_inst|registers[6][14]~feeder_combout\);

-- Location: FF_X72_Y35_N5
\RegFile_inst|registers[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][14]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][14]~q\);

-- Location: LCCOMB_X70_Y35_N24
\RegFile_inst|Mux49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux49~1_combout\ = (\RegFile_inst|Mux49~0_combout\ & (((\RegFile_inst|registers[6][14]~q\) # (!func(1))))) # (!\RegFile_inst|Mux49~0_combout\ & (\RegFile_inst|registers[2][14]~q\ & ((func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux49~0_combout\,
	datab => \RegFile_inst|registers[2][14]~q\,
	datac => \RegFile_inst|registers[6][14]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux49~1_combout\);

-- Location: FF_X70_Y35_N25
\RegFile_inst|bus_reg_rt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(14));

-- Location: FF_X71_Y35_N29
\RegFile_inst|registers[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][14]~q\);

-- Location: LCCOMB_X71_Y32_N18
\RegFile_inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux17~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][14]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][14]~q\,
	datab => \RegFile_inst|registers[0][14]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux17~0_combout\);

-- Location: FF_X71_Y32_N19
\RegFile_inst|bus_reg_rs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(14));

-- Location: LCCOMB_X70_Y32_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\RegFile_inst|bus_reg_rt\(14) $ (\RegFile_inst|bus_reg_rs\(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\RegFile_inst|bus_reg_rt\(14) & ((\RegFile_inst|bus_reg_rs\(14)) # (!\Add1~27\))) # (!\RegFile_inst|bus_reg_rt\(14) & (\RegFile_inst|bus_reg_rs\(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(14),
	datab => \RegFile_inst|bus_reg_rs\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X69_Y33_N12
\bus_data_in~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~15_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(14) $ ((\RegFile_inst|bus_reg_rs\(14))))) # (!\Equal2~0_combout\ & (((\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(14),
	datac => \RegFile_inst|bus_reg_rs\(14),
	datad => \Add1~28_combout\,
	combout => \bus_data_in~15_combout\);

-- Location: FF_X69_Y33_N13
\bus_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~15_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(14));

-- Location: LCCOMB_X69_Y33_N22
\RegFile_inst|registers~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~17_combout\ = (!\clr~input_o\ & bus_data_in(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(14),
	combout => \RegFile_inst|registers~17_combout\);

-- Location: FF_X69_Y33_N11
\RegFile_inst|registers[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][14]~q\);

-- Location: LCCOMB_X71_Y35_N28
\RegFile_inst|Mux81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][14]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][14]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][14]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux81~2_combout\);

-- Location: LCCOMB_X70_Y34_N0
\RegFile_inst|Mux81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux81~2_combout\ & (\RegFile_inst|registers[3][14]~q\)) # (!\RegFile_inst|Mux81~2_combout\ & ((\RegFile_inst|registers[2][14]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][14]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][14]~q\,
	datad => \RegFile_inst|Mux81~2_combout\,
	combout => \RegFile_inst|Mux81~3_combout\);

-- Location: LCCOMB_X72_Y34_N26
\RegFile_inst|registers[5][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][14]~feeder_combout\ = \RegFile_inst|registers~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~17_combout\,
	combout => \RegFile_inst|registers[5][14]~feeder_combout\);

-- Location: FF_X72_Y34_N27
\RegFile_inst|registers[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][14]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][14]~q\);

-- Location: FF_X72_Y34_N17
\RegFile_inst|registers[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~17_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][14]~q\);

-- Location: LCCOMB_X72_Y35_N28
\RegFile_inst|Mux81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][14]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][14]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[4][14]~q\,
	combout => \RegFile_inst|Mux81~0_combout\);

-- Location: LCCOMB_X72_Y34_N16
\RegFile_inst|Mux81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux81~0_combout\ & ((\RegFile_inst|registers[7][14]~q\))) # (!\RegFile_inst|Mux81~0_combout\ & (\RegFile_inst|registers[5][14]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][14]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][14]~q\,
	datad => \RegFile_inst|Mux81~0_combout\,
	combout => \RegFile_inst|Mux81~1_combout\);

-- Location: LCCOMB_X71_Y34_N0
\RegFile_inst|Mux81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux81~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux81~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux81~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux81~3_combout\,
	datad => \RegFile_inst|Mux81~1_combout\,
	combout => \RegFile_inst|Mux81~4_combout\);

-- Location: FF_X71_Y34_N1
\RegFile_inst|bus_reg_rd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux81~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(14));

-- Location: LCCOMB_X75_Y35_N0
\output[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[14]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(14),
	combout => \output[14]~reg0feeder_combout\);

-- Location: FF_X75_Y35_N1
\output[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[14]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[14]~reg0_q\);

-- Location: LCCOMB_X74_Y35_N22
\RegFile_inst|registers[4][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][15]~feeder_combout\ = \RegFile_inst|registers~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~18_combout\,
	combout => \RegFile_inst|registers[4][15]~feeder_combout\);

-- Location: FF_X74_Y35_N23
\RegFile_inst|registers[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][15]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][15]~q\);

-- Location: FF_X71_Y34_N29
\RegFile_inst|registers[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][15]~q\);

-- Location: LCCOMB_X71_Y35_N2
\RegFile_inst|registers[0][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][15]~feeder_combout\ = \RegFile_inst|registers~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~18_combout\,
	combout => \RegFile_inst|registers[0][15]~feeder_combout\);

-- Location: FF_X71_Y35_N3
\RegFile_inst|registers[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][15]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][15]~q\);

-- Location: LCCOMB_X71_Y35_N6
\RegFile_inst|Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~0_combout\ = (func(1) & ((\RegFile_inst|registers[2][15]~q\) # ((rt_addr(2))))) # (!func(1) & (((\RegFile_inst|registers[0][15]~q\ & !rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][15]~q\,
	datab => \RegFile_inst|registers[0][15]~q\,
	datac => func(1),
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux48~0_combout\);

-- Location: LCCOMB_X71_Y32_N14
\RegFile_inst|Mux48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux48~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux48~0_combout\ & (\RegFile_inst|registers[6][15]~q\)) # (!\RegFile_inst|Mux48~0_combout\ & ((\RegFile_inst|registers[4][15]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][15]~q\,
	datab => \RegFile_inst|registers[4][15]~q\,
	datac => rt_addr(2),
	datad => \RegFile_inst|Mux48~0_combout\,
	combout => \RegFile_inst|Mux48~1_combout\);

-- Location: FF_X71_Y32_N15
\RegFile_inst|bus_reg_rt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(15));

-- Location: FF_X71_Y35_N25
\RegFile_inst|registers[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][15]~q\);

-- Location: LCCOMB_X69_Y32_N10
\RegFile_inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux16~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][15]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][15]~q\,
	datac => \RegFile_inst|registers[1][15]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux16~0_combout\);

-- Location: FF_X69_Y32_N11
\RegFile_inst|bus_reg_rs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(15));

-- Location: LCCOMB_X70_Y32_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\RegFile_inst|bus_reg_rs\(15) & ((\RegFile_inst|bus_reg_rt\(15) & (\Add1~29\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(15) & (!\Add1~29\)))) # (!\RegFile_inst|bus_reg_rs\(15) & ((\RegFile_inst|bus_reg_rt\(15) & (!\Add1~29\)) # 
-- (!\RegFile_inst|bus_reg_rt\(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\RegFile_inst|bus_reg_rs\(15) & (!\RegFile_inst|bus_reg_rt\(15) & !\Add1~29\)) # (!\RegFile_inst|bus_reg_rs\(15) & ((!\Add1~29\) # (!\RegFile_inst|bus_reg_rt\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(15),
	datab => \RegFile_inst|bus_reg_rt\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X69_Y33_N18
\bus_data_in~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~16_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(15) $ (((\RegFile_inst|bus_reg_rs\(15)))))) # (!\Equal2~0_combout\ & (((\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RegFile_inst|bus_reg_rt\(15),
	datac => \Add1~30_combout\,
	datad => \RegFile_inst|bus_reg_rs\(15),
	combout => \bus_data_in~16_combout\);

-- Location: FF_X69_Y33_N19
\bus_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~16_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(15));

-- Location: LCCOMB_X69_Y33_N26
\RegFile_inst|registers~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~18_combout\ = (!\clr~input_o\ & bus_data_in(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(15),
	combout => \RegFile_inst|registers~18_combout\);

-- Location: LCCOMB_X74_Y35_N20
\RegFile_inst|registers[6][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][15]~feeder_combout\ = \RegFile_inst|registers~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~18_combout\,
	combout => \RegFile_inst|registers[6][15]~feeder_combout\);

-- Location: FF_X74_Y35_N21
\RegFile_inst|registers[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][15]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][15]~q\);

-- Location: LCCOMB_X72_Y35_N30
\RegFile_inst|Mux80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][15]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][15]~q\,
	datab => rd_addr(0),
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[4][15]~q\,
	combout => \RegFile_inst|Mux80~0_combout\);

-- Location: LCCOMB_X72_Y34_N14
\RegFile_inst|registers[5][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][15]~feeder_combout\ = \RegFile_inst|registers~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~18_combout\,
	combout => \RegFile_inst|registers[5][15]~feeder_combout\);

-- Location: FF_X72_Y34_N15
\RegFile_inst|registers[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][15]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][15]~q\);

-- Location: FF_X72_Y34_N21
\RegFile_inst|registers[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][15]~q\);

-- Location: LCCOMB_X72_Y34_N20
\RegFile_inst|Mux80~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~1_combout\ = (\RegFile_inst|Mux80~0_combout\ & (((\RegFile_inst|registers[7][15]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux80~0_combout\ & (\RegFile_inst|registers[5][15]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux80~0_combout\,
	datab => \RegFile_inst|registers[5][15]~q\,
	datac => \RegFile_inst|registers[7][15]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux80~1_combout\);

-- Location: FF_X69_Y33_N5
\RegFile_inst|registers[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~18_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][15]~q\);

-- Location: LCCOMB_X71_Y35_N24
\RegFile_inst|Mux80~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~2_combout\ = (rd_addr(0) & (((\RegFile_inst|registers[1][15]~q\) # (rd_addr(1))))) # (!rd_addr(0) & (\RegFile_inst|registers[0][15]~q\ & ((!rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][15]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[1][15]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux80~2_combout\);

-- Location: LCCOMB_X71_Y34_N28
\RegFile_inst|Mux80~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux80~2_combout\ & (\RegFile_inst|registers[3][15]~q\)) # (!\RegFile_inst|Mux80~2_combout\ & ((\RegFile_inst|registers[2][15]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][15]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][15]~q\,
	datad => \RegFile_inst|Mux80~2_combout\,
	combout => \RegFile_inst|Mux80~3_combout\);

-- Location: LCCOMB_X71_Y34_N22
\RegFile_inst|Mux80~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux80~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux80~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux80~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux80~1_combout\,
	datad => \RegFile_inst|Mux80~3_combout\,
	combout => \RegFile_inst|Mux80~4_combout\);

-- Location: FF_X71_Y34_N23
\RegFile_inst|bus_reg_rd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux80~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(15));

-- Location: LCCOMB_X75_Y35_N22
\output[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[15]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(15),
	combout => \output[15]~reg0feeder_combout\);

-- Location: FF_X75_Y35_N23
\output[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[15]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[15]~reg0_q\);

-- Location: FF_X70_Y34_N31
\RegFile_inst|registers[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][16]~q\);

-- Location: LCCOMB_X75_Y34_N6
\RegFile_inst|registers[6][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][16]~feeder_combout\ = \RegFile_inst|registers~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~19_combout\,
	combout => \RegFile_inst|registers[6][16]~feeder_combout\);

-- Location: FF_X75_Y34_N7
\RegFile_inst|registers[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][16]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][16]~q\);

-- Location: LCCOMB_X69_Y34_N8
\RegFile_inst|registers[0][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][16]~feeder_combout\ = \RegFile_inst|registers~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~19_combout\,
	combout => \RegFile_inst|registers[0][16]~feeder_combout\);

-- Location: FF_X69_Y34_N9
\RegFile_inst|registers[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][16]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][16]~q\);

-- Location: FF_X75_Y34_N29
\RegFile_inst|registers[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][16]~q\);

-- Location: LCCOMB_X70_Y34_N8
\RegFile_inst|Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~0_combout\ = (rt_addr(2) & (((func(1)) # (\RegFile_inst|registers[4][16]~q\)))) # (!rt_addr(2) & (\RegFile_inst|registers[0][16]~q\ & (!func(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][16]~q\,
	datab => rt_addr(2),
	datac => func(1),
	datad => \RegFile_inst|registers[4][16]~q\,
	combout => \RegFile_inst|Mux47~0_combout\);

-- Location: LCCOMB_X70_Y34_N18
\RegFile_inst|Mux47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux47~1_combout\ = (\RegFile_inst|Mux47~0_combout\ & (((\RegFile_inst|registers[6][16]~q\) # (!func(1))))) # (!\RegFile_inst|Mux47~0_combout\ & (\RegFile_inst|registers[2][16]~q\ & ((func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][16]~q\,
	datab => \RegFile_inst|registers[6][16]~q\,
	datac => \RegFile_inst|Mux47~0_combout\,
	datad => func(1),
	combout => \RegFile_inst|Mux47~1_combout\);

-- Location: FF_X70_Y34_N19
\RegFile_inst|bus_reg_rt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(16));

-- Location: FF_X69_Y34_N15
\RegFile_inst|registers[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][16]~q\);

-- Location: LCCOMB_X70_Y34_N28
\RegFile_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux15~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][16]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[1][16]~q\,
	datad => \RegFile_inst|registers[0][16]~q\,
	combout => \RegFile_inst|Mux15~0_combout\);

-- Location: FF_X70_Y34_N29
\RegFile_inst|bus_reg_rs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(16));

-- Location: LCCOMB_X70_Y31_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\RegFile_inst|bus_reg_rs\(16) $ (\RegFile_inst|bus_reg_rt\(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\RegFile_inst|bus_reg_rs\(16) & ((\RegFile_inst|bus_reg_rt\(16)) # (!\Add1~31\))) # (!\RegFile_inst|bus_reg_rs\(16) & (\RegFile_inst|bus_reg_rt\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(16),
	datab => \RegFile_inst|bus_reg_rt\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X69_Y31_N2
\bus_data_in~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~17_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(16) $ (((\RegFile_inst|bus_reg_rs\(16)))))) # (!\Equal2~0_combout\ & (((\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(16),
	datab => \Add1~32_combout\,
	datac => \Equal2~0_combout\,
	datad => \RegFile_inst|bus_reg_rs\(16),
	combout => \bus_data_in~17_combout\);

-- Location: FF_X69_Y31_N3
\bus_data_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~17_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(16));

-- Location: LCCOMB_X69_Y33_N14
\RegFile_inst|registers~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~19_combout\ = (!\clr~input_o\ & bus_data_in(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(16),
	combout => \RegFile_inst|registers~19_combout\);

-- Location: LCCOMB_X72_Y34_N22
\RegFile_inst|registers[5][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][16]~feeder_combout\ = \RegFile_inst|registers~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~19_combout\,
	combout => \RegFile_inst|registers[5][16]~feeder_combout\);

-- Location: FF_X72_Y34_N23
\RegFile_inst|registers[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][16]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][16]~q\);

-- Location: FF_X72_Y34_N13
\RegFile_inst|registers[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~19_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][16]~q\);

-- Location: LCCOMB_X75_Y34_N28
\RegFile_inst|Mux79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][16]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][16]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][16]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux79~0_combout\);

-- Location: LCCOMB_X72_Y34_N12
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

-- Location: FF_X69_Y33_N15
\RegFile_inst|registers[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~19_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][16]~q\);

-- Location: LCCOMB_X69_Y34_N14
\RegFile_inst|Mux79~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][16]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[0][16]~q\,
	datac => \RegFile_inst|registers[1][16]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux79~2_combout\);

-- Location: LCCOMB_X70_Y34_N30
\RegFile_inst|Mux79~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux79~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux79~2_combout\ & (\RegFile_inst|registers[3][16]~q\)) # (!\RegFile_inst|Mux79~2_combout\ & ((\RegFile_inst|registers[2][16]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux79~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][16]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][16]~q\,
	datad => \RegFile_inst|Mux79~2_combout\,
	combout => \RegFile_inst|Mux79~3_combout\);

-- Location: LCCOMB_X71_Y34_N24
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

-- Location: FF_X71_Y34_N25
\RegFile_inst|bus_reg_rd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux79~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(16));

-- Location: LCCOMB_X75_Y35_N12
\output[16]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[16]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(16),
	combout => \output[16]~reg0feeder_combout\);

-- Location: FF_X75_Y35_N13
\output[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[16]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[16]~reg0_q\);

-- Location: FF_X75_Y34_N13
\RegFile_inst|registers[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][17]~q\);

-- Location: LCCOMB_X75_Y34_N2
\RegFile_inst|registers[6][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][17]~feeder_combout\ = \RegFile_inst|registers~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~20_combout\,
	combout => \RegFile_inst|registers[6][17]~feeder_combout\);

-- Location: FF_X75_Y34_N3
\RegFile_inst|registers[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][17]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][17]~q\);

-- Location: LCCOMB_X69_Y34_N28
\RegFile_inst|registers[0][17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][17]~feeder_combout\ = \RegFile_inst|registers~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~20_combout\,
	combout => \RegFile_inst|registers[0][17]~feeder_combout\);

-- Location: FF_X69_Y34_N29
\RegFile_inst|registers[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][17]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][17]~q\);

-- Location: FF_X70_Y34_N11
\RegFile_inst|registers[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][17]~q\);

-- Location: LCCOMB_X69_Y34_N18
\RegFile_inst|Mux46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & ((\RegFile_inst|registers[2][17]~q\))) # (!func(1) & (\RegFile_inst|registers[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[0][17]~q\,
	datac => \RegFile_inst|registers[2][17]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux46~0_combout\);

-- Location: LCCOMB_X69_Y30_N16
\RegFile_inst|Mux46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux46~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux46~0_combout\ & ((\RegFile_inst|registers[6][17]~q\))) # (!\RegFile_inst|Mux46~0_combout\ & (\RegFile_inst|registers[4][17]~q\)))) # (!rt_addr(2) & (((\RegFile_inst|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][17]~q\,
	datab => \RegFile_inst|registers[6][17]~q\,
	datac => rt_addr(2),
	datad => \RegFile_inst|Mux46~0_combout\,
	combout => \RegFile_inst|Mux46~1_combout\);

-- Location: FF_X69_Y30_N17
\RegFile_inst|bus_reg_rt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(17));

-- Location: FF_X69_Y34_N31
\RegFile_inst|registers[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][17]~q\);

-- Location: LCCOMB_X69_Y30_N0
\RegFile_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux14~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][17]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][17]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[1][17]~q\,
	combout => \RegFile_inst|Mux14~0_combout\);

-- Location: FF_X69_Y30_N1
\RegFile_inst|bus_reg_rs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(17));

-- Location: LCCOMB_X70_Y31_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\RegFile_inst|bus_reg_rs\(17) & ((\RegFile_inst|bus_reg_rt\(17) & (\Add1~33\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(17) & (!\Add1~33\)))) # (!\RegFile_inst|bus_reg_rs\(17) & ((\RegFile_inst|bus_reg_rt\(17) & (!\Add1~33\)) # 
-- (!\RegFile_inst|bus_reg_rt\(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\RegFile_inst|bus_reg_rs\(17) & (!\RegFile_inst|bus_reg_rt\(17) & !\Add1~33\)) # (!\RegFile_inst|bus_reg_rs\(17) & ((!\Add1~33\) # (!\RegFile_inst|bus_reg_rt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(17),
	datab => \RegFile_inst|bus_reg_rt\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X69_Y31_N4
\bus_data_in~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~18_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(17) $ ((\RegFile_inst|bus_reg_rs\(17))))) # (!\Equal2~0_combout\ & (((\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(17),
	datab => \RegFile_inst|bus_reg_rs\(17),
	datac => \Equal2~0_combout\,
	datad => \Add1~34_combout\,
	combout => \bus_data_in~18_combout\);

-- Location: FF_X69_Y31_N5
\bus_data_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~18_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(17));

-- Location: LCCOMB_X72_Y34_N30
\RegFile_inst|registers~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~20_combout\ = (!\clr~input_o\ & bus_data_in(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(17),
	combout => \RegFile_inst|registers~20_combout\);

-- Location: FF_X72_Y34_N31
\RegFile_inst|registers[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~20_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][17]~q\);

-- Location: FF_X72_Y34_N1
\RegFile_inst|registers[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][17]~q\);

-- Location: LCCOMB_X75_Y34_N12
\RegFile_inst|Mux78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][17]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][17]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][17]~q\,
	datac => \RegFile_inst|registers[4][17]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux78~0_combout\);

-- Location: LCCOMB_X72_Y34_N0
\RegFile_inst|Mux78~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux78~0_combout\ & ((\RegFile_inst|registers[7][17]~q\))) # (!\RegFile_inst|Mux78~0_combout\ & (\RegFile_inst|registers[5][17]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][17]~q\,
	datac => \RegFile_inst|registers[7][17]~q\,
	datad => \RegFile_inst|Mux78~0_combout\,
	combout => \RegFile_inst|Mux78~1_combout\);

-- Location: FF_X71_Y33_N15
\RegFile_inst|registers[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~20_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][17]~q\);

-- Location: LCCOMB_X69_Y34_N30
\RegFile_inst|Mux78~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][17]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[0][17]~q\,
	datac => \RegFile_inst|registers[1][17]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux78~2_combout\);

-- Location: LCCOMB_X70_Y34_N10
\RegFile_inst|Mux78~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux78~2_combout\ & (\RegFile_inst|registers[3][17]~q\)) # (!\RegFile_inst|Mux78~2_combout\ & ((\RegFile_inst|registers[2][17]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][17]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][17]~q\,
	datad => \RegFile_inst|Mux78~2_combout\,
	combout => \RegFile_inst|Mux78~3_combout\);

-- Location: LCCOMB_X71_Y34_N26
\RegFile_inst|Mux78~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux78~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux78~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux78~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux78~1_combout\,
	datad => \RegFile_inst|Mux78~3_combout\,
	combout => \RegFile_inst|Mux78~4_combout\);

-- Location: FF_X71_Y34_N27
\RegFile_inst|bus_reg_rd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux78~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(17));

-- Location: LCCOMB_X77_Y35_N2
\output[17]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[17]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(17),
	combout => \output[17]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N3
\output[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[17]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[17]~reg0_q\);

-- Location: FF_X69_Y35_N3
\RegFile_inst|registers[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][18]~q\);

-- Location: FF_X69_Y35_N21
\RegFile_inst|registers[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][18]~q\);

-- Location: LCCOMB_X69_Y35_N20
\RegFile_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux13~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][18]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][18]~q\,
	datac => \RegFile_inst|registers[1][18]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux13~0_combout\);

-- Location: FF_X70_Y31_N3
\RegFile_inst|bus_reg_rs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(18));

-- Location: FF_X75_Y34_N17
\RegFile_inst|registers[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][18]~q\);

-- Location: LCCOMB_X70_Y34_N6
\RegFile_inst|Mux45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & (\RegFile_inst|registers[4][18]~q\)) # (!rt_addr(2) & ((\RegFile_inst|registers[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][18]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[0][18]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux45~0_combout\);

-- Location: LCCOMB_X75_Y34_N30
\RegFile_inst|registers[6][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][18]~feeder_combout\ = \RegFile_inst|registers~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~21_combout\,
	combout => \RegFile_inst|registers[6][18]~feeder_combout\);

-- Location: FF_X75_Y34_N31
\RegFile_inst|registers[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][18]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][18]~q\);

-- Location: FF_X70_Y34_N17
\RegFile_inst|registers[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][18]~q\);

-- Location: LCCOMB_X70_Y34_N24
\RegFile_inst|Mux45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux45~1_combout\ = (\RegFile_inst|Mux45~0_combout\ & (((\RegFile_inst|registers[6][18]~q\)) # (!func(1)))) # (!\RegFile_inst|Mux45~0_combout\ & (func(1) & ((\RegFile_inst|registers[2][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux45~0_combout\,
	datab => func(1),
	datac => \RegFile_inst|registers[6][18]~q\,
	datad => \RegFile_inst|registers[2][18]~q\,
	combout => \RegFile_inst|Mux45~1_combout\);

-- Location: FF_X70_Y34_N25
\RegFile_inst|bus_reg_rt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(18));

-- Location: LCCOMB_X70_Y31_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\RegFile_inst|bus_reg_rt\(18) $ (\RegFile_inst|bus_reg_rs\(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\RegFile_inst|bus_reg_rt\(18) & ((\RegFile_inst|bus_reg_rs\(18)) # (!\Add1~35\))) # (!\RegFile_inst|bus_reg_rt\(18) & (\RegFile_inst|bus_reg_rs\(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(18),
	datab => \RegFile_inst|bus_reg_rs\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X71_Y31_N22
\bus_data_in~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~19_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(18) $ (((\RegFile_inst|bus_reg_rt\(18)))))) # (!\Equal2~0_combout\ & (((\Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(18),
	datab => \Equal2~0_combout\,
	datac => \Add1~36_combout\,
	datad => \RegFile_inst|bus_reg_rt\(18),
	combout => \bus_data_in~19_combout\);

-- Location: FF_X71_Y31_N23
\bus_data_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~19_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(18));

-- Location: LCCOMB_X71_Y31_N6
\RegFile_inst|registers~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~21_combout\ = (bus_data_in(18) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(18),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~21_combout\);

-- Location: FF_X71_Y31_N7
\RegFile_inst|registers[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~21_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][18]~q\);

-- Location: LCCOMB_X69_Y35_N2
\RegFile_inst|Mux77~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][18]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & (\RegFile_inst|registers[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][18]~q\,
	datad => \RegFile_inst|registers[1][18]~q\,
	combout => \RegFile_inst|Mux77~2_combout\);

-- Location: LCCOMB_X70_Y34_N16
\RegFile_inst|Mux77~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux77~2_combout\ & (\RegFile_inst|registers[3][18]~q\)) # (!\RegFile_inst|Mux77~2_combout\ & ((\RegFile_inst|registers[2][18]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][18]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][18]~q\,
	datad => \RegFile_inst|Mux77~2_combout\,
	combout => \RegFile_inst|Mux77~3_combout\);

-- Location: LCCOMB_X72_Y34_N18
\RegFile_inst|registers[5][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][18]~feeder_combout\ = \RegFile_inst|registers~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~21_combout\,
	combout => \RegFile_inst|registers[5][18]~feeder_combout\);

-- Location: FF_X72_Y34_N19
\RegFile_inst|registers[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][18]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][18]~q\);

-- Location: FF_X72_Y34_N29
\RegFile_inst|registers[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~21_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][18]~q\);

-- Location: LCCOMB_X75_Y34_N16
\RegFile_inst|Mux77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][18]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][18]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][18]~q\,
	datac => \RegFile_inst|registers[4][18]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux77~0_combout\);

-- Location: LCCOMB_X72_Y34_N28
\RegFile_inst|Mux77~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux77~0_combout\ & ((\RegFile_inst|registers[7][18]~q\))) # (!\RegFile_inst|Mux77~0_combout\ & (\RegFile_inst|registers[5][18]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][18]~q\,
	datac => \RegFile_inst|registers[7][18]~q\,
	datad => \RegFile_inst|Mux77~0_combout\,
	combout => \RegFile_inst|Mux77~1_combout\);

-- Location: LCCOMB_X71_Y34_N8
\RegFile_inst|Mux77~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux77~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux77~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux77~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux77~3_combout\,
	datad => \RegFile_inst|Mux77~1_combout\,
	combout => \RegFile_inst|Mux77~4_combout\);

-- Location: FF_X71_Y34_N9
\RegFile_inst|bus_reg_rd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux77~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(18));

-- Location: LCCOMB_X77_Y35_N12
\output[18]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[18]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(18),
	combout => \output[18]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N13
\output[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[18]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[18]~reg0_q\);

-- Location: LCCOMB_X75_Y34_N14
\RegFile_inst|registers[6][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][19]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[6][19]~feeder_combout\);

-- Location: FF_X75_Y34_N15
\RegFile_inst|registers[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][19]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][19]~q\);

-- Location: FF_X75_Y34_N25
\RegFile_inst|registers[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][19]~q\);

-- Location: LCCOMB_X70_Y34_N4
\RegFile_inst|registers[2][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][19]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[2][19]~feeder_combout\);

-- Location: FF_X70_Y34_N5
\RegFile_inst|registers[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][19]~feeder_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][19]~q\);

-- Location: FF_X69_Y34_N13
\RegFile_inst|registers[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][19]~q\);

-- Location: LCCOMB_X69_Y34_N12
\RegFile_inst|Mux44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~0_combout\ = (func(1) & ((\RegFile_inst|registers[2][19]~q\) # ((rt_addr(2))))) # (!func(1) & (((\RegFile_inst|registers[0][19]~q\ & !rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][19]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[0][19]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux44~0_combout\);

-- Location: LCCOMB_X74_Y31_N12
\RegFile_inst|Mux44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux44~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux44~0_combout\ & (\RegFile_inst|registers[6][19]~q\)) # (!\RegFile_inst|Mux44~0_combout\ & ((\RegFile_inst|registers[4][19]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[6][19]~q\,
	datac => \RegFile_inst|registers[4][19]~q\,
	datad => \RegFile_inst|Mux44~0_combout\,
	combout => \RegFile_inst|Mux44~1_combout\);

-- Location: FF_X74_Y31_N13
\RegFile_inst|bus_reg_rt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(19));

-- Location: FF_X69_Y34_N3
\RegFile_inst|registers[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][19]~q\);

-- Location: LCCOMB_X69_Y34_N6
\RegFile_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux12~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][19]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][19]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[1][19]~q\,
	combout => \RegFile_inst|Mux12~0_combout\);

-- Location: FF_X70_Y31_N15
\RegFile_inst|bus_reg_rs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(19));

-- Location: LCCOMB_X70_Y31_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\RegFile_inst|bus_reg_rt\(19) & ((\RegFile_inst|bus_reg_rs\(19) & (\Add1~37\ & VCC)) # (!\RegFile_inst|bus_reg_rs\(19) & (!\Add1~37\)))) # (!\RegFile_inst|bus_reg_rt\(19) & ((\RegFile_inst|bus_reg_rs\(19) & (!\Add1~37\)) # 
-- (!\RegFile_inst|bus_reg_rs\(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\RegFile_inst|bus_reg_rt\(19) & (!\RegFile_inst|bus_reg_rs\(19) & !\Add1~37\)) # (!\RegFile_inst|bus_reg_rt\(19) & ((!\Add1~37\) # (!\RegFile_inst|bus_reg_rs\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(19),
	datab => \RegFile_inst|bus_reg_rs\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X71_Y31_N0
\bus_data_in~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~20_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(19) $ (((\RegFile_inst|bus_reg_rs\(19)))))) # (!\Equal2~0_combout\ & (((\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(19),
	datab => \Add1~38_combout\,
	datac => \Equal2~0_combout\,
	datad => \RegFile_inst|bus_reg_rs\(19),
	combout => \bus_data_in~20_combout\);

-- Location: FF_X71_Y31_N1
\bus_data_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~20_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(19));

-- Location: LCCOMB_X71_Y31_N24
\RegFile_inst|registers~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~22_combout\ = (!\clr~input_o\ & bus_data_in(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(19),
	combout => \RegFile_inst|registers~22_combout\);

-- Location: LCCOMB_X74_Y34_N4
\RegFile_inst|registers[5][19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][19]~feeder_combout\ = \RegFile_inst|registers~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~22_combout\,
	combout => \RegFile_inst|registers[5][19]~feeder_combout\);

-- Location: FF_X74_Y34_N5
\RegFile_inst|registers[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][19]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][19]~q\);

-- Location: FF_X74_Y34_N11
\RegFile_inst|registers[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~22_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][19]~q\);

-- Location: LCCOMB_X75_Y34_N24
\RegFile_inst|Mux76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][19]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][19]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][19]~q\,
	datac => \RegFile_inst|registers[4][19]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux76~0_combout\);

-- Location: LCCOMB_X74_Y34_N10
\RegFile_inst|Mux76~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux76~0_combout\ & ((\RegFile_inst|registers[7][19]~q\))) # (!\RegFile_inst|Mux76~0_combout\ & (\RegFile_inst|registers[5][19]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][19]~q\,
	datac => \RegFile_inst|registers[7][19]~q\,
	datad => \RegFile_inst|Mux76~0_combout\,
	combout => \RegFile_inst|Mux76~1_combout\);

-- Location: LCCOMB_X69_Y34_N2
\RegFile_inst|Mux76~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][19]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[0][19]~q\,
	datac => \RegFile_inst|registers[1][19]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux76~2_combout\);

-- Location: FF_X71_Y31_N25
\RegFile_inst|registers[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~22_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][19]~q\);

-- Location: LCCOMB_X70_Y34_N22
\RegFile_inst|Mux76~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~3_combout\ = (\RegFile_inst|Mux76~2_combout\ & (((\RegFile_inst|registers[3][19]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux76~2_combout\ & (\RegFile_inst|registers[2][19]~q\ & (rd_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux76~2_combout\,
	datab => \RegFile_inst|registers[2][19]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|registers[3][19]~q\,
	combout => \RegFile_inst|Mux76~3_combout\);

-- Location: LCCOMB_X71_Y34_N6
\RegFile_inst|Mux76~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux76~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux76~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux76~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux76~1_combout\,
	datab => rd_addr(2),
	datad => \RegFile_inst|Mux76~3_combout\,
	combout => \RegFile_inst|Mux76~4_combout\);

-- Location: FF_X71_Y34_N7
\RegFile_inst|bus_reg_rd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux76~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(19));

-- Location: LCCOMB_X75_Y35_N26
\output[19]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[19]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(19),
	combout => \output[19]~reg0feeder_combout\);

-- Location: FF_X75_Y35_N27
\output[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[19]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[19]~reg0_q\);

-- Location: FF_X75_Y32_N3
\RegFile_inst|registers[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][20]~q\);

-- Location: FF_X69_Y34_N23
\RegFile_inst|registers[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][20]~q\);

-- Location: FF_X75_Y34_N9
\RegFile_inst|registers[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][20]~q\);

-- Location: LCCOMB_X69_Y30_N28
\RegFile_inst|Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~0_combout\ = (rt_addr(2) & (((\RegFile_inst|registers[4][20]~q\) # (func(1))))) # (!rt_addr(2) & (\RegFile_inst|registers[0][20]~q\ & ((!func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][20]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[4][20]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux43~0_combout\);

-- Location: LCCOMB_X69_Y30_N14
\RegFile_inst|Mux43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux43~1_combout\ = (func(1) & ((\RegFile_inst|Mux43~0_combout\ & (\RegFile_inst|registers[6][20]~q\)) # (!\RegFile_inst|Mux43~0_combout\ & ((\RegFile_inst|registers[2][20]~q\))))) # (!func(1) & (((\RegFile_inst|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][20]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[2][20]~q\,
	datad => \RegFile_inst|Mux43~0_combout\,
	combout => \RegFile_inst|Mux43~1_combout\);

-- Location: FF_X69_Y30_N15
\RegFile_inst|bus_reg_rt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(20));

-- Location: LCCOMB_X69_Y34_N0
\RegFile_inst|registers[1][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][20]~feeder_combout\ = \RegFile_inst|registers~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~23_combout\,
	combout => \RegFile_inst|registers[1][20]~feeder_combout\);

-- Location: FF_X69_Y34_N1
\RegFile_inst|registers[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][20]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][20]~q\);

-- Location: LCCOMB_X69_Y30_N18
\RegFile_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux11~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][20]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][20]~q\,
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[0][20]~q\,
	combout => \RegFile_inst|Mux11~0_combout\);

-- Location: FF_X69_Y30_N19
\RegFile_inst|bus_reg_rs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(20));

-- Location: LCCOMB_X70_Y31_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\RegFile_inst|bus_reg_rt\(20) $ (\RegFile_inst|bus_reg_rs\(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\RegFile_inst|bus_reg_rt\(20) & ((\RegFile_inst|bus_reg_rs\(20)) # (!\Add1~39\))) # (!\RegFile_inst|bus_reg_rt\(20) & (\RegFile_inst|bus_reg_rs\(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(20),
	datab => \RegFile_inst|bus_reg_rs\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X71_Y31_N30
\bus_data_in~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~21_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(20) $ ((\RegFile_inst|bus_reg_rs\(20))))) # (!\Equal2~0_combout\ & (((\Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(20),
	datab => \Equal2~0_combout\,
	datac => \RegFile_inst|bus_reg_rs\(20),
	datad => \Add1~40_combout\,
	combout => \bus_data_in~21_combout\);

-- Location: FF_X71_Y31_N31
\bus_data_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~21_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(20));

-- Location: LCCOMB_X71_Y31_N2
\RegFile_inst|registers~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~23_combout\ = (bus_data_in(20) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(20),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~23_combout\);

-- Location: LCCOMB_X75_Y34_N18
\RegFile_inst|registers[6][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][20]~feeder_combout\ = \RegFile_inst|registers~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~23_combout\,
	combout => \RegFile_inst|registers[6][20]~feeder_combout\);

-- Location: FF_X75_Y34_N19
\RegFile_inst|registers[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][20]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][20]~q\);

-- Location: LCCOMB_X75_Y34_N8
\RegFile_inst|Mux75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][20]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][20]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][20]~q\,
	datac => \RegFile_inst|registers[4][20]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux75~0_combout\);

-- Location: FF_X74_Y34_N31
\RegFile_inst|registers[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~23_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][20]~q\);

-- Location: LCCOMB_X74_Y34_N24
\RegFile_inst|registers[5][20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][20]~feeder_combout\ = \RegFile_inst|registers~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~23_combout\,
	combout => \RegFile_inst|registers[5][20]~feeder_combout\);

-- Location: FF_X74_Y34_N25
\RegFile_inst|registers[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][20]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][20]~q\);

-- Location: LCCOMB_X74_Y34_N30
\RegFile_inst|Mux75~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux75~0_combout\ & (\RegFile_inst|registers[7][20]~q\)) # (!\RegFile_inst|Mux75~0_combout\ & ((\RegFile_inst|registers[5][20]~q\))))) # (!rd_addr(0) & (\RegFile_inst|Mux75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|Mux75~0_combout\,
	datac => \RegFile_inst|registers[7][20]~q\,
	datad => \RegFile_inst|registers[5][20]~q\,
	combout => \RegFile_inst|Mux75~1_combout\);

-- Location: FF_X71_Y31_N3
\RegFile_inst|registers[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~23_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][20]~q\);

-- Location: LCCOMB_X69_Y34_N22
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

-- Location: LCCOMB_X75_Y32_N2
\RegFile_inst|Mux75~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux75~2_combout\ & (\RegFile_inst|registers[3][20]~q\)) # (!\RegFile_inst|Mux75~2_combout\ & ((\RegFile_inst|registers[2][20]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux75~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][20]~q\,
	datac => \RegFile_inst|registers[2][20]~q\,
	datad => \RegFile_inst|Mux75~2_combout\,
	combout => \RegFile_inst|Mux75~3_combout\);

-- Location: LCCOMB_X75_Y32_N10
\RegFile_inst|Mux75~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux75~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux75~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux75~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux75~1_combout\,
	datad => \RegFile_inst|Mux75~3_combout\,
	combout => \RegFile_inst|Mux75~4_combout\);

-- Location: FF_X75_Y32_N11
\RegFile_inst|bus_reg_rd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux75~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(20));

-- Location: LCCOMB_X77_Y33_N28
\output[20]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[20]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(20),
	combout => \output[20]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N29
\output[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[20]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[20]~reg0_q\);

-- Location: LCCOMB_X69_Y34_N20
\RegFile_inst|registers[1][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][21]~feeder_combout\ = \RegFile_inst|registers~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~24_combout\,
	combout => \RegFile_inst|registers[1][21]~feeder_combout\);

-- Location: FF_X69_Y34_N21
\RegFile_inst|registers[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][21]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][21]~q\);

-- Location: LCCOMB_X69_Y34_N10
\RegFile_inst|registers[0][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][21]~feeder_combout\ = \RegFile_inst|registers~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~24_combout\,
	combout => \RegFile_inst|registers[0][21]~feeder_combout\);

-- Location: FF_X69_Y34_N11
\RegFile_inst|registers[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][21]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][21]~q\);

-- Location: LCCOMB_X69_Y34_N16
\RegFile_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux10~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][21]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[1][21]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[0][21]~q\,
	combout => \RegFile_inst|Mux10~0_combout\);

-- Location: FF_X70_Y31_N29
\RegFile_inst|bus_reg_rs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(21));

-- Location: FF_X70_Y34_N27
\RegFile_inst|registers[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][21]~q\);

-- Location: LCCOMB_X70_Y34_N12
\RegFile_inst|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~0_combout\ = (func(1) & (((\RegFile_inst|registers[2][21]~q\) # (rt_addr(2))))) # (!func(1) & (\RegFile_inst|registers[0][21]~q\ & ((!rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][21]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[2][21]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux42~0_combout\);

-- Location: LCCOMB_X75_Y34_N26
\RegFile_inst|registers[6][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][21]~feeder_combout\ = \RegFile_inst|registers~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~24_combout\,
	combout => \RegFile_inst|registers[6][21]~feeder_combout\);

-- Location: FF_X75_Y34_N27
\RegFile_inst|registers[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][21]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][21]~q\);

-- Location: FF_X75_Y34_N21
\RegFile_inst|registers[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][21]~q\);

-- Location: LCCOMB_X70_Y34_N14
\RegFile_inst|Mux42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux42~1_combout\ = (\RegFile_inst|Mux42~0_combout\ & (((\RegFile_inst|registers[6][21]~q\)) # (!rt_addr(2)))) # (!\RegFile_inst|Mux42~0_combout\ & (rt_addr(2) & ((\RegFile_inst|registers[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux42~0_combout\,
	datab => rt_addr(2),
	datac => \RegFile_inst|registers[6][21]~q\,
	datad => \RegFile_inst|registers[4][21]~q\,
	combout => \RegFile_inst|Mux42~1_combout\);

-- Location: FF_X70_Y34_N15
\RegFile_inst|bus_reg_rt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(21));

-- Location: LCCOMB_X70_Y31_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\RegFile_inst|bus_reg_rt\(21) & ((\RegFile_inst|bus_reg_rs\(21) & (\Add1~41\ & VCC)) # (!\RegFile_inst|bus_reg_rs\(21) & (!\Add1~41\)))) # (!\RegFile_inst|bus_reg_rt\(21) & ((\RegFile_inst|bus_reg_rs\(21) & (!\Add1~41\)) # 
-- (!\RegFile_inst|bus_reg_rs\(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\RegFile_inst|bus_reg_rt\(21) & (!\RegFile_inst|bus_reg_rs\(21) & !\Add1~41\)) # (!\RegFile_inst|bus_reg_rt\(21) & ((!\Add1~41\) # (!\RegFile_inst|bus_reg_rs\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(21),
	datab => \RegFile_inst|bus_reg_rs\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X71_Y31_N16
\bus_data_in~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~22_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(21) $ ((\RegFile_inst|bus_reg_rt\(21))))) # (!\Equal2~0_combout\ & (((\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(21),
	datab => \RegFile_inst|bus_reg_rt\(21),
	datac => \Equal2~0_combout\,
	datad => \Add1~42_combout\,
	combout => \bus_data_in~22_combout\);

-- Location: FF_X71_Y31_N17
\bus_data_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~22_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(21));

-- Location: LCCOMB_X71_Y31_N28
\RegFile_inst|registers~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~24_combout\ = (!\clr~input_o\ & bus_data_in(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(21),
	combout => \RegFile_inst|registers~24_combout\);

-- Location: FF_X71_Y31_N29
\RegFile_inst|registers[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~24_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][21]~q\);

-- Location: LCCOMB_X70_Y34_N20
\RegFile_inst|Mux74~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & ((\RegFile_inst|registers[1][21]~q\))) # (!rd_addr(0) & (\RegFile_inst|registers[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][21]~q\,
	datab => rd_addr(1),
	datac => rd_addr(0),
	datad => \RegFile_inst|registers[1][21]~q\,
	combout => \RegFile_inst|Mux74~2_combout\);

-- Location: LCCOMB_X70_Y34_N26
\RegFile_inst|Mux74~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux74~2_combout\ & (\RegFile_inst|registers[3][21]~q\)) # (!\RegFile_inst|Mux74~2_combout\ & ((\RegFile_inst|registers[2][21]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux74~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[3][21]~q\,
	datac => \RegFile_inst|registers[2][21]~q\,
	datad => \RegFile_inst|Mux74~2_combout\,
	combout => \RegFile_inst|Mux74~3_combout\);

-- Location: LCCOMB_X74_Y34_N16
\RegFile_inst|registers[5][21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][21]~feeder_combout\ = \RegFile_inst|registers~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~24_combout\,
	combout => \RegFile_inst|registers[5][21]~feeder_combout\);

-- Location: FF_X74_Y34_N17
\RegFile_inst|registers[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][21]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][21]~q\);

-- Location: FF_X74_Y34_N15
\RegFile_inst|registers[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~24_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][21]~q\);

-- Location: LCCOMB_X75_Y34_N20
\RegFile_inst|Mux74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][21]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][21]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][21]~q\,
	datac => \RegFile_inst|registers[4][21]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux74~0_combout\);

-- Location: LCCOMB_X74_Y34_N14
\RegFile_inst|Mux74~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux74~0_combout\ & ((\RegFile_inst|registers[7][21]~q\))) # (!\RegFile_inst|Mux74~0_combout\ & (\RegFile_inst|registers[5][21]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][21]~q\,
	datac => \RegFile_inst|registers[7][21]~q\,
	datad => \RegFile_inst|Mux74~0_combout\,
	combout => \RegFile_inst|Mux74~1_combout\);

-- Location: LCCOMB_X74_Y32_N22
\RegFile_inst|Mux74~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux74~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux74~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux74~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux74~3_combout\,
	datad => \RegFile_inst|Mux74~1_combout\,
	combout => \RegFile_inst|Mux74~4_combout\);

-- Location: FF_X74_Y32_N23
\RegFile_inst|bus_reg_rd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux74~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(21));

-- Location: LCCOMB_X77_Y35_N6
\output[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[21]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(21),
	combout => \output[21]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N7
\output[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[21]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[21]~reg0_q\);

-- Location: LCCOMB_X75_Y34_N22
\RegFile_inst|registers[6][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][22]~feeder_combout\ = \RegFile_inst|registers~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~25_combout\,
	combout => \RegFile_inst|registers[6][22]~feeder_combout\);

-- Location: FF_X75_Y34_N23
\RegFile_inst|registers[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][22]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][22]~q\);

-- Location: FF_X75_Y34_N1
\RegFile_inst|registers[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][22]~q\);

-- Location: LCCOMB_X72_Y30_N10
\RegFile_inst|registers[0][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][22]~feeder_combout\ = \RegFile_inst|registers~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~25_combout\,
	combout => \RegFile_inst|registers[0][22]~feeder_combout\);

-- Location: FF_X72_Y30_N11
\RegFile_inst|registers[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][22]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][22]~q\);

-- Location: LCCOMB_X74_Y31_N16
\RegFile_inst|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & (\RegFile_inst|registers[4][22]~q\)) # (!rt_addr(2) & ((\RegFile_inst|registers[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[4][22]~q\,
	datac => \RegFile_inst|registers[0][22]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux41~0_combout\);

-- Location: FF_X71_Y34_N11
\RegFile_inst|registers[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][22]~q\);

-- Location: LCCOMB_X74_Y31_N26
\RegFile_inst|Mux41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux41~1_combout\ = (\RegFile_inst|Mux41~0_combout\ & ((\RegFile_inst|registers[6][22]~q\) # ((!func(1))))) # (!\RegFile_inst|Mux41~0_combout\ & (((\RegFile_inst|registers[2][22]~q\ & func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][22]~q\,
	datab => \RegFile_inst|Mux41~0_combout\,
	datac => \RegFile_inst|registers[2][22]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux41~1_combout\);

-- Location: FF_X74_Y31_N27
\RegFile_inst|bus_reg_rt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(22));

-- Location: FF_X72_Y30_N5
\RegFile_inst|registers[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][22]~q\);

-- Location: LCCOMB_X72_Y31_N2
\RegFile_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux9~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][22]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][22]~q\,
	datac => \RegFile_inst|registers[0][22]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux9~0_combout\);

-- Location: FF_X70_Y31_N31
\RegFile_inst|bus_reg_rs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(22));

-- Location: LCCOMB_X70_Y31_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\RegFile_inst|bus_reg_rs\(22) $ (\RegFile_inst|bus_reg_rt\(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\RegFile_inst|bus_reg_rs\(22) & ((\RegFile_inst|bus_reg_rt\(22)) # (!\Add1~43\))) # (!\RegFile_inst|bus_reg_rs\(22) & (\RegFile_inst|bus_reg_rt\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(22),
	datab => \RegFile_inst|bus_reg_rt\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X71_Y31_N18
\bus_data_in~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~23_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(22) $ ((\RegFile_inst|bus_reg_rs\(22))))) # (!\Equal2~0_combout\ & (((\Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(22),
	datab => \RegFile_inst|bus_reg_rs\(22),
	datac => \Equal2~0_combout\,
	datad => \Add1~44_combout\,
	combout => \bus_data_in~23_combout\);

-- Location: FF_X71_Y31_N19
\bus_data_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~23_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(22));

-- Location: LCCOMB_X71_Y31_N8
\RegFile_inst|registers~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~25_combout\ = (!\clr~input_o\ & bus_data_in(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(22),
	combout => \RegFile_inst|registers~25_combout\);

-- Location: LCCOMB_X74_Y34_N12
\RegFile_inst|registers[5][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][22]~feeder_combout\ = \RegFile_inst|registers~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~25_combout\,
	combout => \RegFile_inst|registers[5][22]~feeder_combout\);

-- Location: FF_X74_Y34_N13
\RegFile_inst|registers[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][22]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][22]~q\);

-- Location: LCCOMB_X75_Y34_N0
\RegFile_inst|Mux73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][22]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][22]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|registers[6][22]~q\,
	datac => \RegFile_inst|registers[4][22]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux73~0_combout\);

-- Location: FF_X74_Y34_N23
\RegFile_inst|registers[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][22]~q\);

-- Location: LCCOMB_X74_Y34_N22
\RegFile_inst|Mux73~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~1_combout\ = (\RegFile_inst|Mux73~0_combout\ & (((\RegFile_inst|registers[7][22]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux73~0_combout\ & (\RegFile_inst|registers[5][22]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][22]~q\,
	datab => \RegFile_inst|Mux73~0_combout\,
	datac => \RegFile_inst|registers[7][22]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux73~1_combout\);

-- Location: FF_X71_Y33_N9
\RegFile_inst|registers[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~25_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][22]~q\);

-- Location: LCCOMB_X72_Y30_N4
\RegFile_inst|Mux73~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][22]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & ((\RegFile_inst|registers[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][22]~q\,
	datad => \RegFile_inst|registers[0][22]~q\,
	combout => \RegFile_inst|Mux73~2_combout\);

-- Location: LCCOMB_X71_Y34_N10
\RegFile_inst|Mux73~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux73~2_combout\ & (\RegFile_inst|registers[3][22]~q\)) # (!\RegFile_inst|Mux73~2_combout\ & ((\RegFile_inst|registers[2][22]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux73~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][22]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][22]~q\,
	datad => \RegFile_inst|Mux73~2_combout\,
	combout => \RegFile_inst|Mux73~3_combout\);

-- Location: LCCOMB_X71_Y34_N4
\RegFile_inst|Mux73~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux73~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux73~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux73~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux73~1_combout\,
	datad => \RegFile_inst|Mux73~3_combout\,
	combout => \RegFile_inst|Mux73~4_combout\);

-- Location: FF_X71_Y34_N5
\RegFile_inst|bus_reg_rd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux73~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(22));

-- Location: LCCOMB_X77_Y35_N8
\output[22]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[22]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(22),
	combout => \output[22]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N9
\output[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[22]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[22]~reg0_q\);

-- Location: LCCOMB_X75_Y34_N10
\RegFile_inst|registers[6][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][23]~feeder_combout\ = \RegFile_inst|registers~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~26_combout\,
	combout => \RegFile_inst|registers[6][23]~feeder_combout\);

-- Location: FF_X75_Y34_N11
\RegFile_inst|registers[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][23]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][23]~q\);

-- Location: FF_X75_Y34_N5
\RegFile_inst|registers[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][23]~q\);

-- Location: LCCOMB_X70_Y30_N24
\RegFile_inst|registers[0][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][23]~feeder_combout\ = \RegFile_inst|registers~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~26_combout\,
	combout => \RegFile_inst|registers[0][23]~feeder_combout\);

-- Location: FF_X70_Y30_N25
\RegFile_inst|registers[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][23]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][23]~q\);

-- Location: FF_X71_Y34_N21
\RegFile_inst|registers[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][23]~q\);

-- Location: LCCOMB_X70_Y30_N14
\RegFile_inst|Mux40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~0_combout\ = (func(1) & (((rt_addr(2)) # (\RegFile_inst|registers[2][23]~q\)))) # (!func(1) & (\RegFile_inst|registers[0][23]~q\ & (!rt_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][23]~q\,
	datab => func(1),
	datac => rt_addr(2),
	datad => \RegFile_inst|registers[2][23]~q\,
	combout => \RegFile_inst|Mux40~0_combout\);

-- Location: LCCOMB_X71_Y30_N30
\RegFile_inst|Mux40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux40~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux40~0_combout\ & (\RegFile_inst|registers[6][23]~q\)) # (!\RegFile_inst|Mux40~0_combout\ & ((\RegFile_inst|registers[4][23]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[6][23]~q\,
	datac => \RegFile_inst|registers[4][23]~q\,
	datad => \RegFile_inst|Mux40~0_combout\,
	combout => \RegFile_inst|Mux40~1_combout\);

-- Location: FF_X71_Y30_N31
\RegFile_inst|bus_reg_rt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(23));

-- Location: FF_X70_Y30_N7
\RegFile_inst|registers[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][23]~q\);

-- Location: LCCOMB_X69_Y30_N4
\RegFile_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux8~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][23]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][23]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[1][23]~q\,
	combout => \RegFile_inst|Mux8~0_combout\);

-- Location: FF_X69_Y30_N5
\RegFile_inst|bus_reg_rs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(23));

-- Location: LCCOMB_X70_Y31_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\RegFile_inst|bus_reg_rs\(23) & ((\RegFile_inst|bus_reg_rt\(23) & (\Add1~45\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(23) & (!\Add1~45\)))) # (!\RegFile_inst|bus_reg_rs\(23) & ((\RegFile_inst|bus_reg_rt\(23) & (!\Add1~45\)) # 
-- (!\RegFile_inst|bus_reg_rt\(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\RegFile_inst|bus_reg_rs\(23) & (!\RegFile_inst|bus_reg_rt\(23) & !\Add1~45\)) # (!\RegFile_inst|bus_reg_rs\(23) & ((!\Add1~45\) # (!\RegFile_inst|bus_reg_rt\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(23),
	datab => \RegFile_inst|bus_reg_rt\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X71_Y31_N4
\bus_data_in~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~24_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(23) $ ((\RegFile_inst|bus_reg_rs\(23))))) # (!\Equal2~0_combout\ & (((\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(23),
	datab => \RegFile_inst|bus_reg_rs\(23),
	datac => \Equal2~0_combout\,
	datad => \Add1~46_combout\,
	combout => \bus_data_in~24_combout\);

-- Location: FF_X71_Y31_N5
\bus_data_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~24_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(23));

-- Location: LCCOMB_X71_Y31_N10
\RegFile_inst|registers~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~26_combout\ = (bus_data_in(23) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bus_data_in(23),
	datad => \clr~input_o\,
	combout => \RegFile_inst|registers~26_combout\);

-- Location: LCCOMB_X74_Y34_N0
\RegFile_inst|registers[5][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][23]~feeder_combout\ = \RegFile_inst|registers~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~26_combout\,
	combout => \RegFile_inst|registers[5][23]~feeder_combout\);

-- Location: FF_X74_Y34_N1
\RegFile_inst|registers[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][23]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][23]~q\);

-- Location: FF_X74_Y34_N3
\RegFile_inst|registers[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~26_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][23]~q\);

-- Location: LCCOMB_X75_Y34_N4
\RegFile_inst|Mux72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][23]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][23]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][23]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux72~0_combout\);

-- Location: LCCOMB_X74_Y34_N2
\RegFile_inst|Mux72~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux72~0_combout\ & ((\RegFile_inst|registers[7][23]~q\))) # (!\RegFile_inst|Mux72~0_combout\ & (\RegFile_inst|registers[5][23]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][23]~q\,
	datac => \RegFile_inst|registers[7][23]~q\,
	datad => \RegFile_inst|Mux72~0_combout\,
	combout => \RegFile_inst|Mux72~1_combout\);

-- Location: LCCOMB_X70_Y30_N6
\RegFile_inst|Mux72~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][23]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & ((\RegFile_inst|registers[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][23]~q\,
	datad => \RegFile_inst|registers[0][23]~q\,
	combout => \RegFile_inst|Mux72~2_combout\);

-- Location: FF_X71_Y31_N11
\RegFile_inst|registers[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~26_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][23]~q\);

-- Location: LCCOMB_X71_Y34_N20
\RegFile_inst|Mux72~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux72~2_combout\ & ((\RegFile_inst|registers[3][23]~q\))) # (!\RegFile_inst|Mux72~2_combout\ & (\RegFile_inst|registers[2][23]~q\)))) # (!rd_addr(1) & (\RegFile_inst|Mux72~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => \RegFile_inst|Mux72~2_combout\,
	datac => \RegFile_inst|registers[2][23]~q\,
	datad => \RegFile_inst|registers[3][23]~q\,
	combout => \RegFile_inst|Mux72~3_combout\);

-- Location: LCCOMB_X71_Y34_N30
\RegFile_inst|Mux72~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux72~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux72~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux72~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux72~1_combout\,
	datad => \RegFile_inst|Mux72~3_combout\,
	combout => \RegFile_inst|Mux72~4_combout\);

-- Location: FF_X71_Y34_N31
\RegFile_inst|bus_reg_rd[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux72~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(23));

-- Location: LCCOMB_X77_Y33_N14
\output[23]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[23]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(23),
	combout => \output[23]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N15
\output[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[23]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[23]~reg0_q\);

-- Location: LCCOMB_X74_Y30_N14
\RegFile_inst|registers[6][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][24]~feeder_combout\ = \RegFile_inst|registers~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~27_combout\,
	combout => \RegFile_inst|registers[6][24]~feeder_combout\);

-- Location: FF_X74_Y30_N15
\RegFile_inst|registers[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][24]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][24]~q\);

-- Location: FF_X70_Y30_N5
\RegFile_inst|registers[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][24]~q\);

-- Location: FF_X74_Y30_N21
\RegFile_inst|registers[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][24]~q\);

-- Location: LCCOMB_X71_Y30_N24
\RegFile_inst|Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~0_combout\ = (rt_addr(2) & (((func(1)) # (\RegFile_inst|registers[4][24]~q\)))) # (!rt_addr(2) & (\RegFile_inst|registers[0][24]~q\ & (!func(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[0][24]~q\,
	datac => func(1),
	datad => \RegFile_inst|registers[4][24]~q\,
	combout => \RegFile_inst|Mux39~0_combout\);

-- Location: FF_X70_Y33_N5
\RegFile_inst|registers[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][24]~q\);

-- Location: LCCOMB_X71_Y30_N16
\RegFile_inst|Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux39~1_combout\ = (func(1) & ((\RegFile_inst|Mux39~0_combout\ & (\RegFile_inst|registers[6][24]~q\)) # (!\RegFile_inst|Mux39~0_combout\ & ((\RegFile_inst|registers[2][24]~q\))))) # (!func(1) & (((\RegFile_inst|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][24]~q\,
	datab => func(1),
	datac => \RegFile_inst|Mux39~0_combout\,
	datad => \RegFile_inst|registers[2][24]~q\,
	combout => \RegFile_inst|Mux39~1_combout\);

-- Location: FF_X71_Y30_N17
\RegFile_inst|bus_reg_rt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(24));

-- Location: FF_X70_Y30_N3
\RegFile_inst|registers[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][24]~q\);

-- Location: LCCOMB_X70_Y30_N4
\RegFile_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux7~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][24]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[1][24]~q\,
	datac => \RegFile_inst|registers[0][24]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux7~0_combout\);

-- Location: FF_X70_Y31_N17
\RegFile_inst|bus_reg_rs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(24));

-- Location: LCCOMB_X70_Y31_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\RegFile_inst|bus_reg_rt\(24) $ (\RegFile_inst|bus_reg_rs\(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\RegFile_inst|bus_reg_rt\(24) & ((\RegFile_inst|bus_reg_rs\(24)) # (!\Add1~47\))) # (!\RegFile_inst|bus_reg_rt\(24) & (\RegFile_inst|bus_reg_rs\(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(24),
	datab => \RegFile_inst|bus_reg_rs\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X69_Y31_N10
\bus_data_in~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~25_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(24) $ ((\RegFile_inst|bus_reg_rs\(24))))) # (!\Equal2~0_combout\ & (((\Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(24),
	datab => \RegFile_inst|bus_reg_rs\(24),
	datac => \Equal2~0_combout\,
	datad => \Add1~48_combout\,
	combout => \bus_data_in~25_combout\);

-- Location: FF_X69_Y31_N11
\bus_data_in[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~25_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(24));

-- Location: LCCOMB_X70_Y30_N8
\RegFile_inst|registers~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~27_combout\ = (bus_data_in(24) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bus_data_in(24),
	datab => \clr~input_o\,
	combout => \RegFile_inst|registers~27_combout\);

-- Location: FF_X71_Y33_N31
\RegFile_inst|registers[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][24]~q\);

-- Location: LCCOMB_X70_Y30_N2
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

-- Location: LCCOMB_X70_Y33_N4
\RegFile_inst|Mux71~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux71~2_combout\ & (\RegFile_inst|registers[3][24]~q\)) # (!\RegFile_inst|Mux71~2_combout\ & ((\RegFile_inst|registers[2][24]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][24]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][24]~q\,
	datad => \RegFile_inst|Mux71~2_combout\,
	combout => \RegFile_inst|Mux71~3_combout\);

-- Location: LCCOMB_X74_Y33_N10
\RegFile_inst|registers[5][24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][24]~feeder_combout\ = \RegFile_inst|registers~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~27_combout\,
	combout => \RegFile_inst|registers[5][24]~feeder_combout\);

-- Location: FF_X74_Y33_N11
\RegFile_inst|registers[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][24]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][24]~q\);

-- Location: FF_X74_Y33_N13
\RegFile_inst|registers[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~27_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][24]~q\);

-- Location: LCCOMB_X74_Y30_N20
\RegFile_inst|Mux71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][24]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][24]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][24]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[4][24]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux71~0_combout\);

-- Location: LCCOMB_X74_Y33_N12
\RegFile_inst|Mux71~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux71~0_combout\ & ((\RegFile_inst|registers[7][24]~q\))) # (!\RegFile_inst|Mux71~0_combout\ & (\RegFile_inst|registers[5][24]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][24]~q\,
	datac => \RegFile_inst|registers[7][24]~q\,
	datad => \RegFile_inst|Mux71~0_combout\,
	combout => \RegFile_inst|Mux71~1_combout\);

-- Location: LCCOMB_X70_Y33_N18
\RegFile_inst|Mux71~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux71~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux71~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux71~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|Mux71~3_combout\,
	datac => \RegFile_inst|Mux71~1_combout\,
	datad => rd_addr(2),
	combout => \RegFile_inst|Mux71~4_combout\);

-- Location: FF_X70_Y33_N19
\RegFile_inst|bus_reg_rd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux71~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(24));

-- Location: LCCOMB_X77_Y34_N14
\output[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[24]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(24),
	combout => \output[24]~reg0feeder_combout\);

-- Location: FF_X77_Y34_N15
\output[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[24]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[24]~reg0_q\);

-- Location: LCCOMB_X74_Y30_N22
\RegFile_inst|registers[6][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][25]~feeder_combout\ = \RegFile_inst|registers~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~28_combout\,
	combout => \RegFile_inst|registers[6][25]~feeder_combout\);

-- Location: FF_X74_Y30_N23
\RegFile_inst|registers[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][25]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][25]~q\);

-- Location: LCCOMB_X70_Y30_N16
\RegFile_inst|registers[0][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][25]~feeder_combout\ = \RegFile_inst|registers~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~28_combout\,
	combout => \RegFile_inst|registers[0][25]~feeder_combout\);

-- Location: FF_X70_Y30_N17
\RegFile_inst|registers[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][25]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][25]~q\);

-- Location: FF_X71_Y34_N19
\RegFile_inst|registers[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][25]~q\);

-- Location: LCCOMB_X70_Y30_N12
\RegFile_inst|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & ((\RegFile_inst|registers[2][25]~q\))) # (!func(1) & (\RegFile_inst|registers[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[0][25]~q\,
	datac => \RegFile_inst|registers[2][25]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux38~0_combout\);

-- Location: LCCOMB_X74_Y30_N24
\RegFile_inst|registers[4][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][25]~feeder_combout\ = \RegFile_inst|registers~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~28_combout\,
	combout => \RegFile_inst|registers[4][25]~feeder_combout\);

-- Location: FF_X74_Y30_N25
\RegFile_inst|registers[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][25]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][25]~q\);

-- Location: LCCOMB_X74_Y31_N24
\RegFile_inst|Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux38~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux38~0_combout\ & (\RegFile_inst|registers[6][25]~q\)) # (!\RegFile_inst|Mux38~0_combout\ & ((\RegFile_inst|registers[4][25]~q\))))) # (!rt_addr(2) & (((\RegFile_inst|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[6][25]~q\,
	datac => \RegFile_inst|Mux38~0_combout\,
	datad => \RegFile_inst|registers[4][25]~q\,
	combout => \RegFile_inst|Mux38~1_combout\);

-- Location: FF_X74_Y31_N25
\RegFile_inst|bus_reg_rt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(25));

-- Location: FF_X70_Y30_N23
\RegFile_inst|registers[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][25]~q\);

-- Location: LCCOMB_X69_Y30_N26
\RegFile_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux6~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][25]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][25]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[1][25]~q\,
	combout => \RegFile_inst|Mux6~0_combout\);

-- Location: FF_X69_Y30_N27
\RegFile_inst|bus_reg_rs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(25));

-- Location: LCCOMB_X70_Y31_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\RegFile_inst|bus_reg_rs\(25) & ((\RegFile_inst|bus_reg_rt\(25) & (\Add1~49\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(25) & (!\Add1~49\)))) # (!\RegFile_inst|bus_reg_rs\(25) & ((\RegFile_inst|bus_reg_rt\(25) & (!\Add1~49\)) # 
-- (!\RegFile_inst|bus_reg_rt\(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\RegFile_inst|bus_reg_rs\(25) & (!\RegFile_inst|bus_reg_rt\(25) & !\Add1~49\)) # (!\RegFile_inst|bus_reg_rs\(25) & ((!\Add1~49\) # (!\RegFile_inst|bus_reg_rt\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(25),
	datab => \RegFile_inst|bus_reg_rt\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X69_Y31_N8
\bus_data_in~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~26_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(25) $ ((\RegFile_inst|bus_reg_rs\(25))))) # (!\Equal2~0_combout\ & (((\Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(25),
	datab => \RegFile_inst|bus_reg_rs\(25),
	datac => \Equal2~0_combout\,
	datad => \Add1~50_combout\,
	combout => \bus_data_in~26_combout\);

-- Location: FF_X69_Y31_N9
\bus_data_in[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~26_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(25));

-- Location: LCCOMB_X70_Y30_N30
\RegFile_inst|registers~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~28_combout\ = (!\clr~input_o\ & bus_data_in(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(25),
	combout => \RegFile_inst|registers~28_combout\);

-- Location: LCCOMB_X74_Y34_N20
\RegFile_inst|registers[5][25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][25]~feeder_combout\ = \RegFile_inst|registers~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~28_combout\,
	combout => \RegFile_inst|registers[5][25]~feeder_combout\);

-- Location: FF_X74_Y34_N21
\RegFile_inst|registers[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][25]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][25]~q\);

-- Location: FF_X74_Y34_N27
\RegFile_inst|registers[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][25]~q\);

-- Location: LCCOMB_X74_Y30_N10
\RegFile_inst|Mux70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][25]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][25]~q\,
	datab => \RegFile_inst|registers[4][25]~q\,
	datac => rd_addr(0),
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux70~0_combout\);

-- Location: LCCOMB_X74_Y34_N26
\RegFile_inst|Mux70~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux70~0_combout\ & ((\RegFile_inst|registers[7][25]~q\))) # (!\RegFile_inst|Mux70~0_combout\ & (\RegFile_inst|registers[5][25]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][25]~q\,
	datac => \RegFile_inst|registers[7][25]~q\,
	datad => \RegFile_inst|Mux70~0_combout\,
	combout => \RegFile_inst|Mux70~1_combout\);

-- Location: FF_X69_Y33_N9
\RegFile_inst|registers[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~28_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][25]~q\);

-- Location: LCCOMB_X70_Y30_N22
\RegFile_inst|Mux70~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][25]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & ((\RegFile_inst|registers[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][25]~q\,
	datad => \RegFile_inst|registers[0][25]~q\,
	combout => \RegFile_inst|Mux70~2_combout\);

-- Location: LCCOMB_X71_Y34_N18
\RegFile_inst|Mux70~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux70~2_combout\ & (\RegFile_inst|registers[3][25]~q\)) # (!\RegFile_inst|Mux70~2_combout\ & ((\RegFile_inst|registers[2][25]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][25]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][25]~q\,
	datad => \RegFile_inst|Mux70~2_combout\,
	combout => \RegFile_inst|Mux70~3_combout\);

-- Location: LCCOMB_X71_Y34_N12
\RegFile_inst|Mux70~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux70~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux70~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux70~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux70~1_combout\,
	datad => \RegFile_inst|Mux70~3_combout\,
	combout => \RegFile_inst|Mux70~4_combout\);

-- Location: FF_X71_Y34_N13
\RegFile_inst|bus_reg_rd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux70~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(25));

-- Location: LCCOMB_X77_Y35_N22
\output[25]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[25]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(25),
	combout => \output[25]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N23
\output[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[25]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[25]~reg0_q\);

-- Location: LCCOMB_X70_Y30_N20
\RegFile_inst|registers[0][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][26]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[0][26]~feeder_combout\);

-- Location: FF_X70_Y30_N21
\RegFile_inst|registers[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][26]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][26]~q\);

-- Location: FF_X70_Y30_N19
\RegFile_inst|registers[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][26]~q\);

-- Location: LCCOMB_X69_Y30_N24
\RegFile_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux5~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][26]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][26]~q\,
	datac => rs_addr(0),
	datad => \RegFile_inst|registers[1][26]~q\,
	combout => \RegFile_inst|Mux5~0_combout\);

-- Location: FF_X69_Y30_N25
\RegFile_inst|bus_reg_rs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(26));

-- Location: FF_X74_Y30_N13
\RegFile_inst|registers[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][26]~q\);

-- Location: LCCOMB_X70_Y30_N26
\RegFile_inst|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~0_combout\ = (rt_addr(2) & (((\RegFile_inst|registers[4][26]~q\) # (func(1))))) # (!rt_addr(2) & (\RegFile_inst|registers[0][26]~q\ & ((!func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => \RegFile_inst|registers[0][26]~q\,
	datac => \RegFile_inst|registers[4][26]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux37~0_combout\);

-- Location: LCCOMB_X74_Y30_N2
\RegFile_inst|registers[6][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][26]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[6][26]~feeder_combout\);

-- Location: FF_X74_Y30_N3
\RegFile_inst|registers[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][26]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][26]~q\);

-- Location: FF_X70_Y33_N15
\RegFile_inst|registers[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][26]~q\);

-- Location: LCCOMB_X70_Y33_N16
\RegFile_inst|Mux37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux37~1_combout\ = (\RegFile_inst|Mux37~0_combout\ & ((\RegFile_inst|registers[6][26]~q\) # ((!func(1))))) # (!\RegFile_inst|Mux37~0_combout\ & (((\RegFile_inst|registers[2][26]~q\ & func(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux37~0_combout\,
	datab => \RegFile_inst|registers[6][26]~q\,
	datac => \RegFile_inst|registers[2][26]~q\,
	datad => func(1),
	combout => \RegFile_inst|Mux37~1_combout\);

-- Location: FF_X70_Y33_N17
\RegFile_inst|bus_reg_rt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(26));

-- Location: LCCOMB_X70_Y31_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\RegFile_inst|bus_reg_rt\(26) $ (\RegFile_inst|bus_reg_rs\(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\RegFile_inst|bus_reg_rt\(26) & ((\RegFile_inst|bus_reg_rs\(26)) # (!\Add1~51\))) # (!\RegFile_inst|bus_reg_rt\(26) & (\RegFile_inst|bus_reg_rs\(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(26),
	datab => \RegFile_inst|bus_reg_rs\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X69_Y31_N26
\bus_data_in~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~27_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(26) $ (((\RegFile_inst|bus_reg_rt\(26)))))) # (!\Equal2~0_combout\ & (((\Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(26),
	datab => \Equal2~0_combout\,
	datac => \Add1~52_combout\,
	datad => \RegFile_inst|bus_reg_rt\(26),
	combout => \bus_data_in~27_combout\);

-- Location: FF_X69_Y31_N27
\bus_data_in[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~27_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(26));

-- Location: LCCOMB_X69_Y31_N14
\RegFile_inst|registers~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~29_combout\ = (bus_data_in(26) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bus_data_in(26),
	datac => \clr~input_o\,
	combout => \RegFile_inst|registers~29_combout\);

-- Location: FF_X69_Y31_N15
\RegFile_inst|registers[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~29_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][26]~q\);

-- Location: LCCOMB_X70_Y30_N18
\RegFile_inst|Mux69~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~2_combout\ = (rd_addr(0) & ((rd_addr(1)) # ((\RegFile_inst|registers[1][26]~q\)))) # (!rd_addr(0) & (!rd_addr(1) & ((\RegFile_inst|registers[0][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[1][26]~q\,
	datad => \RegFile_inst|registers[0][26]~q\,
	combout => \RegFile_inst|Mux69~2_combout\);

-- Location: LCCOMB_X70_Y33_N14
\RegFile_inst|Mux69~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux69~2_combout\ & (\RegFile_inst|registers[3][26]~q\)) # (!\RegFile_inst|Mux69~2_combout\ & ((\RegFile_inst|registers[2][26]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][26]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][26]~q\,
	datad => \RegFile_inst|Mux69~2_combout\,
	combout => \RegFile_inst|Mux69~3_combout\);

-- Location: LCCOMB_X74_Y33_N18
\RegFile_inst|registers[5][26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][26]~feeder_combout\ = \RegFile_inst|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~29_combout\,
	combout => \RegFile_inst|registers[5][26]~feeder_combout\);

-- Location: FF_X74_Y33_N19
\RegFile_inst|registers[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][26]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][26]~q\);

-- Location: FF_X74_Y33_N17
\RegFile_inst|registers[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~29_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][26]~q\);

-- Location: LCCOMB_X74_Y30_N12
\RegFile_inst|Mux69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][26]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][26]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][26]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[4][26]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux69~0_combout\);

-- Location: LCCOMB_X74_Y33_N16
\RegFile_inst|Mux69~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux69~0_combout\ & ((\RegFile_inst|registers[7][26]~q\))) # (!\RegFile_inst|Mux69~0_combout\ & (\RegFile_inst|registers[5][26]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][26]~q\,
	datac => \RegFile_inst|registers[7][26]~q\,
	datad => \RegFile_inst|Mux69~0_combout\,
	combout => \RegFile_inst|Mux69~1_combout\);

-- Location: LCCOMB_X70_Y33_N8
\RegFile_inst|Mux69~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux69~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux69~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux69~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux69~3_combout\,
	datad => \RegFile_inst|Mux69~1_combout\,
	combout => \RegFile_inst|Mux69~4_combout\);

-- Location: FF_X70_Y33_N9
\RegFile_inst|bus_reg_rd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux69~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(26));

-- Location: LCCOMB_X77_Y33_N16
\output[26]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[26]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(26),
	combout => \output[26]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N17
\output[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[26]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[26]~reg0_q\);

-- Location: FF_X70_Y30_N1
\RegFile_inst|registers[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][27]~q\);

-- Location: LCCOMB_X70_Y30_N10
\RegFile_inst|registers[1][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][27]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[1][27]~feeder_combout\);

-- Location: FF_X70_Y30_N11
\RegFile_inst|registers[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][27]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][27]~q\);

-- Location: LCCOMB_X69_Y30_N30
\RegFile_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux4~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][27]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rs_addr(0),
	datac => \RegFile_inst|registers[0][27]~q\,
	datad => \RegFile_inst|registers[1][27]~q\,
	combout => \RegFile_inst|Mux4~0_combout\);

-- Location: FF_X69_Y30_N31
\RegFile_inst|bus_reg_rs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(27));

-- Location: LCCOMB_X74_Y30_N18
\RegFile_inst|registers[6][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][27]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[6][27]~feeder_combout\);

-- Location: FF_X74_Y30_N19
\RegFile_inst|registers[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][27]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][27]~q\);

-- Location: LCCOMB_X70_Y30_N28
\RegFile_inst|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & (\RegFile_inst|registers[2][27]~q\)) # (!func(1) & ((\RegFile_inst|registers[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][27]~q\,
	datab => \RegFile_inst|registers[0][27]~q\,
	datac => rt_addr(2),
	datad => func(1),
	combout => \RegFile_inst|Mux36~0_combout\);

-- Location: FF_X74_Y30_N1
\RegFile_inst|registers[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][27]~q\);

-- Location: LCCOMB_X71_Y30_N10
\RegFile_inst|Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux36~1_combout\ = (\RegFile_inst|Mux36~0_combout\ & ((\RegFile_inst|registers[6][27]~q\) # ((!rt_addr(2))))) # (!\RegFile_inst|Mux36~0_combout\ & (((\RegFile_inst|registers[4][27]~q\ & rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][27]~q\,
	datab => \RegFile_inst|Mux36~0_combout\,
	datac => \RegFile_inst|registers[4][27]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux36~1_combout\);

-- Location: FF_X71_Y30_N11
\RegFile_inst|bus_reg_rt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(27));

-- Location: LCCOMB_X70_Y31_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\RegFile_inst|bus_reg_rs\(27) & ((\RegFile_inst|bus_reg_rt\(27) & (\Add1~53\ & VCC)) # (!\RegFile_inst|bus_reg_rt\(27) & (!\Add1~53\)))) # (!\RegFile_inst|bus_reg_rs\(27) & ((\RegFile_inst|bus_reg_rt\(27) & (!\Add1~53\)) # 
-- (!\RegFile_inst|bus_reg_rt\(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\RegFile_inst|bus_reg_rs\(27) & (!\RegFile_inst|bus_reg_rt\(27) & !\Add1~53\)) # (!\RegFile_inst|bus_reg_rs\(27) & ((!\Add1~53\) # (!\RegFile_inst|bus_reg_rt\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(27),
	datab => \RegFile_inst|bus_reg_rt\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X69_Y31_N28
\bus_data_in~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~28_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(27) $ ((\RegFile_inst|bus_reg_rt\(27))))) # (!\Equal2~0_combout\ & (((\Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(27),
	datab => \Equal2~0_combout\,
	datac => \RegFile_inst|bus_reg_rt\(27),
	datad => \Add1~54_combout\,
	combout => \bus_data_in~28_combout\);

-- Location: FF_X69_Y31_N29
\bus_data_in[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~28_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(27));

-- Location: LCCOMB_X69_Y31_N20
\RegFile_inst|registers~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~30_combout\ = (!\clr~input_o\ & bus_data_in(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(27),
	combout => \RegFile_inst|registers~30_combout\);

-- Location: LCCOMB_X72_Y29_N12
\RegFile_inst|registers[2][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][27]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[2][27]~feeder_combout\);

-- Location: FF_X72_Y29_N13
\RegFile_inst|registers[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][27]~feeder_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][27]~q\);

-- Location: FF_X72_Y31_N27
\RegFile_inst|registers[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][27]~q\);

-- Location: LCCOMB_X70_Y30_N0
\RegFile_inst|Mux68~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][27]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][27]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][27]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux68~2_combout\);

-- Location: LCCOMB_X74_Y31_N30
\RegFile_inst|Mux68~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux68~2_combout\ & ((\RegFile_inst|registers[3][27]~q\))) # (!\RegFile_inst|Mux68~2_combout\ & (\RegFile_inst|registers[2][27]~q\)))) # (!rd_addr(1) & (((\RegFile_inst|Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[2][27]~q\,
	datab => \RegFile_inst|registers[3][27]~q\,
	datac => rd_addr(1),
	datad => \RegFile_inst|Mux68~2_combout\,
	combout => \RegFile_inst|Mux68~3_combout\);

-- Location: LCCOMB_X74_Y32_N30
\RegFile_inst|registers[7][27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[7][27]~feeder_combout\ = \RegFile_inst|registers~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~30_combout\,
	combout => \RegFile_inst|registers[7][27]~feeder_combout\);

-- Location: FF_X74_Y32_N31
\RegFile_inst|registers[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[7][27]~feeder_combout\,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][27]~q\);

-- Location: FF_X74_Y31_N29
\RegFile_inst|registers[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~30_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][27]~q\);

-- Location: LCCOMB_X74_Y30_N0
\RegFile_inst|Mux68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][27]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][27]~q\,
	datac => \RegFile_inst|registers[4][27]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux68~0_combout\);

-- Location: LCCOMB_X74_Y31_N28
\RegFile_inst|Mux68~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux68~0_combout\ & (\RegFile_inst|registers[7][27]~q\)) # (!\RegFile_inst|Mux68~0_combout\ & ((\RegFile_inst|registers[5][27]~q\))))) # (!rd_addr(0) & (((\RegFile_inst|Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[7][27]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[5][27]~q\,
	datad => \RegFile_inst|Mux68~0_combout\,
	combout => \RegFile_inst|Mux68~1_combout\);

-- Location: LCCOMB_X74_Y31_N14
\RegFile_inst|Mux68~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux68~4_combout\ = (rd_addr(2) & ((\RegFile_inst|Mux68~1_combout\))) # (!rd_addr(2) & (\RegFile_inst|Mux68~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux68~3_combout\,
	datad => \RegFile_inst|Mux68~1_combout\,
	combout => \RegFile_inst|Mux68~4_combout\);

-- Location: FF_X74_Y31_N15
\RegFile_inst|bus_reg_rd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux68~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(27));

-- Location: LCCOMB_X75_Y35_N8
\output[27]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[27]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(27),
	combout => \output[27]~reg0feeder_combout\);

-- Location: FF_X75_Y35_N9
\output[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[27]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[27]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N0
\RegFile_inst|registers[1][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][28]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[1][28]~feeder_combout\);

-- Location: FF_X72_Y30_N1
\RegFile_inst|registers[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][28]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][28]~q\);

-- Location: FF_X72_Y30_N23
\RegFile_inst|registers[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][28]~q\);

-- Location: LCCOMB_X71_Y30_N26
\RegFile_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux3~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][28]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rs_addr(0),
	datac => \RegFile_inst|registers[1][28]~q\,
	datad => \RegFile_inst|registers[0][28]~q\,
	combout => \RegFile_inst|Mux3~0_combout\);

-- Location: FF_X71_Y30_N27
\RegFile_inst|bus_reg_rs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(28));

-- Location: LCCOMB_X74_Y29_N10
\RegFile_inst|registers[2][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[2][28]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[2][28]~feeder_combout\);

-- Location: FF_X74_Y29_N11
\RegFile_inst|registers[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[2][28]~feeder_combout\,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][28]~q\);

-- Location: FF_X74_Y30_N9
\RegFile_inst|registers[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][28]~q\);

-- Location: LCCOMB_X74_Y30_N30
\RegFile_inst|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & ((\RegFile_inst|registers[4][28]~q\))) # (!rt_addr(2) & (\RegFile_inst|registers[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][28]~q\,
	datab => \RegFile_inst|registers[4][28]~q\,
	datac => func(1),
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux35~0_combout\);

-- Location: LCCOMB_X74_Y30_N16
\RegFile_inst|registers[6][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][28]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[6][28]~feeder_combout\);

-- Location: FF_X74_Y30_N17
\RegFile_inst|registers[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][28]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][28]~q\);

-- Location: LCCOMB_X74_Y29_N12
\RegFile_inst|Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux35~1_combout\ = (func(1) & ((\RegFile_inst|Mux35~0_combout\ & ((\RegFile_inst|registers[6][28]~q\))) # (!\RegFile_inst|Mux35~0_combout\ & (\RegFile_inst|registers[2][28]~q\)))) # (!func(1) & (((\RegFile_inst|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => func(1),
	datab => \RegFile_inst|registers[2][28]~q\,
	datac => \RegFile_inst|Mux35~0_combout\,
	datad => \RegFile_inst|registers[6][28]~q\,
	combout => \RegFile_inst|Mux35~1_combout\);

-- Location: FF_X74_Y29_N13
\RegFile_inst|bus_reg_rt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(28));

-- Location: LCCOMB_X70_Y31_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\RegFile_inst|bus_reg_rs\(28) $ (\RegFile_inst|bus_reg_rt\(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\RegFile_inst|bus_reg_rs\(28) & ((\RegFile_inst|bus_reg_rt\(28)) # (!\Add1~55\))) # (!\RegFile_inst|bus_reg_rs\(28) & (\RegFile_inst|bus_reg_rt\(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(28),
	datab => \RegFile_inst|bus_reg_rt\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X71_Y31_N14
\bus_data_in~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~29_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rs\(28) $ ((\RegFile_inst|bus_reg_rt\(28))))) # (!\Equal2~0_combout\ & (((\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rs\(28),
	datab => \RegFile_inst|bus_reg_rt\(28),
	datac => \Equal2~0_combout\,
	datad => \Add1~56_combout\,
	combout => \bus_data_in~29_combout\);

-- Location: FF_X71_Y31_N15
\bus_data_in[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~29_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(28));

-- Location: LCCOMB_X72_Y31_N12
\RegFile_inst|registers~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~31_combout\ = (!\clr~input_o\ & bus_data_in(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(28),
	combout => \RegFile_inst|registers~31_combout\);

-- Location: LCCOMB_X74_Y31_N0
\RegFile_inst|registers[5][28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][28]~feeder_combout\ = \RegFile_inst|registers~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~31_combout\,
	combout => \RegFile_inst|registers[5][28]~feeder_combout\);

-- Location: FF_X74_Y31_N1
\RegFile_inst|registers[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][28]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][28]~q\);

-- Location: FF_X74_Y32_N9
\RegFile_inst|registers[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~31_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][28]~q\);

-- Location: LCCOMB_X74_Y30_N8
\RegFile_inst|Mux67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][28]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][28]~q\,
	datac => \RegFile_inst|registers[4][28]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux67~0_combout\);

-- Location: LCCOMB_X74_Y32_N8
\RegFile_inst|Mux67~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux67~0_combout\ & ((\RegFile_inst|registers[7][28]~q\))) # (!\RegFile_inst|Mux67~0_combout\ & (\RegFile_inst|registers[5][28]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][28]~q\,
	datac => \RegFile_inst|registers[7][28]~q\,
	datad => \RegFile_inst|Mux67~0_combout\,
	combout => \RegFile_inst|Mux67~1_combout\);

-- Location: LCCOMB_X72_Y30_N22
\RegFile_inst|Mux67~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][28]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][28]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][28]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux67~2_combout\);

-- Location: FF_X72_Y31_N13
\RegFile_inst|registers[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~31_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][28]~q\);

-- Location: LCCOMB_X74_Y32_N18
\RegFile_inst|Mux67~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~3_combout\ = (\RegFile_inst|Mux67~2_combout\ & (((\RegFile_inst|registers[3][28]~q\) # (!rd_addr(1))))) # (!\RegFile_inst|Mux67~2_combout\ & (\RegFile_inst|registers[2][28]~q\ & ((rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux67~2_combout\,
	datab => \RegFile_inst|registers[2][28]~q\,
	datac => \RegFile_inst|registers[3][28]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux67~3_combout\);

-- Location: LCCOMB_X74_Y32_N20
\RegFile_inst|Mux67~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux67~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux67~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux67~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux67~1_combout\,
	datad => \RegFile_inst|Mux67~3_combout\,
	combout => \RegFile_inst|Mux67~4_combout\);

-- Location: FF_X74_Y32_N21
\RegFile_inst|bus_reg_rd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux67~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(28));

-- Location: LCCOMB_X77_Y33_N30
\output[28]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[28]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(28),
	combout => \output[28]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N31
\output[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[28]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[28]~reg0_q\);

-- Location: FF_X74_Y30_N7
\RegFile_inst|registers[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][29]~q\);

-- Location: LCCOMB_X74_Y30_N28
\RegFile_inst|registers[6][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][29]~feeder_combout\ = \RegFile_inst|registers~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~32_combout\,
	combout => \RegFile_inst|registers[6][29]~feeder_combout\);

-- Location: FF_X74_Y30_N29
\RegFile_inst|registers[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][29]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][29]~q\);

-- Location: FF_X72_Y30_N31
\RegFile_inst|registers[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][29]~q\);

-- Location: FF_X72_Y29_N19
\RegFile_inst|registers[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][29]~q\);

-- Location: LCCOMB_X71_Y30_N14
\RegFile_inst|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~0_combout\ = (rt_addr(2) & (((func(1))))) # (!rt_addr(2) & ((func(1) & ((\RegFile_inst|registers[2][29]~q\))) # (!func(1) & (\RegFile_inst|registers[0][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][29]~q\,
	datab => \RegFile_inst|registers[2][29]~q\,
	datac => rt_addr(2),
	datad => func(1),
	combout => \RegFile_inst|Mux34~0_combout\);

-- Location: LCCOMB_X71_Y30_N12
\RegFile_inst|Mux34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux34~1_combout\ = (\RegFile_inst|Mux34~0_combout\ & (((\RegFile_inst|registers[6][29]~q\) # (!rt_addr(2))))) # (!\RegFile_inst|Mux34~0_combout\ & (\RegFile_inst|registers[4][29]~q\ & ((rt_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][29]~q\,
	datab => \RegFile_inst|registers[6][29]~q\,
	datac => \RegFile_inst|Mux34~0_combout\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux34~1_combout\);

-- Location: FF_X71_Y30_N13
\RegFile_inst|bus_reg_rt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(29));

-- Location: LCCOMB_X72_Y30_N16
\RegFile_inst|registers[1][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][29]~feeder_combout\ = \RegFile_inst|registers~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~32_combout\,
	combout => \RegFile_inst|registers[1][29]~feeder_combout\);

-- Location: FF_X72_Y30_N17
\RegFile_inst|registers[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][29]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][29]~q\);

-- Location: LCCOMB_X71_Y30_N0
\RegFile_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux2~0_combout\ = (rs_addr(0) & (\RegFile_inst|registers[1][29]~q\)) # (!rs_addr(0) & ((\RegFile_inst|registers[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[1][29]~q\,
	datac => \RegFile_inst|registers[0][29]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux2~0_combout\);

-- Location: FF_X71_Y30_N1
\RegFile_inst|bus_reg_rs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(29));

-- Location: LCCOMB_X70_Y31_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\RegFile_inst|bus_reg_rt\(29) & ((\RegFile_inst|bus_reg_rs\(29) & (\Add1~57\ & VCC)) # (!\RegFile_inst|bus_reg_rs\(29) & (!\Add1~57\)))) # (!\RegFile_inst|bus_reg_rt\(29) & ((\RegFile_inst|bus_reg_rs\(29) & (!\Add1~57\)) # 
-- (!\RegFile_inst|bus_reg_rs\(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\RegFile_inst|bus_reg_rt\(29) & (!\RegFile_inst|bus_reg_rs\(29) & !\Add1~57\)) # (!\RegFile_inst|bus_reg_rt\(29) & ((!\Add1~57\) # (!\RegFile_inst|bus_reg_rs\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(29),
	datab => \RegFile_inst|bus_reg_rs\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X71_Y31_N12
\bus_data_in~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~30_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(29) $ (((\RegFile_inst|bus_reg_rs\(29)))))) # (!\Equal2~0_combout\ & (((\Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(29),
	datab => \Equal2~0_combout\,
	datac => \Add1~58_combout\,
	datad => \RegFile_inst|bus_reg_rs\(29),
	combout => \bus_data_in~30_combout\);

-- Location: FF_X71_Y31_N13
\bus_data_in[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~30_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(29));

-- Location: LCCOMB_X72_Y31_N6
\RegFile_inst|registers~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~32_combout\ = (!\clr~input_o\ & bus_data_in(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(29),
	combout => \RegFile_inst|registers~32_combout\);

-- Location: LCCOMB_X74_Y33_N22
\RegFile_inst|registers[5][29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][29]~feeder_combout\ = \RegFile_inst|registers~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~32_combout\,
	combout => \RegFile_inst|registers[5][29]~feeder_combout\);

-- Location: FF_X74_Y33_N23
\RegFile_inst|registers[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][29]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][29]~q\);

-- Location: FF_X72_Y33_N5
\RegFile_inst|registers[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~32_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][29]~q\);

-- Location: LCCOMB_X74_Y30_N6
\RegFile_inst|Mux66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~0_combout\ = (rd_addr(1) & ((\RegFile_inst|registers[6][29]~q\) # ((rd_addr(0))))) # (!rd_addr(1) & (((\RegFile_inst|registers[4][29]~q\ & !rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[6][29]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[4][29]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux66~0_combout\);

-- Location: LCCOMB_X72_Y33_N4
\RegFile_inst|Mux66~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux66~0_combout\ & ((\RegFile_inst|registers[7][29]~q\))) # (!\RegFile_inst|Mux66~0_combout\ & (\RegFile_inst|registers[5][29]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[5][29]~q\,
	datac => \RegFile_inst|registers[7][29]~q\,
	datad => \RegFile_inst|Mux66~0_combout\,
	combout => \RegFile_inst|Mux66~1_combout\);

-- Location: LCCOMB_X72_Y30_N30
\RegFile_inst|Mux66~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~2_combout\ = (rd_addr(1) & (((rd_addr(0))))) # (!rd_addr(1) & ((rd_addr(0) & (\RegFile_inst|registers[1][29]~q\)) # (!rd_addr(0) & ((\RegFile_inst|registers[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][29]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[0][29]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux66~2_combout\);

-- Location: FF_X72_Y31_N7
\RegFile_inst|registers[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers~32_combout\,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][29]~q\);

-- Location: LCCOMB_X72_Y29_N18
\RegFile_inst|Mux66~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~3_combout\ = (\RegFile_inst|Mux66~2_combout\ & (((\RegFile_inst|registers[3][29]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux66~2_combout\ & (rd_addr(1) & (\RegFile_inst|registers[2][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux66~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][29]~q\,
	datad => \RegFile_inst|registers[3][29]~q\,
	combout => \RegFile_inst|Mux66~3_combout\);

-- Location: LCCOMB_X72_Y33_N10
\RegFile_inst|Mux66~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux66~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux66~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux66~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_addr(2),
	datac => \RegFile_inst|Mux66~1_combout\,
	datad => \RegFile_inst|Mux66~3_combout\,
	combout => \RegFile_inst|Mux66~4_combout\);

-- Location: FF_X72_Y33_N11
\RegFile_inst|bus_reg_rd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux66~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(29));

-- Location: LCCOMB_X77_Y33_N20
\output[29]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[29]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(29),
	combout => \output[29]~reg0feeder_combout\);

-- Location: FF_X77_Y33_N21
\output[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[29]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[29]~reg0_q\);

-- Location: FF_X74_Y30_N27
\RegFile_inst|registers[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][30]~q\);

-- Location: FF_X72_Y30_N27
\RegFile_inst|registers[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][30]~q\);

-- Location: LCCOMB_X75_Y30_N22
\RegFile_inst|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~0_combout\ = (func(1) & (((rt_addr(2))))) # (!func(1) & ((rt_addr(2) & (\RegFile_inst|registers[4][30]~q\)) # (!rt_addr(2) & ((\RegFile_inst|registers[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][30]~q\,
	datab => func(1),
	datac => \RegFile_inst|registers[0][30]~q\,
	datad => rt_addr(2),
	combout => \RegFile_inst|Mux33~0_combout\);

-- Location: FF_X75_Y30_N5
\RegFile_inst|registers[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][30]~q\);

-- Location: LCCOMB_X74_Y30_N4
\RegFile_inst|registers[6][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[6][30]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[6][30]~feeder_combout\);

-- Location: FF_X74_Y30_N5
\RegFile_inst|registers[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[6][30]~feeder_combout\,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][30]~q\);

-- Location: LCCOMB_X75_Y30_N0
\RegFile_inst|Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux33~1_combout\ = (\RegFile_inst|Mux33~0_combout\ & (((\RegFile_inst|registers[6][30]~q\)) # (!func(1)))) # (!\RegFile_inst|Mux33~0_combout\ & (func(1) & (\RegFile_inst|registers[2][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux33~0_combout\,
	datab => func(1),
	datac => \RegFile_inst|registers[2][30]~q\,
	datad => \RegFile_inst|registers[6][30]~q\,
	combout => \RegFile_inst|Mux33~1_combout\);

-- Location: FF_X75_Y30_N1
\RegFile_inst|bus_reg_rt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(30));

-- Location: LCCOMB_X72_Y30_N8
\RegFile_inst|registers[1][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[1][30]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[1][30]~feeder_combout\);

-- Location: FF_X72_Y30_N9
\RegFile_inst|registers[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[1][30]~feeder_combout\,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][30]~q\);

-- Location: LCCOMB_X71_Y30_N6
\RegFile_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux1~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][30]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|registers[0][30]~q\,
	datac => \RegFile_inst|registers[1][30]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux1~0_combout\);

-- Location: FF_X71_Y30_N7
\RegFile_inst|bus_reg_rs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(30));

-- Location: LCCOMB_X70_Y31_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\RegFile_inst|bus_reg_rt\(30) $ (\RegFile_inst|bus_reg_rs\(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\RegFile_inst|bus_reg_rt\(30) & ((\RegFile_inst|bus_reg_rs\(30)) # (!\Add1~59\))) # (!\RegFile_inst|bus_reg_rt\(30) & (\RegFile_inst|bus_reg_rs\(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(30),
	datab => \RegFile_inst|bus_reg_rs\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X71_Y31_N26
\bus_data_in~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~31_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(30) $ ((\RegFile_inst|bus_reg_rs\(30))))) # (!\Equal2~0_combout\ & (((\Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(30),
	datab => \Equal2~0_combout\,
	datac => \RegFile_inst|bus_reg_rs\(30),
	datad => \Add1~60_combout\,
	combout => \bus_data_in~31_combout\);

-- Location: FF_X71_Y31_N27
\bus_data_in[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~31_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(30));

-- Location: LCCOMB_X71_Y33_N30
\RegFile_inst|registers~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~33_combout\ = (!\clr~input_o\ & bus_data_in(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => bus_data_in(30),
	combout => \RegFile_inst|registers~33_combout\);

-- Location: LCCOMB_X74_Y33_N4
\RegFile_inst|registers[5][30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][30]~feeder_combout\ = \RegFile_inst|registers~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~33_combout\,
	combout => \RegFile_inst|registers[5][30]~feeder_combout\);

-- Location: FF_X74_Y33_N5
\RegFile_inst|registers[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][30]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][30]~q\);

-- Location: FF_X74_Y32_N13
\RegFile_inst|registers[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][30]~q\);

-- Location: LCCOMB_X74_Y30_N26
\RegFile_inst|Mux65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~0_combout\ = (rd_addr(0) & (((rd_addr(1))))) # (!rd_addr(0) & ((rd_addr(1) & (\RegFile_inst|registers[6][30]~q\)) # (!rd_addr(1) & ((\RegFile_inst|registers[4][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(0),
	datab => \RegFile_inst|registers[6][30]~q\,
	datac => \RegFile_inst|registers[4][30]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux65~0_combout\);

-- Location: LCCOMB_X74_Y32_N12
\RegFile_inst|Mux65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~1_combout\ = (rd_addr(0) & ((\RegFile_inst|Mux65~0_combout\ & ((\RegFile_inst|registers[7][30]~q\))) # (!\RegFile_inst|Mux65~0_combout\ & (\RegFile_inst|registers[5][30]~q\)))) # (!rd_addr(0) & (((\RegFile_inst|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][30]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[7][30]~q\,
	datad => \RegFile_inst|Mux65~0_combout\,
	combout => \RegFile_inst|Mux65~1_combout\);

-- Location: LCCOMB_X72_Y30_N26
\RegFile_inst|Mux65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~2_combout\ = (rd_addr(0) & ((\RegFile_inst|registers[1][30]~q\) # ((rd_addr(1))))) # (!rd_addr(0) & (((\RegFile_inst|registers[0][30]~q\ & !rd_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[1][30]~q\,
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[0][30]~q\,
	datad => rd_addr(1),
	combout => \RegFile_inst|Mux65~2_combout\);

-- Location: FF_X71_Y33_N17
\RegFile_inst|registers[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~33_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][30]~q\);

-- Location: LCCOMB_X75_Y30_N4
\RegFile_inst|Mux65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~3_combout\ = (\RegFile_inst|Mux65~2_combout\ & (((\RegFile_inst|registers[3][30]~q\)) # (!rd_addr(1)))) # (!\RegFile_inst|Mux65~2_combout\ & (rd_addr(1) & (\RegFile_inst|registers[2][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux65~2_combout\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][30]~q\,
	datad => \RegFile_inst|registers[3][30]~q\,
	combout => \RegFile_inst|Mux65~3_combout\);

-- Location: LCCOMB_X74_Y32_N6
\RegFile_inst|Mux65~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux65~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux65~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux65~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|Mux65~1_combout\,
	datac => rd_addr(2),
	datad => \RegFile_inst|Mux65~3_combout\,
	combout => \RegFile_inst|Mux65~4_combout\);

-- Location: FF_X74_Y32_N7
\RegFile_inst|bus_reg_rd[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux65~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(30));

-- Location: LCCOMB_X77_Y34_N4
\output[30]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[30]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|bus_reg_rd\(30),
	combout => \output[30]~reg0feeder_combout\);

-- Location: FF_X77_Y34_N5
\output[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[30]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[30]~reg0_q\);

-- Location: LCCOMB_X71_Y32_N30
\RegFile_inst|registers[4][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[4][31]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[4][31]~feeder_combout\);

-- Location: FF_X71_Y32_N31
\RegFile_inst|registers[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[4][31]~feeder_combout\,
	ena => \RegFile_inst|registers[4][18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[4][31]~q\);

-- Location: LCCOMB_X72_Y30_N18
\RegFile_inst|registers[0][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[0][31]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[0][31]~feeder_combout\);

-- Location: FF_X72_Y30_N19
\RegFile_inst|registers[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[0][31]~feeder_combout\,
	ena => \RegFile_inst|registers[0][24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[0][31]~q\);

-- Location: FF_X75_Y30_N25
\RegFile_inst|registers[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[2][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[2][31]~q\);

-- Location: LCCOMB_X71_Y30_N20
\RegFile_inst|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~0_combout\ = (rt_addr(2) & (func(1))) # (!rt_addr(2) & ((func(1) & ((\RegFile_inst|registers[2][31]~q\))) # (!func(1) & (\RegFile_inst|registers[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rt_addr(2),
	datab => func(1),
	datac => \RegFile_inst|registers[0][31]~q\,
	datad => \RegFile_inst|registers[2][31]~q\,
	combout => \RegFile_inst|Mux32~0_combout\);

-- Location: FF_X70_Y31_N7
\RegFile_inst|registers[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[6][6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[6][31]~q\);

-- Location: LCCOMB_X71_Y32_N24
\RegFile_inst|Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux32~1_combout\ = (rt_addr(2) & ((\RegFile_inst|Mux32~0_combout\ & ((\RegFile_inst|registers[6][31]~q\))) # (!\RegFile_inst|Mux32~0_combout\ & (\RegFile_inst|registers[4][31]~q\)))) # (!rt_addr(2) & (((\RegFile_inst|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[4][31]~q\,
	datab => rt_addr(2),
	datac => \RegFile_inst|Mux32~0_combout\,
	datad => \RegFile_inst|registers[6][31]~q\,
	combout => \RegFile_inst|Mux32~1_combout\);

-- Location: FF_X71_Y32_N25
\RegFile_inst|bus_reg_rt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rt\(31));

-- Location: FF_X72_Y30_N13
\RegFile_inst|registers[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[1][12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[1][31]~q\);

-- Location: LCCOMB_X71_Y30_N4
\RegFile_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux0~0_combout\ = (rs_addr(0) & ((\RegFile_inst|registers[1][31]~q\))) # (!rs_addr(0) & (\RegFile_inst|registers[0][31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[0][31]~q\,
	datac => \RegFile_inst|registers[1][31]~q\,
	datad => rs_addr(0),
	combout => \RegFile_inst|Mux0~0_combout\);

-- Location: FF_X71_Y30_N5
\RegFile_inst|bus_reg_rs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rs\(31));

-- Location: LCCOMB_X70_Y31_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \RegFile_inst|bus_reg_rs\(31) $ (\Add1~61\ $ (\RegFile_inst|bus_reg_rt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegFile_inst|bus_reg_rs\(31),
	datad => \RegFile_inst|bus_reg_rt\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X69_Y31_N6
\bus_data_in~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bus_data_in~32_combout\ = (\Equal2~0_combout\ & (\RegFile_inst|bus_reg_rt\(31) $ (((\RegFile_inst|bus_reg_rs\(31)))))) # (!\Equal2~0_combout\ & (((\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|bus_reg_rt\(31),
	datab => \Equal2~0_combout\,
	datac => \Add1~62_combout\,
	datad => \RegFile_inst|bus_reg_rs\(31),
	combout => \bus_data_in~32_combout\);

-- Location: FF_X69_Y31_N7
\bus_data_in[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_data_in~32_combout\,
	ena => \bus_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bus_data_in(31));

-- Location: LCCOMB_X69_Y31_N22
\RegFile_inst|registers~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers~34_combout\ = (!\clr~input_o\ & bus_data_in(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => bus_data_in(31),
	combout => \RegFile_inst|registers~34_combout\);

-- Location: LCCOMB_X74_Y33_N6
\RegFile_inst|registers[5][31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|registers[5][31]~feeder_combout\ = \RegFile_inst|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|registers~34_combout\,
	combout => \RegFile_inst|registers[5][31]~feeder_combout\);

-- Location: FF_X74_Y33_N7
\RegFile_inst|registers[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|registers[5][31]~feeder_combout\,
	ena => \RegFile_inst|registers[5][12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[5][31]~q\);

-- Location: LCCOMB_X71_Y32_N6
\RegFile_inst|Mux64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~0_combout\ = (rd_addr(1) & ((rd_addr(0)) # ((\RegFile_inst|registers[6][31]~q\)))) # (!rd_addr(1) & (!rd_addr(0) & (\RegFile_inst|registers[4][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(1),
	datab => rd_addr(0),
	datac => \RegFile_inst|registers[4][31]~q\,
	datad => \RegFile_inst|registers[6][31]~q\,
	combout => \RegFile_inst|Mux64~0_combout\);

-- Location: FF_X74_Y32_N15
\RegFile_inst|registers[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[7][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[7][31]~q\);

-- Location: LCCOMB_X74_Y32_N14
\RegFile_inst|Mux64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~1_combout\ = (\RegFile_inst|Mux64~0_combout\ & (((\RegFile_inst|registers[7][31]~q\) # (!rd_addr(0))))) # (!\RegFile_inst|Mux64~0_combout\ & (\RegFile_inst|registers[5][31]~q\ & ((rd_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[5][31]~q\,
	datab => \RegFile_inst|Mux64~0_combout\,
	datac => \RegFile_inst|registers[7][31]~q\,
	datad => rd_addr(0),
	combout => \RegFile_inst|Mux64~1_combout\);

-- Location: FF_X71_Y33_N11
\RegFile_inst|registers[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegFile_inst|registers~34_combout\,
	sload => VCC,
	ena => \RegFile_inst|registers[3][8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|registers[3][31]~q\);

-- Location: LCCOMB_X72_Y30_N12
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

-- Location: LCCOMB_X75_Y30_N24
\RegFile_inst|Mux64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~3_combout\ = (rd_addr(1) & ((\RegFile_inst|Mux64~2_combout\ & (\RegFile_inst|registers[3][31]~q\)) # (!\RegFile_inst|Mux64~2_combout\ & ((\RegFile_inst|registers[2][31]~q\))))) # (!rd_addr(1) & (((\RegFile_inst|Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile_inst|registers[3][31]~q\,
	datab => rd_addr(1),
	datac => \RegFile_inst|registers[2][31]~q\,
	datad => \RegFile_inst|Mux64~2_combout\,
	combout => \RegFile_inst|Mux64~3_combout\);

-- Location: LCCOMB_X75_Y30_N26
\RegFile_inst|Mux64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegFile_inst|Mux64~4_combout\ = (rd_addr(2) & (\RegFile_inst|Mux64~1_combout\)) # (!rd_addr(2) & ((\RegFile_inst|Mux64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_addr(2),
	datac => \RegFile_inst|Mux64~1_combout\,
	datad => \RegFile_inst|Mux64~3_combout\,
	combout => \RegFile_inst|Mux64~4_combout\);

-- Location: FF_X75_Y30_N27
\RegFile_inst|bus_reg_rd[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegFile_inst|Mux64~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile_inst|bus_reg_rd\(31));

-- Location: LCCOMB_X77_Y35_N0
\output[31]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[31]~reg0feeder_combout\ = \RegFile_inst|bus_reg_rd\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegFile_inst|bus_reg_rd\(31),
	combout => \output[31]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N1
\output[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output[31]~reg0feeder_combout\,
	ena => \output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[31]~reg0_q\);

-- Location: LCCOMB_X75_Y33_N6
\immediate[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[17]~feeder_combout\ = \func~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~0_combout\,
	combout => \immediate[17]~feeder_combout\);

-- Location: FF_X75_Y33_N7
\immediate[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \immediate[17]~feeder_combout\,
	ena => \immediate[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(17));

-- Location: LCCOMB_X75_Y33_N24
\immediate[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[18]~feeder_combout\ = \rs_addr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_addr~0_combout\,
	combout => \immediate[18]~feeder_combout\);

-- Location: FF_X75_Y33_N25
\immediate[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \immediate[18]~feeder_combout\,
	ena => \immediate[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(18));

-- Location: LCCOMB_X75_Y33_N30
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

-- Location: FF_X75_Y33_N31
\immediate[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \immediate[27]~feeder_combout\,
	ena => \immediate[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(27));

-- Location: LCCOMB_X75_Y33_N16
\immediate[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immediate[28]~feeder_combout\ = \func~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \func~0_combout\,
	combout => \immediate[28]~feeder_combout\);

-- Location: FF_X75_Y33_N17
\immediate[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \immediate[28]~feeder_combout\,
	ena => \immediate[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => immediate(28));

-- Location: LCCOMB_X72_Y35_N20
\Memory_inst|memory~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~45_combout\ = (!AR(9) & (!AR(0) & (\Memory_inst|memory~44_combout\ & \Memory_inst|memory~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AR(9),
	datab => AR(0),
	datac => \Memory_inst|memory~44_combout\,
	datad => \Memory_inst|memory~43_combout\,
	combout => \Memory_inst|memory~45_combout\);

-- Location: LCCOMB_X72_Y35_N0
\Memory_inst|memory~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memory_inst|memory~47_combout\ = (!AR(9) & (AR(0) & (\Memory_inst|memory~44_combout\ & \Memory_inst|memory~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AR(9),
	datab => AR(0),
	datac => \Memory_inst|memory~44_combout\,
	datad => \Memory_inst|memory~43_combout\,
	combout => \Memory_inst|memory~47_combout\);

-- Location: IOIBUF_X24_Y0_N8
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

-- Location: IOIBUF_X0_Y36_N22
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

-- Location: IOIBUF_X38_Y0_N1
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

-- Location: IOIBUF_X26_Y0_N29
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

-- Location: IOIBUF_X40_Y0_N29
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

-- Location: IOIBUF_X0_Y26_N15
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

-- Location: IOIBUF_X26_Y0_N22
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

-- Location: IOIBUF_X0_Y30_N15
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

-- Location: IOIBUF_X0_Y25_N22
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

-- Location: IOIBUF_X56_Y0_N22
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

-- Location: IOIBUF_X24_Y0_N1
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

-- Location: IOIBUF_X0_Y34_N8
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

-- Location: IOIBUF_X36_Y0_N1
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

-- Location: IOIBUF_X34_Y0_N22
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

-- Location: IOIBUF_X24_Y39_N22
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

-- Location: IOIBUF_X54_Y0_N22
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

-- Location: IOIBUF_X0_Y25_N8
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

-- Location: IOIBUF_X20_Y0_N22
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

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: IOIBUF_X0_Y16_N15
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

-- Location: IOIBUF_X0_Y25_N15
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

-- Location: IOIBUF_X46_Y0_N1
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

-- Location: IOIBUF_X31_Y0_N1
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

-- Location: IOIBUF_X31_Y0_N8
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

-- Location: IOIBUF_X0_Y23_N22
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

-- Location: IOIBUF_X51_Y0_N29
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

-- Location: IOIBUF_X0_Y9_N15
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

-- Location: IOIBUF_X0_Y16_N1
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

-- Location: IOIBUF_X22_Y0_N15
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

-- Location: IOIBUF_X31_Y0_N29
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

-- Location: IOIBUF_X29_Y0_N15
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

-- Location: IOIBUF_X26_Y0_N1
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


