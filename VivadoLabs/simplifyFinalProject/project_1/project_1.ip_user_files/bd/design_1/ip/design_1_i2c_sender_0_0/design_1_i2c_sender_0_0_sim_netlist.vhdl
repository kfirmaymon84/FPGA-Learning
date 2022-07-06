-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Jun 25 17:14:32 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_i2c_sender_0_0/design_1_i2c_sender_0_0_sim_netlist.vhdl
-- Design      : design_1_i2c_sender_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_sender_0_0_i2c_sender is
  port (
    siod : out STD_LOGIC;
    finished : out STD_LOGIC;
    sioc : out STD_LOGIC;
    clk : in STD_LOGIC;
    resend : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2c_sender_0_0_i2c_sender : entity is "i2c_sender";
end design_1_i2c_sender_0_0_i2c_sender;

architecture STRUCTURE of design_1_i2c_sender_0_0_i2c_sender is
  signal \address[7]_i_2_n_0\ : STD_LOGIC;
  signal address_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal advance : STD_LOGIC;
  signal \busy_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[0]_i_3_n_0\ : STD_LOGIC;
  signal \busy_sr[0]_i_4_n_0\ : STD_LOGIC;
  signal \busy_sr[0]_i_5_n_0\ : STD_LOGIC;
  signal \busy_sr[0]_i_6_n_0\ : STD_LOGIC;
  signal \busy_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[20]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[21]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[22]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[23]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[24]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[25]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[26]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[27]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[28]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[29]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[31]_i_2_n_0\ : STD_LOGIC;
  signal \busy_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \data_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_sr[19]_i_3_n_0\ : STD_LOGIC;
  signal \data_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \divider[7]_i_1_n_0\ : STD_LOGIC;
  signal \divider[7]_i_3_n_0\ : STD_LOGIC;
  signal \divider_reg_n_0_[0]\ : STD_LOGIC;
  signal \divider_reg_n_0_[1]\ : STD_LOGIC;
  signal \divider_reg_n_0_[2]\ : STD_LOGIC;
  signal \divider_reg_n_0_[3]\ : STD_LOGIC;
  signal \divider_reg_n_0_[4]\ : STD_LOGIC;
  signal \divider_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sioc_i_1_n_0 : STD_LOGIC;
  signal sioc_i_2_n_0 : STD_LOGIC;
  signal sioc_i_3_n_0 : STD_LOGIC;
  signal siod_INST_0_i_1_n_0 : STD_LOGIC;
  signal sreg : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \sreg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[14]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \address[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \address[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \address[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \address[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \busy_sr[0]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \busy_sr[0]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \busy_sr[0]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \busy_sr[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \busy_sr[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \busy_sr[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \busy_sr[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \busy_sr[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \busy_sr[15]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \busy_sr[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busy_sr[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busy_sr[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \busy_sr[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \busy_sr[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \busy_sr[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \busy_sr[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_sr[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_sr[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \busy_sr[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \busy_sr[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busy_sr[27]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busy_sr[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \busy_sr[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \busy_sr[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \busy_sr[30]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \busy_sr[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \busy_sr[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \busy_sr[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \busy_sr[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \busy_sr[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \busy_sr[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \busy_sr[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \busy_sr[9]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_sr[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_sr[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_sr[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_sr[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_sr[14]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_sr[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_sr[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_sr[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_sr[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_sr[19]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_sr[19]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_sr[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_sr[20]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_sr[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_sr[23]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_sr[24]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_sr[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_sr[26]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_sr[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_sr[28]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_sr[29]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_sr[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_sr[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_sr[31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_sr[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_sr[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_sr[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_sr[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_sr[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_sr[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \divider[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \divider[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \divider[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \divider[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \divider[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \divider[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \divider[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of finished_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sioc_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sreg[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sreg[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sreg[2]_i_1\ : label is "soft_lutpair12";
begin
\address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address_reg(0),
      O => plusOp(0)
    );
\address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => address_reg(1),
      I1 => address_reg(0),
      O => plusOp(1)
    );
\address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => address_reg(1),
      I1 => address_reg(0),
      I2 => address_reg(2),
      O => plusOp(2)
    );
\address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => address_reg(2),
      I1 => address_reg(0),
      I2 => address_reg(1),
      I3 => address_reg(3),
      O => plusOp(3)
    );
\address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => address_reg(3),
      I1 => address_reg(1),
      I2 => address_reg(0),
      I3 => address_reg(2),
      I4 => address_reg(4),
      O => plusOp(4)
    );
\address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => address_reg(4),
      I1 => address_reg(2),
      I2 => address_reg(0),
      I3 => address_reg(1),
      I4 => address_reg(3),
      I5 => address_reg(5),
      O => plusOp(5)
    );
\address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => address_reg(5),
      I1 => address_reg(3),
      I2 => \sreg[12]_i_1_n_0\,
      I3 => address_reg(2),
      I4 => address_reg(4),
      I5 => address_reg(6),
      O => plusOp(6)
    );
\address[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => address_reg(6),
      I1 => \address[7]_i_2_n_0\,
      I2 => address_reg(7),
      O => plusOp(7)
    );
\address[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => address_reg(4),
      I1 => address_reg(2),
      I2 => address_reg(0),
      I3 => address_reg(1),
      I4 => address_reg(3),
      I5 => address_reg(5),
      O => \address[7]_i_2_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(0),
      Q => address_reg(0),
      R => resend
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(1),
      Q => address_reg(1),
      R => resend
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(2),
      Q => address_reg(2),
      R => resend
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(3),
      Q => address_reg(3),
      R => resend
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(4),
      Q => address_reg(4),
      R => resend
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(5),
      Q => address_reg(5),
      R => resend
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(6),
      Q => address_reg(6),
      R => resend
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => advance,
      D => plusOp(7),
      Q => address_reg(7),
      R => resend
    );
advance_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_sr[31]_i_1_n_0\,
      Q => advance,
      R => '0'
    );
\busy_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444F4444"
    )
        port map (
      I0 => \busy_sr[0]_i_3_n_0\,
      I1 => \busy_sr[0]_i_4_n_0\,
      I2 => \busy_sr[0]_i_5_n_0\,
      I3 => \busy_sr[0]_i_6_n_0\,
      I4 => p_1_in(0),
      O => \busy_sr[0]_i_1_n_0\
    );
\busy_sr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => sreg(7),
      I1 => sreg(12),
      I2 => sreg(15),
      I3 => sreg(14),
      I4 => sreg(2),
      I5 => p_0_in_0,
      O => p_1_in(0)
    );
\busy_sr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \divider_reg_n_0_[4]\,
      I1 => \divider_reg_n_0_[2]\,
      I2 => \divider_reg_n_0_[0]\,
      I3 => \divider_reg_n_0_[1]\,
      I4 => \divider_reg_n_0_[3]\,
      I5 => \divider_reg_n_0_[5]\,
      O => \busy_sr[0]_i_3_n_0\
    );
\busy_sr[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_0_in_0,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => \busy_sr[0]_i_4_n_0\
    );
\busy_sr[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \divider_reg_n_0_[1]\,
      I1 => \divider_reg_n_0_[0]\,
      I2 => \divider_reg_n_0_[3]\,
      I3 => \divider_reg_n_0_[2]\,
      O => \busy_sr[0]_i_5_n_0\
    );
\busy_sr[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \divider_reg_n_0_[5]\,
      I1 => \divider_reg_n_0_[4]\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \busy_sr[0]_i_6_n_0\
    );
\busy_sr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[9]\,
      I1 => p_0_in_0,
      O => \busy_sr[10]_i_1_n_0\
    );
\busy_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[10]\,
      I1 => p_0_in_0,
      O => \busy_sr[11]_i_1_n_0\
    );
\busy_sr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[11]\,
      I1 => p_0_in_0,
      O => \busy_sr[12]_i_1_n_0\
    );
\busy_sr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[12]\,
      I1 => p_0_in_0,
      O => \busy_sr[13]_i_1_n_0\
    );
\busy_sr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[13]\,
      I1 => p_0_in_0,
      O => \busy_sr[14]_i_1_n_0\
    );
\busy_sr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[14]\,
      I1 => p_0_in_0,
      O => \busy_sr[15]_i_1_n_0\
    );
\busy_sr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[15]\,
      I1 => p_0_in_0,
      O => \busy_sr[16]_i_1_n_0\
    );
\busy_sr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[16]\,
      I1 => p_0_in_0,
      O => \busy_sr[17]_i_1_n_0\
    );
\busy_sr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[17]\,
      I1 => p_0_in_0,
      O => \busy_sr[18]_i_1_n_0\
    );
\busy_sr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[18]\,
      I1 => p_0_in_0,
      O => \busy_sr[19]_i_1_n_0\
    );
\busy_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[0]\,
      I1 => p_0_in_0,
      O => \busy_sr[1]_i_1_n_0\
    );
\busy_sr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in_1(0),
      I1 => p_0_in_0,
      O => \busy_sr[20]_i_1_n_0\
    );
\busy_sr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in_1(1),
      I1 => p_0_in_0,
      O => \busy_sr[21]_i_1_n_0\
    );
\busy_sr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[21]\,
      I1 => p_0_in_0,
      O => \busy_sr[22]_i_1_n_0\
    );
\busy_sr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[22]\,
      I1 => p_0_in_0,
      O => \busy_sr[23]_i_1_n_0\
    );
\busy_sr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[23]\,
      I1 => p_0_in_0,
      O => \busy_sr[24]_i_1_n_0\
    );
\busy_sr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[24]\,
      I1 => p_0_in_0,
      O => \busy_sr[25]_i_1_n_0\
    );
\busy_sr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[25]\,
      I1 => p_0_in_0,
      O => \busy_sr[26]_i_1_n_0\
    );
\busy_sr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[26]\,
      I1 => p_0_in_0,
      O => \busy_sr[27]_i_1_n_0\
    );
\busy_sr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[27]\,
      I1 => p_0_in_0,
      O => \busy_sr[28]_i_1_n_0\
    );
\busy_sr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[28]\,
      I1 => p_0_in_0,
      O => \busy_sr[29]_i_1_n_0\
    );
\busy_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[1]\,
      I1 => p_0_in_0,
      O => \busy_sr[2]_i_1_n_0\
    );
\busy_sr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[29]\,
      I1 => p_0_in_0,
      O => \busy_sr[30]_i_1_n_0\
    );
\busy_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0202AA02"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \busy_sr[0]_i_6_n_0\,
      I2 => \busy_sr[0]_i_5_n_0\,
      I3 => \busy_sr[0]_i_4_n_0\,
      I4 => \busy_sr[0]_i_3_n_0\,
      O => \busy_sr[31]_i_1_n_0\
    );
\busy_sr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[30]\,
      I1 => p_0_in_0,
      O => \busy_sr[31]_i_2_n_0\
    );
\busy_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[2]\,
      I1 => p_0_in_0,
      O => \busy_sr[3]_i_1_n_0\
    );
\busy_sr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[3]\,
      I1 => p_0_in_0,
      O => \busy_sr[4]_i_1_n_0\
    );
\busy_sr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[4]\,
      I1 => p_0_in_0,
      O => \busy_sr[5]_i_1_n_0\
    );
\busy_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[5]\,
      I1 => p_0_in_0,
      O => \busy_sr[6]_i_1_n_0\
    );
\busy_sr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[6]\,
      I1 => p_0_in_0,
      O => \busy_sr[7]_i_1_n_0\
    );
\busy_sr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[7]\,
      I1 => p_0_in_0,
      O => \busy_sr[8]_i_1_n_0\
    );
\busy_sr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[8]\,
      I1 => p_0_in_0,
      O => \busy_sr[9]_i_1_n_0\
    );
\busy_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_1_in(0),
      Q => \busy_sr_reg_n_0_[0]\,
      R => '0'
    );
\busy_sr_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[10]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[10]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[11]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[11]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[12]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[12]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[13]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[13]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[14]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[14]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[15]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[15]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[16]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[16]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[17]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[17]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[18]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[18]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[19]_i_1_n_0\,
      Q => p_1_in_1(0),
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[1]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[1]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[20]_i_1_n_0\,
      Q => p_1_in_1(1),
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[21]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[21]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[22]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[22]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[23]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[23]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[24]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[24]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[25]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[25]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[26]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[26]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[27]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[27]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[28]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[28]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[29]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[29]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[2]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[2]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[30]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[30]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[31]_i_2_n_0\,
      Q => p_0_in_0,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[3]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[3]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[4]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[4]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[5]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[5]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[6]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[6]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[7]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[7]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[8]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[8]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\busy_sr_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \busy_sr[9]_i_1_n_0\,
      Q => \busy_sr_reg_n_0_[9]\,
      S => \busy_sr[31]_i_1_n_0\
    );
\data_sr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF222222F2"
    )
        port map (
      I0 => \busy_sr[0]_i_4_n_0\,
      I1 => \busy_sr[0]_i_3_n_0\,
      I2 => p_1_in(0),
      I3 => \busy_sr[0]_i_6_n_0\,
      I4 => \busy_sr[0]_i_5_n_0\,
      I5 => \data_sr_reg_n_0_[0]\,
      O => \data_sr[0]_i_1_n_0\
    );
\data_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[9]\,
      I1 => p_0_in_0,
      I2 => sreg(7),
      O => p_2_in(10)
    );
\data_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[10]\,
      O => p_2_in(11)
    );
\data_sr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[11]\,
      I1 => p_0_in_0,
      O => \data_sr[12]_i_1_n_0\
    );
\data_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[12]\,
      I1 => p_0_in_0,
      I2 => sreg(12),
      O => p_2_in(13)
    );
\data_sr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[13]\,
      I1 => p_0_in_0,
      O => \data_sr[14]_i_1_n_0\
    );
\data_sr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[14]\,
      I1 => p_0_in_0,
      O => \data_sr[15]_i_1_n_0\
    );
\data_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[15]\,
      I1 => p_0_in_0,
      I2 => sreg(12),
      O => p_2_in(16)
    );
\data_sr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[16]\,
      I1 => p_0_in_0,
      O => \data_sr[17]_i_1_n_0\
    );
\data_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[17]\,
      I1 => p_0_in_0,
      I2 => sreg(14),
      O => p_2_in(18)
    );
\data_sr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008AAAA0008"
    )
        port map (
      I0 => \data_sr[19]_i_3_n_0\,
      I1 => p_1_in(0),
      I2 => \busy_sr[0]_i_6_n_0\,
      I3 => \busy_sr[0]_i_5_n_0\,
      I4 => \busy_sr[0]_i_4_n_0\,
      I5 => \busy_sr[0]_i_3_n_0\,
      O => \data_sr[19]_i_1_n_0\
    );
\data_sr[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[18]\,
      I1 => p_0_in_0,
      O => \data_sr[19]_i_2_n_0\
    );
\data_sr[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sreg(15),
      I1 => p_0_in_0,
      O => \data_sr[19]_i_3_n_0\
    );
\data_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[0]\,
      O => p_2_in(1)
    );
\data_sr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[19]\,
      O => p_2_in(20)
    );
\data_sr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[20]\,
      O => p_2_in(21)
    );
\data_sr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[21]\,
      O => p_2_in(22)
    );
\data_sr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[22]\,
      O => p_2_in(23)
    );
