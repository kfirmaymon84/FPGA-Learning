-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Jun 25 17:05:46 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_cameraAndVGA_Drivers_0_0/design_1_cameraAndVGA_Drivers_0_0_sim_netlist.vhdl
-- Design      : design_1_cameraAndVGA_Drivers_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers is
  port (
    addressRead : out STD_LOGIC_VECTOR ( 18 downto 0 );
    vga_vs : out STD_LOGIC;
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    dataRead : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk25 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers : entity is "cameraAndVGA_Drivers";
end design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers;

architecture STRUCTURE of design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers is
  signal \BLUE_reg_n_0_[0]\ : STD_LOGIC;
  signal \BLUE_reg_n_0_[1]\ : STD_LOGIC;
  signal \BLUE_reg_n_0_[2]\ : STD_LOGIC;
  signal \BLUE_reg_n_0_[3]\ : STD_LOGIC;
  signal \GREEN_reg_n_0_[0]\ : STD_LOGIC;
  signal \GREEN_reg_n_0_[1]\ : STD_LOGIC;
  signal \GREEN_reg_n_0_[2]\ : STD_LOGIC;
  signal \GREEN_reg_n_0_[3]\ : STD_LOGIC;
  signal RED : STD_LOGIC;
  signal \RED[3]_i_1_n_0\ : STD_LOGIC;
  signal \RED_reg_n_0_[0]\ : STD_LOGIC;
  signal \RED_reg_n_0_[1]\ : STD_LOGIC;
  signal \RED_reg_n_0_[2]\ : STD_LOGIC;
  signal \RED_reg_n_0_[3]\ : STD_LOGIC;
  signal \addressCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_2_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_4_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_5_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_6_n_0\ : STD_LOGIC;
  signal \^addressread\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \h_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal h_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal \h_cnt_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \h_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \ltOp__40\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \v_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal v_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \v_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal vga_vs_INST_0_i_1_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cnt[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_cnt[9]_i_2\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \v_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_b[1]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vga_b[2]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vga_b[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vga_g[0]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vga_g[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vga_g[2]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vga_g[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vga_r[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vga_r[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vga_r[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vga_r[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of vga_vs_INST_0_i_1 : label is "soft_lutpair4";
begin
  addressRead(18 downto 0) <= \^addressread\(18 downto 0);
\BLUE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(0),
      Q => \BLUE_reg_n_0_[0]\,
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(1),
      Q => \BLUE_reg_n_0_[1]\,
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(2),
      Q => \BLUE_reg_n_0_[2]\,
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(3),
      Q => \BLUE_reg_n_0_[3]\,
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(4),
      Q => \GREEN_reg_n_0_[0]\,
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(5),
      Q => \GREEN_reg_n_0_[1]\,
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(6),
      Q => \GREEN_reg_n_0_[2]\,
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(7),
      Q => \GREEN_reg_n_0_[3]\,
      R => \RED[3]_i_1_n_0\
    );
\RED[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFFF00000000"
    )
        port map (
      I0 => v_cnt_reg(9),
      I1 => h_cnt_reg(7),
      I2 => h_cnt_reg(8),
      I3 => h_cnt_reg(9),
      I4 => vga_vs_INST_0_i_1_n_0,
      I5 => reset,
      O => \RED[3]_i_1_n_0\
    );
\RED[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \addressCounter[18]_i_6_n_0\,
      I1 => reset,
      O => RED
    );
\RED_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(8),
      Q => \RED_reg_n_0_[0]\,
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(9),
      Q => \RED_reg_n_0_[1]\,
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(10),
      Q => \RED_reg_n_0_[2]\,
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => RED,
      D => dataRead(11),
      Q => \RED_reg_n_0_[3]\,
      R => \RED[3]_i_1_n_0\
    );
\addressCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addressread\(0),
      O => \addressCounter[0]_i_1_n_0\
    );
\addressCounter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1500FFFF"
    )
        port map (
      I0 => \ltOp__40\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \addressCounter[18]_i_5_n_0\,
      I3 => v_cnt_reg(9),
      I4 => reset,
      O => \addressCounter[18]_i_1_n_0\
    );
\addressCounter[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addressCounter[18]_i_6_n_0\,
      O => \addressCounter[18]_i_2_n_0\
    );
\addressCounter[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => h_cnt_reg(9),
      I1 => h_cnt_reg(8),
      I2 => h_cnt_reg(5),
      I3 => h_cnt_reg(6),
      I4 => h_cnt_reg(7),
      O => \ltOp__40\
    );
\addressCounter[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => v_cnt_reg(6),
      I1 => v_cnt_reg(5),
      I2 => v_cnt_reg(4),
      O => \addressCounter[18]_i_4_n_0\
    );
\addressCounter[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => v_cnt_reg(2),
      I1 => v_cnt_reg(3),
      I2 => v_cnt_reg(8),
      I3 => v_cnt_reg(7),
      O => \addressCounter[18]_i_5_n_0\
    );
\addressCounter[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7F7F777"
    )
        port map (
      I0 => \h_cnt_reg__0\(0),
      I1 => vga_vs_INST_0_i_1_n_0,
      I2 => h_cnt_reg(9),
      I3 => h_cnt_reg(8),
      I4 => h_cnt_reg(7),
      I5 => v_cnt_reg(9),
      O => \addressCounter[18]_i_6_n_0\
    );
\addressCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => \addressCounter[0]_i_1_n_0\,
      Q => \^addressread\(0),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(10),
      Q => \^addressread\(10),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(11),
      Q => \^addressread\(11),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(12),
      Q => \^addressread\(12),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(13),
      Q => \^addressread\(13),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(14),
      Q => \^addressread\(14),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(15),
      Q => \^addressread\(15),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(16),
      Q => \^addressread\(16),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(17),
      Q => \^addressread\(17),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(18),
      Q => \^addressread\(18),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(1),
      Q => \^addressread\(1),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(2),
      Q => \^addressread\(2),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(3),
      Q => \^addressread\(3),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(4),
      Q => \^addressread\(4),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(5),
      Q => \^addressread\(5),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(6),
      Q => \^addressread\(6),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(7),
      Q => \^addressread\(7),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(8),
      Q => \^addressread\(8),
      R => \addressCounter[18]_i_1_n_0\
    );
\addressCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \addressCounter[18]_i_2_n_0\,
      D => plusOp(9),
      Q => \^addressread\(9),
      R => \addressCounter[18]_i_1_n_0\
    );
\h_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(0),
      O => \plusOp__0\(0)
    );
\h_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_cnt_reg__0\(0),
      I1 => \h_cnt_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\h_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_cnt_reg__0\(0),
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\h_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[1]\,
      I1 => \h_cnt_reg__0\(0),
      I2 => \h_cnt_reg_n_0_[2]\,
      I3 => \h_cnt_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\h_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[2]\,
      I1 => \h_cnt_reg__0\(0),
      I2 => \h_cnt_reg_n_0_[1]\,
      I3 => \h_cnt_reg_n_0_[3]\,
      I4 => h_cnt_reg(4),
      O => \plusOp__0\(4)
    );
\h_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[3]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg__0\(0),
      I3 => \h_cnt_reg_n_0_[2]\,
      I4 => h_cnt_reg(4),
      I5 => h_cnt_reg(5),
      O => \plusOp__0\(5)
    );
