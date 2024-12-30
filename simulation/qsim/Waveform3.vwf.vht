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
-- Generated on "12/30/2024 11:44:15"
                                                             
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
SIGNAL debug_func : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL debug_immediate : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL debug_ir : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL debug_pc : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL debug_rd_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_rs_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_rt_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_shamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mini_mips
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	debug_func : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	debug_immediate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	debug_ir : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	debug_pc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	debug_rd_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_rs_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_rt_addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_shamt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mini_mips
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	debug_func => debug_func,
	debug_immediate => debug_immediate,
	debug_ir => debug_ir,
	debug_opcode => debug_opcode,
	debug_pc => debug_pc,
	debug_rd_addr => debug_rd_addr,
	debug_rs_addr => debug_rs_addr,
	debug_rt_addr => debug_rt_addr,
	debug_shamt => debug_shamt
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
END mini_mips_arch;