\data_sr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[23]\,
      O => p_2_in(24)
    );
\data_sr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[24]\,
      O => p_2_in(25)
    );
\data_sr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[25]\,
      O => p_2_in(26)
    );
\data_sr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[26]\,
      O => p_2_in(27)
    );
\data_sr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[27]\,
      O => p_2_in(28)
    );
\data_sr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[28]\,
      O => p_2_in(29)
    );
\data_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[1]\,
      O => p_2_in(2)
    );
\data_sr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[29]\,
      O => p_2_in(30)
    );
\data_sr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \busy_sr[0]_i_6_n_0\,
      I2 => \divider_reg_n_0_[1]\,
      I3 => \divider_reg_n_0_[0]\,
      I4 => \divider_reg_n_0_[3]\,
      I5 => \divider_reg_n_0_[2]\,
      O => \data_sr[31]_i_1_n_0\
    );
\data_sr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \data_sr_reg_n_0_[30]\,
      O => p_2_in(31)
    );
\data_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[2]\,
      I1 => p_0_in_0,
      O => \data_sr[3]_i_1_n_0\
    );
\data_sr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[3]\,
      I1 => p_0_in_0,
      O => \data_sr[4]_i_1_n_0\
    );
\data_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[4]\,
      I1 => p_0_in_0,
      I2 => sreg(2),
      O => p_2_in(5)
    );