\h_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt_reg(6),
      O => \plusOp__0\(6)
    );
\h_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt_reg(6),
      I2 => h_cnt_reg(7),
      O => \plusOp__0\(7)
    );
\h_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => h_cnt_reg(7),
      I1 => h_cnt_reg(6),
      I2 => \h_cnt[9]_i_3_n_0\,
      I3 => h_cnt_reg(8),
      O => \plusOp__0\(8)
    );
\h_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FFFFFFFF"
    )
        port map (
      I0 => h_cnt_reg(7),
      I1 => h_cnt_reg(6),
      I2 => h_cnt_reg(5),
      I3 => h_cnt_reg(8),
      I4 => h_cnt_reg(9),
      I5 => reset,
      O => \h_cnt[9]_i_1_n_0\
    );
\h_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => h_cnt_reg(8),
      I1 => \h_cnt[9]_i_3_n_0\,
      I2 => h_cnt_reg(6),
      I3 => h_cnt_reg(7),
      I4 => h_cnt_reg(9),
      O => \plusOp__0\(9)
    );
\h_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[3]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg__0\(0),
      I3 => \h_cnt_reg_n_0_[2]\,
      I4 => h_cnt_reg(4),
      I5 => h_cnt_reg(5),
      O => \h_cnt[9]_i_3_n_0\
    );
