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

-- DATE "03/25/2023 17:33:31"

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

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic_vector(8 DOWNTO 0)
	);
END pwm;

-- Design Ports Information
-- led[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_led : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u8_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6_1|clkl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1_1|clkl~0_combout\ : std_logic;
SIGNAL \u1_1|Add0~11\ : std_logic;
SIGNAL \u1_1|Add0~12_combout\ : std_logic;
SIGNAL \u1_1|Add0~13\ : std_logic;
SIGNAL \u1_1|Add0~14_combout\ : std_logic;
SIGNAL \u1_1|conteo~3_combout\ : std_logic;
SIGNAL \u1_1|Add0~15\ : std_logic;
SIGNAL \u1_1|Add0~16_combout\ : std_logic;
SIGNAL \u1_1|conteo~4_combout\ : std_logic;
SIGNAL \u1_1|Add0~17\ : std_logic;
SIGNAL \u1_1|Add0~18_combout\ : std_logic;
SIGNAL \u1_1|Add0~19\ : std_logic;
SIGNAL \u1_1|Add0~20_combout\ : std_logic;
SIGNAL \u1_1|Add0~21\ : std_logic;
SIGNAL \u1_1|Add0~22_combout\ : std_logic;
SIGNAL \u1_1|Add0~23\ : std_logic;
SIGNAL \u1_1|Add0~24_combout\ : std_logic;
SIGNAL \u1_1|Add0~25\ : std_logic;
SIGNAL \u1_1|Add0~26_combout\ : std_logic;
SIGNAL \u1_1|conteo~5_combout\ : std_logic;
SIGNAL \u1_1|Add0~27\ : std_logic;
SIGNAL \u1_1|Add0~28_combout\ : std_logic;
SIGNAL \u1_1|conteo~6_combout\ : std_logic;
SIGNAL \u1_1|Equal0~2_combout\ : std_logic;
SIGNAL \u1_1|Equal0~3_combout\ : std_logic;
SIGNAL \u1_1|Add0~1\ : std_logic;
SIGNAL \u1_1|Add0~2_combout\ : std_logic;
SIGNAL \u1_1|Add0~3\ : std_logic;
SIGNAL \u1_1|Add0~4_combout\ : std_logic;
SIGNAL \u1_1|Add0~5\ : std_logic;
SIGNAL \u1_1|Add0~6_combout\ : std_logic;
SIGNAL \u1_1|conteo~0_combout\ : std_logic;
SIGNAL \u1_1|Add0~7\ : std_logic;
SIGNAL \u1_1|Add0~8_combout\ : std_logic;
SIGNAL \u1_1|Add0~9\ : std_logic;
SIGNAL \u1_1|Add0~10_combout\ : std_logic;
SIGNAL \u1_1|conteo~2_combout\ : std_logic;
SIGNAL \u1_1|Equal0~1_combout\ : std_logic;
SIGNAL \u1_1|Add0~0_combout\ : std_logic;
SIGNAL \u1_1|conteo~1_combout\ : std_logic;
SIGNAL \u1_1|Equal0~0_combout\ : std_logic;
SIGNAL \u1_1|Equal0~4_combout\ : std_logic;
SIGNAL \u1_1|clkl~q\ : std_logic;
SIGNAL \u1_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u1_2|Add0~0_combout\ : std_logic;
SIGNAL \u1_2|Add0~1\ : std_logic;
SIGNAL \u1_2|Add0~2_combout\ : std_logic;
SIGNAL \u1_2|Add0~3\ : std_logic;
SIGNAL \u1_2|Add0~4_combout\ : std_logic;
SIGNAL \u1_2|Add0~5\ : std_logic;
SIGNAL \u1_2|Add0~6_combout\ : std_logic;
SIGNAL \u1_2|conteo~3_combout\ : std_logic;
SIGNAL \u1_2|Add0~7\ : std_logic;
SIGNAL \u1_2|Add0~8_combout\ : std_logic;
SIGNAL \u1_2|Equal0~1_combout\ : std_logic;
SIGNAL \u1_2|Add0~9\ : std_logic;
SIGNAL \u1_2|Add0~10_combout\ : std_logic;
SIGNAL \u1_2|conteo~2_combout\ : std_logic;
SIGNAL \u1_2|Add0~11\ : std_logic;
SIGNAL \u1_2|Add0~12_combout\ : std_logic;
SIGNAL \u1_2|conteo~4_combout\ : std_logic;
SIGNAL \u1_2|Add0~13\ : std_logic;
SIGNAL \u1_2|Add0~14_combout\ : std_logic;
SIGNAL \u1_2|conteo~5_combout\ : std_logic;
SIGNAL \u1_2|Add0~15\ : std_logic;
SIGNAL \u1_2|Add0~16_combout\ : std_logic;
SIGNAL \u1_2|conteo~0_combout\ : std_logic;
SIGNAL \u1_2|Add0~17\ : std_logic;
SIGNAL \u1_2|Add0~18_combout\ : std_logic;
SIGNAL \u1_2|conteo~1_combout\ : std_logic;
SIGNAL \u1_2|Equal0~0_combout\ : std_logic;
SIGNAL \u1_2|Equal0~2_combout\ : std_logic;
SIGNAL \u1_2|conteo~6_combout\ : std_logic;
SIGNAL \u1_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u1_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u1_2|snl~q\ : std_logic;
SIGNAL \u2_1|clkl~0_combout\ : std_logic;
SIGNAL \u2_1|clkl~q\ : std_logic;
SIGNAL \u2_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u2_2|Add0~0_combout\ : std_logic;
SIGNAL \u2_2|Add0~3\ : std_logic;
SIGNAL \u2_2|Add0~4_combout\ : std_logic;
SIGNAL \u2_2|Add0~5\ : std_logic;
SIGNAL \u2_2|Add0~6_combout\ : std_logic;
SIGNAL \u2_2|conteo~2_combout\ : std_logic;
SIGNAL \u2_2|Add0~7\ : std_logic;
SIGNAL \u2_2|Add0~8_combout\ : std_logic;
SIGNAL \u2_2|Add0~9\ : std_logic;
SIGNAL \u2_2|Add0~10_combout\ : std_logic;
SIGNAL \u2_2|conteo~3_combout\ : std_logic;
SIGNAL \u2_2|Add0~11\ : std_logic;
SIGNAL \u2_2|Add0~12_combout\ : std_logic;
SIGNAL \u2_2|conteo~4_combout\ : std_logic;
SIGNAL \u2_2|Add0~13\ : std_logic;
SIGNAL \u2_2|Add0~14_combout\ : std_logic;
SIGNAL \u2_2|conteo~5_combout\ : std_logic;
SIGNAL \u2_2|Add0~15\ : std_logic;
SIGNAL \u2_2|Add0~17\ : std_logic;
SIGNAL \u2_2|Add0~18_combout\ : std_logic;
SIGNAL \u2_2|conteo~1_combout\ : std_logic;
SIGNAL \u2_2|Equal0~0_combout\ : std_logic;
SIGNAL \u2_2|Equal0~2_combout\ : std_logic;
SIGNAL \u2_2|conteo~6_combout\ : std_logic;
SIGNAL \u2_2|Add0~1\ : std_logic;
SIGNAL \u2_2|Add0~2_combout\ : std_logic;
SIGNAL \u2_2|Equal0~1_combout\ : std_logic;
SIGNAL \u2_2|Add0~16_combout\ : std_logic;
SIGNAL \u2_2|conteo~0_combout\ : std_logic;
SIGNAL \u2_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2_2|snl~q\ : std_logic;
SIGNAL \u3_1|clkl~0_combout\ : std_logic;
SIGNAL \u3_1|clkl~feeder_combout\ : std_logic;
SIGNAL \u3_1|clkl~q\ : std_logic;
SIGNAL \u3_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u3_2|Add0~17\ : std_logic;
SIGNAL \u3_2|Add0~18_combout\ : std_logic;
SIGNAL \u3_2|conteo~2_combout\ : std_logic;
SIGNAL \u3_2|Add0~0_combout\ : std_logic;
SIGNAL \u3_2|conteo~6_combout\ : std_logic;
SIGNAL \u3_2|Add0~1\ : std_logic;
SIGNAL \u3_2|Add0~2_combout\ : std_logic;
SIGNAL \u3_2|Add0~3\ : std_logic;
SIGNAL \u3_2|Add0~4_combout\ : std_logic;
SIGNAL \u3_2|Add0~5\ : std_logic;
SIGNAL \u3_2|Add0~6_combout\ : std_logic;
SIGNAL \u3_2|conteo~5_combout\ : std_logic;
SIGNAL \u3_2|Add0~7\ : std_logic;
SIGNAL \u3_2|Add0~8_combout\ : std_logic;
SIGNAL \u3_2|Add0~9\ : std_logic;
SIGNAL \u3_2|Add0~10_combout\ : std_logic;
SIGNAL \u3_2|conteo~4_combout\ : std_logic;
SIGNAL \u3_2|Add0~11\ : std_logic;
SIGNAL \u3_2|Add0~12_combout\ : std_logic;
SIGNAL \u3_2|conteo~3_combout\ : std_logic;
SIGNAL \u3_2|Equal0~0_combout\ : std_logic;
SIGNAL \u3_2|Equal0~1_combout\ : std_logic;
SIGNAL \u3_2|Equal0~2_combout\ : std_logic;
SIGNAL \u3_2|Add0~13\ : std_logic;
SIGNAL \u3_2|Add0~14_combout\ : std_logic;
SIGNAL \u3_2|conteo~0_combout\ : std_logic;
SIGNAL \u3_2|Add0~15\ : std_logic;
SIGNAL \u3_2|Add0~16_combout\ : std_logic;
SIGNAL \u3_2|conteo~1_combout\ : std_logic;
SIGNAL \u3_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u3_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u3_2|LessThan0~2_combout\ : std_logic;
SIGNAL \u3_2|snl~q\ : std_logic;
SIGNAL \u4_1|clkl~0_combout\ : std_logic;
SIGNAL \u4_1|clkl~q\ : std_logic;
SIGNAL \u4_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u4_2|Add0~0_combout\ : std_logic;
SIGNAL \u4_2|conteo~6_combout\ : std_logic;
SIGNAL \u4_2|Add0~1\ : std_logic;
SIGNAL \u4_2|Add0~2_combout\ : std_logic;
SIGNAL \u4_2|Add0~3\ : std_logic;
SIGNAL \u4_2|Add0~4_combout\ : std_logic;
SIGNAL \u4_2|Add0~5\ : std_logic;
SIGNAL \u4_2|Add0~6_combout\ : std_logic;
SIGNAL \u4_2|conteo~5_combout\ : std_logic;
SIGNAL \u4_2|Add0~7\ : std_logic;
SIGNAL \u4_2|Add0~8_combout\ : std_logic;
SIGNAL \u4_2|Add0~9\ : std_logic;
SIGNAL \u4_2|Add0~10_combout\ : std_logic;
SIGNAL \u4_2|conteo~2_combout\ : std_logic;
SIGNAL \u4_2|Add0~11\ : std_logic;
SIGNAL \u4_2|Add0~12_combout\ : std_logic;
SIGNAL \u4_2|conteo~1_combout\ : std_logic;
SIGNAL \u4_2|Add0~13\ : std_logic;
SIGNAL \u4_2|Add0~14_combout\ : std_logic;
SIGNAL \u4_2|conteo~0_combout\ : std_logic;
SIGNAL \u4_2|Add0~15\ : std_logic;
SIGNAL \u4_2|Add0~17\ : std_logic;
SIGNAL \u4_2|Add0~18_combout\ : std_logic;
SIGNAL \u4_2|conteo~4_combout\ : std_logic;
SIGNAL \u4_2|Equal0~0_combout\ : std_logic;
SIGNAL \u4_2|Equal0~1_combout\ : std_logic;
SIGNAL \u4_2|Equal0~2_combout\ : std_logic;
SIGNAL \u4_2|Add0~16_combout\ : std_logic;
SIGNAL \u4_2|conteo~3_combout\ : std_logic;
SIGNAL \u4_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u4_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u4_2|snl~q\ : std_logic;
SIGNAL \u5_1|clkl~0_combout\ : std_logic;
SIGNAL \u5_1|clkl~feeder_combout\ : std_logic;
SIGNAL \u5_1|clkl~q\ : std_logic;
SIGNAL \u5_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u5_2|Add0~0_combout\ : std_logic;
SIGNAL \u5_2|conteo~5_combout\ : std_logic;
SIGNAL \u5_2|Add0~1\ : std_logic;
SIGNAL \u5_2|Add0~2_combout\ : std_logic;
SIGNAL \u5_2|Add0~3\ : std_logic;
SIGNAL \u5_2|Add0~4_combout\ : std_logic;
SIGNAL \u5_2|Add0~5\ : std_logic;
SIGNAL \u5_2|Add0~6_combout\ : std_logic;
SIGNAL \u5_2|conteo~6_combout\ : std_logic;
SIGNAL \u5_2|Add0~7\ : std_logic;
SIGNAL \u5_2|Add0~8_combout\ : std_logic;
SIGNAL \u5_2|Add0~9\ : std_logic;
SIGNAL \u5_2|Add0~10_combout\ : std_logic;
SIGNAL \u5_2|conteo~3_combout\ : std_logic;
SIGNAL \u5_2|Add0~11\ : std_logic;
SIGNAL \u5_2|Add0~12_combout\ : std_logic;
SIGNAL \u5_2|conteo~4_combout\ : std_logic;
SIGNAL \u5_2|Add0~13\ : std_logic;
SIGNAL \u5_2|Add0~14_combout\ : std_logic;
SIGNAL \u5_2|conteo~2_combout\ : std_logic;
SIGNAL \u5_2|Add0~15\ : std_logic;
SIGNAL \u5_2|Add0~17\ : std_logic;
SIGNAL \u5_2|Add0~18_combout\ : std_logic;
SIGNAL \u5_2|conteo~1_combout\ : std_logic;
SIGNAL \u5_2|Equal0~0_combout\ : std_logic;
SIGNAL \u5_2|Equal0~1_combout\ : std_logic;
SIGNAL \u5_2|Equal0~2_combout\ : std_logic;
SIGNAL \u5_2|Add0~16_combout\ : std_logic;
SIGNAL \u5_2|conteo~0_combout\ : std_logic;
SIGNAL \u5_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u5_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u5_2|LessThan0~2_combout\ : std_logic;
SIGNAL \u5_2|snl~q\ : std_logic;
SIGNAL \u6_1|clkl~0_combout\ : std_logic;
SIGNAL \u6_1|clkl~q\ : std_logic;
SIGNAL \u6_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u6_2|Add0~9\ : std_logic;
SIGNAL \u6_2|Add0~10_combout\ : std_logic;
SIGNAL \u6_2|conteo~0_combout\ : std_logic;
SIGNAL \u6_2|Add0~11\ : std_logic;
SIGNAL \u6_2|Add0~13\ : std_logic;
SIGNAL \u6_2|Add0~14_combout\ : std_logic;
SIGNAL \u6_2|conteo~3_combout\ : std_logic;
SIGNAL \u6_2|Add0~15\ : std_logic;
SIGNAL \u6_2|Add0~16_combout\ : std_logic;
SIGNAL \u6_2|conteo~4_combout\ : std_logic;
SIGNAL \u6_2|Add0~0_combout\ : std_logic;
SIGNAL \u6_2|conteo~6_combout\ : std_logic;
SIGNAL \u6_2|Add0~1\ : std_logic;
SIGNAL \u6_2|Add0~2_combout\ : std_logic;
SIGNAL \u6_2|Add0~3\ : std_logic;
SIGNAL \u6_2|Add0~4_combout\ : std_logic;
SIGNAL \u6_2|Equal0~1_combout\ : std_logic;
SIGNAL \u6_2|Equal0~2_combout\ : std_logic;
SIGNAL \u6_2|Add0~12_combout\ : std_logic;
SIGNAL \u6_2|conteo~2_combout\ : std_logic;
SIGNAL \u6_2|Equal0~0_combout\ : std_logic;
SIGNAL \u6_2|Add0~5\ : std_logic;
SIGNAL \u6_2|Add0~6_combout\ : std_logic;
SIGNAL \u6_2|conteo~1_combout\ : std_logic;
SIGNAL \u6_2|Add0~7\ : std_logic;
SIGNAL \u6_2|Add0~8_combout\ : std_logic;
SIGNAL \u6_2|Add0~17\ : std_logic;
SIGNAL \u6_2|Add0~18_combout\ : std_logic;
SIGNAL \u6_2|conteo~5_combout\ : std_logic;
SIGNAL \u6_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u6_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u6_2|snl~q\ : std_logic;
SIGNAL \u7_1|clkl~0_combout\ : std_logic;
SIGNAL \u7_1|clkl~feeder_combout\ : std_logic;
SIGNAL \u7_1|clkl~q\ : std_logic;
SIGNAL \u7_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u7_2|Add0~0_combout\ : std_logic;
SIGNAL \u7_2|conteo~3_combout\ : std_logic;
SIGNAL \u7_2|Add0~1\ : std_logic;
SIGNAL \u7_2|Add0~2_combout\ : std_logic;
SIGNAL \u7_2|Add0~3\ : std_logic;
SIGNAL \u7_2|Add0~4_combout\ : std_logic;
SIGNAL \u7_2|Add0~5\ : std_logic;
SIGNAL \u7_2|Add0~6_combout\ : std_logic;
SIGNAL \u7_2|conteo~2_combout\ : std_logic;
SIGNAL \u7_2|Add0~7\ : std_logic;
SIGNAL \u7_2|Add0~8_combout\ : std_logic;
SIGNAL \u7_2|Add0~9\ : std_logic;
SIGNAL \u7_2|Add0~10_combout\ : std_logic;
SIGNAL \u7_2|conteo~0_combout\ : std_logic;
SIGNAL \u7_2|Add0~11\ : std_logic;
SIGNAL \u7_2|Add0~12_combout\ : std_logic;
SIGNAL \u7_2|conteo~1_combout\ : std_logic;
SIGNAL \u7_2|Add0~13\ : std_logic;
SIGNAL \u7_2|Add0~14_combout\ : std_logic;
SIGNAL \u7_2|conteo~4_combout\ : std_logic;
SIGNAL \u7_2|Add0~15\ : std_logic;
SIGNAL \u7_2|Add0~17\ : std_logic;
SIGNAL \u7_2|Add0~18_combout\ : std_logic;
SIGNAL \u7_2|conteo~6_combout\ : std_logic;
SIGNAL \u7_2|Equal0~1_combout\ : std_logic;
SIGNAL \u7_2|Equal0~0_combout\ : std_logic;
SIGNAL \u7_2|Equal0~2_combout\ : std_logic;
SIGNAL \u7_2|Add0~16_combout\ : std_logic;
SIGNAL \u7_2|conteo~5_combout\ : std_logic;
SIGNAL \u7_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u7_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u7_2|LessThan0~2_combout\ : std_logic;
SIGNAL \u7_2|snl~q\ : std_logic;
SIGNAL \u8_1|clkl~0_combout\ : std_logic;
SIGNAL \u8_1|clkl~q\ : std_logic;
SIGNAL \u8_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u8_2|Add0~13\ : std_logic;
SIGNAL \u8_2|Add0~14_combout\ : std_logic;
SIGNAL \u8_2|conteo~0_combout\ : std_logic;
SIGNAL \u8_2|Add0~15\ : std_logic;
SIGNAL \u8_2|Add0~16_combout\ : std_logic;
SIGNAL \u8_2|conteo~1_combout\ : std_logic;
SIGNAL \u8_2|Add0~17\ : std_logic;
SIGNAL \u8_2|Add0~18_combout\ : std_logic;
SIGNAL \u8_2|conteo~2_combout\ : std_logic;
SIGNAL \u8_2|Add0~0_combout\ : std_logic;
SIGNAL \u8_2|conteo~6_combout\ : std_logic;
SIGNAL \u8_2|Add0~1\ : std_logic;
SIGNAL \u8_2|Add0~2_combout\ : std_logic;
SIGNAL \u8_2|Equal0~1_combout\ : std_logic;
SIGNAL \u8_2|Add0~3\ : std_logic;
SIGNAL \u8_2|Add0~4_combout\ : std_logic;
SIGNAL \u8_2|Add0~5\ : std_logic;
SIGNAL \u8_2|Add0~6_combout\ : std_logic;
SIGNAL \u8_2|conteo~5_combout\ : std_logic;
SIGNAL \u8_2|Add0~7\ : std_logic;
SIGNAL \u8_2|Add0~8_combout\ : std_logic;
SIGNAL \u8_2|Equal0~0_combout\ : std_logic;
SIGNAL \u8_2|Equal0~2_combout\ : std_logic;
SIGNAL \u8_2|Add0~9\ : std_logic;
SIGNAL \u8_2|Add0~10_combout\ : std_logic;
SIGNAL \u8_2|conteo~4_combout\ : std_logic;
SIGNAL \u8_2|Add0~11\ : std_logic;
SIGNAL \u8_2|Add0~12_combout\ : std_logic;
SIGNAL \u8_2|conteo~3_combout\ : std_logic;
SIGNAL \u8_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u8_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u8_2|LessThan0~2_combout\ : std_logic;
SIGNAL \u8_2|snl~q\ : std_logic;
SIGNAL \u9_1|clkl~0_combout\ : std_logic;
SIGNAL \u9_1|clkl~q\ : std_logic;
SIGNAL \u9_1|clkl~clkctrl_outclk\ : std_logic;
SIGNAL \u9_2|Add0~0_combout\ : std_logic;
SIGNAL \u9_2|conteo~5_combout\ : std_logic;
SIGNAL \u9_2|Add0~1\ : std_logic;
SIGNAL \u9_2|Add0~2_combout\ : std_logic;
SIGNAL \u9_2|Add0~3\ : std_logic;
SIGNAL \u9_2|Add0~4_combout\ : std_logic;
SIGNAL \u9_2|Add0~5\ : std_logic;
SIGNAL \u9_2|Add0~6_combout\ : std_logic;
SIGNAL \u9_2|conteo~4_combout\ : std_logic;
SIGNAL \u9_2|Add0~7\ : std_logic;
SIGNAL \u9_2|Add0~8_combout\ : std_logic;
SIGNAL \u9_2|Add0~9\ : std_logic;
SIGNAL \u9_2|Add0~11\ : std_logic;
SIGNAL \u9_2|Add0~12_combout\ : std_logic;
SIGNAL \u9_2|conteo~0_combout\ : std_logic;
SIGNAL \u9_2|Add0~13\ : std_logic;
SIGNAL \u9_2|Add0~14_combout\ : std_logic;
SIGNAL \u9_2|conteo~1_combout\ : std_logic;
SIGNAL \u9_2|Add0~15\ : std_logic;
SIGNAL \u9_2|Add0~16_combout\ : std_logic;
SIGNAL \u9_2|conteo~2_combout\ : std_logic;
SIGNAL \u9_2|Add0~17\ : std_logic;
SIGNAL \u9_2|Add0~18_combout\ : std_logic;
SIGNAL \u9_2|conteo~3_combout\ : std_logic;
SIGNAL \u9_2|Equal0~1_combout\ : std_logic;
SIGNAL \u9_2|Equal0~0_combout\ : std_logic;
SIGNAL \u9_2|Equal0~2_combout\ : std_logic;
SIGNAL \u9_2|Add0~10_combout\ : std_logic;
SIGNAL \u9_2|conteo~6_combout\ : std_logic;
SIGNAL \u9_2|LessThan0~1_combout\ : std_logic;
SIGNAL \u9_2|LessThan0~0_combout\ : std_logic;
SIGNAL \u9_2|LessThan0~2_combout\ : std_logic;
SIGNAL \u9_2|snl~q\ : std_logic;
SIGNAL \u1_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u9_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u4_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u8_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u3_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u7_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u6_2|conteo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1_1|conteo\ : std_logic_vector(14 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u5_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5_1|clkl~q\);

\u3_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3_1|clkl~q\);

