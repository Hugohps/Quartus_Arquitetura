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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/21/2019 22:43:39"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProjetoCPU2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	din : IN std_logic_vector(15 DOWNTO 0);
	rw : OUT std_logic;
	addr : OUT std_logic_vector(4 DOWNTO 0);
	dout : OUT std_logic_vector(15 DOWNTO 0)
	);
END ProjetoCPU2;

-- Design Ports Information
-- rw	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[11]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[12]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProjetoCPU2 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_din : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rw : std_logic;
SIGNAL ww_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \estado_atual.reset1~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_atual.reset1~DUPLICATE_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual~30_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \estado_atual.executa~q\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \estado_atual.sync_grav~q\ : std_logic;
SIGNAL \estado_atual~39_combout\ : std_logic;
SIGNAL \estado_atual~31_combout\ : std_logic;
SIGNAL \estado_atual.movae~DUPLICATE_q\ : std_logic;
SIGNAL \reg_inst2~2_combout\ : std_logic;
SIGNAL \estado_atual~38_combout\ : std_logic;
SIGNAL \estado_atual.resultado~q\ : std_logic;
SIGNAL \comp[0]~0_combout\ : std_logic;
SIGNAL \reg_inst2~3_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \estado_atual~29_combout\ : std_logic;
SIGNAL \regb[15]~feeder_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \estado_atual~42_combout\ : std_logic;
SIGNAL \estado_atual.movbd~q\ : std_logic;
SIGNAL \estado_atual~32_combout\ : std_logic;
SIGNAL \estado_atual.movbe~q\ : std_logic;
SIGNAL \regb[11]~0_combout\ : std_logic;
SIGNAL \estado_atual.reset1~q\ : std_logic;
SIGNAL \regb[0]~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \reg_ula~12_combout\ : std_logic;
SIGNAL \reg_ula~14_combout\ : std_logic;
SIGNAL \reg_ula~13_combout\ : std_logic;
SIGNAL \reg_ula~15_combout\ : std_logic;
SIGNAL \reg_ula~47_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \reg_inst2~0_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector61~1_combout\ : std_logic;
SIGNAL \regb[14]~feeder_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \regb[13]~feeder_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \regb[12]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \reg_ula~41_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \regb[11]~feeder_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \regb[10]~feeder_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \regb[9]~feeder_combout\ : std_logic;
SIGNAL \reg_ula~33_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \regb[8]~feeder_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \reg_ula~30_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \regb[7]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \reg_ula~11_combout\ : std_logic;
SIGNAL \reg_ula~9_combout\ : std_logic;
SIGNAL \reg_ula~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \pc[1]~0_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \estado_atual~34_combout\ : std_logic;
SIGNAL \estado_atual~33_combout\ : std_logic;
SIGNAL \estado_atual~36_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \estado_atual~35_combout\ : std_logic;
SIGNAL \estado_atual~37_combout\ : std_logic;
SIGNAL \estado_atual.jmp~q\ : std_logic;
SIGNAL \estado_atual.movex~q\ : std_logic;
SIGNAL \pc[1]~1_combout\ : std_logic;
SIGNAL \estado_atual.reset2~0_combout\ : std_logic;
SIGNAL \estado_atual.reset2~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \pc[0]~3_combout\ : std_logic;
SIGNAL \pc~2_combout\ : std_logic;
SIGNAL \pc[0]~4_combout\ : std_logic;
SIGNAL \pc[0]~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \regb[4]~feeder_combout\ : std_logic;
SIGNAL \regb[2]~feeder_combout\ : std_logic;
SIGNAL \regb[1]~feeder_combout\ : std_logic;
SIGNAL \reg_ula~4_combout\ : std_logic;
SIGNAL \reg_ula~6_combout\ : std_logic;
SIGNAL \regb[0]~feeder_combout\ : std_logic;
SIGNAL \reg_ula~2_combout\ : std_logic;
SIGNAL \reg_ula~48_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \reg_ula~3_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \reg_ula~1_combout\ : std_logic;
SIGNAL \reg_ula~49_combout\ : std_logic;
SIGNAL \reg_ula~5_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \reg_ula~7_combout\ : std_logic;
SIGNAL \reg_ula~8_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \estado_atual~41_combout\ : std_logic;
SIGNAL \estado_atual.movad~q\ : std_logic;
SIGNAL \rega[10]~0_combout\ : std_logic;
SIGNAL \rega[0]~1_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \reg_ula~10_combout\ : std_logic;
SIGNAL \reg_ula~16_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \reg_ula~74_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \reg_ula~17_combout\ : std_logic;
SIGNAL \reg_ula~18_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \reg_ula~70_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \reg_ula~21_combout\ : std_logic;
SIGNAL \reg_ula~22_combout\ : std_logic;
SIGNAL \regb[3]~feeder_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \reg_ula~62_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \regb[5]~feeder_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \reg_ula~23_combout\ : std_logic;
SIGNAL \reg_ula~24_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \reg_ula~58_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \regb[6]~feeder_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \reg_ula~25_combout\ : std_logic;
SIGNAL \reg_ula~26_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \reg_ula~54_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \reg_ula~27_combout\ : std_logic;
SIGNAL \reg_ula~28_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \reg_ula~50_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \reg_ula~31_combout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \reg_ula~29_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \reg_ula~34_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \reg_ula~32_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector67~2_combout\ : std_logic;
SIGNAL \estado_atual.movae~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \reg_ula~36_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \reg_ula~37_combout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \reg_ula~35_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Selector66~2_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \reg_ula~39_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \reg_ula~38_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \reg_ula~40_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \reg_ula~43_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \reg_ula~42_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Selector63~2_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \reg_ula~45_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \reg_ula~44_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Selector62~2_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \reg_ula~46_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Selector61~2_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \comp~3_combout\ : std_logic;
SIGNAL \comp[0]~2_combout\ : std_logic;
SIGNAL \reg_inst2~1_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \reg_ula~19_combout\ : std_logic;
SIGNAL \reg_ula~20_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \reg_ula~66_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \comp~1_combout\ : std_logic;
SIGNAL \estado_atual~40_combout\ : std_logic;
SIGNAL \Selector94~3_combout\ : std_logic;
SIGNAL \estado_atual.busca~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \estado_atual~28_combout\ : std_logic;
SIGNAL \rw~reg0_q\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL rega : std_logic_vector(15 DOWNTO 0);
SIGNAL regb : std_logic_vector(15 DOWNTO 0);
SIGNAL pc : std_logic_vector(4 DOWNTO 0);
SIGNAL sdout : std_logic_vector(15 DOWNTO 0);
SIGNAL reg_inst1 : std_logic_vector(15 DOWNTO 0);
SIGNAL reg_inst2 : std_logic_vector(15 DOWNTO 0);
SIGNAL comp : std_logic_vector(1 DOWNTO 0);
SIGNAL reg_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL ALT_INV_regb : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_rega : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_reg_inst1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reg_inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.resultado~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.sync_grav~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.reset1~q\ : std_logic;
SIGNAL ALT_INV_reg_inst2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_pc[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.jmp~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.movex~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.movbe~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.movae~q\ : std_logic;
SIGNAL \ALT_INV_pc[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.reset2~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.executa~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_sdout : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_pc : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reg_ula~74_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~70_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~66_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~62_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~58_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~54_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~50_combout\ : std_logic;
SIGNAL \ALT_INV_Selector62~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector61~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL ALT_INV_reg_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_estado_atual.movbd~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.movad~q\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg_inst2~3_combout\ : std_logic;
SIGNAL \ALT_INV_reg_inst2~2_combout\ : std_logic;
SIGNAL \ALT_INV_comp[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg_inst2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector94~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector94~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~36_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~35_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~34_combout\ : std_logic;
SIGNAL \ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~33_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~30_combout\ : std_logic;
SIGNAL \ALT_INV_Selector94~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.busca~q\ : std_logic;
SIGNAL \ALT_INV_Selector91~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector92~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_pc[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~29_combout\ : std_logic;
SIGNAL \ALT_INV_pc[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_pc~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal20~0_combout\ : std_logic;
SIGNAL ALT_INV_comp : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector66~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector67~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector67~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector68~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector68~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector61~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector62~1_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~49_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~48_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~47_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~46_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~45_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~44_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~43_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~42_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~41_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~40_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~39_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~38_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~37_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~36_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~35_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~34_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~33_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~32_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~31_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~30_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~29_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~28_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~27_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~26_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~25_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~24_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~23_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~22_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~21_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~20_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~19_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~18_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~17_combout\ : std_logic;
SIGNAL \ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~16_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~15_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~14_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~13_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~12_combout\ : std_logic;
SIGNAL \ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~11_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~10_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~9_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~8_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~6_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~5_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~4_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~3_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~2_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~1_combout\ : std_logic;
SIGNAL \ALT_INV_reg_ula~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~40_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual~39_combout\ : std_logic;
SIGNAL \ALT_INV_estado_atual.reset1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.movae~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_din[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector63~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector63~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector65~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector65~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector66~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_din <= din;
rw <= ww_rw;
addr <= ww_addr;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
ALT_INV_regb(15) <= NOT regb(15);
ALT_INV_rega(15) <= NOT rega(15);
ALT_INV_regb(14) <= NOT regb(14);
ALT_INV_rega(14) <= NOT rega(14);
ALT_INV_regb(13) <= NOT regb(13);
ALT_INV_rega(13) <= NOT rega(13);
ALT_INV_regb(12) <= NOT regb(12);
ALT_INV_rega(12) <= NOT rega(12);
ALT_INV_regb(11) <= NOT regb(11);
ALT_INV_rega(11) <= NOT rega(11);
ALT_INV_regb(10) <= NOT regb(10);
ALT_INV_rega(10) <= NOT rega(10);
ALT_INV_regb(9) <= NOT regb(9);
ALT_INV_rega(9) <= NOT rega(9);
ALT_INV_regb(8) <= NOT regb(8);
ALT_INV_rega(8) <= NOT rega(8);
ALT_INV_regb(7) <= NOT regb(7);
ALT_INV_rega(7) <= NOT rega(7);
ALT_INV_regb(6) <= NOT regb(6);
ALT_INV_rega(6) <= NOT rega(6);
ALT_INV_regb(5) <= NOT regb(5);
ALT_INV_rega(5) <= NOT rega(5);
ALT_INV_regb(4) <= NOT regb(4);
ALT_INV_rega(4) <= NOT rega(4);
ALT_INV_regb(3) <= NOT regb(3);
ALT_INV_rega(3) <= NOT rega(3);
ALT_INV_regb(2) <= NOT regb(2);
ALT_INV_rega(2) <= NOT rega(2);
ALT_INV_regb(1) <= NOT regb(1);
ALT_INV_rega(1) <= NOT rega(1);
ALT_INV_regb(0) <= NOT regb(0);
ALT_INV_rega(0) <= NOT rega(0);
ALT_INV_reg_inst1(11) <= NOT reg_inst1(11);
ALT_INV_reg_inst1(12) <= NOT reg_inst1(12);
ALT_INV_reg_inst1(13) <= NOT reg_inst1(13);
\ALT_INV_reg_inst2~0_combout\ <= NOT \reg_inst2~0_combout\;
\ALT_INV_estado_atual.resultado~q\ <= NOT \estado_atual.resultado~q\;
\ALT_INV_estado_atual.sync_grav~q\ <= NOT \estado_atual.sync_grav~q\;
\ALT_INV_estado_atual.reset1~q\ <= NOT \estado_atual.reset1~q\;
ALT_INV_reg_inst2(0) <= NOT reg_inst2(0);
\ALT_INV_pc[1]~1_combout\ <= NOT \pc[1]~1_combout\;
\ALT_INV_estado_atual.jmp~q\ <= NOT \estado_atual.jmp~q\;
\ALT_INV_estado_atual.movex~q\ <= NOT \estado_atual.movex~q\;
\ALT_INV_estado_atual.movbe~q\ <= NOT \estado_atual.movbe~q\;
\ALT_INV_estado_atual.movae~q\ <= NOT \estado_atual.movae~q\;
\ALT_INV_pc[1]~0_combout\ <= NOT \pc[1]~0_combout\;
\ALT_INV_estado_atual.reset2~q\ <= NOT \estado_atual.reset2~q\;
\ALT_INV_estado_atual.executa~q\ <= NOT \estado_atual.executa~q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_reg_inst1(3) <= NOT reg_inst1(3);
ALT_INV_reg_inst1(4) <= NOT reg_inst1(4);
ALT_INV_reg_inst1(5) <= NOT reg_inst1(5);
ALT_INV_reg_inst1(6) <= NOT reg_inst1(6);
ALT_INV_reg_inst1(7) <= NOT reg_inst1(7);
ALT_INV_reg_inst1(0) <= NOT reg_inst1(0);
ALT_INV_reg_inst1(2) <= NOT reg_inst1(2);
ALT_INV_reg_inst1(1) <= NOT reg_inst1(1);
ALT_INV_sdout(15) <= NOT sdout(15);
ALT_INV_sdout(14) <= NOT sdout(14);
ALT_INV_sdout(13) <= NOT sdout(13);
ALT_INV_sdout(12) <= NOT sdout(12);
ALT_INV_sdout(11) <= NOT sdout(11);
ALT_INV_sdout(10) <= NOT sdout(10);
ALT_INV_sdout(9) <= NOT sdout(9);
ALT_INV_sdout(8) <= NOT sdout(8);
ALT_INV_sdout(7) <= NOT sdout(7);
ALT_INV_sdout(6) <= NOT sdout(6);
ALT_INV_sdout(5) <= NOT sdout(5);
ALT_INV_sdout(4) <= NOT sdout(4);
ALT_INV_sdout(3) <= NOT sdout(3);
ALT_INV_sdout(2) <= NOT sdout(2);
ALT_INV_sdout(1) <= NOT sdout(1);
ALT_INV_sdout(0) <= NOT sdout(0);
ALT_INV_pc(4) <= NOT pc(4);
ALT_INV_pc(3) <= NOT pc(3);
ALT_INV_pc(2) <= NOT pc(2);
ALT_INV_pc(1) <= NOT pc(1);
ALT_INV_pc(0) <= NOT pc(0);
\ALT_INV_reg_ula~74_combout\ <= NOT \reg_ula~74_combout\;
\ALT_INV_reg_ula~70_combout\ <= NOT \reg_ula~70_combout\;
\ALT_INV_reg_ula~66_combout\ <= NOT \reg_ula~66_combout\;
\ALT_INV_reg_ula~62_combout\ <= NOT \reg_ula~62_combout\;
\ALT_INV_reg_ula~58_combout\ <= NOT \reg_ula~58_combout\;
\ALT_INV_reg_ula~54_combout\ <= NOT \reg_ula~54_combout\;
\ALT_INV_reg_ula~50_combout\ <= NOT \reg_ula~50_combout\;
\ALT_INV_Selector62~2_combout\ <= NOT \Selector62~2_combout\;
\ALT_INV_Selector61~2_combout\ <= NOT \Selector61~2_combout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add4~61_sumout\ <= NOT \Add4~61_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add4~57_sumout\ <= NOT \Add4~57_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add4~53_sumout\ <= NOT \Add4~53_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add4~49_sumout\ <= NOT \Add4~49_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add4~45_sumout\ <= NOT \Add4~45_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
ALT_INV_reg_ula(1) <= NOT reg_ula(1);
\ALT_INV_estado_atual.movbd~q\ <= NOT \estado_atual.movbd~q\;
\ALT_INV_estado_atual.movad~q\ <= NOT \estado_atual.movad~q\;
ALT_INV_reg_ula(0) <= NOT reg_ula(0);
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\ALT_INV_Selector28~0_combout\ <= NOT \Selector28~0_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_reg_inst2~3_combout\ <= NOT \reg_inst2~3_combout\;
\ALT_INV_reg_inst2~2_combout\ <= NOT \reg_inst2~2_combout\;
\ALT_INV_comp[0]~0_combout\ <= NOT \comp[0]~0_combout\;
\ALT_INV_reg_inst2~1_combout\ <= NOT \reg_inst2~1_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Selector94~2_combout\ <= NOT \Selector94~2_combout\;
\ALT_INV_Selector94~1_combout\ <= NOT \Selector94~1_combout\;
\ALT_INV_estado_atual~36_combout\ <= NOT \estado_atual~36_combout\;
\ALT_INV_estado_atual~35_combout\ <= NOT \estado_atual~35_combout\;
\ALT_INV_estado_atual~34_combout\ <= NOT \estado_atual~34_combout\;
\ALT_INV_Equal14~0_combout\ <= NOT \Equal14~0_combout\;
\ALT_INV_estado_atual~33_combout\ <= NOT \estado_atual~33_combout\;
\ALT_INV_estado_atual~30_combout\ <= NOT \estado_atual~30_combout\;
\ALT_INV_Selector94~0_combout\ <= NOT \Selector94~0_combout\;
\ALT_INV_estado_atual.busca~q\ <= NOT \estado_atual.busca~q\;
\ALT_INV_Selector91~0_combout\ <= NOT \Selector91~0_combout\;
\ALT_INV_Selector92~0_combout\ <= NOT \Selector92~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Add0~3_combout\ <= NOT \Add0~3_combout\;
ALT_INV_reg_inst2(4) <= NOT reg_inst2(4);
\ALT_INV_Add0~2_combout\ <= NOT \Add0~2_combout\;
ALT_INV_reg_inst2(3) <= NOT reg_inst2(3);
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
ALT_INV_reg_inst2(2) <= NOT reg_inst2(2);
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
ALT_INV_reg_inst2(1) <= NOT reg_inst2(1);
\ALT_INV_pc[0]~4_combout\ <= NOT \pc[0]~4_combout\;
\ALT_INV_estado_atual~29_combout\ <= NOT \estado_atual~29_combout\;
\ALT_INV_pc[0]~3_combout\ <= NOT \pc[0]~3_combout\;
\ALT_INV_pc~2_combout\ <= NOT \pc~2_combout\;
\ALT_INV_Equal20~0_combout\ <= NOT \Equal20~0_combout\;
ALT_INV_comp(0) <= NOT comp(0);
ALT_INV_comp(1) <= NOT comp(1);
\ALT_INV_Equal19~0_combout\ <= NOT \Equal19~0_combout\;
\ALT_INV_Equal21~0_combout\ <= NOT \Equal21~0_combout\;
\ALT_INV_Equal18~0_combout\ <= NOT \Equal18~0_combout\;
ALT_INV_reg_inst1(14) <= NOT reg_inst1(14);
ALT_INV_reg_inst1(15) <= NOT reg_inst1(15);
\ALT_INV_Selector66~0_combout\ <= NOT \Selector66~0_combout\;
\ALT_INV_Selector67~1_combout\ <= NOT \Selector67~1_combout\;
\ALT_INV_Selector67~0_combout\ <= NOT \Selector67~0_combout\;
\ALT_INV_Selector68~1_combout\ <= NOT \Selector68~1_combout\;
\ALT_INV_Selector68~0_combout\ <= NOT \Selector68~0_combout\;
\ALT_INV_Selector61~1_combout\ <= NOT \Selector61~1_combout\;
\ALT_INV_Selector62~1_combout\ <= NOT \Selector62~1_combout\;
\ALT_INV_reg_ula~49_combout\ <= NOT \reg_ula~49_combout\;
\ALT_INV_reg_ula~48_combout\ <= NOT \reg_ula~48_combout\;
\ALT_INV_reg_ula~47_combout\ <= NOT \reg_ula~47_combout\;
\ALT_INV_reg_ula~46_combout\ <= NOT \reg_ula~46_combout\;
\ALT_INV_reg_ula~45_combout\ <= NOT \reg_ula~45_combout\;
\ALT_INV_reg_ula~44_combout\ <= NOT \reg_ula~44_combout\;
\ALT_INV_reg_ula~43_combout\ <= NOT \reg_ula~43_combout\;
\ALT_INV_reg_ula~42_combout\ <= NOT \reg_ula~42_combout\;
\ALT_INV_reg_ula~41_combout\ <= NOT \reg_ula~41_combout\;
\ALT_INV_reg_ula~40_combout\ <= NOT \reg_ula~40_combout\;
\ALT_INV_reg_ula~39_combout\ <= NOT \reg_ula~39_combout\;
\ALT_INV_reg_ula~38_combout\ <= NOT \reg_ula~38_combout\;
\ALT_INV_reg_ula~37_combout\ <= NOT \reg_ula~37_combout\;
\ALT_INV_reg_ula~36_combout\ <= NOT \reg_ula~36_combout\;
\ALT_INV_reg_ula~35_combout\ <= NOT \reg_ula~35_combout\;
\ALT_INV_reg_ula~34_combout\ <= NOT \reg_ula~34_combout\;
\ALT_INV_reg_ula~33_combout\ <= NOT \reg_ula~33_combout\;
\ALT_INV_reg_ula~32_combout\ <= NOT \reg_ula~32_combout\;
\ALT_INV_reg_ula~31_combout\ <= NOT \reg_ula~31_combout\;
\ALT_INV_reg_ula~30_combout\ <= NOT \reg_ula~30_combout\;
\ALT_INV_reg_ula~29_combout\ <= NOT \reg_ula~29_combout\;
\ALT_INV_reg_ula~28_combout\ <= NOT \reg_ula~28_combout\;
\ALT_INV_reg_ula~27_combout\ <= NOT \reg_ula~27_combout\;
\ALT_INV_reg_ula~26_combout\ <= NOT \reg_ula~26_combout\;
\ALT_INV_reg_ula~25_combout\ <= NOT \reg_ula~25_combout\;
\ALT_INV_reg_ula~24_combout\ <= NOT \reg_ula~24_combout\;
\ALT_INV_reg_ula~23_combout\ <= NOT \reg_ula~23_combout\;
\ALT_INV_reg_ula~22_combout\ <= NOT \reg_ula~22_combout\;
\ALT_INV_reg_ula~21_combout\ <= NOT \reg_ula~21_combout\;
\ALT_INV_reg_ula~20_combout\ <= NOT \reg_ula~20_combout\;
\ALT_INV_reg_ula~19_combout\ <= NOT \reg_ula~19_combout\;
\ALT_INV_reg_ula~18_combout\ <= NOT \reg_ula~18_combout\;
\ALT_INV_reg_ula~17_combout\ <= NOT \reg_ula~17_combout\;
\ALT_INV_Selector74~0_combout\ <= NOT \Selector74~0_combout\;
\ALT_INV_reg_ula~16_combout\ <= NOT \reg_ula~16_combout\;
\ALT_INV_reg_ula~15_combout\ <= NOT \reg_ula~15_combout\;
\ALT_INV_reg_ula~14_combout\ <= NOT \reg_ula~14_combout\;
\ALT_INV_reg_ula~13_combout\ <= NOT \reg_ula~13_combout\;
\ALT_INV_reg_ula~12_combout\ <= NOT \reg_ula~12_combout\;
\ALT_INV_Selector75~0_combout\ <= NOT \Selector75~0_combout\;
\ALT_INV_reg_ula~11_combout\ <= NOT \reg_ula~11_combout\;
\ALT_INV_reg_ula~10_combout\ <= NOT \reg_ula~10_combout\;
\ALT_INV_reg_ula~9_combout\ <= NOT \reg_ula~9_combout\;
\ALT_INV_reg_ula~8_combout\ <= NOT \reg_ula~8_combout\;
\ALT_INV_reg_ula~7_combout\ <= NOT \reg_ula~7_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_reg_ula~6_combout\ <= NOT \reg_ula~6_combout\;
\ALT_INV_reg_ula~5_combout\ <= NOT \reg_ula~5_combout\;
\ALT_INV_reg_ula~4_combout\ <= NOT \reg_ula~4_combout\;
\ALT_INV_reg_ula~3_combout\ <= NOT \reg_ula~3_combout\;
\ALT_INV_reg_ula~2_combout\ <= NOT \reg_ula~2_combout\;
\ALT_INV_reg_ula~1_combout\ <= NOT \reg_ula~1_combout\;
\ALT_INV_reg_ula~0_combout\ <= NOT \reg_ula~0_combout\;
\ALT_INV_Equal15~0_combout\ <= NOT \Equal15~0_combout\;
\ALT_INV_estado_atual~40_combout\ <= NOT \estado_atual~40_combout\;
\ALT_INV_estado_atual~39_combout\ <= NOT \estado_atual~39_combout\;
ALT_INV_reg_inst2(15) <= NOT reg_inst2(15);
ALT_INV_reg_ula(15) <= NOT reg_ula(15);
ALT_INV_reg_inst2(14) <= NOT reg_inst2(14);
ALT_INV_reg_ula(14) <= NOT reg_ula(14);
ALT_INV_reg_inst2(13) <= NOT reg_inst2(13);
ALT_INV_reg_ula(13) <= NOT reg_ula(13);
ALT_INV_reg_inst2(12) <= NOT reg_inst2(12);
ALT_INV_reg_ula(12) <= NOT reg_ula(12);
ALT_INV_reg_inst2(11) <= NOT reg_inst2(11);
ALT_INV_reg_ula(11) <= NOT reg_ula(11);
ALT_INV_reg_inst2(10) <= NOT reg_inst2(10);
ALT_INV_reg_ula(10) <= NOT reg_ula(10);
ALT_INV_reg_inst2(9) <= NOT reg_inst2(9);
ALT_INV_reg_ula(9) <= NOT reg_ula(9);
ALT_INV_reg_inst2(8) <= NOT reg_inst2(8);
ALT_INV_reg_ula(8) <= NOT reg_ula(8);
ALT_INV_reg_inst2(7) <= NOT reg_inst2(7);
ALT_INV_reg_ula(7) <= NOT reg_ula(7);
ALT_INV_reg_inst2(6) <= NOT reg_inst2(6);
ALT_INV_reg_ula(6) <= NOT reg_ula(6);
ALT_INV_reg_inst2(5) <= NOT reg_inst2(5);
ALT_INV_reg_ula(5) <= NOT reg_ula(5);
ALT_INV_reg_ula(4) <= NOT reg_ula(4);
ALT_INV_reg_ula(3) <= NOT reg_ula(3);
ALT_INV_reg_ula(2) <= NOT reg_ula(2);
\ALT_INV_estado_atual.reset1~DUPLICATE_q\ <= NOT \estado_atual.reset1~DUPLICATE_q\;
\ALT_INV_estado_atual.movae~DUPLICATE_q\ <= NOT \estado_atual.movae~DUPLICATE_q\;
\ALT_INV_din[10]~input_o\ <= NOT \din[10]~input_o\;
\ALT_INV_din[9]~input_o\ <= NOT \din[9]~input_o\;
\ALT_INV_din[8]~input_o\ <= NOT \din[8]~input_o\;
\ALT_INV_din[14]~input_o\ <= NOT \din[14]~input_o\;
\ALT_INV_din[15]~input_o\ <= NOT \din[15]~input_o\;
\ALT_INV_din[11]~input_o\ <= NOT \din[11]~input_o\;
\ALT_INV_din[12]~input_o\ <= NOT \din[12]~input_o\;
\ALT_INV_din[13]~input_o\ <= NOT \din[13]~input_o\;
\ALT_INV_din[5]~input_o\ <= NOT \din[5]~input_o\;
\ALT_INV_din[6]~input_o\ <= NOT \din[6]~input_o\;
\ALT_INV_din[7]~input_o\ <= NOT \din[7]~input_o\;
\ALT_INV_din[4]~input_o\ <= NOT \din[4]~input_o\;
\ALT_INV_din[3]~input_o\ <= NOT \din[3]~input_o\;
\ALT_INV_din[2]~input_o\ <= NOT \din[2]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_din[0]~input_o\ <= NOT \din[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Selector63~1_combout\ <= NOT \Selector63~1_combout\;
\ALT_INV_Selector63~0_combout\ <= NOT \Selector63~0_combout\;
\ALT_INV_Selector64~1_combout\ <= NOT \Selector64~1_combout\;
\ALT_INV_Selector64~0_combout\ <= NOT \Selector64~0_combout\;
\ALT_INV_Selector65~1_combout\ <= NOT \Selector65~1_combout\;
\ALT_INV_Selector65~0_combout\ <= NOT \Selector65~0_combout\;
\ALT_INV_Selector66~1_combout\ <= NOT \Selector66~1_combout\;

-- Location: IOOBUF_X46_Y0_N53
\rw~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rw~reg0_q\,
	devoe => ww_devoe,
	o => ww_rw);

-- Location: IOOBUF_X51_Y0_N36
\addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc(0),
	devoe => ww_devoe,
	o => ww_addr(0));

-- Location: IOOBUF_X44_Y0_N36
\addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc(1),
	devoe => ww_devoe,
	o => ww_addr(1));

-- Location: IOOBUF_X44_Y0_N53
\addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc(2),
	devoe => ww_devoe,
	o => ww_addr(2));

-- Location: IOOBUF_X44_Y0_N2
\addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc(3),
	devoe => ww_devoe,
	o => ww_addr(3));

-- Location: IOOBUF_X44_Y0_N19
\addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc(4),
	devoe => ww_devoe,
	o => ww_addr(4));

-- Location: IOOBUF_X68_Y10_N45
\dout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(0),
	devoe => ww_devoe,
	o => ww_dout(0));