\data_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[5]\,
      I1 => p_0_in_0,
      O => \data_sr[6]_i_1_n_0\
    );
\data_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[6]\,
      I1 => p_0_in_0,
      I2 => sreg(14),
      O => p_2_in(7)
    );
\data_sr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[7]\,
      I1 => p_0_in_0,
      O => \data_sr[8]_i_1_n_0\
    );
\data_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[8]\,
      I1 => p_0_in_0,
      I2 => sreg(14),
      O => p_2_in(9)
    );
\data_sr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_sr[0]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[0]\,
      R => '0'
    );
\data_sr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(10),
      Q => \data_sr_reg_n_0_[10]\,
      R => '0'
    );
\data_sr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(11),
      Q => \data_sr_reg_n_0_[11]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[12]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[12]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(13),
      Q => \data_sr_reg_n_0_[13]\,
      R => '0'
    );
\data_sr_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[14]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[14]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[15]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[15]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(16),
      Q => \data_sr_reg_n_0_[16]\,
      R => '0'
    );
\data_sr_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[17]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[17]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(18),
      Q => \data_sr_reg_n_0_[18]\,
      R => '0'
    );
\data_sr_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[19]_i_2_n_0\,
      Q => \data_sr_reg_n_0_[19]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(1),
      Q => \data_sr_reg_n_0_[1]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(20),
      Q => \data_sr_reg_n_0_[20]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(21),
      Q => \data_sr_reg_n_0_[21]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(22),
      Q => \data_sr_reg_n_0_[22]\,
      S => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(23),
      Q => \data_sr_reg_n_0_[23]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(24),
      Q => \data_sr_reg_n_0_[24]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(25),
      Q => \data_sr_reg_n_0_[25]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(26),
      Q => \data_sr_reg_n_0_[26]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(27),
      Q => \data_sr_reg_n_0_[27]\,
      S => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(28),
      Q => \data_sr_reg_n_0_[28]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(29),
      Q => \data_sr_reg_n_0_[29]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(2),
      Q => \data_sr_reg_n_0_[2]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(30),
      Q => \data_sr_reg_n_0_[30]\,
      R => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(31),
      Q => \data_sr_reg_n_0_[31]\,
      S => \data_sr[31]_i_1_n_0\
    );