\h_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(0),
      Q => \h_cnt_reg__0\(0),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(1),
      Q => \h_cnt_reg_n_0_[1]\,
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(2),
      Q => \h_cnt_reg_n_0_[2]\,
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(3),
      Q => \h_cnt_reg_n_0_[3]\,
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(4),
      Q => h_cnt_reg(4),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(5),
      Q => h_cnt_reg(5),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(6),
      Q => h_cnt_reg(6),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(7),
      Q => h_cnt_reg(7),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(8),
      Q => h_cnt_reg(8),
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => \plusOp__0\(9),
      Q => h_cnt_reg(9),
      R => \h_cnt[9]_i_1_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \^addressread\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => \^addressread\(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => \^addressread\(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => \^addressread\(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => \^addressread\(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3 downto 1) => \NLW_plusOp_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^addressread\(18 downto 17)
    );
\v_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      O => \plusOp__1\(0)
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => v_cnt_reg(1),
      O => \plusOp__1\(1)
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_cnt_reg(1),
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => v_cnt_reg(2),
      O => \plusOp__1\(2)
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => v_cnt_reg(1),
      I2 => v_cnt_reg(2),
      I3 => v_cnt_reg(3),
      O => \plusOp__1\(3)
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_cnt_reg(3),
      I1 => v_cnt_reg(2),
      I2 => v_cnt_reg(1),
      I3 => \v_cnt_reg_n_0_[0]\,
      I4 => v_cnt_reg(4),
      O => \plusOp__1\(4)
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => v_cnt_reg(1),
      I2 => v_cnt_reg(2),
      I3 => v_cnt_reg(3),
      I4 => v_cnt_reg(4),
      I5 => v_cnt_reg(5),
      O => \plusOp__1\(5)
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_cnt_reg(5),
      I1 => \v_cnt[9]_i_4_n_0\,
      I2 => v_cnt_reg(6),
      O => \plusOp__1\(6)
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_cnt_reg(6),
      I1 => v_cnt_reg(5),
      I2 => \v_cnt[9]_i_4_n_0\,
      I3 => v_cnt_reg(7),
      O => \plusOp__1\(7)
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_cnt_reg(7),
      I1 => \v_cnt[9]_i_4_n_0\,
      I2 => v_cnt_reg(5),
      I3 => v_cnt_reg(6),
      I4 => v_cnt_reg(8),
      O => \plusOp__1\(8)
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1500FFFF"
    )
        port map (
      I0 => \ltOp__40\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \addressCounter[18]_i_5_n_0\,
      I3 => v_cnt_reg(9),
      I4 => reset,
      O => \v_cnt[9]_i_1_n_0\
    );
\v_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => h_cnt_reg(7),
      I1 => h_cnt_reg(6),
      I2 => h_cnt_reg(5),
      I3 => h_cnt_reg(8),
      I4 => h_cnt_reg(9),
      O => \v_cnt[9]_i_2_n_0\
    );
\v_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \v_cnt[9]_i_4_n_0\,
      I1 => v_cnt_reg(5),
      I2 => v_cnt_reg(6),
      I3 => v_cnt_reg(8),
      I4 => v_cnt_reg(7),
      I5 => v_cnt_reg(9),
      O => \plusOp__1\(9)
    );
\v_cnt[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_cnt_reg(4),
      I1 => v_cnt_reg(3),
      I2 => v_cnt_reg(2),
      I3 => v_cnt_reg(1),
      I4 => \v_cnt_reg_n_0_[0]\,
      O => \v_cnt[9]_i_4_n_0\
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(0),
      Q => \v_cnt_reg_n_0_[0]\,
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(1),
      Q => v_cnt_reg(1),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(2),
      Q => v_cnt_reg(2),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(3),
      Q => v_cnt_reg(3),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(4),
      Q => v_cnt_reg(4),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(5),
      Q => v_cnt_reg(5),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(6),
      Q => v_cnt_reg(6),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(7),
      Q => v_cnt_reg(7),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(8),
      Q => v_cnt_reg(8),
      R => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(9),
      Q => v_cnt_reg(9),
      R => \v_cnt[9]_i_1_n_0\
    );
\vga_b[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BLUE_reg_n_0_[0]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_b(0)
    );
\vga_b[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BLUE_reg_n_0_[1]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_b(1)
    );