-- Location: IOOBUF_X55_Y0_N76
\dout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(1),
	devoe => ww_devoe,
	o => ww_dout(1));

-- Location: IOOBUF_X32_Y0_N93
\dout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(2),
	devoe => ww_devoe,
	o => ww_dout(2));

-- Location: IOOBUF_X32_Y0_N59
\dout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(3),
	devoe => ww_devoe,
	o => ww_dout(3));

-- Location: IOOBUF_X36_Y0_N19
\dout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(4),
	devoe => ww_devoe,
	o => ww_dout(4));

-- Location: IOOBUF_X34_Y0_N53
\dout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(5),
	devoe => ww_devoe,
	o => ww_dout(5));

-- Location: IOOBUF_X34_Y0_N2
\dout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(6),
	devoe => ww_devoe,
	o => ww_dout(6));

-- Location: IOOBUF_X46_Y0_N2
\dout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(7),
	devoe => ww_devoe,
	o => ww_dout(7));

-- Location: IOOBUF_X61_Y0_N53
\dout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(8),
	devoe => ww_devoe,
	o => ww_dout(8));

-- Location: IOOBUF_X48_Y0_N76
\dout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(9),
	devoe => ww_devoe,
	o => ww_dout(9));

-- Location: IOOBUF_X34_Y0_N19
\dout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(10),
	devoe => ww_devoe,
	o => ww_dout(10));

-- Location: IOOBUF_X21_Y0_N36
\dout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(11),
	devoe => ww_devoe,
	o => ww_dout(11));

-- Location: IOOBUF_X32_Y0_N76
\dout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(12),
	devoe => ww_devoe,
	o => ww_dout(12));

-- Location: IOOBUF_X34_Y61_N36
\dout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(13),
	devoe => ww_devoe,
	o => ww_dout(13));

-- Location: IOOBUF_X36_Y0_N53
\dout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(14),
	devoe => ww_devoe,
	o => ww_dout(14));

-- Location: IOOBUF_X32_Y0_N42
\dout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sdout(15),
	devoe => ww_devoe,
	o => ww_dout(15));

-- Location: IOIBUF_X21_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N58
\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: LABCELL_X41_Y2_N36
\estado_atual.reset1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual.reset1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \estado_atual.reset1~feeder_combout\);

-- Location: IOIBUF_X40_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X41_Y2_N37
\estado_atual.reset1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.reset1~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.reset1~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N18
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & (reg_inst1(14))) # (\estado_atual.busca~q\ & ((\din[14]~input_o\))) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datac => \ALT_INV_estado_atual.busca~q\,
	datad => \ALT_INV_din[14]~input_o\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y4_N20
\reg_inst1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(14));

-- Location: IOIBUF_X42_Y0_N52
\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: LABCELL_X40_Y4_N9
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & (reg_inst1(12))) # (\estado_atual.busca~q\ & ((\din[12]~input_o\))) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\din[12]~input_o\ & \estado_atual.busca~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(12),
	datac => \ALT_INV_din[12]~input_o\,
	datad => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X40_Y4_N11
\reg_inst1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(12));

-- Location: IOIBUF_X42_Y0_N1
\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: LABCELL_X41_Y4_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & (reg_inst1(13))) # (\estado_atual.busca~q\ & ((\din[13]~input_o\))) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\din[13]~input_o\ & \estado_atual.busca~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(13),
	datac => \ALT_INV_din[13]~input_o\,
	datad => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X40_Y4_N38
\reg_inst1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector2~0_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(13));

-- Location: IOIBUF_X38_Y0_N52
\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: LABCELL_X40_Y4_N45
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & (reg_inst1(11))) # (\estado_atual.busca~q\ & ((\din[11]~input_o\))) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\din[11]~input_o\ & \estado_atual.busca~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(11),
	datac => \ALT_INV_din[11]~input_o\,
	datad => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y4_N47
\reg_inst1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(11));

-- Location: IOIBUF_X38_Y0_N35
\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: LABCELL_X40_Y4_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & (reg_inst1(15))) # (\estado_atual.busca~q\ & ((\din[15]~input_o\))) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\din[15]~input_o\ & \estado_atual.busca~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(15),
	datac => \ALT_INV_din[15]~input_o\,
	datad => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y4_N14
\reg_inst1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(15));

-- Location: LABCELL_X40_Y4_N6
\estado_atual~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~30_combout\ = ( reg_inst1(15) & ( (!reg_inst1(14) & (!reg_inst1(12) & (!reg_inst1(13) & !reg_inst1(11)))) ) ) # ( !reg_inst1(15) & ( (((reg_inst1(11)) # (reg_inst1(13))) # (reg_inst1(12))) # (reg_inst1(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(12),
	datac => ALT_INV_reg_inst1(13),
	datad => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(15),
	combout => \estado_atual~30_combout\);

-- Location: IOIBUF_X40_Y0_N92
\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LABCELL_X40_Y2_N48
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(1)))) # (\estado_atual.busca~q\ & (\din[1]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[1]~input_o\,
	datad => ALT_INV_reg_inst1(1),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X40_Y2_N50
\reg_inst1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(1));

-- Location: IOIBUF_X38_Y0_N1
\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: LABCELL_X40_Y2_N24
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(0)))) # (\estado_atual.busca~q\ & (\din[0]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[0]~input_o\,
	datad => ALT_INV_reg_inst1(0),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X40_Y2_N26
\reg_inst1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(0));

-- Location: IOIBUF_X40_Y0_N75
\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: LABCELL_X40_Y2_N45
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(4)))) # (\estado_atual.busca~q\ & (\din[4]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[4]~input_o\,
	datad => ALT_INV_reg_inst1(4),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X40_Y2_N47
\reg_inst1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(4));

-- Location: IOIBUF_X42_Y0_N35
\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LABCELL_X40_Y2_N39
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(3)))) # (\estado_atual.busca~q\ & (\din[3]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[3]~input_o\,
	datad => ALT_INV_reg_inst1(3),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X40_Y2_N41
\reg_inst1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(3));

-- Location: IOIBUF_X42_Y0_N18
\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: LABCELL_X40_Y2_N51
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(5)))) # (\estado_atual.busca~q\ & (\din[5]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[5]~input_o\,
	datad => ALT_INV_reg_inst1(5),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X40_Y2_N53
\reg_inst1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(5));

-- Location: IOIBUF_X36_Y0_N1
\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: LABCELL_X40_Y2_N27
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(7)))) # (\estado_atual.busca~q\ & (\din[7]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[7]~input_o\,
	datad => ALT_INV_reg_inst1(7),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X40_Y2_N29
\reg_inst1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(7));

-- Location: IOIBUF_X38_Y0_N18
\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LABCELL_X40_Y2_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \estado_atual.busca~q\ & ( \din[6]~input_o\ ) ) # ( !\estado_atual.busca~q\ & ( (\estado_atual.reset1~DUPLICATE_q\ & reg_inst1(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	datac => \ALT_INV_din[6]~input_o\,
	datad => ALT_INV_reg_inst1(6),
	dataf => \ALT_INV_estado_atual.busca~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X40_Y2_N58
\reg_inst1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(6));