\data_sr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[3]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[3]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[4]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[4]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(5),
      Q => \data_sr_reg_n_0_[5]\,
      R => '0'
    );
\data_sr_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[6]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[6]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(7),
      Q => \data_sr_reg_n_0_[7]\,
      R => '0'
    );
\data_sr_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => \data_sr[8]_i_1_n_0\,
      Q => \data_sr_reg_n_0_[8]\,
      S => \data_sr[19]_i_1_n_0\
    );
\data_sr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \busy_sr[0]_i_1_n_0\,
      D => p_2_in(9),
      Q => \data_sr_reg_n_0_[9]\,
      R => '0'
    );
\divider[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \divider_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\divider[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \divider_reg_n_0_[0]\,
      I1 => \divider_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\divider[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \divider_reg_n_0_[1]\,
      I1 => \divider_reg_n_0_[0]\,
      I2 => \divider_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\divider[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \divider_reg_n_0_[2]\,
      I1 => \divider_reg_n_0_[0]\,
      I2 => \divider_reg_n_0_[1]\,
      I3 => \divider_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\divider[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \divider_reg_n_0_[3]\,
      I1 => \divider_reg_n_0_[1]\,
      I2 => \divider_reg_n_0_[0]\,
      I3 => \divider_reg_n_0_[2]\,
      I4 => \divider_reg_n_0_[4]\,
      O => \p_0_in__0\(4)
    );
\divider[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \divider_reg_n_0_[4]\,
      I1 => \divider_reg_n_0_[2]\,
      I2 => \divider_reg_n_0_[0]\,
      I3 => \divider_reg_n_0_[1]\,
      I4 => \divider_reg_n_0_[3]\,
      I5 => \divider_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\divider[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \busy_sr[0]_i_3_n_0\,
      I1 => p_0_in(0),
      O => \p_0_in__0\(6)
    );
\divider[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => \divider[7]_i_3_n_0\,
      I1 => \busy_sr[0]_i_5_n_0\,
      I2 => \busy_sr[0]_i_6_n_0\,
      I3 => p_0_in_0,
      O => \divider[7]_i_1_n_0\
    );
\divider[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \busy_sr[0]_i_3_n_0\,
      I2 => p_0_in(1),
      O => \p_0_in__0\(7)
    );
\divider[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sreg(2),
      I1 => sreg(14),
      I2 => sreg(15),
      I3 => sreg(12),
      I4 => sreg(7),
      O => \divider[7]_i_3_n_0\
    );
\divider_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \divider_reg_n_0_[0]\,
      R => '0'
    );
\divider_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \divider_reg_n_0_[1]\,
      R => '0'
    );
\divider_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \divider_reg_n_0_[2]\,
      R => '0'
    );
\divider_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \divider_reg_n_0_[3]\,
      R => '0'
    );
\divider_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \divider_reg_n_0_[4]\,
      R => '0'
    );
