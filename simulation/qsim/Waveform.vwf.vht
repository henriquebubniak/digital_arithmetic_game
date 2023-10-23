-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/22/2023 09:56:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projetofinal
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projetofinal_vhd_vec_tst IS
END projetofinal_vhd_vec_tst;
ARCHITECTURE projetofinal_arch OF projetofinal_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acerto : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL correto : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entrada : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL operador1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL operando1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operando2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pb0 : STD_LOGIC;
SIGNAL pontos : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT projetofinal
	PORT (
	acerto : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	correto : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	entrada : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	operador1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	operando1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	operando2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pb0 : IN STD_LOGIC;
	pontos : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : projetofinal
	PORT MAP (
-- list connections between master ports and signals
	acerto => acerto,
	clk => clk,
	correto => correto,
	entrada => entrada,
	operador1 => operador1,
	operando1 => operando1,
	operando2 => operando2,
	pb0 => pb0,
	pontos => pontos
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '0';
	WAIT FOR 160000 ps;
	entrada(1) <= '1';
	WAIT FOR 20000 ps;
	entrada(1) <= '0';
	WAIT FOR 110000 ps;
	entrada(1) <= '1';
	WAIT FOR 60000 ps;
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	entrada(0) <= '0';
	WAIT FOR 290000 ps;
	entrada(0) <= '1';
	WAIT FOR 60000 ps;
	entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_0;

-- pb0
t_prcs_pb0: PROCESS
BEGIN
	pb0 <= '0';
	WAIT FOR 80000 ps;
	pb0 <= '1';
	WAIT FOR 20000 ps;
	pb0 <= '0';
	WAIT FOR 60000 ps;
	pb0 <= '1';
	WAIT FOR 10000 ps;
	pb0 <= '0';
	WAIT FOR 60000 ps;
	pb0 <= '1';
	WAIT FOR 20000 ps;
	pb0 <= '0';
	WAIT FOR 60000 ps;
	pb0 <= '1';
	WAIT FOR 20000 ps;
	pb0 <= '0';
	WAIT FOR 180000 ps;
	pb0 <= '1';
	WAIT FOR 40000 ps;
	pb0 <= '0';
WAIT;
END PROCESS t_prcs_pb0;
END projetofinal_arch;
