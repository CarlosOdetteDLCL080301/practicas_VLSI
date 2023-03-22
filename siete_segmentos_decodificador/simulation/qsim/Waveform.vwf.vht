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
-- Generated on "02/24/2023 17:18:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          siete_segmentos_decodificador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY siete_segmentos_decodificador_vhd_vec_tst IS
END siete_segmentos_decodificador_vhd_vec_tst;
ARCHITECTURE siete_segmentos_decodificador_arch OF siete_segmentos_decodificador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Hex : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT siete_segmentos_decodificador
	PORT (
	BCD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : siete_segmentos_decodificador
	PORT MAP (
-- list connections between master ports and signals
	BCD => BCD,
	Hex => Hex
	);
-- BCD[3]
t_prcs_BCD_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		BCD(3) <= '0';
		WAIT FOR 80000 ps;
		BCD(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	BCD(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_3;
-- BCD[2]
t_prcs_BCD_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		BCD(2) <= '0';
		WAIT FOR 40000 ps;
		BCD(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	BCD(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_2;
-- BCD[1]
t_prcs_BCD_1: PROCESS
BEGIN
LOOP
	BCD(1) <= '0';
	WAIT FOR 20000 ps;
	BCD(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCD_1;
-- BCD[0]
t_prcs_BCD_0: PROCESS
BEGIN
LOOP
	BCD(0) <= '0';
	WAIT FOR 10000 ps;
	BCD(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCD_0;
END siete_segmentos_decodificador_arch;