\divider_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \divider_reg_n_0_[5]\,
      R => '0'
    );
\divider_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => p_0_in(0),
      R => '0'
    );
\divider_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => p_0_in(1),
      R => '0'
    );
finished_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sreg(7),
      I1 => sreg(12),
      I2 => sreg(15),
      I3 => sreg(14),
      I4 => sreg(2),
      O => finished
    );
sioc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFFEFFFEFAFAF"
    )
        port map (
      I0 => sioc_i_2_n_0,
      I1 => sioc_i_3_n_0,
      I2 => p_0_in_0,
      I3 => \busy_sr_reg_n_0_[0]\,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => sioc_i_1_n_0
    );
sioc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0000000000000B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \busy_sr_reg_n_0_[30]\,
      I2 => \busy_sr_reg_n_0_[0]\,
      I3 => \busy_sr_reg_n_0_[1]\,
      I4 => \busy_sr_reg_n_0_[29]\,
      I5 => \busy_sr_reg_n_0_[2]\,
      O => sioc_i_2_n_0
    );
sioc_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[30]\,
      I1 => \busy_sr_reg_n_0_[29]\,
      I2 => \busy_sr_reg_n_0_[2]\,
      O => sioc_i_3_n_0
    );
sioc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sioc_i_1_n_0,
      Q => sioc,
      R => '0'
    );