\u2_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2_1|clkl~q\);

\u1_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1_1|clkl~q\);

\u4_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4_1|clkl~q\);

\u9_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u9_1|clkl~q\);

\u8_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u8_1|clkl~q\);

\u7_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u7_1|clkl~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\u6_1|clkl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u6_1|clkl~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X46_Y54_N2
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1_2|snl~q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_2|snl~q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3_2|snl~q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4_2|snl~q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_2|snl~q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_2|snl~q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_2|snl~q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u8_2|snl~q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\led[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9_2|snl~q\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X46_Y38_N22
\u1_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|clkl~0_combout\ = !\u1_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1_1|clkl~q\,
	combout => \u1_1|clkl~0_combout\);

-- Location: LCCOMB_X45_Y38_N12
\u1_1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~10_combout\ = (\u1_1|conteo\(5) & (!\u1_1|Add0~9\)) # (!\u1_1|conteo\(5) & ((\u1_1|Add0~9\) # (GND)))
-- \u1_1|Add0~11\ = CARRY((!\u1_1|Add0~9\) # (!\u1_1|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(5),
	datad => VCC,
	cin => \u1_1|Add0~9\,
	combout => \u1_1|Add0~10_combout\,
	cout => \u1_1|Add0~11\);

-- Location: LCCOMB_X45_Y38_N14
\u1_1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~12_combout\ = (\u1_1|conteo\(6) & (\u1_1|Add0~11\ $ (GND))) # (!\u1_1|conteo\(6) & (!\u1_1|Add0~11\ & VCC))
-- \u1_1|Add0~13\ = CARRY((\u1_1|conteo\(6) & !\u1_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(6),
	datad => VCC,
	cin => \u1_1|Add0~11\,
	combout => \u1_1|Add0~12_combout\,
	cout => \u1_1|Add0~13\);

-- Location: FF_X45_Y38_N15
\u1_1|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(6));

-- Location: LCCOMB_X45_Y38_N16
\u1_1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~14_combout\ = (\u1_1|conteo\(7) & (!\u1_1|Add0~13\)) # (!\u1_1|conteo\(7) & ((\u1_1|Add0~13\) # (GND)))
-- \u1_1|Add0~15\ = CARRY((!\u1_1|Add0~13\) # (!\u1_1|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(7),
	datad => VCC,
	cin => \u1_1|Add0~13\,
	combout => \u1_1|Add0~14_combout\,
	cout => \u1_1|Add0~15\);

