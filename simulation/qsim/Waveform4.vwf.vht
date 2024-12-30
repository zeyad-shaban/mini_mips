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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/30/2024 21:06:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mini_mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mini_mips_vhd_vec_tst IS
END mini_mips_vhd_vec_tst;
ARCHITECTURE mini_mips_arch OF mini_mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL debug_ar : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_func : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL debug_immediate : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_ir : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_mem_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL debug_pc : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL debug_rd_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_rs_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_rt_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_shamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL input : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mini_mips
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	debug_ar : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_func : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	debug_immediate : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_ir : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_mem_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	debug_pc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	debug_rd_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_rs_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_rt_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_shamt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mini_mips
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	debug_ar => debug_ar,
	debug_func => debug_func,
	debug_immediate => debug_immediate,
	debug_ir => debug_ir,
	debug_mem_data_out => debug_mem_data_out,
	debug_opcode => debug_opcode,
	debug_pc => debug_pc,
	debug_rd_addr => debug_rd_addr,
	debug_rs_addr => debug_rs_addr,
	debug_rt_addr => debug_rt_addr,
	debug_shamt => debug_shamt,
	input => input,
	output => output
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- input[31]
t_prcs_input_31: PROCESS
BEGIN
	input(31) <= '0';
WAIT;
END PROCESS t_prcs_input_31;
-- input[30]
t_prcs_input_30: PROCESS
BEGIN
	input(30) <= '0';
WAIT;
END PROCESS t_prcs_input_30;
-- input[29]
t_prcs_input_29: PROCESS
BEGIN
	input(29) <= '0';
WAIT;
END PROCESS t_prcs_input_29;
-- input[28]
t_prcs_input_28: PROCESS
BEGIN
	input(28) <= '0';
WAIT;
END PROCESS t_prcs_input_28;
-- input[27]
t_prcs_input_27: PROCESS
BEGIN
	input(27) <= '0';
WAIT;
END PROCESS t_prcs_input_27;
-- input[26]
t_prcs_input_26: PROCESS
BEGIN
	input(26) <= '0';
WAIT;
END PROCESS t_prcs_input_26;
-- input[25]
t_prcs_input_25: PROCESS
BEGIN
	input(25) <= '0';
WAIT;
END PROCESS t_prcs_input_25;
-- input[24]
t_prcs_input_24: PROCESS
BEGIN
	input(24) <= '0';
WAIT;
END PROCESS t_prcs_input_24;
-- input[23]
t_prcs_input_23: PROCESS
BEGIN
	input(23) <= '0';
WAIT;
END PROCESS t_prcs_input_23;
-- input[22]
t_prcs_input_22: PROCESS
BEGIN
	input(22) <= '0';
WAIT;
END PROCESS t_prcs_input_22;
-- input[21]
t_prcs_input_21: PROCESS
BEGIN
	input(21) <= '0';
WAIT;
END PROCESS t_prcs_input_21;
-- input[20]
t_prcs_input_20: PROCESS
BEGIN
	input(20) <= '0';
WAIT;
END PROCESS t_prcs_input_20;
-- input[19]
t_prcs_input_19: PROCESS
BEGIN
	input(19) <= '0';
WAIT;
END PROCESS t_prcs_input_19;
-- input[18]
t_prcs_input_18: PROCESS
BEGIN
	input(18) <= '0';
WAIT;
END PROCESS t_prcs_input_18;
-- input[17]
t_prcs_input_17: PROCESS
BEGIN
	input(17) <= '0';
WAIT;
END PROCESS t_prcs_input_17;
-- input[16]
t_prcs_input_16: PROCESS
BEGIN
	input(16) <= '0';
WAIT;
END PROCESS t_prcs_input_16;
-- input[15]
t_prcs_input_15: PROCESS
BEGIN
	input(15) <= '0';
WAIT;
END PROCESS t_prcs_input_15;
-- input[14]
t_prcs_input_14: PROCESS
BEGIN
	input(14) <= '0';
WAIT;
END PROCESS t_prcs_input_14;
-- input[13]
t_prcs_input_13: PROCESS
BEGIN
	input(13) <= '0';
WAIT;
END PROCESS t_prcs_input_13;
-- input[12]
t_prcs_input_12: PROCESS
BEGIN
	input(12) <= '0';
WAIT;
END PROCESS t_prcs_input_12;
-- input[11]
t_prcs_input_11: PROCESS
BEGIN
	input(11) <= '0';
WAIT;
END PROCESS t_prcs_input_11;
-- input[10]
t_prcs_input_10: PROCESS
BEGIN
	input(10) <= '0';
WAIT;
END PROCESS t_prcs_input_10;
-- input[9]
t_prcs_input_9: PROCESS
BEGIN
	input(9) <= '0';
WAIT;
END PROCESS t_prcs_input_9;
-- input[8]
t_prcs_input_8: PROCESS
BEGIN
	input(8) <= '0';
WAIT;
END PROCESS t_prcs_input_8;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;
END mini_mips_arch;
