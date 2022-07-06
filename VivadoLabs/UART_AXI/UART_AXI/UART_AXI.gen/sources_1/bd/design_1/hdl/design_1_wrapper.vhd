--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Jun 10 19:26:05 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use IEEE.std_logic_unsigned.all;

entity design_1_wrapper is
  port (
    aresetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_1 : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    led : out std_logic
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    tx : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    rx : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    reset_1 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component design_1;
  
  signal cnt : std_logic_vector ( 32 downto 0) := (others => '0');
begin
design_1_i: component design_1
     port map (
      aresetn => aresetn,
      clk_in1 => clk_in1,
      interrupt => interrupt,
      reset_1 => reset_1,
      rx => rx,
      tx => tx
    );
    
    process(clk_in1)
    begin
        if rising_edge(clk_in1) then
            cnt <= cnt + 1;
        end if;
    end process;
    led <= cnt(16);
end STRUCTURE;
