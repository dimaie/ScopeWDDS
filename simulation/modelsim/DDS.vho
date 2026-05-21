-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 216 11/23/2011 Service Pack 1 SJ Full Version"

-- DATE "05/20/2026 17:46:47"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FX2_DDS IS
    PORT (
	FX2_SLRD : OUT std_logic;
	FX2_SLWR : OUT std_logic;
	FX2_PA_2 : OUT std_logic;
	FX2_PA_3 : OUT std_logic;
	FX2_PA_4 : OUT std_logic;
	FX2_PA_5 : OUT std_logic;
	FX2_PA_6 : OUT std_logic;
	DAC_clk_out : OUT std_logic;
	DAC_data_out_1 : OUT std_logic_vector(9 DOWNTO 0);
	DAC_data_out_2 : OUT std_logic_vector(9 DOWNTO 0);
	FX2_CLK : IN std_logic;
	FX2_FD : INOUT std_logic_vector(7 DOWNTO 0);
	FX2_flags : IN std_logic_vector(2 DOWNTO 0);
	FX2_PA_7 : IN std_logic;
	DAC_clk_in : IN std_logic
	);
END FX2_DDS;

-- Design Ports Information
-- FX2_FD[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[1]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[3]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[4]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[5]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[6]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_FD[7]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_SLRD	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_SLWR	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_flags[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FX2_flags[2]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FX2_PA_2	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_PA_3	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_PA_4	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_PA_5	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_PA_6	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FX2_PA_7	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DAC_clk_out	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[1]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[2]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[3]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[4]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[6]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[7]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[8]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_1[9]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[2]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[4]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[5]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[6]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[7]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[8]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_data_out_2[9]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DAC_clk_in	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FX2_CLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FX2_flags[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FX2_DDS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FX2_SLRD : std_logic;
SIGNAL ww_FX2_SLWR : std_logic;
SIGNAL ww_FX2_PA_2 : std_logic;
SIGNAL ww_FX2_PA_3 : std_logic;
SIGNAL ww_FX2_PA_4 : std_logic;
SIGNAL ww_FX2_PA_5 : std_logic;
SIGNAL ww_FX2_PA_6 : std_logic;
SIGNAL ww_DAC_clk_out : std_logic;
SIGNAL ww_DAC_data_out_1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DAC_data_out_2 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FX2_CLK : std_logic;
SIGNAL ww_FX2_flags : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_FX2_PA_7 : std_logic;
SIGNAL ww_DAC_clk_in : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \FX2_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DAC_clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \dds_core1|Add1~12_combout\ : std_logic;
SIGNAL \dds_core2|Add1~8_combout\ : std_logic;
SIGNAL \dds_core2|Add1~12_combout\ : std_logic;
SIGNAL \dds_core1|acc[3]~38_combout\ : std_logic;
SIGNAL \dds_core1|acc[4]~40_combout\ : std_logic;
SIGNAL \dds_core1|acc[5]~42_combout\ : std_logic;
SIGNAL \dds_core1|acc[6]~44_combout\ : std_logic;
SIGNAL \dds_core1|acc[8]~48_combout\ : std_logic;
SIGNAL \dds_core1|acc[9]~50_combout\ : std_logic;
SIGNAL \dds_core1|acc[10]~52_combout\ : std_logic;
SIGNAL \dds_core1|acc[12]~56_combout\ : std_logic;
SIGNAL \dds_core1|acc[21]~74_combout\ : std_logic;
SIGNAL \dds_core2|acc[3]~38_combout\ : std_logic;
SIGNAL \dds_core2|acc[5]~42_combout\ : std_logic;
SIGNAL \dds_core2|acc[6]~44_combout\ : std_logic;
SIGNAL \dds_core2|acc[8]~48_combout\ : std_logic;
SIGNAL \dds_core2|acc[10]~52_combout\ : std_logic;
SIGNAL \dds_core2|acc[12]~56_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|sine2|Add0~2_combout\ : std_logic;
SIGNAL \FX2_CLK~combout\ : std_logic;
SIGNAL \FX2_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \DDS2_acc_inc[20]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[17]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[17]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[16]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[16]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[15]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[7]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[13]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[11]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[2]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[9]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[1]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[0]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[4]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[2]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[2]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[1]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[1]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[0]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[0]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[30]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[30]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[23]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[15]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[22]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[22]~feeder_combout\ : std_logic;
SIGNAL \FX2_FD[0]~0\ : std_logic;
SIGNAL \FX2_FD[1]~1\ : std_logic;
SIGNAL \FX2_FD[2]~2\ : std_logic;
SIGNAL \FX2_FD[3]~3\ : std_logic;
SIGNAL \FX2_FD[4]~4\ : std_logic;
SIGNAL \FX2_FD[5]~5\ : std_logic;
SIGNAL \FX2_FD[6]~6\ : std_logic;
SIGNAL \FX2_FD[7]~7\ : std_logic;
SIGNAL \DAC_clk_in~combout\ : std_logic;
SIGNAL \DAC_clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FIFO_value[28]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[28]~feeder_combout\ : std_logic;
SIGNAL \timeout[1]~1_combout\ : std_logic;
SIGNAL \timeout[0]~0_combout\ : std_logic;
SIGNAL \timeout[2]~2_combout\ : std_logic;
SIGNAL \timeout[2]~3_combout\ : std_logic;
SIGNAL \timeout[3]~4_combout\ : std_logic;
SIGNAL \timeout[3]~5_combout\ : std_logic;
SIGNAL \timeout_complete~0_combout\ : std_logic;
SIGNAL \fcdnai|FlagToggle_clkA~0_combout\ : std_logic;
SIGNAL \fcdnai|FlagToggle_clkA~regout\ : std_logic;
SIGNAL \fcdnai|SyncA_clkB[0]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[31]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[30]~0_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[26]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[24]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[29]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[21]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[20]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[20]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[27]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[19]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[19]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[13]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[12]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[12]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[18]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[10]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[25]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[17]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[9]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[9]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[16]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[8]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[8]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[22]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[14]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[6]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[5]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[4]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[4]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[11]~feeder_combout\ : std_logic;
SIGNAL \FIFO_value[3]~feeder_combout\ : std_logic;
SIGNAL \DDS1_acc_inc[3]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc[0]~32_combout\ : std_logic;
SIGNAL \dds_core1|acc[0]~33\ : std_logic;
SIGNAL \dds_core1|acc[1]~34_combout\ : std_logic;
SIGNAL \dds_core1|acc[1]~35\ : std_logic;
SIGNAL \dds_core1|acc[2]~36_combout\ : std_logic;
SIGNAL \dds_core1|acc[2]~37\ : std_logic;
SIGNAL \dds_core1|acc[3]~39\ : std_logic;
SIGNAL \dds_core1|acc[4]~41\ : std_logic;
SIGNAL \dds_core1|acc[5]~43\ : std_logic;
SIGNAL \dds_core1|acc[6]~45\ : std_logic;
SIGNAL \dds_core1|acc[7]~46_combout\ : std_logic;
SIGNAL \dds_core1|acc[7]~47\ : std_logic;
SIGNAL \dds_core1|acc[8]~49\ : std_logic;
SIGNAL \dds_core1|acc[9]~51\ : std_logic;
SIGNAL \dds_core1|acc[10]~53\ : std_logic;
SIGNAL \dds_core1|acc[11]~54_combout\ : std_logic;
SIGNAL \dds_core1|acc[11]~55\ : std_logic;
SIGNAL \dds_core1|acc[12]~57\ : std_logic;
SIGNAL \dds_core1|acc[13]~59\ : std_logic;
SIGNAL \dds_core1|acc[14]~60_combout\ : std_logic;
SIGNAL \dds_core1|acc[14]~61\ : std_logic;
SIGNAL \dds_core1|acc[15]~62_combout\ : std_logic;
SIGNAL \dds_core1|acc[15]~63\ : std_logic;
SIGNAL \dds_core1|acc[16]~64_combout\ : std_logic;
SIGNAL \dds_core1|acc[16]~65\ : std_logic;
SIGNAL \dds_core1|acc[17]~66_combout\ : std_logic;
SIGNAL \dds_core1|acc[17]~67\ : std_logic;
SIGNAL \dds_core1|acc[18]~68_combout\ : std_logic;
SIGNAL \dds_core1|acc[18]~69\ : std_logic;
SIGNAL \dds_core1|acc[19]~71\ : std_logic;
SIGNAL \dds_core1|acc[20]~73\ : std_logic;
SIGNAL \dds_core1|acc[21]~75\ : std_logic;
SIGNAL \dds_core1|acc[22]~76_combout\ : std_logic;
SIGNAL \dds_core1|acc[22]~77\ : std_logic;
SIGNAL \dds_core1|acc[23]~78_combout\ : std_logic;
SIGNAL \dds_core1|acc[23]~79\ : std_logic;
SIGNAL \dds_core1|acc[24]~81\ : std_logic;
SIGNAL \dds_core1|acc[25]~82_combout\ : std_logic;
SIGNAL \dds_core1|acc[25]~83\ : std_logic;
SIGNAL \dds_core1|acc[26]~85\ : std_logic;
SIGNAL \dds_core1|acc[27]~86_combout\ : std_logic;
SIGNAL \dds_core1|acc[27]~87\ : std_logic;
SIGNAL \dds_core1|acc[28]~89\ : std_logic;
SIGNAL \dds_core1|acc[29]~90_combout\ : std_logic;
SIGNAL \dds_core1|acc[29]~91\ : std_logic;
SIGNAL \dds_core1|acc[30]~92_combout\ : std_logic;
SIGNAL \dds_core1|acc[30]~93\ : std_logic;
SIGNAL \dds_core1|acc[31]~94_combout\ : std_logic;
SIGNAL \dds_core1|acc[28]~88_combout\ : std_logic;
SIGNAL \dds_core1|Add1~1\ : std_logic;
SIGNAL \dds_core1|Add1~3\ : std_logic;
SIGNAL \dds_core1|Add1~5\ : std_logic;
SIGNAL \dds_core1|Add1~7\ : std_logic;
SIGNAL \dds_core1|Add1~9\ : std_logic;
SIGNAL \dds_core1|Add1~11\ : std_logic;
SIGNAL \dds_core1|Add1~13\ : std_logic;
SIGNAL \dds_core1|Add1~15\ : std_logic;
SIGNAL \dds_core1|Add1~17\ : std_logic;
SIGNAL \dds_core1|Add1~19\ : std_logic;
SIGNAL \dds_core1|Add1~20_combout\ : std_logic;
SIGNAL \dds_core1|Add1~18_combout\ : std_logic;
SIGNAL \dds_core1|Add1~0_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~0_combout\ : std_logic;
SIGNAL \dds_core1|Add1~2_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~1_combout\ : std_logic;
SIGNAL \dds_core1|Add1~4_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~2_combout\ : std_logic;
SIGNAL \dds_core1|Add1~6_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~3_combout\ : std_logic;
SIGNAL \dds_core1|Add1~8_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~4_combout\ : std_logic;
SIGNAL \dds_core1|Add1~10_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~5_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~6_combout\ : std_logic;
SIGNAL \dds_core1|Add1~14_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~7_combout\ : std_logic;
SIGNAL \dds_core1|Add1~16_combout\ : std_logic;
SIGNAL \dds_core1|sine2|comb~8_combout\ : std_logic;
SIGNAL \dds_core1|sine2|Add0~2_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[0]~16_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[0]~17\ : std_logic;
SIGNAL \dds_core1|sine2|value[1]~18_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[1]~19\ : std_logic;
SIGNAL \dds_core1|sine2|value[2]~20_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[2]~21\ : std_logic;
SIGNAL \dds_core1|sine2|value[3]~22_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[3]~23\ : std_logic;
SIGNAL \dds_core1|sine2|value[4]~24_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[4]~25\ : std_logic;
SIGNAL \dds_core1|sine2|value[5]~26_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[5]~27\ : std_logic;
SIGNAL \dds_core1|sine2|value[6]~28_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[6]~29\ : std_logic;
SIGNAL \dds_core1|sine2|value[7]~30_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[7]~31\ : std_logic;
SIGNAL \dds_core1|sine2|value[8]~32_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[8]~33\ : std_logic;
SIGNAL \dds_core1|sine2|value[9]~34_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[9]~35\ : std_logic;
SIGNAL \dds_core1|sine2|value[10]~36_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[10]~37\ : std_logic;
SIGNAL \dds_core1|sine2|value[11]~38_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[11]~39\ : std_logic;
SIGNAL \dds_core1|sine2|value[12]~40_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[12]~41\ : std_logic;
SIGNAL \dds_core1|sine2|value[13]~42_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[13]~43\ : std_logic;
SIGNAL \dds_core1|sine2|value[14]~44_combout\ : std_logic;
SIGNAL \dds_core1|sine2|value[14]~45\ : std_logic;
SIGNAL \dds_core1|sine2|value[15]~46_combout\ : std_logic;
SIGNAL \dds_core1|acc[13]~58_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[0]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[1]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayB[1]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[2]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayB[2]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[3]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[4]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayB[5]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc[19]~70_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayB[6]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|acc[20]~72_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayA[7]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \dds_core1|sine1|comb~0_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~1_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~2_combout\ : std_logic;
SIGNAL \dds_core1|acc[24]~80_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~3_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~4_combout\ : std_logic;
SIGNAL \dds_core1|acc[26]~84_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~5_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~6_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~7_combout\ : std_logic;
SIGNAL \dds_core1|sine1|comb~8_combout\ : std_logic;
SIGNAL \dds_core1|sine1|addr_MSBdelay[1]~feeder_combout\ : std_logic;
SIGNAL \dds_core1|sine1|Add0~2_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[0]~16_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[0]~17\ : std_logic;
SIGNAL \dds_core1|sine1|value[1]~18_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[1]~19\ : std_logic;
SIGNAL \dds_core1|sine1|value[2]~20_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[2]~21\ : std_logic;
SIGNAL \dds_core1|sine1|value[3]~22_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[3]~23\ : std_logic;
SIGNAL \dds_core1|sine1|value[4]~24_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[4]~25\ : std_logic;
SIGNAL \dds_core1|sine1|value[5]~26_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[5]~27\ : std_logic;
SIGNAL \dds_core1|sine1|value[6]~28_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[6]~29\ : std_logic;
SIGNAL \dds_core1|sine1|value[7]~30_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[7]~31\ : std_logic;
SIGNAL \dds_core1|sine1|value[8]~32_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[8]~33\ : std_logic;
SIGNAL \dds_core1|sine1|value[9]~34_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[9]~35\ : std_logic;
SIGNAL \dds_core1|sine1|value[10]~36_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[10]~37\ : std_logic;
SIGNAL \dds_core1|sine1|value[11]~38_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[11]~39\ : std_logic;
SIGNAL \dds_core1|sine1|value[12]~40_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[12]~41\ : std_logic;
SIGNAL \dds_core1|sine1|value[13]~42_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[13]~43\ : std_logic;
SIGNAL \dds_core1|sine1|value[14]~44_combout\ : std_logic;
SIGNAL \dds_core1|sine1|value[14]~45\ : std_logic;
SIGNAL \dds_core1|sine1|value[15]~46_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|Add2~1_cout\ : std_logic;
SIGNAL \dds_core1|Add2~2_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|Add2~3\ : std_logic;
SIGNAL \dds_core1|Add2~4_combout\ : std_logic;
SIGNAL \dds_core1|Add2~5\ : std_logic;
SIGNAL \dds_core1|Add2~6_combout\ : std_logic;
SIGNAL \dds_core1|Add2~7\ : std_logic;
SIGNAL \dds_core1|Add2~8_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|Add2~9\ : std_logic;
SIGNAL \dds_core1|Add2~10_combout\ : std_logic;
SIGNAL \dds_core1|Add2~11\ : std_logic;
SIGNAL \dds_core1|Add2~12_combout\ : std_logic;
SIGNAL \dds_core1|acc_delayC[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core1|Add2~13\ : std_logic;
SIGNAL \dds_core1|Add2~14_combout\ : std_logic;
SIGNAL \dds_core1|Add2~15\ : std_logic;
SIGNAL \dds_core1|Add2~16_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~11_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~13_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~15_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~17_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~19_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~21_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~23_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~25_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~27_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~29_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~31_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~33_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~35_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~37_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~39_cout\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~40_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \dds_core1|sine_p[15]~41\ : std_logic;
SIGNAL \dds_core1|sine_p[16]~42_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \dds_core1|sine_p[16]~43\ : std_logic;
SIGNAL \dds_core1|sine_p[17]~44_combout\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \dds_core1|sine_p[17]~45\ : std_logic;
SIGNAL \dds_core1|sine_p[18]~46_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \dds_core1|sine_p[18]~47\ : std_logic;
SIGNAL \dds_core1|sine_p[19]~48_combout\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \dds_core1|sine_p[19]~49\ : std_logic;
SIGNAL \dds_core1|sine_p[20]~50_combout\ : std_logic;
SIGNAL \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \dds_core1|sine_p[20]~51\ : std_logic;
SIGNAL \dds_core1|sine_p[21]~52_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \dds_core1|sine_p[21]~53\ : std_logic;
SIGNAL \dds_core1|sine_p[22]~54_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \dds_core1|sine_p[22]~55\ : std_logic;
SIGNAL \dds_core1|sine_p[23]~56_combout\ : std_logic;
SIGNAL \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \dds_core1|sine_p[23]~57\ : std_logic;
SIGNAL \dds_core1|sine_p[24]~58_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[28]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[30]~0_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[26]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[24]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[12]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[10]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[8]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[5]~feeder_combout\ : std_logic;
SIGNAL \DDS2_acc_inc[3]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc[0]~32_combout\ : std_logic;
SIGNAL \dds_core2|acc[0]~33\ : std_logic;
SIGNAL \dds_core2|acc[1]~34_combout\ : std_logic;
SIGNAL \dds_core2|acc[1]~35\ : std_logic;
SIGNAL \dds_core2|acc[2]~36_combout\ : std_logic;
SIGNAL \dds_core2|acc[2]~37\ : std_logic;
SIGNAL \dds_core2|acc[3]~39\ : std_logic;
SIGNAL \dds_core2|acc[4]~40_combout\ : std_logic;
SIGNAL \dds_core2|acc[4]~41\ : std_logic;
SIGNAL \dds_core2|acc[5]~43\ : std_logic;
SIGNAL \dds_core2|acc[6]~45\ : std_logic;
SIGNAL \dds_core2|acc[7]~46_combout\ : std_logic;
SIGNAL \dds_core2|acc[7]~47\ : std_logic;
SIGNAL \dds_core2|acc[8]~49\ : std_logic;
SIGNAL \dds_core2|acc[9]~50_combout\ : std_logic;
SIGNAL \dds_core2|acc[9]~51\ : std_logic;
SIGNAL \dds_core2|acc[10]~53\ : std_logic;
SIGNAL \dds_core2|acc[11]~54_combout\ : std_logic;
SIGNAL \dds_core2|acc[11]~55\ : std_logic;
SIGNAL \dds_core2|acc[12]~57\ : std_logic;
SIGNAL \dds_core2|acc[13]~58_combout\ : std_logic;
SIGNAL \dds_core2|acc[13]~59\ : std_logic;
SIGNAL \dds_core2|acc[14]~60_combout\ : std_logic;
SIGNAL \dds_core2|acc[14]~61\ : std_logic;
SIGNAL \dds_core2|acc[15]~62_combout\ : std_logic;
SIGNAL \dds_core2|acc[15]~63\ : std_logic;
SIGNAL \dds_core2|acc[16]~64_combout\ : std_logic;
SIGNAL \dds_core2|acc[16]~65\ : std_logic;
SIGNAL \dds_core2|acc[17]~66_combout\ : std_logic;
SIGNAL \dds_core2|acc[17]~67\ : std_logic;
SIGNAL \dds_core2|acc[18]~68_combout\ : std_logic;
SIGNAL \dds_core2|acc[18]~69\ : std_logic;
SIGNAL \dds_core2|acc[19]~71\ : std_logic;
SIGNAL \dds_core2|acc[20]~72_combout\ : std_logic;
SIGNAL \dds_core2|acc[20]~73\ : std_logic;
SIGNAL \dds_core2|acc[21]~75\ : std_logic;
SIGNAL \dds_core2|acc[22]~76_combout\ : std_logic;
SIGNAL \dds_core2|acc[22]~77\ : std_logic;
SIGNAL \dds_core2|acc[23]~78_combout\ : std_logic;
SIGNAL \dds_core2|acc[23]~79\ : std_logic;
SIGNAL \dds_core2|acc[24]~81\ : std_logic;
SIGNAL \dds_core2|acc[25]~82_combout\ : std_logic;
SIGNAL \dds_core2|acc[25]~83\ : std_logic;
SIGNAL \dds_core2|acc[26]~85\ : std_logic;
SIGNAL \dds_core2|acc[27]~86_combout\ : std_logic;
SIGNAL \dds_core2|acc[27]~87\ : std_logic;
SIGNAL \dds_core2|acc[28]~89\ : std_logic;
SIGNAL \dds_core2|acc[29]~90_combout\ : std_logic;
SIGNAL \dds_core2|acc[29]~91\ : std_logic;
SIGNAL \dds_core2|acc[30]~92_combout\ : std_logic;
SIGNAL \dds_core2|acc[21]~74_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~0_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~1_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~2_combout\ : std_logic;
SIGNAL \dds_core2|acc[24]~80_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~3_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~4_combout\ : std_logic;
SIGNAL \dds_core2|acc[26]~84_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~5_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~6_combout\ : std_logic;
SIGNAL \dds_core2|acc[28]~88_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~7_combout\ : std_logic;
SIGNAL \dds_core2|sine1|comb~8_combout\ : std_logic;
SIGNAL \dds_core2|sine1|Add0~2_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[0]~16_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[0]~17\ : std_logic;
SIGNAL \dds_core2|sine1|value[1]~18_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[1]~19\ : std_logic;
SIGNAL \dds_core2|sine1|value[2]~20_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[2]~21\ : std_logic;
SIGNAL \dds_core2|sine1|value[3]~22_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[3]~23\ : std_logic;
SIGNAL \dds_core2|sine1|value[4]~24_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[4]~25\ : std_logic;
SIGNAL \dds_core2|sine1|value[5]~26_combout\ : std_logic;
SIGNAL \dds_core2|acc[30]~93\ : std_logic;
SIGNAL \dds_core2|acc[31]~94_combout\ : std_logic;
SIGNAL \dds_core2|sine1|addr_MSBdelay[1]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[5]~27\ : std_logic;
SIGNAL \dds_core2|sine1|value[6]~28_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[6]~29\ : std_logic;
SIGNAL \dds_core2|sine1|value[7]~30_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[7]~31\ : std_logic;
SIGNAL \dds_core2|sine1|value[8]~32_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[8]~33\ : std_logic;
SIGNAL \dds_core2|sine1|value[9]~34_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[9]~35\ : std_logic;
SIGNAL \dds_core2|sine1|value[10]~36_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[10]~37\ : std_logic;
SIGNAL \dds_core2|sine1|value[11]~38_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[11]~39\ : std_logic;
SIGNAL \dds_core2|sine1|value[12]~40_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[12]~41\ : std_logic;
SIGNAL \dds_core2|sine1|value[13]~42_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[13]~43\ : std_logic;
SIGNAL \dds_core2|sine1|value[14]~44_combout\ : std_logic;
SIGNAL \dds_core2|sine1|value[14]~45\ : std_logic;
SIGNAL \dds_core2|sine1|value[15]~46_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayA[0]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[1]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|Add2~1_cout\ : std_logic;
SIGNAL \dds_core2|Add2~2_combout\ : std_logic;
SIGNAL \dds_core2|Add2~3\ : std_logic;
SIGNAL \dds_core2|Add2~4_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[3]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|Add2~5\ : std_logic;
SIGNAL \dds_core2|Add2~6_combout\ : std_logic;
SIGNAL \dds_core2|Add2~7\ : std_logic;
SIGNAL \dds_core2|Add2~8_combout\ : std_logic;
SIGNAL \dds_core2|Add2~9\ : std_logic;
SIGNAL \dds_core2|Add2~10_combout\ : std_logic;
SIGNAL \dds_core2|acc[19]~70_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[6]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayC[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \dds_core2|Add2~11\ : std_logic;
SIGNAL \dds_core2|Add2~12_combout\ : std_logic;
SIGNAL \dds_core2|Add2~13\ : std_logic;
SIGNAL \dds_core2|Add2~14_combout\ : std_logic;
SIGNAL \dds_core2|Add2~15\ : std_logic;
SIGNAL \dds_core2|Add2~16_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \dds_core2|Add1~1\ : std_logic;
SIGNAL \dds_core2|Add1~3\ : std_logic;
SIGNAL \dds_core2|Add1~5\ : std_logic;
SIGNAL \dds_core2|Add1~7\ : std_logic;
SIGNAL \dds_core2|Add1~9\ : std_logic;
SIGNAL \dds_core2|Add1~11\ : std_logic;
SIGNAL \dds_core2|Add1~13\ : std_logic;
SIGNAL \dds_core2|Add1~15\ : std_logic;
SIGNAL \dds_core2|Add1~17\ : std_logic;
SIGNAL \dds_core2|Add1~19\ : std_logic;
SIGNAL \dds_core2|Add1~20_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[0]~16_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[0]~17\ : std_logic;
SIGNAL \dds_core2|sine2|value[1]~18_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[1]~19\ : std_logic;
SIGNAL \dds_core2|sine2|value[2]~20_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[2]~21\ : std_logic;
SIGNAL \dds_core2|sine2|value[3]~22_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[3]~23\ : std_logic;
SIGNAL \dds_core2|sine2|value[4]~24_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[4]~25\ : std_logic;
SIGNAL \dds_core2|sine2|value[5]~26_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[5]~27\ : std_logic;
SIGNAL \dds_core2|sine2|value[6]~28_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[6]~29\ : std_logic;
SIGNAL \dds_core2|sine2|value[7]~30_combout\ : std_logic;
SIGNAL \dds_core2|Add1~18_combout\ : std_logic;
SIGNAL \dds_core2|Add1~0_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~0_combout\ : std_logic;
SIGNAL \dds_core2|Add1~2_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~1_combout\ : std_logic;
SIGNAL \dds_core2|Add1~4_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~2_combout\ : std_logic;
SIGNAL \dds_core2|Add1~6_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~3_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~4_combout\ : std_logic;
SIGNAL \dds_core2|Add1~10_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~5_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~6_combout\ : std_logic;
SIGNAL \dds_core2|Add1~14_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~7_combout\ : std_logic;
SIGNAL \dds_core2|Add1~16_combout\ : std_logic;
SIGNAL \dds_core2|sine2|comb~8_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[7]~31\ : std_logic;
SIGNAL \dds_core2|sine2|value[8]~32_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[8]~33\ : std_logic;
SIGNAL \dds_core2|sine2|value[9]~34_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[9]~35\ : std_logic;
SIGNAL \dds_core2|sine2|value[10]~36_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[10]~37\ : std_logic;
SIGNAL \dds_core2|sine2|value[11]~38_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[11]~39\ : std_logic;
SIGNAL \dds_core2|sine2|value[12]~40_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[12]~41\ : std_logic;
SIGNAL \dds_core2|sine2|value[13]~42_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[13]~43\ : std_logic;
SIGNAL \dds_core2|sine2|value[14]~44_combout\ : std_logic;
SIGNAL \dds_core2|sine2|value[14]~45\ : std_logic;
SIGNAL \dds_core2|sine2|value[15]~46_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayA[2]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[2]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[4]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayA[5]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[5]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayA[7]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|acc_delayB[7]~feeder_combout\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~11_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~13_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~15_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~17_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~19_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~21_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~23_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~25_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~27_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~29_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~31_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~33_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~35_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~37_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~39_cout\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~40_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \dds_core2|sine_p[15]~41\ : std_logic;
SIGNAL \dds_core2|sine_p[16]~42_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \dds_core2|sine_p[16]~43\ : std_logic;
SIGNAL \dds_core2|sine_p[17]~44_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \dds_core2|sine_p[17]~45\ : std_logic;
SIGNAL \dds_core2|sine_p[18]~46_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \dds_core2|sine_p[18]~47\ : std_logic;
SIGNAL \dds_core2|sine_p[19]~48_combout\ : std_logic;
SIGNAL \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \dds_core2|sine_p[19]~49\ : std_logic;
SIGNAL \dds_core2|sine_p[20]~50_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \dds_core2|sine_p[20]~51\ : std_logic;
SIGNAL \dds_core2|sine_p[21]~52_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \dds_core2|sine_p[21]~53\ : std_logic;
SIGNAL \dds_core2|sine_p[22]~54_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \dds_core2|sine_p[22]~55\ : std_logic;
SIGNAL \dds_core2|sine_p[23]~56_combout\ : std_logic;
SIGNAL \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \dds_core2|sine_p[23]~57\ : std_logic;
SIGNAL \dds_core2|sine_p[24]~58_combout\ : std_logic;
SIGNAL \FX2_flags~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dds_core1|sine1|addr_MSBdelay\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dds_core1|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dds_core1|acc_delayA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dds_core1|acc_delayB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dds_core1|sine_p\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \fcdnai|SyncA_clkB\ : std_logic_vector(2 DOWNTO 0);
SIGNAL DDS1_acc_inc : std_logic_vector(31 DOWNTO 0);
SIGNAL DDS2_acc_inc : std_logic_vector(31 DOWNTO 0);
SIGNAL FIFO_value : std_logic_vector(31 DOWNTO 0);
SIGNAL timeout : std_logic_vector(3 DOWNTO 0);
SIGNAL \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dds_core2|sine2|addr_MSBdelay\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dds_core2|sine1|addr_MSBdelay\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dds_core2|acc_delayA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dds_core2|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dds_core2|acc_delayB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dds_core2|sine_p\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dds_core1|sine2|addr_MSBdelay\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dds_core1|sine2|ALT_INV_addr_MSBdelay\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \dds_core1|sine1|ALT_INV_addr_MSBdelay\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \dds_core2|sine2|ALT_INV_addr_MSBdelay\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \dds_core2|sine1|ALT_INV_addr_MSBdelay\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_DAC_clk_in~combout\ : std_logic;

BEGIN

FX2_SLRD <= ww_FX2_SLRD;
FX2_SLWR <= ww_FX2_SLWR;
FX2_PA_2 <= ww_FX2_PA_2;
FX2_PA_3 <= ww_FX2_PA_3;
FX2_PA_4 <= ww_FX2_PA_4;
FX2_PA_5 <= ww_FX2_PA_5;
FX2_PA_6 <= ww_FX2_PA_6;
DAC_clk_out <= ww_DAC_clk_out;
DAC_data_out_1 <= ww_DAC_data_out_1;
DAC_data_out_2 <= ww_DAC_data_out_2;
ww_FX2_CLK <= FX2_CLK;
ww_FX2_flags <= FX2_flags;
ww_FX2_PA_7 <= FX2_PA_7;
ww_DAC_clk_in <= DAC_clk_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dds_core1|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT18\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT6\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \dds_core1|Mult1|auto_generated|mac_mult1~dataout\ & \dds_core1|Mult1|auto_generated|mac_mult1~10\ & \dds_core1|Mult1|auto_generated|mac_mult1~9\ & \dds_core1|Mult1|auto_generated|mac_mult1~8\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~7\ & \dds_core1|Mult1|auto_generated|mac_mult1~6\ & \dds_core1|Mult1|auto_generated|mac_mult1~5\ & \dds_core1|Mult1|auto_generated|mac_mult1~4\ & \dds_core1|Mult1|auto_generated|mac_mult1~3\ & 
\dds_core1|Mult1|auto_generated|mac_mult1~2\ & \dds_core1|Mult1|auto_generated|mac_mult1~1\ & \dds_core1|Mult1|auto_generated|mac_mult1~0\);

\dds_core1|Mult1|auto_generated|mac_out2~0\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\dds_core1|Mult1|auto_generated|mac_out2~1\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\dds_core1|Mult1|auto_generated|mac_out2~2\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\dds_core1|Mult1|auto_generated|mac_out2~3\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\dds_core1|Mult1|auto_generated|mac_out2~4\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\dds_core1|Mult1|auto_generated|mac_out2~5\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\dds_core1|Mult1|auto_generated|mac_out2~6\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\dds_core1|Mult1|auto_generated|mac_out2~7\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\dds_core1|Mult1|auto_generated|mac_out2~8\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\dds_core1|Mult1|auto_generated|mac_out2~9\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\dds_core1|Mult1|auto_generated|mac_out2~10\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\dds_core1|Mult1|auto_generated|mac_out2~dataout\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\dds_core1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \dds_core1|Mult0|auto_generated|mac_mult1~dataout\ & \dds_core1|Mult0|auto_generated|mac_mult1~9\ & \dds_core1|Mult0|auto_generated|mac_mult1~8\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~7\ & \dds_core1|Mult0|auto_generated|mac_mult1~6\ & \dds_core1|Mult0|auto_generated|mac_mult1~5\ & \dds_core1|Mult0|auto_generated|mac_mult1~4\ & \dds_core1|Mult0|auto_generated|mac_mult1~3\ & 
\dds_core1|Mult0|auto_generated|mac_mult1~2\ & \dds_core1|Mult0|auto_generated|mac_mult1~1\ & \dds_core1|Mult0|auto_generated|mac_mult1~0\);

\dds_core1|Mult0|auto_generated|mac_out2~0\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\dds_core1|Mult0|auto_generated|mac_out2~1\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\dds_core1|Mult0|auto_generated|mac_out2~2\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\dds_core1|Mult0|auto_generated|mac_out2~3\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\dds_core1|Mult0|auto_generated|mac_out2~4\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\dds_core1|Mult0|auto_generated|mac_out2~5\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\dds_core1|Mult0|auto_generated|mac_out2~6\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\dds_core1|Mult0|auto_generated|mac_out2~7\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\dds_core1|Mult0|auto_generated|mac_out2~8\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\dds_core1|Mult0|auto_generated|mac_out2~9\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\dds_core1|Mult0|auto_generated|mac_out2~dataout\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\dds_core2|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT18\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT6\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \dds_core2|Mult1|auto_generated|mac_mult1~dataout\ & \dds_core2|Mult1|auto_generated|mac_mult1~10\ & \dds_core2|Mult1|auto_generated|mac_mult1~9\ & \dds_core2|Mult1|auto_generated|mac_mult1~8\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~7\ & \dds_core2|Mult1|auto_generated|mac_mult1~6\ & \dds_core2|Mult1|auto_generated|mac_mult1~5\ & \dds_core2|Mult1|auto_generated|mac_mult1~4\ & \dds_core2|Mult1|auto_generated|mac_mult1~3\ & 
\dds_core2|Mult1|auto_generated|mac_mult1~2\ & \dds_core2|Mult1|auto_generated|mac_mult1~1\ & \dds_core2|Mult1|auto_generated|mac_mult1~0\);

\dds_core2|Mult1|auto_generated|mac_out2~0\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\dds_core2|Mult1|auto_generated|mac_out2~1\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\dds_core2|Mult1|auto_generated|mac_out2~2\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\dds_core2|Mult1|auto_generated|mac_out2~3\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\dds_core2|Mult1|auto_generated|mac_out2~4\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\dds_core2|Mult1|auto_generated|mac_out2~5\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\dds_core2|Mult1|auto_generated|mac_out2~6\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\dds_core2|Mult1|auto_generated|mac_out2~7\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\dds_core2|Mult1|auto_generated|mac_out2~8\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\dds_core2|Mult1|auto_generated|mac_out2~9\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\dds_core2|Mult1|auto_generated|mac_out2~10\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\dds_core2|Mult1|auto_generated|mac_out2~dataout\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\dds_core2|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \dds_core2|Mult0|auto_generated|mac_mult1~dataout\ & \dds_core2|Mult0|auto_generated|mac_mult1~9\ & \dds_core2|Mult0|auto_generated|mac_mult1~8\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~7\ & \dds_core2|Mult0|auto_generated|mac_mult1~6\ & \dds_core2|Mult0|auto_generated|mac_mult1~5\ & \dds_core2|Mult0|auto_generated|mac_mult1~4\ & \dds_core2|Mult0|auto_generated|mac_mult1~3\ & 
\dds_core2|Mult0|auto_generated|mac_mult1~2\ & \dds_core2|Mult0|auto_generated|mac_mult1~1\ & \dds_core2|Mult0|auto_generated|mac_mult1~0\);

\dds_core2|Mult0|auto_generated|mac_out2~0\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\dds_core2|Mult0|auto_generated|mac_out2~1\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\dds_core2|Mult0|auto_generated|mac_out2~2\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\dds_core2|Mult0|auto_generated|mac_out2~3\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\dds_core2|Mult0|auto_generated|mac_out2~4\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\dds_core2|Mult0|auto_generated|mac_out2~5\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\dds_core2|Mult0|auto_generated|mac_out2~6\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\dds_core2|Mult0|auto_generated|mac_out2~7\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\dds_core2|Mult0|auto_generated|mac_out2~8\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\dds_core2|Mult0|auto_generated|mac_out2~9\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\dds_core2|Mult0|auto_generated|mac_out2~dataout\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\dds_core1|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \dds_core1|sine2|addr_MSBdelay\(1) & \dds_core1|sine2|value[15]~46_combout\ & \dds_core1|sine2|value[14]~44_combout\ & \dds_core1|sine2|value[13]~42_combout\ & 
\dds_core1|sine2|value[12]~40_combout\ & \dds_core1|sine2|value[11]~38_combout\ & \dds_core1|sine2|value[10]~36_combout\ & \dds_core1|sine2|value[9]~34_combout\ & \dds_core1|sine2|value[8]~32_combout\ & \dds_core1|sine2|value[7]~30_combout\ & 
\dds_core1|sine2|value[6]~28_combout\ & \dds_core1|sine2|value[5]~26_combout\ & \dds_core1|sine2|value[4]~24_combout\ & \dds_core1|sine2|value[3]~22_combout\ & \dds_core1|sine2|value[2]~20_combout\ & \dds_core1|sine2|value[1]~18_combout\ & 
\dds_core1|sine2|value[0]~16_combout\ & gnd);