\vga_b[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BLUE_reg_n_0_[2]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_b(2)
    );
\vga_b[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BLUE_reg_n_0_[3]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_b(3)
    );
\vga_g[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GREEN_reg_n_0_[0]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_g(0)
    );
\vga_g[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GREEN_reg_n_0_[1]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_g(1)
    );
\vga_g[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GREEN_reg_n_0_[2]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_g(2)
    );
\vga_g[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GREEN_reg_n_0_[3]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_g(3)
    );
vga_hs_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF81FFFFFFFFFF"
    )
        port map (
      I0 => h_cnt_reg(6),
      I1 => h_cnt_reg(5),
      I2 => h_cnt_reg(4),
      I3 => h_cnt_reg(9),
      I4 => h_cnt_reg(8),
      I5 => h_cnt_reg(7),
      O => vga_hs
    );
\vga_r[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \RED_reg_n_0_[0]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_r(0)
    );
\vga_r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \RED_reg_n_0_[1]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_r(1)
    );
\vga_r[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \RED_reg_n_0_[2]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_r(2)
    );
\vga_r[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \RED_reg_n_0_[3]\,
      I1 => \h_cnt_reg__0\(0),
      O => vga_r(3)
    );
vga_vs_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => v_cnt_reg(1),
      I1 => v_cnt_reg(3),
      I2 => v_cnt_reg(4),
      I3 => v_cnt_reg(2),
      I4 => vga_vs_INST_0_i_1_n_0,
      I5 => v_cnt_reg(9),
      O => vga_vs
    );
vga_vs_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => v_cnt_reg(5),
      I1 => v_cnt_reg(6),
      I2 => v_cnt_reg(7),
      I3 => v_cnt_reg(8),
      O => vga_vs_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cameraAndVGA_Drivers_0_0 is
  port (
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    addressWrite : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dataWrite : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    addressRead : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dataRead : in STD_LOGIC_VECTOR ( 11 downto 0 );
    PCLK : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    VSYNC : in STD_LOGIC;
    HS : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cameraAndVGA_Drivers_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cameraAndVGA_Drivers_0_0 : entity is "design_1_cameraAndVGA_Drivers_0_0,cameraAndVGA_Drivers,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_cameraAndVGA_Drivers_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_cameraAndVGA_Drivers_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_cameraAndVGA_Drivers_0_0 : entity is "cameraAndVGA_Drivers,Vivado 2021.2";
end design_1_cameraAndVGA_Drivers_0_0;

architecture STRUCTURE of design_1_cameraAndVGA_Drivers_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addressWrite(18) <= \<const0>\;
  addressWrite(17) <= \<const0>\;
  addressWrite(16) <= \<const0>\;
  addressWrite(15) <= \<const0>\;
  addressWrite(14) <= \<const0>\;
  addressWrite(13) <= \<const0>\;
  addressWrite(12) <= \<const0>\;
  addressWrite(11) <= \<const0>\;
  addressWrite(10) <= \<const0>\;
  addressWrite(9) <= \<const0>\;
  addressWrite(8) <= \<const0>\;
  addressWrite(7) <= \<const0>\;
  addressWrite(6) <= \<const0>\;
  addressWrite(5) <= \<const0>\;
  addressWrite(4) <= \<const0>\;
  addressWrite(3) <= \<const0>\;
  addressWrite(2) <= \<const0>\;
  addressWrite(1) <= \<const0>\;
  addressWrite(0) <= \<const0>\;
  dataWrite(11) <= \<const0>\;
  dataWrite(10) <= \<const0>\;
  dataWrite(9) <= \<const0>\;
  dataWrite(8) <= \<const0>\;
  dataWrite(7) <= \<const0>\;
  dataWrite(6) <= \<const0>\;
  dataWrite(5) <= \<const0>\;
  dataWrite(4) <= \<const0>\;
  dataWrite(3) <= \<const0>\;
  dataWrite(2) <= \<const0>\;
  dataWrite(1) <= \<const0>\;
  dataWrite(0) <= \<const0>\;
  wea(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers
     port map (
      addressRead(18 downto 0) => addressRead(18 downto 0),
      clk25 => clk25,
      dataRead(11 downto 0) => dataRead(11 downto 0),
      reset => reset,
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_hs => vga_hs,
      vga_r(3 downto 0) => vga_r(3 downto 0),
      vga_vs => vga_vs
    );
end STRUCTURE;
