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
-- Generated on "11/21/2019 20:29:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProjetoCPU2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProjetoCPU2_vhd_vec_tst IS
END ProjetoCPU2_vhd_vec_tst;
ARCHITECTURE ProjetoCPU2_arch OF ProjetoCPU2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL din : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
COMPONENT ProjetoCPU2
	PORT (
	addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	clk : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC;
	rw : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ProjetoCPU2
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	din => din,
	dout => dout,
	reset => reset,
	rw => rw
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- din[15]
t_prcs_din_15: PROCESS
BEGIN
LOOP
	din(15) <= '0';
	WAIT FOR 10000 ps;
	din(15) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_15;
-- din[14]
t_prcs_din_14: PROCESS
BEGIN
	din(14) <= '0';
WAIT;
END PROCESS t_prcs_din_14;
-- din[13]
t_prcs_din_13: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		din(13) <= '0';
		WAIT FOR 30000 ps;
		din(13) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	din(13) <= '0';
	WAIT FOR 30000 ps;
	din(13) <= '1';
WAIT;
END PROCESS t_prcs_din_13;
-- din[12]
t_prcs_din_12: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		din(12) <= '0';
		WAIT FOR 40000 ps;
		din(12) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	din(12) <= '0';
WAIT;
END PROCESS t_prcs_din_12;
-- din[11]
t_prcs_din_11: PROCESS
BEGIN
LOOP
	din(11) <= '0';
	WAIT FOR 50000 ps;
	din(11) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_11;
-- din[10]
t_prcs_din_10: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		din(10) <= '0';
		WAIT FOR 60000 ps;
		din(10) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	din(10) <= '0';
WAIT;
END PROCESS t_prcs_din_10;
-- din[9]
t_prcs_din_9: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		din(9) <= '0';
		WAIT FOR 70000 ps;
		din(9) <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	din(9) <= '0';
WAIT;
END PROCESS t_prcs_din_9;
-- din[8]
t_prcs_din_8: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		din(8) <= '0';
		WAIT FOR 80000 ps;
		din(8) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	din(8) <= '0';
WAIT;
END PROCESS t_prcs_din_8;
-- din[7]
t_prcs_din_7: PROCESS
BEGIN
LOOP
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_7;
-- din[6]
t_prcs_din_6: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		din(6) <= '0';
		WAIT FOR 30000 ps;
		din(6) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	din(6) <= '0';
	WAIT FOR 30000 ps;
	din(6) <= '1';
WAIT;
END PROCESS t_prcs_din_6;
-- din[5]
t_prcs_din_5: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		din(5) <= '0';
		WAIT FOR 40000 ps;
		din(5) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	din(5) <= '0';
WAIT;
END PROCESS t_prcs_din_5;
-- din[4]
t_prcs_din_4: PROCESS
BEGIN
LOOP
	din(4) <= '0';
	WAIT FOR 50000 ps;
	din(4) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_4;
-- din[3]
t_prcs_din_3: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		din(3) <= '0';
		WAIT FOR 60000 ps;
		din(3) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	din(3) <= '0';
WAIT;
END PROCESS t_prcs_din_3;
-- din[2]
t_prcs_din_2: PROCESS
BEGIN
LOOP
	din(2) <= '0';
	WAIT FOR 10000 ps;
	din(2) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_2;
-- din[1]
t_prcs_din_1: PROCESS
BEGIN
LOOP
	din(1) <= '0';
	WAIT FOR 5000 ps;
	din(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_1;
-- din[0]
t_prcs_din_0: PROCESS
BEGIN
LOOP
	din(0) <= '0';
	WAIT FOR 25000 ps;
	din(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_din_0;
END ProjetoCPU2_arch;