siod_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[31]\,
      I1 => siod_INST_0_i_1_n_0,
      O => siod
    );
siod_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBB0BB0000B0BB"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[28]\,
      I1 => \busy_sr_reg_n_0_[29]\,
      I2 => p_1_in_1(0),
      I3 => p_1_in_1(1),
      I4 => \busy_sr_reg_n_0_[11]\,
      I5 => \busy_sr_reg_n_0_[10]\,
      O => siod_INST_0_i_1_n_0
    );
\sreg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => address_reg(0),
      I1 => address_reg(1),
      O => \sreg[12]_i_1_n_0\
    );
\sreg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_reg(1),
      I1 => address_reg(0),
      O => \sreg[14]_i_1_n_0\
    );
\sreg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => address_reg(6),
      I1 => address_reg(7),
      I2 => address_reg(4),
      I3 => address_reg(5),
      I4 => address_reg(3),
      I5 => address_reg(2),
      O => p_0_in0
    );
\sreg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_reg(1),
      I1 => address_reg(0),
      O => \sreg[2]_i_1_n_0\
    );
\sreg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => address_reg(0),
      I1 => address_reg(1),
      O => \sreg[7]_i_1_n_0\
    );
\sreg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sreg[12]_i_1_n_0\,
      Q => sreg(12),
      S => p_0_in0
    );
\sreg_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sreg[14]_i_1_n_0\,
      Q => sreg(14),
      S => p_0_in0
    );
\sreg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in0,
      Q => sreg(15),
      R => '0'
    );
\sreg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sreg[2]_i_1_n_0\,
      Q => sreg(2),
      S => p_0_in0
    );
\sreg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \sreg[7]_i_1_n_0\,
      Q => sreg(7),
      S => p_0_in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_sender_0_0 is
  port (
    clk : in STD_LOGIC;
    siod : inout STD_LOGIC;
    sioc : out STD_LOGIC;
    resend : in STD_LOGIC;
    finished : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_i2c_sender_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_i2c_sender_0_0 : entity is "design_1_i2c_sender_0_0,i2c_sender,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_i2c_sender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_i2c_sender_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_i2c_sender_0_0 : entity is "i2c_sender,Vivado 2021.2";
end design_1_i2c_sender_0_0;

architecture STRUCTURE of design_1_i2c_sender_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_i2c_sender_0_0_i2c_sender
     port map (
      clk => clk,
      finished => finished,
      resend => resend,
      sioc => sioc,
      siod => siod
    );
end STRUCTURE;
