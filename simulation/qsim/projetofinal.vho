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

-- DATE "06/22/2023 09:56:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	projetofinal IS
    PORT (
	entrada : IN std_logic_vector(4 DOWNTO 0);
	pb0 : IN std_logic;
	clk : IN std_logic;
	operando1 : OUT std_logic_vector(3 DOWNTO 0);
	operador1 : OUT std_logic_vector(2 DOWNTO 0);
	operando2 : OUT std_logic_vector(3 DOWNTO 0);
	correto : OUT std_logic_vector(4 DOWNTO 0);
	acerto : OUT std_logic;
	pontos : OUT std_logic_vector(4 DOWNTO 0)
	);
END projetofinal;

-- Design Ports Information
-- operando1[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando1[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando1[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando1[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operador1[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operador1[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operador1[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando2[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando2[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando2[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando2[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correto[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correto[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correto[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correto[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correto[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acerto	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pontos[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pontos[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pontos[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pontos[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pontos[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb0	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projetofinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pb0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_operando1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operador1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_operando2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_correto : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_acerto : std_logic;
SIGNAL ww_pontos : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \arit|resposta_parcial[4]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \operando1[0]~output_o\ : std_logic;
SIGNAL \operando1[1]~output_o\ : std_logic;
SIGNAL \operando1[2]~output_o\ : std_logic;
SIGNAL \operando1[3]~output_o\ : std_logic;
SIGNAL \operador1[0]~output_o\ : std_logic;
SIGNAL \operador1[1]~output_o\ : std_logic;
SIGNAL \operador1[2]~output_o\ : std_logic;
SIGNAL \operando2[0]~output_o\ : std_logic;
SIGNAL \operando2[1]~output_o\ : std_logic;
SIGNAL \operando2[2]~output_o\ : std_logic;
SIGNAL \operando2[3]~output_o\ : std_logic;
SIGNAL \correto[0]~output_o\ : std_logic;
SIGNAL \correto[1]~output_o\ : std_logic;
SIGNAL \correto[2]~output_o\ : std_logic;
SIGNAL \correto[3]~output_o\ : std_logic;
SIGNAL \correto[4]~output_o\ : std_logic;
SIGNAL \acerto~output_o\ : std_logic;
SIGNAL \pontos[0]~output_o\ : std_logic;
SIGNAL \pontos[1]~output_o\ : std_logic;
SIGNAL \pontos[2]~output_o\ : std_logic;
SIGNAL \pontos[3]~output_o\ : std_logic;
SIGNAL \pontos[4]~output_o\ : std_logic;
SIGNAL \pb0~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock1|Add0~0_combout\ : std_logic;
SIGNAL \clock1|count[0]~3_combout\ : std_logic;
SIGNAL \clock1|Add0~1\ : std_logic;
SIGNAL \clock1|Add0~2_combout\ : std_logic;
SIGNAL \clock1|count~0_combout\ : std_logic;
SIGNAL \clock1|Add0~3\ : std_logic;
SIGNAL \clock1|Add0~4_combout\ : std_logic;
SIGNAL \clock1|Add0~5\ : std_logic;
SIGNAL \clock1|Add0~6_combout\ : std_logic;
SIGNAL \clock1|Add0~7\ : std_logic;
SIGNAL \clock1|Add0~8_combout\ : std_logic;
SIGNAL \clock1|count~1_combout\ : std_logic;
SIGNAL \clock1|Add0~9\ : std_logic;
SIGNAL \clock1|Add0~10_combout\ : std_logic;
SIGNAL \clock1|count~2_combout\ : std_logic;
SIGNAL \clock1|Add0~11\ : std_logic;
SIGNAL \clock1|Add0~12_combout\ : std_logic;
SIGNAL \clock1|Add0~13\ : std_logic;
SIGNAL \clock1|Add0~14_combout\ : std_logic;
SIGNAL \clock1|Add0~15\ : std_logic;
SIGNAL \clock1|Add0~16_combout\ : std_logic;
SIGNAL \clock1|Add0~17\ : std_logic;
SIGNAL \clock1|Add0~18_combout\ : std_logic;
SIGNAL \clock1|Add0~19\ : std_logic;
SIGNAL \clock1|Add0~20_combout\ : std_logic;
SIGNAL \clock1|Add0~21\ : std_logic;
SIGNAL \clock1|Add0~22_combout\ : std_logic;
SIGNAL \clock1|Add0~23\ : std_logic;
SIGNAL \clock1|Add0~24_combout\ : std_logic;
SIGNAL \clock1|Add0~25\ : std_logic;
SIGNAL \clock1|Add0~26_combout\ : std_logic;
SIGNAL \clock1|Add0~27\ : std_logic;
SIGNAL \clock1|Add0~28_combout\ : std_logic;
SIGNAL \clock1|Add0~29\ : std_logic;
SIGNAL \clock1|Add0~30_combout\ : std_logic;
SIGNAL \clock1|Add0~31\ : std_logic;
SIGNAL \clock1|Add0~32_combout\ : std_logic;
SIGNAL \clock1|Add0~33\ : std_logic;
SIGNAL \clock1|Add0~34_combout\ : std_logic;
SIGNAL \clock1|Add0~35\ : std_logic;
SIGNAL \clock1|Add0~36_combout\ : std_logic;
SIGNAL \clock1|Add0~37\ : std_logic;
SIGNAL \clock1|Add0~38_combout\ : std_logic;
SIGNAL \clock1|Add0~39\ : std_logic;
SIGNAL \clock1|Add0~40_combout\ : std_logic;
SIGNAL \clock1|Add0~41\ : std_logic;
SIGNAL \clock1|Add0~42_combout\ : std_logic;
SIGNAL \clock1|Add0~43\ : std_logic;
SIGNAL \clock1|Add0~44_combout\ : std_logic;
SIGNAL \clock1|Add0~45\ : std_logic;
SIGNAL \clock1|Add0~46_combout\ : std_logic;
SIGNAL \clock1|Add0~47\ : std_logic;
SIGNAL \clock1|Add0~48_combout\ : std_logic;
SIGNAL \clock1|Add0~49\ : std_logic;
SIGNAL \clock1|Add0~50_combout\ : std_logic;
SIGNAL \clock1|Add0~51\ : std_logic;
SIGNAL \clock1|Add0~52_combout\ : std_logic;
SIGNAL \clock1|Add0~53\ : std_logic;
SIGNAL \clock1|Add0~54_combout\ : std_logic;
SIGNAL \clock1|Add0~55\ : std_logic;
SIGNAL \clock1|Add0~56_combout\ : std_logic;
SIGNAL \clock1|Add0~57\ : std_logic;
SIGNAL \clock1|Add0~58_combout\ : std_logic;
SIGNAL \clock1|Add0~59\ : std_logic;
SIGNAL \clock1|Add0~60_combout\ : std_logic;
SIGNAL \clock1|Add0~61\ : std_logic;
SIGNAL \clock1|Add0~62_combout\ : std_logic;
SIGNAL \clock1|Equal0~9_combout\ : std_logic;
SIGNAL \clock1|Equal0~8_combout\ : std_logic;
SIGNAL \clock1|Equal0~0_combout\ : std_logic;
SIGNAL \clock1|Equal0~3_combout\ : std_logic;
SIGNAL \clock1|Equal0~1_combout\ : std_logic;
SIGNAL \clock1|Equal0~2_combout\ : std_logic;
SIGNAL \clock1|Equal0~4_combout\ : std_logic;
SIGNAL \clock1|Equal0~5_combout\ : std_logic;
SIGNAL \clock1|Equal0~6_combout\ : std_logic;
SIGNAL \clock1|Equal0~7_combout\ : std_logic;
SIGNAL \clock1|Equal0~10_combout\ : std_logic;
SIGNAL \clock1|tmp~0_combout\ : std_logic;
SIGNAL \clock1|tmp~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~2clkctrl_outclk\ : std_logic;
SIGNAL \oper1|internal_count[0]~3_combout\ : std_logic;
SIGNAL \oper1|internal_count[1]~0_combout\ : std_logic;
SIGNAL \oper1|internal_count[2]~1_combout\ : std_logic;
SIGNAL \oper1|internal_count[3]~2_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \opr|internal_count[1]~1_combout\ : std_logic;
SIGNAL \opr|internal_count~2_combout\ : std_logic;
SIGNAL \opr|internal_count~0_combout\ : std_logic;
SIGNAL \clock2|Add0~0_combout\ : std_logic;
SIGNAL \clock2|count~0_combout\ : std_logic;
SIGNAL \clock2|Add0~1\ : std_logic;
SIGNAL \clock2|Add0~2_combout\ : std_logic;
SIGNAL \clock2|Add0~3\ : std_logic;
SIGNAL \clock2|Add0~4_combout\ : std_logic;
SIGNAL \clock2|Add0~5\ : std_logic;
SIGNAL \clock2|Add0~6_combout\ : std_logic;
SIGNAL \clock2|count~1_combout\ : std_logic;
SIGNAL \clock2|Add0~7\ : std_logic;
SIGNAL \clock2|Add0~8_combout\ : std_logic;
SIGNAL \clock2|Add0~9\ : std_logic;
SIGNAL \clock2|Add0~10_combout\ : std_logic;
SIGNAL \clock2|Add0~11\ : std_logic;
SIGNAL \clock2|Add0~12_combout\ : std_logic;
SIGNAL \clock2|count~2_combout\ : std_logic;
SIGNAL \clock2|Add0~13\ : std_logic;
SIGNAL \clock2|Add0~14_combout\ : std_logic;
SIGNAL \clock2|Add0~15\ : std_logic;
SIGNAL \clock2|Add0~16_combout\ : std_logic;
SIGNAL \clock2|Add0~17\ : std_logic;
SIGNAL \clock2|Add0~18_combout\ : std_logic;
SIGNAL \clock2|Add0~19\ : std_logic;
SIGNAL \clock2|Add0~20_combout\ : std_logic;
SIGNAL \clock2|Add0~21\ : std_logic;
SIGNAL \clock2|Add0~22_combout\ : std_logic;
SIGNAL \clock2|Add0~23\ : std_logic;
SIGNAL \clock2|Add0~24_combout\ : std_logic;
SIGNAL \clock2|Add0~25\ : std_logic;
SIGNAL \clock2|Add0~26_combout\ : std_logic;
SIGNAL \clock2|Add0~27\ : std_logic;
SIGNAL \clock2|Add0~28_combout\ : std_logic;
SIGNAL \clock2|Add0~29\ : std_logic;
SIGNAL \clock2|Add0~30_combout\ : std_logic;
SIGNAL \clock2|Add0~31\ : std_logic;
SIGNAL \clock2|Add0~32_combout\ : std_logic;
SIGNAL \clock2|Add0~33\ : std_logic;
SIGNAL \clock2|Add0~34_combout\ : std_logic;
SIGNAL \clock2|Add0~35\ : std_logic;
SIGNAL \clock2|Add0~36_combout\ : std_logic;
SIGNAL \clock2|Add0~37\ : std_logic;
SIGNAL \clock2|Add0~38_combout\ : std_logic;
SIGNAL \clock2|Add0~39\ : std_logic;
SIGNAL \clock2|Add0~40_combout\ : std_logic;
SIGNAL \clock2|Add0~41\ : std_logic;
SIGNAL \clock2|Add0~42_combout\ : std_logic;
SIGNAL \clock2|Add0~43\ : std_logic;
SIGNAL \clock2|Add0~44_combout\ : std_logic;
SIGNAL \clock2|Add0~45\ : std_logic;
SIGNAL \clock2|Add0~46_combout\ : std_logic;
SIGNAL \clock2|Add0~47\ : std_logic;
SIGNAL \clock2|Add0~48_combout\ : std_logic;
SIGNAL \clock2|Add0~49\ : std_logic;
SIGNAL \clock2|Add0~50_combout\ : std_logic;
SIGNAL \clock2|Add0~51\ : std_logic;
SIGNAL \clock2|Add0~52_combout\ : std_logic;
SIGNAL \clock2|Add0~53\ : std_logic;
SIGNAL \clock2|Add0~54_combout\ : std_logic;
SIGNAL \clock2|Add0~55\ : std_logic;
SIGNAL \clock2|Add0~56_combout\ : std_logic;
SIGNAL \clock2|Add0~57\ : std_logic;
SIGNAL \clock2|Add0~58_combout\ : std_logic;
SIGNAL \clock2|Add0~59\ : std_logic;
SIGNAL \clock2|Add0~60_combout\ : std_logic;
SIGNAL \clock2|Add0~61\ : std_logic;
SIGNAL \clock2|Add0~62_combout\ : std_logic;
SIGNAL \clock2|Equal0~9_combout\ : std_logic;
SIGNAL \clock2|Equal0~8_combout\ : std_logic;
SIGNAL \clock2|Equal0~0_combout\ : std_logic;
SIGNAL \clock2|Equal0~3_combout\ : std_logic;
SIGNAL \clock2|Equal0~1_combout\ : std_logic;
SIGNAL \clock2|Equal0~2_combout\ : std_logic;
SIGNAL \clock2|Equal0~4_combout\ : std_logic;
SIGNAL \clock2|Equal0~5_combout\ : std_logic;
SIGNAL \clock2|Equal0~6_combout\ : std_logic;
SIGNAL \clock2|Equal0~7_combout\ : std_logic;
SIGNAL \clock2|Equal0~10_combout\ : std_logic;
SIGNAL \clock2|tmp~0_combout\ : std_logic;
SIGNAL \clock2|tmp~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~1clkctrl_outclk\ : std_logic;
SIGNAL \oper2|internal_count[0]~3_combout\ : std_logic;
SIGNAL \oper2|internal_count[1]~0_combout\ : std_logic;
SIGNAL \oper2|internal_count[2]~1_combout\ : std_logic;
SIGNAL \oper2|internal_count[3]~2_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[0]~0_combout\ : std_logic;
SIGNAL \arit|Add1~0_combout\ : std_logic;
SIGNAL \arit|Add0~0_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[0]~1_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[0]~2_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[4]~3_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[4]~3clkctrl_outclk\ : std_logic;
SIGNAL \arit|Add1~1\ : std_logic;
SIGNAL \arit|Add1~2_combout\ : std_logic;
SIGNAL \arit|Add0~1\ : std_logic;
SIGNAL \arit|Add0~2_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[1]~4_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[1]~5_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[1]~6_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[2]~8_combout\ : std_logic;
SIGNAL \arit|Add1~3\ : std_logic;
SIGNAL \arit|Add1~4_combout\ : std_logic;
SIGNAL \arit|Add0~3\ : std_logic;
SIGNAL \arit|Add0~4_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[2]~7_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[2]~9_combout\ : std_logic;
SIGNAL \arit|Add1~5\ : std_logic;
SIGNAL \arit|Add1~6_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[3]~10_combout\ : std_logic;
SIGNAL \arit|Add0~5\ : std_logic;
SIGNAL \arit|Add0~6_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[3]~11_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[3]~12_combout\ : std_logic;
SIGNAL \arit|Add1~7\ : std_logic;
SIGNAL \arit|Add1~8_combout\ : std_logic;
SIGNAL \arit|Add0~7\ : std_logic;
SIGNAL \arit|Add0~8_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[4]~13_combout\ : std_logic;
SIGNAL \arit|resposta_parcial[4]~14_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \check1|Equal0~0_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \check1|Equal0~1_combout\ : std_logic;
SIGNAL \check1|Equal0~2_combout\ : std_logic;
SIGNAL \pb0~inputclkctrl_outclk\ : std_logic;
SIGNAL \cont|Add0~1\ : std_logic;
SIGNAL \cont|Add0~2_combout\ : std_logic;
SIGNAL \cont|Add0~3\ : std_logic;
SIGNAL \cont|Add0~4_combout\ : std_logic;
SIGNAL \cont|internal_count[2]~3_combout\ : std_logic;
SIGNAL \cont|Add0~5\ : std_logic;
SIGNAL \cont|Add0~6_combout\ : std_logic;
SIGNAL \cont|internal_count[3]~4_combout\ : std_logic;
SIGNAL \cont|Add0~7\ : std_logic;
SIGNAL \cont|Add0~8_combout\ : std_logic;
SIGNAL \cont|internal_count[4]~5_combout\ : std_logic;
SIGNAL \cont|Equal0~0_combout\ : std_logic;
SIGNAL \cont|internal_count[1]~6_combout\ : std_logic;
SIGNAL \cont|Equal0~1_combout\ : std_logic;
SIGNAL \cont|Add0~0_combout\ : std_logic;
SIGNAL \cont|internal_count[0]~2_combout\ : std_logic;
SIGNAL \oper1|internal_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \arit|resposta_parcial\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \opr|internal_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \oper2|internal_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont|internal_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock2|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
ww_pb0 <= pb0;
ww_clk <= clk;
operando1 <= ww_operando1;
operador1 <= ww_operador1;
operando2 <= ww_operando2;
correto <= ww_correto;
acerto <= ww_acerto;
pontos <= ww_pontos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\comb~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~2_combout\);

\arit|resposta_parcial[4]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \arit|resposta_parcial[4]~3_combout\);

\pb0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pb0~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\comb~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~1_combout\);
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

-- Location: IOOBUF_X49_Y54_N9
\operando1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper1|internal_count\(0),
	devoe => ww_devoe,
	o => \operando1[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\operando1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper1|internal_count\(1),
	devoe => ww_devoe,
	o => \operando1[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\operando1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper1|internal_count\(2),
	devoe => ww_devoe,
	o => \operando1[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\operando1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper1|internal_count\(3),
	devoe => ww_devoe,
	o => \operando1[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\operador1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opr|internal_count\(0),
	devoe => ww_devoe,
	o => \operador1[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\operador1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opr|internal_count\(1),
	devoe => ww_devoe,
	o => \operador1[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\operador1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opr|internal_count\(2),
	devoe => ww_devoe,
	o => \operador1[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\operando2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper2|internal_count\(0),
	devoe => ww_devoe,
	o => \operando2[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\operando2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper2|internal_count\(1),
	devoe => ww_devoe,
	o => \operando2[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\operando2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper2|internal_count\(2),
	devoe => ww_devoe,
	o => \operando2[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\operando2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oper2|internal_count\(3),
	devoe => ww_devoe,
	o => \operando2[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\correto[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arit|resposta_parcial\(0),
	devoe => ww_devoe,
	o => \correto[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\correto[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arit|resposta_parcial\(1),
	devoe => ww_devoe,
	o => \correto[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\correto[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arit|resposta_parcial\(2),
	devoe => ww_devoe,
	o => \correto[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\correto[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arit|resposta_parcial\(3),
	devoe => ww_devoe,
	o => \correto[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\correto[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arit|resposta_parcial\(4),
	devoe => ww_devoe,
	o => \correto[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\acerto~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \check1|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \acerto~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\pontos[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|internal_count\(0),
	devoe => ww_devoe,
	o => \pontos[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\pontos[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|internal_count\(1),
	devoe => ww_devoe,
	o => \pontos[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\pontos[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|internal_count\(2),
	devoe => ww_devoe,
	o => \pontos[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\pontos[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|internal_count\(3),
	devoe => ww_devoe,
	o => \pontos[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\pontos[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|internal_count\(4),
	devoe => ww_devoe,
	o => \pontos[4]~output_o\);

-- Location: IOIBUF_X0_Y18_N22
\pb0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb0,
	o => \pb0~input_o\);

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

-- Location: LCCOMB_X7_Y29_N0
\clock1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~0_combout\ = \clock1|count\(0) $ (GND)
-- \clock1|Add0~1\ = CARRY(!\clock1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(0),
	datad => VCC,
	combout => \clock1|Add0~0_combout\,
	cout => \clock1|Add0~1\);

-- Location: LCCOMB_X8_Y29_N0
\clock1|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|count[0]~3_combout\ = !\clock1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock1|Add0~0_combout\,
	combout => \clock1|count[0]~3_combout\);

-- Location: FF_X7_Y29_N1
\clock1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clock1|count[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(0));

-- Location: LCCOMB_X7_Y29_N2
\clock1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~2_combout\ = (\clock1|count\(1) & (!\clock1|Add0~1\)) # (!\clock1|count\(1) & ((\clock1|Add0~1\) # (GND)))
-- \clock1|Add0~3\ = CARRY((!\clock1|Add0~1\) # (!\clock1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(1),
	datad => VCC,
	cin => \clock1|Add0~1\,
	combout => \clock1|Add0~2_combout\,
	cout => \clock1|Add0~3\);

-- Location: LCCOMB_X6_Y29_N6
\clock1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|count~0_combout\ = (\clock1|Add0~2_combout\ & !\clock1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock1|Add0~2_combout\,
	datad => \clock1|Equal0~10_combout\,
	combout => \clock1|count~0_combout\);

-- Location: FF_X7_Y29_N11
\clock1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clock1|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(1));

-- Location: LCCOMB_X7_Y29_N4
\clock1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~4_combout\ = (\clock1|count\(2) & (\clock1|Add0~3\ $ (GND))) # (!\clock1|count\(2) & (!\clock1|Add0~3\ & VCC))
-- \clock1|Add0~5\ = CARRY((\clock1|count\(2) & !\clock1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(2),
	datad => VCC,
	cin => \clock1|Add0~3\,
	combout => \clock1|Add0~4_combout\,
	cout => \clock1|Add0~5\);

-- Location: FF_X7_Y29_N5
\clock1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(2));

-- Location: LCCOMB_X7_Y29_N6
\clock1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~6_combout\ = (\clock1|count\(3) & (!\clock1|Add0~5\)) # (!\clock1|count\(3) & ((\clock1|Add0~5\) # (GND)))
-- \clock1|Add0~7\ = CARRY((!\clock1|Add0~5\) # (!\clock1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(3),
	datad => VCC,
	cin => \clock1|Add0~5\,
	combout => \clock1|Add0~6_combout\,
	cout => \clock1|Add0~7\);

-- Location: FF_X7_Y29_N7
\clock1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(3));

-- Location: LCCOMB_X7_Y29_N8
\clock1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~8_combout\ = (\clock1|count\(4) & (\clock1|Add0~7\ $ (GND))) # (!\clock1|count\(4) & (!\clock1|Add0~7\ & VCC))
-- \clock1|Add0~9\ = CARRY((\clock1|count\(4) & !\clock1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(4),
	datad => VCC,
	cin => \clock1|Add0~7\,
	combout => \clock1|Add0~8_combout\,
	cout => \clock1|Add0~9\);

-- Location: LCCOMB_X6_Y29_N26
\clock1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|count~1_combout\ = (\clock1|Add0~8_combout\ & !\clock1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock1|Add0~8_combout\,
	datad => \clock1|Equal0~10_combout\,
	combout => \clock1|count~1_combout\);

-- Location: FF_X6_Y29_N27
\clock1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(4));

-- Location: LCCOMB_X7_Y29_N10
\clock1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~10_combout\ = (\clock1|count\(5) & (!\clock1|Add0~9\)) # (!\clock1|count\(5) & ((\clock1|Add0~9\) # (GND)))
-- \clock1|Add0~11\ = CARRY((!\clock1|Add0~9\) # (!\clock1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(5),
	datad => VCC,
	cin => \clock1|Add0~9\,
	combout => \clock1|Add0~10_combout\,
	cout => \clock1|Add0~11\);

-- Location: LCCOMB_X6_Y29_N16
\clock1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|count~2_combout\ = (!\clock1|Equal0~10_combout\ & \clock1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock1|Equal0~10_combout\,
	datad => \clock1|Add0~10_combout\,
	combout => \clock1|count~2_combout\);

-- Location: FF_X6_Y29_N17
\clock1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(5));

-- Location: LCCOMB_X7_Y29_N12
\clock1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~12_combout\ = (\clock1|count\(6) & (\clock1|Add0~11\ $ (GND))) # (!\clock1|count\(6) & (!\clock1|Add0~11\ & VCC))
-- \clock1|Add0~13\ = CARRY((\clock1|count\(6) & !\clock1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(6),
	datad => VCC,
	cin => \clock1|Add0~11\,
	combout => \clock1|Add0~12_combout\,
	cout => \clock1|Add0~13\);

-- Location: FF_X7_Y29_N13
\clock1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(6));

-- Location: LCCOMB_X7_Y29_N14
\clock1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~14_combout\ = (\clock1|count\(7) & (!\clock1|Add0~13\)) # (!\clock1|count\(7) & ((\clock1|Add0~13\) # (GND)))
-- \clock1|Add0~15\ = CARRY((!\clock1|Add0~13\) # (!\clock1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(7),
	datad => VCC,
	cin => \clock1|Add0~13\,
	combout => \clock1|Add0~14_combout\,
	cout => \clock1|Add0~15\);

-- Location: FF_X7_Y29_N15
\clock1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(7));

-- Location: LCCOMB_X7_Y29_N16
\clock1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~16_combout\ = (\clock1|count\(8) & (\clock1|Add0~15\ $ (GND))) # (!\clock1|count\(8) & (!\clock1|Add0~15\ & VCC))
-- \clock1|Add0~17\ = CARRY((\clock1|count\(8) & !\clock1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(8),
	datad => VCC,
	cin => \clock1|Add0~15\,
	combout => \clock1|Add0~16_combout\,
	cout => \clock1|Add0~17\);

-- Location: FF_X7_Y29_N17
\clock1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(8));

-- Location: LCCOMB_X7_Y29_N18
\clock1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~18_combout\ = (\clock1|count\(9) & (!\clock1|Add0~17\)) # (!\clock1|count\(9) & ((\clock1|Add0~17\) # (GND)))
-- \clock1|Add0~19\ = CARRY((!\clock1|Add0~17\) # (!\clock1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(9),
	datad => VCC,
	cin => \clock1|Add0~17\,
	combout => \clock1|Add0~18_combout\,
	cout => \clock1|Add0~19\);

-- Location: FF_X7_Y29_N19
\clock1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(9));

-- Location: LCCOMB_X7_Y29_N20
\clock1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~20_combout\ = (\clock1|count\(10) & (\clock1|Add0~19\ $ (GND))) # (!\clock1|count\(10) & (!\clock1|Add0~19\ & VCC))
-- \clock1|Add0~21\ = CARRY((\clock1|count\(10) & !\clock1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(10),
	datad => VCC,
	cin => \clock1|Add0~19\,
	combout => \clock1|Add0~20_combout\,
	cout => \clock1|Add0~21\);

-- Location: FF_X7_Y29_N21
\clock1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(10));

-- Location: LCCOMB_X7_Y29_N22
\clock1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~22_combout\ = (\clock1|count\(11) & (!\clock1|Add0~21\)) # (!\clock1|count\(11) & ((\clock1|Add0~21\) # (GND)))
-- \clock1|Add0~23\ = CARRY((!\clock1|Add0~21\) # (!\clock1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(11),
	datad => VCC,
	cin => \clock1|Add0~21\,
	combout => \clock1|Add0~22_combout\,
	cout => \clock1|Add0~23\);

-- Location: FF_X7_Y29_N23
\clock1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(11));

-- Location: LCCOMB_X7_Y29_N24
\clock1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~24_combout\ = (\clock1|count\(12) & (\clock1|Add0~23\ $ (GND))) # (!\clock1|count\(12) & (!\clock1|Add0~23\ & VCC))
-- \clock1|Add0~25\ = CARRY((\clock1|count\(12) & !\clock1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(12),
	datad => VCC,
	cin => \clock1|Add0~23\,
	combout => \clock1|Add0~24_combout\,
	cout => \clock1|Add0~25\);

-- Location: FF_X7_Y29_N25
\clock1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(12));

-- Location: LCCOMB_X7_Y29_N26
\clock1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~26_combout\ = (\clock1|count\(13) & (!\clock1|Add0~25\)) # (!\clock1|count\(13) & ((\clock1|Add0~25\) # (GND)))
-- \clock1|Add0~27\ = CARRY((!\clock1|Add0~25\) # (!\clock1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(13),
	datad => VCC,
	cin => \clock1|Add0~25\,
	combout => \clock1|Add0~26_combout\,
	cout => \clock1|Add0~27\);

-- Location: FF_X7_Y29_N27
\clock1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(13));

-- Location: LCCOMB_X7_Y29_N28
\clock1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~28_combout\ = (\clock1|count\(14) & (\clock1|Add0~27\ $ (GND))) # (!\clock1|count\(14) & (!\clock1|Add0~27\ & VCC))
-- \clock1|Add0~29\ = CARRY((\clock1|count\(14) & !\clock1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(14),
	datad => VCC,
	cin => \clock1|Add0~27\,
	combout => \clock1|Add0~28_combout\,
	cout => \clock1|Add0~29\);

-- Location: FF_X7_Y29_N29
\clock1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(14));

-- Location: LCCOMB_X7_Y29_N30
\clock1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~30_combout\ = (\clock1|count\(15) & (!\clock1|Add0~29\)) # (!\clock1|count\(15) & ((\clock1|Add0~29\) # (GND)))
-- \clock1|Add0~31\ = CARRY((!\clock1|Add0~29\) # (!\clock1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(15),
	datad => VCC,
	cin => \clock1|Add0~29\,
	combout => \clock1|Add0~30_combout\,
	cout => \clock1|Add0~31\);

-- Location: FF_X7_Y29_N31
\clock1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(15));

-- Location: LCCOMB_X7_Y28_N0
\clock1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~32_combout\ = (\clock1|count\(16) & (\clock1|Add0~31\ $ (GND))) # (!\clock1|count\(16) & (!\clock1|Add0~31\ & VCC))
-- \clock1|Add0~33\ = CARRY((\clock1|count\(16) & !\clock1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(16),
	datad => VCC,
	cin => \clock1|Add0~31\,
	combout => \clock1|Add0~32_combout\,
	cout => \clock1|Add0~33\);

-- Location: FF_X7_Y28_N1
\clock1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(16));

-- Location: LCCOMB_X7_Y28_N2
\clock1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~34_combout\ = (\clock1|count\(17) & (!\clock1|Add0~33\)) # (!\clock1|count\(17) & ((\clock1|Add0~33\) # (GND)))
-- \clock1|Add0~35\ = CARRY((!\clock1|Add0~33\) # (!\clock1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(17),
	datad => VCC,
	cin => \clock1|Add0~33\,
	combout => \clock1|Add0~34_combout\,
	cout => \clock1|Add0~35\);

-- Location: FF_X7_Y28_N3
\clock1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(17));

-- Location: LCCOMB_X7_Y28_N4
\clock1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~36_combout\ = (\clock1|count\(18) & (\clock1|Add0~35\ $ (GND))) # (!\clock1|count\(18) & (!\clock1|Add0~35\ & VCC))
-- \clock1|Add0~37\ = CARRY((\clock1|count\(18) & !\clock1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(18),
	datad => VCC,
	cin => \clock1|Add0~35\,
	combout => \clock1|Add0~36_combout\,
	cout => \clock1|Add0~37\);

-- Location: FF_X7_Y28_N5
\clock1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(18));

-- Location: LCCOMB_X7_Y28_N6
\clock1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~38_combout\ = (\clock1|count\(19) & (!\clock1|Add0~37\)) # (!\clock1|count\(19) & ((\clock1|Add0~37\) # (GND)))
-- \clock1|Add0~39\ = CARRY((!\clock1|Add0~37\) # (!\clock1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(19),
	datad => VCC,
	cin => \clock1|Add0~37\,
	combout => \clock1|Add0~38_combout\,
	cout => \clock1|Add0~39\);

-- Location: FF_X7_Y28_N7
\clock1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(19));

-- Location: LCCOMB_X7_Y28_N8
\clock1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~40_combout\ = (\clock1|count\(20) & (\clock1|Add0~39\ $ (GND))) # (!\clock1|count\(20) & (!\clock1|Add0~39\ & VCC))
-- \clock1|Add0~41\ = CARRY((\clock1|count\(20) & !\clock1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(20),
	datad => VCC,
	cin => \clock1|Add0~39\,
	combout => \clock1|Add0~40_combout\,
	cout => \clock1|Add0~41\);

-- Location: FF_X7_Y28_N9
\clock1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(20));

-- Location: LCCOMB_X7_Y28_N10
\clock1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~42_combout\ = (\clock1|count\(21) & (!\clock1|Add0~41\)) # (!\clock1|count\(21) & ((\clock1|Add0~41\) # (GND)))
-- \clock1|Add0~43\ = CARRY((!\clock1|Add0~41\) # (!\clock1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(21),
	datad => VCC,
	cin => \clock1|Add0~41\,
	combout => \clock1|Add0~42_combout\,
	cout => \clock1|Add0~43\);

-- Location: FF_X7_Y28_N11
\clock1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(21));

-- Location: LCCOMB_X7_Y28_N12
\clock1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~44_combout\ = (\clock1|count\(22) & (\clock1|Add0~43\ $ (GND))) # (!\clock1|count\(22) & (!\clock1|Add0~43\ & VCC))
-- \clock1|Add0~45\ = CARRY((\clock1|count\(22) & !\clock1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(22),
	datad => VCC,
	cin => \clock1|Add0~43\,
	combout => \clock1|Add0~44_combout\,
	cout => \clock1|Add0~45\);

-- Location: FF_X7_Y28_N13
\clock1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(22));

-- Location: LCCOMB_X7_Y28_N14
\clock1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~46_combout\ = (\clock1|count\(23) & (!\clock1|Add0~45\)) # (!\clock1|count\(23) & ((\clock1|Add0~45\) # (GND)))
-- \clock1|Add0~47\ = CARRY((!\clock1|Add0~45\) # (!\clock1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(23),
	datad => VCC,
	cin => \clock1|Add0~45\,
	combout => \clock1|Add0~46_combout\,
	cout => \clock1|Add0~47\);

-- Location: FF_X7_Y28_N15
\clock1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(23));

-- Location: LCCOMB_X7_Y28_N16
\clock1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~48_combout\ = (\clock1|count\(24) & (\clock1|Add0~47\ $ (GND))) # (!\clock1|count\(24) & (!\clock1|Add0~47\ & VCC))
-- \clock1|Add0~49\ = CARRY((\clock1|count\(24) & !\clock1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(24),
	datad => VCC,
	cin => \clock1|Add0~47\,
	combout => \clock1|Add0~48_combout\,
	cout => \clock1|Add0~49\);

-- Location: FF_X7_Y28_N17
\clock1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(24));

-- Location: LCCOMB_X7_Y28_N18
\clock1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~50_combout\ = (\clock1|count\(25) & (!\clock1|Add0~49\)) # (!\clock1|count\(25) & ((\clock1|Add0~49\) # (GND)))
-- \clock1|Add0~51\ = CARRY((!\clock1|Add0~49\) # (!\clock1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(25),
	datad => VCC,
	cin => \clock1|Add0~49\,
	combout => \clock1|Add0~50_combout\,
	cout => \clock1|Add0~51\);

-- Location: FF_X7_Y28_N19
\clock1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(25));

-- Location: LCCOMB_X7_Y28_N20
\clock1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~52_combout\ = (\clock1|count\(26) & (\clock1|Add0~51\ $ (GND))) # (!\clock1|count\(26) & (!\clock1|Add0~51\ & VCC))
-- \clock1|Add0~53\ = CARRY((\clock1|count\(26) & !\clock1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(26),
	datad => VCC,
	cin => \clock1|Add0~51\,
	combout => \clock1|Add0~52_combout\,
	cout => \clock1|Add0~53\);

-- Location: FF_X7_Y28_N21
\clock1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(26));

-- Location: LCCOMB_X7_Y28_N22
\clock1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~54_combout\ = (\clock1|count\(27) & (!\clock1|Add0~53\)) # (!\clock1|count\(27) & ((\clock1|Add0~53\) # (GND)))
-- \clock1|Add0~55\ = CARRY((!\clock1|Add0~53\) # (!\clock1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(27),
	datad => VCC,
	cin => \clock1|Add0~53\,
	combout => \clock1|Add0~54_combout\,
	cout => \clock1|Add0~55\);

-- Location: FF_X7_Y28_N23
\clock1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(27));

-- Location: LCCOMB_X7_Y28_N24
\clock1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~56_combout\ = (\clock1|count\(28) & (\clock1|Add0~55\ $ (GND))) # (!\clock1|count\(28) & (!\clock1|Add0~55\ & VCC))
-- \clock1|Add0~57\ = CARRY((\clock1|count\(28) & !\clock1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(28),
	datad => VCC,
	cin => \clock1|Add0~55\,
	combout => \clock1|Add0~56_combout\,
	cout => \clock1|Add0~57\);

-- Location: FF_X7_Y28_N25
\clock1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(28));

-- Location: LCCOMB_X7_Y28_N26
\clock1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~58_combout\ = (\clock1|count\(29) & (!\clock1|Add0~57\)) # (!\clock1|count\(29) & ((\clock1|Add0~57\) # (GND)))
-- \clock1|Add0~59\ = CARRY((!\clock1|Add0~57\) # (!\clock1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(29),
	datad => VCC,
	cin => \clock1|Add0~57\,
	combout => \clock1|Add0~58_combout\,
	cout => \clock1|Add0~59\);

-- Location: FF_X7_Y28_N27
\clock1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(29));

-- Location: LCCOMB_X7_Y28_N28
\clock1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~60_combout\ = (\clock1|count\(30) & (\clock1|Add0~59\ $ (GND))) # (!\clock1|count\(30) & (!\clock1|Add0~59\ & VCC))
-- \clock1|Add0~61\ = CARRY((\clock1|count\(30) & !\clock1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(30),
	datad => VCC,
	cin => \clock1|Add0~59\,
	combout => \clock1|Add0~60_combout\,
	cout => \clock1|Add0~61\);

-- Location: FF_X7_Y28_N29
\clock1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(30));

-- Location: LCCOMB_X7_Y28_N30
\clock1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Add0~62_combout\ = \clock1|count\(31) $ (\clock1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(31),
	cin => \clock1|Add0~61\,
	combout => \clock1|Add0~62_combout\);

-- Location: FF_X7_Y28_N31
\clock1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|count\(31));

-- Location: LCCOMB_X6_Y28_N2
\clock1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~9_combout\ = (!\clock1|count\(31) & (!\clock1|count\(29) & (!\clock1|count\(28) & !\clock1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(31),
	datab => \clock1|count\(29),
	datac => \clock1|count\(28),
	datad => \clock1|count\(30),
	combout => \clock1|Equal0~9_combout\);

-- Location: LCCOMB_X6_Y28_N0
\clock1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~8_combout\ = (!\clock1|count\(26) & (!\clock1|count\(25) & (!\clock1|count\(27) & !\clock1|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(26),
	datab => \clock1|count\(25),
	datac => \clock1|count\(27),
	datad => \clock1|count\(24),
	combout => \clock1|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y29_N22
\clock1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~0_combout\ = (!\clock1|count\(2) & (\clock1|count\(0) & (!\clock1|count\(3) & \clock1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(2),
	datab => \clock1|count\(0),
	datac => \clock1|count\(3),
	datad => \clock1|count\(1),
	combout => \clock1|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y29_N8
\clock1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~3_combout\ = (!\clock1|count\(15) & (!\clock1|count\(14) & (!\clock1|count\(13) & !\clock1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(15),
	datab => \clock1|count\(14),
	datac => \clock1|count\(13),
	datad => \clock1|count\(12),
	combout => \clock1|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y29_N30
\clock1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~1_combout\ = (\clock1|count\(4) & (\clock1|count\(5) & (!\clock1|count\(7) & !\clock1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(4),
	datab => \clock1|count\(5),
	datac => \clock1|count\(7),
	datad => \clock1|count\(6),
	combout => \clock1|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y29_N18
\clock1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~2_combout\ = (!\clock1|count\(10) & (!\clock1|count\(8) & (!\clock1|count\(9) & !\clock1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(10),
	datab => \clock1|count\(8),
	datac => \clock1|count\(9),
	datad => \clock1|count\(11),
	combout => \clock1|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y29_N14
\clock1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~4_combout\ = (\clock1|Equal0~0_combout\ & (\clock1|Equal0~3_combout\ & (\clock1|Equal0~1_combout\ & \clock1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|Equal0~0_combout\,
	datab => \clock1|Equal0~3_combout\,
	datac => \clock1|Equal0~1_combout\,
	datad => \clock1|Equal0~2_combout\,
	combout => \clock1|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y29_N4
\clock1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~5_combout\ = (!\clock1|count\(17) & (!\clock1|count\(18) & (!\clock1|count\(19) & !\clock1|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(17),
	datab => \clock1|count\(18),
	datac => \clock1|count\(19),
	datad => \clock1|count\(16),
	combout => \clock1|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y29_N24
\clock1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~6_combout\ = (!\clock1|count\(21) & !\clock1|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock1|count\(21),
	datad => \clock1|count\(20),
	combout => \clock1|Equal0~6_combout\);

-- Location: LCCOMB_X6_Y29_N20
\clock1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~7_combout\ = (!\clock1|count\(23) & (!\clock1|count\(22) & (\clock1|Equal0~5_combout\ & \clock1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|count\(23),
	datab => \clock1|count\(22),
	datac => \clock1|Equal0~5_combout\,
	datad => \clock1|Equal0~6_combout\,
	combout => \clock1|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y29_N28
\clock1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|Equal0~10_combout\ = (\clock1|Equal0~9_combout\ & (\clock1|Equal0~8_combout\ & (\clock1|Equal0~4_combout\ & \clock1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock1|Equal0~9_combout\,
	datab => \clock1|Equal0~8_combout\,
	datac => \clock1|Equal0~4_combout\,
	datad => \clock1|Equal0~7_combout\,
	combout => \clock1|Equal0~10_combout\);

-- Location: LCCOMB_X6_Y29_N12
\clock1|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock1|tmp~0_combout\ = \clock1|Equal0~10_combout\ $ (\clock1|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock1|Equal0~10_combout\,
	datac => \clock1|tmp~q\,
	combout => \clock1|tmp~0_combout\);

-- Location: FF_X6_Y29_N13
\clock1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clock1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock1|tmp~q\);

-- Location: LCCOMB_X6_Y29_N0
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = LCELL((\pb0~input_o\ & \clock1|tmp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb0~input_o\,
	datad => \clock1|tmp~q\,
	combout => \comb~2_combout\);

-- Location: CLKCTRL_G1
\comb~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~2clkctrl_outclk\);

-- Location: LCCOMB_X50_Y51_N16
\oper1|internal_count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper1|internal_count[0]~3_combout\ = !\oper1|internal_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \oper1|internal_count\(0),
	combout => \oper1|internal_count[0]~3_combout\);

-- Location: FF_X50_Y51_N17
\oper1|internal_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~2clkctrl_outclk\,
	d => \oper1|internal_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper1|internal_count\(0));

-- Location: LCCOMB_X51_Y51_N4
\oper1|internal_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper1|internal_count[1]~0_combout\ = \oper1|internal_count\(0) $ (\oper1|internal_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(0),
	datac => \oper1|internal_count\(1),
	combout => \oper1|internal_count[1]~0_combout\);

-- Location: FF_X51_Y51_N5
\oper1|internal_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~2clkctrl_outclk\,
	d => \oper1|internal_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper1|internal_count\(1));

-- Location: LCCOMB_X50_Y51_N6
\oper1|internal_count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper1|internal_count[2]~1_combout\ = \oper1|internal_count\(2) $ (((\oper1|internal_count\(0) & \oper1|internal_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \oper1|internal_count\(0),
	datac => \oper1|internal_count\(2),
	datad => \oper1|internal_count\(1),
	combout => \oper1|internal_count[2]~1_combout\);

-- Location: FF_X50_Y51_N7
\oper1|internal_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~2clkctrl_outclk\,
	d => \oper1|internal_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper1|internal_count\(2));

-- Location: LCCOMB_X50_Y51_N28
\oper1|internal_count[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper1|internal_count[3]~2_combout\ = \oper1|internal_count\(3) $ (((\oper1|internal_count\(2) & (\oper1|internal_count\(0) & \oper1|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(2),
	datab => \oper1|internal_count\(0),
	datac => \oper1|internal_count\(3),
	datad => \oper1|internal_count\(1),
	combout => \oper1|internal_count[3]~2_combout\);

-- Location: FF_X50_Y51_N29
\oper1|internal_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~2clkctrl_outclk\,
	d => \oper1|internal_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper1|internal_count\(3));

-- Location: LCCOMB_X1_Y18_N0
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL((\pb0~input_o\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb0~input_o\,
	datad => \clk~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X52_Y51_N30
\opr|internal_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opr|internal_count[1]~1_combout\ = \opr|internal_count\(0) $ (\opr|internal_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opr|internal_count\(0),
	datad => \opr|internal_count\(1),
	combout => \opr|internal_count[1]~1_combout\);

-- Location: FF_X52_Y51_N1
\opr|internal_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	asdata => \opr|internal_count[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \opr|internal_count\(1));

-- Location: LCCOMB_X52_Y51_N28
\opr|internal_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opr|internal_count~2_combout\ = (\opr|internal_count\(1) & (\opr|internal_count\(0) $ (\opr|internal_count\(2)))) # (!\opr|internal_count\(1) & (\opr|internal_count\(0) & \opr|internal_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opr|internal_count\(1),
	datac => \opr|internal_count\(0),
	datad => \opr|internal_count\(2),
	combout => \opr|internal_count~2_combout\);

-- Location: FF_X52_Y51_N5
\opr|internal_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	asdata => \opr|internal_count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \opr|internal_count\(2));

-- Location: LCCOMB_X52_Y51_N2
\opr|internal_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opr|internal_count~0_combout\ = (!\opr|internal_count\(0) & ((\opr|internal_count\(1)) # (!\opr|internal_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opr|internal_count\(1),
	datac => \opr|internal_count\(0),
	datad => \opr|internal_count\(2),
	combout => \opr|internal_count~0_combout\);

-- Location: FF_X52_Y51_N17
\opr|internal_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	asdata => \opr|internal_count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \opr|internal_count\(0));

-- Location: LCCOMB_X7_Y25_N0
\clock2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~0_combout\ = \clock2|count\(0) $ (GND)
-- \clock2|Add0~1\ = CARRY(!\clock2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(0),
	datad => VCC,
	combout => \clock2|Add0~0_combout\,
	cout => \clock2|Add0~1\);

-- Location: LCCOMB_X6_Y25_N16
\clock2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|count~0_combout\ = (!\clock2|Add0~0_combout\ & !\clock2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock2|Add0~0_combout\,
	datad => \clock2|Equal0~10_combout\,
	combout => \clock2|count~0_combout\);

-- Location: FF_X7_Y25_N7
\clock2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clock2|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(0));

-- Location: LCCOMB_X7_Y25_N2
\clock2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~2_combout\ = (\clock2|count\(1) & (!\clock2|Add0~1\)) # (!\clock2|count\(1) & ((\clock2|Add0~1\) # (GND)))
-- \clock2|Add0~3\ = CARRY((!\clock2|Add0~1\) # (!\clock2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(1),
	datad => VCC,
	cin => \clock2|Add0~1\,
	combout => \clock2|Add0~2_combout\,
	cout => \clock2|Add0~3\);

-- Location: FF_X7_Y25_N3
\clock2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(1));

-- Location: LCCOMB_X7_Y25_N4
\clock2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~4_combout\ = (\clock2|count\(2) & (\clock2|Add0~3\ $ (GND))) # (!\clock2|count\(2) & (!\clock2|Add0~3\ & VCC))
-- \clock2|Add0~5\ = CARRY((\clock2|count\(2) & !\clock2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(2),
	datad => VCC,
	cin => \clock2|Add0~3\,
	combout => \clock2|Add0~4_combout\,
	cout => \clock2|Add0~5\);

-- Location: FF_X7_Y25_N5
\clock2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(2));

-- Location: LCCOMB_X7_Y25_N6
\clock2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~6_combout\ = (\clock2|count\(3) & (!\clock2|Add0~5\)) # (!\clock2|count\(3) & ((\clock2|Add0~5\) # (GND)))
-- \clock2|Add0~7\ = CARRY((!\clock2|Add0~5\) # (!\clock2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(3),
	datad => VCC,
	cin => \clock2|Add0~5\,
	combout => \clock2|Add0~6_combout\,
	cout => \clock2|Add0~7\);

-- Location: LCCOMB_X6_Y25_N6
\clock2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|count~1_combout\ = (\clock2|Add0~6_combout\ & !\clock2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|Add0~6_combout\,
	datad => \clock2|Equal0~10_combout\,
	combout => \clock2|count~1_combout\);

-- Location: FF_X7_Y25_N13
\clock2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clock2|count~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(3));

-- Location: LCCOMB_X7_Y25_N8
\clock2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~8_combout\ = (\clock2|count\(4) & (\clock2|Add0~7\ $ (GND))) # (!\clock2|count\(4) & (!\clock2|Add0~7\ & VCC))
-- \clock2|Add0~9\ = CARRY((\clock2|count\(4) & !\clock2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(4),
	datad => VCC,
	cin => \clock2|Add0~7\,
	combout => \clock2|Add0~8_combout\,
	cout => \clock2|Add0~9\);

-- Location: FF_X7_Y25_N9
\clock2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(4));

-- Location: LCCOMB_X7_Y25_N10
\clock2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~10_combout\ = (\clock2|count\(5) & (!\clock2|Add0~9\)) # (!\clock2|count\(5) & ((\clock2|Add0~9\) # (GND)))
-- \clock2|Add0~11\ = CARRY((!\clock2|Add0~9\) # (!\clock2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(5),
	datad => VCC,
	cin => \clock2|Add0~9\,
	combout => \clock2|Add0~10_combout\,
	cout => \clock2|Add0~11\);

-- Location: FF_X7_Y25_N11
\clock2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(5));

-- Location: LCCOMB_X7_Y25_N12
\clock2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~12_combout\ = (\clock2|count\(6) & (\clock2|Add0~11\ $ (GND))) # (!\clock2|count\(6) & (!\clock2|Add0~11\ & VCC))
-- \clock2|Add0~13\ = CARRY((\clock2|count\(6) & !\clock2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(6),
	datad => VCC,
	cin => \clock2|Add0~11\,
	combout => \clock2|Add0~12_combout\,
	cout => \clock2|Add0~13\);

-- Location: LCCOMB_X6_Y25_N30
\clock2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|count~2_combout\ = (\clock2|Add0~12_combout\ & !\clock2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock2|Add0~12_combout\,
	datad => \clock2|Equal0~10_combout\,
	combout => \clock2|count~2_combout\);

-- Location: FF_X6_Y25_N31
\clock2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(6));

-- Location: LCCOMB_X7_Y25_N14
\clock2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~14_combout\ = (\clock2|count\(7) & (!\clock2|Add0~13\)) # (!\clock2|count\(7) & ((\clock2|Add0~13\) # (GND)))
-- \clock2|Add0~15\ = CARRY((!\clock2|Add0~13\) # (!\clock2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(7),
	datad => VCC,
	cin => \clock2|Add0~13\,
	combout => \clock2|Add0~14_combout\,
	cout => \clock2|Add0~15\);

-- Location: FF_X7_Y25_N15
\clock2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(7));

-- Location: LCCOMB_X7_Y25_N16
\clock2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~16_combout\ = (\clock2|count\(8) & (\clock2|Add0~15\ $ (GND))) # (!\clock2|count\(8) & (!\clock2|Add0~15\ & VCC))
-- \clock2|Add0~17\ = CARRY((\clock2|count\(8) & !\clock2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(8),
	datad => VCC,
	cin => \clock2|Add0~15\,
	combout => \clock2|Add0~16_combout\,
	cout => \clock2|Add0~17\);

-- Location: FF_X7_Y25_N17
\clock2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(8));

-- Location: LCCOMB_X7_Y25_N18
\clock2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~18_combout\ = (\clock2|count\(9) & (!\clock2|Add0~17\)) # (!\clock2|count\(9) & ((\clock2|Add0~17\) # (GND)))
-- \clock2|Add0~19\ = CARRY((!\clock2|Add0~17\) # (!\clock2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(9),
	datad => VCC,
	cin => \clock2|Add0~17\,
	combout => \clock2|Add0~18_combout\,
	cout => \clock2|Add0~19\);

-- Location: FF_X7_Y25_N19
\clock2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(9));

-- Location: LCCOMB_X7_Y25_N20
\clock2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~20_combout\ = (\clock2|count\(10) & (\clock2|Add0~19\ $ (GND))) # (!\clock2|count\(10) & (!\clock2|Add0~19\ & VCC))
-- \clock2|Add0~21\ = CARRY((\clock2|count\(10) & !\clock2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(10),
	datad => VCC,
	cin => \clock2|Add0~19\,
	combout => \clock2|Add0~20_combout\,
	cout => \clock2|Add0~21\);

-- Location: FF_X7_Y25_N21
\clock2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(10));

-- Location: LCCOMB_X7_Y25_N22
\clock2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~22_combout\ = (\clock2|count\(11) & (!\clock2|Add0~21\)) # (!\clock2|count\(11) & ((\clock2|Add0~21\) # (GND)))
-- \clock2|Add0~23\ = CARRY((!\clock2|Add0~21\) # (!\clock2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(11),
	datad => VCC,
	cin => \clock2|Add0~21\,
	combout => \clock2|Add0~22_combout\,
	cout => \clock2|Add0~23\);

-- Location: FF_X7_Y25_N23
\clock2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(11));

-- Location: LCCOMB_X7_Y25_N24
\clock2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~24_combout\ = (\clock2|count\(12) & (\clock2|Add0~23\ $ (GND))) # (!\clock2|count\(12) & (!\clock2|Add0~23\ & VCC))
-- \clock2|Add0~25\ = CARRY((\clock2|count\(12) & !\clock2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(12),
	datad => VCC,
	cin => \clock2|Add0~23\,
	combout => \clock2|Add0~24_combout\,
	cout => \clock2|Add0~25\);

-- Location: FF_X7_Y25_N25
\clock2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(12));

-- Location: LCCOMB_X7_Y25_N26
\clock2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~26_combout\ = (\clock2|count\(13) & (!\clock2|Add0~25\)) # (!\clock2|count\(13) & ((\clock2|Add0~25\) # (GND)))
-- \clock2|Add0~27\ = CARRY((!\clock2|Add0~25\) # (!\clock2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(13),
	datad => VCC,
	cin => \clock2|Add0~25\,
	combout => \clock2|Add0~26_combout\,
	cout => \clock2|Add0~27\);

-- Location: FF_X7_Y25_N27
\clock2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(13));

-- Location: LCCOMB_X7_Y25_N28
\clock2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~28_combout\ = (\clock2|count\(14) & (\clock2|Add0~27\ $ (GND))) # (!\clock2|count\(14) & (!\clock2|Add0~27\ & VCC))
-- \clock2|Add0~29\ = CARRY((\clock2|count\(14) & !\clock2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(14),
	datad => VCC,
	cin => \clock2|Add0~27\,
	combout => \clock2|Add0~28_combout\,
	cout => \clock2|Add0~29\);

-- Location: FF_X7_Y25_N29
\clock2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(14));

-- Location: LCCOMB_X7_Y25_N30
\clock2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~30_combout\ = (\clock2|count\(15) & (!\clock2|Add0~29\)) # (!\clock2|count\(15) & ((\clock2|Add0~29\) # (GND)))
-- \clock2|Add0~31\ = CARRY((!\clock2|Add0~29\) # (!\clock2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(15),
	datad => VCC,
	cin => \clock2|Add0~29\,
	combout => \clock2|Add0~30_combout\,
	cout => \clock2|Add0~31\);

-- Location: FF_X7_Y25_N31
\clock2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(15));

-- Location: LCCOMB_X7_Y24_N0
\clock2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~32_combout\ = (\clock2|count\(16) & (\clock2|Add0~31\ $ (GND))) # (!\clock2|count\(16) & (!\clock2|Add0~31\ & VCC))
-- \clock2|Add0~33\ = CARRY((\clock2|count\(16) & !\clock2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(16),
	datad => VCC,
	cin => \clock2|Add0~31\,
	combout => \clock2|Add0~32_combout\,
	cout => \clock2|Add0~33\);

-- Location: FF_X7_Y24_N1
\clock2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(16));

-- Location: LCCOMB_X7_Y24_N2
\clock2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~34_combout\ = (\clock2|count\(17) & (!\clock2|Add0~33\)) # (!\clock2|count\(17) & ((\clock2|Add0~33\) # (GND)))
-- \clock2|Add0~35\ = CARRY((!\clock2|Add0~33\) # (!\clock2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(17),
	datad => VCC,
	cin => \clock2|Add0~33\,
	combout => \clock2|Add0~34_combout\,
	cout => \clock2|Add0~35\);

-- Location: FF_X7_Y24_N3
\clock2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(17));

-- Location: LCCOMB_X7_Y24_N4
\clock2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~36_combout\ = (\clock2|count\(18) & (\clock2|Add0~35\ $ (GND))) # (!\clock2|count\(18) & (!\clock2|Add0~35\ & VCC))
-- \clock2|Add0~37\ = CARRY((\clock2|count\(18) & !\clock2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(18),
	datad => VCC,
	cin => \clock2|Add0~35\,
	combout => \clock2|Add0~36_combout\,
	cout => \clock2|Add0~37\);

-- Location: FF_X7_Y24_N5
\clock2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(18));

-- Location: LCCOMB_X7_Y24_N6
\clock2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~38_combout\ = (\clock2|count\(19) & (!\clock2|Add0~37\)) # (!\clock2|count\(19) & ((\clock2|Add0~37\) # (GND)))
-- \clock2|Add0~39\ = CARRY((!\clock2|Add0~37\) # (!\clock2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(19),
	datad => VCC,
	cin => \clock2|Add0~37\,
	combout => \clock2|Add0~38_combout\,
	cout => \clock2|Add0~39\);

-- Location: FF_X7_Y24_N7
\clock2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(19));

-- Location: LCCOMB_X7_Y24_N8
\clock2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~40_combout\ = (\clock2|count\(20) & (\clock2|Add0~39\ $ (GND))) # (!\clock2|count\(20) & (!\clock2|Add0~39\ & VCC))
-- \clock2|Add0~41\ = CARRY((\clock2|count\(20) & !\clock2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(20),
	datad => VCC,
	cin => \clock2|Add0~39\,
	combout => \clock2|Add0~40_combout\,
	cout => \clock2|Add0~41\);

-- Location: FF_X7_Y24_N9
\clock2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(20));

-- Location: LCCOMB_X7_Y24_N10
\clock2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~42_combout\ = (\clock2|count\(21) & (!\clock2|Add0~41\)) # (!\clock2|count\(21) & ((\clock2|Add0~41\) # (GND)))
-- \clock2|Add0~43\ = CARRY((!\clock2|Add0~41\) # (!\clock2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(21),
	datad => VCC,
	cin => \clock2|Add0~41\,
	combout => \clock2|Add0~42_combout\,
	cout => \clock2|Add0~43\);

-- Location: FF_X7_Y24_N11
\clock2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(21));

-- Location: LCCOMB_X7_Y24_N12
\clock2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~44_combout\ = (\clock2|count\(22) & (\clock2|Add0~43\ $ (GND))) # (!\clock2|count\(22) & (!\clock2|Add0~43\ & VCC))
-- \clock2|Add0~45\ = CARRY((\clock2|count\(22) & !\clock2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(22),
	datad => VCC,
	cin => \clock2|Add0~43\,
	combout => \clock2|Add0~44_combout\,
	cout => \clock2|Add0~45\);

-- Location: FF_X7_Y24_N13
\clock2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(22));

-- Location: LCCOMB_X7_Y24_N14
\clock2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~46_combout\ = (\clock2|count\(23) & (!\clock2|Add0~45\)) # (!\clock2|count\(23) & ((\clock2|Add0~45\) # (GND)))
-- \clock2|Add0~47\ = CARRY((!\clock2|Add0~45\) # (!\clock2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(23),
	datad => VCC,
	cin => \clock2|Add0~45\,
	combout => \clock2|Add0~46_combout\,
	cout => \clock2|Add0~47\);

-- Location: FF_X7_Y24_N15
\clock2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(23));

-- Location: LCCOMB_X7_Y24_N16
\clock2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~48_combout\ = (\clock2|count\(24) & (\clock2|Add0~47\ $ (GND))) # (!\clock2|count\(24) & (!\clock2|Add0~47\ & VCC))
-- \clock2|Add0~49\ = CARRY((\clock2|count\(24) & !\clock2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(24),
	datad => VCC,
	cin => \clock2|Add0~47\,
	combout => \clock2|Add0~48_combout\,
	cout => \clock2|Add0~49\);

-- Location: FF_X7_Y24_N17
\clock2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(24));

-- Location: LCCOMB_X7_Y24_N18
\clock2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~50_combout\ = (\clock2|count\(25) & (!\clock2|Add0~49\)) # (!\clock2|count\(25) & ((\clock2|Add0~49\) # (GND)))
-- \clock2|Add0~51\ = CARRY((!\clock2|Add0~49\) # (!\clock2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(25),
	datad => VCC,
	cin => \clock2|Add0~49\,
	combout => \clock2|Add0~50_combout\,
	cout => \clock2|Add0~51\);

-- Location: FF_X7_Y24_N19
\clock2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(25));

-- Location: LCCOMB_X7_Y24_N20
\clock2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~52_combout\ = (\clock2|count\(26) & (\clock2|Add0~51\ $ (GND))) # (!\clock2|count\(26) & (!\clock2|Add0~51\ & VCC))
-- \clock2|Add0~53\ = CARRY((\clock2|count\(26) & !\clock2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(26),
	datad => VCC,
	cin => \clock2|Add0~51\,
	combout => \clock2|Add0~52_combout\,
	cout => \clock2|Add0~53\);

-- Location: FF_X7_Y24_N21
\clock2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(26));

-- Location: LCCOMB_X7_Y24_N22
\clock2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~54_combout\ = (\clock2|count\(27) & (!\clock2|Add0~53\)) # (!\clock2|count\(27) & ((\clock2|Add0~53\) # (GND)))
-- \clock2|Add0~55\ = CARRY((!\clock2|Add0~53\) # (!\clock2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(27),
	datad => VCC,
	cin => \clock2|Add0~53\,
	combout => \clock2|Add0~54_combout\,
	cout => \clock2|Add0~55\);

-- Location: FF_X7_Y24_N23
\clock2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(27));

-- Location: LCCOMB_X7_Y24_N24
\clock2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~56_combout\ = (\clock2|count\(28) & (\clock2|Add0~55\ $ (GND))) # (!\clock2|count\(28) & (!\clock2|Add0~55\ & VCC))
-- \clock2|Add0~57\ = CARRY((\clock2|count\(28) & !\clock2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(28),
	datad => VCC,
	cin => \clock2|Add0~55\,
	combout => \clock2|Add0~56_combout\,
	cout => \clock2|Add0~57\);

-- Location: FF_X7_Y24_N25
\clock2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(28));

-- Location: LCCOMB_X7_Y24_N26
\clock2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~58_combout\ = (\clock2|count\(29) & (!\clock2|Add0~57\)) # (!\clock2|count\(29) & ((\clock2|Add0~57\) # (GND)))
-- \clock2|Add0~59\ = CARRY((!\clock2|Add0~57\) # (!\clock2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(29),
	datad => VCC,
	cin => \clock2|Add0~57\,
	combout => \clock2|Add0~58_combout\,
	cout => \clock2|Add0~59\);

-- Location: FF_X7_Y24_N27
\clock2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(29));

-- Location: LCCOMB_X7_Y24_N28
\clock2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~60_combout\ = (\clock2|count\(30) & (\clock2|Add0~59\ $ (GND))) # (!\clock2|count\(30) & (!\clock2|Add0~59\ & VCC))
-- \clock2|Add0~61\ = CARRY((\clock2|count\(30) & !\clock2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock2|count\(30),
	datad => VCC,
	cin => \clock2|Add0~59\,
	combout => \clock2|Add0~60_combout\,
	cout => \clock2|Add0~61\);

-- Location: FF_X7_Y24_N29
\clock2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(30));

-- Location: LCCOMB_X7_Y24_N30
\clock2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Add0~62_combout\ = \clock2|count\(31) $ (\clock2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(31),
	cin => \clock2|Add0~61\,
	combout => \clock2|Add0~62_combout\);

-- Location: FF_X7_Y24_N31
\clock2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|count\(31));

-- Location: LCCOMB_X6_Y24_N2
\clock2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~9_combout\ = (!\clock2|count\(31) & (!\clock2|count\(29) & (!\clock2|count\(28) & !\clock2|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(31),
	datab => \clock2|count\(29),
	datac => \clock2|count\(28),
	datad => \clock2|count\(30),
	combout => \clock2|Equal0~9_combout\);

-- Location: LCCOMB_X6_Y24_N24
\clock2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~8_combout\ = (!\clock2|count\(26) & (!\clock2|count\(24) & (!\clock2|count\(25) & !\clock2|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(26),
	datab => \clock2|count\(24),
	datac => \clock2|count\(25),
	datad => \clock2|count\(27),
	combout => \clock2|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y25_N22
\clock2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~0_combout\ = (\clock2|count\(2) & (\clock2|count\(1) & (!\clock2|count\(0) & !\clock2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(2),
	datab => \clock2|count\(1),
	datac => \clock2|count\(0),
	datad => \clock2|count\(3),
	combout => \clock2|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y25_N18
\clock2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~3_combout\ = (!\clock2|count\(15) & (!\clock2|count\(14) & (!\clock2|count\(13) & !\clock2|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(15),
	datab => \clock2|count\(14),
	datac => \clock2|count\(13),
	datad => \clock2|count\(12),
	combout => \clock2|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y25_N26
\clock2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~1_combout\ = (\clock2|count\(6) & (!\clock2|count\(7) & (!\clock2|count\(5) & !\clock2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(6),
	datab => \clock2|count\(7),
	datac => \clock2|count\(5),
	datad => \clock2|count\(4),
	combout => \clock2|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y25_N24
\clock2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~2_combout\ = (!\clock2|count\(10) & (!\clock2|count\(8) & (!\clock2|count\(9) & !\clock2|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(10),
	datab => \clock2|count\(8),
	datac => \clock2|count\(9),
	datad => \clock2|count\(11),
	combout => \clock2|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y25_N8
\clock2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~4_combout\ = (\clock2|Equal0~0_combout\ & (\clock2|Equal0~3_combout\ & (\clock2|Equal0~1_combout\ & \clock2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|Equal0~0_combout\,
	datab => \clock2|Equal0~3_combout\,
	datac => \clock2|Equal0~1_combout\,
	datad => \clock2|Equal0~2_combout\,
	combout => \clock2|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y24_N0
\clock2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~5_combout\ = (!\clock2|count\(16) & !\clock2|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock2|count\(16),
	datad => \clock2|count\(17),
	combout => \clock2|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y24_N26
\clock2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~6_combout\ = (!\clock2|count\(20) & (!\clock2|count\(23) & (!\clock2|count\(21) & !\clock2|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(20),
	datab => \clock2|count\(23),
	datac => \clock2|count\(21),
	datad => \clock2|count\(22),
	combout => \clock2|Equal0~6_combout\);

-- Location: LCCOMB_X6_Y25_N12
\clock2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~7_combout\ = (!\clock2|count\(18) & (\clock2|Equal0~5_combout\ & (!\clock2|count\(19) & \clock2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|count\(18),
	datab => \clock2|Equal0~5_combout\,
	datac => \clock2|count\(19),
	datad => \clock2|Equal0~6_combout\,
	combout => \clock2|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y25_N28
\clock2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|Equal0~10_combout\ = (\clock2|Equal0~9_combout\ & (\clock2|Equal0~8_combout\ & (\clock2|Equal0~4_combout\ & \clock2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock2|Equal0~9_combout\,
	datab => \clock2|Equal0~8_combout\,
	datac => \clock2|Equal0~4_combout\,
	datad => \clock2|Equal0~7_combout\,
	combout => \clock2|Equal0~10_combout\);

-- Location: LCCOMB_X6_Y25_N14
\clock2|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock2|tmp~0_combout\ = \clock2|tmp~q\ $ (\clock2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock2|tmp~q\,
	datad => \clock2|Equal0~10_combout\,
	combout => \clock2|tmp~0_combout\);

-- Location: FF_X6_Y25_N15
\clock2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clock2|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock2|tmp~q\);

-- Location: LCCOMB_X6_Y25_N4
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = LCELL((\clock2|tmp~q\ & \pb0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock2|tmp~q\,
	datad => \pb0~input_o\,
	combout => \comb~1_combout\);

-- Location: CLKCTRL_G2
\comb~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~1clkctrl_outclk\);

-- Location: LCCOMB_X51_Y51_N2
\oper2|internal_count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper2|internal_count[0]~3_combout\ = !\oper2|internal_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \oper2|internal_count\(0),
	combout => \oper2|internal_count[0]~3_combout\);

-- Location: FF_X51_Y51_N3
\oper2|internal_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1clkctrl_outclk\,
	d => \oper2|internal_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper2|internal_count\(0));

-- Location: LCCOMB_X51_Y51_N0
\oper2|internal_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper2|internal_count[1]~0_combout\ = \oper2|internal_count\(1) $ (\oper2|internal_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \oper2|internal_count\(1),
	datad => \oper2|internal_count\(0),
	combout => \oper2|internal_count[1]~0_combout\);

-- Location: FF_X51_Y51_N1
\oper2|internal_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1clkctrl_outclk\,
	d => \oper2|internal_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper2|internal_count\(1));

-- Location: LCCOMB_X51_Y51_N10
\oper2|internal_count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper2|internal_count[2]~1_combout\ = \oper2|internal_count\(2) $ (((\oper2|internal_count\(1) & \oper2|internal_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \oper2|internal_count\(1),
	datac => \oper2|internal_count\(2),
	datad => \oper2|internal_count\(0),
	combout => \oper2|internal_count[2]~1_combout\);

-- Location: FF_X51_Y51_N11
\oper2|internal_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1clkctrl_outclk\,
	d => \oper2|internal_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper2|internal_count\(2));

-- Location: LCCOMB_X51_Y51_N8
\oper2|internal_count[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oper2|internal_count[3]~2_combout\ = \oper2|internal_count\(3) $ (((\oper2|internal_count\(2) & (\oper2|internal_count\(0) & \oper2|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(2),
	datab => \oper2|internal_count\(0),
	datac => \oper2|internal_count\(3),
	datad => \oper2|internal_count\(1),
	combout => \oper2|internal_count[3]~2_combout\);

-- Location: FF_X51_Y51_N9
\oper2|internal_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1clkctrl_outclk\,
	d => \oper2|internal_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oper2|internal_count\(3));

-- Location: LCCOMB_X50_Y51_N30
\arit|resposta_parcial[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[0]~0_combout\ = (\oper1|internal_count\(0) & ((\opr|internal_count\(0)) # (\oper2|internal_count\(0)))) # (!\oper1|internal_count\(0) & (\opr|internal_count\(0) & \oper2|internal_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \oper1|internal_count\(0),
	datac => \opr|internal_count\(0),
	datad => \oper2|internal_count\(0),
	combout => \arit|resposta_parcial[0]~0_combout\);

-- Location: LCCOMB_X51_Y51_N22
\arit|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add1~0_combout\ = (\oper1|internal_count\(0) & ((GND) # (!\oper2|internal_count\(0)))) # (!\oper1|internal_count\(0) & (\oper2|internal_count\(0) $ (GND)))
-- \arit|Add1~1\ = CARRY((\oper1|internal_count\(0)) # (!\oper2|internal_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(0),
	datab => \oper2|internal_count\(0),
	datad => VCC,
	combout => \arit|Add1~0_combout\,
	cout => \arit|Add1~1\);

-- Location: LCCOMB_X51_Y51_N12
\arit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add0~0_combout\ = (\oper1|internal_count\(0) & (\oper2|internal_count\(0) $ (VCC))) # (!\oper1|internal_count\(0) & (\oper2|internal_count\(0) & VCC))
-- \arit|Add0~1\ = CARRY((\oper1|internal_count\(0) & \oper2|internal_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(0),
	datab => \oper2|internal_count\(0),
	datad => VCC,
	combout => \arit|Add0~0_combout\,
	cout => \arit|Add0~1\);

-- Location: LCCOMB_X52_Y51_N4
\arit|resposta_parcial[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[0]~1_combout\ = (\opr|internal_count\(0) & ((\opr|internal_count\(2) & ((\arit|Add0~0_combout\))) # (!\opr|internal_count\(2) & (\arit|Add1~0_combout\)))) # (!\opr|internal_count\(0) & (((\arit|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opr|internal_count\(0),
	datab => \arit|Add1~0_combout\,
	datac => \opr|internal_count\(2),
	datad => \arit|Add0~0_combout\,
	combout => \arit|resposta_parcial[0]~1_combout\);

-- Location: LCCOMB_X52_Y51_N14
\arit|resposta_parcial[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[0]~2_combout\ = (\opr|internal_count\(2) & (((\arit|resposta_parcial[0]~1_combout\)))) # (!\opr|internal_count\(2) & ((\opr|internal_count\(1) & (\arit|resposta_parcial[0]~0_combout\)) # (!\opr|internal_count\(1) & 
-- ((\arit|resposta_parcial[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|resposta_parcial[0]~0_combout\,
	datab => \opr|internal_count\(2),
	datac => \opr|internal_count\(1),
	datad => \arit|resposta_parcial[0]~1_combout\,
	combout => \arit|resposta_parcial[0]~2_combout\);

-- Location: LCCOMB_X52_Y51_N16
\arit|resposta_parcial[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[4]~3_combout\ = ((!\opr|internal_count\(1) & !\opr|internal_count\(0))) # (!\opr|internal_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opr|internal_count\(1),
	datac => \opr|internal_count\(0),
	datad => \opr|internal_count\(2),
	combout => \arit|resposta_parcial[4]~3_combout\);

-- Location: CLKCTRL_G11
\arit|resposta_parcial[4]~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \arit|resposta_parcial[4]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \arit|resposta_parcial[4]~3clkctrl_outclk\);

-- Location: LCCOMB_X55_Y51_N14
\arit|resposta_parcial[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial\(0) = (GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & (\arit|resposta_parcial[0]~2_combout\)) # (!GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & ((\arit|resposta_parcial\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|resposta_parcial[0]~2_combout\,
	datac => \arit|resposta_parcial\(0),
	datad => \arit|resposta_parcial[4]~3clkctrl_outclk\,
	combout => \arit|resposta_parcial\(0));

-- Location: LCCOMB_X51_Y51_N24
\arit|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add1~2_combout\ = (\oper2|internal_count\(1) & ((\oper1|internal_count\(1) & (!\arit|Add1~1\)) # (!\oper1|internal_count\(1) & ((\arit|Add1~1\) # (GND))))) # (!\oper2|internal_count\(1) & ((\oper1|internal_count\(1) & (\arit|Add1~1\ & VCC)) # 
-- (!\oper1|internal_count\(1) & (!\arit|Add1~1\))))
-- \arit|Add1~3\ = CARRY((\oper2|internal_count\(1) & ((!\arit|Add1~1\) # (!\oper1|internal_count\(1)))) # (!\oper2|internal_count\(1) & (!\oper1|internal_count\(1) & !\arit|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(1),
	datab => \oper1|internal_count\(1),
	datad => VCC,
	cin => \arit|Add1~1\,
	combout => \arit|Add1~2_combout\,
	cout => \arit|Add1~3\);

-- Location: LCCOMB_X51_Y51_N14
\arit|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add0~2_combout\ = (\oper2|internal_count\(1) & ((\oper1|internal_count\(1) & (\arit|Add0~1\ & VCC)) # (!\oper1|internal_count\(1) & (!\arit|Add0~1\)))) # (!\oper2|internal_count\(1) & ((\oper1|internal_count\(1) & (!\arit|Add0~1\)) # 
-- (!\oper1|internal_count\(1) & ((\arit|Add0~1\) # (GND)))))
-- \arit|Add0~3\ = CARRY((\oper2|internal_count\(1) & (!\oper1|internal_count\(1) & !\arit|Add0~1\)) # (!\oper2|internal_count\(1) & ((!\arit|Add0~1\) # (!\oper1|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(1),
	datab => \oper1|internal_count\(1),
	datad => VCC,
	cin => \arit|Add0~1\,
	combout => \arit|Add0~2_combout\,
	cout => \arit|Add0~3\);

-- Location: LCCOMB_X54_Y51_N0
\arit|resposta_parcial[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[1]~4_combout\ = (\opr|internal_count\(0) & ((\arit|Add1~2_combout\) # ((\opr|internal_count\(1))))) # (!\opr|internal_count\(0) & (((\arit|Add0~2_combout\ & !\opr|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|Add1~2_combout\,
	datab => \opr|internal_count\(0),
	datac => \arit|Add0~2_combout\,
	datad => \opr|internal_count\(1),
	combout => \arit|resposta_parcial[1]~4_combout\);

-- Location: LCCOMB_X54_Y51_N22
\arit|resposta_parcial[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[1]~5_combout\ = (\oper2|internal_count\(1) & ((\arit|resposta_parcial[1]~4_combout\) # ((\oper1|internal_count\(1) & \opr|internal_count\(1))))) # (!\oper2|internal_count\(1) & (\arit|resposta_parcial[1]~4_combout\ & 
-- ((\oper1|internal_count\(1)) # (!\opr|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(1),
	datab => \oper1|internal_count\(1),
	datac => \arit|resposta_parcial[1]~4_combout\,
	datad => \opr|internal_count\(1),
	combout => \arit|resposta_parcial[1]~5_combout\);

-- Location: LCCOMB_X54_Y51_N8
\arit|resposta_parcial[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[1]~6_combout\ = (\opr|internal_count\(2) & ((\oper1|internal_count\(1) $ (\oper2|internal_count\(1))))) # (!\opr|internal_count\(2) & (\arit|resposta_parcial[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opr|internal_count\(2),
	datab => \arit|resposta_parcial[1]~5_combout\,
	datac => \oper1|internal_count\(1),
	datad => \oper2|internal_count\(1),
	combout => \arit|resposta_parcial[1]~6_combout\);

-- Location: LCCOMB_X55_Y51_N6
\arit|resposta_parcial[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial\(1) = (GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & ((\arit|resposta_parcial[1]~6_combout\))) # (!GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & (\arit|resposta_parcial\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|resposta_parcial\(1),
	datab => \arit|resposta_parcial[1]~6_combout\,
	datad => \arit|resposta_parcial[4]~3clkctrl_outclk\,
	combout => \arit|resposta_parcial\(1));

-- Location: LCCOMB_X50_Y51_N4
\arit|resposta_parcial[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[2]~8_combout\ = (\oper1|internal_count\(2) & ((\opr|internal_count\(2) & ((!\oper2|internal_count\(2)))) # (!\opr|internal_count\(2) & ((\opr|internal_count\(0)) # (\oper2|internal_count\(2)))))) # (!\oper1|internal_count\(2) & 
-- (\oper2|internal_count\(2) & ((\opr|internal_count\(0)) # (\opr|internal_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(2),
	datab => \opr|internal_count\(0),
	datac => \opr|internal_count\(2),
	datad => \oper2|internal_count\(2),
	combout => \arit|resposta_parcial[2]~8_combout\);

-- Location: LCCOMB_X51_Y51_N26
\arit|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add1~4_combout\ = ((\oper2|internal_count\(2) $ (\oper1|internal_count\(2) $ (\arit|Add1~3\)))) # (GND)
-- \arit|Add1~5\ = CARRY((\oper2|internal_count\(2) & (\oper1|internal_count\(2) & !\arit|Add1~3\)) # (!\oper2|internal_count\(2) & ((\oper1|internal_count\(2)) # (!\arit|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(2),
	datab => \oper1|internal_count\(2),
	datad => VCC,
	cin => \arit|Add1~3\,
	combout => \arit|Add1~4_combout\,
	cout => \arit|Add1~5\);

-- Location: LCCOMB_X51_Y51_N16
\arit|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add0~4_combout\ = ((\oper2|internal_count\(2) $ (\oper1|internal_count\(2) $ (!\arit|Add0~3\)))) # (GND)
-- \arit|Add0~5\ = CARRY((\oper2|internal_count\(2) & ((\oper1|internal_count\(2)) # (!\arit|Add0~3\))) # (!\oper2|internal_count\(2) & (\oper1|internal_count\(2) & !\arit|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(2),
	datab => \oper1|internal_count\(2),
	datad => VCC,
	cin => \arit|Add0~3\,
	combout => \arit|Add0~4_combout\,
	cout => \arit|Add0~5\);

-- Location: LCCOMB_X52_Y51_N22
\arit|resposta_parcial[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[2]~7_combout\ = (\opr|internal_count\(0) & (\arit|Add1~4_combout\)) # (!\opr|internal_count\(0) & ((\arit|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|Add1~4_combout\,
	datac => \opr|internal_count\(0),
	datad => \arit|Add0~4_combout\,
	combout => \arit|resposta_parcial[2]~7_combout\);

-- Location: LCCOMB_X52_Y51_N18
\arit|resposta_parcial[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[2]~9_combout\ = (\opr|internal_count\(1) & (\arit|resposta_parcial[2]~8_combout\)) # (!\opr|internal_count\(1) & ((\opr|internal_count\(2) & (\arit|resposta_parcial[2]~8_combout\)) # (!\opr|internal_count\(2) & 
-- ((\arit|resposta_parcial[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opr|internal_count\(1),
	datab => \arit|resposta_parcial[2]~8_combout\,
	datac => \arit|resposta_parcial[2]~7_combout\,
	datad => \opr|internal_count\(2),
	combout => \arit|resposta_parcial[2]~9_combout\);

-- Location: LCCOMB_X52_Y51_N26
\arit|resposta_parcial[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial\(2) = (GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & ((\arit|resposta_parcial[2]~9_combout\))) # (!GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & (\arit|resposta_parcial\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|resposta_parcial\(2),
	datac => \arit|resposta_parcial[2]~9_combout\,
	datad => \arit|resposta_parcial[4]~3clkctrl_outclk\,
	combout => \arit|resposta_parcial\(2));

-- Location: LCCOMB_X51_Y51_N28
\arit|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add1~6_combout\ = (\oper2|internal_count\(3) & ((\oper1|internal_count\(3) & (!\arit|Add1~5\)) # (!\oper1|internal_count\(3) & ((\arit|Add1~5\) # (GND))))) # (!\oper2|internal_count\(3) & ((\oper1|internal_count\(3) & (\arit|Add1~5\ & VCC)) # 
-- (!\oper1|internal_count\(3) & (!\arit|Add1~5\))))
-- \arit|Add1~7\ = CARRY((\oper2|internal_count\(3) & ((!\arit|Add1~5\) # (!\oper1|internal_count\(3)))) # (!\oper2|internal_count\(3) & (!\oper1|internal_count\(3) & !\arit|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(3),
	datab => \oper1|internal_count\(3),
	datad => VCC,
	cin => \arit|Add1~5\,
	combout => \arit|Add1~6_combout\,
	cout => \arit|Add1~7\);

-- Location: LCCOMB_X52_Y51_N0
\arit|resposta_parcial[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[3]~10_combout\ = (\oper1|internal_count\(3) & ((\opr|internal_count\(0)) # ((\oper2|internal_count\(3) & \opr|internal_count\(1))))) # (!\oper1|internal_count\(3) & (\opr|internal_count\(0) & ((\oper2|internal_count\(3)) # 
-- (!\opr|internal_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper1|internal_count\(3),
	datab => \oper2|internal_count\(3),
	datac => \opr|internal_count\(1),
	datad => \opr|internal_count\(0),
	combout => \arit|resposta_parcial[3]~10_combout\);

-- Location: LCCOMB_X51_Y51_N18
\arit|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add0~6_combout\ = (\oper2|internal_count\(3) & ((\oper1|internal_count\(3) & (\arit|Add0~5\ & VCC)) # (!\oper1|internal_count\(3) & (!\arit|Add0~5\)))) # (!\oper2|internal_count\(3) & ((\oper1|internal_count\(3) & (!\arit|Add0~5\)) # 
-- (!\oper1|internal_count\(3) & ((\arit|Add0~5\) # (GND)))))
-- \arit|Add0~7\ = CARRY((\oper2|internal_count\(3) & (!\oper1|internal_count\(3) & !\arit|Add0~5\)) # (!\oper2|internal_count\(3) & ((!\arit|Add0~5\) # (!\oper1|internal_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(3),
	datab => \oper1|internal_count\(3),
	datad => VCC,
	cin => \arit|Add0~5\,
	combout => \arit|Add0~6_combout\,
	cout => \arit|Add0~7\);

-- Location: LCCOMB_X51_Y51_N6
\arit|resposta_parcial[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[3]~11_combout\ = (\arit|resposta_parcial[3]~10_combout\ & ((\arit|Add1~6_combout\) # ((\opr|internal_count\(1))))) # (!\arit|resposta_parcial[3]~10_combout\ & (((!\opr|internal_count\(1) & \arit|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|Add1~6_combout\,
	datab => \arit|resposta_parcial[3]~10_combout\,
	datac => \opr|internal_count\(1),
	datad => \arit|Add0~6_combout\,
	combout => \arit|resposta_parcial[3]~11_combout\);

-- Location: LCCOMB_X52_Y51_N20
\arit|resposta_parcial[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[3]~12_combout\ = (\opr|internal_count\(2) & (\oper2|internal_count\(3) $ ((\oper1|internal_count\(3))))) # (!\opr|internal_count\(2) & (((\arit|resposta_parcial[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper2|internal_count\(3),
	datab => \opr|internal_count\(2),
	datac => \oper1|internal_count\(3),
	datad => \arit|resposta_parcial[3]~11_combout\,
	combout => \arit|resposta_parcial[3]~12_combout\);

-- Location: LCCOMB_X52_Y51_N10
\arit|resposta_parcial[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial\(3) = (GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & ((\arit|resposta_parcial[3]~12_combout\))) # (!GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & (\arit|resposta_parcial\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arit|resposta_parcial\(3),
	datac => \arit|resposta_parcial[3]~12_combout\,
	datad => \arit|resposta_parcial[4]~3clkctrl_outclk\,
	combout => \arit|resposta_parcial\(3));

-- Location: LCCOMB_X51_Y51_N30
\arit|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add1~8_combout\ = \arit|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \arit|Add1~7\,
	combout => \arit|Add1~8_combout\);

-- Location: LCCOMB_X51_Y51_N20
\arit|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|Add0~8_combout\ = !\arit|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \arit|Add0~7\,
	combout => \arit|Add0~8_combout\);

-- Location: LCCOMB_X52_Y51_N24
\arit|resposta_parcial[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[4]~13_combout\ = (!\opr|internal_count\(1) & ((\opr|internal_count\(0) & (\arit|Add1~8_combout\)) # (!\opr|internal_count\(0) & ((\arit|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opr|internal_count\(0),
	datab => \arit|Add1~8_combout\,
	datac => \opr|internal_count\(1),
	datad => \arit|Add0~8_combout\,
	combout => \arit|resposta_parcial[4]~13_combout\);

-- Location: LCCOMB_X52_Y51_N12
\arit|resposta_parcial[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial[4]~14_combout\ = (!\opr|internal_count\(2) & \arit|resposta_parcial[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opr|internal_count\(2),
	datab => \arit|resposta_parcial[4]~13_combout\,
	combout => \arit|resposta_parcial[4]~14_combout\);

-- Location: LCCOMB_X52_Y51_N6
\arit|resposta_parcial[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \arit|resposta_parcial\(4) = (GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & (\arit|resposta_parcial[4]~14_combout\)) # (!GLOBAL(\arit|resposta_parcial[4]~3clkctrl_outclk\) & ((\arit|resposta_parcial\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arit|resposta_parcial[4]~14_combout\,
	datac => \arit|resposta_parcial\(4),
	datad => \arit|resposta_parcial[4]~3clkctrl_outclk\,
	combout => \arit|resposta_parcial\(4));

-- Location: IOIBUF_X56_Y54_N8
\entrada[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\entrada[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\entrada[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X55_Y51_N16
\check1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \check1|Equal0~0_combout\ = (\entrada[0]~input_o\ & (\arit|resposta_parcial\(0) & (\entrada[1]~input_o\ $ (!\arit|resposta_parcial\(1))))) # (!\entrada[0]~input_o\ & (!\arit|resposta_parcial\(0) & (\entrada[1]~input_o\ $ (!\arit|resposta_parcial\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \entrada[1]~input_o\,
	datac => \arit|resposta_parcial\(0),
	datad => \arit|resposta_parcial\(1),
	combout => \check1|Equal0~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\entrada[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\entrada[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X52_Y51_N8
\check1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \check1|Equal0~1_combout\ = (\entrada[3]~input_o\ & (\arit|resposta_parcial\(3) & (\entrada[2]~input_o\ $ (!\arit|resposta_parcial\(2))))) # (!\entrada[3]~input_o\ & (!\arit|resposta_parcial\(3) & (\entrada[2]~input_o\ $ (!\arit|resposta_parcial\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[2]~input_o\,
	datac => \arit|resposta_parcial\(2),
	datad => \arit|resposta_parcial\(3),
	combout => \check1|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y51_N2
\check1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \check1|Equal0~2_combout\ = (\check1|Equal0~0_combout\ & (\check1|Equal0~1_combout\ & (\entrada[4]~input_o\ $ (!\arit|resposta_parcial\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[4]~input_o\,
	datab => \check1|Equal0~0_combout\,
	datac => \arit|resposta_parcial\(4),
	datad => \check1|Equal0~1_combout\,
	combout => \check1|Equal0~2_combout\);

-- Location: CLKCTRL_G4
\pb0~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pb0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pb0~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y51_N20
\cont|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Add0~0_combout\ = \cont|internal_count\(0) $ (VCC)
-- \cont|Add0~1\ = CARRY(\cont|internal_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont|internal_count\(0),
	datad => VCC,
	combout => \cont|Add0~0_combout\,
	cout => \cont|Add0~1\);

-- Location: LCCOMB_X55_Y51_N22
\cont|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Add0~2_combout\ = (\cont|internal_count\(1) & (!\cont|Add0~1\)) # (!\cont|internal_count\(1) & ((\cont|Add0~1\) # (GND)))
-- \cont|Add0~3\ = CARRY((!\cont|Add0~1\) # (!\cont|internal_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cont|internal_count\(1),
	datad => VCC,
	cin => \cont|Add0~1\,
	combout => \cont|Add0~2_combout\,
	cout => \cont|Add0~3\);

-- Location: LCCOMB_X55_Y51_N24
\cont|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Add0~4_combout\ = (\cont|internal_count\(2) & (\cont|Add0~3\ $ (GND))) # (!\cont|internal_count\(2) & (!\cont|Add0~3\ & VCC))
-- \cont|Add0~5\ = CARRY((\cont|internal_count\(2) & !\cont|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|internal_count\(2),
	datad => VCC,
	cin => \cont|Add0~3\,
	combout => \cont|Add0~4_combout\,
	cout => \cont|Add0~5\);

-- Location: LCCOMB_X55_Y51_N4
\cont|internal_count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|internal_count[2]~3_combout\ = (!\cont|Equal0~1_combout\ & ((\check1|Equal0~2_combout\ & (\cont|Add0~4_combout\)) # (!\check1|Equal0~2_combout\ & ((\cont|internal_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~1_combout\,
	datab => \cont|Add0~4_combout\,
	datac => \cont|internal_count\(2),
	datad => \check1|Equal0~2_combout\,
	combout => \cont|internal_count[2]~3_combout\);

-- Location: FF_X55_Y51_N5
\cont|internal_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pb0~inputclkctrl_outclk\,
	d => \cont|internal_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|internal_count\(2));

-- Location: LCCOMB_X55_Y51_N26
\cont|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Add0~6_combout\ = (\cont|internal_count\(3) & (!\cont|Add0~5\)) # (!\cont|internal_count\(3) & ((\cont|Add0~5\) # (GND)))
-- \cont|Add0~7\ = CARRY((!\cont|Add0~5\) # (!\cont|internal_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cont|internal_count\(3),
	datad => VCC,
	cin => \cont|Add0~5\,
	combout => \cont|Add0~6_combout\,
	cout => \cont|Add0~7\);

-- Location: LCCOMB_X55_Y51_N18
\cont|internal_count[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|internal_count[3]~4_combout\ = (!\cont|Equal0~1_combout\ & ((\check1|Equal0~2_combout\ & (\cont|Add0~6_combout\)) # (!\check1|Equal0~2_combout\ & ((\cont|internal_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Add0~6_combout\,
	datab => \cont|Equal0~1_combout\,
	datac => \cont|internal_count\(3),
	datad => \check1|Equal0~2_combout\,
	combout => \cont|internal_count[3]~4_combout\);

-- Location: FF_X55_Y51_N19
\cont|internal_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pb0~inputclkctrl_outclk\,
	d => \cont|internal_count[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|internal_count\(3));

-- Location: LCCOMB_X55_Y51_N28
\cont|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Add0~8_combout\ = \cont|Add0~7\ $ (!\cont|internal_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cont|internal_count\(4),
	cin => \cont|Add0~7\,
	combout => \cont|Add0~8_combout\);

-- Location: LCCOMB_X55_Y51_N0
\cont|internal_count[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|internal_count[4]~5_combout\ = (!\cont|Equal0~1_combout\ & ((\check1|Equal0~2_combout\ & (\cont|Add0~8_combout\)) # (!\check1|Equal0~2_combout\ & ((\cont|internal_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~1_combout\,
	datab => \cont|Add0~8_combout\,
	datac => \cont|internal_count\(4),
	datad => \check1|Equal0~2_combout\,
	combout => \cont|internal_count[4]~5_combout\);

-- Location: FF_X55_Y51_N1
\cont|internal_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pb0~inputclkctrl_outclk\,
	d => \cont|internal_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|internal_count\(4));

-- Location: LCCOMB_X55_Y51_N10
\cont|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Equal0~0_combout\ = (\cont|internal_count\(2) & (\cont|internal_count\(4) & (\cont|internal_count\(0) & \cont|internal_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|internal_count\(2),
	datab => \cont|internal_count\(4),
	datac => \cont|internal_count\(0),
	datad => \cont|internal_count\(3),
	combout => \cont|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y51_N30
\cont|internal_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|internal_count[1]~6_combout\ = (\cont|internal_count\(1) & (!\cont|Equal0~0_combout\ & ((\cont|Add0~2_combout\) # (!\check1|Equal0~2_combout\)))) # (!\cont|internal_count\(1) & (\cont|Add0~2_combout\ & ((\check1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Add0~2_combout\,
	datab => \cont|Equal0~0_combout\,
	datac => \cont|internal_count\(1),
	datad => \check1|Equal0~2_combout\,
	combout => \cont|internal_count[1]~6_combout\);

-- Location: FF_X55_Y51_N31
\cont|internal_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pb0~inputclkctrl_outclk\,
	d => \cont|internal_count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|internal_count\(1));

-- Location: LCCOMB_X55_Y51_N12
\cont|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|Equal0~1_combout\ = (\cont|internal_count\(1) & \cont|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|internal_count\(1),
	datad => \cont|Equal0~0_combout\,
	combout => \cont|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y51_N8
\cont|internal_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont|internal_count[0]~2_combout\ = (!\cont|Equal0~1_combout\ & ((\check1|Equal0~2_combout\ & (\cont|Add0~0_combout\)) # (!\check1|Equal0~2_combout\ & ((\cont|internal_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|Equal0~1_combout\,
	datab => \cont|Add0~0_combout\,
	datac => \cont|internal_count\(0),
	datad => \check1|Equal0~2_combout\,
	combout => \cont|internal_count[0]~2_combout\);

-- Location: FF_X55_Y51_N9
\cont|internal_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pb0~inputclkctrl_outclk\,
	d => \cont|internal_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|internal_count\(0));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

ww_operando1(0) <= \operando1[0]~output_o\;

ww_operando1(1) <= \operando1[1]~output_o\;

ww_operando1(2) <= \operando1[2]~output_o\;

ww_operando1(3) <= \operando1[3]~output_o\;

ww_operador1(0) <= \operador1[0]~output_o\;

ww_operador1(1) <= \operador1[1]~output_o\;

ww_operador1(2) <= \operador1[2]~output_o\;

ww_operando2(0) <= \operando2[0]~output_o\;

ww_operando2(1) <= \operando2[1]~output_o\;

ww_operando2(2) <= \operando2[2]~output_o\;

ww_operando2(3) <= \operando2[3]~output_o\;

ww_correto(0) <= \correto[0]~output_o\;

ww_correto(1) <= \correto[1]~output_o\;

ww_correto(2) <= \correto[2]~output_o\;

ww_correto(3) <= \correto[3]~output_o\;

ww_correto(4) <= \correto[4]~output_o\;

ww_acerto <= \acerto~output_o\;

ww_pontos(0) <= \pontos[0]~output_o\;

ww_pontos(1) <= \pontos[1]~output_o\;

ww_pontos(2) <= \pontos[2]~output_o\;

ww_pontos(3) <= \pontos[3]~output_o\;

ww_pontos(4) <= \pontos[4]~output_o\;
END structure;