\dds_core1|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\dds_core1|acc_delayB\(7) & \dds_core1|acc_delayB\(6) & \dds_core1|acc_delayB\(5) & \dds_core1|acc_delayB\(4) & \dds_core1|acc_delayB\(3) & \dds_core1|acc_delayB\(2) & 
\dds_core1|acc_delayB\(1) & \dds_core1|acc_delayB\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dds_core1|Mult1|auto_generated|mac_mult1~0\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\dds_core1|Mult1|auto_generated|mac_mult1~1\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\dds_core1|Mult1|auto_generated|mac_mult1~2\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\dds_core1|Mult1|auto_generated|mac_mult1~3\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\dds_core1|Mult1|auto_generated|mac_mult1~4\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\dds_core1|Mult1|auto_generated|mac_mult1~5\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\dds_core1|Mult1|auto_generated|mac_mult1~6\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\dds_core1|Mult1|auto_generated|mac_mult1~7\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\dds_core1|Mult1|auto_generated|mac_mult1~8\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\dds_core1|Mult1|auto_generated|mac_mult1~9\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\dds_core1|Mult1|auto_generated|mac_mult1~10\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\dds_core1|Mult1|auto_generated|mac_mult1~dataout\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\dds_core1|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\dds_core1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \dds_core1|sine1|addr_MSBdelay\(1) & \dds_core1|sine1|value[15]~46_combout\ & \dds_core1|sine1|value[14]~44_combout\ & \dds_core1|sine1|value[13]~42_combout\ & 
\dds_core1|sine1|value[12]~40_combout\ & \dds_core1|sine1|value[11]~38_combout\ & \dds_core1|sine1|value[10]~36_combout\ & \dds_core1|sine1|value[9]~34_combout\ & \dds_core1|sine1|value[8]~32_combout\ & \dds_core1|sine1|value[7]~30_combout\ & 
\dds_core1|sine1|value[6]~28_combout\ & \dds_core1|sine1|value[5]~26_combout\ & \dds_core1|sine1|value[4]~24_combout\ & \dds_core1|sine1|value[3]~22_combout\ & \dds_core1|sine1|value[2]~20_combout\ & \dds_core1|sine1|value[1]~18_combout\ & 
\dds_core1|sine1|value[0]~16_combout\ & gnd);

\dds_core1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\dds_core1|Add2~16_combout\ & \dds_core1|Add2~14_combout\ & \dds_core1|Add2~12_combout\ & \dds_core1|Add2~10_combout\ & \dds_core1|Add2~8_combout\ & \dds_core1|Add2~6_combout\ & 
\dds_core1|Add2~4_combout\ & \dds_core1|Add2~2_combout\ & \dds_core1|acc_delayC[0]~_Duplicate_1_regout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dds_core1|Mult0|auto_generated|mac_mult1~0\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\dds_core1|Mult0|auto_generated|mac_mult1~1\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\dds_core1|Mult0|auto_generated|mac_mult1~2\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\dds_core1|Mult0|auto_generated|mac_mult1~3\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\dds_core1|Mult0|auto_generated|mac_mult1~4\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\dds_core1|Mult0|auto_generated|mac_mult1~5\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\dds_core1|Mult0|auto_generated|mac_mult1~6\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\dds_core1|Mult0|auto_generated|mac_mult1~7\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\dds_core1|Mult0|auto_generated|mac_mult1~8\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\dds_core1|Mult0|auto_generated|mac_mult1~9\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\dds_core1|Mult0|auto_generated|mac_mult1~dataout\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\dds_core1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\dds_core2|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \dds_core2|sine2|addr_MSBdelay\(1) & \dds_core2|sine2|value[15]~46_combout\ & \dds_core2|sine2|value[14]~44_combout\ & \dds_core2|sine2|value[13]~42_combout\ & 
\dds_core2|sine2|value[12]~40_combout\ & \dds_core2|sine2|value[11]~38_combout\ & \dds_core2|sine2|value[10]~36_combout\ & \dds_core2|sine2|value[9]~34_combout\ & \dds_core2|sine2|value[8]~32_combout\ & \dds_core2|sine2|value[7]~30_combout\ & 
\dds_core2|sine2|value[6]~28_combout\ & \dds_core2|sine2|value[5]~26_combout\ & \dds_core2|sine2|value[4]~24_combout\ & \dds_core2|sine2|value[3]~22_combout\ & \dds_core2|sine2|value[2]~20_combout\ & \dds_core2|sine2|value[1]~18_combout\ & 
\dds_core2|sine2|value[0]~16_combout\ & gnd);

\dds_core2|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\dds_core2|acc_delayB\(7) & \dds_core2|acc_delayB\(6) & \dds_core2|acc_delayB\(5) & \dds_core2|acc_delayB\(4) & \dds_core2|acc_delayB\(3) & \dds_core2|acc_delayB\(2) & 
\dds_core2|acc_delayB\(1) & \dds_core2|acc_delayB\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dds_core2|Mult1|auto_generated|mac_mult1~0\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\dds_core2|Mult1|auto_generated|mac_mult1~1\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\dds_core2|Mult1|auto_generated|mac_mult1~2\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\dds_core2|Mult1|auto_generated|mac_mult1~3\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\dds_core2|Mult1|auto_generated|mac_mult1~4\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\dds_core2|Mult1|auto_generated|mac_mult1~5\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\dds_core2|Mult1|auto_generated|mac_mult1~6\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\dds_core2|Mult1|auto_generated|mac_mult1~7\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\dds_core2|Mult1|auto_generated|mac_mult1~8\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\dds_core2|Mult1|auto_generated|mac_mult1~9\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\dds_core2|Mult1|auto_generated|mac_mult1~10\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\dds_core2|Mult1|auto_generated|mac_mult1~dataout\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\dds_core2|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\dds_core2|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \dds_core2|sine1|addr_MSBdelay\(1) & \dds_core2|sine1|value[15]~46_combout\ & \dds_core2|sine1|value[14]~44_combout\ & \dds_core2|sine1|value[13]~42_combout\ & 
\dds_core2|sine1|value[12]~40_combout\ & \dds_core2|sine1|value[11]~38_combout\ & \dds_core2|sine1|value[10]~36_combout\ & \dds_core2|sine1|value[9]~34_combout\ & \dds_core2|sine1|value[8]~32_combout\ & \dds_core2|sine1|value[7]~30_combout\ & 
\dds_core2|sine1|value[6]~28_combout\ & \dds_core2|sine1|value[5]~26_combout\ & \dds_core2|sine1|value[4]~24_combout\ & \dds_core2|sine1|value[3]~22_combout\ & \dds_core2|sine1|value[2]~20_combout\ & \dds_core2|sine1|value[1]~18_combout\ & 
\dds_core2|sine1|value[0]~16_combout\ & gnd);

\dds_core2|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\dds_core2|Add2~16_combout\ & \dds_core2|Add2~14_combout\ & \dds_core2|Add2~12_combout\ & \dds_core2|Add2~10_combout\ & \dds_core2|Add2~8_combout\ & \dds_core2|Add2~6_combout\ & 
\dds_core2|Add2~4_combout\ & \dds_core2|Add2~2_combout\ & \dds_core2|acc_delayC[0]~_Duplicate_1_regout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dds_core2|Mult0|auto_generated|mac_mult1~0\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\dds_core2|Mult0|auto_generated|mac_mult1~1\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\dds_core2|Mult0|auto_generated|mac_mult1~2\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\dds_core2|Mult0|auto_generated|mac_mult1~3\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\dds_core2|Mult0|auto_generated|mac_mult1~4\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\dds_core2|Mult0|auto_generated|mac_mult1~5\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\dds_core2|Mult0|auto_generated|mac_mult1~6\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\dds_core2|Mult0|auto_generated|mac_mult1~7\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\dds_core2|Mult0|auto_generated|mac_mult1~8\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\dds_core2|Mult0|auto_generated|mac_mult1~9\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\dds_core2|Mult0|auto_generated|mac_mult1~dataout\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\dds_core2|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\dds_core1|sine2|comb~8_combout\ & \dds_core1|sine2|comb~7_combout\ & \dds_core1|sine2|comb~6_combout\ & \dds_core1|sine2|comb~5_combout\ & 
\dds_core1|sine2|comb~4_combout\ & \dds_core1|sine2|comb~3_combout\ & \dds_core1|sine2|comb~2_combout\ & \dds_core1|sine2|comb~1_combout\ & \dds_core1|sine2|comb~0_combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(4);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(5);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(6);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(7);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(8);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\dds_core1|sine2|comb~8_combout\ & \dds_core1|sine2|comb~7_combout\ & \dds_core1|sine2|comb~6_combout\ & \dds_core1|sine2|comb~5_combout\ & 
\dds_core1|sine2|comb~4_combout\ & \dds_core1|sine2|comb~3_combout\ & \dds_core1|sine2|comb~2_combout\ & \dds_core1|sine2|comb~1_combout\ & \dds_core1|sine2|comb~0_combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(1);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(2);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(3);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(4);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(5);
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) <= \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(6);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\dds_core1|sine1|comb~8_combout\ & \dds_core1|sine1|comb~7_combout\ & \dds_core1|sine1|comb~6_combout\ & \dds_core1|sine1|comb~5_combout\ & 
\dds_core1|sine1|comb~4_combout\ & \dds_core1|sine1|comb~3_combout\ & \dds_core1|sine1|comb~2_combout\ & \dds_core1|sine1|comb~1_combout\ & \dds_core1|sine1|comb~0_combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(4);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(5);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(6);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(7);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(8);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\dds_core1|sine1|comb~8_combout\ & \dds_core1|sine1|comb~7_combout\ & \dds_core1|sine1|comb~6_combout\ & \dds_core1|sine1|comb~5_combout\ & 
\dds_core1|sine1|comb~4_combout\ & \dds_core1|sine1|comb~3_combout\ & \dds_core1|sine1|comb~2_combout\ & \dds_core1|sine1|comb~1_combout\ & \dds_core1|sine1|comb~0_combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(1);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(2);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(3);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(4);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(5);
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) <= \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(6);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\dds_core2|sine2|comb~8_combout\ & \dds_core2|sine2|comb~7_combout\ & \dds_core2|sine2|comb~6_combout\ & \dds_core2|sine2|comb~5_combout\ & 
\dds_core2|sine2|comb~4_combout\ & \dds_core2|sine2|comb~3_combout\ & \dds_core2|sine2|comb~2_combout\ & \dds_core2|sine2|comb~1_combout\ & \dds_core2|sine2|comb~0_combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(4);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(5);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(6);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(7);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(8);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\dds_core2|sine2|comb~8_combout\ & \dds_core2|sine2|comb~7_combout\ & \dds_core2|sine2|comb~6_combout\ & \dds_core2|sine2|comb~5_combout\ & 
\dds_core2|sine2|comb~4_combout\ & \dds_core2|sine2|comb~3_combout\ & \dds_core2|sine2|comb~2_combout\ & \dds_core2|sine2|comb~1_combout\ & \dds_core2|sine2|comb~0_combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(1);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(2);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(3);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(4);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(5);
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) <= \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(6);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\dds_core2|sine1|comb~8_combout\ & \dds_core2|sine1|comb~7_combout\ & \dds_core2|sine1|comb~6_combout\ & \dds_core2|sine1|comb~5_combout\ & 
\dds_core2|sine1|comb~4_combout\ & \dds_core2|sine1|comb~3_combout\ & \dds_core2|sine1|comb~2_combout\ & \dds_core2|sine1|comb~1_combout\ & \dds_core2|sine1|comb~0_combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(4);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(5);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(6);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(7);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(8);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\dds_core2|sine1|comb~8_combout\ & \dds_core2|sine1|comb~7_combout\ & \dds_core2|sine1|comb~6_combout\ & \dds_core2|sine1|comb~5_combout\ & 
\dds_core2|sine1|comb~4_combout\ & \dds_core2|sine1|comb~3_combout\ & \dds_core2|sine1|comb~2_combout\ & \dds_core2|sine1|comb~1_combout\ & \dds_core2|sine1|comb~0_combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(1);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(2);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(3);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(4);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(5);
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) <= \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(6);

\FX2_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FX2_CLK~combout\);

\DAC_clk_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \DAC_clk_in~combout\);
\dds_core1|sine2|ALT_INV_addr_MSBdelay\(1) <= NOT \dds_core1|sine2|addr_MSBdelay\(1);
\dds_core1|sine1|ALT_INV_addr_MSBdelay\(1) <= NOT \dds_core1|sine1|addr_MSBdelay\(1);
\dds_core2|sine2|ALT_INV_addr_MSBdelay\(1) <= NOT \dds_core2|sine2|addr_MSBdelay\(1);
\dds_core2|sine1|ALT_INV_addr_MSBdelay\(1) <= NOT \dds_core2|sine1|addr_MSBdelay\(1);
\ALT_INV_DAC_clk_in~combout\ <= NOT \DAC_clk_in~combout\;

-- Location: DSPOUT_X16_Y10_N2
\dds_core1|Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core1|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X16_Y11_N2
\dds_core1|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X16_Y5_N2
\dds_core2|Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core2|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X16_Y6_N2
\dds_core2|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core2|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: M4K_X23_Y7
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFDFDFE7EBF1F6FA7C7DDEBF3F8FBFDAEAF4395C4DF6E363AAD166F278AC15E6E166AE54A913D9949A370F813D9D2DC6730164A44AA18EE672B91C6C250A00BE3DFE66E74D93C05B2AF439746608EE6C30556943E9949A350E813D7D2DC67B0969A7CCE30FC70311508B369406414FB75F7199BCD6A73197C35D6C94399405C0BF4717437DACCD620EB63280F4541681FC1B8C8DA68318783193A7425083EBCACFDD2931D78B11306B1F043C5B4C356252FA6526CD63A057675177A2C51C2AF3E1282DE3D7DEE8F136F2A4E83E0474B396597BE1808928867C1A8B7CD9F8C34493C29DACFD9250ED589D471FCDFE0A890764A2C980EE7E42A31168A44A211E863E9D0C65A248E04E15FE78F85A9C45BE9D2D8236D64892C0BBFBCCCDD8A52F05F9F88A03E15E670F75717427C2BCC81AE861674EF5216019C1BA4A1B88F2",
	mem_init0 => X"17D7515A862F8E022EA6166CE74C123F3A9ACC2570680BF1AEB24692005FDDC54E1CA93207B7354679A7C97F7D1D39F2A5287EF4B507D2949FF9D1531EC9F247C7354375A4C79E4C64CDB68315746F11F631B027B9B04195651FBE7284E7460C7AD7B8FB10D00CD8D55F09C2078F0F2A669C027B6AC3ED3A40F16124CC83502F5B4E7824465D3BA4556A56FBE5E6ED83C06371587C25C6FD7BB4556A54F9E4A62D037837594A74A1C4DC4B14013C3CED5E22CB428FBF192A63994059F9E364EC13D8535D48712702BAFA4B0CF9F6C8429083DDBCC55624EF561A44BE2D7DB252D64994039D9C350E00BD3D0DBC7A0B6C69AE84207F77567923453C4B03ED2E32",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core1|sine_lookup:sine2|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X23_Y3
\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDF3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9EBD7AF5EBD7AF5EBD7AF5EBD7AF5EBD78F1E3C78F1E3C78F1E3C78F1E3C76EDDBB76EDDBB76EDDBB76EDD3A74E9D3A74E9D3A74E9CB972E5CB972E5CB972E5C3870E1C3870E1C3870DDBB76EDDBB76EDDBB66CD9B366CD9B366CD5AB56AD5AB56AD5A3468D1A3468D1A3366CD9B366CD9B264C993264C993",
	mem_init0 => X"262C58B162C58B160C183060C18305EBD7AF5EBD7AE5CB972E5CB972D5AB56AD5AB562C58B162C58AD5AB56AD5AB54A952A54A952952A54A952A142850A14284E9D3A74E9D3264C993264C952A54A952A44891224488D1A3468D1A2448912244850A142850A04081020407CF9F3E7CF9E3C78F1E3C74E9D3A74E9C3870E1C366CD9B366CD1A3468D1A3264C993260C183060C172E5CB972C58B162C58A952A54A942850A14264C993264C912244891122448912040810204078F1E3C78E1C3870E1A3468D1A3060C183060B162C58B142850A1424489122440810204070E1C3870C183060C142850A142840810204060C1830608102040808102040800000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core1|sine_lookup:sine2|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X11_Y6
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFDFDFE7EBF1F6FA7C7DDEBF3F8FBFDAEAF4395C4DF6E363AAD166F278AC15E6E166AE54A913D9949A370F813D9D2DC6730164A44AA18EE672B91C6C250A00BE3DFE66E74D93C05B2AF439746608EE6C30556943E9949A350E813D7D2DC67B0969A7CCE30FC70311508B369406414FB75F7199BCD6A73197C35D6C94399405C0BF4717437DACCD620EB63280F4541681FC1B8C8DA68318783193A7425083EBCACFDD2931D78B11306B1F043C5B4C356252FA6526CD63A057675177A2C51C2AF3E1282DE3D7DEE8F136F2A4E83E0474B396597BE1808928867C1A8B7CD9F8C34493C29DACFD9250ED589D471FCDFE0A890764A2C980EE7E42A31168A44A211E863E9D0C65A248E04E15FE78F85A9C45BE9D2D8236D64892C0BBFBCCCDD8A52F05F9F88A03E15E670F75717427C2BCC81AE861674EF5216019C1BA4A1B88F2",
	mem_init0 => X"17D7515A862F8E022EA6166CE74C123F3A9ACC2570680BF1AEB24692005FDDC54E1CA93207B7354679A7C97F7D1D39F2A5287EF4B507D2949FF9D1531EC9F247C7354375A4C79E4C64CDB68315746F11F631B027B9B04195651FBE7284E7460C7AD7B8FB10D00CD8D55F09C2078F0F2A669C027B6AC3ED3A40F16124CC83502F5B4E7824465D3BA4556A56FBE5E6ED83C06371587C25C6FD7BB4556A54F9E4A62D037837594A74A1C4DC4B14013C3CED5E22CB428FBF192A63994059F9E364EC13D8535D48712702BAFA4B0CF9F6C8429083DDBCC55624EF561A44BE2D7DB252D64994039D9C350E00BD3D0DBC7A0B6C69AE84207F77567923453C4B03ED2E32",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core1|sine_lookup:sine1|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X11_Y5
\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDF3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9EBD7AF5EBD7AF5EBD7AF5EBD7AF5EBD78F1E3C78F1E3C78F1E3C78F1E3C76EDDBB76EDDBB76EDDBB76EDD3A74E9D3A74E9D3A74E9CB972E5CB972E5CB972E5C3870E1C3870E1C3870DDBB76EDDBB76EDDBB66CD9B366CD9B366CD5AB56AD5AB56AD5A3468D1A3468D1A3366CD9B366CD9B264C993264C993",
	mem_init0 => X"262C58B162C58B160C183060C18305EBD7AF5EBD7AE5CB972E5CB972D5AB56AD5AB562C58B162C58AD5AB56AD5AB54A952A54A952952A54A952A142850A14284E9D3A74E9D3264C993264C952A54A952A44891224488D1A3468D1A2448912244850A142850A04081020407CF9F3E7CF9E3C78F1E3C74E9D3A74E9C3870E1C366CD9B366CD1A3468D1A3264C993260C183060C172E5CB972C58B162C58A952A54A942850A14264C993264C912244891122448912040810204078F1E3C78E1C3870E1A3468D1A3060C183060B162C58B142850A1424489122440810204070E1C3870C183060C142850A142840810204060C1830608102040808102040800000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core1|sine_lookup:sine1|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X23_Y8
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFDFDFE7EBF1F6FA7C7DDEBF3F8FBFDAEAF4395C4DF6E363AAD166F278AC15E6E166AE54A913D9949A370F813D9D2DC6730164A44AA18EE672B91C6C250A00BE3DFE66E74D93C05B2AF439746608EE6C30556943E9949A350E813D7D2DC67B0969A7CCE30FC70311508B369406414FB75F7199BCD6A73197C35D6C94399405C0BF4717437DACCD620EB63280F4541681FC1B8C8DA68318783193A7425083EBCACFDD2931D78B11306B1F043C5B4C356252FA6526CD63A057675177A2C51C2AF3E1282DE3D7DEE8F136F2A4E83E0474B396597BE1808928867C1A8B7CD9F8C34493C29DACFD9250ED589D471FCDFE0A890764A2C980EE7E42A31168A44A211E863E9D0C65A248E04E15FE78F85A9C45BE9D2D8236D64892C0BBFBCCCDD8A52F05F9F88A03E15E670F75717427C2BCC81AE861674EF5216019C1BA4A1B88F2",
	mem_init0 => X"17D7515A862F8E022EA6166CE74C123F3A9ACC2570680BF1AEB24692005FDDC54E1CA93207B7354679A7C97F7D1D39F2A5287EF4B507D2949FF9D1531EC9F247C7354375A4C79E4C64CDB68315746F11F631B027B9B04195651FBE7284E7460C7AD7B8FB10D00CD8D55F09C2078F0F2A669C027B6AC3ED3A40F16124CC83502F5B4E7824465D3BA4556A56FBE5E6ED83C06371587C25C6FD7BB4556A54F9E4A62D037837594A74A1C4DC4B14013C3CED5E22CB428FBF192A63994059F9E364EC13D8535D48712702BAFA4B0CF9F6C8429083DDBCC55624EF561A44BE2D7DB252D64994039D9C350E00BD3D0DBC7A0B6C69AE84207F77567923453C4B03ED2E32",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core2|sine_lookup:sine2|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X11_Y8
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFDFDFE7EBF1F6FA7C7DDEBF3F8FBFDAEAF4395C4DF6E363AAD166F278AC15E6E166AE54A913D9949A370F813D9D2DC6730164A44AA18EE672B91C6C250A00BE3DFE66E74D93C05B2AF439746608EE6C30556943E9949A350E813D7D2DC67B0969A7CCE30FC70311508B369406414FB75F7199BCD6A73197C35D6C94399405C0BF4717437DACCD620EB63280F4541681FC1B8C8DA68318783193A7425083EBCACFDD2931D78B11306B1F043C5B4C356252FA6526CD63A057675177A2C51C2AF3E1282DE3D7DEE8F136F2A4E83E0474B396597BE1808928867C1A8B7CD9F8C34493C29DACFD9250ED589D471FCDFE0A890764A2C980EE7E42A31168A44A211E863E9D0C65A248E04E15FE78F85A9C45BE9D2D8236D64892C0BBFBCCCDD8A52F05F9F88A03E15E670F75717427C2BCC81AE861674EF5216019C1BA4A1B88F2",
	mem_init0 => X"17D7515A862F8E022EA6166CE74C123F3A9ACC2570680BF1AEB24692005FDDC54E1CA93207B7354679A7C97F7D1D39F2A5287EF4B507D2949FF9D1531EC9F247C7354375A4C79E4C64CDB68315746F11F631B027B9B04195651FBE7284E7460C7AD7B8FB10D00CD8D55F09C2078F0F2A669C027B6AC3ED3A40F16124CC83502F5B4E7824465D3BA4556A56FBE5E6ED83C06371587C25C6FD7BB4556A54F9E4A62D037837594A74A1C4DC4B14013C3CED5E22CB428FBF192A63994059F9E364EC13D8535D48712702BAFA4B0CF9F6C8429083DDBCC55624EF561A44BE2D7DB252D64994039D9C350E00BD3D0DBC7A0B6C69AE84207F77567923453C4B03ED2E32",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core2|sine_lookup:sine1|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X11_Y7
\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDF3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9EBD7AF5EBD7AF5EBD7AF5EBD7AF5EBD78F1E3C78F1E3C78F1E3C78F1E3C76EDDBB76EDDBB76EDDBB76EDD3A74E9D3A74E9D3A74E9CB972E5CB972E5CB972E5C3870E1C3870E1C3870DDBB76EDDBB76EDDBB66CD9B366CD9B366CD5AB56AD5AB56AD5A3468D1A3468D1A3366CD9B366CD9B264C993264C993",
	mem_init0 => X"262C58B162C58B160C183060C18305EBD7AF5EBD7AE5CB972E5CB972D5AB56AD5AB562C58B162C58AD5AB56AD5AB54A952A54A952952A54A952A142850A14284E9D3A74E9D3264C993264C952A54A952A44891224488D1A3468D1A2448912244850A142850A04081020407CF9F3E7CF9E3C78F1E3C74E9D3A74E9C3870E1C366CD9B366CD1A3468D1A3264C993260C183060C172E5CB972C58B162C58A952A54A942850A14264C993264C912244891122448912040810204078F1E3C78E1C3870E1A3468D1A3060C183060B162C58B142850A1424489122440810204070E1C3870C183060C142850A142840810204060C1830608102040808102040800000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core2|sine_lookup:sine1|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: LCFF_X10_Y6_N11
\dds_core1|acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(21));

-- Location: LCCOMB_X12_Y5_N20
\dds_core1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~12_combout\ = (\dds_core1|acc\(27) & (\dds_core1|Add1~11\ $ (GND))) # (!\dds_core1|acc\(27) & (!\dds_core1|Add1~11\ & VCC))
-- \dds_core1|Add1~13\ = CARRY((\dds_core1|acc\(27) & !\dds_core1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(27),
	datad => VCC,
	cin => \dds_core1|Add1~11\,
	combout => \dds_core1|Add1~12_combout\,
	cout => \dds_core1|Add1~13\);

-- Location: LCCOMB_X19_Y9_N8
\dds_core2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~8_combout\ = (\dds_core2|acc\(25) & (\dds_core2|Add1~7\ $ (GND))) # (!\dds_core2|acc\(25) & (!\dds_core2|Add1~7\ & VCC))
-- \dds_core2|Add1~9\ = CARRY((\dds_core2|acc\(25) & !\dds_core2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(25),
	datad => VCC,
	cin => \dds_core2|Add1~7\,
	combout => \dds_core2|Add1~8_combout\,
	cout => \dds_core2|Add1~9\);

-- Location: LCCOMB_X19_Y9_N12
\dds_core2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~12_combout\ = (\dds_core2|acc\(27) & (\dds_core2|Add1~11\ $ (GND))) # (!\dds_core2|acc\(27) & (!\dds_core2|Add1~11\ & VCC))
-- \dds_core2|Add1~13\ = CARRY((\dds_core2|acc\(27) & !\dds_core2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(27),
	datad => VCC,
	cin => \dds_core2|Add1~11\,
	combout => \dds_core2|Add1~12_combout\,
	cout => \dds_core2|Add1~13\);

-- Location: LCFF_X10_Y7_N25
\dds_core1|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(12));

-- Location: LCFF_X10_Y7_N21
\dds_core1|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(10));

-- Location: LCFF_X10_Y7_N19
\dds_core1|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(9));