-- Location: LABCELL_X40_Y2_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !reg_inst1(7) & ( !reg_inst1(6) & ( (!reg_inst1(4) & (!reg_inst1(3) & !reg_inst1(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(4),
	datac => ALT_INV_reg_inst1(3),
	datad => ALT_INV_reg_inst1(5),
	datae => ALT_INV_reg_inst1(7),
	dataf => ALT_INV_reg_inst1(6),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X41_Y2_N33
\Selector94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = ( \Equal0~0_combout\ & ( \estado_atual.executa~q\ & ( (!reg_inst1(1) & (!reg_inst1(2) & !reg_inst1(0))) # (reg_inst1(1) & (reg_inst1(2) & reg_inst1(0))) ) ) ) # ( !\Equal0~0_combout\ & ( \estado_atual.executa~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(1),
	datac => ALT_INV_reg_inst1(2),
	datad => ALT_INV_reg_inst1(0),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_estado_atual.executa~q\,
	combout => \Selector94~0_combout\);

-- Location: LABCELL_X40_Y2_N12
\Selector95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = ( \Selector94~0_combout\ & ( (!\estado_atual~30_combout\) # (\estado_atual.busca~q\) ) ) # ( !\Selector94~0_combout\ & ( \estado_atual.busca~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_atual~30_combout\,
	datac => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_Selector94~0_combout\,
	combout => \Selector95~0_combout\);

-- Location: FF_X40_Y2_N14
\estado_atual.executa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector95~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.executa~q\);

-- Location: LABCELL_X38_Y5_N33
\Selector94~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = ( reg_inst1(11) & ( (!reg_inst1(15) & !reg_inst1(14)) ) ) # ( !reg_inst1(11) & ( (!reg_inst1(15) & (!reg_inst1(14) $ (((!reg_inst1(13) & !reg_inst1(12)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011000000010010001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(11),
	combout => \Selector94~1_combout\);

-- Location: LABCELL_X38_Y5_N48
\Selector94~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = ( \Equal0~0_combout\ & ( !\Selector94~1_combout\ & ( (\estado_atual.executa~q\ & ((!reg_inst1(2) & (!reg_inst1(1) & !reg_inst1(0))) # (reg_inst1(2) & (reg_inst1(1) & reg_inst1(0))))) ) ) ) # ( !\Equal0~0_combout\ & ( 
-- !\Selector94~1_combout\ & ( \estado_atual.executa~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.executa~q\,
	datab => ALT_INV_reg_inst1(2),
	datac => ALT_INV_reg_inst1(1),
	datad => ALT_INV_reg_inst1(0),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Selector94~1_combout\,
	combout => \Selector94~2_combout\);

-- Location: MLABCELL_X37_Y4_N6
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( !\estado_atual.executa~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_atual.executa~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X41_Y2_N39
\Selector92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = ( \estado_atual.executa~q\ & ( (\Equal0~0_combout\ & ((!reg_inst1(1) & (!reg_inst1(0) & reg_inst1(2))) # (reg_inst1(1) & (reg_inst1(0) & !reg_inst1(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000010000000000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(1),
	datab => ALT_INV_reg_inst1(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_reg_inst1(2),
	dataf => \ALT_INV_estado_atual.executa~q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X41_Y2_N46
\estado_atual.sync_grav\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector92~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.sync_grav~q\);

-- Location: LABCELL_X38_Y5_N3
\estado_atual~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~39_combout\ = ( !reg_inst1(15) & ( (reg_inst1(14) & reg_inst1(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(15),
	combout => \estado_atual~39_combout\);

-- Location: LABCELL_X40_Y3_N12
\estado_atual~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~31_combout\ = ( !reg_inst1(1) & ( (\estado_atual.executa~q\ & (reg_inst1(0) & (\Equal0~0_combout\ & reg_inst1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.executa~q\,
	datab => ALT_INV_reg_inst1(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_reg_inst1(2),
	dataf => ALT_INV_reg_inst1(1),
	combout => \estado_atual~31_combout\);

-- Location: FF_X40_Y3_N13
\estado_atual.movae~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movae~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N15
\reg_inst2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst2~2_combout\ = ( reg_inst1(12) & ( (!reg_inst1(15) & ((!reg_inst1(14)) # (!reg_inst1(13)))) ) ) # ( !reg_inst1(12) & ( (!reg_inst1(15) & (!reg_inst1(14) $ (((!reg_inst1(11) & !reg_inst1(13)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010001000010010001000100011001100100010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(11),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(12),
	combout => \reg_inst2~2_combout\);

-- Location: LABCELL_X40_Y2_N18
\estado_atual~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~38_combout\ = ( \estado_atual.executa~q\ & ( reg_inst1(1) & ( (\reg_inst2~2_combout\ & ((!\Equal0~0_combout\) # ((reg_inst1(0) & reg_inst1(2))))) ) ) ) # ( \estado_atual.executa~q\ & ( !reg_inst1(1) & ( (\reg_inst2~2_combout\ & 
-- ((!\Equal0~0_combout\) # ((!reg_inst1(0) & !reg_inst1(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001000000000000000000010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_reg_inst2~2_combout\,
	datac => ALT_INV_reg_inst1(0),
	datad => ALT_INV_reg_inst1(2),
	datae => \ALT_INV_estado_atual.executa~q\,
	dataf => ALT_INV_reg_inst1(1),
	combout => \estado_atual~38_combout\);

-- Location: FF_X40_Y2_N19
\estado_atual.resultado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.resultado~q\);

-- Location: LABCELL_X41_Y4_N12
\comp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp[0]~0_combout\ = ( reg_inst1(14) & ( (!reg_inst1(11) & (!reg_inst1(15) & (!reg_inst1(12) & reg_inst1(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(11),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(12),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(14),
	combout => \comp[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N36
\reg_inst2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst2~3_combout\ = ( !\reg_inst2~2_combout\ & ( (!\Equal0~0_combout\) # (!reg_inst1(2) $ (((reg_inst1(0) & reg_inst1(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001001111111111100100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => ALT_INV_reg_inst1(2),
	datac => ALT_INV_reg_inst1(1),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_reg_inst2~2_combout\,
	combout => \reg_inst2~3_combout\);

-- Location: LABCELL_X41_Y4_N45
\Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = ( reg_inst1(11) & ( (!reg_inst1(12) & (reg_inst1(14) & (!reg_inst1(15) & !reg_inst1(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(12),
	datab => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(11),
	combout => \Equal14~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\estado_atual~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~29_combout\ = ( \Equal0~0_combout\ & ( (!reg_inst1(2) & (!reg_inst1(1) $ (!reg_inst1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(2),
	datac => ALT_INV_reg_inst1(1),
	datad => ALT_INV_reg_inst1(0),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \estado_atual~29_combout\);

-- Location: LABCELL_X35_Y3_N24
\regb[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[15]~feeder_combout\ = \din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[15]~input_o\,
	combout => \regb[15]~feeder_combout\);

-- Location: LABCELL_X41_Y4_N18
\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = ( \reg_inst2~3_combout\ & ( \comp[0]~0_combout\ & ( (!\Equal14~0_combout\ & (\estado_atual.executa~q\ & !\estado_atual~29_combout\)) ) ) ) # ( !\reg_inst2~3_combout\ & ( \comp[0]~0_combout\ & ( (\estado_atual.executa~q\ & 
-- !\estado_atual~29_combout\) ) ) ) # ( \reg_inst2~3_combout\ & ( !\comp[0]~0_combout\ & ( (!\reg_inst2~1_combout\ & (!\Equal14~0_combout\ & (\estado_atual.executa~q\ & !\estado_atual~29_combout\))) ) ) ) # ( !\reg_inst2~3_combout\ & ( !\comp[0]~0_combout\ 
-- & ( (\estado_atual.executa~q\ & !\estado_atual~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000010000000000000001111000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_inst2~1_combout\,
	datab => \ALT_INV_Equal14~0_combout\,
	datac => \ALT_INV_estado_atual.executa~q\,
	datad => \ALT_INV_estado_atual~29_combout\,
	datae => \ALT_INV_reg_inst2~3_combout\,
	dataf => \ALT_INV_comp[0]~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LABCELL_X40_Y3_N18
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \Selector23~1_combout\ & ( ((\Selector23~0_combout\ & \din[15]~input_o\)) # (reg_inst2(15)) ) ) # ( !\Selector23~1_combout\ & ( (!\Selector23~0_combout\ & (\Selector13~0_combout\ & ((reg_inst2(15))))) # (\Selector23~0_combout\ & 
-- (((\Selector13~0_combout\ & reg_inst2(15))) # (\din[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[15]~input_o\,
	datad => ALT_INV_reg_inst2(15),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X40_Y3_N20
\reg_inst2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(15));

-- Location: LABCELL_X41_Y2_N27
\estado_atual~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~42_combout\ = ( \estado_atual.executa~q\ & ( (!reg_inst1(0) & (\Equal0~0_combout\ & (reg_inst1(1) & !reg_inst1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_reg_inst1(1),
	datad => ALT_INV_reg_inst1(2),
	dataf => \ALT_INV_estado_atual.executa~q\,
	combout => \estado_atual~42_combout\);

-- Location: FF_X41_Y2_N29
\estado_atual.movbd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movbd~q\);

-- Location: LABCELL_X41_Y2_N24
\estado_atual~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~32_combout\ = ( \estado_atual.executa~q\ & ( (!reg_inst1(0) & (\Equal0~0_combout\ & (reg_inst1(1) & reg_inst1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_reg_inst1(1),
	datad => ALT_INV_reg_inst1(2),
	dataf => \ALT_INV_estado_atual.executa~q\,
	combout => \estado_atual~32_combout\);

-- Location: FF_X41_Y2_N26
\estado_atual.movbe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movbe~q\);

-- Location: LABCELL_X35_Y2_N30
\regb[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[11]~0_combout\ = (!\estado_atual.movbd~q\ & !\estado_atual.movbe~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_atual.movbd~q\,
	datad => \ALT_INV_estado_atual.movbe~q\,
	combout => \regb[11]~0_combout\);

-- Location: FF_X41_Y2_N38
\estado_atual.reset1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.reset1~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.reset1~q\);

-- Location: LABCELL_X41_Y2_N3
\regb[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[0]~1_combout\ = ( \estado_atual.movbe~q\ & ( !\reset~input_o\ ) ) # ( !\estado_atual.movbe~q\ & ( (!\reset~input_o\ & ((!\estado_atual.reset1~q\) # (\estado_atual.movbd~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.reset1~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_estado_atual.movbd~q\,
	dataf => \ALT_INV_estado_atual.movbe~q\,
	combout => \regb[0]~1_combout\);

-- Location: FF_X35_Y3_N26
\regb[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[15]~feeder_combout\,
	asdata => reg_inst2(15),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(15));

-- Location: LABCELL_X40_Y4_N24
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( reg_inst1(12) & ( (!reg_inst1(14) & (!reg_inst1(15) & !reg_inst1(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(12),
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X36_Y4_N54
\reg_ula~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~12_combout\ = ( reg_inst1(12) & ( reg_inst1(13) ) ) # ( !reg_inst1(12) & ( reg_inst1(13) ) ) # ( reg_inst1(12) & ( !reg_inst1(13) & ( ((reg_inst1(15)) # (reg_inst1(14))) # (reg_inst1(11)) ) ) ) # ( !reg_inst1(12) & ( !reg_inst1(13) & ( 
-- (!reg_inst1(11)) # ((reg_inst1(15)) # (reg_inst1(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(11),
	datab => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(15),
	datae => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(13),
	combout => \reg_ula~12_combout\);

-- Location: LABCELL_X40_Y4_N51
\reg_ula~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~14_combout\ = ( !reg_inst1(14) & ( (reg_inst1(13) & (reg_inst1(12) & (!reg_inst1(15) & !reg_inst1(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(12),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(14),
	combout => \reg_ula~14_combout\);

-- Location: LABCELL_X40_Y4_N48
\reg_ula~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~13_combout\ = ( !reg_inst1(15) & ( (reg_inst1(13) & (!reg_inst1(14) & (!reg_inst1(12) $ (!reg_inst1(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(12),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(15),
	combout => \reg_ula~13_combout\);

-- Location: LABCELL_X40_Y4_N54
\reg_ula~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~15_combout\ = ( !reg_inst1(12) & ( (!reg_inst1(15) & (!reg_inst1(14) & reg_inst1(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(12),
	combout => \reg_ula~15_combout\);

-- Location: LABCELL_X38_Y2_N42
\reg_ula~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~47_combout\ = ( \reg_ula~13_combout\ & ( \reg_ula~15_combout\ & ( (!rega(15) & ((\reg_ula~14_combout\) # (regb(15)))) # (rega(15) & (!regb(15))) ) ) ) # ( !\reg_ula~13_combout\ & ( \reg_ula~15_combout\ & ( ((\reg_ula~14_combout\) # (regb(15))) # 
-- (rega(15)) ) ) ) # ( \reg_ula~13_combout\ & ( !\reg_ula~15_combout\ & ( (!rega(15) & (!regb(15) & \reg_ula~14_combout\)) ) ) ) # ( !\reg_ula~13_combout\ & ( !\reg_ula~15_combout\ & ( (!rega(15) & (!regb(15) & \reg_ula~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001110111111111110110011011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(15),
	datab => ALT_INV_regb(15),
	datad => \ALT_INV_reg_ula~14_combout\,
	datae => \ALT_INV_reg_ula~13_combout\,
	dataf => \ALT_INV_reg_ula~15_combout\,
	combout => \reg_ula~47_combout\);

-- Location: LABCELL_X40_Y2_N6
\Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = ( reg_inst1(0) & ( \reg_inst2~2_combout\ & ( (\estado_atual.executa~q\ & ((!\Equal0~0_combout\) # ((reg_inst1(1) & reg_inst1(2))))) ) ) ) # ( !reg_inst1(0) & ( \reg_inst2~2_combout\ & ( (\estado_atual.executa~q\ & 
-- ((!\Equal0~0_combout\) # ((!reg_inst1(1) & !reg_inst1(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110000000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(1),
	datab => ALT_INV_reg_inst1(2),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_estado_atual.executa~q\,
	datae => ALT_INV_reg_inst1(0),
	dataf => \ALT_INV_reg_inst2~2_combout\,
	combout => \Selector75~0_combout\);

-- Location: LABCELL_X40_Y2_N15
\reg_inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst2~0_combout\ = ( \Equal0~0_combout\ & ( !reg_inst1(2) $ (((!reg_inst1(1)) # (!reg_inst1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(1),
	datac => ALT_INV_reg_inst1(2),
	datad => ALT_INV_reg_inst1(0),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \reg_inst2~0_combout\);

-- Location: LABCELL_X40_Y2_N54
\Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = ( \reg_inst2~0_combout\ & ( (!\estado_atual.reset1~DUPLICATE_q\ & !\estado_atual.executa~q\) ) ) # ( !\reg_inst2~0_combout\ & ( (!\estado_atual.executa~q\ & (!\estado_atual.reset1~DUPLICATE_q\)) # (\estado_atual.executa~q\ & 
-- (((\reg_inst2~2_combout\ & !\estado_atual~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100000101000111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	datab => \ALT_INV_reg_inst2~2_combout\,
	datac => \ALT_INV_estado_atual.executa~q\,
	datad => \ALT_INV_estado_atual~29_combout\,
	dataf => \ALT_INV_reg_inst2~0_combout\,
	combout => \Selector74~0_combout\);

-- Location: LABCELL_X38_Y2_N0
\Selector61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~1_combout\ = ( reg_ula(15) & ( (!\Selector74~0_combout\) # ((\reg_ula~47_combout\ & \Selector75~0_combout\)) ) ) # ( !reg_ula(15) & ( (\reg_ula~47_combout\ & \Selector75~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~47_combout\,
	datac => \ALT_INV_Selector75~0_combout\,
	datad => \ALT_INV_Selector74~0_combout\,
	dataf => ALT_INV_reg_ula(15),
	combout => \Selector61~1_combout\);

-- Location: LABCELL_X35_Y2_N54
\regb[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[14]~feeder_combout\ = \din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[14]~input_o\,
	combout => \regb[14]~feeder_combout\);

-- Location: LABCELL_X41_Y4_N30
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \Selector23~0_combout\ & ( ((reg_inst2(14) & ((\Selector13~0_combout\) # (\Selector23~1_combout\)))) # (\din[14]~input_o\) ) ) # ( !\Selector23~0_combout\ & ( (reg_inst2(14) & ((\Selector13~0_combout\) # 
-- (\Selector23~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~1_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[14]~input_o\,
	datad => ALT_INV_reg_inst2(14),
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X41_Y4_N32
\reg_inst2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(14));

-- Location: FF_X35_Y2_N56
\regb[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[14]~feeder_combout\,
	asdata => reg_inst2(14),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(14));

-- Location: LABCELL_X35_Y2_N21
\regb[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[13]~feeder_combout\ = \din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[13]~input_o\,
	combout => \regb[13]~feeder_combout\);

-- Location: LABCELL_X40_Y3_N6
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( reg_inst2(13) & ( \Selector23~1_combout\ ) ) # ( !reg_inst2(13) & ( \Selector23~1_combout\ & ( (\din[13]~input_o\ & \Selector23~0_combout\) ) ) ) # ( reg_inst2(13) & ( !\Selector23~1_combout\ & ( ((\din[13]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(13) & ( !\Selector23~1_combout\ & ( (\din[13]~input_o\ & \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[13]~input_o\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Selector13~0_combout\,
	datae => ALT_INV_reg_inst2(13),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X40_Y3_N8
\reg_inst2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(13));

-- Location: FF_X35_Y2_N23
\regb[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[13]~feeder_combout\,
	asdata => reg_inst2(13),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(13));

-- Location: LABCELL_X35_Y2_N15
\regb[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[12]~feeder_combout\ = \din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[12]~input_o\,
	combout => \regb[12]~feeder_combout\);

-- Location: LABCELL_X41_Y4_N27
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \Selector23~0_combout\ & ( ((reg_inst2(12) & ((\Selector13~0_combout\) # (\Selector23~1_combout\)))) # (\din[12]~input_o\) ) ) # ( !\Selector23~0_combout\ & ( (reg_inst2(12) & ((\Selector13~0_combout\) # 
-- (\Selector23~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~1_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[12]~input_o\,
	datad => ALT_INV_reg_inst2(12),
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X41_Y4_N29
\reg_inst2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector16~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(12));

-- Location: FF_X35_Y2_N17
\regb[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[12]~feeder_combout\,
	asdata => reg_inst2(12),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(12));

-- Location: LABCELL_X36_Y1_N9
\reg_ula~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~41_combout\ = ( rega(12) & ( \reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & ((!regb(12)) # (!\reg_ula~13_combout\))) ) ) ) # ( !rega(12) & ( \reg_ula~14_combout\ & ( (!regb(12)) # (\reg_ula~15_combout\) ) ) ) # ( rega(12) & ( 
-- !\reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & ((!regb(12)) # (!\reg_ula~13_combout\))) ) ) ) # ( !rega(12) & ( !\reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & regb(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101000011110101111101010101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~15_combout\,
	datac => ALT_INV_regb(12),
	datad => \ALT_INV_reg_ula~13_combout\,
	datae => ALT_INV_rega(12),
	dataf => \ALT_INV_reg_ula~14_combout\,
	combout => \reg_ula~41_combout\);

-- Location: LABCELL_X36_Y1_N48
\Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = ( \Selector74~0_combout\ & ( reg_ula(12) & ( (\reg_ula~41_combout\ & \Selector75~0_combout\) ) ) ) # ( !\Selector74~0_combout\ & ( reg_ula(12) ) ) # ( \Selector74~0_combout\ & ( !reg_ula(12) & ( (\reg_ula~41_combout\ & 
-- \Selector75~0_combout\) ) ) ) # ( !\Selector74~0_combout\ & ( !reg_ula(12) & ( (\reg_ula~41_combout\ & \Selector75~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~41_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => \ALT_INV_Selector74~0_combout\,
	dataf => ALT_INV_reg_ula(12),
	combout => \Selector64~0_combout\);

-- Location: LABCELL_X35_Y2_N9
\regb[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[11]~feeder_combout\ = \din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_din[11]~input_o\,
	combout => \regb[11]~feeder_combout\);

-- Location: LABCELL_X40_Y3_N21
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Selector23~1_combout\ & ( ((\Selector23~0_combout\ & \din[11]~input_o\)) # (reg_inst2(11)) ) ) # ( !\Selector23~1_combout\ & ( (!\Selector23~0_combout\ & (\Selector13~0_combout\ & ((reg_inst2(11))))) # (\Selector23~0_combout\ & 
-- (((\Selector13~0_combout\ & reg_inst2(11))) # (\din[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[11]~input_o\,
	datad => ALT_INV_reg_inst2(11),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X40_Y3_N23
\reg_inst2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(11));

-- Location: FF_X35_Y2_N11
\regb[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[11]~feeder_combout\,
	asdata => reg_inst2(11),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(11));

-- Location: IOIBUF_X46_Y0_N35
\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: LABCELL_X35_Y2_N33
\regb[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[10]~feeder_combout\ = ( \din[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[10]~input_o\,
	combout => \regb[10]~feeder_combout\);

-- Location: LABCELL_X41_Y4_N33
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \Selector23~0_combout\ & ( ((reg_inst2(10) & ((\Selector13~0_combout\) # (\Selector23~1_combout\)))) # (\din[10]~input_o\) ) ) # ( !\Selector23~0_combout\ & ( (reg_inst2(10) & ((\Selector13~0_combout\) # 
-- (\Selector23~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~1_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[10]~input_o\,
	datad => ALT_INV_reg_inst2(10),
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X41_Y4_N35
\reg_inst2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector18~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(10));

-- Location: FF_X35_Y2_N35
\regb[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[10]~feeder_combout\,
	asdata => reg_inst2(10),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(10));

-- Location: IOIBUF_X34_Y0_N35
\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: LABCELL_X40_Y3_N30
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Selector23~1_combout\ & ( ((\din[9]~input_o\ & \Selector23~0_combout\)) # (reg_inst2(9)) ) ) # ( !\Selector23~1_combout\ & ( (!\din[9]~input_o\ & (reg_inst2(9) & ((\Selector13~0_combout\)))) # (\din[9]~input_o\ & 
-- (((reg_inst2(9) & \Selector13~0_combout\)) # (\Selector23~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[9]~input_o\,
	datab => ALT_INV_reg_inst2(9),
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Selector13~0_combout\,
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X40_Y3_N32
\reg_inst2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector19~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(9));

-- Location: LABCELL_X35_Y2_N18
\regb[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[9]~feeder_combout\ = ( \din[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[9]~input_o\,
	combout => \regb[9]~feeder_combout\);

-- Location: FF_X35_Y2_N20
\regb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[9]~feeder_combout\,
	asdata => reg_inst2(9),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(9));

-- Location: LABCELL_X38_Y2_N30
\reg_ula~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~33_combout\ = (rega(9) & regb(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(9),
	datab => ALT_INV_regb(9),
	combout => \reg_ula~33_combout\);

-- Location: MLABCELL_X37_Y2_N33
\Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = ( reg_ula(9) & ( \reg_ula~33_combout\ & ( (!\Selector74~0_combout\) # ((\reg_ula~12_combout\ & (\Equal7~0_combout\ & \Selector75~0_combout\))) ) ) ) # ( !reg_ula(9) & ( \reg_ula~33_combout\ & ( (\reg_ula~12_combout\ & 
-- (\Equal7~0_combout\ & \Selector75~0_combout\)) ) ) ) # ( reg_ula(9) & ( !\reg_ula~33_combout\ & ( !\Selector74~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_Selector74~0_combout\,
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => ALT_INV_reg_ula(9),
	dataf => \ALT_INV_reg_ula~33_combout\,
	combout => \Selector67~0_combout\);

-- Location: IOIBUF_X46_Y0_N18
\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: LABCELL_X36_Y2_N51
\regb[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[8]~feeder_combout\ = \din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[8]~input_o\,
	combout => \regb[8]~feeder_combout\);

-- Location: LABCELL_X40_Y3_N36
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( reg_inst2(8) & ( \Selector23~1_combout\ ) ) # ( !reg_inst2(8) & ( \Selector23~1_combout\ & ( (\din[8]~input_o\ & \Selector23~0_combout\) ) ) ) # ( reg_inst2(8) & ( !\Selector23~1_combout\ & ( ((\din[8]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(8) & ( !\Selector23~1_combout\ & ( (\din[8]~input_o\ & \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[8]~input_o\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Selector13~0_combout\,
	datae => ALT_INV_reg_inst2(8),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X40_Y3_N38
\reg_inst2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector20~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(8));

-- Location: FF_X36_Y2_N53
\regb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[8]~feeder_combout\,
	asdata => reg_inst2(8),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(8));

-- Location: MLABCELL_X37_Y1_N57
\reg_ula~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~30_combout\ = ( rega(8) & ( regb(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(8),
	dataf => ALT_INV_rega(8),
	combout => \reg_ula~30_combout\);

-- Location: MLABCELL_X37_Y1_N42
\Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = ( reg_ula(8) & ( \Selector74~0_combout\ & ( (\reg_ula~12_combout\ & (\reg_ula~30_combout\ & (\Selector75~0_combout\ & \Equal7~0_combout\))) ) ) ) # ( !reg_ula(8) & ( \Selector74~0_combout\ & ( (\reg_ula~12_combout\ & 
-- (\reg_ula~30_combout\ & (\Selector75~0_combout\ & \Equal7~0_combout\))) ) ) ) # ( reg_ula(8) & ( !\Selector74~0_combout\ ) ) # ( !reg_ula(8) & ( !\Selector74~0_combout\ & ( (\reg_ula~12_combout\ & (\reg_ula~30_combout\ & (\Selector75~0_combout\ & 
-- \Equal7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_reg_ula~30_combout\,
	datac => \ALT_INV_Selector75~0_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => ALT_INV_reg_ula(8),
	dataf => \ALT_INV_Selector74~0_combout\,
	combout => \Selector68~0_combout\);

-- Location: LABCELL_X35_Y4_N24
\regb[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[7]~feeder_combout\ = ( \din[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[7]~input_o\,
	combout => \regb[7]~feeder_combout\);

-- Location: LABCELL_X35_Y4_N42
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( reg_inst2(7) & ( \Selector23~1_combout\ ) ) # ( !reg_inst2(7) & ( \Selector23~1_combout\ & ( (\din[7]~input_o\ & \Selector23~0_combout\) ) ) ) # ( reg_inst2(7) & ( !\Selector23~1_combout\ & ( ((\din[7]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(7) & ( !\Selector23~1_combout\ & ( (\din[7]~input_o\ & \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~0_combout\,
	datab => \ALT_INV_din[7]~input_o\,
	datad => \ALT_INV_Selector23~0_combout\,
	datae => ALT_INV_reg_inst2(7),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X35_Y4_N44
\reg_inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector21~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(7));

-- Location: FF_X35_Y4_N26
\regb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[7]~feeder_combout\,
	asdata => reg_inst2(7),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(7));

-- Location: LABCELL_X38_Y4_N36
\reg_ula~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~11_combout\ = ( reg_inst1(14) ) # ( !reg_inst1(14) & ( ((!reg_inst1(11) & (!reg_inst1(12) & !reg_inst1(13))) # (reg_inst1(11) & (reg_inst1(12) & reg_inst1(13)))) # (reg_inst1(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010111110101010101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(15),
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_reg_inst1(12),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(14),
	combout => \reg_ula~11_combout\);

-- Location: LABCELL_X40_Y4_N57
\reg_ula~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~9_combout\ = ( reg_inst1(14) & ( (!reg_inst1(13) & (!reg_inst1(15) & !reg_inst1(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(14),
	combout => \reg_ula~9_combout\);

-- Location: LABCELL_X40_Y4_N42
\reg_ula~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~0_combout\ = ( reg_inst1(12) & ( (!reg_inst1(15) & (reg_inst1(11) & (!reg_inst1(14) & reg_inst1(13)))) ) ) # ( !reg_inst1(12) & ( (!reg_inst1(15) & (!reg_inst1(11) & (reg_inst1(14) & !reg_inst1(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(15),
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(12),
	combout => \reg_ula~0_combout\);

-- Location: LABCELL_X40_Y3_N3
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( reg_inst2(6) & ( \Selector23~1_combout\ ) ) # ( !reg_inst2(6) & ( \Selector23~1_combout\ & ( (\din[6]~input_o\ & \Selector23~0_combout\) ) ) ) # ( reg_inst2(6) & ( !\Selector23~1_combout\ & ( ((\din[6]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(6) & ( !\Selector23~1_combout\ & ( (\din[6]~input_o\ & \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[6]~input_o\,
	datac => \ALT_INV_Selector13~0_combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	datae => ALT_INV_reg_inst2(6),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X40_Y3_N5
\reg_inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(6));

-- Location: LABCELL_X41_Y4_N39
\pc[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[1]~0_combout\ = ( reg_inst1(1) & ( (\Equal0~0_combout\ & (\estado_atual.executa~q\ & (!reg_inst1(0) $ (!reg_inst1(2))))) ) ) # ( !reg_inst1(1) & ( (reg_inst1(2) & (\Equal0~0_combout\ & \estado_atual.executa~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => ALT_INV_reg_inst1(2),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_estado_atual.executa~q\,
	dataf => ALT_INV_reg_inst1(1),
	combout => \pc[1]~0_combout\);

-- Location: LABCELL_X41_Y4_N15
\Equal21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = ( !reg_inst1(14) & ( (!reg_inst1(11) & (reg_inst1(15) & (!reg_inst1(13) & !reg_inst1(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(11),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(13),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(14),
	combout => \Equal21~0_combout\);

-- Location: LABCELL_X41_Y4_N57
\Equal20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = ( !reg_inst1(15) & ( (reg_inst1(11) & (reg_inst1(13) & (reg_inst1(14) & reg_inst1(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(11),
	datab => ALT_INV_reg_inst1(13),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(15),
	combout => \Equal20~0_combout\);

-- Location: LABCELL_X38_Y5_N12
\estado_atual~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~34_combout\ = ( \Equal20~0_combout\ & ( \estado_atual.jmp~q\ & ( (comp(1) & (!\Equal21~0_combout\ $ (comp(0)))) ) ) ) # ( !\Equal20~0_combout\ & ( \estado_atual.jmp~q\ & ( (!\Equal21~0_combout\) # ((comp(0) & comp(1))) ) ) ) # ( 
-- \Equal20~0_combout\ & ( !\estado_atual.jmp~q\ & ( (comp(1) & (!\Equal21~0_combout\ $ (comp(0)))) ) ) ) # ( !\Equal20~0_combout\ & ( !\estado_atual.jmp~q\ & ( (\Equal21~0_combout\ & (comp(0) & comp(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010010000100110101011101010110000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal21~0_combout\,
	datab => ALT_INV_comp(0),
	datac => ALT_INV_comp(1),
	datae => \ALT_INV_Equal20~0_combout\,
	dataf => \ALT_INV_estado_atual.jmp~q\,
	combout => \estado_atual~34_combout\);

-- Location: LABCELL_X38_Y5_N21
\estado_atual~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~33_combout\ = ( reg_inst1(13) & ( reg_inst1(11) & ( (!reg_inst1(12) & (reg_inst1(14) & !reg_inst1(15))) ) ) ) # ( reg_inst1(13) & ( !reg_inst1(11) & ( (reg_inst1(12) & (reg_inst1(14) & !reg_inst1(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(12),
	datab => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(15),
	datae => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(11),
	combout => \estado_atual~33_combout\);

-- Location: LABCELL_X38_Y5_N30
\estado_atual~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~36_combout\ = ( reg_inst1(11) & ( (!reg_inst1(13) & (!reg_inst1(15) & (reg_inst1(12) & reg_inst1(14)))) ) ) # ( !reg_inst1(11) & ( (!reg_inst1(15) & (reg_inst1(14) & (!reg_inst1(13) $ (!reg_inst1(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(12),
	datad => ALT_INV_reg_inst1(14),
	dataf => ALT_INV_reg_inst1(11),
	combout => \estado_atual~36_combout\);

-- Location: LABCELL_X40_Y4_N21
\Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = ( reg_inst1(13) & ( (reg_inst1(14) & (!reg_inst1(15) & (reg_inst1(12) & !reg_inst1(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(12),
	datad => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(13),
	combout => \Equal19~0_combout\);

-- Location: LABCELL_X41_Y4_N42
\Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = ( reg_inst1(11) & ( (!reg_inst1(12) & (reg_inst1(14) & (!reg_inst1(15) & reg_inst1(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(12),
	datab => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(13),
	dataf => ALT_INV_reg_inst1(11),
	combout => \Equal18~0_combout\);

-- Location: LABCELL_X38_Y5_N36
\estado_atual~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~35_combout\ = ( \Equal18~0_combout\ & ( (!comp(0) & !comp(1)) ) ) # ( !\Equal18~0_combout\ & ( (comp(0) & (!comp(1) & \Equal19~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_comp(0),
	datac => ALT_INV_comp(1),
	datad => \ALT_INV_Equal19~0_combout\,
	dataf => \ALT_INV_Equal18~0_combout\,
	combout => \estado_atual~35_combout\);

-- Location: LABCELL_X38_Y5_N54
\estado_atual~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~37_combout\ = ( \estado_atual~35_combout\ & ( \Equal14~0_combout\ & ( \Selector94~2_combout\ ) ) ) # ( !\estado_atual~35_combout\ & ( \Equal14~0_combout\ & ( \Selector94~2_combout\ ) ) ) # ( \estado_atual~35_combout\ & ( !\Equal14~0_combout\ 
-- & ( (\Selector94~2_combout\ & !\estado_atual~36_combout\) ) ) ) # ( !\estado_atual~35_combout\ & ( !\Equal14~0_combout\ & ( (\Selector94~2_combout\ & (\estado_atual~34_combout\ & (!\estado_atual~33_combout\ & !\estado_atual~36_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010101010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector94~2_combout\,
	datab => \ALT_INV_estado_atual~34_combout\,
	datac => \ALT_INV_estado_atual~33_combout\,
	datad => \ALT_INV_estado_atual~36_combout\,
	datae => \ALT_INV_estado_atual~35_combout\,
	dataf => \ALT_INV_Equal14~0_combout\,
	combout => \estado_atual~37_combout\);

-- Location: FF_X38_Y5_N55
\estado_atual.jmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.jmp~q\);

-- Location: FF_X41_Y2_N23
\estado_atual.movex\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \estado_atual.sync_grav~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movex~q\);

-- Location: LABCELL_X41_Y2_N21
\pc[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[1]~1_combout\ = ( !\estado_atual.movae~DUPLICATE_q\ & ( (!\estado_atual.movbe~q\ & (!\estado_atual.jmp~q\ & !\estado_atual.movex~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movbe~q\,
	datac => \ALT_INV_estado_atual.jmp~q\,
	datad => \ALT_INV_estado_atual.movex~q\,
	dataf => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	combout => \pc[1]~1_combout\);

-- Location: LABCELL_X38_Y5_N39
\estado_atual.reset2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual.reset2~0_combout\ = ( !\estado_atual.reset1~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \estado_atual.reset2~0_combout\);

-- Location: FF_X38_Y5_N40
\estado_atual.reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual.reset2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.reset2~q\);

-- Location: LABCELL_X41_Y4_N0
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( reg_inst1(2) & ( pc(0) & ( (reg_inst2(0) & ((!\Equal0~0_combout\) # ((reg_inst1(0) & reg_inst1(1))))) ) ) ) # ( !reg_inst1(2) & ( pc(0) & ( (reg_inst2(0) & ((!reg_inst1(0)) # ((!reg_inst1(1)) # (!\Equal0~0_combout\)))) ) ) ) # ( 
-- reg_inst1(2) & ( !pc(0) & ( ((\Equal0~0_combout\ & ((!reg_inst1(0)) # (!reg_inst1(1))))) # (reg_inst2(0)) ) ) ) # ( !reg_inst1(2) & ( !pc(0) & ( ((reg_inst1(0) & (reg_inst1(1) & \Equal0~0_combout\))) # (reg_inst2(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100111111101100110011001100100011001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => ALT_INV_reg_inst2(0),
	datac => ALT_INV_reg_inst1(1),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_reg_inst1(2),
	dataf => ALT_INV_pc(0),
	combout => \Selector28~0_combout\);

-- Location: MLABCELL_X37_Y4_N12
\Selector28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = ( reg_inst2(0) & ( \Selector23~1_combout\ & ( (((\Selector23~0_combout\ & \din[0]~input_o\)) # (\Selector13~0_combout\)) # (\Selector28~0_combout\) ) ) ) # ( !reg_inst2(0) & ( \Selector23~1_combout\ & ( ((\Selector23~0_combout\ & 
-- \din[0]~input_o\)) # (\Selector28~0_combout\) ) ) ) # ( reg_inst2(0) & ( !\Selector23~1_combout\ & ( ((\Selector23~0_combout\ & \din[0]~input_o\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(0) & ( !\Selector23~1_combout\ & ( (\Selector23~0_combout\ & 
-- \din[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111101010101010111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector28~0_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_din[0]~input_o\,
	datae => ALT_INV_reg_inst2(0),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector28~1_combout\);

-- Location: FF_X37_Y4_N14
\reg_inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector28~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(0));

-- Location: LABCELL_X38_Y4_N24
\Selector101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = ( pc(0) & ( \pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & ((reg_inst2(0)))) # (\pc[1]~1_combout\ & (\din[0]~input_o\)) ) ) ) # ( !pc(0) & ( \pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & ((reg_inst2(0)))) # (\pc[1]~1_combout\ & 
-- (\din[0]~input_o\)) ) ) ) # ( pc(0) & ( !\pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & reg_inst2(0)) ) ) ) # ( !pc(0) & ( !\pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & ((reg_inst2(0)))) # (\pc[1]~1_combout\ & (!\estado_atual.reset2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011101110000000001010101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~1_combout\,
	datab => \ALT_INV_estado_atual.reset2~q\,
	datac => \ALT_INV_din[0]~input_o\,
	datad => ALT_INV_reg_inst2(0),
	datae => ALT_INV_pc(0),
	dataf => \ALT_INV_pc[1]~0_combout\,
	combout => \Selector101~0_combout\);

-- Location: LABCELL_X38_Y4_N39
\pc[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[0]~3_combout\ = ( reg_inst1(14) & ( (!reg_inst1(15) & ((!reg_inst1(13)) # ((!reg_inst1(11) & !reg_inst1(12))))) ) ) # ( !reg_inst1(14) & ( (!reg_inst1(15) & (((reg_inst1(12)) # (reg_inst1(13))) # (reg_inst1(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(15),
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_reg_inst1(13),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(14),
	combout => \pc[0]~3_combout\);

-- Location: LABCELL_X38_Y4_N54
\pc~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc~2_combout\ = ( \Equal20~0_combout\ & ( \Equal21~0_combout\ & ( (comp(0) & (!comp(1) $ (((!\Equal19~0_combout\ & !\Equal18~0_combout\))))) ) ) ) # ( !\Equal20~0_combout\ & ( \Equal21~0_combout\ & ( (comp(0) & (!comp(1) $ (((!\Equal19~0_combout\ & 
-- !\Equal18~0_combout\))))) ) ) ) # ( \Equal20~0_combout\ & ( !\Equal21~0_combout\ & ( (!\Equal19~0_combout\ & (!comp(0) & (!comp(1) $ (!\Equal18~0_combout\)))) # (\Equal19~0_combout\ & (!comp(1) & ((comp(0))))) ) ) ) # ( !\Equal20~0_combout\ & ( 
-- !\Equal21~0_combout\ & ( (!\Equal19~0_combout\ & ((!\Equal18~0_combout\) # ((!comp(1) & !comp(0))))) # (\Equal19~0_combout\ & (!comp(1) & ((comp(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011100100001010000100010000000000011011000000000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal19~0_combout\,
	datab => ALT_INV_comp(1),
	datac => \ALT_INV_Equal18~0_combout\,
	datad => ALT_INV_comp(0),
	datae => \ALT_INV_Equal20~0_combout\,
	dataf => \ALT_INV_Equal21~0_combout\,
	combout => \pc~2_combout\);

-- Location: LABCELL_X38_Y4_N9
\pc[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[0]~4_combout\ = ( \reg_inst2~0_combout\ & ( (\estado_atual~29_combout\ & \estado_atual.executa~q\) ) ) # ( !\reg_inst2~0_combout\ & ( (\estado_atual.executa~q\ & (((\pc~2_combout\) # (\pc[0]~3_combout\)) # (\estado_atual~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual~29_combout\,
	datab => \ALT_INV_pc[0]~3_combout\,
	datac => \ALT_INV_estado_atual.executa~q\,
	datad => \ALT_INV_pc~2_combout\,
	dataf => \ALT_INV_reg_inst2~0_combout\,
	combout => \pc[0]~4_combout\);

-- Location: LABCELL_X38_Y4_N48
\pc[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc[0]~5_combout\ = ( !\pc[0]~4_combout\ & ( (!\estado_atual.sync_grav~q\ & (!\reset~input_o\ & (\estado_atual.reset1~DUPLICATE_q\ & !\estado_atual.resultado~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.sync_grav~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	datad => \ALT_INV_estado_atual.resultado~q\,
	dataf => \ALT_INV_pc[0]~4_combout\,
	combout => \pc[0]~5_combout\);

-- Location: FF_X38_Y4_N26
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector101~0_combout\,
	ena => \pc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LABCELL_X38_Y4_N51
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( pc(0) & ( !pc(1) ) ) # ( !pc(0) & ( pc(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pc(1),
	dataf => ALT_INV_pc(0),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X35_Y4_N12
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \Add0~0_combout\ & ( reg_inst1(1) & ( ((\Equal0~0_combout\ & (!reg_inst1(0) $ (!reg_inst1(2))))) # (reg_inst2(1)) ) ) ) # ( !\Add0~0_combout\ & ( reg_inst1(1) & ( (reg_inst2(1) & ((!\Equal0~0_combout\) # (!reg_inst1(0) $ 
-- (reg_inst1(2))))) ) ) ) # ( \Add0~0_combout\ & ( !reg_inst1(1) & ( ((\Equal0~0_combout\ & reg_inst1(2))) # (reg_inst2(1)) ) ) ) # ( !\Add0~0_combout\ & ( !reg_inst1(1) & ( (reg_inst2(1) & ((!\Equal0~0_combout\) # (!reg_inst1(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110111011100110010001000110011011101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_reg_inst2(1),
	datac => ALT_INV_reg_inst1(0),
	datad => ALT_INV_reg_inst1(2),
	datae => \ALT_INV_Add0~0_combout\,
	dataf => ALT_INV_reg_inst1(1),
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X35_Y4_N6
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( reg_inst2(1) & ( \Selector23~1_combout\ & ( (((\din[1]~input_o\ & \Selector23~0_combout\)) # (\Selector27~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(1) & ( \Selector23~1_combout\ & ( ((\din[1]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector27~0_combout\) ) ) ) # ( reg_inst2(1) & ( !\Selector23~1_combout\ & ( ((\din[1]~input_o\ & \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(1) & ( !\Selector23~1_combout\ & ( (\din[1]~input_o\ & 
-- \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~0_combout\,
	datab => \ALT_INV_din[1]~input_o\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Selector27~0_combout\,
	datae => ALT_INV_reg_inst2(1),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector27~1_combout\);

-- Location: FF_X35_Y4_N8
\reg_inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector27~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(1));

-- Location: LABCELL_X38_Y4_N30
\Selector100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = ( \pc[1]~1_combout\ & ( \pc[1]~0_combout\ & ( \din[1]~input_o\ ) ) ) # ( !\pc[1]~1_combout\ & ( \pc[1]~0_combout\ & ( reg_inst2(1) ) ) ) # ( \pc[1]~1_combout\ & ( !\pc[1]~0_combout\ & ( (\Add0~0_combout\ & 
-- !\estado_atual.reset2~q\) ) ) ) # ( !\pc[1]~1_combout\ & ( !\pc[1]~0_combout\ & ( reg_inst2(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010001000100010000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~0_combout\,
	datab => \ALT_INV_estado_atual.reset2~q\,
	datac => \ALT_INV_din[1]~input_o\,
	datad => ALT_INV_reg_inst2(1),
	datae => \ALT_INV_pc[1]~1_combout\,
	dataf => \ALT_INV_pc[1]~0_combout\,
	combout => \Selector100~0_combout\);

-- Location: FF_X38_Y4_N32
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector100~0_combout\,
	ena => \pc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: LABCELL_X38_Y4_N6
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( pc(2) & ( (!pc(0)) # (!pc(1)) ) ) # ( !pc(2) & ( (pc(0) & pc(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pc(0),
	datad => ALT_INV_pc(1),
	dataf => ALT_INV_pc(2),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X36_Y0_N35
\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LABCELL_X40_Y3_N27
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( reg_inst2(2) & ( \Add0~1_combout\ ) ) # ( !reg_inst2(2) & ( \Add0~1_combout\ & ( (\Equal0~0_combout\ & (!reg_inst1(2) $ (((!reg_inst1(0)) # (!reg_inst1(1)))))) ) ) ) # ( reg_inst2(2) & ( !\Add0~1_combout\ & ( 
-- (!\Equal0~0_combout\) # (!reg_inst1(2) $ (((reg_inst1(0) & reg_inst1(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010100100000000010101101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(2),
	datab => ALT_INV_reg_inst1(0),
	datac => ALT_INV_reg_inst1(1),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_reg_inst2(2),
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X40_Y3_N57
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ( reg_inst2(2) & ( \Selector23~1_combout\ & ( (((\Selector23~0_combout\ & \din[2]~input_o\)) # (\Selector13~0_combout\)) # (\Selector26~0_combout\) ) ) ) # ( !reg_inst2(2) & ( \Selector23~1_combout\ & ( ((\Selector23~0_combout\ & 
-- \din[2]~input_o\)) # (\Selector26~0_combout\) ) ) ) # ( reg_inst2(2) & ( !\Selector23~1_combout\ & ( ((\Selector23~0_combout\ & \din[2]~input_o\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(2) & ( !\Selector23~1_combout\ & ( (\Selector23~0_combout\ & 
-- \din[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111101010101010111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_din[2]~input_o\,
	datae => ALT_INV_reg_inst2(2),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector26~1_combout\);

-- Location: FF_X40_Y3_N59
\reg_inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector26~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(2));

-- Location: LABCELL_X38_Y4_N12
\Selector99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = ( reg_inst2(2) & ( \pc[1]~1_combout\ & ( (!\pc[1]~0_combout\ & (\Add0~1_combout\ & ((!\estado_atual.reset2~q\)))) # (\pc[1]~0_combout\ & (((\din[2]~input_o\)))) ) ) ) # ( !reg_inst2(2) & ( \pc[1]~1_combout\ & ( (!\pc[1]~0_combout\ 
-- & (\Add0~1_combout\ & ((!\estado_atual.reset2~q\)))) # (\pc[1]~0_combout\ & (((\din[2]~input_o\)))) ) ) ) # ( reg_inst2(2) & ( !\pc[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100100111000001010010011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~0_combout\,
	datab => \ALT_INV_Add0~1_combout\,
	datac => \ALT_INV_din[2]~input_o\,
	datad => \ALT_INV_estado_atual.reset2~q\,
	datae => ALT_INV_reg_inst2(2),
	dataf => \ALT_INV_pc[1]~1_combout\,
	combout => \Selector99~0_combout\);

-- Location: FF_X38_Y4_N14
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector99~0_combout\,
	ena => \pc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: LABCELL_X38_Y4_N21
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( pc(0) & ( !pc(3) $ (((!pc(2)) # (!pc(1)))) ) ) # ( !pc(0) & ( pc(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pc(3),
	datab => ALT_INV_pc(2),
	datac => ALT_INV_pc(1),
	dataf => ALT_INV_pc(0),
	combout => \Add0~2_combout\);

-- Location: LABCELL_X38_Y4_N42
\Selector98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = ( reg_inst2(3) & ( \pc[1]~1_combout\ & ( (!\pc[1]~0_combout\ & (\Add0~2_combout\ & ((!\estado_atual.reset2~q\)))) # (\pc[1]~0_combout\ & (((\din[3]~input_o\)))) ) ) ) # ( !reg_inst2(3) & ( \pc[1]~1_combout\ & ( (!\pc[1]~0_combout\ 
-- & (\Add0~2_combout\ & ((!\estado_atual.reset2~q\)))) # (\pc[1]~0_combout\ & (((\din[3]~input_o\)))) ) ) ) # ( reg_inst2(3) & ( !\pc[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010011000000110101001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~2_combout\,
	datab => \ALT_INV_din[3]~input_o\,
	datac => \ALT_INV_pc[1]~0_combout\,
	datad => \ALT_INV_estado_atual.reset2~q\,
	datae => ALT_INV_reg_inst2(3),
	dataf => \ALT_INV_pc[1]~1_combout\,
	combout => \Selector98~0_combout\);

-- Location: FF_X38_Y4_N44
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector98~0_combout\,
	ena => \pc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LABCELL_X38_Y4_N0
\Selector97~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = ( \estado_atual.reset2~q\ & ( \pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & (reg_inst2(4))) # (\pc[1]~1_combout\ & ((\din[4]~input_o\))) ) ) ) # ( !\estado_atual.reset2~q\ & ( \pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & 
-- (reg_inst2(4))) # (\pc[1]~1_combout\ & ((\din[4]~input_o\))) ) ) ) # ( \estado_atual.reset2~q\ & ( !\pc[1]~0_combout\ & ( (reg_inst2(4) & !\pc[1]~1_combout\) ) ) ) # ( !\estado_atual.reset2~q\ & ( !\pc[1]~0_combout\ & ( (!\pc[1]~1_combout\ & 
-- (reg_inst2(4))) # (\pc[1]~1_combout\ & ((\Add0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000000001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst2(4),
	datab => \ALT_INV_din[4]~input_o\,
	datac => \ALT_INV_Add0~3_combout\,
	datad => \ALT_INV_pc[1]~1_combout\,
	datae => \ALT_INV_estado_atual.reset2~q\,
	dataf => \ALT_INV_pc[1]~0_combout\,
	combout => \Selector97~0_combout\);

-- Location: FF_X38_Y4_N2
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector97~0_combout\,
	ena => \pc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: LABCELL_X38_Y4_N18
\Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = ( pc(1) & ( !pc(4) $ (((!pc(3)) # ((!pc(2)) # (!pc(0))))) ) ) # ( !pc(1) & ( pc(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pc(3),
	datab => ALT_INV_pc(2),
	datac => ALT_INV_pc(0),
	datad => ALT_INV_pc(4),
	dataf => ALT_INV_pc(1),
	combout => \Add0~3_combout\);

-- Location: LABCELL_X40_Y3_N24
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( reg_inst2(4) & ( \Add0~3_combout\ ) ) # ( !reg_inst2(4) & ( \Add0~3_combout\ & ( (\Equal0~0_combout\ & (!reg_inst1(2) $ (((!reg_inst1(0)) # (!reg_inst1(1)))))) ) ) ) # ( reg_inst2(4) & ( !\Add0~3_combout\ & ( 
-- (!\Equal0~0_combout\) # (!reg_inst1(2) $ (((reg_inst1(0) & reg_inst1(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111100100000101000001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(2),
	datab => ALT_INV_reg_inst1(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_reg_inst1(1),
	datae => ALT_INV_reg_inst2(4),
	dataf => \ALT_INV_Add0~3_combout\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X40_Y3_N45
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( reg_inst2(4) & ( \Selector23~1_combout\ & ( (((\din[4]~input_o\ & \Selector23~0_combout\)) # (\Selector24~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(4) & ( \Selector23~1_combout\ & ( ((\din[4]~input_o\ & 
-- \Selector23~0_combout\)) # (\Selector24~0_combout\) ) ) ) # ( reg_inst2(4) & ( !\Selector23~1_combout\ & ( ((\din[4]~input_o\ & \Selector23~0_combout\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(4) & ( !\Selector23~1_combout\ & ( (\din[4]~input_o\ & 
-- \Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110011011100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[4]~input_o\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => ALT_INV_reg_inst2(4),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X40_Y3_N47
\reg_inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector24~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(4));

-- Location: LABCELL_X35_Y2_N6
\regb[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[4]~input_o\,
	combout => \regb[4]~feeder_combout\);

-- Location: FF_X35_Y2_N8
\regb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[4]~feeder_combout\,
	asdata => reg_inst2(4),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(4));

-- Location: LABCELL_X36_Y2_N54
\regb[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[2]~feeder_combout\ = ( \din[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[2]~input_o\,
	combout => \regb[2]~feeder_combout\);

-- Location: FF_X36_Y2_N56
\regb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[2]~feeder_combout\,
	asdata => reg_inst2(2),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(2));

-- Location: LABCELL_X36_Y2_N48
\regb[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_din[1]~input_o\,
	combout => \regb[1]~feeder_combout\);

-- Location: FF_X36_Y2_N50
\regb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[1]~feeder_combout\,
	asdata => reg_inst2(1),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(1));

-- Location: MLABCELL_X37_Y4_N33
\reg_ula~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~4_combout\ = ( !reg_inst1(14) & ( (reg_inst1(13) & (!reg_inst1(15) & ((!reg_inst1(11)) # (!reg_inst1(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010001000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(13),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(11),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(14),
	combout => \reg_ula~4_combout\);

-- Location: MLABCELL_X37_Y4_N45
\reg_ula~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~6_combout\ = ( !reg_inst1(13) & ( (!reg_inst1(14) & (!reg_inst1(15) & ((reg_inst1(12)) # (reg_inst1(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000001000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(13),
	combout => \reg_ula~6_combout\);

-- Location: LABCELL_X36_Y2_N57
\regb[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[0]~input_o\,
	combout => \regb[0]~feeder_combout\);

-- Location: FF_X36_Y2_N59
\regb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[0]~feeder_combout\,
	asdata => reg_inst2(0),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(0));

-- Location: LABCELL_X36_Y4_N48
\reg_ula~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~2_combout\ = ( rega(0) & ( regb(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(0),
	dataf => ALT_INV_rega(0),
	combout => \reg_ula~2_combout\);

-- Location: MLABCELL_X37_Y4_N42
\reg_ula~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~48_combout\ = ( reg_inst1(13) & ( (!reg_inst1(14) & (!reg_inst1(15) & reg_inst1(11))) ) ) # ( !reg_inst1(13) & ( (reg_inst1(14) & (!reg_inst1(15) & !reg_inst1(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(15),
	datad => ALT_INV_reg_inst1(11),
	dataf => ALT_INV_reg_inst1(13),
	combout => \reg_ula~48_combout\);

-- Location: LABCELL_X36_Y2_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( rega(0) ) + ( regb(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( rega(0) ) + ( regb(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(0),
	datac => ALT_INV_rega(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X38_Y3_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( rega(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( rega(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X37_Y4_N54
\reg_ula~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~3_combout\ = ( \Add1~1_sumout\ & ( \Add3~1_sumout\ & ( (reg_inst1(12) & (\reg_ula~48_combout\ & ((!\reg_ula~2_combout\) # (reg_inst1(14))))) ) ) ) # ( !\Add1~1_sumout\ & ( \Add3~1_sumout\ & ( (\reg_ula~48_combout\ & (((!\reg_ula~2_combout\ & 
-- reg_inst1(12))) # (reg_inst1(14)))) ) ) ) # ( \Add1~1_sumout\ & ( !\Add3~1_sumout\ & ( (!\reg_ula~2_combout\ & (!reg_inst1(14) & (reg_inst1(12) & \reg_ula~48_combout\))) ) ) ) # ( !\Add1~1_sumout\ & ( !\Add3~1_sumout\ & ( (\reg_ula~48_combout\ & 
-- ((!reg_inst1(14) & (!\reg_ula~2_combout\ & reg_inst1(12))) # (reg_inst1(14) & ((!reg_inst1(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111000000000000000100000000000001110110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~2_combout\,
	datab => ALT_INV_reg_inst1(14),
	datac => ALT_INV_reg_inst1(12),
	datad => \ALT_INV_reg_ula~48_combout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => \reg_ula~3_combout\);

-- Location: MLABCELL_X37_Y3_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( rega(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( rega(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(0),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: MLABCELL_X37_Y4_N30
\Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = ( !reg_inst1(13) & ( (!reg_inst1(15) & (reg_inst1(14) & reg_inst1(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(14),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(13),
	combout => \Equal15~0_combout\);

-- Location: MLABCELL_X37_Y4_N39
\reg_ula~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~1_combout\ = ( reg_ula(0) & ( (!\reg_ula~0_combout\ & ((!\Equal15~0_combout\) # ((\Add4~1_sumout\ & reg_inst1(11))))) ) ) # ( !reg_ula(0) & ( (\Add4~1_sumout\ & (reg_inst1(11) & (\Equal15~0_combout\ & !\reg_ula~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000011110001000000001111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_sumout\,
	datab => ALT_INV_reg_inst1(11),
	datac => \ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_reg_ula~0_combout\,
	dataf => ALT_INV_reg_ula(0),
	combout => \reg_ula~1_combout\);

-- Location: MLABCELL_X37_Y4_N36
\reg_ula~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~49_combout\ = ( regb(0) & ( !reg_inst1(12) ) ) # ( !regb(0) & ( !reg_inst1(12) $ (((!reg_inst1(11) & !rega(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_rega(0),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_regb(0),
	combout => \reg_ula~49_combout\);

-- Location: MLABCELL_X37_Y4_N0
\reg_ula~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~5_combout\ = ( \Add1~1_sumout\ & ( reg_inst1(13) & ( (!reg_inst1(14) & (\reg_ula~49_combout\ & !reg_inst1(15))) ) ) ) # ( !\Add1~1_sumout\ & ( reg_inst1(13) & ( (!reg_inst1(14) & (!reg_inst1(11) & (\reg_ula~49_combout\ & !reg_inst1(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(11),
	datac => \ALT_INV_reg_ula~49_combout\,
	datad => ALT_INV_reg_inst1(15),
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => ALT_INV_reg_inst1(13),
	combout => \reg_ula~5_combout\);

-- Location: MLABCELL_X37_Y4_N9
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !reg_inst1(13) & ( (!reg_inst1(14) & (!reg_inst1(15) & (reg_inst1(11) & !reg_inst1(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(14),
	datab => ALT_INV_reg_inst1(15),
	datac => ALT_INV_reg_inst1(11),
	datad => ALT_INV_reg_inst1(12),
	dataf => ALT_INV_reg_inst1(13),
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X36_Y4_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !rega(0) $ (!regb(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !rega(0) $ (!regb(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add2~3\ = SHARE((!regb(0)) # (rega(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(0),
	datad => ALT_INV_regb(0),
	cin => GND,
	sharein => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\,
	shareout => \Add2~3\);

-- Location: MLABCELL_X37_Y4_N24
\reg_ula~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~7_combout\ = ( \Add1~1_sumout\ & ( \Add2~1_sumout\ & ( ((\Equal7~0_combout\ & ((!reg_inst1(11)) # (\reg_ula~2_combout\)))) # (\Equal6~0_combout\) ) ) ) # ( !\Add1~1_sumout\ & ( \Add2~1_sumout\ & ( (\Equal7~0_combout\ & (!\Equal6~0_combout\ & 
-- ((!reg_inst1(11)) # (\reg_ula~2_combout\)))) ) ) ) # ( \Add1~1_sumout\ & ( !\Add2~1_sumout\ & ( ((\reg_ula~2_combout\ & (reg_inst1(11) & \Equal7~0_combout\))) # (\Equal6~0_combout\) ) ) ) # ( !\Add1~1_sumout\ & ( !\Add2~1_sumout\ & ( (\reg_ula~2_combout\ 
-- & (reg_inst1(11) & (\Equal7~0_combout\ & !\Equal6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000011111111100001101000000000000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~2_combout\,
	datab => ALT_INV_reg_inst1(11),
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_Equal6~0_combout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \reg_ula~7_combout\);

-- Location: MLABCELL_X37_Y4_N18
\reg_ula~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~8_combout\ = ( \reg_ula~5_combout\ & ( !\reg_ula~7_combout\ & ( \reg_ula~6_combout\ ) ) ) # ( !\reg_ula~5_combout\ & ( !\reg_ula~7_combout\ & ( (((!\reg_ula~3_combout\ & !\reg_ula~1_combout\)) # (\reg_ula~6_combout\)) # (\reg_ula~4_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101110111001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~4_combout\,
	datab => \ALT_INV_reg_ula~6_combout\,
	datac => \ALT_INV_reg_ula~3_combout\,
	datad => \ALT_INV_reg_ula~1_combout\,
	datae => \ALT_INV_reg_ula~5_combout\,
	dataf => \ALT_INV_reg_ula~7_combout\,
	combout => \reg_ula~8_combout\);

-- Location: MLABCELL_X37_Y4_N48
\Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = ( reg_ula(0) & ( \reg_ula~8_combout\ & ( (!\estado_atual.executa~q\ & (\estado_atual.reset1~DUPLICATE_q\)) # (\estado_atual.executa~q\ & (((\reg_inst2~0_combout\) # (\estado_atual~29_combout\)))) ) ) ) # ( reg_ula(0) & ( 
-- !\reg_ula~8_combout\ & ( (\estado_atual.reset1~DUPLICATE_q\) # (\estado_atual.executa~q\) ) ) ) # ( !reg_ula(0) & ( !\reg_ula~8_combout\ & ( (\estado_atual.executa~q\ & (!\estado_atual~29_combout\ & !\reg_inst2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000011101110111011100000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.executa~q\,
	datab => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	datac => \ALT_INV_estado_atual~29_combout\,
	datad => \ALT_INV_reg_inst2~0_combout\,
	datae => ALT_INV_reg_ula(0),
	dataf => \ALT_INV_reg_ula~8_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X37_Y4_N50
\reg_ula[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector76~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(0));

-- Location: LABCELL_X36_Y3_N27
\Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = ( reg_ula(0) & ( ((!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(0))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[0]~input_o\)))) # (\estado_atual.resultado~q\) ) ) # ( !reg_ula(0) & ( (!\estado_atual.resultado~q\ & 
-- ((!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(0))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datab => \ALT_INV_estado_atual.resultado~q\,
	datac => ALT_INV_reg_inst2(0),
	datad => \ALT_INV_din[0]~input_o\,
	dataf => ALT_INV_reg_ula(0),
	combout => \Selector44~0_combout\);

-- Location: LABCELL_X40_Y3_N15
\estado_atual~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~41_combout\ = ( \Equal0~0_combout\ & ( (\estado_atual.executa~q\ & (reg_inst1(0) & (!reg_inst1(1) & !reg_inst1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.executa~q\,
	datab => ALT_INV_reg_inst1(0),
	datac => ALT_INV_reg_inst1(1),
	datad => ALT_INV_reg_inst1(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \estado_atual~41_combout\);

-- Location: FF_X40_Y3_N16
\estado_atual.movad\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movad~q\);

-- Location: LABCELL_X36_Y3_N12
\rega[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rega[10]~0_combout\ = (!\estado_atual.movae~DUPLICATE_q\ & (!\estado_atual.movad~q\ & !\estado_atual.resultado~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datac => \ALT_INV_estado_atual.movad~q\,
	datad => \ALT_INV_estado_atual.resultado~q\,
	combout => \rega[10]~0_combout\);

-- Location: LABCELL_X36_Y3_N45
\rega[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rega[0]~1_combout\ = ( \estado_atual.movad~q\ & ( \estado_atual.reset1~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\estado_atual.movad~q\ & ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\reset~input_o\ & ((\estado_atual.movae~DUPLICATE_q\) # 
-- (\estado_atual.resultado~q\))) ) ) ) # ( \estado_atual.movad~q\ & ( !\estado_atual.reset1~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\estado_atual.movad~q\ & ( !\estado_atual.reset1~DUPLICATE_q\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_estado_atual.resultado~q\,
	datad => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datae => \ALT_INV_estado_atual.movad~q\,
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \rega[0]~1_combout\);

-- Location: FF_X37_Y3_N56
\rega[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector44~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(0));

-- Location: MLABCELL_X37_Y3_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( rega(1) ) + ( VCC ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( rega(1) ) + ( VCC ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: LABCELL_X38_Y3_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( rega(1) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( rega(1) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(1),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X36_Y1_N0
\reg_ula~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~10_combout\ = ( \Add4~5_sumout\ & ( \Add3~5_sumout\ & ( (\reg_ula~0_combout\ & ((!rega(1) & (\reg_ula~9_combout\ & regb(1))) # (rega(1) & (!\reg_ula~9_combout\ $ (!regb(1)))))) ) ) ) # ( !\Add4~5_sumout\ & ( \Add3~5_sumout\ & ( 
-- (!\reg_ula~0_combout\ & (((!\reg_ula~9_combout\)))) # (\reg_ula~0_combout\ & ((!rega(1) & (\reg_ula~9_combout\ & regb(1))) # (rega(1) & (!\reg_ula~9_combout\ $ (!regb(1)))))) ) ) ) # ( \Add4~5_sumout\ & ( !\Add3~5_sumout\ & ( (!rega(1) & 
-- (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (regb(1))))) # (rega(1) & (!\reg_ula~9_combout\ $ (((!\reg_ula~0_combout\) # (!regb(1)))))) ) ) ) # ( !\Add4~5_sumout\ & ( !\Add3~5_sumout\ & ( (!\reg_ula~0_combout\) # ((!rega(1) & (\reg_ula~9_combout\ & 
-- regb(1))) # (rega(1) & (!\reg_ula~9_combout\ $ (!regb(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111011110000011010001111011000001110100100000000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(1),
	datab => \ALT_INV_reg_ula~0_combout\,
	datac => \ALT_INV_reg_ula~9_combout\,
	datad => ALT_INV_regb(1),
	datae => \ALT_INV_Add4~5_sumout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \reg_ula~10_combout\);

-- Location: LABCELL_X35_Y1_N18
\reg_ula~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~16_combout\ = ( \reg_ula~14_combout\ & ( (!rega(1) & (((!regb(1))) # (\reg_ula~15_combout\))) # (rega(1) & (\reg_ula~15_combout\ & ((!\reg_ula~13_combout\) # (!regb(1))))) ) ) # ( !\reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & ((!rega(1) & 
-- ((regb(1)))) # (rega(1) & ((!\reg_ula~13_combout\) # (!regb(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110010000100010011001010111011001100101011101100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(1),
	datab => \ALT_INV_reg_ula~15_combout\,
	datac => \ALT_INV_reg_ula~13_combout\,
	datad => ALT_INV_regb(1),
	dataf => \ALT_INV_reg_ula~14_combout\,
	combout => \reg_ula~16_combout\);

-- Location: LABCELL_X36_Y2_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( rega(1) ) + ( regb(1) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( rega(1) ) + ( regb(1) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(1),
	datac => ALT_INV_rega(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X36_Y4_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !regb(1) $ (rega(1)) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !regb(1) $ (rega(1)) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~7\ = SHARE((!regb(1) & rega(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(1),
	datad => ALT_INV_rega(1),
	cin => \Add2~2\,
	sharein => \Add2~3\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\,
	shareout => \Add2~7\);

-- Location: LABCELL_X36_Y1_N12
\reg_ula~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~74_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~5_sumout\))) # (\Equal7~0_combout\ & (\Add2~5_sumout\))) # (\reg_ula~16_combout\)) ) ) # ( \reg_ula~12_combout\ & ( ((\Equal7~0_combout\ & (regb(1) & (rega(1))))) # 
-- (\reg_ula~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010111111111000000011111111110101111111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~0_combout\,
	datab => ALT_INV_regb(1),
	datac => ALT_INV_rega(1),
	datad => \ALT_INV_reg_ula~16_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	datag => \ALT_INV_Add2~5_sumout\,
	combout => \reg_ula~74_combout\);

-- Location: LABCELL_X36_Y1_N36
\Selector75~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = ( reg_ula(1) & ( \reg_ula~74_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(1) & ( \reg_ula~74_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(1) & ( !\reg_ula~74_combout\ & ( 
-- (!\Selector74~0_combout\) # ((!\reg_ula~10_combout\ & (\Selector75~0_combout\ & \reg_ula~11_combout\))) ) ) ) # ( !reg_ula(1) & ( !\reg_ula~74_combout\ & ( (!\reg_ula~10_combout\ & (\Selector75~0_combout\ & \reg_ula~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010111100001111001000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~10_combout\,
	datab => \ALT_INV_Selector75~0_combout\,
	datac => \ALT_INV_Selector74~0_combout\,
	datad => \ALT_INV_reg_ula~11_combout\,
	datae => ALT_INV_reg_ula(1),
	dataf => \ALT_INV_reg_ula~74_combout\,
	combout => \Selector75~1_combout\);

-- Location: FF_X36_Y1_N37
\reg_ula[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector75~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(1));

-- Location: LABCELL_X36_Y3_N0
\Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ( \estado_atual.resultado~q\ & ( reg_ula(1) ) ) # ( !\estado_atual.resultado~q\ & ( reg_ula(1) & ( (!\estado_atual.movae~DUPLICATE_q\ & ((reg_inst2(1)))) # (\estado_atual.movae~DUPLICATE_q\ & (\din[1]~input_o\)) ) ) ) # ( 
-- !\estado_atual.resultado~q\ & ( !reg_ula(1) & ( (!\estado_atual.movae~DUPLICATE_q\ & ((reg_inst2(1)))) # (\estado_atual.movae~DUPLICATE_q\ & (\din[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000000000110101001101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[1]~input_o\,
	datab => ALT_INV_reg_inst2(1),
	datac => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datae => \ALT_INV_estado_atual.resultado~q\,
	dataf => ALT_INV_reg_ula(1),
	combout => \Selector43~0_combout\);

-- Location: FF_X37_Y3_N50
\rega[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector43~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(1));

-- Location: MLABCELL_X37_Y3_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( rega(2) ) + ( VCC ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( rega(2) ) + ( VCC ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X38_Y3_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( rega(2) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( rega(2) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(2),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X36_Y1_N18
\reg_ula~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~17_combout\ = ( \Add4~9_sumout\ & ( \Add3~9_sumout\ & ( (\reg_ula~0_combout\ & ((!rega(2) & (\reg_ula~9_combout\ & regb(2))) # (rega(2) & (!\reg_ula~9_combout\ $ (!regb(2)))))) ) ) ) # ( !\Add4~9_sumout\ & ( \Add3~9_sumout\ & ( 
-- (!\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # ((rega(2) & regb(2))))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!rega(2) $ (!regb(2))))) ) ) ) # ( \Add4~9_sumout\ & ( !\Add3~9_sumout\ & ( (!rega(2) & (\reg_ula~9_combout\ & 
-- ((!\reg_ula~0_combout\) # (regb(2))))) # (rega(2) & (!\reg_ula~9_combout\ $ (((!regb(2)) # (!\reg_ula~0_combout\))))) ) ) ) # ( !\Add4~9_sumout\ & ( !\Add3~9_sumout\ & ( (!\reg_ula~0_combout\) # ((!rega(2) & (\reg_ula~9_combout\ & regb(2))) # (rega(2) & 
-- (!\reg_ula~9_combout\ $ (!regb(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010110001100110001011011001100000101100000000000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(2),
	datab => \ALT_INV_reg_ula~9_combout\,
	datac => ALT_INV_regb(2),
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => \ALT_INV_Add4~9_sumout\,
	dataf => \ALT_INV_Add3~9_sumout\,
	combout => \reg_ula~17_combout\);

-- Location: LABCELL_X35_Y1_N3
\reg_ula~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~18_combout\ = ( rega(2) & ( \reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & ((!regb(2)) # (!\reg_ula~13_combout\))) ) ) ) # ( !rega(2) & ( \reg_ula~14_combout\ & ( (!regb(2)) # (\reg_ula~15_combout\) ) ) ) # ( rega(2) & ( !\reg_ula~14_combout\ & 
-- ( (\reg_ula~15_combout\ & ((!regb(2)) # (!\reg_ula~13_combout\))) ) ) ) # ( !rega(2) & ( !\reg_ula~14_combout\ & ( (\reg_ula~15_combout\ & regb(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011000011110011111100110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~15_combout\,
	datac => ALT_INV_regb(2),
	datad => \ALT_INV_reg_ula~13_combout\,
	datae => ALT_INV_rega(2),
	dataf => \ALT_INV_reg_ula~14_combout\,
	combout => \reg_ula~18_combout\);

-- Location: LABCELL_X36_Y2_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( regb(2) ) + ( rega(2) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( regb(2) ) + ( rega(2) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(2),
	datad => ALT_INV_regb(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X36_Y4_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !regb(2) $ (rega(2)) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !regb(2) $ (rega(2)) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~11\ = SHARE((!regb(2) & rega(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(2),
	datad => ALT_INV_rega(2),
	cin => \Add2~6\,
	sharein => \Add2~7\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\,
	shareout => \Add2~11\);

-- Location: LABCELL_X36_Y1_N42
\reg_ula~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~70_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~9_sumout\))) # (\Equal7~0_combout\ & (\Add2~9_sumout\))) # (\reg_ula~18_combout\)) ) ) # ( \reg_ula~12_combout\ & ( ((regb(2) & (\Equal7~0_combout\ & (rega(2))))) # 
-- (\reg_ula~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111111111000000011111111111001111111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(2),
	datab => \ALT_INV_Equal7~0_combout\,
	datac => ALT_INV_rega(2),
	datad => \ALT_INV_reg_ula~18_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	datag => \ALT_INV_Add2~9_sumout\,
	combout => \reg_ula~70_combout\);

-- Location: LABCELL_X36_Y1_N24
\Selector74~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = ( reg_ula(2) & ( \reg_ula~70_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(2) & ( \reg_ula~70_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(2) & ( !\reg_ula~70_combout\ & ( 
-- (!\Selector74~0_combout\) # ((\Selector75~0_combout\ & (!\reg_ula~17_combout\ & \reg_ula~11_combout\))) ) ) ) # ( !reg_ula(2) & ( !\reg_ula~70_combout\ & ( (\Selector75~0_combout\ & (!\reg_ula~17_combout\ & \reg_ula~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000101010101011101000110011001100111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector74~0_combout\,
	datab => \ALT_INV_Selector75~0_combout\,
	datac => \ALT_INV_reg_ula~17_combout\,
	datad => \ALT_INV_reg_ula~11_combout\,
	datae => ALT_INV_reg_ula(2),
	dataf => \ALT_INV_reg_ula~70_combout\,
	combout => \Selector74~1_combout\);

-- Location: FF_X36_Y1_N25
\reg_ula[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector74~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(2));

-- Location: LABCELL_X36_Y3_N21
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \estado_atual.movae~DUPLICATE_q\ & ( (!\estado_atual.resultado~q\ & (\din[2]~input_o\)) # (\estado_atual.resultado~q\ & ((reg_ula(2)))) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( (!\estado_atual.resultado~q\ & 
-- ((reg_inst2(2)))) # (\estado_atual.resultado~q\ & (reg_ula(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100110101001100000011111100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[2]~input_o\,
	datab => ALT_INV_reg_ula(2),
	datac => \ALT_INV_estado_atual.resultado~q\,
	datad => ALT_INV_reg_inst2(2),
	datae => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X36_Y3_N23
\rega[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector42~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(2));

-- Location: LABCELL_X38_Y3_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( rega(3) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( rega(3) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(3),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X38_Y3_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( rega(4) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( rega(4) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(4),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X37_Y3_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( rega(3) ) + ( VCC ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( rega(3) ) + ( VCC ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X37_Y3_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( rega(4) ) + ( VCC ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( rega(4) ) + ( VCC ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(4),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: MLABCELL_X37_Y5_N12
\reg_ula~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~21_combout\ = ( \Add3~17_sumout\ & ( \Add4~17_sumout\ & ( (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & (rega(4) & regb(4))) # (\reg_ula~9_combout\ & (!rega(4) $ (!regb(4)))))) ) ) ) # ( !\Add3~17_sumout\ & ( \Add4~17_sumout\ & ( 
-- (!\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (rega(4) & regb(4)))) # (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (!rega(4) $ (!regb(4))))) ) ) ) # ( \Add3~17_sumout\ & ( !\Add4~17_sumout\ & ( (!\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # 
-- ((rega(4) & regb(4))))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!rega(4) $ (!regb(4))))) ) ) ) # ( !\Add3~17_sumout\ & ( !\Add4~17_sumout\ & ( (!\reg_ula~0_combout\) # ((!\reg_ula~9_combout\ & (rega(4) & regb(4))) # (\reg_ula~9_combout\ & 
-- (!rega(4) $ (!regb(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111011110100010011001101001000101010101100000000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~9_combout\,
	datab => \ALT_INV_reg_ula~0_combout\,
	datac => ALT_INV_rega(4),
	datad => ALT_INV_regb(4),
	datae => \ALT_INV_Add3~17_sumout\,
	dataf => \ALT_INV_Add4~17_sumout\,
	combout => \reg_ula~21_combout\);

-- Location: MLABCELL_X37_Y5_N33
\reg_ula~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~22_combout\ = ( regb(4) & ( (\reg_ula~15_combout\ & ((!\reg_ula~13_combout\) # (!rega(4)))) ) ) # ( !regb(4) & ( (!rega(4) & (\reg_ula~14_combout\)) # (rega(4) & ((\reg_ula~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~13_combout\,
	datab => \ALT_INV_reg_ula~14_combout\,
	datac => \ALT_INV_reg_ula~15_combout\,
	datad => ALT_INV_rega(4),
	dataf => ALT_INV_regb(4),
	combout => \reg_ula~22_combout\);

-- Location: LABCELL_X35_Y2_N39
\regb[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[3]~feeder_combout\ = ( \din[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[3]~input_o\,
	combout => \regb[3]~feeder_combout\);

-- Location: FF_X35_Y2_N41
\regb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[3]~feeder_combout\,
	asdata => reg_inst2(3),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(3));

-- Location: LABCELL_X36_Y2_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( regb(3) ) + ( rega(3) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( regb(3) ) + ( rega(3) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(3),
	datad => ALT_INV_regb(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X36_Y2_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( rega(4) ) + ( regb(4) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( rega(4) ) + ( regb(4) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(4),
	datac => ALT_INV_rega(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X36_Y4_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !regb(3) $ (rega(3)) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !regb(3) $ (rega(3)) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~15\ = SHARE((!regb(3) & rega(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(3),
	datad => ALT_INV_rega(3),
	cin => \Add2~10\,
	sharein => \Add2~11\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\,
	shareout => \Add2~15\);

-- Location: LABCELL_X36_Y4_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !regb(4) $ (rega(4)) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !regb(4) $ (rega(4)) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~19\ = SHARE((!regb(4) & rega(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(4),
	datac => ALT_INV_rega(4),
	cin => \Add2~14\,
	sharein => \Add2~15\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\,
	shareout => \Add2~19\);

-- Location: MLABCELL_X37_Y5_N6
\reg_ula~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~62_combout\ = ( !\reg_ula~12_combout\ & ( ((!\Equal7~0_combout\ & (((\Add1~17_sumout\)))) # (\Equal7~0_combout\ & (\Add2~17_sumout\))) # (\reg_ula~22_combout\) ) ) # ( \reg_ula~12_combout\ & ( ((\Equal7~0_combout\ & (rega(4) & (regb(4))))) # 
-- (\reg_ula~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011101010111010101010101011111011111110111110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~22_combout\,
	datab => \ALT_INV_Equal7~0_combout\,
	datac => ALT_INV_rega(4),
	datad => ALT_INV_regb(4),
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	datag => \ALT_INV_Add2~17_sumout\,
	combout => \reg_ula~62_combout\);

-- Location: MLABCELL_X37_Y5_N0
\Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = ( reg_ula(4) & ( \reg_ula~62_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(4) & ( \reg_ula~62_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(4) & ( !\reg_ula~62_combout\ & ( 
-- (!\Selector74~0_combout\) # ((\Selector75~0_combout\ & (\reg_ula~11_combout\ & !\reg_ula~21_combout\))) ) ) ) # ( !reg_ula(4) & ( !\reg_ula~62_combout\ & ( (\Selector75~0_combout\ & (\reg_ula~11_combout\ & !\reg_ula~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000111100011111000001010101010101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector75~0_combout\,
	datab => \ALT_INV_reg_ula~11_combout\,
	datac => \ALT_INV_Selector74~0_combout\,
	datad => \ALT_INV_reg_ula~21_combout\,
	datae => ALT_INV_reg_ula(4),
	dataf => \ALT_INV_reg_ula~62_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X37_Y5_N2
\reg_ula[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector72~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(4));

-- Location: LABCELL_X36_Y3_N33
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( \estado_atual.movae~DUPLICATE_q\ & ( (!\estado_atual.resultado~q\ & (\din[4]~input_o\)) # (\estado_atual.resultado~q\ & ((reg_ula(4)))) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( (!\estado_atual.resultado~q\ & (reg_inst2(4))) 
-- # (\estado_atual.resultado~q\ & ((reg_ula(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000011111101000100011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst2(4),
	datab => \ALT_INV_estado_atual.resultado~q\,
	datac => \ALT_INV_din[4]~input_o\,
	datad => ALT_INV_reg_ula(4),
	datae => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	combout => \Selector40~0_combout\);

-- Location: FF_X37_Y3_N53
\rega[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector40~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(4));

-- Location: LABCELL_X38_Y3_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( rega(5) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( rega(5) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(5),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X35_Y2_N57
\regb[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[5]~input_o\,
	combout => \regb[5]~feeder_combout\);

-- Location: LABCELL_X41_Y4_N24
\Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ( \Selector23~0_combout\ & ( ((reg_inst2(5) & ((\Selector13~0_combout\) # (\Selector23~1_combout\)))) # (\din[5]~input_o\) ) ) # ( !\Selector23~0_combout\ & ( (reg_inst2(5) & ((\Selector13~0_combout\) # (\Selector23~1_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~1_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_din[5]~input_o\,
	datad => ALT_INV_reg_inst2(5),
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \Selector23~2_combout\);

-- Location: FF_X41_Y4_N26
\reg_inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector23~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(5));

-- Location: FF_X35_Y2_N59
\regb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[5]~feeder_combout\,
	asdata => reg_inst2(5),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(5));

-- Location: MLABCELL_X37_Y3_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( rega(5) ) + ( VCC ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( rega(5) ) + ( VCC ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(5),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: MLABCELL_X37_Y5_N18
\reg_ula~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~23_combout\ = ( regb(5) & ( \Add4~21_sumout\ & ( (!\reg_ula~0_combout\ & (\reg_ula~9_combout\ & (!\Add3~21_sumout\))) # (\reg_ula~0_combout\ & (!\reg_ula~9_combout\ $ (((!rega(5)))))) ) ) ) # ( !regb(5) & ( \Add4~21_sumout\ & ( 
-- (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\ & (!\Add3~21_sumout\)) # (\reg_ula~0_combout\ & ((rega(5)))))) ) ) ) # ( regb(5) & ( !\Add4~21_sumout\ & ( (!\reg_ula~0_combout\ & ((!\reg_ula~9_combout\) # ((!\Add3~21_sumout\)))) # (\reg_ula~0_combout\ & 
-- (!\reg_ula~9_combout\ $ (((!rega(5)))))) ) ) ) # ( !regb(5) & ( !\Add4~21_sumout\ & ( (!\reg_ula~9_combout\ & (((!\reg_ula~0_combout\)))) # (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\ & (!\Add3~21_sumout\)) # (\reg_ula~0_combout\ & ((rega(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000101111011100101101001000100000001010100010001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~9_combout\,
	datab => \ALT_INV_Add3~21_sumout\,
	datac => ALT_INV_rega(5),
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => ALT_INV_regb(5),
	dataf => \ALT_INV_Add4~21_sumout\,
	combout => \reg_ula~23_combout\);

-- Location: LABCELL_X38_Y5_N27
\reg_ula~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~24_combout\ = ( rega(5) & ( \reg_ula~13_combout\ & ( (\reg_ula~15_combout\ & !regb(5)) ) ) ) # ( !rega(5) & ( \reg_ula~13_combout\ & ( (!regb(5) & ((\reg_ula~14_combout\))) # (regb(5) & (\reg_ula~15_combout\)) ) ) ) # ( rega(5) & ( 
-- !\reg_ula~13_combout\ & ( \reg_ula~15_combout\ ) ) ) # ( !rega(5) & ( !\reg_ula~13_combout\ & ( (!regb(5) & ((\reg_ula~14_combout\))) # (regb(5) & (\reg_ula~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101010101010101010100110011010101010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~15_combout\,
	datab => \ALT_INV_reg_ula~14_combout\,
	datad => ALT_INV_regb(5),
	datae => ALT_INV_rega(5),
	dataf => \ALT_INV_reg_ula~13_combout\,
	combout => \reg_ula~24_combout\);

-- Location: LABCELL_X36_Y2_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( regb(5) ) + ( rega(5) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( regb(5) ) + ( rega(5) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(5),
	datad => ALT_INV_regb(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X36_Y4_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !regb(5) $ (rega(5)) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !regb(5) $ (rega(5)) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~23\ = SHARE((!regb(5) & rega(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(5),
	datad => ALT_INV_rega(5),
	cin => \Add2~18\,
	sharein => \Add2~19\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\,
	shareout => \Add2~23\);

-- Location: MLABCELL_X37_Y5_N24
\reg_ula~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~58_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~21_sumout\))) # (\Equal7~0_combout\ & (\Add2~21_sumout\)))) # (\reg_ula~24_combout\) ) ) # ( \reg_ula~12_combout\ & ( ((regb(5) & (rega(5) & (\Equal7~0_combout\)))) # 
-- (\reg_ula~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101011111010101010101011111111111010111110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~24_combout\,
	datab => ALT_INV_regb(5),
	datac => ALT_INV_rega(5),
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	datag => \ALT_INV_Add2~21_sumout\,
	combout => \reg_ula~58_combout\);

-- Location: MLABCELL_X37_Y5_N54
\Selector71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = ( reg_ula(5) & ( \reg_ula~58_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(5) & ( \reg_ula~58_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(5) & ( !\reg_ula~58_combout\ & ( 
-- (!\Selector74~0_combout\) # ((!\reg_ula~23_combout\ & (\reg_ula~11_combout\ & \Selector75~0_combout\))) ) ) ) # ( !reg_ula(5) & ( !\reg_ula~58_combout\ & ( (!\reg_ula~23_combout\ & (\reg_ula~11_combout\ & \Selector75~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010111100001111001000000000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~23_combout\,
	datab => \ALT_INV_reg_ula~11_combout\,
	datac => \ALT_INV_Selector74~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => ALT_INV_reg_ula(5),
	dataf => \ALT_INV_reg_ula~58_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X37_Y5_N55
\reg_ula[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector71~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(5));

-- Location: LABCELL_X36_Y3_N15
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( reg_inst2(5) & ( (!\estado_atual.resultado~q\ & ((!\estado_atual.movae~DUPLICATE_q\) # ((\din[5]~input_o\)))) # (\estado_atual.resultado~q\ & (((reg_ula(5))))) ) ) # ( !reg_inst2(5) & ( (!\estado_atual.resultado~q\ & 
-- (\estado_atual.movae~DUPLICATE_q\ & ((\din[5]~input_o\)))) # (\estado_atual.resultado~q\ & (((reg_ula(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datab => \ALT_INV_estado_atual.resultado~q\,
	datac => ALT_INV_reg_ula(5),
	datad => \ALT_INV_din[5]~input_o\,
	dataf => ALT_INV_reg_inst2(5),
	combout => \Selector39~0_combout\);

-- Location: FF_X36_Y3_N17
\rega[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector39~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(5));

-- Location: MLABCELL_X37_Y3_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( rega(6) ) + ( VCC ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( rega(6) ) + ( VCC ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(6),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X35_Y2_N12
\regb[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regb[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_din[6]~input_o\,
	combout => \regb[6]~feeder_combout\);

-- Location: FF_X35_Y2_N14
\regb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regb[6]~feeder_combout\,
	asdata => reg_inst2(6),
	sclr => \regb[11]~0_combout\,
	sload => \ALT_INV_estado_atual.movbe~q\,
	ena => \regb[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regb(6));

-- Location: LABCELL_X38_Y3_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( rega(6) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( rega(6) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(6),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X38_Y3_N51
\reg_ula~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~25_combout\ = ( \reg_ula~9_combout\ & ( \Add3~25_sumout\ & ( (\reg_ula~0_combout\ & (!rega(6) $ (!regb(6)))) ) ) ) # ( !\reg_ula~9_combout\ & ( \Add3~25_sumout\ & ( (!\reg_ula~0_combout\ & (((!\Add4~25_sumout\)))) # (\reg_ula~0_combout\ & 
-- (rega(6) & ((regb(6))))) ) ) ) # ( \reg_ula~9_combout\ & ( !\Add3~25_sumout\ & ( (!\reg_ula~0_combout\) # (!rega(6) $ (!regb(6))) ) ) ) # ( !\reg_ula~9_combout\ & ( !\Add3~25_sumout\ & ( (!\reg_ula~0_combout\ & (((!\Add4~25_sumout\)))) # 
-- (\reg_ula~0_combout\ & (rega(6) & ((regb(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010001110111011110111011000000110100010001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(6),
	datab => \ALT_INV_reg_ula~0_combout\,
	datac => \ALT_INV_Add4~25_sumout\,
	datad => ALT_INV_regb(6),
	datae => \ALT_INV_reg_ula~9_combout\,
	dataf => \ALT_INV_Add3~25_sumout\,
	combout => \reg_ula~25_combout\);

-- Location: LABCELL_X38_Y1_N36
\reg_ula~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~26_combout\ = ( \reg_ula~15_combout\ & ( \reg_ula~13_combout\ & ( (!regb(6) & ((rega(6)) # (\reg_ula~14_combout\))) # (regb(6) & ((!rega(6)))) ) ) ) # ( !\reg_ula~15_combout\ & ( \reg_ula~13_combout\ & ( (\reg_ula~14_combout\ & (!regb(6) & 
-- !rega(6))) ) ) ) # ( \reg_ula~15_combout\ & ( !\reg_ula~13_combout\ & ( ((rega(6)) # (regb(6))) # (\reg_ula~14_combout\) ) ) ) # ( !\reg_ula~15_combout\ & ( !\reg_ula~13_combout\ & ( (\reg_ula~14_combout\ & (!regb(6) & !rega(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001111111111111100110000000000000011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~14_combout\,
	datac => ALT_INV_regb(6),
	datad => ALT_INV_rega(6),
	datae => \ALT_INV_reg_ula~15_combout\,
	dataf => \ALT_INV_reg_ula~13_combout\,
	combout => \reg_ula~26_combout\);

-- Location: LABCELL_X36_Y2_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( regb(6) ) + ( rega(6) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( regb(6) ) + ( rega(6) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(6),
	datad => ALT_INV_regb(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X36_Y4_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !rega(6) $ (regb(6)) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !rega(6) $ (regb(6)) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~27\ = SHARE((rega(6) & !regb(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(6),
	datad => ALT_INV_regb(6),
	cin => \Add2~22\,
	sharein => \Add2~23\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\,
	shareout => \Add2~27\);

-- Location: MLABCELL_X37_Y1_N18
\reg_ula~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~54_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~25_sumout\))) # (\Equal7~0_combout\ & (\Add2~25_sumout\))) # (\reg_ula~26_combout\)) ) ) # ( \reg_ula~12_combout\ & ( ((regb(6) & (\Equal7~0_combout\ & (rega(6))))) # 
-- (\reg_ula~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111111111000000011111111111001111111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(6),
	datab => \ALT_INV_Equal7~0_combout\,
	datac => ALT_INV_rega(6),
	datad => \ALT_INV_reg_ula~26_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	datag => \ALT_INV_Add2~25_sumout\,
	combout => \reg_ula~54_combout\);

-- Location: MLABCELL_X37_Y1_N30
\Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = ( reg_ula(6) & ( \reg_ula~54_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(6) & ( \reg_ula~54_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(6) & ( !\reg_ula~54_combout\ & ( 
-- (!\Selector74~0_combout\) # ((\reg_ula~11_combout\ & (\Selector75~0_combout\ & !\reg_ula~25_combout\))) ) ) ) # ( !reg_ula(6) & ( !\reg_ula~54_combout\ & ( (\reg_ula~11_combout\ & (\Selector75~0_combout\ & !\reg_ula~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000110011011100110000001111000011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~11_combout\,
	datab => \ALT_INV_Selector74~0_combout\,
	datac => \ALT_INV_Selector75~0_combout\,
	datad => \ALT_INV_reg_ula~25_combout\,
	datae => ALT_INV_reg_ula(6),
	dataf => \ALT_INV_reg_ula~54_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X37_Y1_N31
\reg_ula[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector70~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(6));

-- Location: MLABCELL_X37_Y1_N54
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( reg_ula(6) & ( ((!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(6))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[6]~input_o\)))) # (\estado_atual.resultado~q\) ) ) # ( !reg_ula(6) & ( (!\estado_atual.resultado~q\ & 
-- ((!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(6))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.resultado~q\,
	datab => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datac => ALT_INV_reg_inst2(6),
	datad => \ALT_INV_din[6]~input_o\,
	dataf => ALT_INV_reg_ula(6),
	combout => \Selector38~0_combout\);

-- Location: FF_X37_Y1_N56
\rega[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector38~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(6));

-- Location: MLABCELL_X37_Y3_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( rega(7) ) + ( VCC ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( rega(7) ) + ( VCC ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(7),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X38_Y3_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( rega(7) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( rega(7) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(7),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X37_Y2_N9
\reg_ula~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~27_combout\ = ( \Add4~29_sumout\ & ( \Add3~29_sumout\ & ( (\reg_ula~0_combout\ & ((!regb(7) & (\reg_ula~9_combout\ & rega(7))) # (regb(7) & (!\reg_ula~9_combout\ $ (!rega(7)))))) ) ) ) # ( !\Add4~29_sumout\ & ( \Add3~29_sumout\ & ( 
-- (!\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # ((regb(7) & rega(7))))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!regb(7) $ (!rega(7))))) ) ) ) # ( \Add4~29_sumout\ & ( !\Add3~29_sumout\ & ( (!regb(7) & (\reg_ula~9_combout\ & 
-- ((!\reg_ula~0_combout\) # (rega(7))))) # (regb(7) & (!\reg_ula~9_combout\ $ (((!\reg_ula~0_combout\) # (!rega(7)))))) ) ) ) # ( !\Add4~29_sumout\ & ( !\Add3~29_sumout\ & ( (!\reg_ula~0_combout\) # ((!regb(7) & (\reg_ula~9_combout\ & rega(7))) # (regb(7) & 
-- (!\reg_ula~9_combout\ $ (!rega(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110110001100010011011011000001110001100000000100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(7),
	datab => \ALT_INV_reg_ula~9_combout\,
	datac => \ALT_INV_reg_ula~0_combout\,
	datad => ALT_INV_rega(7),
	datae => \ALT_INV_Add4~29_sumout\,
	dataf => \ALT_INV_Add3~29_sumout\,
	combout => \reg_ula~27_combout\);

-- Location: LABCELL_X38_Y2_N18
\reg_ula~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~28_combout\ = ( \reg_ula~14_combout\ & ( \reg_ula~15_combout\ & ( (!\reg_ula~13_combout\) # ((!rega(7)) # (!regb(7))) ) ) ) # ( !\reg_ula~14_combout\ & ( \reg_ula~15_combout\ & ( (!rega(7) & ((regb(7)))) # (rega(7) & ((!\reg_ula~13_combout\) # 
-- (!regb(7)))) ) ) ) # ( \reg_ula~14_combout\ & ( !\reg_ula~15_combout\ & ( (!rega(7) & !regb(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000111110001111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~13_combout\,
	datab => ALT_INV_rega(7),
	datac => ALT_INV_regb(7),
	datae => \ALT_INV_reg_ula~14_combout\,
	dataf => \ALT_INV_reg_ula~15_combout\,
	combout => \reg_ula~28_combout\);

-- Location: LABCELL_X36_Y2_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( rega(7) ) + ( regb(7) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( rega(7) ) + ( regb(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(7),
	datac => ALT_INV_regb(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X36_Y4_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !regb(7) $ (rega(7)) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !regb(7) $ (rega(7)) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~31\ = SHARE((!regb(7) & rega(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(7),
	datad => ALT_INV_rega(7),
	cin => \Add2~26\,
	sharein => \Add2~27\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\,
	shareout => \Add2~31\);

-- Location: MLABCELL_X37_Y2_N42
\reg_ula~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~50_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~29_sumout\))) # (\Equal7~0_combout\ & (\Add2~29_sumout\))) # (\reg_ula~28_combout\)) ) ) # ( \reg_ula~12_combout\ & ( ((regb(7) & (rega(7) & (\Equal7~0_combout\)))) # 
-- (\reg_ula~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100110011011111111111001111110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(7),
	datab => \ALT_INV_reg_ula~28_combout\,
	datac => ALT_INV_rega(7),
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	datag => \ALT_INV_Add2~29_sumout\,
	combout => \reg_ula~50_combout\);

-- Location: MLABCELL_X37_Y2_N54
\Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = ( reg_ula(7) & ( \reg_ula~50_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(7) & ( \reg_ula~50_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(7) & ( !\reg_ula~50_combout\ & ( 
-- (!\Selector74~0_combout\) # ((\Selector75~0_combout\ & (\reg_ula~11_combout\ & !\reg_ula~27_combout\))) ) ) ) # ( !reg_ula(7) & ( !\reg_ula~50_combout\ & ( (\Selector75~0_combout\ & (\reg_ula~11_combout\ & !\reg_ula~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000110011011100110001010101010101011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector75~0_combout\,
	datab => \ALT_INV_Selector74~0_combout\,
	datac => \ALT_INV_reg_ula~11_combout\,
	datad => \ALT_INV_reg_ula~27_combout\,
	datae => ALT_INV_reg_ula(7),
	dataf => \ALT_INV_reg_ula~50_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X37_Y2_N55
\reg_ula[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector69~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(7));

-- Location: LABCELL_X35_Y4_N48
\Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ( \estado_atual.resultado~q\ & ( \estado_atual.movae~DUPLICATE_q\ & ( reg_ula(7) ) ) ) # ( !\estado_atual.resultado~q\ & ( \estado_atual.movae~DUPLICATE_q\ & ( \din[7]~input_o\ ) ) ) # ( \estado_atual.resultado~q\ & ( 
-- !\estado_atual.movae~DUPLICATE_q\ & ( reg_ula(7) ) ) ) # ( !\estado_atual.resultado~q\ & ( !\estado_atual.movae~DUPLICATE_q\ & ( reg_inst2(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst2(7),
	datac => ALT_INV_reg_ula(7),
	datad => \ALT_INV_din[7]~input_o\,
	datae => \ALT_INV_estado_atual.resultado~q\,
	dataf => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X37_Y1_N2
\rega[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector37~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(7));

-- Location: LABCELL_X36_Y4_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !regb(8) $ (rega(8)) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !regb(8) $ (rega(8)) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~35\ = SHARE((!regb(8) & rega(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(8),
	datad => ALT_INV_rega(8),
	cin => \Add2~30\,
	sharein => \Add2~31\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\,
	shareout => \Add2~35\);

-- Location: LABCELL_X38_Y1_N24
\reg_ula~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~31_combout\ = ( \reg_ula~15_combout\ & ( \reg_ula~14_combout\ & ( (!regb(8)) # ((!rega(8)) # (!\reg_ula~13_combout\)) ) ) ) # ( !\reg_ula~15_combout\ & ( \reg_ula~14_combout\ & ( (!regb(8) & !rega(8)) ) ) ) # ( \reg_ula~15_combout\ & ( 
-- !\reg_ula~14_combout\ & ( (!regb(8) & (rega(8))) # (regb(8) & ((!rega(8)) # (!\reg_ula~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110110011010001000100010001111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(8),
	datab => ALT_INV_rega(8),
	datad => \ALT_INV_reg_ula~13_combout\,
	datae => \ALT_INV_reg_ula~15_combout\,
	dataf => \ALT_INV_reg_ula~14_combout\,
	combout => \reg_ula~31_combout\);

-- Location: MLABCELL_X37_Y3_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( rega(8) ) + ( VCC ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( rega(8) ) + ( VCC ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(8),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: LABCELL_X38_Y3_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( rega(8) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( rega(8) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(8),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X38_Y1_N30
\reg_ula~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~29_combout\ = ( \Add4~33_sumout\ & ( \Add3~33_sumout\ & ( (\reg_ula~0_combout\ & ((!regb(8) & (rega(8) & \reg_ula~9_combout\)) # (regb(8) & (!rega(8) $ (!\reg_ula~9_combout\))))) ) ) ) # ( !\Add4~33_sumout\ & ( \Add3~33_sumout\ & ( 
-- (!\reg_ula~0_combout\ & (((!\reg_ula~9_combout\)))) # (\reg_ula~0_combout\ & ((!regb(8) & (rega(8) & \reg_ula~9_combout\)) # (regb(8) & (!rega(8) $ (!\reg_ula~9_combout\))))) ) ) ) # ( \Add4~33_sumout\ & ( !\Add3~33_sumout\ & ( (!regb(8) & 
-- (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (rega(8))))) # (regb(8) & (!\reg_ula~9_combout\ $ (((!rega(8)) # (!\reg_ula~0_combout\))))) ) ) ) # ( !\Add4~33_sumout\ & ( !\Add3~33_sumout\ & ( (!\reg_ula~0_combout\) # ((!regb(8) & (rega(8) & 
-- \reg_ula~9_combout\)) # (regb(8) & (!rega(8) $ (!\reg_ula~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110110000000011111011011110001000001100000000100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(8),
	datab => ALT_INV_rega(8),
	datac => \ALT_INV_reg_ula~0_combout\,
	datad => \ALT_INV_reg_ula~9_combout\,
	datae => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_Add3~33_sumout\,
	combout => \reg_ula~29_combout\);

-- Location: LABCELL_X38_Y1_N51
\Selector68~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = ( \reg_ula~29_combout\ & ( \reg_ula~31_combout\ ) ) # ( !\reg_ula~29_combout\ & ( (\reg_ula~11_combout\) # (\reg_ula~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~31_combout\,
	datad => \ALT_INV_reg_ula~11_combout\,
	dataf => \ALT_INV_reg_ula~29_combout\,
	combout => \Selector68~1_combout\);

-- Location: LABCELL_X36_Y2_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( rega(8) ) + ( regb(8) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( rega(8) ) + ( regb(8) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(8),
	datad => ALT_INV_rega(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X37_Y1_N36
\Selector68~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((!\reg_ula~12_combout\ & \Add1~33_sumout\)) # (\Selector68~1_combout\)))) # (\Selector68~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((!\reg_ula~12_combout\ & \Add2~33_sumout\)) # (\Selector68~1_combout\)))) # (\Selector68~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111011001100110011101100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_Selector68~0_combout\,
	datac => \ALT_INV_Add2~33_sumout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector68~1_combout\,
	datag => \ALT_INV_Add1~33_sumout\,
	combout => \Selector68~2_combout\);

-- Location: FF_X37_Y1_N38
\reg_ula[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector68~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(8));

-- Location: MLABCELL_X37_Y1_N51
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( reg_inst2(8) & ( (!\estado_atual.resultado~q\ & ((!\estado_atual.movae~DUPLICATE_q\) # ((\din[8]~input_o\)))) # (\estado_atual.resultado~q\ & (((reg_ula(8))))) ) ) # ( !reg_inst2(8) & ( (!\estado_atual.resultado~q\ & 
-- (\estado_atual.movae~DUPLICATE_q\ & (\din[8]~input_o\))) # (\estado_atual.resultado~q\ & (((reg_ula(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.resultado~q\,
	datab => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datac => \ALT_INV_din[8]~input_o\,
	datad => ALT_INV_reg_ula(8),
	dataf => ALT_INV_reg_inst2(8),
	combout => \Selector36~0_combout\);

-- Location: FF_X37_Y1_N53
\rega[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector36~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(8));

-- Location: LABCELL_X36_Y4_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( !rega(9) $ (regb(9)) ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( !rega(9) $ (regb(9)) ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~39\ = SHARE((rega(9) & !regb(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(9),
	datad => ALT_INV_regb(9),
	cin => \Add2~34\,
	sharein => \Add2~35\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\,
	shareout => \Add2~39\);

-- Location: LABCELL_X38_Y2_N33
\reg_ula~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~34_combout\ = ( \reg_ula~15_combout\ & ( (!rega(9) & (((\reg_ula~14_combout\)) # (regb(9)))) # (rega(9) & ((!regb(9)) # ((!\reg_ula~13_combout\)))) ) ) # ( !\reg_ula~15_combout\ & ( (!rega(9) & (!regb(9) & \reg_ula~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011011100111111101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(9),
	datab => ALT_INV_regb(9),
	datac => \ALT_INV_reg_ula~14_combout\,
	datad => \ALT_INV_reg_ula~13_combout\,
	dataf => \ALT_INV_reg_ula~15_combout\,
	combout => \reg_ula~34_combout\);

-- Location: MLABCELL_X37_Y3_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( rega(9) ) + ( VCC ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( rega(9) ) + ( VCC ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(9),
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X38_Y3_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( rega(9) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( rega(9) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(9),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X38_Y2_N24
\reg_ula~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~32_combout\ = ( \Add4~37_sumout\ & ( \Add3~37_sumout\ & ( (\reg_ula~0_combout\ & ((!rega(9) & (regb(9) & \reg_ula~9_combout\)) # (rega(9) & (!regb(9) $ (!\reg_ula~9_combout\))))) ) ) ) # ( !\Add4~37_sumout\ & ( \Add3~37_sumout\ & ( 
-- (!\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # ((rega(9) & regb(9))))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!rega(9) $ (!regb(9))))) ) ) ) # ( \Add4~37_sumout\ & ( !\Add3~37_sumout\ & ( (!rega(9) & (\reg_ula~9_combout\ & 
-- ((!\reg_ula~0_combout\) # (regb(9))))) # (rega(9) & (!\reg_ula~9_combout\ $ (((!regb(9)) # (!\reg_ula~0_combout\))))) ) ) ) # ( !\Add4~37_sumout\ & ( !\Add3~37_sumout\ & ( (!\reg_ula~0_combout\) # ((!rega(9) & (regb(9) & \reg_ula~9_combout\)) # (rega(9) & 
-- (!regb(9) $ (!\reg_ula~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010110000011110001011011110000000101100000000000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(9),
	datab => ALT_INV_regb(9),
	datac => \ALT_INV_reg_ula~9_combout\,
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => \ALT_INV_Add4~37_sumout\,
	dataf => \ALT_INV_Add3~37_sumout\,
	combout => \reg_ula~32_combout\);

-- Location: MLABCELL_X37_Y2_N18
\Selector67~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = ( \reg_ula~32_combout\ & ( \reg_ula~34_combout\ ) ) # ( !\reg_ula~32_combout\ & ( (\reg_ula~11_combout\) # (\reg_ula~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg_ula~34_combout\,
	datad => \ALT_INV_reg_ula~11_combout\,
	dataf => \ALT_INV_reg_ula~32_combout\,
	combout => \Selector67~1_combout\);

-- Location: LABCELL_X36_Y2_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( rega(9) ) + ( regb(9) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( rega(9) ) + ( regb(9) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(9),
	datad => ALT_INV_rega(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X37_Y2_N36
\Selector67~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((!\reg_ula~12_combout\ & \Add1~37_sumout\)) # (\Selector67~1_combout\)))) # (\Selector67~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((!\reg_ula~12_combout\ & \Add2~37_sumout\)) # (\Selector67~1_combout\)))) # (\Selector67~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101011101010101010101110101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector67~0_combout\,
	datab => \ALT_INV_reg_ula~12_combout\,
	datac => \ALT_INV_Add2~37_sumout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector67~1_combout\,
	datag => \ALT_INV_Add1~37_sumout\,
	combout => \Selector67~2_combout\);

-- Location: FF_X37_Y2_N38
\reg_ula[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector67~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(9));

-- Location: FF_X40_Y3_N14
\estado_atual.movae\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.movae~q\);

-- Location: LABCELL_X40_Y3_N33
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \estado_atual.movae~q\ & ( (!\estado_atual.resultado~q\ & (\din[9]~input_o\)) # (\estado_atual.resultado~q\ & ((reg_ula(9)))) ) ) # ( !\estado_atual.movae~q\ & ( (!\estado_atual.resultado~q\ & (reg_inst2(9))) # 
-- (\estado_atual.resultado~q\ & ((reg_ula(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_din[9]~input_o\,
	datab => ALT_INV_reg_inst2(9),
	datac => \ALT_INV_estado_atual.resultado~q\,
	datad => ALT_INV_reg_ula(9),
	dataf => \ALT_INV_estado_atual.movae~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X37_Y3_N59
\rega[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector35~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(9));

-- Location: LABCELL_X36_Y4_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( !regb(10) $ (rega(10)) ) + ( \Add2~39\ ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( !regb(10) $ (rega(10)) ) + ( \Add2~39\ ) + ( \Add2~38\ ))
-- \Add2~43\ = SHARE((!regb(10) & rega(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(10),
	datad => ALT_INV_rega(10),
	cin => \Add2~38\,
	sharein => \Add2~39\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\,
	shareout => \Add2~43\);

-- Location: LABCELL_X38_Y2_N3
\reg_ula~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~36_combout\ = ( regb(10) & ( rega(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(10),
	dataf => ALT_INV_regb(10),
	combout => \reg_ula~36_combout\);

-- Location: MLABCELL_X37_Y2_N30
\Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = ( reg_ula(10) & ( \reg_ula~36_combout\ & ( (!\Selector74~0_combout\) # ((\reg_ula~12_combout\ & (\Selector75~0_combout\ & \Equal7~0_combout\))) ) ) ) # ( !reg_ula(10) & ( \reg_ula~36_combout\ & ( (\reg_ula~12_combout\ & 
-- (\Selector75~0_combout\ & \Equal7~0_combout\)) ) ) ) # ( reg_ula(10) & ( !\reg_ula~36_combout\ & ( !\Selector74~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_Selector74~0_combout\,
	datac => \ALT_INV_Selector75~0_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => ALT_INV_reg_ula(10),
	dataf => \ALT_INV_reg_ula~36_combout\,
	combout => \Selector66~0_combout\);

-- Location: LABCELL_X38_Y2_N54
\reg_ula~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~37_combout\ = ( \reg_ula~13_combout\ & ( rega(10) & ( (!regb(10) & \reg_ula~15_combout\) ) ) ) # ( !\reg_ula~13_combout\ & ( rega(10) & ( \reg_ula~15_combout\ ) ) ) # ( \reg_ula~13_combout\ & ( !rega(10) & ( (!regb(10) & ((\reg_ula~14_combout\))) 
-- # (regb(10) & (\reg_ula~15_combout\)) ) ) ) # ( !\reg_ula~13_combout\ & ( !rega(10) & ( (!regb(10) & ((\reg_ula~14_combout\))) # (regb(10) & (\reg_ula~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100110011001100110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(10),
	datab => \ALT_INV_reg_ula~15_combout\,
	datad => \ALT_INV_reg_ula~14_combout\,
	datae => \ALT_INV_reg_ula~13_combout\,
	dataf => ALT_INV_rega(10),
	combout => \reg_ula~37_combout\);

-- Location: MLABCELL_X37_Y3_N30
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( rega(10) ) + ( VCC ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( rega(10) ) + ( VCC ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(10),
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: LABCELL_X38_Y3_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( rega(10) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( rega(10) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(10),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X37_Y3_N57
\reg_ula~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~35_combout\ = ( regb(10) & ( \Add3~41_sumout\ & ( (!\reg_ula~0_combout\ & (((!\reg_ula~9_combout\ & !\Add4~41_sumout\)))) # (\reg_ula~0_combout\ & (!rega(10) $ ((!\reg_ula~9_combout\)))) ) ) ) # ( !regb(10) & ( \Add3~41_sumout\ & ( 
-- (!\reg_ula~9_combout\ & (((!\Add4~41_sumout\ & !\reg_ula~0_combout\)))) # (\reg_ula~9_combout\ & (rega(10) & ((\reg_ula~0_combout\)))) ) ) ) # ( regb(10) & ( !\Add3~41_sumout\ & ( (!\reg_ula~0_combout\ & (((!\Add4~41_sumout\) # (\reg_ula~9_combout\)))) # 
-- (\reg_ula~0_combout\ & (!rega(10) $ ((!\reg_ula~9_combout\)))) ) ) ) # ( !regb(10) & ( !\Add3~41_sumout\ & ( (!\reg_ula~9_combout\ & (((!\Add4~41_sumout\ & !\reg_ula~0_combout\)))) # (\reg_ula~9_combout\ & (((!\reg_ula~0_combout\)) # (rega(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100010001111100110110011011000000000100011100000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(10),
	datab => \ALT_INV_reg_ula~9_combout\,
	datac => \ALT_INV_Add4~41_sumout\,
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => ALT_INV_regb(10),
	dataf => \ALT_INV_Add3~41_sumout\,
	combout => \reg_ula~35_combout\);

-- Location: MLABCELL_X37_Y2_N51
\Selector66~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = ( \reg_ula~35_combout\ & ( \reg_ula~37_combout\ ) ) # ( !\reg_ula~35_combout\ & ( (\reg_ula~37_combout\) # (\reg_ula~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg_ula~11_combout\,
	datad => \ALT_INV_reg_ula~37_combout\,
	dataf => \ALT_INV_reg_ula~35_combout\,
	combout => \Selector66~1_combout\);

-- Location: LABCELL_X36_Y2_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( regb(10) ) + ( rega(10) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( regb(10) ) + ( rega(10) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(10),
	datad => ALT_INV_regb(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: MLABCELL_X37_Y2_N24
\Selector66~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((!\reg_ula~12_combout\ & \Add1~41_sumout\)) # (\Selector66~1_combout\)))) # (\Selector66~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((!\reg_ula~12_combout\ & \Add2~41_sumout\)) # (\Selector66~1_combout\)))) # (\Selector66~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010011111111000001001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector75~0_combout\,
	datab => \ALT_INV_reg_ula~12_combout\,
	datac => \ALT_INV_Add2~41_sumout\,
	datad => \ALT_INV_Selector66~0_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector66~1_combout\,
	datag => \ALT_INV_Add1~41_sumout\,
	combout => \Selector66~2_combout\);

-- Location: FF_X37_Y2_N26
\reg_ula[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector66~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(10));

-- Location: LABCELL_X36_Y3_N36
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \estado_atual.resultado~q\ & ( reg_inst2(10) & ( reg_ula(10) ) ) ) # ( !\estado_atual.resultado~q\ & ( reg_inst2(10) & ( (!\estado_atual.movae~DUPLICATE_q\) # (\din[10]~input_o\) ) ) ) # ( \estado_atual.resultado~q\ & ( 
-- !reg_inst2(10) & ( reg_ula(10) ) ) ) # ( !\estado_atual.resultado~q\ & ( !reg_inst2(10) & ( (\estado_atual.movae~DUPLICATE_q\ & \din[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000001111111110111011101110110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datab => \ALT_INV_din[10]~input_o\,
	datad => ALT_INV_reg_ula(10),
	datae => \ALT_INV_estado_atual.resultado~q\,
	dataf => ALT_INV_reg_inst2(10),
	combout => \Selector34~0_combout\);

-- Location: FF_X37_Y3_N2
\rega[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector34~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(10));

-- Location: LABCELL_X36_Y4_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( !regb(11) $ (rega(11)) ) + ( \Add2~43\ ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( !regb(11) $ (rega(11)) ) + ( \Add2~43\ ) + ( \Add2~42\ ))
-- \Add2~47\ = SHARE((!regb(11) & rega(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(11),
	datad => ALT_INV_rega(11),
	cin => \Add2~42\,
	sharein => \Add2~43\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\,
	shareout => \Add2~47\);

-- Location: LABCELL_X40_Y4_N39
\reg_ula~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~39_combout\ = ( \reg_ula~15_combout\ & ( regb(11) & ( (!\reg_ula~13_combout\) # (!rega(11)) ) ) ) # ( \reg_ula~15_combout\ & ( !regb(11) & ( (\reg_ula~14_combout\) # (rega(11)) ) ) ) # ( !\reg_ula~15_combout\ & ( !regb(11) & ( (!rega(11) & 
-- \reg_ula~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~13_combout\,
	datac => ALT_INV_rega(11),
	datad => \ALT_INV_reg_ula~14_combout\,
	datae => \ALT_INV_reg_ula~15_combout\,
	dataf => ALT_INV_regb(11),
	combout => \reg_ula~39_combout\);

-- Location: LABCELL_X40_Y4_N27
\Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = ( \Selector75~0_combout\ & ( ((!\Selector74~0_combout\ & reg_ula(11))) # (\reg_ula~39_combout\) ) ) # ( !\Selector75~0_combout\ & ( (!\Selector74~0_combout\ & reg_ula(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~39_combout\,
	datac => \ALT_INV_Selector74~0_combout\,
	datad => ALT_INV_reg_ula(11),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => \Selector65~0_combout\);

-- Location: LABCELL_X38_Y3_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( rega(11) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( rega(11) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(11),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: MLABCELL_X37_Y3_N33
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( rega(11) ) + ( VCC ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( rega(11) ) + ( VCC ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(11),
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: LABCELL_X40_Y3_N51
\reg_ula~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~38_combout\ = ( \Add3~45_sumout\ & ( \Add4~45_sumout\ & ( (\reg_ula~0_combout\ & ((!rega(11) & (regb(11) & \reg_ula~9_combout\)) # (rega(11) & (!regb(11) $ (!\reg_ula~9_combout\))))) ) ) ) # ( !\Add3~45_sumout\ & ( \Add4~45_sumout\ & ( 
-- (!\reg_ula~0_combout\ & (((\reg_ula~9_combout\)))) # (\reg_ula~0_combout\ & ((!rega(11) & (regb(11) & \reg_ula~9_combout\)) # (rega(11) & (!regb(11) $ (!\reg_ula~9_combout\))))) ) ) ) # ( \Add3~45_sumout\ & ( !\Add4~45_sumout\ & ( (!\reg_ula~0_combout\ & 
-- (((!\reg_ula~9_combout\)))) # (\reg_ula~0_combout\ & ((!rega(11) & (regb(11) & \reg_ula~9_combout\)) # (rega(11) & (!regb(11) $ (!\reg_ula~9_combout\))))) ) ) ) # ( !\Add3~45_sumout\ & ( !\Add4~45_sumout\ & ( (!\reg_ula~0_combout\) # ((!rega(11) & 
-- (regb(11) & \reg_ula~9_combout\)) # (rega(11) & (!regb(11) $ (!\reg_ula~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111110101010110001010000000001101111100000000100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~0_combout\,
	datab => ALT_INV_rega(11),
	datac => ALT_INV_regb(11),
	datad => \ALT_INV_reg_ula~9_combout\,
	datae => \ALT_INV_Add3~45_sumout\,
	dataf => \ALT_INV_Add4~45_sumout\,
	combout => \reg_ula~38_combout\);

-- Location: LABCELL_X40_Y4_N30
\Selector65~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = ( \reg_ula~11_combout\ & ( \reg_ula~38_combout\ & ( (\reg_ula~12_combout\ & (regb(11) & (\Equal7~0_combout\ & rega(11)))) ) ) ) # ( !\reg_ula~11_combout\ & ( \reg_ula~38_combout\ & ( (\reg_ula~12_combout\ & (regb(11) & 
-- (\Equal7~0_combout\ & rega(11)))) ) ) ) # ( \reg_ula~11_combout\ & ( !\reg_ula~38_combout\ ) ) # ( !\reg_ula~11_combout\ & ( !\reg_ula~38_combout\ & ( (\reg_ula~12_combout\ & (regb(11) & (\Equal7~0_combout\ & rega(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => ALT_INV_regb(11),
	datac => \ALT_INV_Equal7~0_combout\,
	datad => ALT_INV_rega(11),
	datae => \ALT_INV_reg_ula~11_combout\,
	dataf => \ALT_INV_reg_ula~38_combout\,
	combout => \Selector65~1_combout\);

-- Location: LABCELL_X36_Y2_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( rega(11) ) + ( regb(11) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( rega(11) ) + ( regb(11) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(11),
	datad => ALT_INV_rega(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X40_Y4_N0
\Selector65~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((!\reg_ula~12_combout\ & \Add1~45_sumout\)) # (\Selector65~1_combout\)))) # (\Selector65~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((!\reg_ula~12_combout\ & \Add2~45_sumout\)) # (\Selector65~1_combout\)))) # (\Selector65~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000000101111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_Selector75~0_combout\,
	datac => \ALT_INV_Add2~45_sumout\,
	datad => \ALT_INV_Selector65~0_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector65~1_combout\,
	datag => \ALT_INV_Add1~45_sumout\,
	combout => \Selector65~2_combout\);

-- Location: FF_X40_Y4_N2
\reg_ula[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector65~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(11));

-- Location: LABCELL_X36_Y3_N6
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \estado_atual.resultado~q\ & ( reg_ula(11) ) ) # ( !\estado_atual.resultado~q\ & ( reg_ula(11) & ( (!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(11))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[11]~input_o\))) ) ) ) # ( 
-- !\estado_atual.resultado~q\ & ( !reg_ula(11) & ( (!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(11))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000000000000000000100010011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datab => ALT_INV_reg_inst2(11),
	datad => \ALT_INV_din[11]~input_o\,
	datae => \ALT_INV_estado_atual.resultado~q\,
	dataf => ALT_INV_reg_ula(11),
	combout => \Selector33~0_combout\);

-- Location: FF_X37_Y3_N38
\rega[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector33~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(11));

-- Location: LABCELL_X36_Y4_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( !rega(12) $ (regb(12)) ) + ( \Add2~47\ ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( !rega(12) $ (regb(12)) ) + ( \Add2~47\ ) + ( \Add2~46\ ))
-- \Add2~51\ = SHARE((rega(12) & !regb(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(12),
	datad => ALT_INV_regb(12),
	cin => \Add2~46\,
	sharein => \Add2~47\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\,
	shareout => \Add2~51\);

-- Location: MLABCELL_X37_Y3_N36
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( rega(12) ) + ( VCC ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( rega(12) ) + ( VCC ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(12),
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: LABCELL_X38_Y3_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( rega(12) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( rega(12) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(12),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: MLABCELL_X37_Y3_N48
\reg_ula~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~40_combout\ = ( \Add4~49_sumout\ & ( \Add3~49_sumout\ & ( (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & (regb(12) & rega(12))) # (\reg_ula~9_combout\ & (!regb(12) $ (!rega(12)))))) ) ) ) # ( !\Add4~49_sumout\ & ( \Add3~49_sumout\ & ( 
-- (!\reg_ula~0_combout\ & (!\reg_ula~9_combout\)) # (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & (regb(12) & rega(12))) # (\reg_ula~9_combout\ & (!regb(12) $ (!rega(12)))))) ) ) ) # ( \Add4~49_sumout\ & ( !\Add3~49_sumout\ & ( (!\reg_ula~0_combout\ & 
-- (\reg_ula~9_combout\)) # (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & (regb(12) & rega(12))) # (\reg_ula~9_combout\ & (!regb(12) $ (!rega(12)))))) ) ) ) # ( !\Add4~49_sumout\ & ( !\Add3~49_sumout\ & ( (!\reg_ula~0_combout\) # ((!\reg_ula~9_combout\ & 
-- (regb(12) & rega(12))) # (\reg_ula~9_combout\ & (!regb(12) $ (!rega(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111110001000110011011010001001100111000000000100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~0_combout\,
	datab => \ALT_INV_reg_ula~9_combout\,
	datac => ALT_INV_regb(12),
	datad => ALT_INV_rega(12),
	datae => \ALT_INV_Add4~49_sumout\,
	dataf => \ALT_INV_Add3~49_sumout\,
	combout => \reg_ula~40_combout\);

-- Location: LABCELL_X36_Y1_N33
\Selector64~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = ( rega(12) & ( \reg_ula~40_combout\ & ( (\reg_ula~12_combout\ & (regb(12) & \Equal7~0_combout\)) ) ) ) # ( rega(12) & ( !\reg_ula~40_combout\ & ( ((\reg_ula~12_combout\ & (regb(12) & \Equal7~0_combout\))) # (\reg_ula~11_combout\) 
-- ) ) ) # ( !rega(12) & ( !\reg_ula~40_combout\ & ( \reg_ula~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110001111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => ALT_INV_regb(12),
	datac => \ALT_INV_reg_ula~11_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => ALT_INV_rega(12),
	dataf => \ALT_INV_reg_ula~40_combout\,
	combout => \Selector64~1_combout\);

-- Location: LABCELL_X36_Y2_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( regb(12) ) + ( rega(12) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( regb(12) ) + ( rega(12) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(12),
	datad => ALT_INV_regb(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X36_Y1_N54
\Selector64~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((\Add1~49_sumout\ & !\reg_ula~12_combout\)) # (\Selector64~1_combout\)))) # (\Selector64~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((\Add2~49_sumout\ & !\reg_ula~12_combout\)) # (\Selector64~1_combout\)))) # (\Selector64~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011101010101010101110101010101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector64~0_combout\,
	datab => \ALT_INV_Selector75~0_combout\,
	datac => \ALT_INV_Add2~49_sumout\,
	datad => \ALT_INV_reg_ula~12_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector64~1_combout\,
	datag => \ALT_INV_Add1~49_sumout\,
	combout => \Selector64~2_combout\);

-- Location: FF_X36_Y1_N56
\reg_ula[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector64~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(12));

-- Location: LABCELL_X35_Y1_N12
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \estado_atual.movae~DUPLICATE_q\ & ( reg_inst2(12) & ( (!\estado_atual.resultado~q\ & ((\din[12]~input_o\))) # (\estado_atual.resultado~q\ & (reg_ula(12))) ) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( reg_inst2(12) & ( 
-- (!\estado_atual.resultado~q\) # (reg_ula(12)) ) ) ) # ( \estado_atual.movae~DUPLICATE_q\ & ( !reg_inst2(12) & ( (!\estado_atual.resultado~q\ & ((\din[12]~input_o\))) # (\estado_atual.resultado~q\ & (reg_ula(12))) ) ) ) # ( 
-- !\estado_atual.movae~DUPLICATE_q\ & ( !reg_inst2(12) & ( (\estado_atual.resultado~q\ & reg_ula(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000110110001101110111011101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.resultado~q\,
	datab => ALT_INV_reg_ula(12),
	datac => \ALT_INV_din[12]~input_o\,
	datae => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	dataf => ALT_INV_reg_inst2(12),
	combout => \Selector32~0_combout\);

-- Location: FF_X36_Y1_N5
\rega[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector32~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(12));

-- Location: LABCELL_X36_Y4_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( !regb(13) $ (rega(13)) ) + ( \Add2~51\ ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( !regb(13) $ (rega(13)) ) + ( \Add2~51\ ) + ( \Add2~50\ ))
-- \Add2~55\ = SHARE((!regb(13) & rega(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(13),
	datac => ALT_INV_rega(13),
	cin => \Add2~50\,
	sharein => \Add2~51\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\,
	shareout => \Add2~55\);

-- Location: LABCELL_X38_Y1_N12
\reg_ula~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~43_combout\ = ( \reg_ula~15_combout\ & ( \reg_ula~14_combout\ & ( (!regb(13)) # ((!\reg_ula~13_combout\) # (!rega(13))) ) ) ) # ( !\reg_ula~15_combout\ & ( \reg_ula~14_combout\ & ( (!regb(13) & !rega(13)) ) ) ) # ( \reg_ula~15_combout\ & ( 
-- !\reg_ula~14_combout\ & ( (!regb(13) & ((rega(13)))) # (regb(13) & ((!\reg_ula~13_combout\) # (!rega(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111110011001100000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(13),
	datac => \ALT_INV_reg_ula~13_combout\,
	datad => ALT_INV_rega(13),
	datae => \ALT_INV_reg_ula~15_combout\,
	dataf => \ALT_INV_reg_ula~14_combout\,
	combout => \reg_ula~43_combout\);

-- Location: MLABCELL_X37_Y1_N9
\Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = ( \Selector74~0_combout\ & ( (\reg_ula~43_combout\ & \Selector75~0_combout\) ) ) # ( !\Selector74~0_combout\ & ( ((\reg_ula~43_combout\ & \Selector75~0_combout\)) # (reg_ula(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg_ula~43_combout\,
	datac => ALT_INV_reg_ula(13),
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => \ALT_INV_Selector74~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: MLABCELL_X37_Y3_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( rega(13) ) + ( VCC ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( rega(13) ) + ( VCC ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(13),
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: LABCELL_X38_Y3_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( rega(13) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( rega(13) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(13),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X38_Y1_N6
\reg_ula~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~42_combout\ = ( \reg_ula~0_combout\ & ( \Add3~53_sumout\ & ( (!\reg_ula~9_combout\ & (rega(13) & regb(13))) # (\reg_ula~9_combout\ & (!rega(13) $ (!regb(13)))) ) ) ) # ( !\reg_ula~0_combout\ & ( \Add3~53_sumout\ & ( (!\reg_ula~9_combout\ & 
-- !\Add4~53_sumout\) ) ) ) # ( \reg_ula~0_combout\ & ( !\Add3~53_sumout\ & ( (!\reg_ula~9_combout\ & (rega(13) & regb(13))) # (\reg_ula~9_combout\ & (!rega(13) $ (!regb(13)))) ) ) ) # ( !\reg_ula~0_combout\ & ( !\Add3~53_sumout\ & ( (!\Add4~53_sumout\) # 
-- (\reg_ula~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000100010110011010100000101000000001000101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~9_combout\,
	datab => ALT_INV_rega(13),
	datac => \ALT_INV_Add4~53_sumout\,
	datad => ALT_INV_regb(13),
	datae => \ALT_INV_reg_ula~0_combout\,
	dataf => \ALT_INV_Add3~53_sumout\,
	combout => \reg_ula~42_combout\);

-- Location: LABCELL_X38_Y1_N18
\Selector63~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = ( \Equal7~0_combout\ & ( \reg_ula~42_combout\ & ( (\reg_ula~12_combout\ & (regb(13) & rega(13))) ) ) ) # ( \Equal7~0_combout\ & ( !\reg_ula~42_combout\ & ( ((\reg_ula~12_combout\ & (regb(13) & rega(13)))) # (\reg_ula~11_combout\) 
-- ) ) ) # ( !\Equal7~0_combout\ & ( !\reg_ula~42_combout\ & ( \reg_ula~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110001111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => ALT_INV_regb(13),
	datac => \ALT_INV_reg_ula~11_combout\,
	datad => ALT_INV_rega(13),
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_reg_ula~42_combout\,
	combout => \Selector63~1_combout\);

-- Location: LABCELL_X36_Y2_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( regb(13) ) + ( rega(13) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( regb(13) ) + ( rega(13) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(13),
	datad => ALT_INV_regb(13),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: MLABCELL_X37_Y1_N12
\Selector63~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~2_combout\ = ( !\Equal7~0_combout\ & ( ((\Selector75~0_combout\ & (((!\reg_ula~12_combout\ & \Add1~53_sumout\)) # (\Selector63~1_combout\)))) # (\Selector63~0_combout\) ) ) # ( \Equal7~0_combout\ & ( ((\Selector75~0_combout\ & 
-- (((!\reg_ula~12_combout\ & \Add2~53_sumout\)) # (\Selector63~1_combout\)))) # (\Selector63~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000000101111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~12_combout\,
	datab => \ALT_INV_Selector75~0_combout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \ALT_INV_Selector63~0_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Selector63~1_combout\,
	datag => \ALT_INV_Add1~53_sumout\,
	combout => \Selector63~2_combout\);

-- Location: FF_X37_Y1_N14
\reg_ula[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector63~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(13));

-- Location: LABCELL_X36_Y3_N51
\Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ( \estado_atual.resultado~q\ & ( reg_ula(13) ) ) # ( !\estado_atual.resultado~q\ & ( reg_ula(13) & ( (!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(13))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[13]~input_o\))) ) ) ) # ( 
-- !\estado_atual.resultado~q\ & ( !reg_ula(13) & ( (!\estado_atual.movae~DUPLICATE_q\ & (reg_inst2(13))) # (\estado_atual.movae~DUPLICATE_q\ & ((\din[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000000110011000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst2(13),
	datac => \ALT_INV_din[13]~input_o\,
	datad => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datae => \ALT_INV_estado_atual.resultado~q\,
	dataf => ALT_INV_reg_ula(13),
	combout => \Selector31~0_combout\);

-- Location: FF_X37_Y3_N41
\rega[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector31~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(13));

-- Location: LABCELL_X36_Y4_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( !regb(14) $ (rega(14)) ) + ( \Add2~55\ ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( !regb(14) $ (rega(14)) ) + ( \Add2~55\ ) + ( \Add2~54\ ))
-- \Add2~59\ = SHARE((!regb(14) & rega(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_regb(14),
	datad => ALT_INV_rega(14),
	cin => \Add2~54\,
	sharein => \Add2~55\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\,
	shareout => \Add2~59\);

-- Location: MLABCELL_X37_Y2_N21
\reg_ula~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~45_combout\ = ( \reg_ula~13_combout\ & ( (!rega(14) & ((!regb(14) & ((\reg_ula~14_combout\))) # (regb(14) & (\reg_ula~15_combout\)))) # (rega(14) & (\reg_ula~15_combout\ & (!regb(14)))) ) ) # ( !\reg_ula~13_combout\ & ( (!rega(14) & ((!regb(14) & 
-- ((\reg_ula~14_combout\))) # (regb(14) & (\reg_ula~15_combout\)))) # (rega(14) & (\reg_ula~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111010101000101011101010100010100110101000001010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~15_combout\,
	datab => ALT_INV_rega(14),
	datac => ALT_INV_regb(14),
	datad => \ALT_INV_reg_ula~14_combout\,
	dataf => \ALT_INV_reg_ula~13_combout\,
	combout => \reg_ula~45_combout\);

-- Location: MLABCELL_X37_Y2_N48
\Selector62~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = ( \Selector74~0_combout\ & ( (\reg_ula~45_combout\ & \Selector75~0_combout\) ) ) # ( !\Selector74~0_combout\ & ( ((\reg_ula~45_combout\ & \Selector75~0_combout\)) # (reg_ula(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~45_combout\,
	datac => ALT_INV_reg_ula(14),
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => \ALT_INV_Selector74~0_combout\,
	combout => \Selector62~1_combout\);

-- Location: MLABCELL_X37_Y3_N42
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( rega(14) ) + ( VCC ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( rega(14) ) + ( VCC ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(14),
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: LABCELL_X38_Y3_N42
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( rega(14) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( rega(14) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rega(14),
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: LABCELL_X38_Y3_N54
\reg_ula~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~44_combout\ = ( \Add4~57_sumout\ & ( \Add3~57_sumout\ & ( (!\reg_ula~0_combout\) # ((!\reg_ula~9_combout\ & ((!regb(14)) # (!rega(14)))) # (\reg_ula~9_combout\ & (!regb(14) $ (rega(14))))) ) ) ) # ( !\Add4~57_sumout\ & ( \Add3~57_sumout\ & ( 
-- (!\reg_ula~9_combout\ & (\reg_ula~0_combout\ & ((!regb(14)) # (!rega(14))))) # (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (!regb(14) $ (rega(14))))) ) ) ) # ( \Add4~57_sumout\ & ( !\Add3~57_sumout\ & ( (!\reg_ula~9_combout\ & ((!regb(14)) # 
-- ((!rega(14)) # (!\reg_ula~0_combout\)))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!regb(14) $ (rega(14))))) ) ) ) # ( !\Add4~57_sumout\ & ( !\Add3~57_sumout\ & ( (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & ((!regb(14)) # (!rega(14)))) # 
-- (\reg_ula~9_combout\ & (!regb(14) $ (rega(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101001101010101110100101010101111010011111111111101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~9_combout\,
	datab => ALT_INV_regb(14),
	datac => ALT_INV_rega(14),
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => \ALT_INV_Add4~57_sumout\,
	dataf => \ALT_INV_Add3~57_sumout\,
	combout => \reg_ula~44_combout\);

-- Location: LABCELL_X36_Y2_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( rega(14) ) + ( regb(14) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( rega(14) ) + ( regb(14) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(14),
	dataf => ALT_INV_regb(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: MLABCELL_X37_Y2_N12
\Selector62~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~2_combout\ = ( !\reg_ula~12_combout\ & ( ((!\reg_ula~11_combout\ & (\Add1~57_sumout\ & (!\Equal7~0_combout\))) # (\reg_ula~11_combout\ & (((\Add1~57_sumout\ & !\Equal7~0_combout\)) # (\reg_ula~44_combout\)))) ) ) # ( \reg_ula~12_combout\ & ( 
-- (!\reg_ula~11_combout\ & (regb(14) & (rega(14) & (\Equal7~0_combout\)))) # (\reg_ula~11_combout\ & (((regb(14) & (rega(14) & \Equal7~0_combout\))) # (\reg_ula~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000000000000010100111111001100110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(14),
	datab => \ALT_INV_reg_ula~11_combout\,
	datac => ALT_INV_rega(14),
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_reg_ula~44_combout\,
	datag => \ALT_INV_Add1~57_sumout\,
	combout => \Selector62~2_combout\);

-- Location: MLABCELL_X37_Y2_N0
\Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = ( \Selector62~1_combout\ & ( \Selector62~2_combout\ ) ) # ( !\Selector62~1_combout\ & ( \Selector62~2_combout\ & ( \Selector75~0_combout\ ) ) ) # ( \Selector62~1_combout\ & ( !\Selector62~2_combout\ ) ) # ( !\Selector62~1_combout\ 
-- & ( !\Selector62~2_combout\ & ( (\Selector75~0_combout\ & (!\reg_ula~12_combout\ & (\Add2~57_sumout\ & \Equal7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector75~0_combout\,
	datab => \ALT_INV_reg_ula~12_combout\,
	datac => \ALT_INV_Add2~57_sumout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_Selector62~1_combout\,
	dataf => \ALT_INV_Selector62~2_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X37_Y2_N2
\reg_ula[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector62~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(14));

-- Location: LABCELL_X38_Y2_N48
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \estado_atual.movae~DUPLICATE_q\ & ( reg_inst2(14) & ( (!\estado_atual.resultado~q\ & ((\din[14]~input_o\))) # (\estado_atual.resultado~q\ & (reg_ula(14))) ) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( reg_inst2(14) & ( 
-- (!\estado_atual.resultado~q\) # (reg_ula(14)) ) ) ) # ( \estado_atual.movae~DUPLICATE_q\ & ( !reg_inst2(14) & ( (!\estado_atual.resultado~q\ & ((\din[14]~input_o\))) # (\estado_atual.resultado~q\ & (reg_ula(14))) ) ) ) # ( 
-- !\estado_atual.movae~DUPLICATE_q\ & ( !reg_inst2(14) & ( (reg_ula(14) & \estado_atual.resultado~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101010011010111110101111101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_ula(14),
	datab => \ALT_INV_din[14]~input_o\,
	datac => \ALT_INV_estado_atual.resultado~q\,
	datae => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	dataf => ALT_INV_reg_inst2(14),
	combout => \Selector30~0_combout\);

-- Location: FF_X37_Y2_N8
\rega[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector30~0_combout\,
	sclr => \rega[10]~0_combout\,
	sload => VCC,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(14));

-- Location: LABCELL_X36_Y4_N45
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( !rega(15) $ (regb(15)) ) + ( \Add2~59\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(15),
	datad => ALT_INV_regb(15),
	cin => \Add2~58\,
	sharein => \Add2~59\,
	sumout => \Add2~61_sumout\);

-- Location: MLABCELL_X37_Y3_N45
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( rega(15) ) + ( VCC ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(15),
	cin => \Add4~58\,
	sumout => \Add4~61_sumout\);

-- Location: LABCELL_X38_Y3_N45
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( rega(15) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(15),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\);

-- Location: LABCELL_X38_Y2_N6
\reg_ula~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~46_combout\ = ( \Add4~61_sumout\ & ( \Add3~61_sumout\ & ( (!\reg_ula~0_combout\) # ((!\reg_ula~9_combout\ & ((!regb(15)) # (!rega(15)))) # (\reg_ula~9_combout\ & (!regb(15) $ (rega(15))))) ) ) ) # ( !\Add4~61_sumout\ & ( \Add3~61_sumout\ & ( 
-- (!\reg_ula~9_combout\ & (\reg_ula~0_combout\ & ((!regb(15)) # (!rega(15))))) # (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (!regb(15) $ (rega(15))))) ) ) ) # ( \Add4~61_sumout\ & ( !\Add3~61_sumout\ & ( (!\reg_ula~9_combout\ & ((!regb(15)) # 
-- ((!rega(15)) # (!\reg_ula~0_combout\)))) # (\reg_ula~9_combout\ & (\reg_ula~0_combout\ & (!regb(15) $ (rega(15))))) ) ) ) # ( !\Add4~61_sumout\ & ( !\Add3~61_sumout\ & ( (\reg_ula~0_combout\ & ((!\reg_ula~9_combout\ & ((!regb(15)) # (!rega(15)))) # 
-- (\reg_ula~9_combout\ & (!regb(15) $ (rega(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101001101010101110100101010101111010011111111111101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~9_combout\,
	datab => ALT_INV_regb(15),
	datac => ALT_INV_rega(15),
	datad => \ALT_INV_reg_ula~0_combout\,
	datae => \ALT_INV_Add4~61_sumout\,
	dataf => \ALT_INV_Add3~61_sumout\,
	combout => \reg_ula~46_combout\);

-- Location: LABCELL_X36_Y2_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( rega(15) ) + ( regb(15) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(15),
	datac => ALT_INV_regb(15),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: LABCELL_X38_Y2_N12
\Selector61~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~2_combout\ = ( !\reg_ula~12_combout\ & ( (!\Equal7~0_combout\ & ((((\reg_ula~11_combout\ & \reg_ula~46_combout\)) # (\Add1~61_sumout\)))) # (\Equal7~0_combout\ & ((((\reg_ula~11_combout\ & \reg_ula~46_combout\))))) ) ) # ( \reg_ula~12_combout\ 
-- & ( (!\reg_ula~11_combout\ & (\Equal7~0_combout\ & (regb(15) & (rega(15))))) # (\reg_ula~11_combout\ & (((\Equal7~0_combout\ & (regb(15) & rega(15)))) # (\reg_ula~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000010000000100001010111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~0_combout\,
	datab => ALT_INV_regb(15),
	datac => ALT_INV_rega(15),
	datad => \ALT_INV_reg_ula~11_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_reg_ula~46_combout\,
	datag => \ALT_INV_Add1~61_sumout\,
	combout => \Selector61~2_combout\);

-- Location: LABCELL_X38_Y2_N36
\Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = ( \Add2~61_sumout\ & ( \Selector61~2_combout\ & ( (\Selector75~0_combout\) # (\Selector61~1_combout\) ) ) ) # ( !\Add2~61_sumout\ & ( \Selector61~2_combout\ & ( (\Selector75~0_combout\) # (\Selector61~1_combout\) ) ) ) # ( 
-- \Add2~61_sumout\ & ( !\Selector61~2_combout\ & ( ((\Equal7~0_combout\ & (!\reg_ula~12_combout\ & \Selector75~0_combout\))) # (\Selector61~1_combout\) ) ) ) # ( !\Add2~61_sumout\ & ( !\Selector61~2_combout\ & ( \Selector61~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110100111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~0_combout\,
	datab => \ALT_INV_reg_ula~12_combout\,
	datac => \ALT_INV_Selector61~1_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => \ALT_INV_Add2~61_sumout\,
	dataf => \ALT_INV_Selector61~2_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X38_Y2_N38
\reg_ula[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector61~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(15));

-- Location: LABCELL_X36_Y3_N54
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( \estado_atual.movae~DUPLICATE_q\ & ( reg_ula(15) & ( (\estado_atual.resultado~q\) # (\din[15]~input_o\) ) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( reg_ula(15) & ( (\estado_atual.resultado~q\) # (reg_inst2(15)) ) ) ) # ( 
-- \estado_atual.movae~DUPLICATE_q\ & ( !reg_ula(15) & ( (\din[15]~input_o\ & !\estado_atual.resultado~q\) ) ) ) # ( !\estado_atual.movae~DUPLICATE_q\ & ( !reg_ula(15) & ( (reg_inst2(15) & !\estado_atual.resultado~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst2(15),
	datab => \ALT_INV_din[15]~input_o\,
	datad => \ALT_INV_estado_atual.resultado~q\,
	datae => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	dataf => ALT_INV_reg_ula(15),
	combout => \Selector29~0_combout\);

-- Location: FF_X36_Y3_N56
\rega[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector29~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(15));

-- Location: LABCELL_X40_Y1_N36
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( rega(14) & ( rega(13) & ( (regb(13) & (regb(14) & (!rega(12) $ (regb(12))))) ) ) ) # ( !rega(14) & ( rega(13) & ( (regb(13) & (!regb(14) & (!rega(12) $ (regb(12))))) ) ) ) # ( rega(14) & ( !rega(13) & ( (!regb(13) & (regb(14) & 
-- (!rega(12) $ (regb(12))))) ) ) ) # ( !rega(14) & ( !rega(13) & ( (!regb(13) & (!regb(14) & (!rega(12) $ (regb(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(12),
	datab => ALT_INV_regb(13),
	datac => ALT_INV_regb(12),
	datad => ALT_INV_regb(14),
	datae => ALT_INV_rega(14),
	dataf => ALT_INV_rega(13),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X40_Y1_N57
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( rega(11) & ( (\LessThan1~0_combout\ & (regb(11) & (!regb(10) $ (rega(10))))) ) ) # ( !rega(11) & ( (\LessThan1~0_combout\ & (!regb(11) & (!regb(10) $ (rega(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000010000000001000000000100000000010000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => ALT_INV_regb(10),
	datac => ALT_INV_regb(11),
	datad => ALT_INV_rega(10),
	dataf => ALT_INV_rega(11),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X40_Y1_N30
\LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( regb(14) & ( rega(13) & ( (!rega(14)) # ((regb(12) & (!rega(12) & regb(13)))) ) ) ) # ( !regb(14) & ( rega(13) & ( (regb(12) & (!rega(12) & (!rega(14) & regb(13)))) ) ) ) # ( regb(14) & ( !rega(13) & ( (!rega(14)) # (((regb(12) 
-- & !rega(12))) # (regb(13))) ) ) ) # ( !regb(14) & ( !rega(13) & ( (!rega(14) & (((regb(12) & !rega(12))) # (regb(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110000111101001111111100000000010000001111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(12),
	datab => ALT_INV_rega(12),
	datac => ALT_INV_rega(14),
	datad => ALT_INV_regb(13),
	datae => ALT_INV_regb(14),
	dataf => ALT_INV_rega(13),
	combout => \LessThan1~11_combout\);

-- Location: LABCELL_X40_Y1_N48
\LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( \LessThan1~0_combout\ & ( rega(11) & ( (!\LessThan1~11_combout\ & (((!regb(10)) # (!regb(11))) # (rega(10)))) ) ) ) # ( !\LessThan1~0_combout\ & ( rega(11) & ( !\LessThan1~11_combout\ ) ) ) # ( \LessThan1~0_combout\ & ( 
-- !rega(11) & ( (!regb(11) & (!\LessThan1~11_combout\ & ((!regb(10)) # (rega(10))))) ) ) ) # ( !\LessThan1~0_combout\ & ( !rega(11) & ( !\LessThan1~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110100000000000011111111000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(10),
	datab => ALT_INV_regb(10),
	datac => ALT_INV_regb(11),
	datad => \ALT_INV_LessThan1~11_combout\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => ALT_INV_rega(11),
	combout => \LessThan1~12_combout\);

-- Location: LABCELL_X40_Y1_N6
\LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( \LessThan1~1_combout\ & ( \LessThan1~12_combout\ & ( (!rega(9) & (!regb(9) & ((!regb(8)) # (rega(8))))) # (rega(9) & ((!regb(9)) # ((!regb(8)) # (rega(8))))) ) ) ) # ( !\LessThan1~1_combout\ & ( \LessThan1~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(9),
	datab => ALT_INV_regb(9),
	datac => ALT_INV_rega(8),
	datad => ALT_INV_regb(8),
	datae => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_LessThan1~12_combout\,
	combout => \LessThan1~13_combout\);

-- Location: LABCELL_X40_Y2_N3
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( rega(13) & ( regb(13) & ( (!rega(14) & (rega(12) & (!regb(14) & !regb(12)))) # (rega(14) & ((!regb(14)) # ((rega(12) & !regb(12))))) ) ) ) # ( !rega(13) & ( regb(13) & ( (rega(14) & !regb(14)) ) ) ) # ( rega(13) & ( !regb(13) & ( 
-- (!regb(14)) # (rega(14)) ) ) ) # ( !rega(13) & ( !regb(13) & ( (!rega(14) & (rega(12) & (!regb(14) & !regb(12)))) # (rega(14) & ((!regb(14)) # ((rega(12) & !regb(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101010000111101011111010101010000010100000111000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(14),
	datab => ALT_INV_rega(12),
	datac => ALT_INV_regb(14),
	datad => ALT_INV_regb(12),
	datae => ALT_INV_rega(13),
	dataf => ALT_INV_regb(13),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X40_Y1_N18
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( rega(10) & ( rega(11) & ( (!\LessThan0~6_combout\ & ((!\LessThan1~0_combout\) # ((regb(11) & regb(10))))) ) ) ) # ( !rega(10) & ( rega(11) & ( (!\LessThan0~6_combout\ & ((!\LessThan1~0_combout\) # (regb(11)))) ) ) ) # ( rega(10) 
-- & ( !rega(11) & ( (!\LessThan0~6_combout\ & (((!\LessThan1~0_combout\) # (regb(10))) # (regb(11)))) ) ) ) # ( !rega(10) & ( !rega(11) & ( !\LessThan0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111101110000000011110101000000001111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(11),
	datab => ALT_INV_regb(10),
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => ALT_INV_rega(10),
	dataf => ALT_INV_rega(11),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X40_Y1_N0
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \LessThan0~7_combout\ & ( (!\LessThan1~1_combout\) # ((!rega(9)) # (regb(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => ALT_INV_rega(9),
	datad => ALT_INV_regb(9),
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X40_Y1_N54
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( rega(9) & ( !regb(9) ) ) # ( !rega(9) & ( regb(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_regb(9),
	dataf => ALT_INV_rega(9),
	combout => \LessThan1~2_combout\);

-- Location: MLABCELL_X37_Y1_N48
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( regb(8) & ( !rega(8) ) ) # ( !regb(8) & ( rega(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rega(8),
	dataf => ALT_INV_regb(8),
	combout => \LessThan1~3_combout\);

-- Location: MLABCELL_X37_Y1_N27
\LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( regb(6) & ( (!rega(7) & ((!rega(6)) # (regb(7)))) # (rega(7) & (!rega(6) & regb(7))) ) ) # ( !regb(6) & ( (!rega(7) & regb(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(7),
	datac => ALT_INV_rega(6),
	datad => ALT_INV_regb(7),
	dataf => ALT_INV_regb(6),
	combout => \LessThan1~8_combout\);

-- Location: MLABCELL_X37_Y1_N6
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( regb(6) & ( (rega(6) & (!rega(7) $ (regb(7)))) ) ) # ( !regb(6) & ( (!rega(6) & (!rega(7) $ (regb(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(6),
	datac => ALT_INV_rega(7),
	datad => ALT_INV_regb(7),
	dataf => ALT_INV_regb(6),
	combout => \LessThan1~4_combout\);

-- Location: MLABCELL_X37_Y1_N3
\LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( rega(5) & ( \LessThan1~4_combout\ & ( (!\LessThan1~8_combout\ & (((!regb(4)) # (!regb(5))) # (rega(4)))) ) ) ) # ( !rega(5) & ( \LessThan1~4_combout\ & ( (!regb(5) & (!\LessThan1~8_combout\ & ((!regb(4)) # (rega(4))))) ) ) ) # ( 
-- rega(5) & ( !\LessThan1~4_combout\ & ( !\LessThan1~8_combout\ ) ) ) # ( !rega(5) & ( !\LessThan1~4_combout\ & ( !\LessThan1~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011010000000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(4),
	datab => ALT_INV_regb(4),
	datac => ALT_INV_regb(5),
	datad => \ALT_INV_LessThan1~8_combout\,
	datae => ALT_INV_rega(5),
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X35_Y1_N51
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( regb(0) & ( rega(0) & ( (regb(1) & !rega(1)) ) ) ) # ( !regb(0) & ( rega(0) & ( (regb(1) & !rega(1)) ) ) ) # ( regb(0) & ( !rega(0) & ( (!rega(1)) # (regb(1)) ) ) ) # ( !regb(0) & ( !rega(0) & ( (regb(1) & !rega(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100111111001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(1),
	datac => ALT_INV_rega(1),
	datae => ALT_INV_regb(0),
	dataf => ALT_INV_rega(0),
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X35_Y1_N6
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( rega(2) & ( \LessThan1~5_combout\ & ( (!rega(3) & ((regb(2)) # (regb(3)))) # (rega(3) & (regb(3) & regb(2))) ) ) ) # ( !rega(2) & ( \LessThan1~5_combout\ & ( (!rega(3)) # (regb(3)) ) ) ) # ( rega(2) & ( !\LessThan1~5_combout\ & ( 
-- (!rega(3) & regb(3)) ) ) ) # ( !rega(2) & ( !\LessThan1~5_combout\ & ( (!rega(3) & ((regb(2)) # (regb(3)))) # (rega(3) & (regb(3) & regb(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011000000110011001111110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(3),
	datac => ALT_INV_regb(3),
	datad => ALT_INV_regb(2),
	datae => ALT_INV_rega(2),
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X38_Y1_N54
\LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \LessThan1~4_combout\ & ( regb(4) & ( (rega(4) & (!regb(5) $ (rega(5)))) ) ) ) # ( \LessThan1~4_combout\ & ( !regb(4) & ( (!rega(4) & (!regb(5) $ (rega(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000010001000000000000000000100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(4),
	datab => ALT_INV_regb(5),
	datad => ALT_INV_rega(5),
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => ALT_INV_regb(4),
	combout => \LessThan1~7_combout\);

-- Location: LABCELL_X40_Y1_N24
\LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( \LessThan1~6_combout\ & ( \LessThan1~7_combout\ & ( (!\LessThan1~2_combout\ & (\LessThan1~1_combout\ & !\LessThan1~3_combout\)) ) ) ) # ( !\LessThan1~6_combout\ & ( \LessThan1~7_combout\ & ( (!\LessThan1~2_combout\ & 
-- (\LessThan1~1_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~9_combout\))) ) ) ) # ( \LessThan1~6_combout\ & ( !\LessThan1~7_combout\ & ( (!\LessThan1~2_combout\ & (\LessThan1~1_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~9_combout\))) ) ) ) # ( 
-- !\LessThan1~6_combout\ & ( !\LessThan1~7_combout\ & ( (!\LessThan1~2_combout\ & (\LessThan1~1_combout\ & (!\LessThan1~3_combout\ & !\LessThan1~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~2_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_LessThan1~3_combout\,
	datad => \ALT_INV_LessThan1~9_combout\,
	datae => \ALT_INV_LessThan1~6_combout\,
	dataf => \ALT_INV_LessThan1~7_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LABCELL_X40_Y1_N42
\comp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp~3_combout\ = ( \LessThan0~8_combout\ & ( \LessThan1~10_combout\ & ( (!\LessThan0~5_combout\ & ((!rega(15)) # (regb(15)))) # (\LessThan0~5_combout\ & (regb(15) & !rega(15))) ) ) ) # ( !\LessThan0~8_combout\ & ( \LessThan1~10_combout\ & ( (regb(15) & 
-- !rega(15)) ) ) ) # ( \LessThan0~8_combout\ & ( !\LessThan1~10_combout\ & ( (!regb(15) & (!\LessThan0~5_combout\ & (!rega(15) & !\LessThan1~13_combout\))) # (regb(15) & ((!rega(15)) # ((!\LessThan0~5_combout\ & !\LessThan1~13_combout\)))) ) ) ) # ( 
-- !\LessThan0~8_combout\ & ( !\LessThan1~10_combout\ & ( (regb(15) & !rega(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000101100100011000000110000001100001011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => ALT_INV_regb(15),
	datac => ALT_INV_rega(15),
	datad => \ALT_INV_LessThan1~13_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_LessThan1~10_combout\,
	combout => \comp~3_combout\);

-- Location: LABCELL_X41_Y2_N42
\comp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp[0]~2_combout\ = ( \comp[0]~0_combout\ & ( \Selector94~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_comp[0]~0_combout\,
	dataf => \ALT_INV_Selector94~0_combout\,
	combout => \comp[0]~2_combout\);

-- Location: FF_X40_Y1_N44
\comp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comp~3_combout\,
	ena => \comp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => comp(0));

-- Location: LABCELL_X41_Y4_N48
\reg_inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst2~1_combout\ = ( \Equal20~0_combout\ & ( \Equal21~0_combout\ & ( (comp(0) & (!comp(1) $ (((!\Equal19~0_combout\ & !\Equal18~0_combout\))))) ) ) ) # ( !\Equal20~0_combout\ & ( \Equal21~0_combout\ & ( (comp(0) & (!comp(1) $ (((!\Equal19~0_combout\ 
-- & !\Equal18~0_combout\))))) ) ) ) # ( \Equal20~0_combout\ & ( !\Equal21~0_combout\ & ( (!comp(0) & (!\Equal19~0_combout\ & (!comp(1) $ (!\Equal18~0_combout\)))) # (comp(0) & (!comp(1) & (\Equal19~0_combout\))) ) ) ) # ( !\Equal20~0_combout\ & ( 
-- !\Equal21~0_combout\ & ( (!comp(1) & ((!comp(0) & (!\Equal19~0_combout\ & \Equal18~0_combout\)) # (comp(0) & (\Equal19~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000100001001001000010000010100010001000001010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_comp(0),
	datab => ALT_INV_comp(1),
	datac => \ALT_INV_Equal19~0_combout\,
	datad => \ALT_INV_Equal18~0_combout\,
	datae => \ALT_INV_Equal20~0_combout\,
	dataf => \ALT_INV_Equal21~0_combout\,
	combout => \reg_inst2~1_combout\);

-- Location: LABCELL_X41_Y4_N6
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \estado_atual~29_combout\ & ( \reg_inst2~1_combout\ & ( \estado_atual.executa~q\ ) ) ) # ( !\estado_atual~29_combout\ & ( \reg_inst2~1_combout\ & ( (\estado_atual.executa~q\ & (\reg_inst2~3_combout\ & ((!\comp[0]~0_combout\) # 
-- (\Equal14~0_combout\)))) ) ) ) # ( \estado_atual~29_combout\ & ( !\reg_inst2~1_combout\ & ( \estado_atual.executa~q\ ) ) ) # ( !\estado_atual~29_combout\ & ( !\reg_inst2~1_combout\ & ( (\estado_atual.executa~q\ & (\reg_inst2~3_combout\ & 
-- \Equal14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010101010100000100000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.executa~q\,
	datab => \ALT_INV_comp[0]~0_combout\,
	datac => \ALT_INV_reg_inst2~3_combout\,
	datad => \ALT_INV_Equal14~0_combout\,
	datae => \ALT_INV_estado_atual~29_combout\,
	dataf => \ALT_INV_reg_inst2~1_combout\,
	combout => \Selector23~0_combout\);

-- Location: MLABCELL_X42_Y4_N33
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \Add0~2_combout\ & ( reg_inst1(1) & ( ((\Equal0~0_combout\ & (!reg_inst1(0) $ (!reg_inst1(2))))) # (reg_inst2(3)) ) ) ) # ( !\Add0~2_combout\ & ( reg_inst1(1) & ( (reg_inst2(3) & ((!\Equal0~0_combout\) # (!reg_inst1(0) $ 
-- (reg_inst1(2))))) ) ) ) # ( \Add0~2_combout\ & ( !reg_inst1(1) & ( ((\Equal0~0_combout\ & reg_inst1(2))) # (reg_inst2(3)) ) ) ) # ( !\Add0~2_combout\ & ( !reg_inst1(1) & ( (reg_inst2(3) & ((!\Equal0~0_combout\) # (!reg_inst1(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110011111100001110000011010001111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reg_inst1(0),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_reg_inst2(3),
	datad => ALT_INV_reg_inst1(2),
	datae => \ALT_INV_Add0~2_combout\,
	dataf => ALT_INV_reg_inst1(1),
	combout => \Selector25~0_combout\);

-- Location: MLABCELL_X42_Y4_N12
\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( reg_inst2(3) & ( \Selector23~1_combout\ & ( (((\Selector23~0_combout\ & \din[3]~input_o\)) # (\Selector13~0_combout\)) # (\Selector25~0_combout\) ) ) ) # ( !reg_inst2(3) & ( \Selector23~1_combout\ & ( ((\Selector23~0_combout\ & 
-- \din[3]~input_o\)) # (\Selector25~0_combout\) ) ) ) # ( reg_inst2(3) & ( !\Selector23~1_combout\ & ( ((\Selector23~0_combout\ & \din[3]~input_o\)) # (\Selector13~0_combout\) ) ) ) # ( !reg_inst2(3) & ( !\Selector23~1_combout\ & ( (\Selector23~0_combout\ & 
-- \din[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011111111100011111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_din[3]~input_o\,
	datac => \ALT_INV_Selector25~0_combout\,
	datad => \ALT_INV_Selector13~0_combout\,
	datae => ALT_INV_reg_inst2(3),
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \Selector25~1_combout\);

-- Location: FF_X42_Y4_N14
\reg_inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector25~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst2(3));

-- Location: MLABCELL_X37_Y5_N36
\reg_ula~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~19_combout\ = ( \Add4~13_sumout\ & ( \Add3~13_sumout\ & ( (\reg_ula~0_combout\ & ((!rega(3) & (regb(3) & \reg_ula~9_combout\)) # (rega(3) & (!regb(3) $ (!\reg_ula~9_combout\))))) ) ) ) # ( !\Add4~13_sumout\ & ( \Add3~13_sumout\ & ( 
-- (!\reg_ula~0_combout\ & (((!\reg_ula~9_combout\)))) # (\reg_ula~0_combout\ & ((!rega(3) & (regb(3) & \reg_ula~9_combout\)) # (rega(3) & (!regb(3) $ (!\reg_ula~9_combout\))))) ) ) ) # ( \Add4~13_sumout\ & ( !\Add3~13_sumout\ & ( (!rega(3) & 
-- (\reg_ula~9_combout\ & ((!\reg_ula~0_combout\) # (regb(3))))) # (rega(3) & (!\reg_ula~9_combout\ $ (((!\reg_ula~0_combout\) # (!regb(3)))))) ) ) ) # ( !\Add4~13_sumout\ & ( !\Add3~13_sumout\ & ( (!\reg_ula~0_combout\) # ((!rega(3) & (regb(3) & 
-- \reg_ula~9_combout\)) # (rega(3) & (!regb(3) $ (!\reg_ula~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111011110000000011101111011001101000100100000000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(3),
	datab => \ALT_INV_reg_ula~0_combout\,
	datac => ALT_INV_regb(3),
	datad => \ALT_INV_reg_ula~9_combout\,
	datae => \ALT_INV_Add4~13_sumout\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \reg_ula~19_combout\);

-- Location: MLABCELL_X37_Y5_N30
\reg_ula~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~20_combout\ = ( rega(3) & ( (\reg_ula~15_combout\ & ((!\reg_ula~13_combout\) # (!regb(3)))) ) ) # ( !rega(3) & ( (!regb(3) & (\reg_ula~14_combout\)) # (regb(3) & ((\reg_ula~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg_ula~13_combout\,
	datab => \ALT_INV_reg_ula~14_combout\,
	datac => \ALT_INV_reg_ula~15_combout\,
	datad => ALT_INV_regb(3),
	dataf => ALT_INV_rega(3),
	combout => \reg_ula~20_combout\);

-- Location: MLABCELL_X37_Y5_N48
\reg_ula~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_ula~66_combout\ = ( !\reg_ula~12_combout\ & ( (((!\Equal7~0_combout\ & ((\Add1~13_sumout\))) # (\Equal7~0_combout\ & (\Add2~13_sumout\))) # (\reg_ula~20_combout\)) ) ) # ( \reg_ula~12_combout\ & ( ((regb(3) & (rega(3) & (\Equal7~0_combout\)))) # 
-- (\reg_ula~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111001100110011011111111111001111110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(3),
	datab => \ALT_INV_reg_ula~20_combout\,
	datac => ALT_INV_rega(3),
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_reg_ula~12_combout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	datag => \ALT_INV_Add2~13_sumout\,
	combout => \reg_ula~66_combout\);

-- Location: MLABCELL_X37_Y5_N42
\Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = ( reg_ula(3) & ( \reg_ula~66_combout\ & ( (!\Selector74~0_combout\) # (\Selector75~0_combout\) ) ) ) # ( !reg_ula(3) & ( \reg_ula~66_combout\ & ( \Selector75~0_combout\ ) ) ) # ( reg_ula(3) & ( !\reg_ula~66_combout\ & ( 
-- (!\Selector74~0_combout\) # ((\reg_ula~11_combout\ & (!\reg_ula~19_combout\ & \Selector75~0_combout\))) ) ) ) # ( !reg_ula(3) & ( !\reg_ula~66_combout\ & ( (\reg_ula~11_combout\ & (!\reg_ula~19_combout\ & \Selector75~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000101010101011101000000000111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector74~0_combout\,
	datab => \ALT_INV_reg_ula~11_combout\,
	datac => \ALT_INV_reg_ula~19_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	datae => ALT_INV_reg_ula(3),
	dataf => \ALT_INV_reg_ula~66_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X37_Y5_N43
\reg_ula[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector73~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ula(3));

-- Location: LABCELL_X36_Y3_N24
\Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ( reg_ula(3) & ( ((!\estado_atual.movae~DUPLICATE_q\ & ((reg_inst2(3)))) # (\estado_atual.movae~DUPLICATE_q\ & (\din[3]~input_o\))) # (\estado_atual.resultado~q\) ) ) # ( !reg_ula(3) & ( (!\estado_atual.resultado~q\ & 
-- ((!\estado_atual.movae~DUPLICATE_q\ & ((reg_inst2(3)))) # (\estado_atual.movae~DUPLICATE_q\ & (\din[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.movae~DUPLICATE_q\,
	datab => \ALT_INV_estado_atual.resultado~q\,
	datac => \ALT_INV_din[3]~input_o\,
	datad => ALT_INV_reg_inst2(3),
	dataf => ALT_INV_reg_ula(3),
	combout => \Selector41~0_combout\);

-- Location: FF_X36_Y3_N26
\rega[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector41~0_combout\,
	sclr => \rega[10]~0_combout\,
	ena => \rega[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rega(3));

-- Location: LABCELL_X35_Y1_N24
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( regb(0) & ( rega(0) & ( (!rega(2) & (!regb(1) & (rega(1) & !regb(2)))) # (rega(2) & ((!regb(2)) # ((!regb(1) & rega(1))))) ) ) ) # ( !regb(0) & ( rega(0) & ( (!rega(2) & (!regb(2) & ((!regb(1)) # (rega(1))))) # (rega(2) & 
-- ((!regb(1)) # ((!regb(2)) # (rega(1))))) ) ) ) # ( regb(0) & ( !rega(0) & ( (!rega(2) & (!regb(1) & (rega(1) & !regb(2)))) # (rega(2) & ((!regb(2)) # ((!regb(1) & rega(1))))) ) ) ) # ( !regb(0) & ( !rega(0) & ( (!rega(2) & (!regb(1) & (rega(1) & 
-- !regb(2)))) # (rega(2) & ((!regb(2)) # ((!regb(1) & rega(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000100010111010000010011011111010001010101110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(2),
	datab => ALT_INV_regb(1),
	datac => ALT_INV_rega(1),
	datad => ALT_INV_regb(2),
	datae => ALT_INV_regb(0),
	dataf => ALT_INV_rega(0),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X35_Y1_N45
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( regb(4) & ( \LessThan0~0_combout\ & ( (rega(4) & ((!regb(3)) # (rega(3)))) ) ) ) # ( !regb(4) & ( \LessThan0~0_combout\ & ( ((!regb(3)) # (rega(4))) # (rega(3)) ) ) ) # ( regb(4) & ( !\LessThan0~0_combout\ & ( (rega(3) & (rega(4) 
-- & !regb(3))) ) ) ) # ( !regb(4) & ( !\LessThan0~0_combout\ & ( ((rega(3) & !regb(3))) # (rega(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111000000110000000011111111001111110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(3),
	datac => ALT_INV_rega(4),
	datad => ALT_INV_regb(3),
	datae => ALT_INV_regb(4),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X37_Y1_N24
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan1~4_combout\ & ( (!\LessThan1~3_combout\ & (!regb(5) $ (rega(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_regb(5),
	datac => \ALT_INV_LessThan1~3_combout\,
	datad => ALT_INV_rega(5),
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X38_Y1_N42
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( regb(8) & ( regb(6) & ( (rega(7) & (!regb(7) & rega(8))) ) ) ) # ( !regb(8) & ( regb(6) & ( ((rega(7) & !regb(7))) # (rega(8)) ) ) ) # ( regb(8) & ( !regb(6) & ( (rega(8) & ((!rega(7) & (!regb(7) & rega(6))) # (rega(7) & 
-- ((!regb(7)) # (rega(6)))))) ) ) ) # ( !regb(8) & ( !regb(6) & ( ((!rega(7) & (!regb(7) & rega(6))) # (rega(7) & ((!regb(7)) # (rega(6))))) # (rega(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111111111000000000100110101000100111111110000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(7),
	datab => ALT_INV_regb(7),
	datac => ALT_INV_rega(6),
	datad => ALT_INV_rega(8),
	datae => ALT_INV_regb(8),
	dataf => ALT_INV_regb(6),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X38_Y1_N0
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \LessThan1~3_combout\ & ( !\LessThan0~3_combout\ ) ) # ( !\LessThan1~3_combout\ & ( !\LessThan0~3_combout\ & ( (!rega(5)) # ((!\LessThan1~4_combout\) # (regb(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_rega(5),
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => ALT_INV_regb(5),
	datae => \ALT_INV_LessThan1~3_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X40_Y1_N3
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( (\LessThan0~1_combout\ & (\LessThan1~1_combout\ & (\LessThan0~2_combout\ & !\LessThan1~2_combout\))) ) ) # ( !\LessThan0~4_combout\ & ( (\LessThan1~1_combout\ & !\LessThan1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan1~2_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X40_Y1_N12
\comp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp~1_combout\ = ( \LessThan0~8_combout\ & ( !\LessThan1~10_combout\ & ( (!\LessThan0~5_combout\ & (\LessThan1~13_combout\ & (!regb(15) $ (rega(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => ALT_INV_regb(15),
	datac => ALT_INV_rega(15),
	datad => \ALT_INV_LessThan1~13_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_LessThan1~10_combout\,
	combout => \comp~1_combout\);

-- Location: FF_X40_Y1_N14
\comp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comp~1_combout\,
	ena => \comp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => comp(1));

-- Location: LABCELL_X38_Y5_N42
\estado_atual~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~40_combout\ = ( comp(0) & ( \Equal21~0_combout\ & ( (!\estado_atual~39_combout\ & comp(1)) ) ) ) # ( comp(0) & ( !\Equal21~0_combout\ & ( (!\estado_atual~39_combout\) # ((!reg_inst1(11) & (reg_inst1(12) & !comp(1)))) ) ) ) # ( !comp(0) & ( 
-- !\Equal21~0_combout\ & ( (!\estado_atual~39_combout\) # ((reg_inst1(11) & (!reg_inst1(12) $ (comp(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010101011101011101010101000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual~39_combout\,
	datab => ALT_INV_reg_inst1(11),
	datac => ALT_INV_reg_inst1(12),
	datad => ALT_INV_comp(1),
	datae => ALT_INV_comp(0),
	dataf => \ALT_INV_Equal21~0_combout\,
	combout => \estado_atual~40_combout\);

-- Location: LABCELL_X38_Y5_N0
\Selector94~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector94~3_combout\ = ( \estado_atual~40_combout\ & ( (\Selector13~0_combout\ & (!\estado_atual.sync_grav~q\ & !\estado_atual.busca~q\)) ) ) # ( !\estado_atual~40_combout\ & ( ((\Selector13~0_combout\ & (!\estado_atual.sync_grav~q\ & 
-- !\estado_atual.busca~q\))) # (\Selector94~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101011101010101010100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector94~2_combout\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_estado_atual.sync_grav~q\,
	datad => \ALT_INV_estado_atual.busca~q\,
	dataf => \ALT_INV_estado_atual~40_combout\,
	combout => \Selector94~3_combout\);

-- Location: FF_X38_Y5_N1
\estado_atual.busca\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector94~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.busca~q\);

-- Location: LABCELL_X40_Y2_N42
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado_atual.reset1~DUPLICATE_q\ & ( (!\estado_atual.busca~q\ & ((reg_inst1(2)))) # (\estado_atual.busca~q\ & (\din[2]~input_o\)) ) ) # ( !\estado_atual.reset1~DUPLICATE_q\ & ( (\estado_atual.busca~q\ & \din[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.busca~q\,
	datac => \ALT_INV_din[2]~input_o\,
	datad => ALT_INV_reg_inst1(2),
	dataf => \ALT_INV_estado_atual.reset1~DUPLICATE_q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X40_Y2_N44
\reg_inst1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_inst1(2));

-- Location: LABCELL_X41_Y2_N0
\estado_atual~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_atual~28_combout\ = ( reg_inst1(0) & ( (!reg_inst1(2) & (reg_inst1(1) & \Equal0~0_combout\)) ) ) # ( !reg_inst1(0) & ( (reg_inst1(2) & (!reg_inst1(1) & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reg_inst1(2),
	datac => ALT_INV_reg_inst1(1),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_reg_inst1(0),
	combout => \estado_atual~28_combout\);

-- Location: FF_X41_Y2_N1
\rw~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_atual~28_combout\,
	sclr => \ALT_INV_estado_atual.executa~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw~reg0_q\);

-- Location: LABCELL_X41_Y2_N12
\Selector91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = ( reg_inst1(2) & ( reg_inst1(0) & ( (!\estado_atual.reset1~q\ & !\estado_atual.executa~q\) ) ) ) # ( !reg_inst1(2) & ( reg_inst1(0) & ( (!\estado_atual.executa~q\ & (!\estado_atual.reset1~q\)) # (\estado_atual.executa~q\ & 
-- (((reg_inst1(1) & \Equal0~0_combout\)))) ) ) ) # ( reg_inst1(2) & ( !reg_inst1(0) & ( (!\estado_atual.executa~q\ & (!\estado_atual.reset1~q\)) # (\estado_atual.executa~q\ & (((!reg_inst1(1) & \Equal0~0_combout\)))) ) ) ) # ( !reg_inst1(2) & ( 
-- !reg_inst1(0) & ( (!\estado_atual.reset1~q\ & !\estado_atual.executa~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001011100010001000100010111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.reset1~q\,
	datab => \ALT_INV_estado_atual.executa~q\,
	datac => ALT_INV_reg_inst1(1),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_reg_inst1(2),
	dataf => ALT_INV_reg_inst1(0),
	combout => \Selector91~0_combout\);

-- Location: LABCELL_X41_Y2_N18
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( reg_inst1(1) & ( (\Equal0~0_combout\ & (reg_inst1(0) & !reg_inst1(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_reg_inst1(0),
	datad => ALT_INV_reg_inst1(2),
	dataf => ALT_INV_reg_inst1(1),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X35_Y3_N6
\Selector92~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = ( sdout(0) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(0) & \Selector92~0_combout\)) ) ) ) # ( !sdout(0) & ( \Equal2~0_combout\ & ( (rega(0) & \Selector92~0_combout\) ) ) ) # ( sdout(0) & ( !\Equal2~0_combout\ & 
-- ( (!\Selector91~0_combout\) # ((regb(0) & \Selector92~0_combout\)) ) ) ) # ( !sdout(0) & ( !\Equal2~0_combout\ & ( (regb(0) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111110000001100000101000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(0),
	datab => ALT_INV_regb(0),
	datac => \ALT_INV_Selector92~0_combout\,
	datad => \ALT_INV_Selector91~0_combout\,
	datae => ALT_INV_sdout(0),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector92~1_combout\);

-- Location: FF_X35_Y3_N7
\sdout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector92~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(0));

-- Location: LABCELL_X35_Y3_N51
\Selector91~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = ( sdout(1) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(1) & \Selector92~0_combout\)) ) ) ) # ( !sdout(1) & ( \Equal2~0_combout\ & ( (rega(1) & \Selector92~0_combout\) ) ) ) # ( sdout(1) & ( !\Equal2~0_combout\ & 
-- ( (!\Selector91~0_combout\) # ((regb(1) & \Selector92~0_combout\)) ) ) ) # ( !sdout(1) & ( !\Equal2~0_combout\ & ( (regb(1) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111100001111010100000000001100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(1),
	datab => ALT_INV_rega(1),
	datac => \ALT_INV_Selector91~0_combout\,
	datad => \ALT_INV_Selector92~0_combout\,
	datae => ALT_INV_sdout(1),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector91~1_combout\);

-- Location: FF_X35_Y3_N52
\sdout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector91~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(1));

-- Location: LABCELL_X35_Y3_N18
\Selector90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = ( sdout(2) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(2) & \Selector92~0_combout\)) ) ) ) # ( !sdout(2) & ( \Equal2~0_combout\ & ( (rega(2) & \Selector92~0_combout\) ) ) ) # ( sdout(2) & ( !\Equal2~0_combout\ & 
-- ( (!\Selector91~0_combout\) # ((regb(2) & \Selector92~0_combout\)) ) ) ) # ( !sdout(2) & ( !\Equal2~0_combout\ & ( (regb(2) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111110000001100000101000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(2),
	datab => ALT_INV_regb(2),
	datac => \ALT_INV_Selector92~0_combout\,
	datad => \ALT_INV_Selector91~0_combout\,
	datae => ALT_INV_sdout(2),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector90~0_combout\);

-- Location: FF_X35_Y3_N19
\sdout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector90~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(2));

-- Location: LABCELL_X35_Y2_N24
\Selector89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = ( sdout(3) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(3))) # (\Equal2~0_combout\ & ((rega(3)))))) ) ) ) # ( !sdout(3) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & (regb(3))) # (\Equal2~0_combout\ & ((rega(3)))))) ) ) ) # ( sdout(3) & ( !\Selector91~0_combout\ ) ) # ( !sdout(3) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(3))) # (\Equal2~0_combout\ & 
-- ((rega(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111111111111111111100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => ALT_INV_regb(3),
	datac => ALT_INV_rega(3),
	datad => \ALT_INV_Selector92~0_combout\,
	datae => ALT_INV_sdout(3),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector89~0_combout\);

-- Location: FF_X35_Y2_N25
\sdout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector89~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(3));

-- Location: LABCELL_X35_Y4_N54
\Selector88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = ( sdout(4) & ( \Selector92~0_combout\ & ( (!\Selector91~0_combout\) # ((!\Equal2~0_combout\ & (regb(4))) # (\Equal2~0_combout\ & ((rega(4))))) ) ) ) # ( !sdout(4) & ( \Selector92~0_combout\ & ( (!\Equal2~0_combout\ & (regb(4))) # 
-- (\Equal2~0_combout\ & ((rega(4)))) ) ) ) # ( sdout(4) & ( !\Selector92~0_combout\ & ( !\Selector91~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001010101001100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(4),
	datab => ALT_INV_rega(4),
	datac => \ALT_INV_Selector91~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => ALT_INV_sdout(4),
	dataf => \ALT_INV_Selector92~0_combout\,
	combout => \Selector88~0_combout\);

-- Location: FF_X35_Y4_N55
\sdout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector88~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(4));

-- Location: LABCELL_X35_Y2_N42
\Selector87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = ( sdout(5) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(5))) # (\Equal2~0_combout\ & ((rega(5)))))) ) ) ) # ( !sdout(5) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & (regb(5))) # (\Equal2~0_combout\ & ((rega(5)))))) ) ) ) # ( sdout(5) & ( !\Selector91~0_combout\ ) ) # ( !sdout(5) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(5))) # (\Equal2~0_combout\ & 
-- ((rega(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111111111111111111100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => ALT_INV_regb(5),
	datac => ALT_INV_rega(5),
	datad => \ALT_INV_Selector92~0_combout\,
	datae => ALT_INV_sdout(5),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector87~0_combout\);

-- Location: FF_X35_Y2_N44
\sdout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector87~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(5));

-- Location: LABCELL_X35_Y3_N36
\Selector86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = ( sdout(6) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(6) & \Selector92~0_combout\)) ) ) ) # ( !sdout(6) & ( \Equal2~0_combout\ & ( (rega(6) & \Selector92~0_combout\) ) ) ) # ( sdout(6) & ( !\Equal2~0_combout\ & 
-- ( (!\Selector91~0_combout\) # ((\Selector92~0_combout\ & regb(6))) ) ) ) # ( !sdout(6) & ( !\Equal2~0_combout\ & ( (\Selector92~0_combout\ & regb(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111110011001100111100000101000001011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(6),
	datab => \ALT_INV_Selector91~0_combout\,
	datac => \ALT_INV_Selector92~0_combout\,
	datad => ALT_INV_regb(6),
	datae => ALT_INV_sdout(6),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector86~0_combout\);

-- Location: FF_X35_Y3_N37
\sdout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector86~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(6));

-- Location: LABCELL_X41_Y2_N54
\Selector85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = ( sdout(7) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & ((regb(7)))) # (\Equal2~0_combout\ & (rega(7))))) ) ) ) # ( !sdout(7) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & ((regb(7)))) # (\Equal2~0_combout\ & (rega(7))))) ) ) ) # ( sdout(7) & ( !\Selector91~0_combout\ ) ) # ( !sdout(7) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & ((regb(7)))) # (\Equal2~0_combout\ 
-- & (rega(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001111111111111111100000001001100010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(7),
	datab => \ALT_INV_Selector92~0_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => ALT_INV_regb(7),
	datae => ALT_INV_sdout(7),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector85~0_combout\);

-- Location: FF_X41_Y2_N55
\sdout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector85~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(7));

-- Location: LABCELL_X41_Y2_N48
\Selector84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = ( sdout(8) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & ((regb(8)))) # (\Equal2~0_combout\ & (rega(8))))) ) ) ) # ( !sdout(8) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & ((regb(8)))) # (\Equal2~0_combout\ & (rega(8))))) ) ) ) # ( sdout(8) & ( !\Selector91~0_combout\ ) ) # ( !sdout(8) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & ((regb(8)))) # (\Equal2~0_combout\ 
-- & (rega(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011111111111111111100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Selector92~0_combout\,
	datac => ALT_INV_rega(8),
	datad => ALT_INV_regb(8),
	datae => ALT_INV_sdout(8),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector84~0_combout\);

-- Location: FF_X41_Y2_N49
\sdout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector84~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(8));

-- Location: LABCELL_X41_Y2_N6
\Selector83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = ( sdout(9) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(9))) # (\Equal2~0_combout\ & ((rega(9)))))) ) ) ) # ( !sdout(9) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & (regb(9))) # (\Equal2~0_combout\ & ((rega(9)))))) ) ) ) # ( sdout(9) & ( !\Selector91~0_combout\ ) ) # ( !sdout(9) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(9))) # (\Equal2~0_combout\ & 
-- ((rega(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011111111111111111100010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(9),
	datab => \ALT_INV_Selector92~0_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => ALT_INV_rega(9),
	datae => ALT_INV_sdout(9),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector83~0_combout\);

-- Location: FF_X41_Y2_N7
\sdout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector83~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(9));

-- Location: LABCELL_X35_Y2_N0
\Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = ( sdout(10) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(10))) # (\Equal2~0_combout\ & ((rega(10)))))) ) ) ) # ( !sdout(10) & ( \Selector91~0_combout\ & ( (\Selector92~0_combout\ & 
-- ((!\Equal2~0_combout\ & (regb(10))) # (\Equal2~0_combout\ & ((rega(10)))))) ) ) ) # ( sdout(10) & ( !\Selector91~0_combout\ ) ) # ( !sdout(10) & ( !\Selector91~0_combout\ & ( (\Selector92~0_combout\ & ((!\Equal2~0_combout\ & (regb(10))) # 
-- (\Equal2~0_combout\ & ((rega(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011111111111111111100010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(10),
	datab => \ALT_INV_Selector92~0_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => ALT_INV_rega(10),
	datae => ALT_INV_sdout(10),
	dataf => \ALT_INV_Selector91~0_combout\,
	combout => \Selector82~0_combout\);

-- Location: FF_X35_Y2_N2
\sdout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector82~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(10));

-- Location: LABCELL_X35_Y3_N30
\Selector81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = ( sdout(11) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((\Selector92~0_combout\ & rega(11))) ) ) ) # ( !sdout(11) & ( \Equal2~0_combout\ & ( (\Selector92~0_combout\ & rega(11)) ) ) ) # ( sdout(11) & ( 
-- !\Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((regb(11) & \Selector92~0_combout\)) ) ) ) # ( !sdout(11) & ( !\Equal2~0_combout\ & ( (regb(11) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110011011100110100000000000011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(11),
	datab => \ALT_INV_Selector91~0_combout\,
	datac => \ALT_INV_Selector92~0_combout\,
	datad => ALT_INV_rega(11),
	datae => ALT_INV_sdout(11),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector81~0_combout\);

-- Location: FF_X35_Y3_N31
\sdout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector81~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(11));

-- Location: LABCELL_X35_Y3_N3
\Selector80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = ( sdout(12) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(12) & \Selector92~0_combout\)) ) ) ) # ( !sdout(12) & ( \Equal2~0_combout\ & ( (rega(12) & \Selector92~0_combout\) ) ) ) # ( sdout(12) & ( 
-- !\Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((regb(12) & \Selector92~0_combout\)) ) ) ) # ( !sdout(12) & ( !\Equal2~0_combout\ & ( (regb(12) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101110011001101110100000000000011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(12),
	datab => \ALT_INV_Selector91~0_combout\,
	datac => ALT_INV_rega(12),
	datad => \ALT_INV_Selector92~0_combout\,
	datae => ALT_INV_sdout(12),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector80~0_combout\);

-- Location: FF_X35_Y3_N4
\sdout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector80~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(12));

-- Location: LABCELL_X35_Y4_N36
\Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = ( sdout(13) & ( \Selector92~0_combout\ & ( (!\Selector91~0_combout\) # ((!\Equal2~0_combout\ & ((regb(13)))) # (\Equal2~0_combout\ & (rega(13)))) ) ) ) # ( !sdout(13) & ( \Selector92~0_combout\ & ( (!\Equal2~0_combout\ & 
-- ((regb(13)))) # (\Equal2~0_combout\ & (rega(13))) ) ) ) # ( sdout(13) & ( !\Selector92~0_combout\ & ( !\Selector91~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110011010101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(13),
	datab => ALT_INV_regb(13),
	datac => \ALT_INV_Selector91~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => ALT_INV_sdout(13),
	dataf => \ALT_INV_Selector92~0_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X35_Y4_N37
\sdout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector79~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(13));

-- Location: LABCELL_X35_Y2_N48
\Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = ( sdout(14) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(14) & \Selector92~0_combout\)) ) ) ) # ( !sdout(14) & ( \Equal2~0_combout\ & ( (rega(14) & \Selector92~0_combout\) ) ) ) # ( sdout(14) & ( 
-- !\Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((\Selector92~0_combout\ & regb(14))) ) ) ) # ( !sdout(14) & ( !\Equal2~0_combout\ & ( (\Selector92~0_combout\ & regb(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111110000001100010001000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rega(14),
	datab => \ALT_INV_Selector92~0_combout\,
	datac => ALT_INV_regb(14),
	datad => \ALT_INV_Selector91~0_combout\,
	datae => ALT_INV_sdout(14),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X35_Y2_N49
\sdout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector78~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(14));

-- Location: LABCELL_X35_Y3_N54
\Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = ( sdout(15) & ( \Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((rega(15) & \Selector92~0_combout\)) ) ) ) # ( !sdout(15) & ( \Equal2~0_combout\ & ( (rega(15) & \Selector92~0_combout\) ) ) ) # ( sdout(15) & ( 
-- !\Equal2~0_combout\ & ( (!\Selector91~0_combout\) # ((regb(15) & \Selector92~0_combout\)) ) ) ) # ( !sdout(15) & ( !\Equal2~0_combout\ & ( (regb(15) & \Selector92~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111110000010100000011000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regb(15),
	datab => ALT_INV_rega(15),
	datac => \ALT_INV_Selector92~0_combout\,
	datad => \ALT_INV_Selector91~0_combout\,
	datae => ALT_INV_sdout(15),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X35_Y3_N56
\sdout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector77~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sdout(15));

-- Location: MLABCELL_X25_Y42_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