-- Location: LCCOMB_X46_Y38_N26
\u1_1|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~3_combout\ = (\u1_1|Add0~14_combout\ & (((!\u1_1|Equal0~3_combout\) # (!\u1_1|Equal0~1_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~1_combout\,
	datac => \u1_1|Add0~14_combout\,
	datad => \u1_1|Equal0~3_combout\,
	combout => \u1_1|conteo~3_combout\);

-- Location: FF_X46_Y38_N27
\u1_1|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(7));

-- Location: LCCOMB_X45_Y38_N18
\u1_1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~16_combout\ = (\u1_1|conteo\(8) & (\u1_1|Add0~15\ $ (GND))) # (!\u1_1|conteo\(8) & (!\u1_1|Add0~15\ & VCC))
-- \u1_1|Add0~17\ = CARRY((\u1_1|conteo\(8) & !\u1_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(8),
	datad => VCC,
	cin => \u1_1|Add0~15\,
	combout => \u1_1|Add0~16_combout\,
	cout => \u1_1|Add0~17\);

-- Location: LCCOMB_X46_Y38_N8
\u1_1|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~4_combout\ = (\u1_1|Add0~16_combout\ & (((!\u1_1|Equal0~1_combout\) # (!\u1_1|Equal0~3_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~3_combout\,
	datac => \u1_1|Equal0~1_combout\,
	datad => \u1_1|Add0~16_combout\,
	combout => \u1_1|conteo~4_combout\);

-- Location: FF_X46_Y38_N9
\u1_1|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(8));

-- Location: LCCOMB_X45_Y38_N20
\u1_1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~18_combout\ = (\u1_1|conteo\(9) & (!\u1_1|Add0~17\)) # (!\u1_1|conteo\(9) & ((\u1_1|Add0~17\) # (GND)))
-- \u1_1|Add0~19\ = CARRY((!\u1_1|Add0~17\) # (!\u1_1|conteo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(9),
	datad => VCC,
	cin => \u1_1|Add0~17\,
	combout => \u1_1|Add0~18_combout\,
	cout => \u1_1|Add0~19\);

-- Location: FF_X45_Y38_N21
\u1_1|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(9));

-- Location: LCCOMB_X45_Y38_N22
\u1_1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~20_combout\ = (\u1_1|conteo\(10) & (\u1_1|Add0~19\ $ (GND))) # (!\u1_1|conteo\(10) & (!\u1_1|Add0~19\ & VCC))
-- \u1_1|Add0~21\ = CARRY((\u1_1|conteo\(10) & !\u1_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(10),
	datad => VCC,
	cin => \u1_1|Add0~19\,
	combout => \u1_1|Add0~20_combout\,
	cout => \u1_1|Add0~21\);

-- Location: FF_X45_Y38_N23
\u1_1|conteo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(10));

-- Location: LCCOMB_X45_Y38_N24
\u1_1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~22_combout\ = (\u1_1|conteo\(11) & (!\u1_1|Add0~21\)) # (!\u1_1|conteo\(11) & ((\u1_1|Add0~21\) # (GND)))
-- \u1_1|Add0~23\ = CARRY((!\u1_1|Add0~21\) # (!\u1_1|conteo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(11),
	datad => VCC,
	cin => \u1_1|Add0~21\,
	combout => \u1_1|Add0~22_combout\,
	cout => \u1_1|Add0~23\);

-- Location: FF_X45_Y38_N25
\u1_1|conteo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(11));

-- Location: LCCOMB_X45_Y38_N26
\u1_1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~24_combout\ = (\u1_1|conteo\(12) & (\u1_1|Add0~23\ $ (GND))) # (!\u1_1|conteo\(12) & (!\u1_1|Add0~23\ & VCC))
-- \u1_1|Add0~25\ = CARRY((\u1_1|conteo\(12) & !\u1_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(12),
	datad => VCC,
	cin => \u1_1|Add0~23\,
	combout => \u1_1|Add0~24_combout\,
	cout => \u1_1|Add0~25\);

-- Location: FF_X45_Y38_N27
\u1_1|conteo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(12));

-- Location: LCCOMB_X45_Y38_N28
\u1_1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~26_combout\ = (\u1_1|conteo\(13) & (!\u1_1|Add0~25\)) # (!\u1_1|conteo\(13) & ((\u1_1|Add0~25\) # (GND)))
-- \u1_1|Add0~27\ = CARRY((!\u1_1|Add0~25\) # (!\u1_1|conteo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(13),
	datad => VCC,
	cin => \u1_1|Add0~25\,
	combout => \u1_1|Add0~26_combout\,
	cout => \u1_1|Add0~27\);

-- Location: LCCOMB_X46_Y38_N28
\u1_1|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~5_combout\ = (\u1_1|Add0~26_combout\ & (((!\u1_1|Equal0~1_combout\) # (!\u1_1|Equal0~3_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~3_combout\,
	datac => \u1_1|Equal0~1_combout\,
	datad => \u1_1|Add0~26_combout\,
	combout => \u1_1|conteo~5_combout\);

-- Location: FF_X46_Y38_N29
\u1_1|conteo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(13));

-- Location: LCCOMB_X45_Y38_N30
\u1_1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~28_combout\ = \u1_1|Add0~27\ $ (!\u1_1|conteo\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1_1|conteo\(14),
	cin => \u1_1|Add0~27\,
	combout => \u1_1|Add0~28_combout\);

-- Location: LCCOMB_X45_Y38_N0
\u1_1|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~6_combout\ = (\u1_1|Add0~28_combout\ & (((!\u1_1|Equal0~3_combout\) # (!\u1_1|Equal0~1_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~1_combout\,
	datac => \u1_1|Add0~28_combout\,
	datad => \u1_1|Equal0~3_combout\,
	combout => \u1_1|conteo~6_combout\);

-- Location: FF_X45_Y38_N1
\u1_1|conteo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(14));

-- Location: LCCOMB_X46_Y38_N16
\u1_1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Equal0~2_combout\ = (\u1_1|conteo\(8) & (!\u1_1|conteo\(10) & (!\u1_1|conteo\(9) & !\u1_1|conteo\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(8),
	datab => \u1_1|conteo\(10),
	datac => \u1_1|conteo\(9),
	datad => \u1_1|conteo\(11),
	combout => \u1_1|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y38_N18
\u1_1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Equal0~3_combout\ = (\u1_1|conteo\(14) & (\u1_1|conteo\(13) & (!\u1_1|conteo\(12) & \u1_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(14),
	datab => \u1_1|conteo\(13),
	datac => \u1_1|conteo\(12),
	datad => \u1_1|Equal0~2_combout\,
	combout => \u1_1|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y38_N2
\u1_1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~0_combout\ = \u1_1|conteo\(0) $ (VCC)
-- \u1_1|Add0~1\ = CARRY(\u1_1|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(0),
	datad => VCC,
	combout => \u1_1|Add0~0_combout\,
	cout => \u1_1|Add0~1\);

-- Location: LCCOMB_X45_Y38_N4
\u1_1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~2_combout\ = (\u1_1|conteo\(1) & (!\u1_1|Add0~1\)) # (!\u1_1|conteo\(1) & ((\u1_1|Add0~1\) # (GND)))
-- \u1_1|Add0~3\ = CARRY((!\u1_1|Add0~1\) # (!\u1_1|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_1|conteo\(1),
	datad => VCC,
	cin => \u1_1|Add0~1\,
	combout => \u1_1|Add0~2_combout\,
	cout => \u1_1|Add0~3\);

-- Location: FF_X45_Y38_N5
\u1_1|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(1));

-- Location: LCCOMB_X45_Y38_N6
\u1_1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~4_combout\ = (\u1_1|conteo\(2) & (\u1_1|Add0~3\ $ (GND))) # (!\u1_1|conteo\(2) & (!\u1_1|Add0~3\ & VCC))
-- \u1_1|Add0~5\ = CARRY((\u1_1|conteo\(2) & !\u1_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(2),
	datad => VCC,
	cin => \u1_1|Add0~3\,
	combout => \u1_1|Add0~4_combout\,
	cout => \u1_1|Add0~5\);

-- Location: FF_X45_Y38_N7
\u1_1|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(2));

-- Location: LCCOMB_X45_Y38_N8
\u1_1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~6_combout\ = (\u1_1|conteo\(3) & (!\u1_1|Add0~5\)) # (!\u1_1|conteo\(3) & ((\u1_1|Add0~5\) # (GND)))
-- \u1_1|Add0~7\ = CARRY((!\u1_1|Add0~5\) # (!\u1_1|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(3),
	datad => VCC,
	cin => \u1_1|Add0~5\,
	combout => \u1_1|Add0~6_combout\,
	cout => \u1_1|Add0~7\);

-- Location: LCCOMB_X46_Y38_N2
\u1_1|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~0_combout\ = (\u1_1|Add0~6_combout\ & (((!\u1_1|Equal0~1_combout\) # (!\u1_1|Equal0~3_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~3_combout\,
	datac => \u1_1|Equal0~1_combout\,
	datad => \u1_1|Add0~6_combout\,
	combout => \u1_1|conteo~0_combout\);

-- Location: FF_X46_Y38_N3
\u1_1|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(3));

-- Location: LCCOMB_X45_Y38_N10
\u1_1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Add0~8_combout\ = (\u1_1|conteo\(4) & (\u1_1|Add0~7\ $ (GND))) # (!\u1_1|conteo\(4) & (!\u1_1|Add0~7\ & VCC))
-- \u1_1|Add0~9\ = CARRY((\u1_1|conteo\(4) & !\u1_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(4),
	datad => VCC,
	cin => \u1_1|Add0~7\,
	combout => \u1_1|Add0~8_combout\,
	cout => \u1_1|Add0~9\);

-- Location: FF_X45_Y38_N11
\u1_1|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(4));

-- Location: LCCOMB_X46_Y38_N6
\u1_1|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~2_combout\ = (\u1_1|Add0~10_combout\ & (((!\u1_1|Equal0~3_combout\) # (!\u1_1|Equal0~0_combout\)) # (!\u1_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Add0~10_combout\,
	datab => \u1_1|Equal0~1_combout\,
	datac => \u1_1|Equal0~0_combout\,
	datad => \u1_1|Equal0~3_combout\,
	combout => \u1_1|conteo~2_combout\);

-- Location: FF_X46_Y38_N7
\u1_1|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1_1|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(5));

-- Location: LCCOMB_X46_Y38_N24
\u1_1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Equal0~1_combout\ = (\u1_1|conteo\(5) & (!\u1_1|conteo\(4) & (\u1_1|conteo\(7) & !\u1_1|conteo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(5),
	datab => \u1_1|conteo\(4),
	datac => \u1_1|conteo\(7),
	datad => \u1_1|conteo\(6),
	combout => \u1_1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y38_N4
\u1_1|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|conteo~1_combout\ = (\u1_1|Add0~0_combout\ & (((!\u1_1|Equal0~3_combout\) # (!\u1_1|Equal0~1_combout\)) # (!\u1_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~1_combout\,
	datac => \u1_1|Add0~0_combout\,
	datad => \u1_1|Equal0~3_combout\,
	combout => \u1_1|conteo~1_combout\);

-- Location: FF_X45_Y38_N9
\u1_1|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1_1|conteo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|conteo\(0));

-- Location: LCCOMB_X46_Y38_N10
\u1_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Equal0~0_combout\ = (!\u1_1|conteo\(0) & (!\u1_1|conteo\(1) & (!\u1_1|conteo\(2) & \u1_1|conteo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|conteo\(0),
	datab => \u1_1|conteo\(1),
	datac => \u1_1|conteo\(2),
	datad => \u1_1|conteo\(3),
	combout => \u1_1|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y38_N12
\u1_1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_1|Equal0~4_combout\ = (\u1_1|Equal0~0_combout\ & (\u1_1|Equal0~1_combout\ & \u1_1|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_1|Equal0~0_combout\,
	datab => \u1_1|Equal0~1_combout\,
	datad => \u1_1|Equal0~3_combout\,
	combout => \u1_1|Equal0~4_combout\);

-- Location: FF_X46_Y38_N21
\u1_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_1|clkl~q\);

-- Location: CLKCTRL_G13
\u1_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y50_N6
\u1_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~0_combout\ = \u1_2|conteo\(0) $ (VCC)
-- \u1_2|Add0~1\ = CARRY(\u1_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(0),
	datad => VCC,
	combout => \u1_2|Add0~0_combout\,
	cout => \u1_2|Add0~1\);

-- Location: LCCOMB_X50_Y50_N8
\u1_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~2_combout\ = (\u1_2|conteo\(1) & (!\u1_2|Add0~1\)) # (!\u1_2|conteo\(1) & ((\u1_2|Add0~1\) # (GND)))
-- \u1_2|Add0~3\ = CARRY((!\u1_2|Add0~1\) # (!\u1_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(1),
	datad => VCC,
	cin => \u1_2|Add0~1\,
	combout => \u1_2|Add0~2_combout\,
	cout => \u1_2|Add0~3\);

-- Location: FF_X50_Y50_N9
\u1_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(1));

-- Location: LCCOMB_X50_Y50_N10
\u1_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~4_combout\ = (\u1_2|conteo\(2) & (\u1_2|Add0~3\ $ (GND))) # (!\u1_2|conteo\(2) & (!\u1_2|Add0~3\ & VCC))
-- \u1_2|Add0~5\ = CARRY((\u1_2|conteo\(2) & !\u1_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(2),
	datad => VCC,
	cin => \u1_2|Add0~3\,
	combout => \u1_2|Add0~4_combout\,
	cout => \u1_2|Add0~5\);

-- Location: FF_X50_Y50_N11
\u1_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(2));

-- Location: LCCOMB_X50_Y50_N12
\u1_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~6_combout\ = (\u1_2|conteo\(3) & (!\u1_2|Add0~5\)) # (!\u1_2|conteo\(3) & ((\u1_2|Add0~5\) # (GND)))
-- \u1_2|Add0~7\ = CARRY((!\u1_2|Add0~5\) # (!\u1_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(3),
	datad => VCC,
	cin => \u1_2|Add0~5\,
	combout => \u1_2|Add0~6_combout\,
	cout => \u1_2|Add0~7\);

-- Location: LCCOMB_X50_Y50_N2
\u1_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~3_combout\ = (\u1_2|Add0~6_combout\ & !\u1_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Add0~6_combout\,
	datad => \u1_2|Equal0~2_combout\,
	combout => \u1_2|conteo~3_combout\);

-- Location: FF_X50_Y50_N3
\u1_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(3));

-- Location: LCCOMB_X50_Y50_N14
\u1_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~8_combout\ = (\u1_2|conteo\(4) & (\u1_2|Add0~7\ $ (GND))) # (!\u1_2|conteo\(4) & (!\u1_2|Add0~7\ & VCC))
-- \u1_2|Add0~9\ = CARRY((\u1_2|conteo\(4) & !\u1_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(4),
	datad => VCC,
	cin => \u1_2|Add0~7\,
	combout => \u1_2|Add0~8_combout\,
	cout => \u1_2|Add0~9\);

-- Location: FF_X50_Y50_N15
\u1_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(4));

-- Location: LCCOMB_X49_Y50_N12
\u1_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Equal0~1_combout\ = (!\u1_2|conteo\(0) & (!\u1_2|conteo\(2) & (!\u1_2|conteo\(4) & !\u1_2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(0),
	datab => \u1_2|conteo\(2),
	datac => \u1_2|conteo\(4),
	datad => \u1_2|conteo\(1),
	combout => \u1_2|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y50_N16
\u1_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~10_combout\ = (\u1_2|conteo\(5) & (!\u1_2|Add0~9\)) # (!\u1_2|conteo\(5) & ((\u1_2|Add0~9\) # (GND)))
-- \u1_2|Add0~11\ = CARRY((!\u1_2|Add0~9\) # (!\u1_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(5),
	datad => VCC,
	cin => \u1_2|Add0~9\,
	combout => \u1_2|Add0~10_combout\,
	cout => \u1_2|Add0~11\);

-- Location: LCCOMB_X50_Y50_N0
\u1_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~2_combout\ = (!\u1_2|Equal0~2_combout\ & \u1_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Equal0~2_combout\,
	datad => \u1_2|Add0~10_combout\,
	combout => \u1_2|conteo~2_combout\);

-- Location: FF_X50_Y50_N1
\u1_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(5));

-- Location: LCCOMB_X50_Y50_N18
\u1_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~12_combout\ = (\u1_2|conteo\(6) & (\u1_2|Add0~11\ $ (GND))) # (!\u1_2|conteo\(6) & (!\u1_2|Add0~11\ & VCC))
-- \u1_2|Add0~13\ = CARRY((\u1_2|conteo\(6) & !\u1_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(6),
	datad => VCC,
	cin => \u1_2|Add0~11\,
	combout => \u1_2|Add0~12_combout\,
	cout => \u1_2|Add0~13\);

-- Location: LCCOMB_X49_Y50_N6
\u1_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~4_combout\ = (!\u1_2|Equal0~2_combout\ & \u1_2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1_2|Equal0~2_combout\,
	datad => \u1_2|Add0~12_combout\,
	combout => \u1_2|conteo~4_combout\);

-- Location: FF_X49_Y50_N7
\u1_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(6));

-- Location: LCCOMB_X50_Y50_N20
\u1_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~14_combout\ = (\u1_2|conteo\(7) & (!\u1_2|Add0~13\)) # (!\u1_2|conteo\(7) & ((\u1_2|Add0~13\) # (GND)))
-- \u1_2|Add0~15\ = CARRY((!\u1_2|Add0~13\) # (!\u1_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(7),
	datad => VCC,
	cin => \u1_2|Add0~13\,
	combout => \u1_2|Add0~14_combout\,
	cout => \u1_2|Add0~15\);

-- Location: LCCOMB_X50_Y50_N4
\u1_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~5_combout\ = (!\u1_2|Equal0~2_combout\ & \u1_2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Equal0~2_combout\,
	datad => \u1_2|Add0~14_combout\,
	combout => \u1_2|conteo~5_combout\);

-- Location: FF_X50_Y50_N5
\u1_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(7));

-- Location: LCCOMB_X50_Y50_N22
\u1_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~16_combout\ = (\u1_2|conteo\(8) & (\u1_2|Add0~15\ $ (GND))) # (!\u1_2|conteo\(8) & (!\u1_2|Add0~15\ & VCC))
-- \u1_2|Add0~17\ = CARRY((\u1_2|conteo\(8) & !\u1_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_2|conteo\(8),
	datad => VCC,
	cin => \u1_2|Add0~15\,
	combout => \u1_2|Add0~16_combout\,
	cout => \u1_2|Add0~17\);

-- Location: LCCOMB_X50_Y50_N28
\u1_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~0_combout\ = (\u1_2|Add0~16_combout\ & !\u1_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1_2|Add0~16_combout\,
	datad => \u1_2|Equal0~2_combout\,
	combout => \u1_2|conteo~0_combout\);

-- Location: FF_X50_Y50_N29
\u1_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(8));

-- Location: LCCOMB_X50_Y50_N24
\u1_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Add0~18_combout\ = \u1_2|conteo\(9) $ (\u1_2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(9),
	cin => \u1_2|Add0~17\,
	combout => \u1_2|Add0~18_combout\);

-- Location: LCCOMB_X50_Y50_N26
\u1_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~1_combout\ = (!\u1_2|Equal0~2_combout\ & \u1_2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Equal0~2_combout\,
	datad => \u1_2|Add0~18_combout\,
	combout => \u1_2|conteo~1_combout\);

-- Location: FF_X50_Y50_N27
\u1_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(9));

-- Location: LCCOMB_X49_Y50_N4
\u1_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Equal0~0_combout\ = (\u1_2|conteo\(6) & (\u1_2|conteo\(5) & (\u1_2|conteo\(3) & \u1_2|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(6),
	datab => \u1_2|conteo\(5),
	datac => \u1_2|conteo\(3),
	datad => \u1_2|conteo\(7),
	combout => \u1_2|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y50_N14
\u1_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|Equal0~2_combout\ = (\u1_2|Equal0~1_combout\ & (\u1_2|conteo\(9) & (\u1_2|Equal0~0_combout\ & \u1_2|conteo\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Equal0~1_combout\,
	datab => \u1_2|conteo\(9),
	datac => \u1_2|Equal0~0_combout\,
	datad => \u1_2|conteo\(8),
	combout => \u1_2|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y50_N30
\u1_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|conteo~6_combout\ = (\u1_2|Add0~0_combout\ & !\u1_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|Add0~0_combout\,
	datad => \u1_2|Equal0~2_combout\,
	combout => \u1_2|conteo~6_combout\);

-- Location: FF_X50_Y50_N31
\u1_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|conteo\(0));

-- Location: LCCOMB_X49_Y50_N22
\u1_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|LessThan0~0_combout\ = (\u1_2|conteo\(4) & ((\u1_2|conteo\(2)) # ((\u1_2|conteo\(0) & \u1_2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|conteo\(0),
	datab => \u1_2|conteo\(2),
	datac => \u1_2|conteo\(4),
	datad => \u1_2|conteo\(1),
	combout => \u1_2|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y50_N24
\u1_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1_2|LessThan0~1_combout\ = (!\u1_2|conteo\(8) & (!\u1_2|conteo\(9) & ((!\u1_2|Equal0~0_combout\) # (!\u1_2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_2|LessThan0~0_combout\,
	datab => \u1_2|conteo\(8),
	datac => \u1_2|Equal0~0_combout\,
	datad => \u1_2|conteo\(9),
	combout => \u1_2|LessThan0~1_combout\);

-- Location: FF_X49_Y50_N25
\u1_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1_1|clkl~clkctrl_outclk\,
	d => \u1_2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_2|snl~q\);

-- Location: LCCOMB_X46_Y38_N0
\u2_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_1|clkl~0_combout\ = !\u2_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_1|clkl~q\,
	combout => \u2_1|clkl~0_combout\);

-- Location: FF_X46_Y38_N15
\u2_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u2_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_1|clkl~q\);

-- Location: CLKCTRL_G11
\u2_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y52_N0
\u2_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~0_combout\ = \u2_2|conteo\(0) $ (VCC)
-- \u2_2|Add0~1\ = CARRY(\u2_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(0),
	datad => VCC,
	combout => \u2_2|Add0~0_combout\,
	cout => \u2_2|Add0~1\);

-- Location: LCCOMB_X47_Y52_N2
\u2_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~2_combout\ = (\u2_2|conteo\(1) & (!\u2_2|Add0~1\)) # (!\u2_2|conteo\(1) & ((\u2_2|Add0~1\) # (GND)))
-- \u2_2|Add0~3\ = CARRY((!\u2_2|Add0~1\) # (!\u2_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(1),
	datad => VCC,
	cin => \u2_2|Add0~1\,
	combout => \u2_2|Add0~2_combout\,
	cout => \u2_2|Add0~3\);

-- Location: LCCOMB_X47_Y52_N4
\u2_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~4_combout\ = (\u2_2|conteo\(2) & (\u2_2|Add0~3\ $ (GND))) # (!\u2_2|conteo\(2) & (!\u2_2|Add0~3\ & VCC))
-- \u2_2|Add0~5\ = CARRY((\u2_2|conteo\(2) & !\u2_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(2),
	datad => VCC,
	cin => \u2_2|Add0~3\,
	combout => \u2_2|Add0~4_combout\,
	cout => \u2_2|Add0~5\);

-- Location: FF_X47_Y52_N5
\u2_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(2));

-- Location: LCCOMB_X47_Y52_N6
\u2_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~6_combout\ = (\u2_2|conteo\(3) & (!\u2_2|Add0~5\)) # (!\u2_2|conteo\(3) & ((\u2_2|Add0~5\) # (GND)))
-- \u2_2|Add0~7\ = CARRY((!\u2_2|Add0~5\) # (!\u2_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(3),
	datad => VCC,
	cin => \u2_2|Add0~5\,
	combout => \u2_2|Add0~6_combout\,
	cout => \u2_2|Add0~7\);

-- Location: LCCOMB_X47_Y52_N22
\u2_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~2_combout\ = (\u2_2|Add0~6_combout\ & ((!\u2_2|Equal0~1_combout\) # (!\u2_2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|Equal0~2_combout\,
	datac => \u2_2|Equal0~1_combout\,
	datad => \u2_2|Add0~6_combout\,
	combout => \u2_2|conteo~2_combout\);

-- Location: FF_X47_Y52_N23
\u2_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(3));

-- Location: LCCOMB_X47_Y52_N8
\u2_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~8_combout\ = (\u2_2|conteo\(4) & (\u2_2|Add0~7\ $ (GND))) # (!\u2_2|conteo\(4) & (!\u2_2|Add0~7\ & VCC))
-- \u2_2|Add0~9\ = CARRY((\u2_2|conteo\(4) & !\u2_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(4),
	datad => VCC,
	cin => \u2_2|Add0~7\,
	combout => \u2_2|Add0~8_combout\,
	cout => \u2_2|Add0~9\);

-- Location: FF_X47_Y52_N9
\u2_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(4));

-- Location: LCCOMB_X47_Y52_N10
\u2_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~10_combout\ = (\u2_2|conteo\(5) & (!\u2_2|Add0~9\)) # (!\u2_2|conteo\(5) & ((\u2_2|Add0~9\) # (GND)))
-- \u2_2|Add0~11\ = CARRY((!\u2_2|Add0~9\) # (!\u2_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(5),
	datad => VCC,
	cin => \u2_2|Add0~9\,
	combout => \u2_2|Add0~10_combout\,
	cout => \u2_2|Add0~11\);

-- Location: LCCOMB_X46_Y52_N10
\u2_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~3_combout\ = (\u2_2|Add0~10_combout\ & ((!\u2_2|Equal0~1_combout\) # (!\u2_2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|Equal0~2_combout\,
	datac => \u2_2|Add0~10_combout\,
	datad => \u2_2|Equal0~1_combout\,
	combout => \u2_2|conteo~3_combout\);

-- Location: FF_X46_Y52_N11
\u2_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(5));

-- Location: LCCOMB_X47_Y52_N12
\u2_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~12_combout\ = (\u2_2|conteo\(6) & (\u2_2|Add0~11\ $ (GND))) # (!\u2_2|conteo\(6) & (!\u2_2|Add0~11\ & VCC))
-- \u2_2|Add0~13\ = CARRY((\u2_2|conteo\(6) & !\u2_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(6),
	datad => VCC,
	cin => \u2_2|Add0~11\,
	combout => \u2_2|Add0~12_combout\,
	cout => \u2_2|Add0~13\);

-- Location: LCCOMB_X47_Y52_N20
\u2_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~4_combout\ = (\u2_2|Add0~12_combout\ & ((!\u2_2|Equal0~1_combout\) # (!\u2_2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|Equal0~2_combout\,
	datac => \u2_2|Equal0~1_combout\,
	datad => \u2_2|Add0~12_combout\,
	combout => \u2_2|conteo~4_combout\);

-- Location: FF_X47_Y52_N21
\u2_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(6));

-- Location: LCCOMB_X47_Y52_N14
\u2_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~14_combout\ = (\u2_2|conteo\(7) & (!\u2_2|Add0~13\)) # (!\u2_2|conteo\(7) & ((\u2_2|Add0~13\) # (GND)))
-- \u2_2|Add0~15\ = CARRY((!\u2_2|Add0~13\) # (!\u2_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(7),
	datad => VCC,
	cin => \u2_2|Add0~13\,
	combout => \u2_2|Add0~14_combout\,
	cout => \u2_2|Add0~15\);

-- Location: LCCOMB_X47_Y52_N30
\u2_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~5_combout\ = (\u2_2|Add0~14_combout\ & ((!\u2_2|Equal0~2_combout\) # (!\u2_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|Equal0~1_combout\,
	datac => \u2_2|Add0~14_combout\,
	datad => \u2_2|Equal0~2_combout\,
	combout => \u2_2|conteo~5_combout\);

-- Location: FF_X47_Y52_N31
\u2_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(7));

-- Location: LCCOMB_X47_Y52_N16
\u2_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~16_combout\ = (\u2_2|conteo\(8) & (\u2_2|Add0~15\ $ (GND))) # (!\u2_2|conteo\(8) & (!\u2_2|Add0~15\ & VCC))
-- \u2_2|Add0~17\ = CARRY((\u2_2|conteo\(8) & !\u2_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|conteo\(8),
	datad => VCC,
	cin => \u2_2|Add0~15\,
	combout => \u2_2|Add0~16_combout\,
	cout => \u2_2|Add0~17\);

-- Location: LCCOMB_X47_Y52_N18
\u2_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Add0~18_combout\ = \u2_2|Add0~17\ $ (\u2_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2_2|conteo\(9),
	cin => \u2_2|Add0~17\,
	combout => \u2_2|Add0~18_combout\);

-- Location: LCCOMB_X47_Y52_N28
\u2_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~1_combout\ = (\u2_2|Add0~18_combout\ & ((!\u2_2|Equal0~1_combout\) # (!\u2_2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|Equal0~2_combout\,
	datac => \u2_2|Equal0~1_combout\,
	datad => \u2_2|Add0~18_combout\,
	combout => \u2_2|conteo~1_combout\);

-- Location: FF_X47_Y52_N29
\u2_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(9));

-- Location: LCCOMB_X46_Y52_N12
\u2_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Equal0~0_combout\ = (\u2_2|conteo\(6) & (\u2_2|conteo\(7) & \u2_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(6),
	datac => \u2_2|conteo\(7),
	datad => \u2_2|conteo\(5),
	combout => \u2_2|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y52_N14
\u2_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Equal0~2_combout\ = (\u2_2|conteo\(8) & (\u2_2|conteo\(9) & (!\u2_2|conteo\(0) & \u2_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(8),
	datab => \u2_2|conteo\(9),
	datac => \u2_2|conteo\(0),
	datad => \u2_2|Equal0~0_combout\,
	combout => \u2_2|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y52_N24
\u2_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~6_combout\ = (\u2_2|Add0~0_combout\ & ((!\u2_2|Equal0~2_combout\) # (!\u2_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|Add0~0_combout\,
	datac => \u2_2|Equal0~1_combout\,
	datad => \u2_2|Equal0~2_combout\,
	combout => \u2_2|conteo~6_combout\);

-- Location: FF_X47_Y52_N25
\u2_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(0));

-- Location: FF_X47_Y52_N3
\u2_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(1));

-- Location: LCCOMB_X47_Y52_N26
\u2_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|Equal0~1_combout\ = (!\u2_2|conteo\(1) & (!\u2_2|conteo\(2) & (!\u2_2|conteo\(4) & \u2_2|conteo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(1),
	datab => \u2_2|conteo\(2),
	datac => \u2_2|conteo\(4),
	datad => \u2_2|conteo\(3),
	combout => \u2_2|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y52_N6
\u2_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|conteo~0_combout\ = (\u2_2|Add0~16_combout\ & ((!\u2_2|Equal0~2_combout\) # (!\u2_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_2|Equal0~1_combout\,
	datac => \u2_2|Equal0~2_combout\,
	datad => \u2_2|Add0~16_combout\,
	combout => \u2_2|conteo~0_combout\);

-- Location: FF_X46_Y52_N7
\u2_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|conteo\(8));

-- Location: LCCOMB_X46_Y52_N8
\u2_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|LessThan0~0_combout\ = (\u2_2|conteo\(1)) # ((\u2_2|conteo\(3)) # ((\u2_2|conteo\(4)) # (\u2_2|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(1),
	datab => \u2_2|conteo\(3),
	datac => \u2_2|conteo\(4),
	datad => \u2_2|conteo\(2),
	combout => \u2_2|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y52_N24
\u2_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2_2|LessThan0~1_combout\ = (!\u2_2|conteo\(8) & (!\u2_2|conteo\(9) & ((!\u2_2|Equal0~0_combout\) # (!\u2_2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_2|conteo\(8),
	datab => \u2_2|conteo\(9),
	datac => \u2_2|LessThan0~0_combout\,
	datad => \u2_2|Equal0~0_combout\,
	combout => \u2_2|LessThan0~1_combout\);

-- Location: FF_X46_Y52_N25
\u2_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2_1|clkl~clkctrl_outclk\,
	d => \u2_2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_2|snl~q\);

-- Location: LCCOMB_X47_Y38_N28
\u3_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_1|clkl~0_combout\ = !\u3_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3_1|clkl~q\,
	combout => \u3_1|clkl~0_combout\);

-- Location: LCCOMB_X47_Y38_N30
\u3_1|clkl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_1|clkl~feeder_combout\ = \u3_1|clkl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3_1|clkl~0_combout\,
	combout => \u3_1|clkl~feeder_combout\);

-- Location: FF_X47_Y38_N31
\u3_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3_1|clkl~feeder_combout\,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_1|clkl~q\);

-- Location: CLKCTRL_G6
\u3_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N22
\u3_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~16_combout\ = (\u3_2|conteo\(8) & (\u3_2|Add0~15\ $ (GND))) # (!\u3_2|conteo\(8) & (!\u3_2|Add0~15\ & VCC))
-- \u3_2|Add0~17\ = CARRY((\u3_2|conteo\(8) & !\u3_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(8),
	datad => VCC,
	cin => \u3_2|Add0~15\,
	combout => \u3_2|Add0~16_combout\,
	cout => \u3_2|Add0~17\);

-- Location: LCCOMB_X51_Y53_N24
\u3_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~18_combout\ = \u3_2|conteo\(9) $ (\u3_2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(9),
	cin => \u3_2|Add0~17\,
	combout => \u3_2|Add0~18_combout\);

-- Location: LCCOMB_X51_Y53_N4
\u3_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~2_combout\ = (!\u3_2|Equal0~2_combout\ & \u3_2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|Equal0~2_combout\,
	datad => \u3_2|Add0~18_combout\,
	combout => \u3_2|conteo~2_combout\);

-- Location: FF_X51_Y53_N5
\u3_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(9));

-- Location: LCCOMB_X51_Y53_N6
\u3_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~0_combout\ = \u3_2|conteo\(0) $ (VCC)
-- \u3_2|Add0~1\ = CARRY(\u3_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(0),
	datad => VCC,
	combout => \u3_2|Add0~0_combout\,
	cout => \u3_2|Add0~1\);

-- Location: LCCOMB_X51_Y53_N30
\u3_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~6_combout\ = (\u3_2|Add0~0_combout\ & !\u3_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|Add0~0_combout\,
	datad => \u3_2|Equal0~2_combout\,
	combout => \u3_2|conteo~6_combout\);

-- Location: FF_X51_Y53_N31
\u3_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(0));

-- Location: LCCOMB_X51_Y53_N8
\u3_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~2_combout\ = (\u3_2|conteo\(1) & (!\u3_2|Add0~1\)) # (!\u3_2|conteo\(1) & ((\u3_2|Add0~1\) # (GND)))
-- \u3_2|Add0~3\ = CARRY((!\u3_2|Add0~1\) # (!\u3_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(1),
	datad => VCC,
	cin => \u3_2|Add0~1\,
	combout => \u3_2|Add0~2_combout\,
	cout => \u3_2|Add0~3\);

-- Location: FF_X51_Y53_N9
\u3_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(1));

-- Location: LCCOMB_X51_Y53_N10
\u3_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~4_combout\ = (\u3_2|conteo\(2) & (\u3_2|Add0~3\ $ (GND))) # (!\u3_2|conteo\(2) & (!\u3_2|Add0~3\ & VCC))
-- \u3_2|Add0~5\ = CARRY((\u3_2|conteo\(2) & !\u3_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(2),
	datad => VCC,
	cin => \u3_2|Add0~3\,
	combout => \u3_2|Add0~4_combout\,
	cout => \u3_2|Add0~5\);

-- Location: FF_X51_Y53_N11
\u3_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(2));

-- Location: LCCOMB_X51_Y53_N12
\u3_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~6_combout\ = (\u3_2|conteo\(3) & (!\u3_2|Add0~5\)) # (!\u3_2|conteo\(3) & ((\u3_2|Add0~5\) # (GND)))
-- \u3_2|Add0~7\ = CARRY((!\u3_2|Add0~5\) # (!\u3_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(3),
	datad => VCC,
	cin => \u3_2|Add0~5\,
	combout => \u3_2|Add0~6_combout\,
	cout => \u3_2|Add0~7\);

-- Location: LCCOMB_X51_Y53_N0
\u3_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~5_combout\ = (\u3_2|Add0~6_combout\ & !\u3_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|Add0~6_combout\,
	datad => \u3_2|Equal0~2_combout\,
	combout => \u3_2|conteo~5_combout\);

-- Location: FF_X51_Y53_N1
\u3_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(3));

-- Location: LCCOMB_X51_Y53_N14
\u3_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~8_combout\ = (\u3_2|conteo\(4) & (\u3_2|Add0~7\ $ (GND))) # (!\u3_2|conteo\(4) & (!\u3_2|Add0~7\ & VCC))
-- \u3_2|Add0~9\ = CARRY((\u3_2|conteo\(4) & !\u3_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(4),
	datad => VCC,
	cin => \u3_2|Add0~7\,
	combout => \u3_2|Add0~8_combout\,
	cout => \u3_2|Add0~9\);

-- Location: FF_X51_Y53_N15
\u3_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(4));

-- Location: LCCOMB_X51_Y53_N16
\u3_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~10_combout\ = (\u3_2|conteo\(5) & (!\u3_2|Add0~9\)) # (!\u3_2|conteo\(5) & ((\u3_2|Add0~9\) # (GND)))
-- \u3_2|Add0~11\ = CARRY((!\u3_2|Add0~9\) # (!\u3_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(5),
	datad => VCC,
	cin => \u3_2|Add0~9\,
	combout => \u3_2|Add0~10_combout\,
	cout => \u3_2|Add0~11\);

-- Location: LCCOMB_X51_Y53_N26
\u3_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~4_combout\ = (!\u3_2|Equal0~2_combout\ & \u3_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|Equal0~2_combout\,
	datad => \u3_2|Add0~10_combout\,
	combout => \u3_2|conteo~4_combout\);

-- Location: FF_X51_Y53_N27
\u3_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(5));

-- Location: LCCOMB_X51_Y53_N18
\u3_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~12_combout\ = (\u3_2|conteo\(6) & (\u3_2|Add0~11\ $ (GND))) # (!\u3_2|conteo\(6) & (!\u3_2|Add0~11\ & VCC))
-- \u3_2|Add0~13\ = CARRY((\u3_2|conteo\(6) & !\u3_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(6),
	datad => VCC,
	cin => \u3_2|Add0~11\,
	combout => \u3_2|Add0~12_combout\,
	cout => \u3_2|Add0~13\);

-- Location: LCCOMB_X52_Y53_N2
\u3_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~3_combout\ = (!\u3_2|Equal0~2_combout\ & \u3_2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|Equal0~2_combout\,
	datad => \u3_2|Add0~12_combout\,
	combout => \u3_2|conteo~3_combout\);

-- Location: FF_X52_Y53_N3
\u3_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(6));

-- Location: LCCOMB_X52_Y53_N8
\u3_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Equal0~0_combout\ = (\u3_2|conteo\(3) & (\u3_2|conteo\(6) & (\u3_2|conteo\(5) & \u3_2|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(3),
	datab => \u3_2|conteo\(6),
	datac => \u3_2|conteo\(5),
	datad => \u3_2|conteo\(7),
	combout => \u3_2|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y53_N18
\u3_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Equal0~1_combout\ = (!\u3_2|conteo\(1) & (!\u3_2|conteo\(0) & (!\u3_2|conteo\(2) & !\u3_2|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(1),
	datab => \u3_2|conteo\(0),
	datac => \u3_2|conteo\(2),
	datad => \u3_2|conteo\(4),
	combout => \u3_2|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y53_N24
\u3_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Equal0~2_combout\ = (\u3_2|conteo\(8) & (\u3_2|conteo\(9) & (\u3_2|Equal0~0_combout\ & \u3_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(8),
	datab => \u3_2|conteo\(9),
	datac => \u3_2|Equal0~0_combout\,
	datad => \u3_2|Equal0~1_combout\,
	combout => \u3_2|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\u3_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|Add0~14_combout\ = (\u3_2|conteo\(7) & (!\u3_2|Add0~13\)) # (!\u3_2|conteo\(7) & ((\u3_2|Add0~13\) # (GND)))
-- \u3_2|Add0~15\ = CARRY((!\u3_2|Add0~13\) # (!\u3_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|conteo\(7),
	datad => VCC,
	cin => \u3_2|Add0~13\,
	combout => \u3_2|Add0~14_combout\,
	cout => \u3_2|Add0~15\);

-- Location: LCCOMB_X51_Y53_N28
\u3_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~0_combout\ = (!\u3_2|Equal0~2_combout\ & \u3_2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_2|Equal0~2_combout\,
	datad => \u3_2|Add0~14_combout\,
	combout => \u3_2|conteo~0_combout\);

-- Location: FF_X51_Y53_N29
\u3_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(7));

-- Location: LCCOMB_X51_Y53_N2
\u3_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|conteo~1_combout\ = (\u3_2|Add0~16_combout\ & !\u3_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3_2|Add0~16_combout\,
	datad => \u3_2|Equal0~2_combout\,
	combout => \u3_2|conteo~1_combout\);

-- Location: FF_X51_Y53_N3
\u3_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|conteo\(8));

-- Location: LCCOMB_X52_Y53_N28
\u3_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|LessThan0~0_combout\ = (\u3_2|conteo\(3) & ((\u3_2|conteo\(1)) # ((\u3_2|conteo\(0)) # (\u3_2|conteo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(1),
	datab => \u3_2|conteo\(0),
	datac => \u3_2|conteo\(3),
	datad => \u3_2|conteo\(2),
	combout => \u3_2|LessThan0~0_combout\);

-- Location: LCCOMB_X52_Y53_N10
\u3_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|LessThan0~1_combout\ = (\u3_2|conteo\(6) & ((\u3_2|conteo\(4)) # ((\u3_2|conteo\(5)) # (\u3_2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(4),
	datab => \u3_2|conteo\(6),
	datac => \u3_2|conteo\(5),
	datad => \u3_2|LessThan0~0_combout\,
	combout => \u3_2|LessThan0~1_combout\);

-- Location: LCCOMB_X52_Y53_N4
\u3_2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3_2|LessThan0~2_combout\ = (!\u3_2|conteo\(8) & (!\u3_2|conteo\(9) & ((!\u3_2|LessThan0~1_combout\) # (!\u3_2|conteo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_2|conteo\(8),
	datab => \u3_2|conteo\(7),
	datac => \u3_2|conteo\(9),
	datad => \u3_2|LessThan0~1_combout\,
	combout => \u3_2|LessThan0~2_combout\);

-- Location: FF_X52_Y53_N5
\u3_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3_1|clkl~clkctrl_outclk\,
	d => \u3_2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_2|snl~q\);

-- Location: LCCOMB_X46_Y38_N30
\u4_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_1|clkl~0_combout\ = !\u4_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4_1|clkl~q\,
	combout => \u4_1|clkl~0_combout\);

-- Location: FF_X46_Y38_N13
\u4_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u4_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_1|clkl~q\);

-- Location: CLKCTRL_G10
\u4_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y50_N4
\u4_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~0_combout\ = \u4_2|conteo\(0) $ (VCC)
-- \u4_2|Add0~1\ = CARRY(\u4_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(0),
	datad => VCC,
	combout => \u4_2|Add0~0_combout\,
	cout => \u4_2|Add0~1\);

-- Location: LCCOMB_X55_Y50_N26
\u4_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~6_combout\ = (\u4_2|Add0~0_combout\ & !\u4_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4_2|Add0~0_combout\,
	datad => \u4_2|Equal0~2_combout\,
	combout => \u4_2|conteo~6_combout\);

-- Location: FF_X55_Y50_N27
\u4_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(0));

-- Location: LCCOMB_X55_Y50_N6
\u4_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~2_combout\ = (\u4_2|conteo\(1) & (!\u4_2|Add0~1\)) # (!\u4_2|conteo\(1) & ((\u4_2|Add0~1\) # (GND)))
-- \u4_2|Add0~3\ = CARRY((!\u4_2|Add0~1\) # (!\u4_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(1),
	datad => VCC,
	cin => \u4_2|Add0~1\,
	combout => \u4_2|Add0~2_combout\,
	cout => \u4_2|Add0~3\);

-- Location: FF_X55_Y50_N7
\u4_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(1));

-- Location: LCCOMB_X55_Y50_N8
\u4_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~4_combout\ = (\u4_2|conteo\(2) & (\u4_2|Add0~3\ $ (GND))) # (!\u4_2|conteo\(2) & (!\u4_2|Add0~3\ & VCC))
-- \u4_2|Add0~5\ = CARRY((\u4_2|conteo\(2) & !\u4_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(2),
	datad => VCC,
	cin => \u4_2|Add0~3\,
	combout => \u4_2|Add0~4_combout\,
	cout => \u4_2|Add0~5\);

-- Location: FF_X55_Y50_N9
\u4_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(2));

-- Location: LCCOMB_X55_Y50_N10
\u4_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~6_combout\ = (\u4_2|conteo\(3) & (!\u4_2|Add0~5\)) # (!\u4_2|conteo\(3) & ((\u4_2|Add0~5\) # (GND)))
-- \u4_2|Add0~7\ = CARRY((!\u4_2|Add0~5\) # (!\u4_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(3),
	datad => VCC,
	cin => \u4_2|Add0~5\,
	combout => \u4_2|Add0~6_combout\,
	cout => \u4_2|Add0~7\);

-- Location: LCCOMB_X55_Y50_N0
\u4_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~5_combout\ = (\u4_2|Add0~6_combout\ & !\u4_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|Add0~6_combout\,
	datad => \u4_2|Equal0~2_combout\,
	combout => \u4_2|conteo~5_combout\);

-- Location: FF_X55_Y50_N1
\u4_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(3));

-- Location: LCCOMB_X55_Y50_N12
\u4_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~8_combout\ = (\u4_2|conteo\(4) & (\u4_2|Add0~7\ $ (GND))) # (!\u4_2|conteo\(4) & (!\u4_2|Add0~7\ & VCC))
-- \u4_2|Add0~9\ = CARRY((\u4_2|conteo\(4) & !\u4_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(4),
	datad => VCC,
	cin => \u4_2|Add0~7\,
	combout => \u4_2|Add0~8_combout\,
	cout => \u4_2|Add0~9\);

-- Location: FF_X55_Y50_N13
\u4_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(4));

-- Location: LCCOMB_X55_Y50_N14
\u4_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~10_combout\ = (\u4_2|conteo\(5) & (!\u4_2|Add0~9\)) # (!\u4_2|conteo\(5) & ((\u4_2|Add0~9\) # (GND)))
-- \u4_2|Add0~11\ = CARRY((!\u4_2|Add0~9\) # (!\u4_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(5),
	datad => VCC,
	cin => \u4_2|Add0~9\,
	combout => \u4_2|Add0~10_combout\,
	cout => \u4_2|Add0~11\);

-- Location: LCCOMB_X55_Y50_N2
\u4_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~2_combout\ = (\u4_2|Add0~10_combout\ & !\u4_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4_2|Add0~10_combout\,
	datad => \u4_2|Equal0~2_combout\,
	combout => \u4_2|conteo~2_combout\);

-- Location: FF_X55_Y50_N3
\u4_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(5));

-- Location: LCCOMB_X55_Y50_N16
\u4_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~12_combout\ = (\u4_2|conteo\(6) & (\u4_2|Add0~11\ $ (GND))) # (!\u4_2|conteo\(6) & (!\u4_2|Add0~11\ & VCC))
-- \u4_2|Add0~13\ = CARRY((\u4_2|conteo\(6) & !\u4_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(6),
	datad => VCC,
	cin => \u4_2|Add0~11\,
	combout => \u4_2|Add0~12_combout\,
	cout => \u4_2|Add0~13\);

-- Location: LCCOMB_X54_Y50_N6
\u4_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~1_combout\ = (!\u4_2|Equal0~2_combout\ & \u4_2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4_2|Equal0~2_combout\,
	datad => \u4_2|Add0~12_combout\,
	combout => \u4_2|conteo~1_combout\);

-- Location: FF_X54_Y50_N7
\u4_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(6));

-- Location: LCCOMB_X55_Y50_N18
\u4_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~14_combout\ = (\u4_2|conteo\(7) & (!\u4_2|Add0~13\)) # (!\u4_2|conteo\(7) & ((\u4_2|Add0~13\) # (GND)))
-- \u4_2|Add0~15\ = CARRY((!\u4_2|Add0~13\) # (!\u4_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(7),
	datad => VCC,
	cin => \u4_2|Add0~13\,
	combout => \u4_2|Add0~14_combout\,
	cout => \u4_2|Add0~15\);

-- Location: LCCOMB_X55_Y50_N28
\u4_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~0_combout\ = (!\u4_2|Equal0~2_combout\ & \u4_2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|Equal0~2_combout\,
	datad => \u4_2|Add0~14_combout\,
	combout => \u4_2|conteo~0_combout\);

-- Location: FF_X55_Y50_N29
\u4_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(7));

-- Location: LCCOMB_X55_Y50_N20
\u4_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~16_combout\ = (\u4_2|conteo\(8) & (\u4_2|Add0~15\ $ (GND))) # (!\u4_2|conteo\(8) & (!\u4_2|Add0~15\ & VCC))
-- \u4_2|Add0~17\ = CARRY((\u4_2|conteo\(8) & !\u4_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(8),
	datad => VCC,
	cin => \u4_2|Add0~15\,
	combout => \u4_2|Add0~16_combout\,
	cout => \u4_2|Add0~17\);

-- Location: LCCOMB_X55_Y50_N22
\u4_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Add0~18_combout\ = \u4_2|conteo\(9) $ (\u4_2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(9),
	cin => \u4_2|Add0~17\,
	combout => \u4_2|Add0~18_combout\);

-- Location: LCCOMB_X55_Y50_N30
\u4_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~4_combout\ = (\u4_2|Add0~18_combout\ & !\u4_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4_2|Add0~18_combout\,
	datad => \u4_2|Equal0~2_combout\,
	combout => \u4_2|conteo~4_combout\);

-- Location: FF_X55_Y50_N31
\u4_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(9));

-- Location: LCCOMB_X54_Y50_N30
\u4_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Equal0~0_combout\ = (\u4_2|conteo\(5) & (\u4_2|conteo\(3) & (!\u4_2|conteo\(4) & \u4_2|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(5),
	datab => \u4_2|conteo\(3),
	datac => \u4_2|conteo\(4),
	datad => \u4_2|conteo\(7),
	combout => \u4_2|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y50_N28
\u4_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Equal0~1_combout\ = (\u4_2|conteo\(6) & (!\u4_2|conteo\(2) & (!\u4_2|conteo\(1) & !\u4_2|conteo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(6),
	datab => \u4_2|conteo\(2),
	datac => \u4_2|conteo\(1),
	datad => \u4_2|conteo\(0),
	combout => \u4_2|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y50_N14
\u4_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|Equal0~2_combout\ = (\u4_2|conteo\(9) & (\u4_2|conteo\(8) & (\u4_2|Equal0~0_combout\ & \u4_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(9),
	datab => \u4_2|conteo\(8),
	datac => \u4_2|Equal0~0_combout\,
	datad => \u4_2|Equal0~1_combout\,
	combout => \u4_2|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y50_N24
\u4_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|conteo~3_combout\ = (!\u4_2|Equal0~2_combout\ & \u4_2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|Equal0~2_combout\,
	datad => \u4_2|Add0~16_combout\,
	combout => \u4_2|conteo~3_combout\);

-- Location: FF_X55_Y50_N25
\u4_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|conteo\(8));

-- Location: LCCOMB_X54_Y50_N12
\u4_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|LessThan0~0_combout\ = (\u4_2|conteo\(7) & ((\u4_2|conteo\(6)) # ((\u4_2|conteo\(4) & \u4_2|conteo\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4_2|conteo\(6),
	datab => \u4_2|conteo\(7),
	datac => \u4_2|conteo\(4),
	datad => \u4_2|conteo\(5),
	combout => \u4_2|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y50_N8
\u4_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4_2|LessThan0~1_combout\ = (!\u4_2|conteo\(8) & (!\u4_2|conteo\(9) & !\u4_2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4_2|conteo\(8),
	datac => \u4_2|conteo\(9),
	datad => \u4_2|LessThan0~0_combout\,
	combout => \u4_2|LessThan0~1_combout\);

-- Location: FF_X54_Y50_N9
\u4_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4_1|clkl~clkctrl_outclk\,
	d => \u4_2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4_2|snl~q\);

-- Location: LCCOMB_X47_Y38_N4
\u5_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_1|clkl~0_combout\ = !\u5_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5_1|clkl~q\,
	combout => \u5_1|clkl~0_combout\);

-- Location: LCCOMB_X47_Y38_N10
\u5_1|clkl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_1|clkl~feeder_combout\ = \u5_1|clkl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5_1|clkl~0_combout\,
	combout => \u5_1|clkl~feeder_combout\);

-- Location: FF_X47_Y38_N11
\u5_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5_1|clkl~feeder_combout\,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_1|clkl~q\);

-- Location: CLKCTRL_G5
\u5_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y53_N8
\u5_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~0_combout\ = \u5_2|conteo\(0) $ (VCC)
-- \u5_2|Add0~1\ = CARRY(\u5_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(0),
	datad => VCC,
	combout => \u5_2|Add0~0_combout\,
	cout => \u5_2|Add0~1\);

-- Location: LCCOMB_X63_Y53_N16
\u5_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~5_combout\ = (\u5_2|Add0~0_combout\ & !\u5_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5_2|Add0~0_combout\,
	datad => \u5_2|Equal0~2_combout\,
	combout => \u5_2|conteo~5_combout\);

-- Location: FF_X64_Y53_N7
\u5_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	asdata => \u5_2|conteo~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(0));

-- Location: LCCOMB_X64_Y53_N10
\u5_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~2_combout\ = (\u5_2|conteo\(1) & (!\u5_2|Add0~1\)) # (!\u5_2|conteo\(1) & ((\u5_2|Add0~1\) # (GND)))
-- \u5_2|Add0~3\ = CARRY((!\u5_2|Add0~1\) # (!\u5_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(1),
	datad => VCC,
	cin => \u5_2|Add0~1\,
	combout => \u5_2|Add0~2_combout\,
	cout => \u5_2|Add0~3\);

-- Location: FF_X64_Y53_N11
\u5_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(1));

-- Location: LCCOMB_X64_Y53_N12
\u5_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~4_combout\ = (\u5_2|conteo\(2) & (\u5_2|Add0~3\ $ (GND))) # (!\u5_2|conteo\(2) & (!\u5_2|Add0~3\ & VCC))
-- \u5_2|Add0~5\ = CARRY((\u5_2|conteo\(2) & !\u5_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(2),
	datad => VCC,
	cin => \u5_2|Add0~3\,
	combout => \u5_2|Add0~4_combout\,
	cout => \u5_2|Add0~5\);

-- Location: FF_X64_Y53_N13
\u5_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(2));

-- Location: LCCOMB_X64_Y53_N14
\u5_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~6_combout\ = (\u5_2|conteo\(3) & (!\u5_2|Add0~5\)) # (!\u5_2|conteo\(3) & ((\u5_2|Add0~5\) # (GND)))
-- \u5_2|Add0~7\ = CARRY((!\u5_2|Add0~5\) # (!\u5_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(3),
	datad => VCC,
	cin => \u5_2|Add0~5\,
	combout => \u5_2|Add0~6_combout\,
	cout => \u5_2|Add0~7\);

-- Location: LCCOMB_X64_Y53_N28
\u5_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~6_combout\ = (\u5_2|Add0~6_combout\ & !\u5_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5_2|Add0~6_combout\,
	datad => \u5_2|Equal0~2_combout\,
	combout => \u5_2|conteo~6_combout\);

-- Location: FF_X64_Y53_N29
\u5_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(3));

-- Location: LCCOMB_X64_Y53_N16
\u5_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~8_combout\ = (\u5_2|conteo\(4) & (\u5_2|Add0~7\ $ (GND))) # (!\u5_2|conteo\(4) & (!\u5_2|Add0~7\ & VCC))
-- \u5_2|Add0~9\ = CARRY((\u5_2|conteo\(4) & !\u5_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(4),
	datad => VCC,
	cin => \u5_2|Add0~7\,
	combout => \u5_2|Add0~8_combout\,
	cout => \u5_2|Add0~9\);

-- Location: FF_X64_Y53_N17
\u5_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(4));

-- Location: LCCOMB_X64_Y53_N18
\u5_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~10_combout\ = (\u5_2|conteo\(5) & (!\u5_2|Add0~9\)) # (!\u5_2|conteo\(5) & ((\u5_2|Add0~9\) # (GND)))
-- \u5_2|Add0~11\ = CARRY((!\u5_2|Add0~9\) # (!\u5_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(5),
	datad => VCC,
	cin => \u5_2|Add0~9\,
	combout => \u5_2|Add0~10_combout\,
	cout => \u5_2|Add0~11\);

-- Location: LCCOMB_X64_Y53_N4
\u5_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~3_combout\ = (!\u5_2|Equal0~2_combout\ & \u5_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|Equal0~2_combout\,
	datad => \u5_2|Add0~10_combout\,
	combout => \u5_2|conteo~3_combout\);

-- Location: FF_X64_Y53_N5
\u5_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(5));

-- Location: LCCOMB_X64_Y53_N20
\u5_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~12_combout\ = (\u5_2|conteo\(6) & (\u5_2|Add0~11\ $ (GND))) # (!\u5_2|conteo\(6) & (!\u5_2|Add0~11\ & VCC))
-- \u5_2|Add0~13\ = CARRY((\u5_2|conteo\(6) & !\u5_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(6),
	datad => VCC,
	cin => \u5_2|Add0~11\,
	combout => \u5_2|Add0~12_combout\,
	cout => \u5_2|Add0~13\);

-- Location: LCCOMB_X63_Y53_N24
\u5_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~4_combout\ = (\u5_2|Add0~12_combout\ & !\u5_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5_2|Add0~12_combout\,
	datad => \u5_2|Equal0~2_combout\,
	combout => \u5_2|conteo~4_combout\);

-- Location: FF_X63_Y53_N25
\u5_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(6));

-- Location: LCCOMB_X64_Y53_N22
\u5_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~14_combout\ = (\u5_2|conteo\(7) & (!\u5_2|Add0~13\)) # (!\u5_2|conteo\(7) & ((\u5_2|Add0~13\) # (GND)))
-- \u5_2|Add0~15\ = CARRY((!\u5_2|Add0~13\) # (!\u5_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(7),
	datad => VCC,
	cin => \u5_2|Add0~13\,
	combout => \u5_2|Add0~14_combout\,
	cout => \u5_2|Add0~15\);

-- Location: LCCOMB_X64_Y53_N2
\u5_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~2_combout\ = (\u5_2|Add0~14_combout\ & !\u5_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5_2|Add0~14_combout\,
	datad => \u5_2|Equal0~2_combout\,
	combout => \u5_2|conteo~2_combout\);

-- Location: FF_X64_Y53_N3
\u5_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(7));

-- Location: LCCOMB_X64_Y53_N24
\u5_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~16_combout\ = (\u5_2|conteo\(8) & (\u5_2|Add0~15\ $ (GND))) # (!\u5_2|conteo\(8) & (!\u5_2|Add0~15\ & VCC))
-- \u5_2|Add0~17\ = CARRY((\u5_2|conteo\(8) & !\u5_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|conteo\(8),
	datad => VCC,
	cin => \u5_2|Add0~15\,
	combout => \u5_2|Add0~16_combout\,
	cout => \u5_2|Add0~17\);

-- Location: LCCOMB_X64_Y53_N26
\u5_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Add0~18_combout\ = \u5_2|Add0~17\ $ (\u5_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5_2|conteo\(9),
	cin => \u5_2|Add0~17\,
	combout => \u5_2|Add0~18_combout\);

-- Location: LCCOMB_X64_Y53_N0
\u5_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~1_combout\ = (\u5_2|Add0~18_combout\ & !\u5_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5_2|Add0~18_combout\,
	datad => \u5_2|Equal0~2_combout\,
	combout => \u5_2|conteo~1_combout\);

-- Location: FF_X64_Y53_N1
\u5_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(9));

-- Location: LCCOMB_X64_Y53_N30
\u5_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Equal0~0_combout\ = (!\u5_2|conteo\(2) & (\u5_2|conteo\(3) & (\u5_2|conteo\(5) & !\u5_2|conteo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(2),
	datab => \u5_2|conteo\(3),
	datac => \u5_2|conteo\(5),
	datad => \u5_2|conteo\(4),
	combout => \u5_2|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y53_N20
\u5_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Equal0~1_combout\ = (\u5_2|conteo\(7) & (\u5_2|conteo\(6) & (!\u5_2|conteo\(1) & !\u5_2|conteo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(7),
	datab => \u5_2|conteo\(6),
	datac => \u5_2|conteo\(1),
	datad => \u5_2|conteo\(0),
	combout => \u5_2|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y53_N2
\u5_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|Equal0~2_combout\ = (\u5_2|conteo\(8) & (\u5_2|conteo\(9) & (\u5_2|Equal0~0_combout\ & \u5_2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(8),
	datab => \u5_2|conteo\(9),
	datac => \u5_2|Equal0~0_combout\,
	datad => \u5_2|Equal0~1_combout\,
	combout => \u5_2|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y53_N6
\u5_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|conteo~0_combout\ = (!\u5_2|Equal0~2_combout\ & \u5_2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5_2|Equal0~2_combout\,
	datad => \u5_2|Add0~16_combout\,
	combout => \u5_2|conteo~0_combout\);

-- Location: FF_X63_Y53_N7
\u5_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|conteo\(8));

-- Location: LCCOMB_X64_Y53_N6
\u5_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|LessThan0~0_combout\ = (\u5_2|conteo\(3)) # ((\u5_2|conteo\(1) & (\u5_2|conteo\(0) & \u5_2|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(3),
	datab => \u5_2|conteo\(1),
	datac => \u5_2|conteo\(0),
	datad => \u5_2|conteo\(2),
	combout => \u5_2|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y53_N18
\u5_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|LessThan0~1_combout\ = (\u5_2|conteo\(5)) # ((\u5_2|conteo\(6)) # ((\u5_2|conteo\(4) & \u5_2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(5),
	datab => \u5_2|conteo\(4),
	datac => \u5_2|LessThan0~0_combout\,
	datad => \u5_2|conteo\(6),
	combout => \u5_2|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y53_N28
\u5_2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5_2|LessThan0~2_combout\ = (!\u5_2|conteo\(8) & (!\u5_2|conteo\(9) & ((!\u5_2|conteo\(7)) # (!\u5_2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5_2|conteo\(8),
	datab => \u5_2|LessThan0~1_combout\,
	datac => \u5_2|conteo\(9),
	datad => \u5_2|conteo\(7),
	combout => \u5_2|LessThan0~2_combout\);

-- Location: FF_X63_Y53_N29
\u5_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5_1|clkl~clkctrl_outclk\,
	d => \u5_2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5_2|snl~q\);

-- Location: LCCOMB_X47_Y38_N12
\u6_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_1|clkl~0_combout\ = !\u6_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6_1|clkl~q\,
	combout => \u6_1|clkl~0_combout\);

-- Location: FF_X46_Y38_N31
\u6_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u6_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_1|clkl~q\);

-- Location: CLKCTRL_G8
\u6_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u6_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u6_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y52_N18
\u6_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~8_combout\ = (\u6_2|conteo\(4) & (\u6_2|Add0~7\ $ (GND))) # (!\u6_2|conteo\(4) & (!\u6_2|Add0~7\ & VCC))
-- \u6_2|Add0~9\ = CARRY((\u6_2|conteo\(4) & !\u6_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6_2|conteo\(4),
	datad => VCC,
	cin => \u6_2|Add0~7\,
	combout => \u6_2|Add0~8_combout\,
	cout => \u6_2|Add0~9\);

-- Location: LCCOMB_X57_Y52_N20
\u6_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~10_combout\ = (\u6_2|conteo\(5) & (!\u6_2|Add0~9\)) # (!\u6_2|conteo\(5) & ((\u6_2|Add0~9\) # (GND)))
-- \u6_2|Add0~11\ = CARRY((!\u6_2|Add0~9\) # (!\u6_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6_2|conteo\(5),
	datad => VCC,
	cin => \u6_2|Add0~9\,
	combout => \u6_2|Add0~10_combout\,
	cout => \u6_2|Add0~11\);

-- Location: LCCOMB_X57_Y52_N0
\u6_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~0_combout\ = (\u6_2|Add0~10_combout\ & ((\u6_2|conteo\(4)) # ((!\u6_2|Equal0~2_combout\) # (!\u6_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(4),
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|Add0~10_combout\,
	combout => \u6_2|conteo~0_combout\);

-- Location: FF_X57_Y52_N1
\u6_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(5));

-- Location: LCCOMB_X57_Y52_N22
\u6_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~12_combout\ = (\u6_2|conteo\(6) & (\u6_2|Add0~11\ $ (GND))) # (!\u6_2|conteo\(6) & (!\u6_2|Add0~11\ & VCC))
-- \u6_2|Add0~13\ = CARRY((\u6_2|conteo\(6) & !\u6_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(6),
	datad => VCC,
	cin => \u6_2|Add0~11\,
	combout => \u6_2|Add0~12_combout\,
	cout => \u6_2|Add0~13\);

-- Location: LCCOMB_X57_Y52_N24
\u6_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~14_combout\ = (\u6_2|conteo\(7) & (!\u6_2|Add0~13\)) # (!\u6_2|conteo\(7) & ((\u6_2|Add0~13\) # (GND)))
-- \u6_2|Add0~15\ = CARRY((!\u6_2|Add0~13\) # (!\u6_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6_2|conteo\(7),
	datad => VCC,
	cin => \u6_2|Add0~13\,
	combout => \u6_2|Add0~14_combout\,
	cout => \u6_2|Add0~15\);

-- Location: LCCOMB_X57_Y52_N4
\u6_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~3_combout\ = (\u6_2|Add0~14_combout\ & ((\u6_2|conteo\(4)) # ((!\u6_2|Equal0~2_combout\) # (!\u6_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(4),
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|Add0~14_combout\,
	combout => \u6_2|conteo~3_combout\);

-- Location: FF_X57_Y52_N5
\u6_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(7));

-- Location: LCCOMB_X57_Y52_N26
\u6_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~16_combout\ = (\u6_2|conteo\(8) & (\u6_2|Add0~15\ $ (GND))) # (!\u6_2|conteo\(8) & (!\u6_2|Add0~15\ & VCC))
-- \u6_2|Add0~17\ = CARRY((\u6_2|conteo\(8) & !\u6_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(8),
	datad => VCC,
	cin => \u6_2|Add0~15\,
	combout => \u6_2|Add0~16_combout\,
	cout => \u6_2|Add0~17\);

-- Location: LCCOMB_X57_Y52_N6
\u6_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~4_combout\ = (\u6_2|Add0~16_combout\ & ((\u6_2|conteo\(4)) # ((!\u6_2|Equal0~2_combout\) # (!\u6_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(4),
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Add0~16_combout\,
	datad => \u6_2|Equal0~2_combout\,
	combout => \u6_2|conteo~4_combout\);

-- Location: FF_X57_Y52_N7
\u6_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(8));

-- Location: LCCOMB_X57_Y52_N10
\u6_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~0_combout\ = \u6_2|conteo\(0) $ (VCC)
-- \u6_2|Add0~1\ = CARRY(\u6_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(0),
	datad => VCC,
	combout => \u6_2|Add0~0_combout\,
	cout => \u6_2|Add0~1\);

-- Location: LCCOMB_X57_Y52_N30
\u6_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~6_combout\ = (\u6_2|Add0~0_combout\ & (((\u6_2|conteo\(4)) # (!\u6_2|Equal0~2_combout\)) # (!\u6_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|Add0~0_combout\,
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|conteo\(4),
	combout => \u6_2|conteo~6_combout\);

-- Location: FF_X57_Y52_N31
\u6_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(0));

-- Location: LCCOMB_X57_Y52_N12
\u6_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~2_combout\ = (\u6_2|conteo\(1) & (!\u6_2|Add0~1\)) # (!\u6_2|conteo\(1) & ((\u6_2|Add0~1\) # (GND)))
-- \u6_2|Add0~3\ = CARRY((!\u6_2|Add0~1\) # (!\u6_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(1),
	datad => VCC,
	cin => \u6_2|Add0~1\,
	combout => \u6_2|Add0~2_combout\,
	cout => \u6_2|Add0~3\);

-- Location: FF_X57_Y52_N13
\u6_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(1));

-- Location: LCCOMB_X57_Y52_N14
\u6_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~4_combout\ = (\u6_2|conteo\(2) & (\u6_2|Add0~3\ $ (GND))) # (!\u6_2|conteo\(2) & (!\u6_2|Add0~3\ & VCC))
-- \u6_2|Add0~5\ = CARRY((\u6_2|conteo\(2) & !\u6_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6_2|conteo\(2),
	datad => VCC,
	cin => \u6_2|Add0~3\,
	combout => \u6_2|Add0~4_combout\,
	cout => \u6_2|Add0~5\);

-- Location: FF_X57_Y52_N15
\u6_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(2));

-- Location: LCCOMB_X58_Y52_N12
\u6_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Equal0~1_combout\ = (!\u6_2|conteo\(1) & (!\u6_2|conteo\(0) & (\u6_2|conteo\(7) & !\u6_2|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(1),
	datab => \u6_2|conteo\(0),
	datac => \u6_2|conteo\(7),
	datad => \u6_2|conteo\(2),
	combout => \u6_2|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y52_N14
\u6_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Equal0~2_combout\ = (\u6_2|conteo\(9) & (\u6_2|conteo\(8) & \u6_2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(9),
	datac => \u6_2|conteo\(8),
	datad => \u6_2|Equal0~1_combout\,
	combout => \u6_2|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y52_N30
\u6_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~2_combout\ = (\u6_2|Add0~12_combout\ & (((\u6_2|conteo\(4)) # (!\u6_2|Equal0~2_combout\)) # (!\u6_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|Equal0~0_combout\,
	datab => \u6_2|conteo\(4),
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|Add0~12_combout\,
	combout => \u6_2|conteo~2_combout\);

-- Location: FF_X58_Y52_N31
\u6_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(6));

-- Location: LCCOMB_X58_Y52_N24
\u6_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Equal0~0_combout\ = (\u6_2|conteo\(6) & (\u6_2|conteo\(5) & \u6_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(6),
	datac => \u6_2|conteo\(5),
	datad => \u6_2|conteo\(3),
	combout => \u6_2|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y52_N16
\u6_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~6_combout\ = (\u6_2|conteo\(3) & (!\u6_2|Add0~5\)) # (!\u6_2|conteo\(3) & ((\u6_2|Add0~5\) # (GND)))
-- \u6_2|Add0~7\ = CARRY((!\u6_2|Add0~5\) # (!\u6_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6_2|conteo\(3),
	datad => VCC,
	cin => \u6_2|Add0~5\,
	combout => \u6_2|Add0~6_combout\,
	cout => \u6_2|Add0~7\);

-- Location: LCCOMB_X57_Y52_N2
\u6_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~1_combout\ = (\u6_2|Add0~6_combout\ & ((\u6_2|conteo\(4)) # ((!\u6_2|Equal0~2_combout\) # (!\u6_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(4),
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|Add0~6_combout\,
	combout => \u6_2|conteo~1_combout\);

-- Location: FF_X57_Y52_N3
\u6_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(3));

-- Location: FF_X57_Y52_N19
\u6_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(4));

-- Location: LCCOMB_X57_Y52_N28
\u6_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|Add0~18_combout\ = \u6_2|Add0~17\ $ (\u6_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6_2|conteo\(9),
	cin => \u6_2|Add0~17\,
	combout => \u6_2|Add0~18_combout\);

-- Location: LCCOMB_X57_Y52_N8
\u6_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|conteo~5_combout\ = (\u6_2|Add0~18_combout\ & ((\u6_2|conteo\(4)) # ((!\u6_2|Equal0~2_combout\) # (!\u6_2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(4),
	datab => \u6_2|Equal0~0_combout\,
	datac => \u6_2|Equal0~2_combout\,
	datad => \u6_2|Add0~18_combout\,
	combout => \u6_2|conteo~5_combout\);

-- Location: FF_X57_Y52_N9
\u6_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|conteo\(9));

-- Location: LCCOMB_X58_Y52_N18
\u6_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|LessThan0~0_combout\ = (\u6_2|conteo\(1) & (\u6_2|conteo\(4) & (\u6_2|Equal0~0_combout\ & \u6_2|conteo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(1),
	datab => \u6_2|conteo\(4),
	datac => \u6_2|Equal0~0_combout\,
	datad => \u6_2|conteo\(2),
	combout => \u6_2|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y52_N28
\u6_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6_2|LessThan0~1_combout\ = (!\u6_2|conteo\(9) & (!\u6_2|conteo\(8) & (!\u6_2|conteo\(7) & !\u6_2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6_2|conteo\(9),
	datab => \u6_2|conteo\(8),
	datac => \u6_2|conteo\(7),
	datad => \u6_2|LessThan0~0_combout\,
	combout => \u6_2|LessThan0~1_combout\);

-- Location: FF_X58_Y52_N29
\u6_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u6_1|clkl~clkctrl_outclk\,
	d => \u6_2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6_2|snl~q\);

-- Location: LCCOMB_X47_Y38_N18
\u7_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_1|clkl~0_combout\ = !\u7_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u7_1|clkl~q\,
	combout => \u7_1|clkl~0_combout\);

-- Location: LCCOMB_X47_Y38_N24
\u7_1|clkl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_1|clkl~feeder_combout\ = \u7_1|clkl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u7_1|clkl~0_combout\,
	combout => \u7_1|clkl~feeder_combout\);

-- Location: FF_X47_Y38_N25
\u7_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7_1|clkl~feeder_combout\,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_1|clkl~q\);

-- Location: CLKCTRL_G7
\u7_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u7_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u7_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y51_N4
\u7_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~0_combout\ = \u7_2|conteo\(0) $ (VCC)
-- \u7_2|Add0~1\ = CARRY(\u7_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(0),
	datad => VCC,
	combout => \u7_2|Add0~0_combout\,
	cout => \u7_2|Add0~1\);

-- Location: LCCOMB_X67_Y51_N30
\u7_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~3_combout\ = (\u7_2|Add0~0_combout\ & !\u7_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7_2|Add0~0_combout\,
	datad => \u7_2|Equal0~2_combout\,
	combout => \u7_2|conteo~3_combout\);

-- Location: FF_X67_Y51_N31
\u7_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(0));

-- Location: LCCOMB_X67_Y51_N6
\u7_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~2_combout\ = (\u7_2|conteo\(1) & (!\u7_2|Add0~1\)) # (!\u7_2|conteo\(1) & ((\u7_2|Add0~1\) # (GND)))
-- \u7_2|Add0~3\ = CARRY((!\u7_2|Add0~1\) # (!\u7_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(1),
	datad => VCC,
	cin => \u7_2|Add0~1\,
	combout => \u7_2|Add0~2_combout\,
	cout => \u7_2|Add0~3\);

-- Location: FF_X67_Y51_N7
\u7_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(1));

-- Location: LCCOMB_X67_Y51_N8
\u7_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~4_combout\ = (\u7_2|conteo\(2) & (\u7_2|Add0~3\ $ (GND))) # (!\u7_2|conteo\(2) & (!\u7_2|Add0~3\ & VCC))
-- \u7_2|Add0~5\ = CARRY((\u7_2|conteo\(2) & !\u7_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|conteo\(2),
	datad => VCC,
	cin => \u7_2|Add0~3\,
	combout => \u7_2|Add0~4_combout\,
	cout => \u7_2|Add0~5\);

-- Location: FF_X67_Y51_N9
\u7_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(2));

-- Location: LCCOMB_X67_Y51_N10
\u7_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~6_combout\ = (\u7_2|conteo\(3) & (!\u7_2|Add0~5\)) # (!\u7_2|conteo\(3) & ((\u7_2|Add0~5\) # (GND)))
-- \u7_2|Add0~7\ = CARRY((!\u7_2|Add0~5\) # (!\u7_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|conteo\(3),
	datad => VCC,
	cin => \u7_2|Add0~5\,
	combout => \u7_2|Add0~6_combout\,
	cout => \u7_2|Add0~7\);

-- Location: LCCOMB_X67_Y51_N0
\u7_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~2_combout\ = (!\u7_2|Equal0~2_combout\ & \u7_2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|Equal0~2_combout\,
	datad => \u7_2|Add0~6_combout\,
	combout => \u7_2|conteo~2_combout\);

-- Location: FF_X67_Y51_N1
\u7_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(3));

-- Location: LCCOMB_X67_Y51_N12
\u7_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~8_combout\ = (\u7_2|conteo\(4) & (\u7_2|Add0~7\ $ (GND))) # (!\u7_2|conteo\(4) & (!\u7_2|Add0~7\ & VCC))
-- \u7_2|Add0~9\ = CARRY((\u7_2|conteo\(4) & !\u7_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(4),
	datad => VCC,
	cin => \u7_2|Add0~7\,
	combout => \u7_2|Add0~8_combout\,
	cout => \u7_2|Add0~9\);

-- Location: FF_X67_Y51_N13
\u7_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(4));

-- Location: LCCOMB_X67_Y51_N14
\u7_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~10_combout\ = (\u7_2|conteo\(5) & (!\u7_2|Add0~9\)) # (!\u7_2|conteo\(5) & ((\u7_2|Add0~9\) # (GND)))
-- \u7_2|Add0~11\ = CARRY((!\u7_2|Add0~9\) # (!\u7_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|conteo\(5),
	datad => VCC,
	cin => \u7_2|Add0~9\,
	combout => \u7_2|Add0~10_combout\,
	cout => \u7_2|Add0~11\);

-- Location: LCCOMB_X67_Y51_N24
\u7_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~0_combout\ = (\u7_2|Add0~10_combout\ & !\u7_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7_2|Add0~10_combout\,
	datad => \u7_2|Equal0~2_combout\,
	combout => \u7_2|conteo~0_combout\);

-- Location: FF_X67_Y51_N25
\u7_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(5));

-- Location: LCCOMB_X67_Y51_N16
\u7_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~12_combout\ = (\u7_2|conteo\(6) & (\u7_2|Add0~11\ $ (GND))) # (!\u7_2|conteo\(6) & (!\u7_2|Add0~11\ & VCC))
-- \u7_2|Add0~13\ = CARRY((\u7_2|conteo\(6) & !\u7_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|conteo\(6),
	datad => VCC,
	cin => \u7_2|Add0~11\,
	combout => \u7_2|Add0~12_combout\,
	cout => \u7_2|Add0~13\);

-- Location: LCCOMB_X67_Y51_N2
\u7_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~1_combout\ = (!\u7_2|Equal0~2_combout\ & \u7_2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|Equal0~2_combout\,
	datad => \u7_2|Add0~12_combout\,
	combout => \u7_2|conteo~1_combout\);

-- Location: FF_X67_Y51_N3
\u7_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(6));

-- Location: LCCOMB_X67_Y51_N18
\u7_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~14_combout\ = (\u7_2|conteo\(7) & (!\u7_2|Add0~13\)) # (!\u7_2|conteo\(7) & ((\u7_2|Add0~13\) # (GND)))
-- \u7_2|Add0~15\ = CARRY((!\u7_2|Add0~13\) # (!\u7_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|conteo\(7),
	datad => VCC,
	cin => \u7_2|Add0~13\,
	combout => \u7_2|Add0~14_combout\,
	cout => \u7_2|Add0~15\);

-- Location: LCCOMB_X67_Y51_N28
\u7_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~4_combout\ = (!\u7_2|Equal0~2_combout\ & \u7_2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|Equal0~2_combout\,
	datad => \u7_2|Add0~14_combout\,
	combout => \u7_2|conteo~4_combout\);

-- Location: FF_X67_Y51_N29
\u7_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(7));

-- Location: LCCOMB_X67_Y51_N20
\u7_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~16_combout\ = (\u7_2|conteo\(8) & (\u7_2|Add0~15\ $ (GND))) # (!\u7_2|conteo\(8) & (!\u7_2|Add0~15\ & VCC))
-- \u7_2|Add0~17\ = CARRY((\u7_2|conteo\(8) & !\u7_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(8),
	datad => VCC,
	cin => \u7_2|Add0~15\,
	combout => \u7_2|Add0~16_combout\,
	cout => \u7_2|Add0~17\);

-- Location: LCCOMB_X67_Y51_N22
\u7_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Add0~18_combout\ = \u7_2|Add0~17\ $ (\u7_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u7_2|conteo\(9),
	cin => \u7_2|Add0~17\,
	combout => \u7_2|Add0~18_combout\);

-- Location: LCCOMB_X66_Y51_N14
\u7_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~6_combout\ = (!\u7_2|Equal0~2_combout\ & \u7_2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|Equal0~2_combout\,
	datad => \u7_2|Add0~18_combout\,
	combout => \u7_2|conteo~6_combout\);

-- Location: FF_X66_Y51_N15
\u7_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(9));

-- Location: LCCOMB_X66_Y51_N30
\u7_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Equal0~1_combout\ = (!\u7_2|conteo\(2) & (\u7_2|conteo\(3) & (!\u7_2|conteo\(4) & \u7_2|conteo\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(2),
	datab => \u7_2|conteo\(3),
	datac => \u7_2|conteo\(4),
	datad => \u7_2|conteo\(7),
	combout => \u7_2|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y51_N12
\u7_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Equal0~0_combout\ = (!\u7_2|conteo\(1) & (\u7_2|conteo\(5) & (!\u7_2|conteo\(0) & \u7_2|conteo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(1),
	datab => \u7_2|conteo\(5),
	datac => \u7_2|conteo\(0),
	datad => \u7_2|conteo\(6),
	combout => \u7_2|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y51_N24
\u7_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|Equal0~2_combout\ = (\u7_2|conteo\(8) & (\u7_2|conteo\(9) & (\u7_2|Equal0~1_combout\ & \u7_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(8),
	datab => \u7_2|conteo\(9),
	datac => \u7_2|Equal0~1_combout\,
	datad => \u7_2|Equal0~0_combout\,
	combout => \u7_2|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y51_N26
\u7_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|conteo~5_combout\ = (!\u7_2|Equal0~2_combout\ & \u7_2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7_2|Equal0~2_combout\,
	datad => \u7_2|Add0~16_combout\,
	combout => \u7_2|conteo~5_combout\);

-- Location: FF_X67_Y51_N27
\u7_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|conteo\(8));

-- Location: LCCOMB_X66_Y51_N18
\u7_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|LessThan0~0_combout\ = (\u7_2|conteo\(4)) # ((\u7_2|conteo\(2) & ((\u7_2|conteo\(0)) # (\u7_2|conteo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(0),
	datab => \u7_2|conteo\(2),
	datac => \u7_2|conteo\(4),
	datad => \u7_2|conteo\(1),
	combout => \u7_2|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y51_N28
\u7_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|LessThan0~1_combout\ = (\u7_2|conteo\(6) & (\u7_2|conteo\(5) & ((\u7_2|conteo\(3)) # (\u7_2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(6),
	datab => \u7_2|conteo\(5),
	datac => \u7_2|conteo\(3),
	datad => \u7_2|LessThan0~0_combout\,
	combout => \u7_2|LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y51_N16
\u7_2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7_2|LessThan0~2_combout\ = (!\u7_2|conteo\(8) & (!\u7_2|conteo\(7) & (!\u7_2|conteo\(9) & !\u7_2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7_2|conteo\(8),
	datab => \u7_2|conteo\(7),
	datac => \u7_2|conteo\(9),
	datad => \u7_2|LessThan0~1_combout\,
	combout => \u7_2|LessThan0~2_combout\);

-- Location: FF_X66_Y51_N17
\u7_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7_1|clkl~clkctrl_outclk\,
	d => \u7_2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7_2|snl~q\);

-- Location: LCCOMB_X46_Y38_N20
\u8_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_1|clkl~0_combout\ = !\u8_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u8_1|clkl~q\,
	combout => \u8_1|clkl~0_combout\);

-- Location: FF_X46_Y38_N1
\u8_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u8_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_1|clkl~q\);

-- Location: CLKCTRL_G12
\u8_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u8_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u8_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y51_N14
\u8_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~12_combout\ = (\u8_2|conteo\(6) & (\u8_2|Add0~11\ $ (GND))) # (!\u8_2|conteo\(6) & (!\u8_2|Add0~11\ & VCC))
-- \u8_2|Add0~13\ = CARRY((\u8_2|conteo\(6) & !\u8_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(6),
	datad => VCC,
	cin => \u8_2|Add0~11\,
	combout => \u8_2|Add0~12_combout\,
	cout => \u8_2|Add0~13\);

-- Location: LCCOMB_X46_Y51_N16
\u8_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~14_combout\ = (\u8_2|conteo\(7) & (!\u8_2|Add0~13\)) # (!\u8_2|conteo\(7) & ((\u8_2|Add0~13\) # (GND)))
-- \u8_2|Add0~15\ = CARRY((!\u8_2|Add0~13\) # (!\u8_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(7),
	datad => VCC,
	cin => \u8_2|Add0~13\,
	combout => \u8_2|Add0~14_combout\,
	cout => \u8_2|Add0~15\);

-- Location: LCCOMB_X46_Y51_N24
\u8_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~0_combout\ = (!\u8_2|Equal0~2_combout\ & \u8_2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|Equal0~2_combout\,
	datad => \u8_2|Add0~14_combout\,
	combout => \u8_2|conteo~0_combout\);

-- Location: FF_X46_Y51_N25
\u8_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(7));

-- Location: LCCOMB_X46_Y51_N18
\u8_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~16_combout\ = (\u8_2|conteo\(8) & (\u8_2|Add0~15\ $ (GND))) # (!\u8_2|conteo\(8) & (!\u8_2|Add0~15\ & VCC))
-- \u8_2|Add0~17\ = CARRY((\u8_2|conteo\(8) & !\u8_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(8),
	datad => VCC,
	cin => \u8_2|Add0~15\,
	combout => \u8_2|Add0~16_combout\,
	cout => \u8_2|Add0~17\);

-- Location: LCCOMB_X47_Y51_N2
\u8_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~1_combout\ = (!\u8_2|Equal0~2_combout\ & \u8_2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|Equal0~2_combout\,
	datad => \u8_2|Add0~16_combout\,
	combout => \u8_2|conteo~1_combout\);

-- Location: FF_X47_Y51_N3
\u8_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(8));

-- Location: LCCOMB_X46_Y51_N20
\u8_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~18_combout\ = \u8_2|Add0~17\ $ (\u8_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u8_2|conteo\(9),
	cin => \u8_2|Add0~17\,
	combout => \u8_2|Add0~18_combout\);

-- Location: LCCOMB_X46_Y51_N26
\u8_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~2_combout\ = (!\u8_2|Equal0~2_combout\ & \u8_2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|Equal0~2_combout\,
	datad => \u8_2|Add0~18_combout\,
	combout => \u8_2|conteo~2_combout\);

-- Location: FF_X46_Y51_N27
\u8_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(9));

-- Location: LCCOMB_X46_Y51_N2
\u8_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~0_combout\ = \u8_2|conteo\(0) $ (VCC)
-- \u8_2|Add0~1\ = CARRY(\u8_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(0),
	datad => VCC,
	combout => \u8_2|Add0~0_combout\,
	cout => \u8_2|Add0~1\);

-- Location: LCCOMB_X46_Y51_N22
\u8_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~6_combout\ = (\u8_2|Add0~0_combout\ & !\u8_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|Add0~0_combout\,
	datad => \u8_2|Equal0~2_combout\,
	combout => \u8_2|conteo~6_combout\);

-- Location: FF_X46_Y51_N23
\u8_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(0));

-- Location: LCCOMB_X46_Y51_N4
\u8_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~2_combout\ = (\u8_2|conteo\(1) & (!\u8_2|Add0~1\)) # (!\u8_2|conteo\(1) & ((\u8_2|Add0~1\) # (GND)))
-- \u8_2|Add0~3\ = CARRY((!\u8_2|Add0~1\) # (!\u8_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(1),
	datad => VCC,
	cin => \u8_2|Add0~1\,
	combout => \u8_2|Add0~2_combout\,
	cout => \u8_2|Add0~3\);

-- Location: FF_X46_Y51_N5
\u8_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(1));

-- Location: LCCOMB_X47_Y51_N30
\u8_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Equal0~1_combout\ = (!\u8_2|conteo\(0) & (\u8_2|conteo\(7) & (!\u8_2|conteo\(1) & \u8_2|conteo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(0),
	datab => \u8_2|conteo\(7),
	datac => \u8_2|conteo\(1),
	datad => \u8_2|conteo\(6),
	combout => \u8_2|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y51_N6
\u8_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~4_combout\ = (\u8_2|conteo\(2) & (\u8_2|Add0~3\ $ (GND))) # (!\u8_2|conteo\(2) & (!\u8_2|Add0~3\ & VCC))
-- \u8_2|Add0~5\ = CARRY((\u8_2|conteo\(2) & !\u8_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(2),
	datad => VCC,
	cin => \u8_2|Add0~3\,
	combout => \u8_2|Add0~4_combout\,
	cout => \u8_2|Add0~5\);

-- Location: FF_X46_Y51_N7
\u8_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(2));

-- Location: LCCOMB_X46_Y51_N8
\u8_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~6_combout\ = (\u8_2|conteo\(3) & (!\u8_2|Add0~5\)) # (!\u8_2|conteo\(3) & ((\u8_2|Add0~5\) # (GND)))
-- \u8_2|Add0~7\ = CARRY((!\u8_2|Add0~5\) # (!\u8_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(3),
	datad => VCC,
	cin => \u8_2|Add0~5\,
	combout => \u8_2|Add0~6_combout\,
	cout => \u8_2|Add0~7\);

-- Location: LCCOMB_X46_Y51_N0
\u8_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~5_combout\ = (\u8_2|Add0~6_combout\ & !\u8_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8_2|Add0~6_combout\,
	datad => \u8_2|Equal0~2_combout\,
	combout => \u8_2|conteo~5_combout\);

-- Location: FF_X46_Y51_N1
\u8_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(3));

-- Location: LCCOMB_X46_Y51_N10
\u8_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~8_combout\ = (\u8_2|conteo\(4) & (\u8_2|Add0~7\ $ (GND))) # (!\u8_2|conteo\(4) & (!\u8_2|Add0~7\ & VCC))
-- \u8_2|Add0~9\ = CARRY((\u8_2|conteo\(4) & !\u8_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(4),
	datad => VCC,
	cin => \u8_2|Add0~7\,
	combout => \u8_2|Add0~8_combout\,
	cout => \u8_2|Add0~9\);

-- Location: FF_X46_Y51_N11
\u8_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(4));

-- Location: LCCOMB_X47_Y51_N0
\u8_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Equal0~0_combout\ = (!\u8_2|conteo\(4) & (!\u8_2|conteo\(2) & (\u8_2|conteo\(3) & \u8_2|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(4),
	datab => \u8_2|conteo\(2),
	datac => \u8_2|conteo\(3),
	datad => \u8_2|conteo\(5),
	combout => \u8_2|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y51_N24
\u8_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Equal0~2_combout\ = (\u8_2|conteo\(9) & (\u8_2|conteo\(8) & (\u8_2|Equal0~1_combout\ & \u8_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(9),
	datab => \u8_2|conteo\(8),
	datac => \u8_2|Equal0~1_combout\,
	datad => \u8_2|Equal0~0_combout\,
	combout => \u8_2|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y51_N12
\u8_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|Add0~10_combout\ = (\u8_2|conteo\(5) & (!\u8_2|Add0~9\)) # (!\u8_2|conteo\(5) & ((\u8_2|Add0~9\) # (GND)))
-- \u8_2|Add0~11\ = CARRY((!\u8_2|Add0~9\) # (!\u8_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(5),
	datad => VCC,
	cin => \u8_2|Add0~9\,
	combout => \u8_2|Add0~10_combout\,
	cout => \u8_2|Add0~11\);

-- Location: LCCOMB_X46_Y51_N30
\u8_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~4_combout\ = (!\u8_2|Equal0~2_combout\ & \u8_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|Equal0~2_combout\,
	datad => \u8_2|Add0~10_combout\,
	combout => \u8_2|conteo~4_combout\);

-- Location: FF_X46_Y51_N31
\u8_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(5));

-- Location: LCCOMB_X46_Y51_N28
\u8_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|conteo~3_combout\ = (\u8_2|Add0~12_combout\ & !\u8_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8_2|Add0~12_combout\,
	datad => \u8_2|Equal0~2_combout\,
	combout => \u8_2|conteo~3_combout\);

-- Location: FF_X46_Y51_N29
\u8_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|conteo\(6));

-- Location: LCCOMB_X47_Y51_N26
\u8_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|LessThan0~1_combout\ = (\u8_2|conteo\(4)) # ((\u8_2|conteo\(5)) # ((\u8_2|conteo\(2) & \u8_2|conteo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8_2|conteo\(4),
	datab => \u8_2|conteo\(2),
	datac => \u8_2|conteo\(3),
	datad => \u8_2|conteo\(5),
	combout => \u8_2|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y51_N28
\u8_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|LessThan0~0_combout\ = (\u8_2|conteo\(7)) # ((\u8_2|conteo\(9)) # (\u8_2|conteo\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(7),
	datac => \u8_2|conteo\(9),
	datad => \u8_2|conteo\(8),
	combout => \u8_2|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y51_N20
\u8_2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8_2|LessThan0~2_combout\ = (!\u8_2|LessThan0~0_combout\ & ((!\u8_2|LessThan0~1_combout\) # (!\u8_2|conteo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8_2|conteo\(6),
	datac => \u8_2|LessThan0~1_combout\,
	datad => \u8_2|LessThan0~0_combout\,
	combout => \u8_2|LessThan0~2_combout\);

-- Location: FF_X47_Y51_N21
\u8_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u8_1|clkl~clkctrl_outclk\,
	d => \u8_2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8_2|snl~q\);

-- Location: LCCOMB_X46_Y38_N14
\u9_1|clkl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_1|clkl~0_combout\ = !\u9_1|clkl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9_1|clkl~q\,
	combout => \u9_1|clkl~0_combout\);

-- Location: FF_X46_Y38_N23
\u9_1|clkl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9_1|clkl~0_combout\,
	sload => VCC,
	ena => \u1_1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_1|clkl~q\);

-- Location: CLKCTRL_G14
\u9_1|clkl~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u9_1|clkl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u9_1|clkl~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y52_N0
\u9_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~0_combout\ = \u9_2|conteo\(0) $ (VCC)
-- \u9_2|Add0~1\ = CARRY(\u9_2|conteo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(0),
	datad => VCC,
	combout => \u9_2|Add0~0_combout\,
	cout => \u9_2|Add0~1\);

-- Location: LCCOMB_X63_Y52_N16
\u9_2|conteo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~5_combout\ = (\u9_2|Add0~0_combout\ & !\u9_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9_2|Add0~0_combout\,
	datad => \u9_2|Equal0~2_combout\,
	combout => \u9_2|conteo~5_combout\);

-- Location: FF_X64_Y52_N19
\u9_2|conteo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	asdata => \u9_2|conteo~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(0));

-- Location: LCCOMB_X64_Y52_N2
\u9_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~2_combout\ = (\u9_2|conteo\(1) & (!\u9_2|Add0~1\)) # (!\u9_2|conteo\(1) & ((\u9_2|Add0~1\) # (GND)))
-- \u9_2|Add0~3\ = CARRY((!\u9_2|Add0~1\) # (!\u9_2|conteo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(1),
	datad => VCC,
	cin => \u9_2|Add0~1\,
	combout => \u9_2|Add0~2_combout\,
	cout => \u9_2|Add0~3\);

-- Location: FF_X64_Y52_N3
\u9_2|conteo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(1));

-- Location: LCCOMB_X64_Y52_N4
\u9_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~4_combout\ = (\u9_2|conteo\(2) & (\u9_2|Add0~3\ $ (GND))) # (!\u9_2|conteo\(2) & (!\u9_2|Add0~3\ & VCC))
-- \u9_2|Add0~5\ = CARRY((\u9_2|conteo\(2) & !\u9_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(2),
	datad => VCC,
	cin => \u9_2|Add0~3\,
	combout => \u9_2|Add0~4_combout\,
	cout => \u9_2|Add0~5\);

-- Location: FF_X64_Y52_N5
\u9_2|conteo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(2));

-- Location: LCCOMB_X64_Y52_N6
\u9_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~6_combout\ = (\u9_2|conteo\(3) & (!\u9_2|Add0~5\)) # (!\u9_2|conteo\(3) & ((\u9_2|Add0~5\) # (GND)))
-- \u9_2|Add0~7\ = CARRY((!\u9_2|Add0~5\) # (!\u9_2|conteo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(3),
	datad => VCC,
	cin => \u9_2|Add0~5\,
	combout => \u9_2|Add0~6_combout\,
	cout => \u9_2|Add0~7\);

-- Location: LCCOMB_X64_Y52_N30
\u9_2|conteo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~4_combout\ = (!\u9_2|Equal0~2_combout\ & \u9_2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|Equal0~2_combout\,
	datad => \u9_2|Add0~6_combout\,
	combout => \u9_2|conteo~4_combout\);

-- Location: FF_X64_Y52_N31
\u9_2|conteo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(3));

-- Location: LCCOMB_X64_Y52_N8
\u9_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~8_combout\ = (\u9_2|conteo\(4) & (\u9_2|Add0~7\ $ (GND))) # (!\u9_2|conteo\(4) & (!\u9_2|Add0~7\ & VCC))
-- \u9_2|Add0~9\ = CARRY((\u9_2|conteo\(4) & !\u9_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(4),
	datad => VCC,
	cin => \u9_2|Add0~7\,
	combout => \u9_2|Add0~8_combout\,
	cout => \u9_2|Add0~9\);

-- Location: FF_X64_Y52_N9
\u9_2|conteo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(4));

-- Location: LCCOMB_X64_Y52_N10
\u9_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~10_combout\ = (\u9_2|conteo\(5) & (!\u9_2|Add0~9\)) # (!\u9_2|conteo\(5) & ((\u9_2|Add0~9\) # (GND)))
-- \u9_2|Add0~11\ = CARRY((!\u9_2|Add0~9\) # (!\u9_2|conteo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(5),
	datad => VCC,
	cin => \u9_2|Add0~9\,
	combout => \u9_2|Add0~10_combout\,
	cout => \u9_2|Add0~11\);

-- Location: LCCOMB_X64_Y52_N12
\u9_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~12_combout\ = (\u9_2|conteo\(6) & (\u9_2|Add0~11\ $ (GND))) # (!\u9_2|conteo\(6) & (!\u9_2|Add0~11\ & VCC))
-- \u9_2|Add0~13\ = CARRY((\u9_2|conteo\(6) & !\u9_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(6),
	datad => VCC,
	cin => \u9_2|Add0~11\,
	combout => \u9_2|Add0~12_combout\,
	cout => \u9_2|Add0~13\);

-- Location: LCCOMB_X63_Y52_N6
\u9_2|conteo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~0_combout\ = (\u9_2|Add0~12_combout\ & !\u9_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9_2|Add0~12_combout\,
	datad => \u9_2|Equal0~2_combout\,
	combout => \u9_2|conteo~0_combout\);

-- Location: FF_X63_Y52_N7
\u9_2|conteo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(6));

-- Location: LCCOMB_X64_Y52_N14
\u9_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~14_combout\ = (\u9_2|conteo\(7) & (!\u9_2|Add0~13\)) # (!\u9_2|conteo\(7) & ((\u9_2|Add0~13\) # (GND)))
-- \u9_2|Add0~15\ = CARRY((!\u9_2|Add0~13\) # (!\u9_2|conteo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|conteo\(7),
	datad => VCC,
	cin => \u9_2|Add0~13\,
	combout => \u9_2|Add0~14_combout\,
	cout => \u9_2|Add0~15\);

-- Location: LCCOMB_X64_Y52_N20
\u9_2|conteo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~1_combout\ = (\u9_2|Add0~14_combout\ & !\u9_2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9_2|Add0~14_combout\,
	datad => \u9_2|Equal0~2_combout\,
	combout => \u9_2|conteo~1_combout\);

-- Location: FF_X64_Y52_N21
\u9_2|conteo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(7));

-- Location: LCCOMB_X64_Y52_N16
\u9_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~16_combout\ = (\u9_2|conteo\(8) & (\u9_2|Add0~15\ $ (GND))) # (!\u9_2|conteo\(8) & (!\u9_2|Add0~15\ & VCC))
-- \u9_2|Add0~17\ = CARRY((\u9_2|conteo\(8) & !\u9_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(8),
	datad => VCC,
	cin => \u9_2|Add0~15\,
	combout => \u9_2|Add0~16_combout\,
	cout => \u9_2|Add0~17\);

-- Location: LCCOMB_X64_Y52_N26
\u9_2|conteo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~2_combout\ = (!\u9_2|Equal0~2_combout\ & \u9_2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|Equal0~2_combout\,
	datad => \u9_2|Add0~16_combout\,
	combout => \u9_2|conteo~2_combout\);

-- Location: FF_X64_Y52_N27
\u9_2|conteo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(8));

-- Location: LCCOMB_X64_Y52_N18
\u9_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Add0~18_combout\ = \u9_2|Add0~17\ $ (\u9_2|conteo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u9_2|conteo\(9),
	cin => \u9_2|Add0~17\,
	combout => \u9_2|Add0~18_combout\);

-- Location: LCCOMB_X64_Y52_N28
\u9_2|conteo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~3_combout\ = (!\u9_2|Equal0~2_combout\ & \u9_2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|Equal0~2_combout\,
	datac => \u9_2|Add0~18_combout\,
	combout => \u9_2|conteo~3_combout\);

-- Location: FF_X64_Y52_N29
\u9_2|conteo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(9));

-- Location: LCCOMB_X63_Y52_N4
\u9_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Equal0~1_combout\ = (!\u9_2|conteo\(1) & (\u9_2|conteo\(6) & (\u9_2|conteo\(7) & !\u9_2|conteo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(1),
	datab => \u9_2|conteo\(6),
	datac => \u9_2|conteo\(7),
	datad => \u9_2|conteo\(0),
	combout => \u9_2|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y52_N22
\u9_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Equal0~0_combout\ = (\u9_2|conteo\(3) & (!\u9_2|conteo\(2) & (!\u9_2|conteo\(4) & \u9_2|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(3),
	datab => \u9_2|conteo\(2),
	datac => \u9_2|conteo\(4),
	datad => \u9_2|conteo\(5),
	combout => \u9_2|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y52_N18
\u9_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|Equal0~2_combout\ = (\u9_2|conteo\(9) & (\u9_2|conteo\(8) & (\u9_2|Equal0~1_combout\ & \u9_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(9),
	datab => \u9_2|conteo\(8),
	datac => \u9_2|Equal0~1_combout\,
	datad => \u9_2|Equal0~0_combout\,
	combout => \u9_2|Equal0~2_combout\);

-- Location: LCCOMB_X64_Y52_N24
\u9_2|conteo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|conteo~6_combout\ = (!\u9_2|Equal0~2_combout\ & \u9_2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9_2|Equal0~2_combout\,
	datad => \u9_2|Add0~10_combout\,
	combout => \u9_2|conteo~6_combout\);

-- Location: FF_X64_Y52_N25
\u9_2|conteo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|conteo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|conteo\(5));

-- Location: LCCOMB_X63_Y52_N22
\u9_2|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|LessThan0~1_combout\ = (\u9_2|conteo\(2)) # ((\u9_2|conteo\(3)) # ((\u9_2|conteo\(0) & \u9_2|conteo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(2),
	datab => \u9_2|conteo\(0),
	datac => \u9_2|conteo\(3),
	datad => \u9_2|conteo\(1),
	combout => \u9_2|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y52_N28
\u9_2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|LessThan0~0_combout\ = (\u9_2|conteo\(6)) # ((\u9_2|conteo\(9)) # ((\u9_2|conteo\(7)) # (\u9_2|conteo\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(6),
	datab => \u9_2|conteo\(9),
	datac => \u9_2|conteo\(7),
	datad => \u9_2|conteo\(8),
	combout => \u9_2|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y52_N12
\u9_2|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u9_2|LessThan0~2_combout\ = (!\u9_2|LessThan0~0_combout\ & (((!\u9_2|LessThan0~1_combout\) # (!\u9_2|conteo\(4))) # (!\u9_2|conteo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9_2|conteo\(5),
	datab => \u9_2|conteo\(4),
	datac => \u9_2|LessThan0~1_combout\,
	datad => \u9_2|LessThan0~0_combout\,
	combout => \u9_2|LessThan0~2_combout\);

-- Location: FF_X63_Y52_N13
\u9_2|snl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u9_1|clkl~clkctrl_outclk\,
	d => \u9_2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9_2|snl~q\);

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

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(8) <= \led[8]~output_o\;
END structure;