-- Location: LCFF_X10_Y7_N17
\dds_core1|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(8));

-- Location: LCFF_X10_Y7_N13
\dds_core1|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(6));

-- Location: LCFF_X10_Y7_N11
\dds_core1|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(5));

-- Location: LCFF_X10_Y7_N9
\dds_core1|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(4));

-- Location: LCFF_X10_Y7_N7
\dds_core1|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(3));

-- Location: LCCOMB_X10_Y7_N6
\dds_core1|acc[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[3]~38_combout\ = (\dds_core1|acc\(3) & ((DDS1_acc_inc(3) & (\dds_core1|acc[2]~37\ & VCC)) # (!DDS1_acc_inc(3) & (!\dds_core1|acc[2]~37\)))) # (!\dds_core1|acc\(3) & ((DDS1_acc_inc(3) & (!\dds_core1|acc[2]~37\)) # (!DDS1_acc_inc(3) & 
-- ((\dds_core1|acc[2]~37\) # (GND)))))
-- \dds_core1|acc[3]~39\ = CARRY((\dds_core1|acc\(3) & (!DDS1_acc_inc(3) & !\dds_core1|acc[2]~37\)) # (!\dds_core1|acc\(3) & ((!\dds_core1|acc[2]~37\) # (!DDS1_acc_inc(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(3),
	datab => DDS1_acc_inc(3),
	datad => VCC,
	cin => \dds_core1|acc[2]~37\,
	combout => \dds_core1|acc[3]~38_combout\,
	cout => \dds_core1|acc[3]~39\);

-- Location: LCCOMB_X10_Y7_N8
\dds_core1|acc[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[4]~40_combout\ = ((\dds_core1|acc\(4) $ (DDS1_acc_inc(4) $ (!\dds_core1|acc[3]~39\)))) # (GND)
-- \dds_core1|acc[4]~41\ = CARRY((\dds_core1|acc\(4) & ((DDS1_acc_inc(4)) # (!\dds_core1|acc[3]~39\))) # (!\dds_core1|acc\(4) & (DDS1_acc_inc(4) & !\dds_core1|acc[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(4),
	datab => DDS1_acc_inc(4),
	datad => VCC,
	cin => \dds_core1|acc[3]~39\,
	combout => \dds_core1|acc[4]~40_combout\,
	cout => \dds_core1|acc[4]~41\);

-- Location: LCCOMB_X10_Y7_N10
\dds_core1|acc[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[5]~42_combout\ = (\dds_core1|acc\(5) & ((DDS1_acc_inc(5) & (\dds_core1|acc[4]~41\ & VCC)) # (!DDS1_acc_inc(5) & (!\dds_core1|acc[4]~41\)))) # (!\dds_core1|acc\(5) & ((DDS1_acc_inc(5) & (!\dds_core1|acc[4]~41\)) # (!DDS1_acc_inc(5) & 
-- ((\dds_core1|acc[4]~41\) # (GND)))))
-- \dds_core1|acc[5]~43\ = CARRY((\dds_core1|acc\(5) & (!DDS1_acc_inc(5) & !\dds_core1|acc[4]~41\)) # (!\dds_core1|acc\(5) & ((!\dds_core1|acc[4]~41\) # (!DDS1_acc_inc(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(5),
	datab => DDS1_acc_inc(5),
	datad => VCC,
	cin => \dds_core1|acc[4]~41\,
	combout => \dds_core1|acc[5]~42_combout\,
	cout => \dds_core1|acc[5]~43\);

-- Location: LCCOMB_X10_Y7_N12
\dds_core1|acc[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[6]~44_combout\ = ((\dds_core1|acc\(6) $ (DDS1_acc_inc(6) $ (!\dds_core1|acc[5]~43\)))) # (GND)
-- \dds_core1|acc[6]~45\ = CARRY((\dds_core1|acc\(6) & ((DDS1_acc_inc(6)) # (!\dds_core1|acc[5]~43\))) # (!\dds_core1|acc\(6) & (DDS1_acc_inc(6) & !\dds_core1|acc[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(6),
	datab => DDS1_acc_inc(6),
	datad => VCC,
	cin => \dds_core1|acc[5]~43\,
	combout => \dds_core1|acc[6]~44_combout\,
	cout => \dds_core1|acc[6]~45\);

-- Location: LCCOMB_X10_Y7_N16
\dds_core1|acc[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[8]~48_combout\ = ((\dds_core1|acc\(8) $ (DDS1_acc_inc(8) $ (!\dds_core1|acc[7]~47\)))) # (GND)
-- \dds_core1|acc[8]~49\ = CARRY((\dds_core1|acc\(8) & ((DDS1_acc_inc(8)) # (!\dds_core1|acc[7]~47\))) # (!\dds_core1|acc\(8) & (DDS1_acc_inc(8) & !\dds_core1|acc[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(8),
	datab => DDS1_acc_inc(8),
	datad => VCC,
	cin => \dds_core1|acc[7]~47\,
	combout => \dds_core1|acc[8]~48_combout\,
	cout => \dds_core1|acc[8]~49\);

-- Location: LCCOMB_X10_Y7_N18
\dds_core1|acc[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[9]~50_combout\ = (\dds_core1|acc\(9) & ((DDS1_acc_inc(9) & (\dds_core1|acc[8]~49\ & VCC)) # (!DDS1_acc_inc(9) & (!\dds_core1|acc[8]~49\)))) # (!\dds_core1|acc\(9) & ((DDS1_acc_inc(9) & (!\dds_core1|acc[8]~49\)) # (!DDS1_acc_inc(9) & 
-- ((\dds_core1|acc[8]~49\) # (GND)))))
-- \dds_core1|acc[9]~51\ = CARRY((\dds_core1|acc\(9) & (!DDS1_acc_inc(9) & !\dds_core1|acc[8]~49\)) # (!\dds_core1|acc\(9) & ((!\dds_core1|acc[8]~49\) # (!DDS1_acc_inc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(9),
	datab => DDS1_acc_inc(9),
	datad => VCC,
	cin => \dds_core1|acc[8]~49\,
	combout => \dds_core1|acc[9]~50_combout\,
	cout => \dds_core1|acc[9]~51\);

-- Location: LCCOMB_X10_Y7_N20
\dds_core1|acc[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[10]~52_combout\ = ((\dds_core1|acc\(10) $ (DDS1_acc_inc(10) $ (!\dds_core1|acc[9]~51\)))) # (GND)
-- \dds_core1|acc[10]~53\ = CARRY((\dds_core1|acc\(10) & ((DDS1_acc_inc(10)) # (!\dds_core1|acc[9]~51\))) # (!\dds_core1|acc\(10) & (DDS1_acc_inc(10) & !\dds_core1|acc[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(10),
	datab => DDS1_acc_inc(10),
	datad => VCC,
	cin => \dds_core1|acc[9]~51\,
	combout => \dds_core1|acc[10]~52_combout\,
	cout => \dds_core1|acc[10]~53\);

-- Location: LCCOMB_X10_Y7_N24
\dds_core1|acc[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[12]~56_combout\ = ((\dds_core1|acc\(12) $ (DDS1_acc_inc(12) $ (!\dds_core1|acc[11]~55\)))) # (GND)
-- \dds_core1|acc[12]~57\ = CARRY((\dds_core1|acc\(12) & ((DDS1_acc_inc(12)) # (!\dds_core1|acc[11]~55\))) # (!\dds_core1|acc\(12) & (DDS1_acc_inc(12) & !\dds_core1|acc[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(12),
	datab => DDS1_acc_inc(12),
	datad => VCC,
	cin => \dds_core1|acc[11]~55\,
	combout => \dds_core1|acc[12]~56_combout\,
	cout => \dds_core1|acc[12]~57\);

-- Location: LCCOMB_X10_Y6_N10
\dds_core1|acc[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[21]~74_combout\ = (\dds_core1|acc\(21) & ((DDS1_acc_inc(21) & (\dds_core1|acc[20]~73\ & VCC)) # (!DDS1_acc_inc(21) & (!\dds_core1|acc[20]~73\)))) # (!\dds_core1|acc\(21) & ((DDS1_acc_inc(21) & (!\dds_core1|acc[20]~73\)) # (!DDS1_acc_inc(21) 
-- & ((\dds_core1|acc[20]~73\) # (GND)))))
-- \dds_core1|acc[21]~75\ = CARRY((\dds_core1|acc\(21) & (!DDS1_acc_inc(21) & !\dds_core1|acc[20]~73\)) # (!\dds_core1|acc\(21) & ((!\dds_core1|acc[20]~73\) # (!DDS1_acc_inc(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(21),
	datab => DDS1_acc_inc(21),
	datad => VCC,
	cin => \dds_core1|acc[20]~73\,
	combout => \dds_core1|acc[21]~74_combout\,
	cout => \dds_core1|acc[21]~75\);

-- Location: LCFF_X13_Y10_N25
\dds_core2|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(12));

-- Location: LCFF_X13_Y10_N21
\dds_core2|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(10));

-- Location: LCFF_X13_Y10_N17
\dds_core2|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(8));

-- Location: LCFF_X13_Y10_N13
\dds_core2|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(6));

-- Location: LCFF_X13_Y10_N11
\dds_core2|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(5));

-- Location: LCFF_X13_Y10_N7
\dds_core2|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(3));

-- Location: LCCOMB_X13_Y10_N6
\dds_core2|acc[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[3]~38_combout\ = (\dds_core2|acc\(3) & ((DDS2_acc_inc(3) & (\dds_core2|acc[2]~37\ & VCC)) # (!DDS2_acc_inc(3) & (!\dds_core2|acc[2]~37\)))) # (!\dds_core2|acc\(3) & ((DDS2_acc_inc(3) & (!\dds_core2|acc[2]~37\)) # (!DDS2_acc_inc(3) & 
-- ((\dds_core2|acc[2]~37\) # (GND)))))
-- \dds_core2|acc[3]~39\ = CARRY((\dds_core2|acc\(3) & (!DDS2_acc_inc(3) & !\dds_core2|acc[2]~37\)) # (!\dds_core2|acc\(3) & ((!\dds_core2|acc[2]~37\) # (!DDS2_acc_inc(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(3),
	datab => DDS2_acc_inc(3),
	datad => VCC,
	cin => \dds_core2|acc[2]~37\,
	combout => \dds_core2|acc[3]~38_combout\,
	cout => \dds_core2|acc[3]~39\);

-- Location: LCCOMB_X13_Y10_N10
\dds_core2|acc[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[5]~42_combout\ = (\dds_core2|acc\(5) & ((DDS2_acc_inc(5) & (\dds_core2|acc[4]~41\ & VCC)) # (!DDS2_acc_inc(5) & (!\dds_core2|acc[4]~41\)))) # (!\dds_core2|acc\(5) & ((DDS2_acc_inc(5) & (!\dds_core2|acc[4]~41\)) # (!DDS2_acc_inc(5) & 
-- ((\dds_core2|acc[4]~41\) # (GND)))))
-- \dds_core2|acc[5]~43\ = CARRY((\dds_core2|acc\(5) & (!DDS2_acc_inc(5) & !\dds_core2|acc[4]~41\)) # (!\dds_core2|acc\(5) & ((!\dds_core2|acc[4]~41\) # (!DDS2_acc_inc(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(5),
	datab => DDS2_acc_inc(5),
	datad => VCC,
	cin => \dds_core2|acc[4]~41\,
	combout => \dds_core2|acc[5]~42_combout\,
	cout => \dds_core2|acc[5]~43\);

-- Location: LCCOMB_X13_Y10_N12
\dds_core2|acc[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[6]~44_combout\ = ((\dds_core2|acc\(6) $ (DDS2_acc_inc(6) $ (!\dds_core2|acc[5]~43\)))) # (GND)
-- \dds_core2|acc[6]~45\ = CARRY((\dds_core2|acc\(6) & ((DDS2_acc_inc(6)) # (!\dds_core2|acc[5]~43\))) # (!\dds_core2|acc\(6) & (DDS2_acc_inc(6) & !\dds_core2|acc[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(6),
	datab => DDS2_acc_inc(6),
	datad => VCC,
	cin => \dds_core2|acc[5]~43\,
	combout => \dds_core2|acc[6]~44_combout\,
	cout => \dds_core2|acc[6]~45\);

-- Location: LCCOMB_X13_Y10_N16
\dds_core2|acc[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[8]~48_combout\ = ((\dds_core2|acc\(8) $ (DDS2_acc_inc(8) $ (!\dds_core2|acc[7]~47\)))) # (GND)
-- \dds_core2|acc[8]~49\ = CARRY((\dds_core2|acc\(8) & ((DDS2_acc_inc(8)) # (!\dds_core2|acc[7]~47\))) # (!\dds_core2|acc\(8) & (DDS2_acc_inc(8) & !\dds_core2|acc[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(8),
	datab => DDS2_acc_inc(8),
	datad => VCC,
	cin => \dds_core2|acc[7]~47\,
	combout => \dds_core2|acc[8]~48_combout\,
	cout => \dds_core2|acc[8]~49\);

-- Location: LCCOMB_X13_Y10_N20
\dds_core2|acc[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[10]~52_combout\ = ((\dds_core2|acc\(10) $ (DDS2_acc_inc(10) $ (!\dds_core2|acc[9]~51\)))) # (GND)
-- \dds_core2|acc[10]~53\ = CARRY((\dds_core2|acc\(10) & ((DDS2_acc_inc(10)) # (!\dds_core2|acc[9]~51\))) # (!\dds_core2|acc\(10) & (DDS2_acc_inc(10) & !\dds_core2|acc[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(10),
	datab => DDS2_acc_inc(10),
	datad => VCC,
	cin => \dds_core2|acc[9]~51\,
	combout => \dds_core2|acc[10]~52_combout\,
	cout => \dds_core2|acc[10]~53\);

-- Location: LCCOMB_X13_Y10_N24
\dds_core2|acc[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[12]~56_combout\ = ((\dds_core2|acc\(12) $ (DDS2_acc_inc(12) $ (!\dds_core2|acc[11]~55\)))) # (GND)
-- \dds_core2|acc[12]~57\ = CARRY((\dds_core2|acc\(12) & ((DDS2_acc_inc(12)) # (!\dds_core2|acc[11]~55\))) # (!\dds_core2|acc\(12) & (DDS2_acc_inc(12) & !\dds_core2|acc[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(12),
	datab => DDS2_acc_inc(12),
	datad => VCC,
	cin => \dds_core2|acc[11]~55\,
	combout => \dds_core2|acc[12]~56_combout\,
	cout => \dds_core2|acc[12]~57\);

-- Location: LCFF_X17_Y11_N7
\dds_core1|acc_delayC[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[1]~_Duplicate_1_regout\);

-- Location: LCFF_X17_Y11_N11
\dds_core1|acc_delayC[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[3]~_Duplicate_1_regout\);

-- Location: LCFF_X17_Y11_N13
\dds_core1|acc_delayC[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[4]~_Duplicate_1_regout\);

-- Location: LCFF_X17_Y11_N17
\dds_core1|acc_delayC[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[6]~_Duplicate_1_regout\);

-- Location: LCFF_X15_Y6_N7
\dds_core2|acc_delayC[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[2]~_Duplicate_1_regout\);

-- Location: LCFF_X15_Y6_N11
\dds_core2|acc_delayC[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[4]~_Duplicate_1_regout\);

-- Location: LCFF_X15_Y6_N13
\dds_core2|acc_delayC[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[5]~_Duplicate_1_regout\);

-- Location: LCFF_X15_Y6_N17
\dds_core2|acc_delayC[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X19_Y9_N24
\dds_core2|sine2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|Add0~2_combout\ = \dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0),
	combout => \dds_core2|sine2|Add0~2_combout\);

-- Location: LCFF_X9_Y10_N3
\DDS1_acc_inc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(18),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(18));

-- Location: LCFF_X9_Y10_N13
\DDS1_acc_inc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[17]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(17));

-- Location: LCFF_X9_Y10_N15
\DDS1_acc_inc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[16]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(16));

-- Location: LCFF_X9_Y9_N9
\DDS1_acc_inc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[15]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(15));

-- Location: LCFF_X9_Y10_N9
\DDS1_acc_inc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(14),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(14));

-- Location: LCFF_X9_Y9_N27
\DDS1_acc_inc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[11]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(11));

-- Location: LCFF_X9_Y9_N5
\DDS1_acc_inc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(7),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(7));

-- Location: LCFF_X10_Y10_N27
\DDS1_acc_inc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[2]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(2));

-- Location: LCFF_X10_Y10_N29
\DDS1_acc_inc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[1]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(1));

-- Location: LCFF_X10_Y10_N15
\DDS1_acc_inc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[0]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(0));

-- Location: LCFF_X12_Y9_N21
\DDS1_acc_inc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[30]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(30));

-- Location: LCFF_X12_Y9_N31
\DDS1_acc_inc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(29),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(29));

-- Location: LCFF_X9_Y9_N25
\DDS1_acc_inc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(27),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(27));

-- Location: LCFF_X12_Y9_N29
\DDS1_acc_inc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(25),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(25));

-- Location: LCFF_X9_Y9_N19
\DDS1_acc_inc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[23]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(23));

-- Location: LCFF_X12_Y9_N25
\DDS1_acc_inc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[22]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(22));

-- Location: LCFF_X9_Y10_N17
\DDS2_acc_inc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[20]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(20));

-- Location: LCFF_X9_Y10_N19
\DDS2_acc_inc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(18),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(18));

-- Location: LCFF_X9_Y10_N5
\DDS2_acc_inc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[17]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(17));

-- Location: LCFF_X9_Y10_N23
\DDS2_acc_inc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[16]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(16));

-- Location: LCFF_X10_Y9_N5
\DDS2_acc_inc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(15),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(15));

-- Location: LCFF_X9_Y10_N1
\DDS2_acc_inc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(14),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(14));

-- Location: LCFF_X9_Y10_N27
\DDS2_acc_inc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[13]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(13));

-- Location: LCFF_X10_Y9_N15
\DDS2_acc_inc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(11),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(11));

-- Location: LCFF_X10_Y10_N1
\DDS2_acc_inc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[9]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(9));

-- Location: LCFF_X10_Y9_N9
\DDS2_acc_inc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(7),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(7));

-- Location: LCFF_X10_Y10_N9
\DDS2_acc_inc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[4]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(4));

-- Location: LCFF_X10_Y10_N19
\DDS2_acc_inc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[2]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(2));

-- Location: LCFF_X10_Y10_N13
\DDS2_acc_inc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[1]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(1));

-- Location: LCFF_X10_Y10_N7
\DDS2_acc_inc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[0]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(0));

-- Location: LCFF_X12_Y9_N11
\DDS2_acc_inc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[30]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(30));

-- Location: LCFF_X12_Y9_N13
\DDS2_acc_inc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(29),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(29));

-- Location: LCFF_X10_Y9_N21
\DDS2_acc_inc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(27),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(27));

-- Location: LCFF_X12_Y9_N3
\DDS2_acc_inc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(25),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(25));

-- Location: LCFF_X10_Y9_N23
\DDS2_acc_inc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(23),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(23));

-- Location: LCFF_X12_Y9_N15
\DDS2_acc_inc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[22]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(22));

-- Location: LCFF_X10_Y9_N29
\FIFO_value[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[15]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(15));

-- Location: LCFF_X10_Y9_N17
\FIFO_value[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[7]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(7));

-- Location: LCFF_X12_Y10_N21
\FIFO_value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[2]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(2));

-- Location: LCFF_X12_Y10_N15
\FIFO_value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[1]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(1));

-- Location: LCFF_X8_Y9_N9
\FIFO_value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[0]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(0));

-- Location: LCFF_X10_Y9_N31
\FIFO_value[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => FIFO_value(31),
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(23));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FX2_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FX2_CLK,
	combout => \FX2_CLK~combout\);

-- Location: CLKCTRL_G1
\FX2_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FX2_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FX2_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y10_N16
\DDS2_acc_inc[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[20]~feeder_combout\ = FIFO_value(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(20),
	combout => \DDS2_acc_inc[20]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N12
\DDS1_acc_inc[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[17]~feeder_combout\ = FIFO_value(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(17),
	combout => \DDS1_acc_inc[17]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N4
\DDS2_acc_inc[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[17]~feeder_combout\ = FIFO_value(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(17),
	combout => \DDS2_acc_inc[17]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N14
\DDS1_acc_inc[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[16]~feeder_combout\ = FIFO_value(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(16),
	combout => \DDS1_acc_inc[16]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N22
\DDS2_acc_inc[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[16]~feeder_combout\ = FIFO_value(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(16),
	combout => \DDS2_acc_inc[16]~feeder_combout\);

-- Location: LCCOMB_X9_Y9_N8
\DDS1_acc_inc[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[15]~feeder_combout\ = FIFO_value(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(15),
	combout => \DDS1_acc_inc[15]~feeder_combout\);

-- Location: LCCOMB_X10_Y9_N16
\FIFO_value[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[7]~feeder_combout\ = FIFO_value(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(15),
	combout => \FIFO_value[7]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N26
\DDS2_acc_inc[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[13]~feeder_combout\ = FIFO_value(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(13),
	combout => \DDS2_acc_inc[13]~feeder_combout\);

-- Location: LCCOMB_X9_Y9_N26
\DDS1_acc_inc[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[11]~feeder_combout\ = FIFO_value(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(11),
	combout => \DDS1_acc_inc[11]~feeder_combout\);

-- Location: LCCOMB_X12_Y10_N20
\FIFO_value[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[2]~feeder_combout\ = FIFO_value(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(10),
	combout => \FIFO_value[2]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N0
\DDS2_acc_inc[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[9]~feeder_combout\ = FIFO_value(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(9),
	combout => \DDS2_acc_inc[9]~feeder_combout\);

-- Location: LCCOMB_X12_Y10_N14
\FIFO_value[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[1]~feeder_combout\ = FIFO_value(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(9),
	combout => \FIFO_value[1]~feeder_combout\);

-- Location: LCCOMB_X8_Y9_N8
\FIFO_value[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[0]~feeder_combout\ = FIFO_value(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(8),
	combout => \FIFO_value[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N8
\DDS2_acc_inc[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[4]~feeder_combout\ = FIFO_value(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(4),
	combout => \DDS2_acc_inc[4]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N26
\DDS1_acc_inc[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[2]~feeder_combout\ = FIFO_value(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(2),
	combout => \DDS1_acc_inc[2]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N18
\DDS2_acc_inc[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[2]~feeder_combout\ = FIFO_value(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(2),
	combout => \DDS2_acc_inc[2]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N28
\DDS1_acc_inc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[1]~feeder_combout\ = FIFO_value(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(1),
	combout => \DDS1_acc_inc[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N12
\DDS2_acc_inc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[1]~feeder_combout\ = FIFO_value(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(1),
	combout => \DDS2_acc_inc[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N14
\DDS1_acc_inc[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[0]~feeder_combout\ = FIFO_value(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(0),
	combout => \DDS1_acc_inc[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N6
\DDS2_acc_inc[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[0]~feeder_combout\ = FIFO_value(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(0),
	combout => \DDS2_acc_inc[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N20
\DDS1_acc_inc[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[30]~feeder_combout\ = FIFO_value(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(30),
	combout => \DDS1_acc_inc[30]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N10
\DDS2_acc_inc[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[30]~feeder_combout\ = FIFO_value(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(30),
	combout => \DDS2_acc_inc[30]~feeder_combout\);

-- Location: LCCOMB_X9_Y9_N18
\DDS1_acc_inc[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[23]~feeder_combout\ = FIFO_value(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(23),
	combout => \DDS1_acc_inc[23]~feeder_combout\);

-- Location: LCCOMB_X10_Y9_N28
\FIFO_value[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[15]~feeder_combout\ = FIFO_value(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(23),
	combout => \FIFO_value[15]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N24
\DDS1_acc_inc[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[22]~feeder_combout\ = FIFO_value(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(22),
	combout => \DDS1_acc_inc[22]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N14
\DDS2_acc_inc[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[22]~feeder_combout\ = FIFO_value(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(22),
	combout => \DDS2_acc_inc[22]~feeder_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(0),
	combout => \FX2_FD[0]~0\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(1),
	combout => \FX2_FD[1]~1\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(2),
	combout => \FX2_FD[2]~2\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(3),
	combout => \FX2_FD[3]~3\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(4),
	combout => \FX2_FD[4]~4\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(5),
	combout => \FX2_FD[5]~5\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(6),
	combout => \FX2_FD[6]~6\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_FD[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FX2_FD(7),
	combout => \FX2_FD[7]~7\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DAC_clk_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DAC_clk_in,
	combout => \DAC_clk_in~combout\);

-- Location: CLKCTRL_G2
\DAC_clk_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DAC_clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DAC_clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y4_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X12_Y10_N2
\FIFO_value[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[28]~feeder_combout\ = \FX2_FD[4]~4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FX2_FD[4]~4\,
	combout => \FIFO_value[28]~feeder_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FX2_flags[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FX2_flags(0),
	combout => \FX2_flags~combout\(0));

-- Location: LCFF_X12_Y10_N3
\FIFO_value[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[28]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(28));

-- Location: LCCOMB_X12_Y9_N0
\DDS1_acc_inc[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[28]~feeder_combout\ = FIFO_value(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(28),
	combout => \DDS1_acc_inc[28]~feeder_combout\);

-- Location: LCCOMB_X8_Y9_N20
\timeout[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[1]~1_combout\ = (\FX2_flags~combout\(0)) # ((timeout(0) & (timeout(1))) # (!timeout(0) & (!timeout(1) & !\timeout_complete~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout(0),
	datab => \FX2_flags~combout\(0),
	datac => timeout(1),
	datad => \timeout_complete~0_combout\,
	combout => \timeout[1]~1_combout\);

-- Location: LCFF_X8_Y9_N21
\timeout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \timeout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timeout(1));

-- Location: LCCOMB_X8_Y9_N26
\timeout[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[0]~0_combout\ = (\FX2_flags~combout\(0)) # ((!timeout(0) & !\timeout_complete~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FX2_flags~combout\(0),
	datac => timeout(0),
	datad => \timeout_complete~0_combout\,
	combout => \timeout[0]~0_combout\);

-- Location: LCFF_X8_Y9_N27
\timeout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \timeout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timeout(0));

-- Location: LCCOMB_X8_Y9_N4
\timeout[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[2]~2_combout\ = (\FX2_flags~combout\(0)) # (timeout(2) $ (((!timeout(1) & !timeout(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FX2_flags~combout\(0),
	datab => timeout(2),
	datac => timeout(1),
	datad => timeout(0),
	combout => \timeout[2]~2_combout\);

-- Location: LCCOMB_X8_Y9_N14
\timeout[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[2]~3_combout\ = (\timeout[2]~2_combout\ & ((timeout(0)) # ((\FX2_flags~combout\(0)) # (!\timeout_complete~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout(0),
	datab => \FX2_flags~combout\(0),
	datac => \timeout[2]~2_combout\,
	datad => \timeout_complete~0_combout\,
	combout => \timeout[2]~3_combout\);

-- Location: LCFF_X8_Y9_N15
\timeout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \timeout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timeout(2));

-- Location: LCCOMB_X8_Y9_N22
\timeout[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[3]~4_combout\ = (timeout(3) & ((timeout(2)) # ((timeout(1)) # (timeout(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout(3),
	datab => timeout(2),
	datac => timeout(1),
	datad => timeout(0),
	combout => \timeout[3]~4_combout\);

-- Location: LCCOMB_X8_Y9_N24
\timeout[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout[3]~5_combout\ = (\FX2_flags~combout\(0)) # (\timeout[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FX2_flags~combout\(0),
	datad => \timeout[3]~4_combout\,
	combout => \timeout[3]~5_combout\);

-- Location: LCFF_X8_Y9_N25
\timeout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \timeout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timeout(3));

-- Location: LCCOMB_X8_Y9_N18
\timeout_complete~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout_complete~0_combout\ = (!timeout(1) & (!timeout(3) & !timeout(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout(1),
	datac => timeout(3),
	datad => timeout(2),
	combout => \timeout_complete~0_combout\);

-- Location: LCCOMB_X8_Y9_N16
\fcdnai|FlagToggle_clkA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fcdnai|FlagToggle_clkA~0_combout\ = \fcdnai|FlagToggle_clkA~regout\ $ (((timeout(0) & (!\FX2_flags~combout\(0) & \timeout_complete~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout(0),
	datab => \FX2_flags~combout\(0),
	datac => \fcdnai|FlagToggle_clkA~regout\,
	datad => \timeout_complete~0_combout\,
	combout => \fcdnai|FlagToggle_clkA~0_combout\);

-- Location: LCFF_X8_Y9_N17
\fcdnai|FlagToggle_clkA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \fcdnai|FlagToggle_clkA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fcdnai|FlagToggle_clkA~regout\);

-- Location: LCCOMB_X9_Y9_N16
\fcdnai|SyncA_clkB[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fcdnai|SyncA_clkB[0]~feeder_combout\ = \fcdnai|FlagToggle_clkA~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fcdnai|FlagToggle_clkA~regout\,
	combout => \fcdnai|SyncA_clkB[0]~feeder_combout\);

-- Location: LCFF_X9_Y9_N17
\fcdnai|SyncA_clkB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \fcdnai|SyncA_clkB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fcdnai|SyncA_clkB\(0));

-- Location: LCFF_X9_Y9_N13
\fcdnai|SyncA_clkB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \fcdnai|SyncA_clkB\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fcdnai|SyncA_clkB\(1));

-- Location: LCFF_X9_Y9_N15
\fcdnai|SyncA_clkB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \fcdnai|SyncA_clkB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fcdnai|SyncA_clkB\(2));

-- Location: LCCOMB_X10_Y9_N24
\FIFO_value[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[31]~feeder_combout\ = \FX2_FD[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FX2_FD[7]~7\,
	combout => \FIFO_value[31]~feeder_combout\);

-- Location: LCFF_X10_Y9_N25
\FIFO_value[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[31]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(31));

-- Location: LCCOMB_X9_Y9_N14
\DDS1_acc_inc[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[30]~0_combout\ = (!FIFO_value(31) & (\fcdnai|SyncA_clkB\(1) $ (\fcdnai|SyncA_clkB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcdnai|SyncA_clkB\(1),
	datac => \fcdnai|SyncA_clkB\(2),
	datad => FIFO_value(31),
	combout => \DDS1_acc_inc[30]~0_combout\);

-- Location: LCFF_X12_Y9_N1
\DDS1_acc_inc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[28]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(28));

-- Location: LCFF_X12_Y10_N13
\FIFO_value[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => \FX2_FD[2]~2\,
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(26));

-- Location: LCCOMB_X12_Y9_N26
\DDS1_acc_inc[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[26]~feeder_combout\ = FIFO_value(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(26),
	combout => \DDS1_acc_inc[26]~feeder_combout\);

-- Location: LCFF_X12_Y9_N27
\DDS1_acc_inc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[26]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(26));

-- Location: LCFF_X8_Y9_N13
\FIFO_value[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => \FX2_FD[0]~0\,
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(24));

-- Location: LCCOMB_X12_Y9_N6
\DDS1_acc_inc[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[24]~feeder_combout\ = FIFO_value(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(24),
	combout => \DDS1_acc_inc[24]~feeder_combout\);

-- Location: LCFF_X12_Y9_N7
\DDS1_acc_inc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[24]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(24));

-- Location: LCCOMB_X12_Y10_N0
\FIFO_value[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[29]~feeder_combout\ = \FX2_FD[5]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FX2_FD[5]~5\,
	combout => \FIFO_value[29]~feeder_combout\);

-- Location: LCFF_X12_Y10_N1
\FIFO_value[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[29]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(29));

-- Location: LCCOMB_X12_Y10_N16
\FIFO_value[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[21]~feeder_combout\ = FIFO_value(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(29),
	combout => \FIFO_value[21]~feeder_combout\);

-- Location: LCFF_X12_Y10_N17
\FIFO_value[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[21]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(21));

-- Location: LCFF_X12_Y9_N9
\DDS1_acc_inc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(21),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(21));

-- Location: LCCOMB_X12_Y10_N18
\FIFO_value[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[20]~feeder_combout\ = FIFO_value(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(28),
	combout => \FIFO_value[20]~feeder_combout\);

-- Location: LCFF_X12_Y10_N19
\FIFO_value[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[20]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(20));

-- Location: LCCOMB_X9_Y10_N24
\DDS1_acc_inc[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[20]~feeder_combout\ = FIFO_value(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(20),
	combout => \DDS1_acc_inc[20]~feeder_combout\);

-- Location: LCFF_X9_Y10_N25
\DDS1_acc_inc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[20]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(20));

-- Location: LCCOMB_X10_Y9_N12
\FIFO_value[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[27]~feeder_combout\ = \FX2_FD[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FX2_FD[3]~3\,
	combout => \FIFO_value[27]~feeder_combout\);

-- Location: LCFF_X10_Y9_N13
\FIFO_value[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[27]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(27));

-- Location: LCCOMB_X10_Y9_N10
\FIFO_value[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[19]~feeder_combout\ = FIFO_value(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(27),
	combout => \FIFO_value[19]~feeder_combout\);

-- Location: LCFF_X10_Y9_N11
\FIFO_value[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[19]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(19));

-- Location: LCCOMB_X12_Y9_N18
\DDS1_acc_inc[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[19]~feeder_combout\ = FIFO_value(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(19),
	combout => \DDS1_acc_inc[19]~feeder_combout\);

-- Location: LCFF_X12_Y9_N19
\DDS1_acc_inc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[19]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(19));

-- Location: LCFF_X12_Y10_N9
\FIFO_value[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => FIFO_value(21),
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(13));

-- Location: LCCOMB_X9_Y10_N10
\DDS1_acc_inc[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[13]~feeder_combout\ = FIFO_value(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(13),
	combout => \DDS1_acc_inc[13]~feeder_combout\);

-- Location: LCFF_X9_Y10_N11
\DDS1_acc_inc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[13]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(13));

-- Location: LCCOMB_X12_Y10_N26
\FIFO_value[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[12]~feeder_combout\ = FIFO_value(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(20),
	combout => \FIFO_value[12]~feeder_combout\);

-- Location: LCFF_X12_Y10_N27
\FIFO_value[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[12]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(12));

-- Location: LCCOMB_X9_Y10_N20
\DDS1_acc_inc[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[12]~feeder_combout\ = FIFO_value(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(12),
	combout => \DDS1_acc_inc[12]~feeder_combout\);

-- Location: LCFF_X9_Y10_N21
\DDS1_acc_inc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[12]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(12));

-- Location: LCCOMB_X12_Y10_N4
\FIFO_value[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[18]~feeder_combout\ = FIFO_value(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(26),
	combout => \FIFO_value[18]~feeder_combout\);

-- Location: LCFF_X12_Y10_N5
\FIFO_value[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[18]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(18));

-- Location: LCFF_X12_Y10_N29
\FIFO_value[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => FIFO_value(18),
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(10));

-- Location: LCCOMB_X9_Y10_N6
\DDS1_acc_inc[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[10]~feeder_combout\ = FIFO_value(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(10),
	combout => \DDS1_acc_inc[10]~feeder_combout\);

-- Location: LCFF_X9_Y10_N7
\DDS1_acc_inc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[10]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(10));

-- Location: LCCOMB_X12_Y10_N22
\FIFO_value[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[25]~feeder_combout\ = \FX2_FD[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FX2_FD[1]~1\,
	combout => \FIFO_value[25]~feeder_combout\);

-- Location: LCFF_X12_Y10_N23
\FIFO_value[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[25]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(25));

-- Location: LCCOMB_X12_Y10_N30
\FIFO_value[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[17]~feeder_combout\ = FIFO_value(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(25),
	combout => \FIFO_value[17]~feeder_combout\);

-- Location: LCFF_X12_Y10_N31
\FIFO_value[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[17]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(17));

-- Location: LCCOMB_X12_Y10_N6
\FIFO_value[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[9]~feeder_combout\ = FIFO_value(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(17),
	combout => \FIFO_value[9]~feeder_combout\);

-- Location: LCFF_X12_Y10_N7
\FIFO_value[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[9]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(9));

-- Location: LCCOMB_X10_Y10_N24
\DDS1_acc_inc[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[9]~feeder_combout\ = FIFO_value(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(9),
	combout => \DDS1_acc_inc[9]~feeder_combout\);

-- Location: LCFF_X10_Y10_N25
\DDS1_acc_inc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[9]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(9));

-- Location: LCCOMB_X8_Y9_N0
\FIFO_value[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[16]~feeder_combout\ = FIFO_value(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(24),
	combout => \FIFO_value[16]~feeder_combout\);

-- Location: LCFF_X8_Y9_N1
\FIFO_value[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[16]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(16));

-- Location: LCCOMB_X8_Y9_N28
\FIFO_value[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[8]~feeder_combout\ = FIFO_value(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(16),
	combout => \FIFO_value[8]~feeder_combout\);

-- Location: LCFF_X8_Y9_N29
\FIFO_value[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[8]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(8));

-- Location: LCCOMB_X10_Y10_N10
\DDS1_acc_inc[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[8]~feeder_combout\ = FIFO_value(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(8),
	combout => \DDS1_acc_inc[8]~feeder_combout\);

-- Location: LCFF_X10_Y10_N11
\DDS1_acc_inc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[8]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(8));

-- Location: LCFF_X8_Y9_N3
\FIFO_value[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => \FX2_FD[6]~6\,
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(30));

-- Location: LCCOMB_X8_Y9_N6
\FIFO_value[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[22]~feeder_combout\ = FIFO_value(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(30),
	combout => \FIFO_value[22]~feeder_combout\);

-- Location: LCFF_X8_Y9_N7
\FIFO_value[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[22]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(22));

-- Location: LCCOMB_X8_Y9_N10
\FIFO_value[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[14]~feeder_combout\ = FIFO_value(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(22),
	combout => \FIFO_value[14]~feeder_combout\);

-- Location: LCFF_X8_Y9_N11
\FIFO_value[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[14]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(14));

-- Location: LCCOMB_X8_Y9_N30
\FIFO_value[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[6]~feeder_combout\ = FIFO_value(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(14),
	combout => \FIFO_value[6]~feeder_combout\);

-- Location: LCFF_X8_Y9_N31
\FIFO_value[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[6]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(6));

-- Location: LCFF_X10_Y10_N21
\DDS1_acc_inc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(6),
	sload => VCC,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(6));

-- Location: LCFF_X12_Y10_N25
\FIFO_value[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	sdata => FIFO_value(13),
	sload => VCC,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(5));

-- Location: LCCOMB_X10_Y10_N22
\DDS1_acc_inc[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[5]~feeder_combout\ = FIFO_value(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(5),
	combout => \DDS1_acc_inc[5]~feeder_combout\);

-- Location: LCFF_X10_Y10_N23
\DDS1_acc_inc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[5]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(5));

-- Location: LCCOMB_X12_Y10_N10
\FIFO_value[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[4]~feeder_combout\ = FIFO_value(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(12),
	combout => \FIFO_value[4]~feeder_combout\);

-- Location: LCFF_X12_Y10_N11
\FIFO_value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[4]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(4));

-- Location: LCCOMB_X10_Y10_N16
\DDS1_acc_inc[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[4]~feeder_combout\ = FIFO_value(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(4),
	combout => \DDS1_acc_inc[4]~feeder_combout\);

-- Location: LCFF_X10_Y10_N17
\DDS1_acc_inc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[4]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(4));

-- Location: LCCOMB_X10_Y9_N6
\FIFO_value[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[11]~feeder_combout\ = FIFO_value(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(19),
	combout => \FIFO_value[11]~feeder_combout\);

-- Location: LCFF_X10_Y9_N7
\FIFO_value[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[11]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(11));

-- Location: LCCOMB_X10_Y9_N2
\FIFO_value[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFO_value[3]~feeder_combout\ = FIFO_value(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(11),
	combout => \FIFO_value[3]~feeder_combout\);

-- Location: LCFF_X10_Y9_N3
\FIFO_value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FX2_CLK~clkctrl_outclk\,
	datain => \FIFO_value[3]~feeder_combout\,
	ena => \FX2_flags~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => FIFO_value(3));

-- Location: LCCOMB_X9_Y9_N22
\DDS1_acc_inc[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS1_acc_inc[3]~feeder_combout\ = FIFO_value(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(3),
	combout => \DDS1_acc_inc[3]~feeder_combout\);

-- Location: LCFF_X9_Y9_N23
\DDS1_acc_inc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS1_acc_inc[3]~feeder_combout\,
	ena => \DDS1_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS1_acc_inc(3));

-- Location: LCCOMB_X10_Y7_N0
\dds_core1|acc[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[0]~32_combout\ = (DDS1_acc_inc(0) & (\dds_core1|acc\(0) $ (VCC))) # (!DDS1_acc_inc(0) & (\dds_core1|acc\(0) & VCC))
-- \dds_core1|acc[0]~33\ = CARRY((DDS1_acc_inc(0) & \dds_core1|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(0),
	datab => \dds_core1|acc\(0),
	datad => VCC,
	combout => \dds_core1|acc[0]~32_combout\,
	cout => \dds_core1|acc[0]~33\);

-- Location: LCFF_X10_Y7_N1
\dds_core1|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(0));

-- Location: LCCOMB_X10_Y7_N2
\dds_core1|acc[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[1]~34_combout\ = (DDS1_acc_inc(1) & ((\dds_core1|acc\(1) & (\dds_core1|acc[0]~33\ & VCC)) # (!\dds_core1|acc\(1) & (!\dds_core1|acc[0]~33\)))) # (!DDS1_acc_inc(1) & ((\dds_core1|acc\(1) & (!\dds_core1|acc[0]~33\)) # (!\dds_core1|acc\(1) & 
-- ((\dds_core1|acc[0]~33\) # (GND)))))
-- \dds_core1|acc[1]~35\ = CARRY((DDS1_acc_inc(1) & (!\dds_core1|acc\(1) & !\dds_core1|acc[0]~33\)) # (!DDS1_acc_inc(1) & ((!\dds_core1|acc[0]~33\) # (!\dds_core1|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(1),
	datab => \dds_core1|acc\(1),
	datad => VCC,
	cin => \dds_core1|acc[0]~33\,
	combout => \dds_core1|acc[1]~34_combout\,
	cout => \dds_core1|acc[1]~35\);

-- Location: LCFF_X10_Y7_N3
\dds_core1|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(1));

-- Location: LCCOMB_X10_Y7_N4
\dds_core1|acc[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[2]~36_combout\ = ((DDS1_acc_inc(2) $ (\dds_core1|acc\(2) $ (!\dds_core1|acc[1]~35\)))) # (GND)
-- \dds_core1|acc[2]~37\ = CARRY((DDS1_acc_inc(2) & ((\dds_core1|acc\(2)) # (!\dds_core1|acc[1]~35\))) # (!DDS1_acc_inc(2) & (\dds_core1|acc\(2) & !\dds_core1|acc[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(2),
	datab => \dds_core1|acc\(2),
	datad => VCC,
	cin => \dds_core1|acc[1]~35\,
	combout => \dds_core1|acc[2]~36_combout\,
	cout => \dds_core1|acc[2]~37\);

-- Location: LCFF_X10_Y7_N5
\dds_core1|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(2));

-- Location: LCCOMB_X10_Y7_N14
\dds_core1|acc[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[7]~46_combout\ = (DDS1_acc_inc(7) & ((\dds_core1|acc\(7) & (\dds_core1|acc[6]~45\ & VCC)) # (!\dds_core1|acc\(7) & (!\dds_core1|acc[6]~45\)))) # (!DDS1_acc_inc(7) & ((\dds_core1|acc\(7) & (!\dds_core1|acc[6]~45\)) # (!\dds_core1|acc\(7) & 
-- ((\dds_core1|acc[6]~45\) # (GND)))))
-- \dds_core1|acc[7]~47\ = CARRY((DDS1_acc_inc(7) & (!\dds_core1|acc\(7) & !\dds_core1|acc[6]~45\)) # (!DDS1_acc_inc(7) & ((!\dds_core1|acc[6]~45\) # (!\dds_core1|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(7),
	datab => \dds_core1|acc\(7),
	datad => VCC,
	cin => \dds_core1|acc[6]~45\,
	combout => \dds_core1|acc[7]~46_combout\,
	cout => \dds_core1|acc[7]~47\);

-- Location: LCFF_X10_Y7_N15
\dds_core1|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(7));

-- Location: LCCOMB_X10_Y7_N22
\dds_core1|acc[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[11]~54_combout\ = (DDS1_acc_inc(11) & ((\dds_core1|acc\(11) & (\dds_core1|acc[10]~53\ & VCC)) # (!\dds_core1|acc\(11) & (!\dds_core1|acc[10]~53\)))) # (!DDS1_acc_inc(11) & ((\dds_core1|acc\(11) & (!\dds_core1|acc[10]~53\)) # 
-- (!\dds_core1|acc\(11) & ((\dds_core1|acc[10]~53\) # (GND)))))
-- \dds_core1|acc[11]~55\ = CARRY((DDS1_acc_inc(11) & (!\dds_core1|acc\(11) & !\dds_core1|acc[10]~53\)) # (!DDS1_acc_inc(11) & ((!\dds_core1|acc[10]~53\) # (!\dds_core1|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(11),
	datab => \dds_core1|acc\(11),
	datad => VCC,
	cin => \dds_core1|acc[10]~53\,
	combout => \dds_core1|acc[11]~54_combout\,
	cout => \dds_core1|acc[11]~55\);

-- Location: LCFF_X10_Y7_N23
\dds_core1|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(11));

-- Location: LCCOMB_X10_Y7_N26
\dds_core1|acc[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[13]~58_combout\ = (\dds_core1|acc\(13) & ((DDS1_acc_inc(13) & (\dds_core1|acc[12]~57\ & VCC)) # (!DDS1_acc_inc(13) & (!\dds_core1|acc[12]~57\)))) # (!\dds_core1|acc\(13) & ((DDS1_acc_inc(13) & (!\dds_core1|acc[12]~57\)) # (!DDS1_acc_inc(13) 
-- & ((\dds_core1|acc[12]~57\) # (GND)))))
-- \dds_core1|acc[13]~59\ = CARRY((\dds_core1|acc\(13) & (!DDS1_acc_inc(13) & !\dds_core1|acc[12]~57\)) # (!\dds_core1|acc\(13) & ((!\dds_core1|acc[12]~57\) # (!DDS1_acc_inc(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(13),
	datab => DDS1_acc_inc(13),
	datad => VCC,
	cin => \dds_core1|acc[12]~57\,
	combout => \dds_core1|acc[13]~58_combout\,
	cout => \dds_core1|acc[13]~59\);

-- Location: LCCOMB_X10_Y7_N28
\dds_core1|acc[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[14]~60_combout\ = ((DDS1_acc_inc(14) $ (\dds_core1|acc\(14) $ (!\dds_core1|acc[13]~59\)))) # (GND)
-- \dds_core1|acc[14]~61\ = CARRY((DDS1_acc_inc(14) & ((\dds_core1|acc\(14)) # (!\dds_core1|acc[13]~59\))) # (!DDS1_acc_inc(14) & (\dds_core1|acc\(14) & !\dds_core1|acc[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(14),
	datab => \dds_core1|acc\(14),
	datad => VCC,
	cin => \dds_core1|acc[13]~59\,
	combout => \dds_core1|acc[14]~60_combout\,
	cout => \dds_core1|acc[14]~61\);

-- Location: LCFF_X10_Y7_N29
\dds_core1|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(14));

-- Location: LCCOMB_X10_Y7_N30
\dds_core1|acc[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[15]~62_combout\ = (DDS1_acc_inc(15) & ((\dds_core1|acc\(15) & (\dds_core1|acc[14]~61\ & VCC)) # (!\dds_core1|acc\(15) & (!\dds_core1|acc[14]~61\)))) # (!DDS1_acc_inc(15) & ((\dds_core1|acc\(15) & (!\dds_core1|acc[14]~61\)) # 
-- (!\dds_core1|acc\(15) & ((\dds_core1|acc[14]~61\) # (GND)))))
-- \dds_core1|acc[15]~63\ = CARRY((DDS1_acc_inc(15) & (!\dds_core1|acc\(15) & !\dds_core1|acc[14]~61\)) # (!DDS1_acc_inc(15) & ((!\dds_core1|acc[14]~61\) # (!\dds_core1|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(15),
	datab => \dds_core1|acc\(15),
	datad => VCC,
	cin => \dds_core1|acc[14]~61\,
	combout => \dds_core1|acc[15]~62_combout\,
	cout => \dds_core1|acc[15]~63\);

-- Location: LCFF_X10_Y7_N31
\dds_core1|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(15));

-- Location: LCCOMB_X10_Y6_N0
\dds_core1|acc[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[16]~64_combout\ = ((DDS1_acc_inc(16) $ (\dds_core1|acc\(16) $ (!\dds_core1|acc[15]~63\)))) # (GND)
-- \dds_core1|acc[16]~65\ = CARRY((DDS1_acc_inc(16) & ((\dds_core1|acc\(16)) # (!\dds_core1|acc[15]~63\))) # (!DDS1_acc_inc(16) & (\dds_core1|acc\(16) & !\dds_core1|acc[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(16),
	datab => \dds_core1|acc\(16),
	datad => VCC,
	cin => \dds_core1|acc[15]~63\,
	combout => \dds_core1|acc[16]~64_combout\,
	cout => \dds_core1|acc[16]~65\);

-- Location: LCFF_X10_Y6_N1
\dds_core1|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(16));

-- Location: LCCOMB_X10_Y6_N2
\dds_core1|acc[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[17]~66_combout\ = (DDS1_acc_inc(17) & ((\dds_core1|acc\(17) & (\dds_core1|acc[16]~65\ & VCC)) # (!\dds_core1|acc\(17) & (!\dds_core1|acc[16]~65\)))) # (!DDS1_acc_inc(17) & ((\dds_core1|acc\(17) & (!\dds_core1|acc[16]~65\)) # 
-- (!\dds_core1|acc\(17) & ((\dds_core1|acc[16]~65\) # (GND)))))
-- \dds_core1|acc[17]~67\ = CARRY((DDS1_acc_inc(17) & (!\dds_core1|acc\(17) & !\dds_core1|acc[16]~65\)) # (!DDS1_acc_inc(17) & ((!\dds_core1|acc[16]~65\) # (!\dds_core1|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(17),
	datab => \dds_core1|acc\(17),
	datad => VCC,
	cin => \dds_core1|acc[16]~65\,
	combout => \dds_core1|acc[17]~66_combout\,
	cout => \dds_core1|acc[17]~67\);

-- Location: LCFF_X10_Y6_N3
\dds_core1|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(17));

-- Location: LCCOMB_X10_Y6_N4
\dds_core1|acc[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[18]~68_combout\ = ((DDS1_acc_inc(18) $ (\dds_core1|acc\(18) $ (!\dds_core1|acc[17]~67\)))) # (GND)
-- \dds_core1|acc[18]~69\ = CARRY((DDS1_acc_inc(18) & ((\dds_core1|acc\(18)) # (!\dds_core1|acc[17]~67\))) # (!DDS1_acc_inc(18) & (\dds_core1|acc\(18) & !\dds_core1|acc[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(18),
	datab => \dds_core1|acc\(18),
	datad => VCC,
	cin => \dds_core1|acc[17]~67\,
	combout => \dds_core1|acc[18]~68_combout\,
	cout => \dds_core1|acc[18]~69\);

-- Location: LCFF_X10_Y6_N5
\dds_core1|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(18));

-- Location: LCCOMB_X10_Y6_N6
\dds_core1|acc[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[19]~70_combout\ = (\dds_core1|acc\(19) & ((DDS1_acc_inc(19) & (\dds_core1|acc[18]~69\ & VCC)) # (!DDS1_acc_inc(19) & (!\dds_core1|acc[18]~69\)))) # (!\dds_core1|acc\(19) & ((DDS1_acc_inc(19) & (!\dds_core1|acc[18]~69\)) # (!DDS1_acc_inc(19) 
-- & ((\dds_core1|acc[18]~69\) # (GND)))))
-- \dds_core1|acc[19]~71\ = CARRY((\dds_core1|acc\(19) & (!DDS1_acc_inc(19) & !\dds_core1|acc[18]~69\)) # (!\dds_core1|acc\(19) & ((!\dds_core1|acc[18]~69\) # (!DDS1_acc_inc(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(19),
	datab => DDS1_acc_inc(19),
	datad => VCC,
	cin => \dds_core1|acc[18]~69\,
	combout => \dds_core1|acc[19]~70_combout\,
	cout => \dds_core1|acc[19]~71\);

-- Location: LCCOMB_X10_Y6_N8
\dds_core1|acc[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[20]~72_combout\ = ((\dds_core1|acc\(20) $ (DDS1_acc_inc(20) $ (!\dds_core1|acc[19]~71\)))) # (GND)
-- \dds_core1|acc[20]~73\ = CARRY((\dds_core1|acc\(20) & ((DDS1_acc_inc(20)) # (!\dds_core1|acc[19]~71\))) # (!\dds_core1|acc\(20) & (DDS1_acc_inc(20) & !\dds_core1|acc[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(20),
	datab => DDS1_acc_inc(20),
	datad => VCC,
	cin => \dds_core1|acc[19]~71\,
	combout => \dds_core1|acc[20]~72_combout\,
	cout => \dds_core1|acc[20]~73\);

-- Location: LCCOMB_X10_Y6_N12
\dds_core1|acc[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[22]~76_combout\ = ((DDS1_acc_inc(22) $ (\dds_core1|acc\(22) $ (!\dds_core1|acc[21]~75\)))) # (GND)
-- \dds_core1|acc[22]~77\ = CARRY((DDS1_acc_inc(22) & ((\dds_core1|acc\(22)) # (!\dds_core1|acc[21]~75\))) # (!DDS1_acc_inc(22) & (\dds_core1|acc\(22) & !\dds_core1|acc[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(22),
	datab => \dds_core1|acc\(22),
	datad => VCC,
	cin => \dds_core1|acc[21]~75\,
	combout => \dds_core1|acc[22]~76_combout\,
	cout => \dds_core1|acc[22]~77\);

-- Location: LCFF_X10_Y6_N13
\dds_core1|acc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(22));

-- Location: LCCOMB_X10_Y6_N14
\dds_core1|acc[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[23]~78_combout\ = (DDS1_acc_inc(23) & ((\dds_core1|acc\(23) & (\dds_core1|acc[22]~77\ & VCC)) # (!\dds_core1|acc\(23) & (!\dds_core1|acc[22]~77\)))) # (!DDS1_acc_inc(23) & ((\dds_core1|acc\(23) & (!\dds_core1|acc[22]~77\)) # 
-- (!\dds_core1|acc\(23) & ((\dds_core1|acc[22]~77\) # (GND)))))
-- \dds_core1|acc[23]~79\ = CARRY((DDS1_acc_inc(23) & (!\dds_core1|acc\(23) & !\dds_core1|acc[22]~77\)) # (!DDS1_acc_inc(23) & ((!\dds_core1|acc[22]~77\) # (!\dds_core1|acc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(23),
	datab => \dds_core1|acc\(23),
	datad => VCC,
	cin => \dds_core1|acc[22]~77\,
	combout => \dds_core1|acc[23]~78_combout\,
	cout => \dds_core1|acc[23]~79\);

-- Location: LCFF_X10_Y6_N15
\dds_core1|acc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(23));

-- Location: LCCOMB_X10_Y6_N16
\dds_core1|acc[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[24]~80_combout\ = ((\dds_core1|acc\(24) $ (DDS1_acc_inc(24) $ (!\dds_core1|acc[23]~79\)))) # (GND)
-- \dds_core1|acc[24]~81\ = CARRY((\dds_core1|acc\(24) & ((DDS1_acc_inc(24)) # (!\dds_core1|acc[23]~79\))) # (!\dds_core1|acc\(24) & (DDS1_acc_inc(24) & !\dds_core1|acc[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(24),
	datab => DDS1_acc_inc(24),
	datad => VCC,
	cin => \dds_core1|acc[23]~79\,
	combout => \dds_core1|acc[24]~80_combout\,
	cout => \dds_core1|acc[24]~81\);

-- Location: LCCOMB_X10_Y6_N18
\dds_core1|acc[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[25]~82_combout\ = (DDS1_acc_inc(25) & ((\dds_core1|acc\(25) & (\dds_core1|acc[24]~81\ & VCC)) # (!\dds_core1|acc\(25) & (!\dds_core1|acc[24]~81\)))) # (!DDS1_acc_inc(25) & ((\dds_core1|acc\(25) & (!\dds_core1|acc[24]~81\)) # 
-- (!\dds_core1|acc\(25) & ((\dds_core1|acc[24]~81\) # (GND)))))
-- \dds_core1|acc[25]~83\ = CARRY((DDS1_acc_inc(25) & (!\dds_core1|acc\(25) & !\dds_core1|acc[24]~81\)) # (!DDS1_acc_inc(25) & ((!\dds_core1|acc[24]~81\) # (!\dds_core1|acc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(25),
	datab => \dds_core1|acc\(25),
	datad => VCC,
	cin => \dds_core1|acc[24]~81\,
	combout => \dds_core1|acc[25]~82_combout\,
	cout => \dds_core1|acc[25]~83\);

-- Location: LCFF_X10_Y6_N19
\dds_core1|acc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(25));

-- Location: LCCOMB_X10_Y6_N20
\dds_core1|acc[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[26]~84_combout\ = ((\dds_core1|acc\(26) $ (DDS1_acc_inc(26) $ (!\dds_core1|acc[25]~83\)))) # (GND)
-- \dds_core1|acc[26]~85\ = CARRY((\dds_core1|acc\(26) & ((DDS1_acc_inc(26)) # (!\dds_core1|acc[25]~83\))) # (!\dds_core1|acc\(26) & (DDS1_acc_inc(26) & !\dds_core1|acc[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(26),
	datab => DDS1_acc_inc(26),
	datad => VCC,
	cin => \dds_core1|acc[25]~83\,
	combout => \dds_core1|acc[26]~84_combout\,
	cout => \dds_core1|acc[26]~85\);

-- Location: LCCOMB_X10_Y6_N22
\dds_core1|acc[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[27]~86_combout\ = (DDS1_acc_inc(27) & ((\dds_core1|acc\(27) & (\dds_core1|acc[26]~85\ & VCC)) # (!\dds_core1|acc\(27) & (!\dds_core1|acc[26]~85\)))) # (!DDS1_acc_inc(27) & ((\dds_core1|acc\(27) & (!\dds_core1|acc[26]~85\)) # 
-- (!\dds_core1|acc\(27) & ((\dds_core1|acc[26]~85\) # (GND)))))
-- \dds_core1|acc[27]~87\ = CARRY((DDS1_acc_inc(27) & (!\dds_core1|acc\(27) & !\dds_core1|acc[26]~85\)) # (!DDS1_acc_inc(27) & ((!\dds_core1|acc[26]~85\) # (!\dds_core1|acc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(27),
	datab => \dds_core1|acc\(27),
	datad => VCC,
	cin => \dds_core1|acc[26]~85\,
	combout => \dds_core1|acc[27]~86_combout\,
	cout => \dds_core1|acc[27]~87\);

-- Location: LCFF_X10_Y6_N23
\dds_core1|acc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(27));

-- Location: LCCOMB_X10_Y6_N24
\dds_core1|acc[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[28]~88_combout\ = ((\dds_core1|acc\(28) $ (DDS1_acc_inc(28) $ (!\dds_core1|acc[27]~87\)))) # (GND)
-- \dds_core1|acc[28]~89\ = CARRY((\dds_core1|acc\(28) & ((DDS1_acc_inc(28)) # (!\dds_core1|acc[27]~87\))) # (!\dds_core1|acc\(28) & (DDS1_acc_inc(28) & !\dds_core1|acc[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(28),
	datab => DDS1_acc_inc(28),
	datad => VCC,
	cin => \dds_core1|acc[27]~87\,
	combout => \dds_core1|acc[28]~88_combout\,
	cout => \dds_core1|acc[28]~89\);

-- Location: LCCOMB_X10_Y6_N26
\dds_core1|acc[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[29]~90_combout\ = (DDS1_acc_inc(29) & ((\dds_core1|acc\(29) & (\dds_core1|acc[28]~89\ & VCC)) # (!\dds_core1|acc\(29) & (!\dds_core1|acc[28]~89\)))) # (!DDS1_acc_inc(29) & ((\dds_core1|acc\(29) & (!\dds_core1|acc[28]~89\)) # 
-- (!\dds_core1|acc\(29) & ((\dds_core1|acc[28]~89\) # (GND)))))
-- \dds_core1|acc[29]~91\ = CARRY((DDS1_acc_inc(29) & (!\dds_core1|acc\(29) & !\dds_core1|acc[28]~89\)) # (!DDS1_acc_inc(29) & ((!\dds_core1|acc[28]~89\) # (!\dds_core1|acc\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(29),
	datab => \dds_core1|acc\(29),
	datad => VCC,
	cin => \dds_core1|acc[28]~89\,
	combout => \dds_core1|acc[29]~90_combout\,
	cout => \dds_core1|acc[29]~91\);

-- Location: LCFF_X10_Y6_N27
\dds_core1|acc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(29));

-- Location: LCCOMB_X10_Y6_N28
\dds_core1|acc[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[30]~92_combout\ = ((DDS1_acc_inc(30) $ (\dds_core1|acc\(30) $ (!\dds_core1|acc[29]~91\)))) # (GND)
-- \dds_core1|acc[30]~93\ = CARRY((DDS1_acc_inc(30) & ((\dds_core1|acc\(30)) # (!\dds_core1|acc[29]~91\))) # (!DDS1_acc_inc(30) & (\dds_core1|acc\(30) & !\dds_core1|acc[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS1_acc_inc(30),
	datab => \dds_core1|acc\(30),
	datad => VCC,
	cin => \dds_core1|acc[29]~91\,
	combout => \dds_core1|acc[30]~92_combout\,
	cout => \dds_core1|acc[30]~93\);

-- Location: LCFF_X10_Y6_N29
\dds_core1|acc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(30));

-- Location: LCCOMB_X10_Y6_N30
\dds_core1|acc[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc[31]~94_combout\ = \dds_core1|acc[30]~93\ $ (\dds_core1|acc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(31),
	cin => \dds_core1|acc[30]~93\,
	combout => \dds_core1|acc[31]~94_combout\);

-- Location: LCFF_X10_Y6_N31
\dds_core1|acc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(31));

-- Location: LCFF_X10_Y6_N25
\dds_core1|acc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(28));

-- Location: LCCOMB_X12_Y5_N8
\dds_core1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~0_combout\ = \dds_core1|acc\(21) $ (VCC)
-- \dds_core1|Add1~1\ = CARRY(\dds_core1|acc\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(21),
	datad => VCC,
	combout => \dds_core1|Add1~0_combout\,
	cout => \dds_core1|Add1~1\);

-- Location: LCCOMB_X12_Y5_N10
\dds_core1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~2_combout\ = (\dds_core1|acc\(22) & (!\dds_core1|Add1~1\)) # (!\dds_core1|acc\(22) & ((\dds_core1|Add1~1\) # (GND)))
-- \dds_core1|Add1~3\ = CARRY((!\dds_core1|Add1~1\) # (!\dds_core1|acc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(22),
	datad => VCC,
	cin => \dds_core1|Add1~1\,
	combout => \dds_core1|Add1~2_combout\,
	cout => \dds_core1|Add1~3\);

-- Location: LCCOMB_X12_Y5_N12
\dds_core1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~4_combout\ = (\dds_core1|acc\(23) & (\dds_core1|Add1~3\ $ (GND))) # (!\dds_core1|acc\(23) & (!\dds_core1|Add1~3\ & VCC))
-- \dds_core1|Add1~5\ = CARRY((\dds_core1|acc\(23) & !\dds_core1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(23),
	datad => VCC,
	cin => \dds_core1|Add1~3\,
	combout => \dds_core1|Add1~4_combout\,
	cout => \dds_core1|Add1~5\);

-- Location: LCCOMB_X12_Y5_N14
\dds_core1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~6_combout\ = (\dds_core1|acc\(24) & (!\dds_core1|Add1~5\)) # (!\dds_core1|acc\(24) & ((\dds_core1|Add1~5\) # (GND)))
-- \dds_core1|Add1~7\ = CARRY((!\dds_core1|Add1~5\) # (!\dds_core1|acc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(24),
	datad => VCC,
	cin => \dds_core1|Add1~5\,
	combout => \dds_core1|Add1~6_combout\,
	cout => \dds_core1|Add1~7\);

-- Location: LCCOMB_X12_Y5_N16
\dds_core1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~8_combout\ = (\dds_core1|acc\(25) & (\dds_core1|Add1~7\ $ (GND))) # (!\dds_core1|acc\(25) & (!\dds_core1|Add1~7\ & VCC))
-- \dds_core1|Add1~9\ = CARRY((\dds_core1|acc\(25) & !\dds_core1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(25),
	datad => VCC,
	cin => \dds_core1|Add1~7\,
	combout => \dds_core1|Add1~8_combout\,
	cout => \dds_core1|Add1~9\);

-- Location: LCCOMB_X12_Y5_N18
\dds_core1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~10_combout\ = (\dds_core1|acc\(26) & (!\dds_core1|Add1~9\)) # (!\dds_core1|acc\(26) & ((\dds_core1|Add1~9\) # (GND)))
-- \dds_core1|Add1~11\ = CARRY((!\dds_core1|Add1~9\) # (!\dds_core1|acc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(26),
	datad => VCC,
	cin => \dds_core1|Add1~9\,
	combout => \dds_core1|Add1~10_combout\,
	cout => \dds_core1|Add1~11\);

-- Location: LCCOMB_X12_Y5_N22
\dds_core1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~14_combout\ = (\dds_core1|acc\(28) & (!\dds_core1|Add1~13\)) # (!\dds_core1|acc\(28) & ((\dds_core1|Add1~13\) # (GND)))
-- \dds_core1|Add1~15\ = CARRY((!\dds_core1|Add1~13\) # (!\dds_core1|acc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(28),
	datad => VCC,
	cin => \dds_core1|Add1~13\,
	combout => \dds_core1|Add1~14_combout\,
	cout => \dds_core1|Add1~15\);

-- Location: LCCOMB_X12_Y5_N24
\dds_core1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~16_combout\ = (\dds_core1|acc\(29) & (\dds_core1|Add1~15\ $ (GND))) # (!\dds_core1|acc\(29) & (!\dds_core1|Add1~15\ & VCC))
-- \dds_core1|Add1~17\ = CARRY((\dds_core1|acc\(29) & !\dds_core1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(29),
	datad => VCC,
	cin => \dds_core1|Add1~15\,
	combout => \dds_core1|Add1~16_combout\,
	cout => \dds_core1|Add1~17\);

-- Location: LCCOMB_X12_Y5_N26
\dds_core1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~18_combout\ = (\dds_core1|acc\(30) & (!\dds_core1|Add1~17\)) # (!\dds_core1|acc\(30) & ((\dds_core1|Add1~17\) # (GND)))
-- \dds_core1|Add1~19\ = CARRY((!\dds_core1|Add1~17\) # (!\dds_core1|acc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(30),
	datad => VCC,
	cin => \dds_core1|Add1~17\,
	combout => \dds_core1|Add1~18_combout\,
	cout => \dds_core1|Add1~19\);

-- Location: LCCOMB_X12_Y5_N28
\dds_core1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add1~20_combout\ = \dds_core1|Add1~19\ $ (!\dds_core1|acc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(31),
	cin => \dds_core1|Add1~19\,
	combout => \dds_core1|Add1~20_combout\);

-- Location: LCFF_X12_Y5_N29
\dds_core1|sine2|addr_MSBdelay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine2|addr_MSBdelay\(0));

-- Location: LCFF_X12_Y5_N31
\dds_core1|sine2|addr_MSBdelay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|sine2|addr_MSBdelay\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine2|addr_MSBdelay\(1));

-- Location: LCCOMB_X22_Y5_N8
\dds_core1|sine2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~0_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~0_combout\,
	combout => \dds_core1|sine2|comb~0_combout\);

-- Location: LCCOMB_X22_Y5_N10
\dds_core1|sine2|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~1_combout\ = \dds_core1|Add1~2_combout\ $ (\dds_core1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|Add1~2_combout\,
	datac => \dds_core1|Add1~18_combout\,
	combout => \dds_core1|sine2|comb~1_combout\);

-- Location: LCCOMB_X22_Y5_N4
\dds_core1|sine2|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~2_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~4_combout\,
	combout => \dds_core1|sine2|comb~2_combout\);

-- Location: LCCOMB_X22_Y5_N30
\dds_core1|sine2|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~3_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~6_combout\,
	combout => \dds_core1|sine2|comb~3_combout\);

-- Location: LCCOMB_X22_Y5_N16
\dds_core1|sine2|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~4_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~8_combout\,
	combout => \dds_core1|sine2|comb~4_combout\);

-- Location: LCCOMB_X22_Y5_N18
\dds_core1|sine2|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~5_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~10_combout\,
	combout => \dds_core1|sine2|comb~5_combout\);

-- Location: LCCOMB_X22_Y5_N20
\dds_core1|sine2|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~6_combout\ = \dds_core1|Add1~12_combout\ $ (\dds_core1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Add1~12_combout\,
	datac => \dds_core1|Add1~18_combout\,
	combout => \dds_core1|sine2|comb~6_combout\);

-- Location: LCCOMB_X22_Y5_N22
\dds_core1|sine2|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~7_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~14_combout\,
	combout => \dds_core1|sine2|comb~7_combout\);

-- Location: LCCOMB_X22_Y5_N24
\dds_core1|sine2|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|comb~8_combout\ = \dds_core1|Add1~18_combout\ $ (\dds_core1|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|Add1~18_combout\,
	datad => \dds_core1|Add1~16_combout\,
	combout => \dds_core1|sine2|comb~8_combout\);

-- Location: LCCOMB_X12_Y5_N6
\dds_core1|sine2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|Add0~2_combout\ = \dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0),
	combout => \dds_core1|sine2|Add0~2_combout\);

-- Location: LCCOMB_X20_Y10_N0
\dds_core1|sine2|value[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[0]~16_combout\ = (\dds_core1|sine2|addr_MSBdelay\(1) & (\dds_core1|sine2|Add0~2_combout\ $ (VCC))) # (!\dds_core1|sine2|addr_MSBdelay\(1) & (\dds_core1|sine2|Add0~2_combout\ & VCC))
-- \dds_core1|sine2|value[0]~17\ = CARRY((\dds_core1|sine2|addr_MSBdelay\(1) & \dds_core1|sine2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|Add0~2_combout\,
	datad => VCC,
	combout => \dds_core1|sine2|value[0]~16_combout\,
	cout => \dds_core1|sine2|value[0]~17\);

-- Location: LCCOMB_X20_Y10_N2
\dds_core1|sine2|value[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[1]~18_combout\ = (\dds_core1|sine2|value[0]~17\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ ((!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))))) # (!\dds_core1|sine2|value[0]~17\ & 
-- ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (GND)))
-- \dds_core1|sine2|value[1]~19\ = CARRY((\dds_core1|sine2|addr_MSBdelay\(1) $ (!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (!\dds_core1|sine2|value[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[0]~17\,
	combout => \dds_core1|sine2|value[1]~18_combout\,
	cout => \dds_core1|sine2|value[1]~19\);

-- Location: LCCOMB_X20_Y10_N4
\dds_core1|sine2|value[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[2]~20_combout\ = (\dds_core1|sine2|value[1]~19\ & ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2))))) # (!\dds_core1|sine2|value[1]~19\ & 
-- (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (VCC))))
-- \dds_core1|sine2|value[2]~21\ = CARRY((!\dds_core1|sine2|value[1]~19\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2),
	datad => VCC,
	cin => \dds_core1|sine2|value[1]~19\,
	combout => \dds_core1|sine2|value[2]~20_combout\,
	cout => \dds_core1|sine2|value[2]~21\);

-- Location: LCCOMB_X20_Y10_N6
\dds_core1|sine2|value[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[3]~22_combout\ = (\dds_core1|sine2|value[2]~21\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ ((!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))))) # (!\dds_core1|sine2|value[2]~21\ & 
-- ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (GND)))
-- \dds_core1|sine2|value[3]~23\ = CARRY((\dds_core1|sine2|addr_MSBdelay\(1) $ (!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (!\dds_core1|sine2|value[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3),
	datad => VCC,
	cin => \dds_core1|sine2|value[2]~21\,
	combout => \dds_core1|sine2|value[3]~22_combout\,
	cout => \dds_core1|sine2|value[3]~23\);

-- Location: LCCOMB_X20_Y10_N8
\dds_core1|sine2|value[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[4]~24_combout\ = (\dds_core1|sine2|value[3]~23\ & ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4))))) # (!\dds_core1|sine2|value[3]~23\ & 
-- (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (VCC))))
-- \dds_core1|sine2|value[4]~25\ = CARRY((!\dds_core1|sine2|value[3]~23\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4),
	datad => VCC,
	cin => \dds_core1|sine2|value[3]~23\,
	combout => \dds_core1|sine2|value[4]~24_combout\,
	cout => \dds_core1|sine2|value[4]~25\);

-- Location: LCCOMB_X20_Y10_N10
\dds_core1|sine2|value[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[5]~26_combout\ = (\dds_core1|sine2|value[4]~25\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ ((!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))))) # (!\dds_core1|sine2|value[4]~25\ & 
-- ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (GND)))
-- \dds_core1|sine2|value[5]~27\ = CARRY((\dds_core1|sine2|addr_MSBdelay\(1) $ (!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (!\dds_core1|sine2|value[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5),
	datad => VCC,
	cin => \dds_core1|sine2|value[4]~25\,
	combout => \dds_core1|sine2|value[5]~26_combout\,
	cout => \dds_core1|sine2|value[5]~27\);

-- Location: LCCOMB_X20_Y10_N12
\dds_core1|sine2|value[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[6]~28_combout\ = (\dds_core1|sine2|value[5]~27\ & ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[5]~27\ & 
-- (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core1|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine2|value[6]~29\ = CARRY((!\dds_core1|sine2|value[5]~27\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core1|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[5]~27\,
	combout => \dds_core1|sine2|value[6]~28_combout\,
	cout => \dds_core1|sine2|value[6]~29\);

-- Location: LCCOMB_X20_Y10_N14
\dds_core1|sine2|value[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[7]~30_combout\ = (\dds_core1|sine2|value[6]~29\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ ((!\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[6]~29\ & 
-- ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (\dds_core1|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine2|value[7]~31\ = CARRY((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (!\dds_core1|sine2|addr_MSBdelay\(1))) # (!\dds_core1|sine2|value[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[6]~29\,
	combout => \dds_core1|sine2|value[7]~30_combout\,
	cout => \dds_core1|sine2|value[7]~31\);

-- Location: LCCOMB_X20_Y10_N16
\dds_core1|sine2|value[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[8]~32_combout\ = (\dds_core1|sine2|value[7]~31\ & ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8))))) # (!\dds_core1|sine2|value[7]~31\ & 
-- (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) $ (VCC))))
-- \dds_core1|sine2|value[8]~33\ = CARRY((!\dds_core1|sine2|value[7]~31\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8),
	datad => VCC,
	cin => \dds_core1|sine2|value[7]~31\,
	combout => \dds_core1|sine2|value[8]~32_combout\,
	cout => \dds_core1|sine2|value[8]~33\);

-- Location: LCCOMB_X20_Y10_N18
\dds_core1|sine2|value[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[9]~34_combout\ = (\dds_core1|sine2|value[8]~33\ & (\dds_core1|sine2|addr_MSBdelay\(1) $ ((!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))))) # (!\dds_core1|sine2|value[8]~33\ & 
-- ((\dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (GND)))
-- \dds_core1|sine2|value[9]~35\ = CARRY((\dds_core1|sine2|addr_MSBdelay\(1) $ (!\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (!\dds_core1|sine2|value[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datab => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9),
	datad => VCC,
	cin => \dds_core1|sine2|value[8]~33\,
	combout => \dds_core1|sine2|value[9]~34_combout\,
	cout => \dds_core1|sine2|value[9]~35\);

-- Location: LCCOMB_X20_Y10_N20
\dds_core1|sine2|value[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[10]~36_combout\ = (\dds_core1|sine2|value[9]~35\ & ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[9]~35\ & 
-- (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine2|value[10]~37\ = CARRY((!\dds_core1|sine2|value[9]~35\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[9]~35\,
	combout => \dds_core1|sine2|value[10]~36_combout\,
	cout => \dds_core1|sine2|value[10]~37\);

-- Location: LCCOMB_X20_Y10_N22
\dds_core1|sine2|value[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[11]~38_combout\ = (\dds_core1|sine2|value[10]~37\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ ((!\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[10]~37\ & 
-- ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (\dds_core1|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine2|value[11]~39\ = CARRY((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (!\dds_core1|sine2|addr_MSBdelay\(1))) # (!\dds_core1|sine2|value[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[10]~37\,
	combout => \dds_core1|sine2|value[11]~38_combout\,
	cout => \dds_core1|sine2|value[11]~39\);

-- Location: LCCOMB_X20_Y10_N24
\dds_core1|sine2|value[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[12]~40_combout\ = (\dds_core1|sine2|value[11]~39\ & ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[11]~39\ & 
-- (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine2|value[12]~41\ = CARRY((!\dds_core1|sine2|value[11]~39\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[11]~39\,
	combout => \dds_core1|sine2|value[12]~40_combout\,
	cout => \dds_core1|sine2|value[12]~41\);

-- Location: LCCOMB_X20_Y10_N26
\dds_core1|sine2|value[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[13]~42_combout\ = (\dds_core1|sine2|value[12]~41\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ ((!\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[12]~41\ & 
-- ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (\dds_core1|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine2|value[13]~43\ = CARRY((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (!\dds_core1|sine2|addr_MSBdelay\(1))) # (!\dds_core1|sine2|value[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[12]~41\,
	combout => \dds_core1|sine2|value[13]~42_combout\,
	cout => \dds_core1|sine2|value[13]~43\);

-- Location: LCCOMB_X20_Y10_N28
\dds_core1|sine2|value[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[14]~44_combout\ = (\dds_core1|sine2|value[13]~43\ & ((\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine2|addr_MSBdelay\(1))))) # (!\dds_core1|sine2|value[13]~43\ & 
-- (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine2|value[14]~45\ = CARRY((!\dds_core1|sine2|value[13]~43\ & (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14),
	datab => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine2|value[13]~43\,
	combout => \dds_core1|sine2|value[14]~44_combout\,
	cout => \dds_core1|sine2|value[14]~45\);

-- Location: LCCOMB_X20_Y10_N30
\dds_core1|sine2|value[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine2|value[15]~46_combout\ = \dds_core1|sine2|addr_MSBdelay\(1) $ (\dds_core1|sine2|value[14]~45\ $ (\dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine2|addr_MSBdelay\(1),
	datad => \dds_core1|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15),
	cin => \dds_core1|sine2|value[14]~45\,
	combout => \dds_core1|sine2|value[15]~46_combout\);

-- Location: LCFF_X10_Y7_N27
\dds_core1|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(13));

-- Location: LCCOMB_X14_Y8_N2
\dds_core1|acc_delayA[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[0]~feeder_combout\ = \dds_core1|acc\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(13),
	combout => \dds_core1|acc_delayA[0]~feeder_combout\);

-- Location: LCFF_X14_Y8_N3
\dds_core1|acc_delayA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(0));

-- Location: LCFF_X17_Y11_N5
\dds_core1|acc_delayB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayA\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(0));

-- Location: LCCOMB_X14_Y8_N12
\dds_core1|acc_delayA[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[1]~feeder_combout\ = \dds_core1|acc\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(14),
	combout => \dds_core1|acc_delayA[1]~feeder_combout\);

-- Location: LCFF_X14_Y8_N13
\dds_core1|acc_delayA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(1));

-- Location: LCCOMB_X17_Y11_N24
\dds_core1|acc_delayB[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayB[1]~feeder_combout\ = \dds_core1|acc_delayA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc_delayA\(1),
	combout => \dds_core1|acc_delayB[1]~feeder_combout\);

-- Location: LCFF_X17_Y11_N25
\dds_core1|acc_delayB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(1));

-- Location: LCCOMB_X14_Y8_N22
\dds_core1|acc_delayA[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[2]~feeder_combout\ = \dds_core1|acc\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(15),
	combout => \dds_core1|acc_delayA[2]~feeder_combout\);

-- Location: LCFF_X14_Y8_N23
\dds_core1|acc_delayA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(2));

-- Location: LCCOMB_X17_Y11_N30
\dds_core1|acc_delayB[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayB[2]~feeder_combout\ = \dds_core1|acc_delayA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc_delayA\(2),
	combout => \dds_core1|acc_delayB[2]~feeder_combout\);

-- Location: LCFF_X17_Y11_N31
\dds_core1|acc_delayB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(2));

-- Location: LCCOMB_X14_Y8_N24
\dds_core1|acc_delayA[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[3]~feeder_combout\ = \dds_core1|acc\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(16),
	combout => \dds_core1|acc_delayA[3]~feeder_combout\);

-- Location: LCFF_X14_Y8_N25
\dds_core1|acc_delayA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(3));

-- Location: LCFF_X14_Y8_N17
\dds_core1|acc_delayB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayA\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(3));

-- Location: LCCOMB_X14_Y8_N26
\dds_core1|acc_delayA[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[4]~feeder_combout\ = \dds_core1|acc\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(17),
	combout => \dds_core1|acc_delayA[4]~feeder_combout\);

-- Location: LCFF_X14_Y8_N27
\dds_core1|acc_delayA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(4));

-- Location: LCFF_X17_Y11_N27
\dds_core1|acc_delayB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayA\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(4));

-- Location: LCFF_X14_Y8_N21
\dds_core1|acc_delayA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(5));

-- Location: LCCOMB_X17_Y11_N2
\dds_core1|acc_delayB[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayB[5]~feeder_combout\ = \dds_core1|acc_delayA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc_delayA\(5),
	combout => \dds_core1|acc_delayB[5]~feeder_combout\);

-- Location: LCFF_X17_Y11_N3
\dds_core1|acc_delayB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayB[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(5));

-- Location: LCFF_X10_Y6_N7
\dds_core1|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(19));

-- Location: LCFF_X14_Y8_N7
\dds_core1|acc_delayA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(6));

-- Location: LCCOMB_X17_Y11_N28
\dds_core1|acc_delayB[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayB[6]~feeder_combout\ = \dds_core1|acc_delayA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc_delayA\(6),
	combout => \dds_core1|acc_delayB[6]~feeder_combout\);

-- Location: LCFF_X17_Y11_N29
\dds_core1|acc_delayB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayB[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(6));

-- Location: LCFF_X10_Y6_N9
\dds_core1|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(20));

-- Location: LCCOMB_X14_Y8_N0
\dds_core1|acc_delayA[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|acc_delayA[7]~feeder_combout\ = \dds_core1|acc\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|acc\(20),
	combout => \dds_core1|acc_delayA[7]~feeder_combout\);

-- Location: LCFF_X14_Y8_N1
\dds_core1|acc_delayA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc_delayA[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayA\(7));

-- Location: LCFF_X17_Y11_N23
\dds_core1|acc_delayB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayA\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayB\(7));

-- Location: DSPMULT_X16_Y10_N0
\dds_core1|Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \DAC_clk_in~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \dds_core1|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \dds_core1|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X12_Y5_N30
\dds_core1|sine1|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~0_combout\ = \dds_core1|acc\(21) $ (\dds_core1|acc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(21),
	datad => \dds_core1|acc\(30),
	combout => \dds_core1|sine1|comb~0_combout\);

-- Location: LCCOMB_X12_Y5_N4
\dds_core1|sine1|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~1_combout\ = \dds_core1|acc\(30) $ (\dds_core1|acc\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(30),
	datad => \dds_core1|acc\(22),
	combout => \dds_core1|sine1|comb~1_combout\);

-- Location: LCCOMB_X12_Y6_N24
\dds_core1|sine1|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~2_combout\ = \dds_core1|acc\(30) $ (\dds_core1|acc\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(30),
	datad => \dds_core1|acc\(23),
	combout => \dds_core1|sine1|comb~2_combout\);

-- Location: LCFF_X10_Y6_N17
\dds_core1|acc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(24));

-- Location: LCCOMB_X12_Y6_N26
\dds_core1|sine1|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~3_combout\ = \dds_core1|acc\(30) $ (\dds_core1|acc\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(30),
	datad => \dds_core1|acc\(24),
	combout => \dds_core1|sine1|comb~3_combout\);

-- Location: LCCOMB_X12_Y5_N2
\dds_core1|sine1|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~4_combout\ = \dds_core1|acc\(30) $ (\dds_core1|acc\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc\(30),
	datad => \dds_core1|acc\(25),
	combout => \dds_core1|sine1|comb~4_combout\);

-- Location: LCFF_X10_Y6_N21
\dds_core1|acc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|acc[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc\(26));

-- Location: LCCOMB_X12_Y6_N12
\dds_core1|sine1|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~5_combout\ = \dds_core1|acc\(30) $ (\dds_core1|acc\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc\(30),
	datad => \dds_core1|acc\(26),
	combout => \dds_core1|sine1|comb~5_combout\);

-- Location: LCCOMB_X12_Y6_N22
\dds_core1|sine1|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~6_combout\ = \dds_core1|acc\(27) $ (\dds_core1|acc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|acc\(27),
	datad => \dds_core1|acc\(30),
	combout => \dds_core1|sine1|comb~6_combout\);

-- Location: LCCOMB_X12_Y5_N0
\dds_core1|sine1|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~7_combout\ = \dds_core1|acc\(28) $ (\dds_core1|acc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|acc\(28),
	datad => \dds_core1|acc\(30),
	combout => \dds_core1|sine1|comb~7_combout\);

-- Location: LCCOMB_X12_Y6_N0
\dds_core1|sine1|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|comb~8_combout\ = \dds_core1|acc\(29) $ (\dds_core1|acc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core1|acc\(29),
	datad => \dds_core1|acc\(30),
	combout => \dds_core1|sine1|comb~8_combout\);

-- Location: LCFF_X13_Y8_N19
\dds_core1|sine1|addr_MSBdelay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine1|addr_MSBdelay\(0));

-- Location: LCCOMB_X13_Y8_N0
\dds_core1|sine1|addr_MSBdelay[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|addr_MSBdelay[1]~feeder_combout\ = \dds_core1|sine1|addr_MSBdelay\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core1|sine1|addr_MSBdelay\(0),
	combout => \dds_core1|sine1|addr_MSBdelay[1]~feeder_combout\);

-- Location: LCFF_X13_Y8_N1
\dds_core1|sine1|addr_MSBdelay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine1|addr_MSBdelay[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine1|addr_MSBdelay\(1));

-- Location: LCCOMB_X13_Y8_N18
\dds_core1|sine1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|Add0~2_combout\ = \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0) $ (\dds_core1|sine1|addr_MSBdelay\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0),
	datad => \dds_core1|sine1|addr_MSBdelay\(1),
	combout => \dds_core1|sine1|Add0~2_combout\);

-- Location: LCCOMB_X14_Y9_N0
\dds_core1|sine1|value[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[0]~16_combout\ = (\dds_core1|sine1|addr_MSBdelay\(1) & (\dds_core1|sine1|Add0~2_combout\ $ (VCC))) # (!\dds_core1|sine1|addr_MSBdelay\(1) & (\dds_core1|sine1|Add0~2_combout\ & VCC))
-- \dds_core1|sine1|value[0]~17\ = CARRY((\dds_core1|sine1|addr_MSBdelay\(1) & \dds_core1|sine1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|Add0~2_combout\,
	datad => VCC,
	combout => \dds_core1|sine1|value[0]~16_combout\,
	cout => \dds_core1|sine1|value[0]~17\);

-- Location: LCCOMB_X14_Y9_N2
\dds_core1|sine1|value[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[1]~18_combout\ = (\dds_core1|sine1|value[0]~17\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ ((!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))))) # (!\dds_core1|sine1|value[0]~17\ & 
-- ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (GND)))
-- \dds_core1|sine1|value[1]~19\ = CARRY((\dds_core1|sine1|addr_MSBdelay\(1) $ (!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (!\dds_core1|sine1|value[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[0]~17\,
	combout => \dds_core1|sine1|value[1]~18_combout\,
	cout => \dds_core1|sine1|value[1]~19\);

-- Location: LCCOMB_X14_Y9_N4
\dds_core1|sine1|value[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[2]~20_combout\ = (\dds_core1|sine1|value[1]~19\ & ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2))))) # (!\dds_core1|sine1|value[1]~19\ & 
-- (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (VCC))))
-- \dds_core1|sine1|value[2]~21\ = CARRY((!\dds_core1|sine1|value[1]~19\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2),
	datad => VCC,
	cin => \dds_core1|sine1|value[1]~19\,
	combout => \dds_core1|sine1|value[2]~20_combout\,
	cout => \dds_core1|sine1|value[2]~21\);

-- Location: LCCOMB_X14_Y9_N6
\dds_core1|sine1|value[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[3]~22_combout\ = (\dds_core1|sine1|value[2]~21\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ ((!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))))) # (!\dds_core1|sine1|value[2]~21\ & 
-- ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (GND)))
-- \dds_core1|sine1|value[3]~23\ = CARRY((\dds_core1|sine1|addr_MSBdelay\(1) $ (!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (!\dds_core1|sine1|value[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3),
	datad => VCC,
	cin => \dds_core1|sine1|value[2]~21\,
	combout => \dds_core1|sine1|value[3]~22_combout\,
	cout => \dds_core1|sine1|value[3]~23\);

-- Location: LCCOMB_X14_Y9_N8
\dds_core1|sine1|value[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[4]~24_combout\ = (\dds_core1|sine1|value[3]~23\ & ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4))))) # (!\dds_core1|sine1|value[3]~23\ & 
-- (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (VCC))))
-- \dds_core1|sine1|value[4]~25\ = CARRY((!\dds_core1|sine1|value[3]~23\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4),
	datad => VCC,
	cin => \dds_core1|sine1|value[3]~23\,
	combout => \dds_core1|sine1|value[4]~24_combout\,
	cout => \dds_core1|sine1|value[4]~25\);

-- Location: LCCOMB_X14_Y9_N10
\dds_core1|sine1|value[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[5]~26_combout\ = (\dds_core1|sine1|value[4]~25\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ ((!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))))) # (!\dds_core1|sine1|value[4]~25\ & 
-- ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (GND)))
-- \dds_core1|sine1|value[5]~27\ = CARRY((\dds_core1|sine1|addr_MSBdelay\(1) $ (!\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (!\dds_core1|sine1|value[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5),
	datad => VCC,
	cin => \dds_core1|sine1|value[4]~25\,
	combout => \dds_core1|sine1|value[5]~26_combout\,
	cout => \dds_core1|sine1|value[5]~27\);

-- Location: LCCOMB_X14_Y9_N12
\dds_core1|sine1|value[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[6]~28_combout\ = (\dds_core1|sine1|value[5]~27\ & ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6))))) # (!\dds_core1|sine1|value[5]~27\ & 
-- (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (VCC))))
-- \dds_core1|sine1|value[6]~29\ = CARRY((!\dds_core1|sine1|value[5]~27\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6),
	datad => VCC,
	cin => \dds_core1|sine1|value[5]~27\,
	combout => \dds_core1|sine1|value[6]~28_combout\,
	cout => \dds_core1|sine1|value[6]~29\);

-- Location: LCCOMB_X14_Y9_N14
\dds_core1|sine1|value[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[7]~30_combout\ = (\dds_core1|sine1|value[6]~29\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ ((!\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[6]~29\ & 
-- ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (\dds_core1|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine1|value[7]~31\ = CARRY((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (!\dds_core1|sine1|addr_MSBdelay\(1))) # (!\dds_core1|sine1|value[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[6]~29\,
	combout => \dds_core1|sine1|value[7]~30_combout\,
	cout => \dds_core1|sine1|value[7]~31\);

-- Location: LCCOMB_X14_Y9_N16
\dds_core1|sine1|value[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[8]~32_combout\ = (\dds_core1|sine1|value[7]~31\ & ((\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8))))) # (!\dds_core1|sine1|value[7]~31\ & 
-- (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) $ (VCC))))
-- \dds_core1|sine1|value[8]~33\ = CARRY((!\dds_core1|sine1|value[7]~31\ & (\dds_core1|sine1|addr_MSBdelay\(1) $ (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|addr_MSBdelay\(1),
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8),
	datad => VCC,
	cin => \dds_core1|sine1|value[7]~31\,
	combout => \dds_core1|sine1|value[8]~32_combout\,
	cout => \dds_core1|sine1|value[8]~33\);

-- Location: LCCOMB_X14_Y9_N18
\dds_core1|sine1|value[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[9]~34_combout\ = (\dds_core1|sine1|value[8]~33\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) $ ((!\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[8]~33\ & 
-- ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) $ (\dds_core1|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine1|value[9]~35\ = CARRY((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9) $ (!\dds_core1|sine1|addr_MSBdelay\(1))) # (!\dds_core1|sine1|value[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[8]~33\,
	combout => \dds_core1|sine1|value[9]~34_combout\,
	cout => \dds_core1|sine1|value[9]~35\);

-- Location: LCCOMB_X14_Y9_N20
\dds_core1|sine1|value[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[10]~36_combout\ = (\dds_core1|sine1|value[9]~35\ & ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[9]~35\ & 
-- (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine1|value[10]~37\ = CARRY((!\dds_core1|sine1|value[9]~35\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core1|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[9]~35\,
	combout => \dds_core1|sine1|value[10]~36_combout\,
	cout => \dds_core1|sine1|value[10]~37\);

-- Location: LCCOMB_X14_Y9_N22
\dds_core1|sine1|value[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[11]~38_combout\ = (\dds_core1|sine1|value[10]~37\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ ((!\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[10]~37\ & 
-- ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (\dds_core1|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine1|value[11]~39\ = CARRY((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (!\dds_core1|sine1|addr_MSBdelay\(1))) # (!\dds_core1|sine1|value[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[10]~37\,
	combout => \dds_core1|sine1|value[11]~38_combout\,
	cout => \dds_core1|sine1|value[11]~39\);

-- Location: LCCOMB_X14_Y9_N24
\dds_core1|sine1|value[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[12]~40_combout\ = (\dds_core1|sine1|value[11]~39\ & ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[11]~39\ & 
-- (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine1|value[12]~41\ = CARRY((!\dds_core1|sine1|value[11]~39\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core1|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[11]~39\,
	combout => \dds_core1|sine1|value[12]~40_combout\,
	cout => \dds_core1|sine1|value[12]~41\);

-- Location: LCCOMB_X14_Y9_N26
\dds_core1|sine1|value[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[13]~42_combout\ = (\dds_core1|sine1|value[12]~41\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ ((!\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[12]~41\ & 
-- ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (\dds_core1|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core1|sine1|value[13]~43\ = CARRY((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (!\dds_core1|sine1|addr_MSBdelay\(1))) # (!\dds_core1|sine1|value[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[12]~41\,
	combout => \dds_core1|sine1|value[13]~42_combout\,
	cout => \dds_core1|sine1|value[13]~43\);

-- Location: LCCOMB_X14_Y9_N28
\dds_core1|sine1|value[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[14]~44_combout\ = (\dds_core1|sine1|value[13]~43\ & ((\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine1|addr_MSBdelay\(1))))) # (!\dds_core1|sine1|value[13]~43\ & 
-- (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core1|sine1|value[14]~45\ = CARRY((!\dds_core1|sine1|value[13]~43\ & (\dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core1|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14),
	datab => \dds_core1|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core1|sine1|value[13]~43\,
	combout => \dds_core1|sine1|value[14]~44_combout\,
	cout => \dds_core1|sine1|value[14]~45\);

-- Location: LCCOMB_X14_Y9_N30
\dds_core1|sine1|value[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine1|value[15]~46_combout\ = \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) $ (\dds_core1|sine1|value[14]~45\ $ (\dds_core1|sine1|addr_MSBdelay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15),
	datad => \dds_core1|sine1|addr_MSBdelay\(1),
	cin => \dds_core1|sine1|value[14]~45\,
	combout => \dds_core1|sine1|value[15]~46_combout\);

-- Location: LCFF_X17_Y11_N1
\dds_core1|acc_delayC[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X17_Y11_N4
\dds_core1|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~1_cout\ = CARRY(!\dds_core1|acc_delayC[0]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc_delayC[0]~_Duplicate_1_regout\,
	datad => VCC,
	cout => \dds_core1|Add2~1_cout\);

-- Location: LCCOMB_X17_Y11_N6
\dds_core1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~2_combout\ = (\dds_core1|acc_delayC[1]~_Duplicate_1_regout\ & ((\dds_core1|Add2~1_cout\) # (GND))) # (!\dds_core1|acc_delayC[1]~_Duplicate_1_regout\ & (!\dds_core1|Add2~1_cout\))
-- \dds_core1|Add2~3\ = CARRY((\dds_core1|acc_delayC[1]~_Duplicate_1_regout\) # (!\dds_core1|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc_delayC[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~1_cout\,
	combout => \dds_core1|Add2~2_combout\,
	cout => \dds_core1|Add2~3\);

-- Location: LCFF_X17_Y11_N9
\dds_core1|acc_delayC[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X17_Y11_N8
\dds_core1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~4_combout\ = (\dds_core1|acc_delayC[2]~_Duplicate_1_regout\ & (!\dds_core1|Add2~3\ & VCC)) # (!\dds_core1|acc_delayC[2]~_Duplicate_1_regout\ & (\dds_core1|Add2~3\ $ (GND)))
-- \dds_core1|Add2~5\ = CARRY((!\dds_core1|acc_delayC[2]~_Duplicate_1_regout\ & !\dds_core1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc_delayC[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~3\,
	combout => \dds_core1|Add2~4_combout\,
	cout => \dds_core1|Add2~5\);

-- Location: LCCOMB_X17_Y11_N10
\dds_core1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~6_combout\ = (\dds_core1|acc_delayC[3]~_Duplicate_1_regout\ & ((\dds_core1|Add2~5\) # (GND))) # (!\dds_core1|acc_delayC[3]~_Duplicate_1_regout\ & (!\dds_core1|Add2~5\))
-- \dds_core1|Add2~7\ = CARRY((\dds_core1|acc_delayC[3]~_Duplicate_1_regout\) # (!\dds_core1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc_delayC[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~5\,
	combout => \dds_core1|Add2~6_combout\,
	cout => \dds_core1|Add2~7\);

-- Location: LCCOMB_X17_Y11_N12
\dds_core1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~8_combout\ = (\dds_core1|acc_delayC[4]~_Duplicate_1_regout\ & (!\dds_core1|Add2~7\ & VCC)) # (!\dds_core1|acc_delayC[4]~_Duplicate_1_regout\ & (\dds_core1|Add2~7\ $ (GND)))
-- \dds_core1|Add2~9\ = CARRY((!\dds_core1|acc_delayC[4]~_Duplicate_1_regout\ & !\dds_core1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc_delayC[4]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~7\,
	combout => \dds_core1|Add2~8_combout\,
	cout => \dds_core1|Add2~9\);

-- Location: LCFF_X17_Y11_N15
\dds_core1|acc_delayC[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X17_Y11_N14
\dds_core1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~10_combout\ = (\dds_core1|acc_delayC[5]~_Duplicate_1_regout\ & ((\dds_core1|Add2~9\) # (GND))) # (!\dds_core1|acc_delayC[5]~_Duplicate_1_regout\ & (!\dds_core1|Add2~9\))
-- \dds_core1|Add2~11\ = CARRY((\dds_core1|acc_delayC[5]~_Duplicate_1_regout\) # (!\dds_core1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc_delayC[5]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~9\,
	combout => \dds_core1|Add2~10_combout\,
	cout => \dds_core1|Add2~11\);

-- Location: LCCOMB_X17_Y11_N16
\dds_core1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~12_combout\ = (\dds_core1|acc_delayC[6]~_Duplicate_1_regout\ & (!\dds_core1|Add2~11\ & VCC)) # (!\dds_core1|acc_delayC[6]~_Duplicate_1_regout\ & (\dds_core1|Add2~11\ $ (GND)))
-- \dds_core1|Add2~13\ = CARRY((!\dds_core1|acc_delayC[6]~_Duplicate_1_regout\ & !\dds_core1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|acc_delayC[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~11\,
	combout => \dds_core1|Add2~12_combout\,
	cout => \dds_core1|Add2~13\);

-- Location: LCFF_X17_Y11_N19
\dds_core1|acc_delayC[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core1|acc_delayB\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|acc_delayC[7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X17_Y11_N18
\dds_core1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~14_combout\ = (\dds_core1|acc_delayC[7]~_Duplicate_1_regout\ & ((\dds_core1|Add2~13\) # (GND))) # (!\dds_core1|acc_delayC[7]~_Duplicate_1_regout\ & (!\dds_core1|Add2~13\))
-- \dds_core1|Add2~15\ = CARRY((\dds_core1|acc_delayC[7]~_Duplicate_1_regout\) # (!\dds_core1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core1|acc_delayC[7]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core1|Add2~13\,
	combout => \dds_core1|Add2~14_combout\,
	cout => \dds_core1|Add2~15\);

-- Location: LCCOMB_X17_Y11_N20
\dds_core1|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|Add2~16_combout\ = !\dds_core1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dds_core1|Add2~15\,
	combout => \dds_core1|Add2~16_combout\);

-- Location: DSPMULT_X16_Y11_N0
\dds_core1|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \DAC_clk_in~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \dds_core1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \dds_core1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X15_Y11_N8
\dds_core1|sine_p[15]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~11_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~dataout\ & \dds_core1|Mult1|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~dataout\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~dataout\,
	datad => VCC,
	cout => \dds_core1|sine_p[15]~11_cout\);

-- Location: LCCOMB_X15_Y11_N10
\dds_core1|sine_p[15]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~13_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\dds_core1|sine_p[15]~11_cout\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT1\ & 
-- ((!\dds_core1|sine_p[15]~11_cout\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~11_cout\,
	cout => \dds_core1|sine_p[15]~13_cout\);

-- Location: LCCOMB_X15_Y11_N12
\dds_core1|sine_p[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~15_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\dds_core1|sine_p[15]~13_cout\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT2\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT2\ & !\dds_core1|sine_p[15]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~13_cout\,
	cout => \dds_core1|sine_p[15]~15_cout\);

-- Location: LCCOMB_X15_Y11_N14
\dds_core1|sine_p[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~17_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT3\ & !\dds_core1|sine_p[15]~15_cout\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- ((!\dds_core1|sine_p[15]~15_cout\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~15_cout\,
	cout => \dds_core1|sine_p[15]~17_cout\);

-- Location: LCCOMB_X15_Y11_N16
\dds_core1|sine_p[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~19_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\dds_core1|sine_p[15]~17_cout\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT4\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\dds_core1|sine_p[15]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~17_cout\,
	cout => \dds_core1|sine_p[15]~19_cout\);

-- Location: LCCOMB_X15_Y11_N18
\dds_core1|sine_p[15]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~21_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\dds_core1|sine_p[15]~19_cout\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- ((!\dds_core1|sine_p[15]~19_cout\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~19_cout\,
	cout => \dds_core1|sine_p[15]~21_cout\);

-- Location: LCCOMB_X15_Y11_N20
\dds_core1|sine_p[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~23_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\dds_core1|sine_p[15]~21_cout\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\dds_core1|sine_p[15]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~21_cout\,
	cout => \dds_core1|sine_p[15]~23_cout\);

-- Location: LCCOMB_X15_Y11_N22
\dds_core1|sine_p[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~25_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\dds_core1|sine_p[15]~23_cout\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- ((!\dds_core1|sine_p[15]~23_cout\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~23_cout\,
	cout => \dds_core1|sine_p[15]~25_cout\);

-- Location: LCCOMB_X15_Y11_N24
\dds_core1|sine_p[15]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~27_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\dds_core1|sine_p[15]~25_cout\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT8\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\dds_core1|sine_p[15]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~25_cout\,
	cout => \dds_core1|sine_p[15]~27_cout\);

-- Location: LCCOMB_X15_Y11_N26
\dds_core1|sine_p[15]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~29_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\dds_core1|sine_p[15]~27_cout\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\dds_core1|sine_p[15]~27_cout\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~27_cout\,
	cout => \dds_core1|sine_p[15]~29_cout\);

-- Location: LCCOMB_X15_Y11_N28
\dds_core1|sine_p[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~31_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\dds_core1|sine_p[15]~29_cout\))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\dds_core1|sine_p[15]~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~29_cout\,
	cout => \dds_core1|sine_p[15]~31_cout\);

-- Location: LCCOMB_X15_Y11_N30
\dds_core1|sine_p[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~33_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\dds_core1|sine_p[15]~31_cout\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\dds_core1|sine_p[15]~31_cout\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~31_cout\,
	cout => \dds_core1|sine_p[15]~33_cout\);

-- Location: LCCOMB_X15_Y10_N0
\dds_core1|sine_p[15]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~35_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\dds_core1|sine_p[15]~33_cout\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT12\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\dds_core1|sine_p[15]~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~33_cout\,
	cout => \dds_core1|sine_p[15]~35_cout\);

-- Location: LCCOMB_X15_Y10_N2
\dds_core1|sine_p[15]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~37_cout\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\dds_core1|sine_p[15]~35_cout\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- ((!\dds_core1|sine_p[15]~35_cout\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~35_cout\,
	cout => \dds_core1|sine_p[15]~37_cout\);

-- Location: LCCOMB_X15_Y10_N4
\dds_core1|sine_p[15]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~39_cout\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\dds_core1|sine_p[15]~37_cout\))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\dds_core1|sine_p[15]~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~37_cout\,
	cout => \dds_core1|sine_p[15]~39_cout\);

-- Location: LCCOMB_X15_Y10_N6
\dds_core1|sine_p[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[15]~40_combout\ = (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (\dds_core1|sine_p[15]~39_cout\ & VCC)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\dds_core1|sine_p[15]~39_cout\)))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\dds_core1|sine_p[15]~39_cout\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\dds_core1|sine_p[15]~39_cout\) # (GND)))))
-- \dds_core1|sine_p[15]~41\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\dds_core1|sine_p[15]~39_cout\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- ((!\dds_core1|sine_p[15]~39_cout\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~39_cout\,
	combout => \dds_core1|sine_p[15]~40_combout\,
	cout => \dds_core1|sine_p[15]~41\);

-- Location: LCFF_X15_Y10_N7
\dds_core1|sine_p[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(15));

-- Location: LCCOMB_X15_Y10_N8
\dds_core1|sine_p[16]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[16]~42_combout\ = ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\dds_core1|sine_p[15]~41\)))) # (GND)
-- \dds_core1|sine_p[16]~43\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\dds_core1|sine_p[15]~41\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\dds_core1|sine_p[15]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \dds_core1|sine_p[15]~41\,
	combout => \dds_core1|sine_p[16]~42_combout\,
	cout => \dds_core1|sine_p[16]~43\);

-- Location: LCFF_X15_Y10_N9
\dds_core1|sine_p[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[16]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(16));

-- Location: LCCOMB_X15_Y10_N10
\dds_core1|sine_p[17]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[17]~44_combout\ = (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\dds_core1|sine_p[16]~43\ & VCC)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\dds_core1|sine_p[16]~43\)))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\dds_core1|sine_p[16]~43\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\dds_core1|sine_p[16]~43\) # (GND)))))
-- \dds_core1|sine_p[17]~45\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\dds_core1|sine_p[16]~43\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\ & 
-- ((!\dds_core1|sine_p[16]~43\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \dds_core1|sine_p[16]~43\,
	combout => \dds_core1|sine_p[17]~44_combout\,
	cout => \dds_core1|sine_p[17]~45\);

-- Location: LCFF_X15_Y10_N11
\dds_core1|sine_p[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[17]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(17));

-- Location: LCCOMB_X15_Y10_N12
\dds_core1|sine_p[18]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[18]~46_combout\ = ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (!\dds_core1|sine_p[17]~45\)))) # (GND)
-- \dds_core1|sine_p[18]~47\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\) # (!\dds_core1|sine_p[17]~45\))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\ & !\dds_core1|sine_p[17]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \dds_core1|sine_p[17]~45\,
	combout => \dds_core1|sine_p[18]~46_combout\,
	cout => \dds_core1|sine_p[18]~47\);

-- Location: LCFF_X15_Y10_N13
\dds_core1|sine_p[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[18]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(18));

-- Location: LCCOMB_X15_Y10_N14
\dds_core1|sine_p[19]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[19]~48_combout\ = (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\dds_core1|sine_p[18]~47\ & VCC)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\dds_core1|sine_p[18]~47\)))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\dds_core1|sine_p[18]~47\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\dds_core1|sine_p[18]~47\) # (GND)))))
-- \dds_core1|sine_p[19]~49\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\dds_core1|sine_p[18]~47\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\dds_core1|sine_p[18]~47\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \dds_core1|sine_p[18]~47\,
	combout => \dds_core1|sine_p[19]~48_combout\,
	cout => \dds_core1|sine_p[19]~49\);

-- Location: LCFF_X15_Y10_N15
\dds_core1|sine_p[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[19]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(19));

-- Location: LCCOMB_X15_Y10_N16
\dds_core1|sine_p[20]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[20]~50_combout\ = ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\dds_core1|sine_p[19]~49\)))) # (GND)
-- \dds_core1|sine_p[20]~51\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\dds_core1|sine_p[19]~49\))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\dds_core1|sine_p[19]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \dds_core1|sine_p[19]~49\,
	combout => \dds_core1|sine_p[20]~50_combout\,
	cout => \dds_core1|sine_p[20]~51\);

-- Location: LCFF_X15_Y10_N17
\dds_core1|sine_p[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[20]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(20));

-- Location: LCCOMB_X15_Y10_N18
\dds_core1|sine_p[21]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[21]~52_combout\ = (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ & (\dds_core1|sine_p[20]~51\ & VCC)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\dds_core1|sine_p[20]~51\)))) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\dds_core1|sine_p[20]~51\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\dds_core1|sine_p[20]~51\) # (GND)))))
-- \dds_core1|sine_p[21]~53\ = CARRY((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\dds_core1|sine_p[20]~51\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\dds_core1|sine_p[20]~51\) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \dds_core1|sine_p[20]~51\,
	combout => \dds_core1|sine_p[21]~52_combout\,
	cout => \dds_core1|sine_p[21]~53\);

-- Location: LCFF_X15_Y10_N19
\dds_core1|sine_p[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[21]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(21));

-- Location: LCCOMB_X15_Y10_N20
\dds_core1|sine_p[22]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[22]~54_combout\ = ((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\dds_core1|sine_p[21]~53\)))) # (GND)
-- \dds_core1|sine_p[22]~55\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\dds_core1|sine_p[21]~53\))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- (\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\dds_core1|sine_p[21]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \dds_core1|sine_p[21]~53\,
	combout => \dds_core1|sine_p[22]~54_combout\,
	cout => \dds_core1|sine_p[22]~55\);

-- Location: LCFF_X15_Y10_N21
\dds_core1|sine_p[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[22]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(22));

-- Location: LCCOMB_X15_Y10_N22
\dds_core1|sine_p[23]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[23]~56_combout\ = (\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\dds_core1|sine_p[22]~55\ & VCC)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\dds_core1|sine_p[22]~55\)))) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\dds_core1|sine_p[22]~55\)) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\dds_core1|sine_p[22]~55\) # (GND)))))
-- \dds_core1|sine_p[23]~57\ = CARRY((\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\dds_core1|sine_p[22]~55\)) # (!\dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\dds_core1|sine_p[22]~55\) # (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \dds_core1|sine_p[22]~55\,
	combout => \dds_core1|sine_p[23]~56_combout\,
	cout => \dds_core1|sine_p[23]~57\);

-- Location: LCFF_X15_Y10_N23
\dds_core1|sine_p[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[23]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(23));

-- Location: LCCOMB_X15_Y10_N24
\dds_core1|sine_p[24]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core1|sine_p[24]~58_combout\ = \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\dds_core1|sine_p[23]~57\ $ (!\dds_core1|Mult0|auto_generated|mac_out2~DATAOUT24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core1|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => \dds_core1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	cin => \dds_core1|sine_p[23]~57\,
	combout => \dds_core1|sine_p[24]~58_combout\);

-- Location: LCFF_X15_Y10_N25
\dds_core1|sine_p[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core1|sine_p[24]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core1|sine_p\(24));

-- Location: LCCOMB_X12_Y9_N22
\DDS2_acc_inc[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[28]~feeder_combout\ = FIFO_value(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(28),
	combout => \DDS2_acc_inc[28]~feeder_combout\);

-- Location: LCCOMB_X10_Y9_N0
\DDS2_acc_inc[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[30]~0_combout\ = (FIFO_value(31) & (\fcdnai|SyncA_clkB\(2) $ (\fcdnai|SyncA_clkB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcdnai|SyncA_clkB\(2),
	datab => \fcdnai|SyncA_clkB\(1),
	datad => FIFO_value(31),
	combout => \DDS2_acc_inc[30]~0_combout\);

-- Location: LCFF_X12_Y9_N23
\DDS2_acc_inc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[28]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(28));

-- Location: LCCOMB_X12_Y9_N16
\DDS2_acc_inc[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[26]~feeder_combout\ = FIFO_value(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(26),
	combout => \DDS2_acc_inc[26]~feeder_combout\);

-- Location: LCFF_X12_Y9_N17
\DDS2_acc_inc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[26]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(26));

-- Location: LCCOMB_X12_Y9_N4
\DDS2_acc_inc[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[24]~feeder_combout\ = FIFO_value(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(24),
	combout => \DDS2_acc_inc[24]~feeder_combout\);

-- Location: LCFF_X12_Y9_N5
\DDS2_acc_inc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[24]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(24));

-- Location: LCFF_X10_Y9_N1
\DDS2_acc_inc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(21),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(21));

-- Location: LCFF_X10_Y9_N19
\DDS2_acc_inc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(19),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(19));

-- Location: LCCOMB_X9_Y10_N28
\DDS2_acc_inc[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[12]~feeder_combout\ = FIFO_value(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(12),
	combout => \DDS2_acc_inc[12]~feeder_combout\);

-- Location: LCFF_X9_Y10_N29
\DDS2_acc_inc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[12]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(12));

-- Location: LCCOMB_X9_Y10_N30
\DDS2_acc_inc[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[10]~feeder_combout\ = FIFO_value(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(10),
	combout => \DDS2_acc_inc[10]~feeder_combout\);

-- Location: LCFF_X9_Y10_N31
\DDS2_acc_inc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[10]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(10));

-- Location: LCCOMB_X10_Y10_N2
\DDS2_acc_inc[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[8]~feeder_combout\ = FIFO_value(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(8),
	combout => \DDS2_acc_inc[8]~feeder_combout\);

-- Location: LCFF_X10_Y10_N3
\DDS2_acc_inc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[8]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(8));

-- Location: LCFF_X10_Y10_N5
\DDS2_acc_inc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => FIFO_value(6),
	sload => VCC,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(6));

-- Location: LCCOMB_X10_Y10_N30
\DDS2_acc_inc[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[5]~feeder_combout\ = FIFO_value(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(5),
	combout => \DDS2_acc_inc[5]~feeder_combout\);

-- Location: LCFF_X10_Y10_N31
\DDS2_acc_inc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[5]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(5));

-- Location: LCCOMB_X10_Y9_N26
\DDS2_acc_inc[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS2_acc_inc[3]~feeder_combout\ = FIFO_value(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FIFO_value(3),
	combout => \DDS2_acc_inc[3]~feeder_combout\);

-- Location: LCFF_X10_Y9_N27
\DDS2_acc_inc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \DDS2_acc_inc[3]~feeder_combout\,
	ena => \DDS2_acc_inc[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => DDS2_acc_inc(3));

-- Location: LCCOMB_X13_Y10_N0
\dds_core2|acc[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[0]~32_combout\ = (DDS2_acc_inc(0) & (\dds_core2|acc\(0) $ (VCC))) # (!DDS2_acc_inc(0) & (\dds_core2|acc\(0) & VCC))
-- \dds_core2|acc[0]~33\ = CARRY((DDS2_acc_inc(0) & \dds_core2|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(0),
	datab => \dds_core2|acc\(0),
	datad => VCC,
	combout => \dds_core2|acc[0]~32_combout\,
	cout => \dds_core2|acc[0]~33\);

-- Location: LCFF_X13_Y10_N1
\dds_core2|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(0));

-- Location: LCCOMB_X13_Y10_N2
\dds_core2|acc[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[1]~34_combout\ = (DDS2_acc_inc(1) & ((\dds_core2|acc\(1) & (\dds_core2|acc[0]~33\ & VCC)) # (!\dds_core2|acc\(1) & (!\dds_core2|acc[0]~33\)))) # (!DDS2_acc_inc(1) & ((\dds_core2|acc\(1) & (!\dds_core2|acc[0]~33\)) # (!\dds_core2|acc\(1) & 
-- ((\dds_core2|acc[0]~33\) # (GND)))))
-- \dds_core2|acc[1]~35\ = CARRY((DDS2_acc_inc(1) & (!\dds_core2|acc\(1) & !\dds_core2|acc[0]~33\)) # (!DDS2_acc_inc(1) & ((!\dds_core2|acc[0]~33\) # (!\dds_core2|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(1),
	datab => \dds_core2|acc\(1),
	datad => VCC,
	cin => \dds_core2|acc[0]~33\,
	combout => \dds_core2|acc[1]~34_combout\,
	cout => \dds_core2|acc[1]~35\);

-- Location: LCFF_X13_Y10_N3
\dds_core2|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(1));

-- Location: LCCOMB_X13_Y10_N4
\dds_core2|acc[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[2]~36_combout\ = ((DDS2_acc_inc(2) $ (\dds_core2|acc\(2) $ (!\dds_core2|acc[1]~35\)))) # (GND)
-- \dds_core2|acc[2]~37\ = CARRY((DDS2_acc_inc(2) & ((\dds_core2|acc\(2)) # (!\dds_core2|acc[1]~35\))) # (!DDS2_acc_inc(2) & (\dds_core2|acc\(2) & !\dds_core2|acc[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(2),
	datab => \dds_core2|acc\(2),
	datad => VCC,
	cin => \dds_core2|acc[1]~35\,
	combout => \dds_core2|acc[2]~36_combout\,
	cout => \dds_core2|acc[2]~37\);

-- Location: LCFF_X13_Y10_N5
\dds_core2|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(2));

-- Location: LCCOMB_X13_Y10_N8
\dds_core2|acc[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[4]~40_combout\ = ((DDS2_acc_inc(4) $ (\dds_core2|acc\(4) $ (!\dds_core2|acc[3]~39\)))) # (GND)
-- \dds_core2|acc[4]~41\ = CARRY((DDS2_acc_inc(4) & ((\dds_core2|acc\(4)) # (!\dds_core2|acc[3]~39\))) # (!DDS2_acc_inc(4) & (\dds_core2|acc\(4) & !\dds_core2|acc[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(4),
	datab => \dds_core2|acc\(4),
	datad => VCC,
	cin => \dds_core2|acc[3]~39\,
	combout => \dds_core2|acc[4]~40_combout\,
	cout => \dds_core2|acc[4]~41\);

-- Location: LCFF_X13_Y10_N9
\dds_core2|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(4));

-- Location: LCCOMB_X13_Y10_N14
\dds_core2|acc[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[7]~46_combout\ = (DDS2_acc_inc(7) & ((\dds_core2|acc\(7) & (\dds_core2|acc[6]~45\ & VCC)) # (!\dds_core2|acc\(7) & (!\dds_core2|acc[6]~45\)))) # (!DDS2_acc_inc(7) & ((\dds_core2|acc\(7) & (!\dds_core2|acc[6]~45\)) # (!\dds_core2|acc\(7) & 
-- ((\dds_core2|acc[6]~45\) # (GND)))))
-- \dds_core2|acc[7]~47\ = CARRY((DDS2_acc_inc(7) & (!\dds_core2|acc\(7) & !\dds_core2|acc[6]~45\)) # (!DDS2_acc_inc(7) & ((!\dds_core2|acc[6]~45\) # (!\dds_core2|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(7),
	datab => \dds_core2|acc\(7),
	datad => VCC,
	cin => \dds_core2|acc[6]~45\,
	combout => \dds_core2|acc[7]~46_combout\,
	cout => \dds_core2|acc[7]~47\);

-- Location: LCFF_X13_Y10_N15
\dds_core2|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(7));

-- Location: LCCOMB_X13_Y10_N18
\dds_core2|acc[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[9]~50_combout\ = (DDS2_acc_inc(9) & ((\dds_core2|acc\(9) & (\dds_core2|acc[8]~49\ & VCC)) # (!\dds_core2|acc\(9) & (!\dds_core2|acc[8]~49\)))) # (!DDS2_acc_inc(9) & ((\dds_core2|acc\(9) & (!\dds_core2|acc[8]~49\)) # (!\dds_core2|acc\(9) & 
-- ((\dds_core2|acc[8]~49\) # (GND)))))
-- \dds_core2|acc[9]~51\ = CARRY((DDS2_acc_inc(9) & (!\dds_core2|acc\(9) & !\dds_core2|acc[8]~49\)) # (!DDS2_acc_inc(9) & ((!\dds_core2|acc[8]~49\) # (!\dds_core2|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(9),
	datab => \dds_core2|acc\(9),
	datad => VCC,
	cin => \dds_core2|acc[8]~49\,
	combout => \dds_core2|acc[9]~50_combout\,
	cout => \dds_core2|acc[9]~51\);

-- Location: LCFF_X13_Y10_N19
\dds_core2|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(9));

-- Location: LCCOMB_X13_Y10_N22
\dds_core2|acc[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[11]~54_combout\ = (DDS2_acc_inc(11) & ((\dds_core2|acc\(11) & (\dds_core2|acc[10]~53\ & VCC)) # (!\dds_core2|acc\(11) & (!\dds_core2|acc[10]~53\)))) # (!DDS2_acc_inc(11) & ((\dds_core2|acc\(11) & (!\dds_core2|acc[10]~53\)) # 
-- (!\dds_core2|acc\(11) & ((\dds_core2|acc[10]~53\) # (GND)))))
-- \dds_core2|acc[11]~55\ = CARRY((DDS2_acc_inc(11) & (!\dds_core2|acc\(11) & !\dds_core2|acc[10]~53\)) # (!DDS2_acc_inc(11) & ((!\dds_core2|acc[10]~53\) # (!\dds_core2|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(11),
	datab => \dds_core2|acc\(11),
	datad => VCC,
	cin => \dds_core2|acc[10]~53\,
	combout => \dds_core2|acc[11]~54_combout\,
	cout => \dds_core2|acc[11]~55\);

-- Location: LCFF_X13_Y10_N23
\dds_core2|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(11));

-- Location: LCCOMB_X13_Y10_N26
\dds_core2|acc[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[13]~58_combout\ = (DDS2_acc_inc(13) & ((\dds_core2|acc\(13) & (\dds_core2|acc[12]~57\ & VCC)) # (!\dds_core2|acc\(13) & (!\dds_core2|acc[12]~57\)))) # (!DDS2_acc_inc(13) & ((\dds_core2|acc\(13) & (!\dds_core2|acc[12]~57\)) # 
-- (!\dds_core2|acc\(13) & ((\dds_core2|acc[12]~57\) # (GND)))))
-- \dds_core2|acc[13]~59\ = CARRY((DDS2_acc_inc(13) & (!\dds_core2|acc\(13) & !\dds_core2|acc[12]~57\)) # (!DDS2_acc_inc(13) & ((!\dds_core2|acc[12]~57\) # (!\dds_core2|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(13),
	datab => \dds_core2|acc\(13),
	datad => VCC,
	cin => \dds_core2|acc[12]~57\,
	combout => \dds_core2|acc[13]~58_combout\,
	cout => \dds_core2|acc[13]~59\);

-- Location: LCFF_X13_Y10_N27
\dds_core2|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(13));

-- Location: LCCOMB_X13_Y10_N28
\dds_core2|acc[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[14]~60_combout\ = ((DDS2_acc_inc(14) $ (\dds_core2|acc\(14) $ (!\dds_core2|acc[13]~59\)))) # (GND)
-- \dds_core2|acc[14]~61\ = CARRY((DDS2_acc_inc(14) & ((\dds_core2|acc\(14)) # (!\dds_core2|acc[13]~59\))) # (!DDS2_acc_inc(14) & (\dds_core2|acc\(14) & !\dds_core2|acc[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(14),
	datab => \dds_core2|acc\(14),
	datad => VCC,
	cin => \dds_core2|acc[13]~59\,
	combout => \dds_core2|acc[14]~60_combout\,
	cout => \dds_core2|acc[14]~61\);

-- Location: LCFF_X13_Y10_N29
\dds_core2|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(14));

-- Location: LCCOMB_X13_Y10_N30
\dds_core2|acc[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[15]~62_combout\ = (DDS2_acc_inc(15) & ((\dds_core2|acc\(15) & (\dds_core2|acc[14]~61\ & VCC)) # (!\dds_core2|acc\(15) & (!\dds_core2|acc[14]~61\)))) # (!DDS2_acc_inc(15) & ((\dds_core2|acc\(15) & (!\dds_core2|acc[14]~61\)) # 
-- (!\dds_core2|acc\(15) & ((\dds_core2|acc[14]~61\) # (GND)))))
-- \dds_core2|acc[15]~63\ = CARRY((DDS2_acc_inc(15) & (!\dds_core2|acc\(15) & !\dds_core2|acc[14]~61\)) # (!DDS2_acc_inc(15) & ((!\dds_core2|acc[14]~61\) # (!\dds_core2|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(15),
	datab => \dds_core2|acc\(15),
	datad => VCC,
	cin => \dds_core2|acc[14]~61\,
	combout => \dds_core2|acc[15]~62_combout\,
	cout => \dds_core2|acc[15]~63\);

-- Location: LCFF_X13_Y10_N31
\dds_core2|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(15));

-- Location: LCCOMB_X13_Y9_N0
\dds_core2|acc[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[16]~64_combout\ = ((DDS2_acc_inc(16) $ (\dds_core2|acc\(16) $ (!\dds_core2|acc[15]~63\)))) # (GND)
-- \dds_core2|acc[16]~65\ = CARRY((DDS2_acc_inc(16) & ((\dds_core2|acc\(16)) # (!\dds_core2|acc[15]~63\))) # (!DDS2_acc_inc(16) & (\dds_core2|acc\(16) & !\dds_core2|acc[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(16),
	datab => \dds_core2|acc\(16),
	datad => VCC,
	cin => \dds_core2|acc[15]~63\,
	combout => \dds_core2|acc[16]~64_combout\,
	cout => \dds_core2|acc[16]~65\);

-- Location: LCFF_X13_Y9_N1
\dds_core2|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(16));

-- Location: LCCOMB_X13_Y9_N2
\dds_core2|acc[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[17]~66_combout\ = (DDS2_acc_inc(17) & ((\dds_core2|acc\(17) & (\dds_core2|acc[16]~65\ & VCC)) # (!\dds_core2|acc\(17) & (!\dds_core2|acc[16]~65\)))) # (!DDS2_acc_inc(17) & ((\dds_core2|acc\(17) & (!\dds_core2|acc[16]~65\)) # 
-- (!\dds_core2|acc\(17) & ((\dds_core2|acc[16]~65\) # (GND)))))
-- \dds_core2|acc[17]~67\ = CARRY((DDS2_acc_inc(17) & (!\dds_core2|acc\(17) & !\dds_core2|acc[16]~65\)) # (!DDS2_acc_inc(17) & ((!\dds_core2|acc[16]~65\) # (!\dds_core2|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(17),
	datab => \dds_core2|acc\(17),
	datad => VCC,
	cin => \dds_core2|acc[16]~65\,
	combout => \dds_core2|acc[17]~66_combout\,
	cout => \dds_core2|acc[17]~67\);

-- Location: LCFF_X13_Y9_N3
\dds_core2|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(17));

-- Location: LCCOMB_X13_Y9_N4
\dds_core2|acc[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[18]~68_combout\ = ((DDS2_acc_inc(18) $ (\dds_core2|acc\(18) $ (!\dds_core2|acc[17]~67\)))) # (GND)
-- \dds_core2|acc[18]~69\ = CARRY((DDS2_acc_inc(18) & ((\dds_core2|acc\(18)) # (!\dds_core2|acc[17]~67\))) # (!DDS2_acc_inc(18) & (\dds_core2|acc\(18) & !\dds_core2|acc[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(18),
	datab => \dds_core2|acc\(18),
	datad => VCC,
	cin => \dds_core2|acc[17]~67\,
	combout => \dds_core2|acc[18]~68_combout\,
	cout => \dds_core2|acc[18]~69\);

-- Location: LCFF_X13_Y9_N5
\dds_core2|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(18));

-- Location: LCCOMB_X13_Y9_N6
\dds_core2|acc[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[19]~70_combout\ = (\dds_core2|acc\(19) & ((DDS2_acc_inc(19) & (\dds_core2|acc[18]~69\ & VCC)) # (!DDS2_acc_inc(19) & (!\dds_core2|acc[18]~69\)))) # (!\dds_core2|acc\(19) & ((DDS2_acc_inc(19) & (!\dds_core2|acc[18]~69\)) # (!DDS2_acc_inc(19) 
-- & ((\dds_core2|acc[18]~69\) # (GND)))))
-- \dds_core2|acc[19]~71\ = CARRY((\dds_core2|acc\(19) & (!DDS2_acc_inc(19) & !\dds_core2|acc[18]~69\)) # (!\dds_core2|acc\(19) & ((!\dds_core2|acc[18]~69\) # (!DDS2_acc_inc(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(19),
	datab => DDS2_acc_inc(19),
	datad => VCC,
	cin => \dds_core2|acc[18]~69\,
	combout => \dds_core2|acc[19]~70_combout\,
	cout => \dds_core2|acc[19]~71\);

-- Location: LCCOMB_X13_Y9_N8
\dds_core2|acc[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[20]~72_combout\ = ((DDS2_acc_inc(20) $ (\dds_core2|acc\(20) $ (!\dds_core2|acc[19]~71\)))) # (GND)
-- \dds_core2|acc[20]~73\ = CARRY((DDS2_acc_inc(20) & ((\dds_core2|acc\(20)) # (!\dds_core2|acc[19]~71\))) # (!DDS2_acc_inc(20) & (\dds_core2|acc\(20) & !\dds_core2|acc[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(20),
	datab => \dds_core2|acc\(20),
	datad => VCC,
	cin => \dds_core2|acc[19]~71\,
	combout => \dds_core2|acc[20]~72_combout\,
	cout => \dds_core2|acc[20]~73\);

-- Location: LCFF_X13_Y9_N9
\dds_core2|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(20));

-- Location: LCCOMB_X13_Y9_N10
\dds_core2|acc[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[21]~74_combout\ = (\dds_core2|acc\(21) & ((DDS2_acc_inc(21) & (\dds_core2|acc[20]~73\ & VCC)) # (!DDS2_acc_inc(21) & (!\dds_core2|acc[20]~73\)))) # (!\dds_core2|acc\(21) & ((DDS2_acc_inc(21) & (!\dds_core2|acc[20]~73\)) # (!DDS2_acc_inc(21) 
-- & ((\dds_core2|acc[20]~73\) # (GND)))))
-- \dds_core2|acc[21]~75\ = CARRY((\dds_core2|acc\(21) & (!DDS2_acc_inc(21) & !\dds_core2|acc[20]~73\)) # (!\dds_core2|acc\(21) & ((!\dds_core2|acc[20]~73\) # (!DDS2_acc_inc(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(21),
	datab => DDS2_acc_inc(21),
	datad => VCC,
	cin => \dds_core2|acc[20]~73\,
	combout => \dds_core2|acc[21]~74_combout\,
	cout => \dds_core2|acc[21]~75\);

-- Location: LCCOMB_X13_Y9_N12
\dds_core2|acc[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[22]~76_combout\ = ((DDS2_acc_inc(22) $ (\dds_core2|acc\(22) $ (!\dds_core2|acc[21]~75\)))) # (GND)
-- \dds_core2|acc[22]~77\ = CARRY((DDS2_acc_inc(22) & ((\dds_core2|acc\(22)) # (!\dds_core2|acc[21]~75\))) # (!DDS2_acc_inc(22) & (\dds_core2|acc\(22) & !\dds_core2|acc[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(22),
	datab => \dds_core2|acc\(22),
	datad => VCC,
	cin => \dds_core2|acc[21]~75\,
	combout => \dds_core2|acc[22]~76_combout\,
	cout => \dds_core2|acc[22]~77\);

-- Location: LCFF_X13_Y9_N13
\dds_core2|acc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(22));

-- Location: LCCOMB_X13_Y9_N14
\dds_core2|acc[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[23]~78_combout\ = (DDS2_acc_inc(23) & ((\dds_core2|acc\(23) & (\dds_core2|acc[22]~77\ & VCC)) # (!\dds_core2|acc\(23) & (!\dds_core2|acc[22]~77\)))) # (!DDS2_acc_inc(23) & ((\dds_core2|acc\(23) & (!\dds_core2|acc[22]~77\)) # 
-- (!\dds_core2|acc\(23) & ((\dds_core2|acc[22]~77\) # (GND)))))
-- \dds_core2|acc[23]~79\ = CARRY((DDS2_acc_inc(23) & (!\dds_core2|acc\(23) & !\dds_core2|acc[22]~77\)) # (!DDS2_acc_inc(23) & ((!\dds_core2|acc[22]~77\) # (!\dds_core2|acc\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(23),
	datab => \dds_core2|acc\(23),
	datad => VCC,
	cin => \dds_core2|acc[22]~77\,
	combout => \dds_core2|acc[23]~78_combout\,
	cout => \dds_core2|acc[23]~79\);

-- Location: LCFF_X13_Y9_N15
\dds_core2|acc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(23));

-- Location: LCCOMB_X13_Y9_N16
\dds_core2|acc[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[24]~80_combout\ = ((\dds_core2|acc\(24) $ (DDS2_acc_inc(24) $ (!\dds_core2|acc[23]~79\)))) # (GND)
-- \dds_core2|acc[24]~81\ = CARRY((\dds_core2|acc\(24) & ((DDS2_acc_inc(24)) # (!\dds_core2|acc[23]~79\))) # (!\dds_core2|acc\(24) & (DDS2_acc_inc(24) & !\dds_core2|acc[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(24),
	datab => DDS2_acc_inc(24),
	datad => VCC,
	cin => \dds_core2|acc[23]~79\,
	combout => \dds_core2|acc[24]~80_combout\,
	cout => \dds_core2|acc[24]~81\);

-- Location: LCCOMB_X13_Y9_N18
\dds_core2|acc[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[25]~82_combout\ = (DDS2_acc_inc(25) & ((\dds_core2|acc\(25) & (\dds_core2|acc[24]~81\ & VCC)) # (!\dds_core2|acc\(25) & (!\dds_core2|acc[24]~81\)))) # (!DDS2_acc_inc(25) & ((\dds_core2|acc\(25) & (!\dds_core2|acc[24]~81\)) # 
-- (!\dds_core2|acc\(25) & ((\dds_core2|acc[24]~81\) # (GND)))))
-- \dds_core2|acc[25]~83\ = CARRY((DDS2_acc_inc(25) & (!\dds_core2|acc\(25) & !\dds_core2|acc[24]~81\)) # (!DDS2_acc_inc(25) & ((!\dds_core2|acc[24]~81\) # (!\dds_core2|acc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(25),
	datab => \dds_core2|acc\(25),
	datad => VCC,
	cin => \dds_core2|acc[24]~81\,
	combout => \dds_core2|acc[25]~82_combout\,
	cout => \dds_core2|acc[25]~83\);

-- Location: LCFF_X13_Y9_N19
\dds_core2|acc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(25));

-- Location: LCCOMB_X13_Y9_N20
\dds_core2|acc[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[26]~84_combout\ = ((\dds_core2|acc\(26) $ (DDS2_acc_inc(26) $ (!\dds_core2|acc[25]~83\)))) # (GND)
-- \dds_core2|acc[26]~85\ = CARRY((\dds_core2|acc\(26) & ((DDS2_acc_inc(26)) # (!\dds_core2|acc[25]~83\))) # (!\dds_core2|acc\(26) & (DDS2_acc_inc(26) & !\dds_core2|acc[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(26),
	datab => DDS2_acc_inc(26),
	datad => VCC,
	cin => \dds_core2|acc[25]~83\,
	combout => \dds_core2|acc[26]~84_combout\,
	cout => \dds_core2|acc[26]~85\);

-- Location: LCCOMB_X13_Y9_N22
\dds_core2|acc[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[27]~86_combout\ = (DDS2_acc_inc(27) & ((\dds_core2|acc\(27) & (\dds_core2|acc[26]~85\ & VCC)) # (!\dds_core2|acc\(27) & (!\dds_core2|acc[26]~85\)))) # (!DDS2_acc_inc(27) & ((\dds_core2|acc\(27) & (!\dds_core2|acc[26]~85\)) # 
-- (!\dds_core2|acc\(27) & ((\dds_core2|acc[26]~85\) # (GND)))))
-- \dds_core2|acc[27]~87\ = CARRY((DDS2_acc_inc(27) & (!\dds_core2|acc\(27) & !\dds_core2|acc[26]~85\)) # (!DDS2_acc_inc(27) & ((!\dds_core2|acc[26]~85\) # (!\dds_core2|acc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(27),
	datab => \dds_core2|acc\(27),
	datad => VCC,
	cin => \dds_core2|acc[26]~85\,
	combout => \dds_core2|acc[27]~86_combout\,
	cout => \dds_core2|acc[27]~87\);

-- Location: LCFF_X13_Y9_N23
\dds_core2|acc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(27));

-- Location: LCCOMB_X13_Y9_N24
\dds_core2|acc[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[28]~88_combout\ = ((\dds_core2|acc\(28) $ (DDS2_acc_inc(28) $ (!\dds_core2|acc[27]~87\)))) # (GND)
-- \dds_core2|acc[28]~89\ = CARRY((\dds_core2|acc\(28) & ((DDS2_acc_inc(28)) # (!\dds_core2|acc[27]~87\))) # (!\dds_core2|acc\(28) & (DDS2_acc_inc(28) & !\dds_core2|acc[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(28),
	datab => DDS2_acc_inc(28),
	datad => VCC,
	cin => \dds_core2|acc[27]~87\,
	combout => \dds_core2|acc[28]~88_combout\,
	cout => \dds_core2|acc[28]~89\);

-- Location: LCCOMB_X13_Y9_N26
\dds_core2|acc[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[29]~90_combout\ = (DDS2_acc_inc(29) & ((\dds_core2|acc\(29) & (\dds_core2|acc[28]~89\ & VCC)) # (!\dds_core2|acc\(29) & (!\dds_core2|acc[28]~89\)))) # (!DDS2_acc_inc(29) & ((\dds_core2|acc\(29) & (!\dds_core2|acc[28]~89\)) # 
-- (!\dds_core2|acc\(29) & ((\dds_core2|acc[28]~89\) # (GND)))))
-- \dds_core2|acc[29]~91\ = CARRY((DDS2_acc_inc(29) & (!\dds_core2|acc\(29) & !\dds_core2|acc[28]~89\)) # (!DDS2_acc_inc(29) & ((!\dds_core2|acc[28]~89\) # (!\dds_core2|acc\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(29),
	datab => \dds_core2|acc\(29),
	datad => VCC,
	cin => \dds_core2|acc[28]~89\,
	combout => \dds_core2|acc[29]~90_combout\,
	cout => \dds_core2|acc[29]~91\);

-- Location: LCFF_X13_Y9_N27
\dds_core2|acc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(29));

-- Location: LCCOMB_X13_Y9_N28
\dds_core2|acc[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[30]~92_combout\ = ((DDS2_acc_inc(30) $ (\dds_core2|acc\(30) $ (!\dds_core2|acc[29]~91\)))) # (GND)
-- \dds_core2|acc[30]~93\ = CARRY((DDS2_acc_inc(30) & ((\dds_core2|acc\(30)) # (!\dds_core2|acc[29]~91\))) # (!DDS2_acc_inc(30) & (\dds_core2|acc\(30) & !\dds_core2|acc[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DDS2_acc_inc(30),
	datab => \dds_core2|acc\(30),
	datad => VCC,
	cin => \dds_core2|acc[29]~91\,
	combout => \dds_core2|acc[30]~92_combout\,
	cout => \dds_core2|acc[30]~93\);

-- Location: LCFF_X13_Y9_N29
\dds_core2|acc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(30));

-- Location: LCFF_X13_Y9_N11
\dds_core2|acc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(21));

-- Location: LCCOMB_X12_Y8_N8
\dds_core2|sine1|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~0_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(21),
	combout => \dds_core2|sine1|comb~0_combout\);

-- Location: LCCOMB_X19_Y9_N22
\dds_core2|sine1|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~1_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(22),
	combout => \dds_core2|sine1|comb~1_combout\);

-- Location: LCCOMB_X12_Y8_N26
\dds_core2|sine1|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~2_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(23),
	combout => \dds_core2|sine1|comb~2_combout\);

-- Location: LCFF_X13_Y9_N17
\dds_core2|acc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(24));

-- Location: LCCOMB_X12_Y8_N12
\dds_core2|sine1|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~3_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(24),
	combout => \dds_core2|sine1|comb~3_combout\);

-- Location: LCCOMB_X19_Y9_N30
\dds_core2|sine1|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~4_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(30),
	datac => \dds_core2|acc\(25),
	combout => \dds_core2|sine1|comb~4_combout\);

-- Location: LCFF_X13_Y9_N21
\dds_core2|acc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(26));

-- Location: LCCOMB_X19_Y9_N28
\dds_core2|sine1|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~5_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(30),
	datac => \dds_core2|acc\(26),
	combout => \dds_core2|sine1|comb~5_combout\);

-- Location: LCCOMB_X12_Y8_N22
\dds_core2|sine1|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~6_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(27),
	combout => \dds_core2|sine1|comb~6_combout\);

-- Location: LCFF_X13_Y9_N25
\dds_core2|acc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(28));

-- Location: LCCOMB_X12_Y8_N16
\dds_core2|sine1|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~7_combout\ = \dds_core2|acc\(30) $ (\dds_core2|acc\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(30),
	datad => \dds_core2|acc\(28),
	combout => \dds_core2|sine1|comb~7_combout\);

-- Location: LCCOMB_X19_Y9_N26
\dds_core2|sine1|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|comb~8_combout\ = \dds_core2|acc\(29) $ (\dds_core2|acc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|acc\(29),
	datad => \dds_core2|acc\(30),
	combout => \dds_core2|sine1|comb~8_combout\);

-- Location: LCCOMB_X15_Y8_N18
\dds_core2|sine1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|Add0~2_combout\ = \dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(0),
	combout => \dds_core2|sine1|Add0~2_combout\);

-- Location: LCCOMB_X15_Y7_N0
\dds_core2|sine1|value[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[0]~16_combout\ = (\dds_core2|sine1|addr_MSBdelay\(1) & (\dds_core2|sine1|Add0~2_combout\ $ (VCC))) # (!\dds_core2|sine1|addr_MSBdelay\(1) & (\dds_core2|sine1|Add0~2_combout\ & VCC))
-- \dds_core2|sine1|value[0]~17\ = CARRY((\dds_core2|sine1|addr_MSBdelay\(1) & \dds_core2|sine1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|Add0~2_combout\,
	datad => VCC,
	combout => \dds_core2|sine1|value[0]~16_combout\,
	cout => \dds_core2|sine1|value[0]~17\);

-- Location: LCCOMB_X15_Y7_N2
\dds_core2|sine1|value[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[1]~18_combout\ = (\dds_core2|sine1|value[0]~17\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ ((!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))))) # (!\dds_core2|sine1|value[0]~17\ & 
-- ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (GND)))
-- \dds_core2|sine1|value[1]~19\ = CARRY((\dds_core2|sine1|addr_MSBdelay\(1) $ (!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1))) # (!\dds_core2|sine1|value[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[0]~17\,
	combout => \dds_core2|sine1|value[1]~18_combout\,
	cout => \dds_core2|sine1|value[1]~19\);

-- Location: LCCOMB_X15_Y7_N4
\dds_core2|sine1|value[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[2]~20_combout\ = (\dds_core2|sine1|value[1]~19\ & ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2))))) # (!\dds_core2|sine1|value[1]~19\ & 
-- (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (VCC))))
-- \dds_core2|sine1|value[2]~21\ = CARRY((!\dds_core2|sine1|value[1]~19\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2),
	datad => VCC,
	cin => \dds_core2|sine1|value[1]~19\,
	combout => \dds_core2|sine1|value[2]~20_combout\,
	cout => \dds_core2|sine1|value[2]~21\);

-- Location: LCCOMB_X15_Y7_N6
\dds_core2|sine1|value[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[3]~22_combout\ = (\dds_core2|sine1|value[2]~21\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ ((!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))))) # (!\dds_core2|sine1|value[2]~21\ & 
-- ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (GND)))
-- \dds_core2|sine1|value[3]~23\ = CARRY((\dds_core2|sine1|addr_MSBdelay\(1) $ (!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3))) # (!\dds_core2|sine1|value[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3),
	datad => VCC,
	cin => \dds_core2|sine1|value[2]~21\,
	combout => \dds_core2|sine1|value[3]~22_combout\,
	cout => \dds_core2|sine1|value[3]~23\);

-- Location: LCCOMB_X15_Y7_N8
\dds_core2|sine1|value[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[4]~24_combout\ = (\dds_core2|sine1|value[3]~23\ & ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4))))) # (!\dds_core2|sine1|value[3]~23\ & 
-- (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (VCC))))
-- \dds_core2|sine1|value[4]~25\ = CARRY((!\dds_core2|sine1|value[3]~23\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4),
	datad => VCC,
	cin => \dds_core2|sine1|value[3]~23\,
	combout => \dds_core2|sine1|value[4]~24_combout\,
	cout => \dds_core2|sine1|value[4]~25\);

-- Location: LCCOMB_X15_Y7_N10
\dds_core2|sine1|value[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[5]~26_combout\ = (\dds_core2|sine1|value[4]~25\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ ((!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))))) # (!\dds_core2|sine1|value[4]~25\ & 
-- ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (GND)))
-- \dds_core2|sine1|value[5]~27\ = CARRY((\dds_core2|sine1|addr_MSBdelay\(1) $ (!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5))) # (!\dds_core2|sine1|value[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5),
	datad => VCC,
	cin => \dds_core2|sine1|value[4]~25\,
	combout => \dds_core2|sine1|value[5]~26_combout\,
	cout => \dds_core2|sine1|value[5]~27\);

-- Location: LCCOMB_X13_Y9_N30
\dds_core2|acc[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc[31]~94_combout\ = \dds_core2|acc[30]~93\ $ (\dds_core2|acc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(31),
	cin => \dds_core2|acc[30]~93\,
	combout => \dds_core2|acc[31]~94_combout\);

-- Location: LCFF_X13_Y9_N31
\dds_core2|acc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(31));

-- Location: LCFF_X15_Y8_N19
\dds_core2|sine1|addr_MSBdelay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine1|addr_MSBdelay\(0));

-- Location: LCCOMB_X15_Y8_N16
\dds_core2|sine1|addr_MSBdelay[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|addr_MSBdelay[1]~feeder_combout\ = \dds_core2|sine1|addr_MSBdelay\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|sine1|addr_MSBdelay\(0),
	combout => \dds_core2|sine1|addr_MSBdelay[1]~feeder_combout\);

-- Location: LCFF_X15_Y8_N17
\dds_core2|sine1|addr_MSBdelay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine1|addr_MSBdelay[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine1|addr_MSBdelay\(1));

-- Location: LCCOMB_X15_Y7_N12
\dds_core2|sine1|value[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[6]~28_combout\ = (\dds_core2|sine1|value[5]~27\ & ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[5]~27\ & 
-- (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine1|value[6]~29\ = CARRY((!\dds_core2|sine1|value[5]~27\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[5]~27\,
	combout => \dds_core2|sine1|value[6]~28_combout\,
	cout => \dds_core2|sine1|value[6]~29\);

-- Location: LCCOMB_X15_Y7_N14
\dds_core2|sine1|value[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[7]~30_combout\ = (\dds_core2|sine1|value[6]~29\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ ((!\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[6]~29\ & 
-- ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (\dds_core2|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine1|value[7]~31\ = CARRY((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (!\dds_core2|sine1|addr_MSBdelay\(1))) # (!\dds_core2|sine1|value[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[6]~29\,
	combout => \dds_core2|sine1|value[7]~30_combout\,
	cout => \dds_core2|sine1|value[7]~31\);

-- Location: LCCOMB_X15_Y7_N16
\dds_core2|sine1|value[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[8]~32_combout\ = (\dds_core2|sine1|value[7]~31\ & ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8))))) # (!\dds_core2|sine1|value[7]~31\ & 
-- (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) $ (VCC))))
-- \dds_core2|sine1|value[8]~33\ = CARRY((!\dds_core2|sine1|value[7]~31\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8),
	datad => VCC,
	cin => \dds_core2|sine1|value[7]~31\,
	combout => \dds_core2|sine1|value[8]~32_combout\,
	cout => \dds_core2|sine1|value[8]~33\);

-- Location: LCCOMB_X15_Y7_N18
\dds_core2|sine1|value[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[9]~34_combout\ = (\dds_core2|sine1|value[8]~33\ & (\dds_core2|sine1|addr_MSBdelay\(1) $ ((!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))))) # (!\dds_core2|sine1|value[8]~33\ & 
-- ((\dds_core2|sine1|addr_MSBdelay\(1) $ (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (GND)))
-- \dds_core2|sine1|value[9]~35\ = CARRY((\dds_core2|sine1|addr_MSBdelay\(1) $ (!\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (!\dds_core2|sine1|value[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|addr_MSBdelay\(1),
	datab => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9),
	datad => VCC,
	cin => \dds_core2|sine1|value[8]~33\,
	combout => \dds_core2|sine1|value[9]~34_combout\,
	cout => \dds_core2|sine1|value[9]~35\);

-- Location: LCCOMB_X15_Y7_N20
\dds_core2|sine1|value[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[10]~36_combout\ = (\dds_core2|sine1|value[9]~35\ & ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[9]~35\ & 
-- (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core2|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine1|value[10]~37\ = CARRY((!\dds_core2|sine1|value[9]~35\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (\dds_core2|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[9]~35\,
	combout => \dds_core2|sine1|value[10]~36_combout\,
	cout => \dds_core2|sine1|value[10]~37\);

-- Location: LCCOMB_X15_Y7_N22
\dds_core2|sine1|value[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[11]~38_combout\ = (\dds_core2|sine1|value[10]~37\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ ((!\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[10]~37\ & 
-- ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (\dds_core2|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine1|value[11]~39\ = CARRY((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11) $ (!\dds_core2|sine1|addr_MSBdelay\(1))) # (!\dds_core2|sine1|value[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[10]~37\,
	combout => \dds_core2|sine1|value[11]~38_combout\,
	cout => \dds_core2|sine1|value[11]~39\);

-- Location: LCCOMB_X15_Y7_N24
\dds_core2|sine1|value[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[12]~40_combout\ = (\dds_core2|sine1|value[11]~39\ & ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[11]~39\ & 
-- (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core2|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine1|value[12]~41\ = CARRY((!\dds_core2|sine1|value[11]~39\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (\dds_core2|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[11]~39\,
	combout => \dds_core2|sine1|value[12]~40_combout\,
	cout => \dds_core2|sine1|value[12]~41\);

-- Location: LCCOMB_X15_Y7_N26
\dds_core2|sine1|value[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[13]~42_combout\ = (\dds_core2|sine1|value[12]~41\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ ((!\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[12]~41\ & 
-- ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (\dds_core2|sine1|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine1|value[13]~43\ = CARRY((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13) $ (!\dds_core2|sine1|addr_MSBdelay\(1))) # (!\dds_core2|sine1|value[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[12]~41\,
	combout => \dds_core2|sine1|value[13]~42_combout\,
	cout => \dds_core2|sine1|value[13]~43\);

-- Location: LCCOMB_X15_Y7_N28
\dds_core2|sine1|value[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[14]~44_combout\ = (\dds_core2|sine1|value[13]~43\ & ((\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core2|sine1|addr_MSBdelay\(1))))) # (!\dds_core2|sine1|value[13]~43\ & 
-- (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core2|sine1|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine1|value[14]~45\ = CARRY((!\dds_core2|sine1|value[13]~43\ & (\dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (\dds_core2|sine1|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14),
	datab => \dds_core2|sine1|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine1|value[13]~43\,
	combout => \dds_core2|sine1|value[14]~44_combout\,
	cout => \dds_core2|sine1|value[14]~45\);

-- Location: LCCOMB_X15_Y7_N30
\dds_core2|sine1|value[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine1|value[15]~46_combout\ = \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15) $ (\dds_core2|sine1|value[14]~45\ $ (\dds_core2|sine1|addr_MSBdelay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine1|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15),
	datad => \dds_core2|sine1|addr_MSBdelay\(1),
	cin => \dds_core2|sine1|value[14]~45\,
	combout => \dds_core2|sine1|value[15]~46_combout\);

-- Location: LCCOMB_X15_Y9_N18
\dds_core2|acc_delayA[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayA[0]~feeder_combout\ = \dds_core2|acc\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(13),
	combout => \dds_core2|acc_delayA[0]~feeder_combout\);

-- Location: LCFF_X15_Y9_N19
\dds_core2|acc_delayA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(0));

-- Location: LCFF_X15_Y6_N3
\dds_core2|acc_delayB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayA\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(0));

-- Location: LCCOMB_X15_Y6_N28
\dds_core2|acc_delayC[0]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayC[0]~_Duplicate_1feeder_combout\ = \dds_core2|acc_delayB\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayB\(0),
	combout => \dds_core2|acc_delayC[0]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X15_Y6_N29
\dds_core2|acc_delayC[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayC[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[0]~_Duplicate_1_regout\);

-- Location: LCFF_X15_Y9_N29
\dds_core2|acc_delayA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(1));

-- Location: LCCOMB_X15_Y6_N20
\dds_core2|acc_delayB[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[1]~feeder_combout\ = \dds_core2|acc_delayA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(1),
	combout => \dds_core2|acc_delayB[1]~feeder_combout\);

-- Location: LCFF_X15_Y6_N21
\dds_core2|acc_delayB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(1));

-- Location: LCFF_X15_Y6_N5
\dds_core2|acc_delayC[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X15_Y6_N2
\dds_core2|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~1_cout\ = CARRY(!\dds_core2|acc_delayC[0]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc_delayC[0]~_Duplicate_1_regout\,
	datad => VCC,
	cout => \dds_core2|Add2~1_cout\);

-- Location: LCCOMB_X15_Y6_N4
\dds_core2|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~2_combout\ = (\dds_core2|acc_delayC[1]~_Duplicate_1_regout\ & ((\dds_core2|Add2~1_cout\) # (GND))) # (!\dds_core2|acc_delayC[1]~_Duplicate_1_regout\ & (!\dds_core2|Add2~1_cout\))
-- \dds_core2|Add2~3\ = CARRY((\dds_core2|acc_delayC[1]~_Duplicate_1_regout\) # (!\dds_core2|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc_delayC[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~1_cout\,
	combout => \dds_core2|Add2~2_combout\,
	cout => \dds_core2|Add2~3\);

-- Location: LCCOMB_X15_Y6_N6
\dds_core2|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~4_combout\ = (\dds_core2|acc_delayC[2]~_Duplicate_1_regout\ & (!\dds_core2|Add2~3\ & VCC)) # (!\dds_core2|acc_delayC[2]~_Duplicate_1_regout\ & (\dds_core2|Add2~3\ $ (GND)))
-- \dds_core2|Add2~5\ = CARRY((!\dds_core2|acc_delayC[2]~_Duplicate_1_regout\ & !\dds_core2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc_delayC[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~3\,
	combout => \dds_core2|Add2~4_combout\,
	cout => \dds_core2|Add2~5\);

-- Location: LCFF_X15_Y9_N17
\dds_core2|acc_delayA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(3));

-- Location: LCCOMB_X15_Y6_N0
\dds_core2|acc_delayB[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[3]~feeder_combout\ = \dds_core2|acc_delayA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(3),
	combout => \dds_core2|acc_delayB[3]~feeder_combout\);

-- Location: LCFF_X15_Y6_N1
\dds_core2|acc_delayB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(3));

-- Location: LCFF_X15_Y6_N9
\dds_core2|acc_delayC[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X15_Y6_N8
\dds_core2|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~6_combout\ = (\dds_core2|acc_delayC[3]~_Duplicate_1_regout\ & ((\dds_core2|Add2~5\) # (GND))) # (!\dds_core2|acc_delayC[3]~_Duplicate_1_regout\ & (!\dds_core2|Add2~5\))
-- \dds_core2|Add2~7\ = CARRY((\dds_core2|acc_delayC[3]~_Duplicate_1_regout\) # (!\dds_core2|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc_delayC[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~5\,
	combout => \dds_core2|Add2~6_combout\,
	cout => \dds_core2|Add2~7\);

-- Location: LCCOMB_X15_Y6_N10
\dds_core2|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~8_combout\ = (\dds_core2|acc_delayC[4]~_Duplicate_1_regout\ & (!\dds_core2|Add2~7\ & VCC)) # (!\dds_core2|acc_delayC[4]~_Duplicate_1_regout\ & (\dds_core2|Add2~7\ $ (GND)))
-- \dds_core2|Add2~9\ = CARRY((!\dds_core2|acc_delayC[4]~_Duplicate_1_regout\ & !\dds_core2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc_delayC[4]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~7\,
	combout => \dds_core2|Add2~8_combout\,
	cout => \dds_core2|Add2~9\);

-- Location: LCCOMB_X15_Y6_N12
\dds_core2|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~10_combout\ = (\dds_core2|acc_delayC[5]~_Duplicate_1_regout\ & ((\dds_core2|Add2~9\) # (GND))) # (!\dds_core2|acc_delayC[5]~_Duplicate_1_regout\ & (!\dds_core2|Add2~9\))
-- \dds_core2|Add2~11\ = CARRY((\dds_core2|acc_delayC[5]~_Duplicate_1_regout\) # (!\dds_core2|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc_delayC[5]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~9\,
	combout => \dds_core2|Add2~10_combout\,
	cout => \dds_core2|Add2~11\);

-- Location: LCFF_X13_Y9_N7
\dds_core2|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc\(19));

-- Location: LCFF_X15_Y9_N23
\dds_core2|acc_delayA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(6));

-- Location: LCCOMB_X15_Y6_N30
\dds_core2|acc_delayB[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[6]~feeder_combout\ = \dds_core2|acc_delayA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(6),
	combout => \dds_core2|acc_delayB[6]~feeder_combout\);

-- Location: LCFF_X15_Y6_N31
\dds_core2|acc_delayB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(6));

-- Location: LCFF_X15_Y6_N15
\dds_core2|acc_delayC[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc_delayB\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayC[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X15_Y6_N14
\dds_core2|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~12_combout\ = (\dds_core2|acc_delayC[6]~_Duplicate_1_regout\ & (!\dds_core2|Add2~11\ & VCC)) # (!\dds_core2|acc_delayC[6]~_Duplicate_1_regout\ & (\dds_core2|Add2~11\ $ (GND)))
-- \dds_core2|Add2~13\ = CARRY((!\dds_core2|acc_delayC[6]~_Duplicate_1_regout\ & !\dds_core2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc_delayC[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~11\,
	combout => \dds_core2|Add2~12_combout\,
	cout => \dds_core2|Add2~13\);

-- Location: LCCOMB_X15_Y6_N16
\dds_core2|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~14_combout\ = (\dds_core2|acc_delayC[7]~_Duplicate_1_regout\ & ((\dds_core2|Add2~13\) # (GND))) # (!\dds_core2|acc_delayC[7]~_Duplicate_1_regout\ & (!\dds_core2|Add2~13\))
-- \dds_core2|Add2~15\ = CARRY((\dds_core2|acc_delayC[7]~_Duplicate_1_regout\) # (!\dds_core2|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc_delayC[7]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \dds_core2|Add2~13\,
	combout => \dds_core2|Add2~14_combout\,
	cout => \dds_core2|Add2~15\);

-- Location: LCCOMB_X15_Y6_N18
\dds_core2|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add2~16_combout\ = !\dds_core2|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dds_core2|Add2~15\,
	combout => \dds_core2|Add2~16_combout\);

-- Location: DSPMULT_X16_Y6_N0
\dds_core2|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \DAC_clk_in~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \dds_core2|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \dds_core2|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N0
\dds_core2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~0_combout\ = \dds_core2|acc\(21) $ (VCC)
-- \dds_core2|Add1~1\ = CARRY(\dds_core2|acc\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(21),
	datad => VCC,
	combout => \dds_core2|Add1~0_combout\,
	cout => \dds_core2|Add1~1\);

-- Location: LCCOMB_X19_Y9_N2
\dds_core2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~2_combout\ = (\dds_core2|acc\(22) & (!\dds_core2|Add1~1\)) # (!\dds_core2|acc\(22) & ((\dds_core2|Add1~1\) # (GND)))
-- \dds_core2|Add1~3\ = CARRY((!\dds_core2|Add1~1\) # (!\dds_core2|acc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(22),
	datad => VCC,
	cin => \dds_core2|Add1~1\,
	combout => \dds_core2|Add1~2_combout\,
	cout => \dds_core2|Add1~3\);

-- Location: LCCOMB_X19_Y9_N4
\dds_core2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~4_combout\ = (\dds_core2|acc\(23) & (\dds_core2|Add1~3\ $ (GND))) # (!\dds_core2|acc\(23) & (!\dds_core2|Add1~3\ & VCC))
-- \dds_core2|Add1~5\ = CARRY((\dds_core2|acc\(23) & !\dds_core2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(23),
	datad => VCC,
	cin => \dds_core2|Add1~3\,
	combout => \dds_core2|Add1~4_combout\,
	cout => \dds_core2|Add1~5\);

-- Location: LCCOMB_X19_Y9_N6
\dds_core2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~6_combout\ = (\dds_core2|acc\(24) & (!\dds_core2|Add1~5\)) # (!\dds_core2|acc\(24) & ((\dds_core2|Add1~5\) # (GND)))
-- \dds_core2|Add1~7\ = CARRY((!\dds_core2|Add1~5\) # (!\dds_core2|acc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(24),
	datad => VCC,
	cin => \dds_core2|Add1~5\,
	combout => \dds_core2|Add1~6_combout\,
	cout => \dds_core2|Add1~7\);

-- Location: LCCOMB_X19_Y9_N10
\dds_core2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~10_combout\ = (\dds_core2|acc\(26) & (!\dds_core2|Add1~9\)) # (!\dds_core2|acc\(26) & ((\dds_core2|Add1~9\) # (GND)))
-- \dds_core2|Add1~11\ = CARRY((!\dds_core2|Add1~9\) # (!\dds_core2|acc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(26),
	datad => VCC,
	cin => \dds_core2|Add1~9\,
	combout => \dds_core2|Add1~10_combout\,
	cout => \dds_core2|Add1~11\);

-- Location: LCCOMB_X19_Y9_N14
\dds_core2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~14_combout\ = (\dds_core2|acc\(28) & (!\dds_core2|Add1~13\)) # (!\dds_core2|acc\(28) & ((\dds_core2|Add1~13\) # (GND)))
-- \dds_core2|Add1~15\ = CARRY((!\dds_core2|Add1~13\) # (!\dds_core2|acc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(28),
	datad => VCC,
	cin => \dds_core2|Add1~13\,
	combout => \dds_core2|Add1~14_combout\,
	cout => \dds_core2|Add1~15\);

-- Location: LCCOMB_X19_Y9_N16
\dds_core2|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~16_combout\ = (\dds_core2|acc\(29) & (\dds_core2|Add1~15\ $ (GND))) # (!\dds_core2|acc\(29) & (!\dds_core2|Add1~15\ & VCC))
-- \dds_core2|Add1~17\ = CARRY((\dds_core2|acc\(29) & !\dds_core2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|acc\(29),
	datad => VCC,
	cin => \dds_core2|Add1~15\,
	combout => \dds_core2|Add1~16_combout\,
	cout => \dds_core2|Add1~17\);

-- Location: LCCOMB_X19_Y9_N18
\dds_core2|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~18_combout\ = (\dds_core2|acc\(30) & (!\dds_core2|Add1~17\)) # (!\dds_core2|acc\(30) & ((\dds_core2|Add1~17\) # (GND)))
-- \dds_core2|Add1~19\ = CARRY((!\dds_core2|Add1~17\) # (!\dds_core2|acc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|acc\(30),
	datad => VCC,
	cin => \dds_core2|Add1~17\,
	combout => \dds_core2|Add1~18_combout\,
	cout => \dds_core2|Add1~19\);

-- Location: LCCOMB_X19_Y9_N20
\dds_core2|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|Add1~20_combout\ = \dds_core2|Add1~19\ $ (!\dds_core2|acc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(31),
	cin => \dds_core2|Add1~19\,
	combout => \dds_core2|Add1~20_combout\);

-- Location: LCFF_X19_Y9_N21
\dds_core2|sine2|addr_MSBdelay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine2|addr_MSBdelay\(0));

-- Location: LCFF_X19_Y9_N23
\dds_core2|sine2|addr_MSBdelay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|sine2|addr_MSBdelay\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine2|addr_MSBdelay\(1));

-- Location: LCCOMB_X20_Y7_N0
\dds_core2|sine2|value[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[0]~16_combout\ = (\dds_core2|sine2|Add0~2_combout\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ (VCC))) # (!\dds_core2|sine2|Add0~2_combout\ & (\dds_core2|sine2|addr_MSBdelay\(1) & VCC))
-- \dds_core2|sine2|value[0]~17\ = CARRY((\dds_core2|sine2|Add0~2_combout\ & \dds_core2|sine2|addr_MSBdelay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|Add0~2_combout\,
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	combout => \dds_core2|sine2|value[0]~16_combout\,
	cout => \dds_core2|sine2|value[0]~17\);

-- Location: LCCOMB_X20_Y7_N2
\dds_core2|sine2|value[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[1]~18_combout\ = (\dds_core2|sine2|value[0]~17\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) $ ((!\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[0]~17\ & 
-- ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) $ (\dds_core2|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine2|value[1]~19\ = CARRY((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1) $ (!\dds_core2|sine2|addr_MSBdelay\(1))) # (!\dds_core2|sine2|value[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(1),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[0]~17\,
	combout => \dds_core2|sine2|value[1]~18_combout\,
	cout => \dds_core2|sine2|value[1]~19\);

-- Location: LCCOMB_X20_Y7_N4
\dds_core2|sine2|value[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[2]~20_combout\ = (\dds_core2|sine2|value[1]~19\ & ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[1]~19\ & 
-- (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (\dds_core2|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine2|value[2]~21\ = CARRY((!\dds_core2|sine2|value[1]~19\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2) $ (\dds_core2|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(2),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[1]~19\,
	combout => \dds_core2|sine2|value[2]~20_combout\,
	cout => \dds_core2|sine2|value[2]~21\);

-- Location: LCCOMB_X20_Y7_N6
\dds_core2|sine2|value[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[3]~22_combout\ = (\dds_core2|sine2|value[2]~21\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) $ ((!\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[2]~21\ & 
-- ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) $ (\dds_core2|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine2|value[3]~23\ = CARRY((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3) $ (!\dds_core2|sine2|addr_MSBdelay\(1))) # (!\dds_core2|sine2|value[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(3),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[2]~21\,
	combout => \dds_core2|sine2|value[3]~22_combout\,
	cout => \dds_core2|sine2|value[3]~23\);

-- Location: LCCOMB_X20_Y7_N8
\dds_core2|sine2|value[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[4]~24_combout\ = (\dds_core2|sine2|value[3]~23\ & ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[3]~23\ & 
-- (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (\dds_core2|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine2|value[4]~25\ = CARRY((!\dds_core2|sine2|value[3]~23\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4) $ (\dds_core2|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(4),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[3]~23\,
	combout => \dds_core2|sine2|value[4]~24_combout\,
	cout => \dds_core2|sine2|value[4]~25\);

-- Location: LCCOMB_X20_Y7_N10
\dds_core2|sine2|value[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[5]~26_combout\ = (\dds_core2|sine2|value[4]~25\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) $ ((!\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[4]~25\ & 
-- ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) $ (\dds_core2|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine2|value[5]~27\ = CARRY((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5) $ (!\dds_core2|sine2|addr_MSBdelay\(1))) # (!\dds_core2|sine2|value[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(5),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[4]~25\,
	combout => \dds_core2|sine2|value[5]~26_combout\,
	cout => \dds_core2|sine2|value[5]~27\);

-- Location: LCCOMB_X20_Y7_N12
\dds_core2|sine2|value[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[6]~28_combout\ = (\dds_core2|sine2|value[5]~27\ & ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[5]~27\ & 
-- (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine2|addr_MSBdelay\(1) $ (VCC))))
-- \dds_core2|sine2|value[6]~29\ = CARRY((!\dds_core2|sine2|value[5]~27\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6) $ (\dds_core2|sine2|addr_MSBdelay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(6),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[5]~27\,
	combout => \dds_core2|sine2|value[6]~28_combout\,
	cout => \dds_core2|sine2|value[6]~29\);

-- Location: LCCOMB_X20_Y7_N14
\dds_core2|sine2|value[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[7]~30_combout\ = (\dds_core2|sine2|value[6]~29\ & (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ ((!\dds_core2|sine2|addr_MSBdelay\(1))))) # (!\dds_core2|sine2|value[6]~29\ & 
-- ((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (\dds_core2|sine2|addr_MSBdelay\(1))) # (GND)))
-- \dds_core2|sine2|value[7]~31\ = CARRY((\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7) $ (!\dds_core2|sine2|addr_MSBdelay\(1))) # (!\dds_core2|sine2|value[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(7),
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => VCC,
	cin => \dds_core2|sine2|value[6]~29\,
	combout => \dds_core2|sine2|value[7]~30_combout\,
	cout => \dds_core2|sine2|value[7]~31\);

-- Location: LCCOMB_X19_Y8_N24
\dds_core2|sine2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~0_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~0_combout\,
	combout => \dds_core2|sine2|comb~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\dds_core2|sine2|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~1_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~2_combout\,
	combout => \dds_core2|sine2|comb~1_combout\);

-- Location: LCCOMB_X19_Y8_N4
\dds_core2|sine2|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~2_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~4_combout\,
	combout => \dds_core2|sine2|comb~2_combout\);

-- Location: LCCOMB_X19_Y8_N22
\dds_core2|sine2|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~3_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~6_combout\,
	combout => \dds_core2|sine2|comb~3_combout\);

-- Location: LCCOMB_X19_Y8_N0
\dds_core2|sine2|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~4_combout\ = \dds_core2|Add1~8_combout\ $ (\dds_core2|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Add1~8_combout\,
	datac => \dds_core2|Add1~18_combout\,
	combout => \dds_core2|sine2|comb~4_combout\);

-- Location: LCCOMB_X19_Y8_N10
\dds_core2|sine2|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~5_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~10_combout\,
	combout => \dds_core2|sine2|comb~5_combout\);

-- Location: LCCOMB_X19_Y8_N12
\dds_core2|sine2|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~6_combout\ = \dds_core2|Add1~12_combout\ $ (\dds_core2|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Add1~12_combout\,
	datac => \dds_core2|Add1~18_combout\,
	combout => \dds_core2|sine2|comb~6_combout\);

-- Location: LCCOMB_X19_Y8_N30
\dds_core2|sine2|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~7_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_core2|Add1~18_combout\,
	datad => \dds_core2|Add1~14_combout\,
	combout => \dds_core2|sine2|comb~7_combout\);

-- Location: LCCOMB_X19_Y8_N8
\dds_core2|sine2|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|comb~8_combout\ = \dds_core2|Add1~18_combout\ $ (\dds_core2|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Add1~18_combout\,
	datac => \dds_core2|Add1~16_combout\,
	combout => \dds_core2|sine2|comb~8_combout\);

-- Location: LCCOMB_X20_Y7_N16
\dds_core2|sine2|value[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[8]~32_combout\ = (\dds_core2|sine2|value[7]~31\ & ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8))))) # (!\dds_core2|sine2|value[7]~31\ & 
-- (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8) $ (VCC))))
-- \dds_core2|sine2|value[8]~33\ = CARRY((!\dds_core2|sine2|value[7]~31\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(8),
	datad => VCC,
	cin => \dds_core2|sine2|value[7]~31\,
	combout => \dds_core2|sine2|value[8]~32_combout\,
	cout => \dds_core2|sine2|value[8]~33\);

-- Location: M4K_X23_Y9
\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDFBF7EFDF3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9F3E7CF9EBD7AF5EBD7AF5EBD7AF5EBD7AF5EBD78F1E3C78F1E3C78F1E3C78F1E3C76EDDBB76EDDBB76EDDBB76EDD3A74E9D3A74E9D3A74E9CB972E5CB972E5CB972E5C3870E1C3870E1C3870DDBB76EDDBB76EDDBB66CD9B366CD9B366CD5AB56AD5AB56AD5A3468D1A3468D1A3366CD9B366CD9B264C993264C993",
	mem_init0 => X"262C58B162C58B160C183060C18305EBD7AF5EBD7AE5CB972E5CB972D5AB56AD5AB562C58B162C58AD5AB56AD5AB54A952A54A952952A54A952A142850A14284E9D3A74E9D3264C993264C952A54A952A44891224488D1A3468D1A2448912244850A142850A04081020407CF9F3E7CF9E3C78F1E3C74E9D3A74E9C3870E1C366CD9B366CD1A3468D1A3264C993260C183060C172E5CB972C58B162C58A952A54A942850A14264C993264C912244891122448912040810204078F1E3C78E1C3870E1A3468D1A3060C183060B162C58B142850A1424489122440810204070E1C3870C183060C142850A142840810204060C1830608102040808102040800000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS_sine_lookup_linearinterpolated:dds_core2|sine_lookup:sine2|lpm_ram_dp:ROM_sine|altdpram:sram|altsyncram:ram_block|altsyncram_qmq1:auto_generated|altsyncram_a4o1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \DAC_clk_in~clkctrl_outclk\,
	clk1 => \DAC_clk_in~clkctrl_outclk\,
	ena1 => GND,
	portadatain => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y7_N18
\dds_core2|sine2|value[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[9]~34_combout\ = (\dds_core2|sine2|value[8]~33\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ ((!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))))) # (!\dds_core2|sine2|value[8]~33\ & 
-- ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (GND)))
-- \dds_core2|sine2|value[9]~35\ = CARRY((\dds_core2|sine2|addr_MSBdelay\(1) $ (!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9))) # (!\dds_core2|sine2|value[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(9),
	datad => VCC,
	cin => \dds_core2|sine2|value[8]~33\,
	combout => \dds_core2|sine2|value[9]~34_combout\,
	cout => \dds_core2|sine2|value[9]~35\);

-- Location: LCCOMB_X20_Y7_N20
\dds_core2|sine2|value[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[10]~36_combout\ = (\dds_core2|sine2|value[9]~35\ & ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10))))) # (!\dds_core2|sine2|value[9]~35\ & 
-- (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10) $ (VCC))))
-- \dds_core2|sine2|value[10]~37\ = CARRY((!\dds_core2|sine2|value[9]~35\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(10),
	datad => VCC,
	cin => \dds_core2|sine2|value[9]~35\,
	combout => \dds_core2|sine2|value[10]~36_combout\,
	cout => \dds_core2|sine2|value[10]~37\);

-- Location: LCCOMB_X20_Y7_N22
\dds_core2|sine2|value[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[11]~38_combout\ = (\dds_core2|sine2|value[10]~37\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ ((!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11))))) # (!\dds_core2|sine2|value[10]~37\ & 
-- ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11))) # (GND)))
-- \dds_core2|sine2|value[11]~39\ = CARRY((\dds_core2|sine2|addr_MSBdelay\(1) $ (!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11))) # (!\dds_core2|sine2|value[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(11),
	datad => VCC,
	cin => \dds_core2|sine2|value[10]~37\,
	combout => \dds_core2|sine2|value[11]~38_combout\,
	cout => \dds_core2|sine2|value[11]~39\);

-- Location: LCCOMB_X20_Y7_N24
\dds_core2|sine2|value[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[12]~40_combout\ = (\dds_core2|sine2|value[11]~39\ & ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12))))) # (!\dds_core2|sine2|value[11]~39\ & 
-- (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12) $ (VCC))))
-- \dds_core2|sine2|value[12]~41\ = CARRY((!\dds_core2|sine2|value[11]~39\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(12),
	datad => VCC,
	cin => \dds_core2|sine2|value[11]~39\,
	combout => \dds_core2|sine2|value[12]~40_combout\,
	cout => \dds_core2|sine2|value[12]~41\);

-- Location: LCCOMB_X20_Y7_N26
\dds_core2|sine2|value[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[13]~42_combout\ = (\dds_core2|sine2|value[12]~41\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ ((!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13))))) # (!\dds_core2|sine2|value[12]~41\ & 
-- ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13))) # (GND)))
-- \dds_core2|sine2|value[13]~43\ = CARRY((\dds_core2|sine2|addr_MSBdelay\(1) $ (!\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13))) # (!\dds_core2|sine2|value[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(13),
	datad => VCC,
	cin => \dds_core2|sine2|value[12]~41\,
	combout => \dds_core2|sine2|value[13]~42_combout\,
	cout => \dds_core2|sine2|value[13]~43\);

-- Location: LCCOMB_X20_Y7_N28
\dds_core2|sine2|value[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[14]~44_combout\ = (\dds_core2|sine2|value[13]~43\ & ((\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14))))) # (!\dds_core2|sine2|value[13]~43\ & 
-- (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14) $ (VCC))))
-- \dds_core2|sine2|value[14]~45\ = CARRY((!\dds_core2|sine2|value[13]~43\ & (\dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|sine2|addr_MSBdelay\(1),
	datab => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(14),
	datad => VCC,
	cin => \dds_core2|sine2|value[13]~43\,
	combout => \dds_core2|sine2|value[14]~44_combout\,
	cout => \dds_core2|sine2|value[14]~45\);

-- Location: LCCOMB_X20_Y7_N30
\dds_core2|sine2|value[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine2|value[15]~46_combout\ = \dds_core2|sine2|addr_MSBdelay\(1) $ (\dds_core2|sine2|value[14]~45\ $ (\dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_core2|sine2|addr_MSBdelay\(1),
	datad => \dds_core2|sine2|ROM_sine|sram|ram_block|auto_generated|altsyncram1|q_a\(15),
	cin => \dds_core2|sine2|value[14]~45\,
	combout => \dds_core2|sine2|value[15]~46_combout\);

-- Location: LCCOMB_X15_Y9_N6
\dds_core2|acc_delayA[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayA[2]~feeder_combout\ = \dds_core2|acc\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(15),
	combout => \dds_core2|acc_delayA[2]~feeder_combout\);

-- Location: LCFF_X15_Y9_N7
\dds_core2|acc_delayA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(2));

-- Location: LCCOMB_X15_Y6_N24
\dds_core2|acc_delayB[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[2]~feeder_combout\ = \dds_core2|acc_delayA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(2),
	combout => \dds_core2|acc_delayB[2]~feeder_combout\);

-- Location: LCFF_X15_Y6_N25
\dds_core2|acc_delayB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(2));

-- Location: LCFF_X15_Y9_N27
\dds_core2|acc_delayA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	sdata => \dds_core2|acc\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(4));

-- Location: LCCOMB_X15_Y6_N26
\dds_core2|acc_delayB[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[4]~feeder_combout\ = \dds_core2|acc_delayA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(4),
	combout => \dds_core2|acc_delayB[4]~feeder_combout\);

-- Location: LCFF_X15_Y6_N27
\dds_core2|acc_delayB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(4));

-- Location: LCCOMB_X15_Y9_N12
\dds_core2|acc_delayA[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayA[5]~feeder_combout\ = \dds_core2|acc\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(18),
	combout => \dds_core2|acc_delayA[5]~feeder_combout\);

-- Location: LCFF_X15_Y9_N13
\dds_core2|acc_delayA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayA[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(5));

-- Location: LCCOMB_X15_Y6_N22
\dds_core2|acc_delayB[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[5]~feeder_combout\ = \dds_core2|acc_delayA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(5),
	combout => \dds_core2|acc_delayB[5]~feeder_combout\);

-- Location: LCFF_X15_Y6_N23
\dds_core2|acc_delayB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(5));

-- Location: LCCOMB_X15_Y9_N0
\dds_core2|acc_delayA[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayA[7]~feeder_combout\ = \dds_core2|acc\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc\(20),
	combout => \dds_core2|acc_delayA[7]~feeder_combout\);

-- Location: LCFF_X15_Y9_N1
\dds_core2|acc_delayA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayA[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayA\(7));

-- Location: LCCOMB_X15_Y9_N8
\dds_core2|acc_delayB[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|acc_delayB[7]~feeder_combout\ = \dds_core2|acc_delayA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dds_core2|acc_delayA\(7),
	combout => \dds_core2|acc_delayB[7]~feeder_combout\);

-- Location: LCFF_X15_Y9_N9
\dds_core2|acc_delayB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|acc_delayB[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|acc_delayB\(7));

-- Location: DSPMULT_X16_Y5_N0
\dds_core2|Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \DAC_clk_in~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \dds_core2|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \dds_core2|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \dds_core2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y6_N8
\dds_core2|sine_p[15]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~11_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~dataout\ & \dds_core2|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~dataout\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	cout => \dds_core2|sine_p[15]~11_cout\);

-- Location: LCCOMB_X17_Y6_N10
\dds_core2|sine_p[15]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~13_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\dds_core2|sine_p[15]~11_cout\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT1\ & 
-- ((!\dds_core2|sine_p[15]~11_cout\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~11_cout\,
	cout => \dds_core2|sine_p[15]~13_cout\);

-- Location: LCCOMB_X17_Y6_N12
\dds_core2|sine_p[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~15_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT2\) # (!\dds_core2|sine_p[15]~13_cout\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT2\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT2\ & !\dds_core2|sine_p[15]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~13_cout\,
	cout => \dds_core2|sine_p[15]~15_cout\);

-- Location: LCCOMB_X17_Y6_N14
\dds_core2|sine_p[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~17_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\dds_core2|sine_p[15]~15_cout\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT3\ & 
-- ((!\dds_core2|sine_p[15]~15_cout\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~15_cout\,
	cout => \dds_core2|sine_p[15]~17_cout\);

-- Location: LCCOMB_X17_Y6_N16
\dds_core2|sine_p[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~19_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\dds_core2|sine_p[15]~17_cout\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\dds_core2|sine_p[15]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~17_cout\,
	cout => \dds_core2|sine_p[15]~19_cout\);

-- Location: LCCOMB_X17_Y6_N18
\dds_core2|sine_p[15]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~21_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\dds_core2|sine_p[15]~19_cout\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- ((!\dds_core2|sine_p[15]~19_cout\) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~19_cout\,
	cout => \dds_core2|sine_p[15]~21_cout\);

-- Location: LCCOMB_X17_Y6_N20
\dds_core2|sine_p[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~23_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\dds_core2|sine_p[15]~21_cout\))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\dds_core2|sine_p[15]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~21_cout\,
	cout => \dds_core2|sine_p[15]~23_cout\);

-- Location: LCCOMB_X17_Y6_N22
\dds_core2|sine_p[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~25_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\dds_core2|sine_p[15]~23_cout\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- ((!\dds_core2|sine_p[15]~23_cout\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~23_cout\,
	cout => \dds_core2|sine_p[15]~25_cout\);

-- Location: LCCOMB_X17_Y6_N24
\dds_core2|sine_p[15]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~27_cout\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\dds_core2|sine_p[15]~25_cout\))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT8\ & 
-- (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\dds_core2|sine_p[15]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~25_cout\,
	cout => \dds_core2|sine_p[15]~27_cout\);

-- Location: LCCOMB_X17_Y6_N26
\dds_core2|sine_p[15]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~29_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\dds_core2|sine_p[15]~27_cout\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\dds_core2|sine_p[15]~27_cout\) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~27_cout\,
	cout => \dds_core2|sine_p[15]~29_cout\);

-- Location: LCCOMB_X17_Y6_N28
\dds_core2|sine_p[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~31_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\dds_core2|sine_p[15]~29_cout\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\dds_core2|sine_p[15]~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~29_cout\,
	cout => \dds_core2|sine_p[15]~31_cout\);

-- Location: LCCOMB_X17_Y6_N30
\dds_core2|sine_p[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~33_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\dds_core2|sine_p[15]~31_cout\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\dds_core2|sine_p[15]~31_cout\) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~31_cout\,
	cout => \dds_core2|sine_p[15]~33_cout\);

-- Location: LCCOMB_X17_Y5_N0
\dds_core2|sine_p[15]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~35_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT12\) # (!\dds_core2|sine_p[15]~33_cout\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT12\ & !\dds_core2|sine_p[15]~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~33_cout\,
	cout => \dds_core2|sine_p[15]~35_cout\);

-- Location: LCCOMB_X17_Y5_N2
\dds_core2|sine_p[15]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~37_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\dds_core2|sine_p[15]~35_cout\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- ((!\dds_core2|sine_p[15]~35_cout\) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~35_cout\,
	cout => \dds_core2|sine_p[15]~37_cout\);

-- Location: LCCOMB_X17_Y5_N4
\dds_core2|sine_p[15]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~39_cout\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\dds_core2|sine_p[15]~37_cout\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\dds_core2|sine_p[15]~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~37_cout\,
	cout => \dds_core2|sine_p[15]~39_cout\);

-- Location: LCCOMB_X17_Y5_N6
\dds_core2|sine_p[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[15]~40_combout\ = (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\dds_core2|sine_p[15]~39_cout\ & VCC)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\dds_core2|sine_p[15]~39_cout\)))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\dds_core2|sine_p[15]~39_cout\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\dds_core2|sine_p[15]~39_cout\) # (GND)))))
-- \dds_core2|sine_p[15]~41\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\dds_core2|sine_p[15]~39_cout\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- ((!\dds_core2|sine_p[15]~39_cout\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~39_cout\,
	combout => \dds_core2|sine_p[15]~40_combout\,
	cout => \dds_core2|sine_p[15]~41\);

-- Location: LCFF_X17_Y5_N7
\dds_core2|sine_p[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(15));

-- Location: LCCOMB_X17_Y5_N8
\dds_core2|sine_p[16]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[16]~42_combout\ = ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\dds_core2|sine_p[15]~41\)))) # (GND)
-- \dds_core2|sine_p[16]~43\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\dds_core2|sine_p[15]~41\))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\dds_core2|sine_p[15]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \dds_core2|sine_p[15]~41\,
	combout => \dds_core2|sine_p[16]~42_combout\,
	cout => \dds_core2|sine_p[16]~43\);

-- Location: LCFF_X17_Y5_N9
\dds_core2|sine_p[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[16]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(16));

-- Location: LCCOMB_X17_Y5_N10
\dds_core2|sine_p[17]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[17]~44_combout\ = (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\dds_core2|sine_p[16]~43\ & VCC)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\dds_core2|sine_p[16]~43\)))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\dds_core2|sine_p[16]~43\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\dds_core2|sine_p[16]~43\) # (GND)))))
-- \dds_core2|sine_p[17]~45\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\dds_core2|sine_p[16]~43\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\ & 
-- ((!\dds_core2|sine_p[16]~43\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \dds_core2|sine_p[16]~43\,
	combout => \dds_core2|sine_p[17]~44_combout\,
	cout => \dds_core2|sine_p[17]~45\);

-- Location: LCFF_X17_Y5_N11
\dds_core2|sine_p[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[17]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(17));

-- Location: LCCOMB_X17_Y5_N12
\dds_core2|sine_p[18]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[18]~46_combout\ = ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (!\dds_core2|sine_p[17]~45\)))) # (GND)
-- \dds_core2|sine_p[18]~47\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\dds_core2|sine_p[17]~45\))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\dds_core2|sine_p[17]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \dds_core2|sine_p[17]~45\,
	combout => \dds_core2|sine_p[18]~46_combout\,
	cout => \dds_core2|sine_p[18]~47\);

-- Location: LCFF_X17_Y5_N13
\dds_core2|sine_p[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[18]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(18));

-- Location: LCCOMB_X17_Y5_N14
\dds_core2|sine_p[19]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[19]~48_combout\ = (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\dds_core2|sine_p[18]~47\ & VCC)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\dds_core2|sine_p[18]~47\)))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\dds_core2|sine_p[18]~47\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\dds_core2|sine_p[18]~47\) # (GND)))))
-- \dds_core2|sine_p[19]~49\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\dds_core2|sine_p[18]~47\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\dds_core2|sine_p[18]~47\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \dds_core2|sine_p[18]~47\,
	combout => \dds_core2|sine_p[19]~48_combout\,
	cout => \dds_core2|sine_p[19]~49\);

-- Location: LCFF_X17_Y5_N15
\dds_core2|sine_p[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[19]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(19));

-- Location: LCCOMB_X17_Y5_N16
\dds_core2|sine_p[20]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[20]~50_combout\ = ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\dds_core2|sine_p[19]~49\)))) # (GND)
-- \dds_core2|sine_p[20]~51\ = CARRY((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\dds_core2|sine_p[19]~49\))) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\dds_core2|sine_p[19]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \dds_core2|sine_p[19]~49\,
	combout => \dds_core2|sine_p[20]~50_combout\,
	cout => \dds_core2|sine_p[20]~51\);

-- Location: LCFF_X17_Y5_N17
\dds_core2|sine_p[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[20]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(20));

-- Location: LCCOMB_X17_Y5_N18
\dds_core2|sine_p[21]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[21]~52_combout\ = (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\dds_core2|sine_p[20]~51\ & VCC)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\dds_core2|sine_p[20]~51\)))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\dds_core2|sine_p[20]~51\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\dds_core2|sine_p[20]~51\) # (GND)))))
-- \dds_core2|sine_p[21]~53\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\dds_core2|sine_p[20]~51\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\dds_core2|sine_p[20]~51\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \dds_core2|sine_p[20]~51\,
	combout => \dds_core2|sine_p[21]~52_combout\,
	cout => \dds_core2|sine_p[21]~53\);

-- Location: LCFF_X17_Y5_N19
\dds_core2|sine_p[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[21]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(21));

-- Location: LCCOMB_X17_Y5_N20
\dds_core2|sine_p[22]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[22]~54_combout\ = ((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\dds_core2|sine_p[21]~53\)))) # (GND)
-- \dds_core2|sine_p[22]~55\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\dds_core2|sine_p[21]~53\))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- (\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\dds_core2|sine_p[21]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \dds_core2|sine_p[21]~53\,
	combout => \dds_core2|sine_p[22]~54_combout\,
	cout => \dds_core2|sine_p[22]~55\);

-- Location: LCFF_X17_Y5_N21
\dds_core2|sine_p[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[22]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(22));

-- Location: LCCOMB_X17_Y5_N22
\dds_core2|sine_p[23]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[23]~56_combout\ = (\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\dds_core2|sine_p[22]~55\ & VCC)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\dds_core2|sine_p[22]~55\)))) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\dds_core2|sine_p[22]~55\)) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\dds_core2|sine_p[22]~55\) # (GND)))))
-- \dds_core2|sine_p[23]~57\ = CARRY((\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\dds_core2|sine_p[22]~55\)) # (!\dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\dds_core2|sine_p[22]~55\) # (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \dds_core2|sine_p[22]~55\,
	combout => \dds_core2|sine_p[23]~56_combout\,
	cout => \dds_core2|sine_p[23]~57\);

-- Location: LCFF_X17_Y5_N23
\dds_core2|sine_p[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[23]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(23));

-- Location: LCCOMB_X17_Y5_N24
\dds_core2|sine_p[24]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dds_core2|sine_p[24]~58_combout\ = \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\dds_core2|sine_p[23]~57\ $ (!\dds_core2|Mult0|auto_generated|mac_out2~DATAOUT24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_core2|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => \dds_core2|Mult0|auto_generated|mac_out2~DATAOUT24\,
	cin => \dds_core2|sine_p[23]~57\,
	combout => \dds_core2|sine_p[24]~58_combout\);

-- Location: LCFF_X17_Y5_N25
\dds_core2|sine_p[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \DAC_clk_in~clkctrl_outclk\,
	datain => \dds_core2|sine_p[24]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dds_core2|sine_p\(24));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_SLRD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_SLRD);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_SLWR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_SLWR);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FX2_flags[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FX2_flags(1));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FX2_flags[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FX2_flags(2));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_PA_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_PA_2);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_PA_3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_PA_3);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_PA_4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_PA_4);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_PA_5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_PA_5);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FX2_PA_6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FX2_PA_6);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FX2_PA_7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FX2_PA_7);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_clk_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_DAC_clk_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_clk_out);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(1));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(2));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(4));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(5));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(6));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(7));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(8));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core1|sine_p\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_1(9));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(3));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(4));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(5));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(6));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(8));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DAC_data_out_2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dds_core2|sine_p\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DAC_data_out_2(9));
END structure;


