-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Jun  2 20:36:05 2022
-- Host        : KfirLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/FPGA-Learning/VivadoLabs/BlockDesGPIO_Demo/BlockDesGPIO_Demo/BlockDesGPIO_Demo.gen/sources_1/bd/design_1/ip/design_1_GPIO_demo_0_0/design_1_GPIO_demo_0_0_sim_netlist.vhdl
-- Design      : design_1_GPIO_demo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_GPIO_demo_0_0_RGB_controller is
  port (
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_GPIO_demo_0_0_RGB_controller : entity is "RGB_controller";
end design_1_GPIO_demo_0_0_RGB_controller;

architecture STRUCTURE of design_1_GPIO_demo_0_0_RGB_controller is
  signal L : STD_LOGIC_VECTOR ( 8 downto 7 );
  signal clear : STD_LOGIC;
  signal \deltacount[0]_i_3_n_0\ : STD_LOGIC;
  signal \deltacount[0]_i_4_n_0\ : STD_LOGIC;
  signal \deltacount[0]_i_5_n_0\ : STD_LOGIC;
  signal deltacount_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \deltacount_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \deltacount_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \deltacount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \deltacount_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \deltacount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \deltacount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \gtOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \gtOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal valcount : STD_LOGIC;
  signal \valcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[6]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[7]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_1_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_2_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_3_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_4_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_5_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_6_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_7_n_0\ : STD_LOGIC;
  signal \valcount[8]_i_8_n_0\ : STD_LOGIC;
  signal \valcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \valcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \valcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \valcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \valcount_reg_n_0_[4]\ : STD_LOGIC;
  signal \valcount_reg_n_0_[5]\ : STD_LOGIC;
  signal \windowcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \windowcount[7]_i_1_n_0\ : STD_LOGIC;
  signal \windowcount[7]_i_3_n_0\ : STD_LOGIC;
  signal \windowcount[7]_i_4_n_0\ : STD_LOGIC;
  signal windowcount_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_deltacount_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \deltacount[0]_i_5\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deltacount_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \deltacount_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \deltacount_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \deltacount_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \deltacount_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_inferred__1/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \valcount[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \valcount[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \valcount[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \valcount[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \valcount[8]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \windowcount[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \windowcount[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \windowcount[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \windowcount[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \windowcount[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \windowcount[7]_i_3\ : label is "soft_lutpair7";
begin
\deltacount[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000080008000"
    )
        port map (
      I0 => deltacount_reg(18),
      I1 => deltacount_reg(19),
      I2 => deltacount_reg(16),
      I3 => deltacount_reg(17),
      I4 => deltacount_reg(15),
      I5 => \deltacount[0]_i_3_n_0\,
      O => clear
    );
\deltacount[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \deltacount[0]_i_5_n_0\,
      I1 => deltacount_reg(6),
      I2 => deltacount_reg(7),
      I3 => deltacount_reg(8),
      I4 => deltacount_reg(9),
      I5 => deltacount_reg(14),
      O => \deltacount[0]_i_3_n_0\
    );
\deltacount[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => deltacount_reg(0),
      O => \deltacount[0]_i_4_n_0\
    );
\deltacount[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => deltacount_reg(13),
      I1 => deltacount_reg(12),
      I2 => deltacount_reg(11),
      I3 => deltacount_reg(10),
      O => \deltacount[0]_i_5_n_0\
    );
\deltacount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[0]_i_2_n_7\,
      Q => deltacount_reg(0),
      R => clear
    );
\deltacount_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deltacount_reg[0]_i_2_n_0\,
      CO(2) => \deltacount_reg[0]_i_2_n_1\,
      CO(1) => \deltacount_reg[0]_i_2_n_2\,
      CO(0) => \deltacount_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \deltacount_reg[0]_i_2_n_4\,
      O(2) => \deltacount_reg[0]_i_2_n_5\,
      O(1) => \deltacount_reg[0]_i_2_n_6\,
      O(0) => \deltacount_reg[0]_i_2_n_7\,
      S(3 downto 1) => deltacount_reg(3 downto 1),
      S(0) => \deltacount[0]_i_4_n_0\
    );
\deltacount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[8]_i_1_n_5\,
      Q => deltacount_reg(10),
      R => clear
    );
\deltacount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[8]_i_1_n_4\,
      Q => deltacount_reg(11),
      R => clear
    );
\deltacount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[12]_i_1_n_7\,
      Q => deltacount_reg(12),
      R => clear
    );
\deltacount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deltacount_reg[8]_i_1_n_0\,
      CO(3) => \deltacount_reg[12]_i_1_n_0\,
      CO(2) => \deltacount_reg[12]_i_1_n_1\,
      CO(1) => \deltacount_reg[12]_i_1_n_2\,
      CO(0) => \deltacount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deltacount_reg[12]_i_1_n_4\,
      O(2) => \deltacount_reg[12]_i_1_n_5\,
      O(1) => \deltacount_reg[12]_i_1_n_6\,
      O(0) => \deltacount_reg[12]_i_1_n_7\,
      S(3 downto 0) => deltacount_reg(15 downto 12)
    );
\deltacount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[12]_i_1_n_6\,
      Q => deltacount_reg(13),
      R => clear
    );
\deltacount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[12]_i_1_n_5\,
      Q => deltacount_reg(14),
      R => clear
    );
\deltacount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[12]_i_1_n_4\,
      Q => deltacount_reg(15),
      R => clear
    );
\deltacount_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[16]_i_1_n_7\,
      Q => deltacount_reg(16),
      R => clear
    );
\deltacount_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deltacount_reg[12]_i_1_n_0\,
      CO(3) => \NLW_deltacount_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \deltacount_reg[16]_i_1_n_1\,
      CO(1) => \deltacount_reg[16]_i_1_n_2\,
      CO(0) => \deltacount_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deltacount_reg[16]_i_1_n_4\,
      O(2) => \deltacount_reg[16]_i_1_n_5\,
      O(1) => \deltacount_reg[16]_i_1_n_6\,
      O(0) => \deltacount_reg[16]_i_1_n_7\,
      S(3 downto 0) => deltacount_reg(19 downto 16)
    );
\deltacount_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[16]_i_1_n_6\,
      Q => deltacount_reg(17),
      R => clear
    );
\deltacount_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[16]_i_1_n_5\,
      Q => deltacount_reg(18),
      R => clear
    );
\deltacount_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[16]_i_1_n_4\,
      Q => deltacount_reg(19),
      R => clear
    );
\deltacount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[0]_i_2_n_6\,
      Q => deltacount_reg(1),
      R => clear
    );
\deltacount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[0]_i_2_n_5\,
      Q => deltacount_reg(2),
      R => clear
    );
\deltacount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[0]_i_2_n_4\,
      Q => deltacount_reg(3),
      R => clear
    );
\deltacount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[4]_i_1_n_7\,
      Q => deltacount_reg(4),
      R => clear
    );
\deltacount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deltacount_reg[0]_i_2_n_0\,
      CO(3) => \deltacount_reg[4]_i_1_n_0\,
      CO(2) => \deltacount_reg[4]_i_1_n_1\,
      CO(1) => \deltacount_reg[4]_i_1_n_2\,
      CO(0) => \deltacount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deltacount_reg[4]_i_1_n_4\,
      O(2) => \deltacount_reg[4]_i_1_n_5\,
      O(1) => \deltacount_reg[4]_i_1_n_6\,
      O(0) => \deltacount_reg[4]_i_1_n_7\,
      S(3 downto 0) => deltacount_reg(7 downto 4)
    );
\deltacount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[4]_i_1_n_6\,
      Q => deltacount_reg(5),
      R => clear
    );
\deltacount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[4]_i_1_n_5\,
      Q => deltacount_reg(6),
      R => clear
    );
\deltacount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[4]_i_1_n_4\,
      Q => deltacount_reg(7),
      R => clear
    );
\deltacount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[8]_i_1_n_7\,
      Q => deltacount_reg(8),
      R => clear
    );
\deltacount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deltacount_reg[4]_i_1_n_0\,
      CO(3) => \deltacount_reg[8]_i_1_n_0\,
      CO(2) => \deltacount_reg[8]_i_1_n_1\,
      CO(1) => \deltacount_reg[8]_i_1_n_2\,
      CO(0) => \deltacount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \deltacount_reg[8]_i_1_n_4\,
      O(2) => \deltacount_reg[8]_i_1_n_5\,
      O(1) => \deltacount_reg[8]_i_1_n_6\,
      O(0) => \deltacount_reg[8]_i_1_n_7\,
      S(3 downto 0) => deltacount_reg(11 downto 8)
    );
\deltacount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \deltacount_reg[8]_i_1_n_6\,
      Q => deltacount_reg(9),
      R => clear
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
gtOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001140"
    )
        port map (
      I0 => windowcount_reg(6),
      I1 => p_0_in,
      I2 => L(7),
      I3 => L(8),
      I4 => windowcount_reg(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011F011F2F020000"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => windowcount_reg(5),
      I3 => \valcount_reg_n_0_[5]\,
      I4 => L(7),
      I5 => L(8),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011F011F2F020000"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => windowcount_reg(3),
      I3 => \valcount_reg_n_0_[3]\,
      I4 => L(7),
      I5 => L(8),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011F011F2F020000"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => windowcount_reg(1),
      I3 => \valcount_reg_n_0_[1]\,
      I4 => L(7),
      I5 => L(8),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000058A7"
    )
        port map (
      I0 => p_0_in,
      I1 => L(7),
      I2 => L(8),
      I3 => windowcount_reg(6),
      I4 => windowcount_reg(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606900060600933"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => \valcount_reg_n_0_[5]\,
      I3 => L(7),
      I4 => L(8),
      I5 => windowcount_reg(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606900060600933"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => \valcount_reg_n_0_[3]\,
      I3 => L(7),
      I4 => L(8),
      I5 => windowcount_reg(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606900060600933"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => \valcount_reg_n_0_[1]\,
      I3 => L(7),
      I4 => L(8),
      I5 => windowcount_reg(1),
      O => gtOp_carry_i_8_n_0
    );
\gtOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__0/i__carry_n_0\,
      CO(2) => \gtOp_inferred__0/i__carry_n_1\,
      CO(1) => \gtOp_inferred__0/i__carry_n_2\,
      CO(0) => \gtOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\gtOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__1/i__carry_n_0\,
      CO(2) => \gtOp_inferred__1/i__carry_n_1\,
      CO(1) => \gtOp_inferred__1/i__carry_n_2\,
      CO(0) => \gtOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000110"
    )
        port map (
      I0 => windowcount_reg(6),
      I1 => L(8),
      I2 => L(7),
      I3 => p_0_in,
      I4 => windowcount_reg(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004401"
    )
        port map (
      I0 => windowcount_reg(6),
      I1 => L(8),
      I2 => L(7),
      I3 => p_0_in,
      I4 => windowcount_reg(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001002F001F0002"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => windowcount_reg(5),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[5]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F002F010200021F"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => windowcount_reg(5),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[5]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001002F001F0002"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => windowcount_reg(3),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[3]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F002F010200021F"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => windowcount_reg(3),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[3]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001002F001F0002"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => windowcount_reg(1),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F002F010200021F"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => windowcount_reg(1),
      I3 => L(8),
      I4 => L(7),
      I5 => \valcount_reg_n_0_[1]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000014EB"
    )
        port map (
      I0 => L(8),
      I1 => L(7),
      I2 => p_0_in,
      I3 => windowcount_reg(6),
      I4 => windowcount_reg(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A15E"
    )
        port map (
      I0 => L(8),
      I1 => L(7),
      I2 => p_0_in,
      I3 => windowcount_reg(6),
      I4 => windowcount_reg(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009060036303039"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[5]\,
      I5 => windowcount_reg(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090000603069390"
    )
        port map (
      I0 => \valcount_reg_n_0_[4]\,
      I1 => windowcount_reg(4),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[5]\,
      I5 => windowcount_reg(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009060036303039"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[3]\,
      I5 => windowcount_reg(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090000603069390"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => windowcount_reg(2),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[3]\,
      I5 => windowcount_reg(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009060036303039"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[1]\,
      I5 => windowcount_reg(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090000603069390"
    )
        port map (
      I0 => \valcount_reg_n_0_[0]\,
      I1 => windowcount_reg(0),
      I2 => L(8),
      I3 => L(7),
      I4 => \valcount_reg_n_0_[1]\,
      I5 => windowcount_reg(1),
      O => \i__carry_i_8__0_n_0\
    );
\rgbLedReg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gtOp,
      Q => RGB2_Green,
      R => '0'
    );
\rgbLedReg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gtOp_inferred__0/i__carry_n_0\,
      Q => RGB2_Blue,
      R => '0'
    );
\rgbLedReg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gtOp_inferred__1/i__carry_n_0\,
      Q => RGB2_Red,
      R => '0'
    );
\valcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => L(7),
      O => \valcount[0]_i_1_n_0\
    );
\valcount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1133444C"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount[8]_i_6_n_0\,
      I3 => L(7),
      I4 => \valcount_reg_n_0_[1]\,
      O => \valcount[1]_i_1_n_0\
    );
\valcount[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1133557F444C0000"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount[8]_i_6_n_0\,
      I3 => L(7),
      I4 => \valcount_reg_n_0_[1]\,
      I5 => \valcount_reg_n_0_[2]\,
      O => \valcount[2]_i_1_n_0\
    );
\valcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \valcount_reg_n_0_[1]\,
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount_reg_n_0_[2]\,
      I3 => \valcount_reg_n_0_[3]\,
      O => plusOp(3)
    );
\valcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount_reg_n_0_[1]\,
      I3 => \valcount_reg_n_0_[3]\,
      I4 => \valcount_reg_n_0_[4]\,
      O => plusOp(4)
    );
\valcount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => \valcount[8]_i_1_n_0\,
      I1 => L(8),
      I2 => \valcount_reg_n_0_[0]\,
      I3 => \valcount[8]_i_6_n_0\,
      I4 => L(7),
      O => valcount
    );
\valcount[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \valcount_reg_n_0_[3]\,
      I1 => \valcount_reg_n_0_[1]\,
      I2 => \valcount_reg_n_0_[0]\,
      I3 => \valcount_reg_n_0_[2]\,
      I4 => \valcount_reg_n_0_[4]\,
      I5 => \valcount_reg_n_0_[5]\,
      O => plusOp(5)
    );
\valcount[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000557F557F0000"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount[8]_i_6_n_0\,
      I3 => L(7),
      I4 => \valcount[8]_i_7_n_0\,
      I5 => p_0_in,
      O => \valcount[6]_i_1_n_0\
    );
\valcount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F550055005500"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount[8]_i_6_n_0\,
      I3 => L(7),
      I4 => \valcount[8]_i_7_n_0\,
      I5 => p_0_in,
      O => \valcount[7]_i_1_n_0\
    );
\valcount[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => deltacount_reg(12),
      I1 => \valcount[8]_i_3_n_0\,
      I2 => deltacount_reg(14),
      I3 => deltacount_reg(13),
      I4 => \valcount[8]_i_4_n_0\,
      I5 => \valcount[8]_i_5_n_0\,
      O => \valcount[8]_i_1_n_0\
    );
\valcount[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"552A002A002A002A"
    )
        port map (
      I0 => L(8),
      I1 => \valcount_reg_n_0_[0]\,
      I2 => \valcount[8]_i_6_n_0\,
      I3 => L(7),
      I4 => p_0_in,
      I5 => \valcount[8]_i_7_n_0\,
      O => \valcount[8]_i_2_n_0\
    );
\valcount[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => deltacount_reg(10),
      I1 => deltacount_reg(11),
      O => \valcount[8]_i_3_n_0\
    );
\valcount[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => deltacount_reg(18),
      I1 => deltacount_reg(19),
      I2 => deltacount_reg(15),
      I3 => deltacount_reg(16),
      I4 => deltacount_reg(17),
      O => \valcount[8]_i_4_n_0\
    );
\valcount[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => deltacount_reg(2),
      I1 => deltacount_reg(1),
      I2 => deltacount_reg(0),
      I3 => deltacount_reg(3),
      I4 => deltacount_reg(4),
      I5 => \valcount[8]_i_8_n_0\,
      O => \valcount[8]_i_5_n_0\
    );
\valcount[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \valcount_reg_n_0_[2]\,
      I1 => \valcount_reg_n_0_[1]\,
      I2 => \valcount_reg_n_0_[5]\,
      I3 => p_0_in,
      I4 => \valcount_reg_n_0_[3]\,
      I5 => \valcount_reg_n_0_[4]\,
      O => \valcount[8]_i_6_n_0\
    );
\valcount[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \valcount_reg_n_0_[5]\,
      I1 => \valcount_reg_n_0_[3]\,
      I2 => \valcount_reg_n_0_[1]\,
      I3 => \valcount_reg_n_0_[0]\,
      I4 => \valcount_reg_n_0_[2]\,
      I5 => \valcount_reg_n_0_[4]\,
      O => \valcount[8]_i_7_n_0\
    );
\valcount[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => deltacount_reg(9),
      I1 => deltacount_reg(8),
      I2 => deltacount_reg(5),
      I3 => deltacount_reg(6),
      I4 => deltacount_reg(7),
      O => \valcount[8]_i_8_n_0\
    );
\valcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[0]_i_1_n_0\,
      Q => \valcount_reg_n_0_[0]\,
      R => '0'
    );
\valcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[1]_i_1_n_0\,
      Q => \valcount_reg_n_0_[1]\,
      R => '0'
    );
\valcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[2]_i_1_n_0\,
      Q => \valcount_reg_n_0_[2]\,
      R => '0'
    );
\valcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => plusOp(3),
      Q => \valcount_reg_n_0_[3]\,
      R => valcount
    );
\valcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => plusOp(4),
      Q => \valcount_reg_n_0_[4]\,
      R => valcount
    );
\valcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => plusOp(5),
      Q => \valcount_reg_n_0_[5]\,
      R => valcount
    );
\valcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[6]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\valcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[7]_i_1_n_0\,
      Q => L(7),
      R => '0'
    );
\valcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \valcount[8]_i_1_n_0\,
      D => \valcount[8]_i_2_n_0\,
      Q => L(8),
      R => '0'
    );
\windowcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => windowcount_reg(0),
      O => \windowcount[0]_i_1_n_0\
    );
\windowcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => windowcount_reg(0),
      I1 => windowcount_reg(1),
      O => \plusOp__0\(1)
    );
\windowcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => windowcount_reg(0),
      I1 => windowcount_reg(1),
      I2 => windowcount_reg(2),
      O => \plusOp__0\(2)
    );
\windowcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => windowcount_reg(1),
      I1 => windowcount_reg(0),
      I2 => windowcount_reg(2),
      I3 => windowcount_reg(3),
      O => \plusOp__0\(3)
    );
\windowcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => windowcount_reg(2),
      I1 => windowcount_reg(0),
      I2 => windowcount_reg(1),
      I3 => windowcount_reg(3),
      I4 => windowcount_reg(4),
      O => \plusOp__0\(4)
    );
\windowcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => windowcount_reg(3),
      I1 => windowcount_reg(1),
      I2 => windowcount_reg(0),
      I3 => windowcount_reg(2),
      I4 => windowcount_reg(4),
      I5 => windowcount_reg(5),
      O => \plusOp__0\(5)
    );
\windowcount[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \windowcount[7]_i_4_n_0\,
      I1 => windowcount_reg(6),
      O => \plusOp__0\(6)
    );
\windowcount[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \windowcount[7]_i_3_n_0\,
      I1 => windowcount_reg(1),
      I2 => windowcount_reg(3),
      I3 => windowcount_reg(2),
      I4 => windowcount_reg(0),
      O => \windowcount[7]_i_1_n_0\
    );
\windowcount[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \windowcount[7]_i_4_n_0\,
      I1 => windowcount_reg(6),
      I2 => windowcount_reg(7),
      O => \plusOp__0\(7)
    );
\windowcount[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => windowcount_reg(5),
      I1 => windowcount_reg(4),
      I2 => windowcount_reg(7),
      I3 => windowcount_reg(6),
      O => \windowcount[7]_i_3_n_0\
    );
\windowcount[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => windowcount_reg(5),
      I1 => windowcount_reg(3),
      I2 => windowcount_reg(1),
      I3 => windowcount_reg(0),
      I4 => windowcount_reg(2),
      I5 => windowcount_reg(4),
      O => \windowcount[7]_i_4_n_0\
    );
\windowcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \windowcount[0]_i_1_n_0\,
      Q => windowcount_reg(0),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(1),
      Q => windowcount_reg(1),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(2),
      Q => windowcount_reg(2),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(3),
      Q => windowcount_reg(3),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(4),
      Q => windowcount_reg(4),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(5),
      Q => windowcount_reg(5),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(6),
      Q => windowcount_reg(6),
      R => \windowcount[7]_i_1_n_0\
    );
\windowcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__0\(7),
      Q => windowcount_reg(7),
      R => \windowcount[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_GPIO_demo_0_0_UART_TX_CTRL is
  port (
    UART_TXD : out STD_LOGIC;
    \FSM_sequential_uartState_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_uartState_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_uartState_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    uartState : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    btnDeBnc : in STD_LOGIC_VECTOR ( 0 to 0 );
    \eqOp__25\ : in STD_LOGIC;
    \FSM_sequential_uartState_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_GPIO_demo_0_0_UART_TX_CTRL : entity is "UART_TX_CTRL";
end design_1_GPIO_demo_0_0_UART_TX_CTRL;

architecture STRUCTURE of design_1_GPIO_demo_0_0_UART_TX_CTRL is
  signal \FSM_sequential_txState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_txState[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_2_n_0\ : STD_LOGIC;
  signal READY : STD_LOGIC;
  signal \bitIndex[0]_i_2_n_0\ : STD_LOGIC;
  signal bitIndex_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \bitIndex_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal bitTmr : STD_LOGIC;
  signal \bitTmr[0]_i_3_n_0\ : STD_LOGIC;
  signal bitTmr_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bitTmr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bitTmr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \eqOp__12\ : STD_LOGIC;
  signal txBit_i_2_n_0 : STD_LOGIC;
  signal txBit_i_3_n_0 : STD_LOGIC;
  signal txBit_i_4_n_0 : STD_LOGIC;
  signal txBit_i_5_n_0 : STD_LOGIC;
  signal txData : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal txState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_txState_reg[0]\ : label is "send_bit:10,load_bit:01,rdy:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_txState_reg[1]\ : label is "send_bit:10,load_bit:01,rdy:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bitIndex_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitIndex_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitTmr_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \bitTmr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitTmr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bitTmr_reg[8]_i_1\ : label is 11;
begin
\FSM_sequential_txState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBC8CBC8CBC8C3C0"
    )
        port map (
      I0 => \eqOp__12\,
      I1 => txState(1),
      I2 => txState(0),
      I3 => E(0),
      I4 => \FSM_sequential_txState[0]_i_2_n_0\,
      I5 => \FSM_sequential_txState[0]_i_3_n_0\,
      O => \FSM_sequential_txState[0]_i_1_n_0\
    );
\FSM_sequential_txState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \FSM_sequential_txState[0]_i_4_n_0\,
      I1 => bitIndex_reg(3),
      I2 => bitIndex_reg(29),
      I3 => bitIndex_reg(1),
      I4 => \FSM_sequential_txState[0]_i_5_n_0\,
      I5 => \FSM_sequential_txState[0]_i_6_n_0\,
      O => \FSM_sequential_txState[0]_i_2_n_0\
    );
\FSM_sequential_txState[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_txState[0]_i_7_n_0\,
      I1 => bitIndex_reg(14),
      I2 => bitIndex_reg(15),
      I3 => bitIndex_reg(12),
      I4 => bitIndex_reg(13),
      I5 => \FSM_sequential_txState[0]_i_8_n_0\,
      O => \FSM_sequential_txState[0]_i_3_n_0\
    );
\FSM_sequential_txState[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitIndex_reg(26),
      I1 => bitIndex_reg(27),
      I2 => bitIndex_reg(24),
      I3 => bitIndex_reg(25),
      O => \FSM_sequential_txState[0]_i_4_n_0\
    );
\FSM_sequential_txState[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitIndex_reg(18),
      I1 => bitIndex_reg(19),
      I2 => bitIndex_reg(16),
      I3 => bitIndex_reg(17),
      O => \FSM_sequential_txState[0]_i_5_n_0\
    );
\FSM_sequential_txState[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitIndex_reg(22),
      I1 => bitIndex_reg(23),
      I2 => bitIndex_reg(20),
      I3 => bitIndex_reg(21),
      O => \FSM_sequential_txState[0]_i_6_n_0\
    );
\FSM_sequential_txState[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitIndex_reg(10),
      I1 => bitIndex_reg(11),
      I2 => bitIndex_reg(8),
      I3 => bitIndex_reg(9),
      O => \FSM_sequential_txState[0]_i_7_n_0\
    );
\FSM_sequential_txState[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bitIndex_reg(5),
      I1 => bitIndex_reg(4),
      I2 => bitIndex_reg(7),
      I3 => bitIndex_reg(6),
      I4 => \FSM_sequential_txState[0]_i_9_n_0\,
      O => \FSM_sequential_txState[0]_i_8_n_0\
    );
\FSM_sequential_txState[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitIndex_reg(2),
      I1 => bitIndex_reg(28),
      I2 => bitIndex_reg(0),
      I3 => bitIndex_reg(30),
      O => \FSM_sequential_txState[0]_i_9_n_0\
    );
\FSM_sequential_txState[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \eqOp__12\,
      I1 => txState(1),
      I2 => txState(0),
      O => \FSM_sequential_txState[1]_i_1_n_0\
    );
\FSM_sequential_txState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_sequential_txState[1]_i_3_n_0\,
      I1 => bitTmr_reg(10),
      I2 => bitTmr_reg(9),
      I3 => bitTmr_reg(12),
      I4 => \FSM_sequential_txState[1]_i_4_n_0\,
      I5 => \FSM_sequential_txState[1]_i_5_n_0\,
      O => \eqOp__12\
    );
\FSM_sequential_txState[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bitTmr_reg(3),
      I1 => bitTmr_reg(2),
      I2 => bitTmr_reg(8),
      I3 => bitTmr_reg(6),
      O => \FSM_sequential_txState[1]_i_3_n_0\
    );
\FSM_sequential_txState[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => bitTmr_reg(0),
      I1 => bitTmr_reg(13),
      I2 => bitTmr_reg(1),
      O => \FSM_sequential_txState[1]_i_4_n_0\
    );
\FSM_sequential_txState[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bitTmr_reg(5),
      I1 => bitTmr_reg(4),
      I2 => bitTmr_reg(11),
      I3 => bitTmr_reg(7),
      O => \FSM_sequential_txState[1]_i_5_n_0\
    );
\FSM_sequential_txState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_txState[0]_i_1_n_0\,
      Q => txState(0),
      R => '0'
    );
\FSM_sequential_txState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_txState[1]_i_1_n_0\,
      Q => txState(1),
      R => '0'
    );
\FSM_sequential_uartState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000026662626"
    )
        port map (
      I0 => uartState(0),
      I1 => \FSM_sequential_uartState[2]_i_2_n_0\,
      I2 => uartState(2),
      I3 => uartState(1),
      I4 => CO(0),
      I5 => btnDeBnc(0),
      O => \FSM_sequential_uartState_reg[0]\
    );
\FSM_sequential_uartState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006666AAEA"
    )
        port map (
      I0 => uartState(1),
      I1 => \FSM_sequential_uartState[2]_i_2_n_0\,
      I2 => uartState(2),
      I3 => CO(0),
      I4 => uartState(0),
      I5 => btnDeBnc(0),
      O => \FSM_sequential_uartState_reg[1]\
    );
\FSM_sequential_uartState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A2A6A22"
    )
        port map (
      I0 => uartState(2),
      I1 => \FSM_sequential_uartState[2]_i_2_n_0\,
      I2 => uartState(1),
      I3 => uartState(0),
      I4 => CO(0),
      I5 => btnDeBnc(0),
      O => \FSM_sequential_uartState_reg[2]\
    );
\FSM_sequential_uartState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE23333FFE2"
    )
        port map (
      I0 => \eqOp__25\,
      I1 => uartState(2),
      I2 => READY,
      I3 => uartState(1),
      I4 => uartState(0),
      I5 => \FSM_sequential_uartState_reg[0]_0\,
      O => \FSM_sequential_uartState[2]_i_2_n_0\
    );
\bitIndex[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitIndex_reg(0),
      O => \bitIndex[0]_i_2_n_0\
    );
\bitIndex_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_7\,
      Q => bitIndex_reg(0),
      R => READY
    );
\bitIndex_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bitIndex_reg[0]_i_1_n_0\,
      CO(2) => \bitIndex_reg[0]_i_1_n_1\,
      CO(1) => \bitIndex_reg[0]_i_1_n_2\,
      CO(0) => \bitIndex_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \bitIndex_reg[0]_i_1_n_4\,
      O(2) => \bitIndex_reg[0]_i_1_n_5\,
      O(1) => \bitIndex_reg[0]_i_1_n_6\,
      O(0) => \bitIndex_reg[0]_i_1_n_7\,
      S(3 downto 1) => bitIndex_reg(3 downto 1),
      S(0) => \bitIndex[0]_i_2_n_0\
    );
\bitIndex_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_5\,
      Q => bitIndex_reg(10),
      R => READY
    );
\bitIndex_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_4\,
      Q => bitIndex_reg(11),
      R => READY
    );
\bitIndex_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_7\,
      Q => bitIndex_reg(12),
      R => READY
    );
\bitIndex_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[8]_i_1_n_0\,
      CO(3) => \bitIndex_reg[12]_i_1_n_0\,
      CO(2) => \bitIndex_reg[12]_i_1_n_1\,
      CO(1) => \bitIndex_reg[12]_i_1_n_2\,
      CO(0) => \bitIndex_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[12]_i_1_n_4\,
      O(2) => \bitIndex_reg[12]_i_1_n_5\,
      O(1) => \bitIndex_reg[12]_i_1_n_6\,
      O(0) => \bitIndex_reg[12]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(15 downto 12)
    );
\bitIndex_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_6\,
      Q => bitIndex_reg(13),
      R => READY
    );
\bitIndex_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_5\,
      Q => bitIndex_reg(14),
      R => READY
    );
\bitIndex_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_4\,
      Q => bitIndex_reg(15),
      R => READY
    );
\bitIndex_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_7\,
      Q => bitIndex_reg(16),
      R => READY
    );
\bitIndex_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[12]_i_1_n_0\,
      CO(3) => \bitIndex_reg[16]_i_1_n_0\,
      CO(2) => \bitIndex_reg[16]_i_1_n_1\,
      CO(1) => \bitIndex_reg[16]_i_1_n_2\,
      CO(0) => \bitIndex_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[16]_i_1_n_4\,
      O(2) => \bitIndex_reg[16]_i_1_n_5\,
      O(1) => \bitIndex_reg[16]_i_1_n_6\,
      O(0) => \bitIndex_reg[16]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(19 downto 16)
    );
\bitIndex_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_6\,
      Q => bitIndex_reg(17),
      R => READY
    );
\bitIndex_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_5\,
      Q => bitIndex_reg(18),
      R => READY
    );
\bitIndex_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_4\,
      Q => bitIndex_reg(19),
      R => READY
    );
\bitIndex_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_6\,
      Q => bitIndex_reg(1),
      R => READY
    );
\bitIndex_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_7\,
      Q => bitIndex_reg(20),
      R => READY
    );
\bitIndex_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[16]_i_1_n_0\,
      CO(3) => \bitIndex_reg[20]_i_1_n_0\,
      CO(2) => \bitIndex_reg[20]_i_1_n_1\,
      CO(1) => \bitIndex_reg[20]_i_1_n_2\,
      CO(0) => \bitIndex_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[20]_i_1_n_4\,
      O(2) => \bitIndex_reg[20]_i_1_n_5\,
      O(1) => \bitIndex_reg[20]_i_1_n_6\,
      O(0) => \bitIndex_reg[20]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(23 downto 20)
    );
\bitIndex_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_6\,
      Q => bitIndex_reg(21),
      R => READY
    );
\bitIndex_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_5\,
      Q => bitIndex_reg(22),
      R => READY
    );
\bitIndex_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_4\,
      Q => bitIndex_reg(23),
      R => READY
    );
\bitIndex_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_7\,
      Q => bitIndex_reg(24),
      R => READY
    );
\bitIndex_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[20]_i_1_n_0\,
      CO(3) => \bitIndex_reg[24]_i_1_n_0\,
      CO(2) => \bitIndex_reg[24]_i_1_n_1\,
      CO(1) => \bitIndex_reg[24]_i_1_n_2\,
      CO(0) => \bitIndex_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[24]_i_1_n_4\,
      O(2) => \bitIndex_reg[24]_i_1_n_5\,
      O(1) => \bitIndex_reg[24]_i_1_n_6\,
      O(0) => \bitIndex_reg[24]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(27 downto 24)
    );
\bitIndex_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_6\,
      Q => bitIndex_reg(25),
      R => READY
    );
\bitIndex_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_5\,
      Q => bitIndex_reg(26),
      R => READY
    );
\bitIndex_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_4\,
      Q => bitIndex_reg(27),
      R => READY
    );
\bitIndex_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_7\,
      Q => bitIndex_reg(28),
      R => READY
    );
\bitIndex_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bitIndex_reg[28]_i_1_n_2\,
      CO(0) => \bitIndex_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \bitIndex_reg[28]_i_1_n_5\,
      O(1) => \bitIndex_reg[28]_i_1_n_6\,
      O(0) => \bitIndex_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => bitIndex_reg(30 downto 28)
    );
\bitIndex_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_6\,
      Q => bitIndex_reg(29),
      R => READY
    );
\bitIndex_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_5\,
      Q => bitIndex_reg(2),
      R => READY
    );
\bitIndex_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_5\,
      Q => bitIndex_reg(30),
      R => READY
    );
\bitIndex_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_4\,
      Q => bitIndex_reg(3),
      R => READY
    );
\bitIndex_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_7\,
      Q => bitIndex_reg(4),
      R => READY
    );
\bitIndex_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[0]_i_1_n_0\,
      CO(3) => \bitIndex_reg[4]_i_1_n_0\,
      CO(2) => \bitIndex_reg[4]_i_1_n_1\,
      CO(1) => \bitIndex_reg[4]_i_1_n_2\,
      CO(0) => \bitIndex_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[4]_i_1_n_4\,
      O(2) => \bitIndex_reg[4]_i_1_n_5\,
      O(1) => \bitIndex_reg[4]_i_1_n_6\,
      O(0) => \bitIndex_reg[4]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(7 downto 4)
    );
\bitIndex_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_6\,
      Q => bitIndex_reg(5),
      R => READY
    );
\bitIndex_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_5\,
      Q => bitIndex_reg(6),
      R => READY
    );
\bitIndex_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_4\,
      Q => bitIndex_reg(7),
      R => READY
    );
\bitIndex_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_7\,
      Q => bitIndex_reg(8),
      R => READY
    );
\bitIndex_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[4]_i_1_n_0\,
      CO(3) => \bitIndex_reg[8]_i_1_n_0\,
      CO(2) => \bitIndex_reg[8]_i_1_n_1\,
      CO(1) => \bitIndex_reg[8]_i_1_n_2\,
      CO(0) => \bitIndex_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitIndex_reg[8]_i_1_n_4\,
      O(2) => \bitIndex_reg[8]_i_1_n_5\,
      O(1) => \bitIndex_reg[8]_i_1_n_6\,
      O(0) => \bitIndex_reg[8]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(11 downto 8)
    );
\bitIndex_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_6\,
      Q => bitIndex_reg(9),
      R => READY
    );
\bitTmr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \eqOp__12\,
      I1 => txState(1),
      I2 => txState(0),
      O => bitTmr
    );
\bitTmr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitTmr_reg(0),
      O => \bitTmr[0]_i_3_n_0\
    );
\bitTmr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_7\,
      Q => bitTmr_reg(0),
      R => bitTmr
    );
\bitTmr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bitTmr_reg[0]_i_2_n_0\,
      CO(2) => \bitTmr_reg[0]_i_2_n_1\,
      CO(1) => \bitTmr_reg[0]_i_2_n_2\,
      CO(0) => \bitTmr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \bitTmr_reg[0]_i_2_n_4\,
      O(2) => \bitTmr_reg[0]_i_2_n_5\,
      O(1) => \bitTmr_reg[0]_i_2_n_6\,
      O(0) => \bitTmr_reg[0]_i_2_n_7\,
      S(3 downto 1) => bitTmr_reg(3 downto 1),
      S(0) => \bitTmr[0]_i_3_n_0\
    );
\bitTmr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_5\,
      Q => bitTmr_reg(10),
      R => bitTmr
    );
\bitTmr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_4\,
      Q => bitTmr_reg(11),
      R => bitTmr
    );
\bitTmr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[12]_i_1_n_7\,
      Q => bitTmr_reg(12),
      R => bitTmr
    );
\bitTmr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \bitTmr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \bitTmr_reg[12]_i_1_n_6\,
      O(0) => \bitTmr_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => bitTmr_reg(13 downto 12)
    );
\bitTmr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[12]_i_1_n_6\,
      Q => bitTmr_reg(13),
      R => bitTmr
    );
\bitTmr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_6\,
      Q => bitTmr_reg(1),
      R => bitTmr
    );
\bitTmr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_5\,
      Q => bitTmr_reg(2),
      R => bitTmr
    );
\bitTmr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_4\,
      Q => bitTmr_reg(3),
      R => bitTmr
    );
\bitTmr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_7\,
      Q => bitTmr_reg(4),
      R => bitTmr
    );
\bitTmr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[0]_i_2_n_0\,
      CO(3) => \bitTmr_reg[4]_i_1_n_0\,
      CO(2) => \bitTmr_reg[4]_i_1_n_1\,
      CO(1) => \bitTmr_reg[4]_i_1_n_2\,
      CO(0) => \bitTmr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitTmr_reg[4]_i_1_n_4\,
      O(2) => \bitTmr_reg[4]_i_1_n_5\,
      O(1) => \bitTmr_reg[4]_i_1_n_6\,
      O(0) => \bitTmr_reg[4]_i_1_n_7\,
      S(3 downto 0) => bitTmr_reg(7 downto 4)
    );
\bitTmr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_6\,
      Q => bitTmr_reg(5),
      R => bitTmr
    );
\bitTmr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_5\,
      Q => bitTmr_reg(6),
      R => bitTmr
    );
\bitTmr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_4\,
      Q => bitTmr_reg(7),
      R => bitTmr
    );
\bitTmr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_7\,
      Q => bitTmr_reg(8),
      R => bitTmr
    );
\bitTmr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[4]_i_1_n_0\,
      CO(3) => \bitTmr_reg[8]_i_1_n_0\,
      CO(2) => \bitTmr_reg[8]_i_1_n_1\,
      CO(1) => \bitTmr_reg[8]_i_1_n_2\,
      CO(0) => \bitTmr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bitTmr_reg[8]_i_1_n_4\,
      O(2) => \bitTmr_reg[8]_i_1_n_5\,
      O(1) => \bitTmr_reg[8]_i_1_n_6\,
      O(0) => \bitTmr_reg[8]_i_1_n_7\,
      S(3 downto 0) => bitTmr_reg(11 downto 8)
    );
\bitTmr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_6\,
      Q => bitTmr_reg(9),
      R => bitTmr
    );
txBit_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txState(0),
      I1 => txState(1),
      O => READY
    );
txBit_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => txState(0),
      I1 => txState(1),
      O => txBit_i_2_n_0
    );
txBit_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => bitIndex_reg(0),
      I1 => bitIndex_reg(3),
      I2 => txBit_i_4_n_0,
      I3 => bitIndex_reg(2),
      I4 => txBit_i_5_n_0,
      O => txBit_i_3_n_0
    );
txBit_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => txData(7),
      I1 => txData(6),
      I2 => bitIndex_reg(1),
      I3 => txData(5),
      I4 => bitIndex_reg(0),
      I5 => txData(4),
      O => txBit_i_4_n_0
    );
txBit_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => txData(3),
      I1 => txData(2),
      I2 => bitIndex_reg(1),
      I3 => bitIndex_reg(0),
      I4 => txData(1),
      O => txBit_i_5_n_0
    );
txBit_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => txBit_i_2_n_0,
      D => txBit_i_3_n_0,
      Q => UART_TXD,
      S => READY
    );
\txData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(0),
      Q => txData(1),
      R => '0'
    );
\txData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(1),
      Q => txData(2),
      R => '0'
    );
\txData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(2),
      Q => txData(3),
      R => '0'
    );
\txData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(3),
      Q => txData(4),
      R => '0'
    );
\txData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(4),
      Q => txData(5),
      R => '0'
    );
\txData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(5),
      Q => txData(6),
      R => '0'
    );
\txData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => Q(6),
      Q => txData(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_GPIO_demo_0_0_debouncer is
  port (
    btnDeBnc : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \btnReg_reg[0]\ : out STD_LOGIC;
    SSEG_AN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    uartState : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_GPIO_demo_0_0_debouncer : entity is "debouncer";
end design_1_GPIO_demo_0_0_debouncer;

architecture STRUCTURE of design_1_GPIO_demo_0_0_debouncer is
  signal \FSM_sequential_uartState[2]_i_4_n_0\ : STD_LOGIC;
  signal \^btndebnc\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eqOp : STD_LOGIC;
  signal \sig_cntrs_ary[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[3][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary[4][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0][8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1][8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[1]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2][8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[2]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3][8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[3]_3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4][8]_i_1_n_7\ : STD_LOGIC;
  signal \sig_cntrs_ary_reg[4]_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_out_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_out_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_out_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_out_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_out_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sig_out_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \sig_out_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \sig_out_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \sig_out_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sig_out_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \sig_out_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \sig_out_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \sig_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_out_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_out_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_out_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_out_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_out_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \sig_out_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \sig_out_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_sig_cntrs_ary_reg[0][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_cntrs_ary_reg[1][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_cntrs_ary_reg[2][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_cntrs_ary_reg[3][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_cntrs_ary_reg[4][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_uartState[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SSEG_AN[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SSEG_AN[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SSEG_AN[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SSEG_AN[3]_INST_0\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[0][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[0][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[0][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[0][8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[1][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[1][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[1][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[1][8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[2][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[2][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[2][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[2][8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[3][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[3][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[3][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[3][8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[4][0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[4][12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[4][4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_cntrs_ary_reg[4][8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \sig_out_reg[3]_i_1\ : label is "soft_lutpair2";
begin
  btnDeBnc(4 downto 0) <= \^btndebnc\(4 downto 0);
\FSM_sequential_uartState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAFFBABA"
    )
        port map (
      I0 => \FSM_sequential_uartState[2]_i_4_n_0\,
      I1 => Q(0),
      I2 => \^btndebnc\(0),
      I3 => Q(3),
      I4 => \^btndebnc\(3),
      I5 => uartState(0),
      O => \btnReg_reg[0]\
    );
\FSM_sequential_uartState[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => Q(2),
      I1 => \^btndebnc\(2),
      I2 => Q(1),
      I3 => \^btndebnc\(1),
      O => \FSM_sequential_uartState[2]_i_4_n_0\
    );
\SSEG_AN[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BTN(4),
      I1 => \^btndebnc\(0),
      O => SSEG_AN(0)
    );
\SSEG_AN[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BTN(4),
      I1 => \^btndebnc\(1),
      O => SSEG_AN(1)
    );
\SSEG_AN[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BTN(4),
      I1 => \^btndebnc\(2),
      O => SSEG_AN(2)
    );
\SSEG_AN[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BTN(4),
      I1 => \^btndebnc\(3),
      O => SSEG_AN(3)
    );
\sig_cntrs_ary[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \sig_out_reg[0]_i_2_n_0\,
      I1 => \^btndebnc\(0),
      I2 => BTN(0),
      O => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary[0][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[0]_0\(0),
      O => \sig_cntrs_ary[0][0]_i_3_n_0\
    );
\sig_cntrs_ary[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \sig_out_reg[1]_i_2_n_0\,
      I1 => \^btndebnc\(1),
      I2 => BTN(1),
      O => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary[1][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[1]_1\(0),
      O => \sig_cntrs_ary[1][0]_i_3_n_0\
    );
\sig_cntrs_ary[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \sig_out_reg[2]_i_2_n_0\,
      I1 => \^btndebnc\(2),
      I2 => BTN(2),
      O => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary[2][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[2]_2\(0),
      O => \sig_cntrs_ary[2][0]_i_3_n_0\
    );
\sig_cntrs_ary[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \sig_out_reg[3]_i_2_n_0\,
      I1 => \^btndebnc\(3),
      I2 => BTN(3),
      O => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary[3][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[3]_3\(0),
      O => \sig_cntrs_ary[3][0]_i_3_n_0\
    );
\sig_cntrs_ary[4][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => eqOp,
      I1 => \^btndebnc\(4),
      I2 => BTN(4),
      O => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary[4][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[4]_4\(0),
      O => \sig_cntrs_ary[4][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][0]_i_2_n_7\,
      Q => \sig_cntrs_ary_reg[0]_0\(0),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_cntrs_ary_reg[0][0]_i_2_n_0\,
      CO(2) => \sig_cntrs_ary_reg[0][0]_i_2_n_1\,
      CO(1) => \sig_cntrs_ary_reg[0][0]_i_2_n_2\,
      CO(0) => \sig_cntrs_ary_reg[0][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_cntrs_ary_reg[0][0]_i_2_n_4\,
      O(2) => \sig_cntrs_ary_reg[0][0]_i_2_n_5\,
      O(1) => \sig_cntrs_ary_reg[0][0]_i_2_n_6\,
      O(0) => \sig_cntrs_ary_reg[0][0]_i_2_n_7\,
      S(3 downto 1) => \sig_cntrs_ary_reg[0]_0\(3 downto 1),
      S(0) => \sig_cntrs_ary[0][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][8]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[0]_0\(10),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][8]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[0]_0\(11),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][12]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[0]_0\(12),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[0][8]_i_1_n_0\,
      CO(3) => \NLW_sig_cntrs_ary_reg[0][12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_cntrs_ary_reg[0][12]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[0][12]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[0][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[0][12]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[0][12]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[0][12]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[0][12]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[0]_0\(15 downto 12)
    );
\sig_cntrs_ary_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][12]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[0]_0\(13),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][12]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[0]_0\(14),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][12]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[0]_0\(15),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][0]_i_2_n_6\,
      Q => \sig_cntrs_ary_reg[0]_0\(1),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][0]_i_2_n_5\,
      Q => \sig_cntrs_ary_reg[0]_0\(2),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][0]_i_2_n_4\,
      Q => \sig_cntrs_ary_reg[0]_0\(3),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][4]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[0]_0\(4),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[0][0]_i_2_n_0\,
      CO(3) => \sig_cntrs_ary_reg[0][4]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[0][4]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[0][4]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[0][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[0][4]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[0][4]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[0][4]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[0][4]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[0]_0\(7 downto 4)
    );
\sig_cntrs_ary_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][4]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[0]_0\(5),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][4]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[0]_0\(6),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][4]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[0]_0\(7),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][8]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[0]_0\(8),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[0][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[0][4]_i_1_n_0\,
      CO(3) => \sig_cntrs_ary_reg[0][8]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[0][8]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[0][8]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[0][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[0][8]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[0][8]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[0][8]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[0][8]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[0]_0\(11 downto 8)
    );
\sig_cntrs_ary_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[0][8]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[0]_0\(9),
      R => \sig_cntrs_ary[0][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][0]_i_2_n_7\,
      Q => \sig_cntrs_ary_reg[1]_1\(0),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_cntrs_ary_reg[1][0]_i_2_n_0\,
      CO(2) => \sig_cntrs_ary_reg[1][0]_i_2_n_1\,
      CO(1) => \sig_cntrs_ary_reg[1][0]_i_2_n_2\,
      CO(0) => \sig_cntrs_ary_reg[1][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_cntrs_ary_reg[1][0]_i_2_n_4\,
      O(2) => \sig_cntrs_ary_reg[1][0]_i_2_n_5\,
      O(1) => \sig_cntrs_ary_reg[1][0]_i_2_n_6\,
      O(0) => \sig_cntrs_ary_reg[1][0]_i_2_n_7\,
      S(3 downto 1) => \sig_cntrs_ary_reg[1]_1\(3 downto 1),
      S(0) => \sig_cntrs_ary[1][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][8]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[1]_1\(10),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][8]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[1]_1\(11),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][12]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[1]_1\(12),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[1][8]_i_1_n_0\,
      CO(3) => \NLW_sig_cntrs_ary_reg[1][12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_cntrs_ary_reg[1][12]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[1][12]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[1][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[1][12]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[1][12]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[1][12]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[1][12]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[1]_1\(15 downto 12)
    );
\sig_cntrs_ary_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][12]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[1]_1\(13),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][12]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[1]_1\(14),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][12]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[1]_1\(15),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][0]_i_2_n_6\,
      Q => \sig_cntrs_ary_reg[1]_1\(1),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][0]_i_2_n_5\,
      Q => \sig_cntrs_ary_reg[1]_1\(2),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][0]_i_2_n_4\,
      Q => \sig_cntrs_ary_reg[1]_1\(3),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][4]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[1]_1\(4),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[1][0]_i_2_n_0\,
      CO(3) => \sig_cntrs_ary_reg[1][4]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[1][4]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[1][4]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[1][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[1][4]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[1][4]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[1][4]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[1][4]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[1]_1\(7 downto 4)
    );
\sig_cntrs_ary_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][4]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[1]_1\(5),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][4]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[1]_1\(6),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][4]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[1]_1\(7),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][8]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[1]_1\(8),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[1][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[1][4]_i_1_n_0\,
      CO(3) => \sig_cntrs_ary_reg[1][8]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[1][8]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[1][8]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[1][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[1][8]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[1][8]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[1][8]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[1][8]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[1]_1\(11 downto 8)
    );
\sig_cntrs_ary_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[1][8]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[1]_1\(9),
      R => \sig_cntrs_ary[1][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][0]_i_2_n_7\,
      Q => \sig_cntrs_ary_reg[2]_2\(0),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_cntrs_ary_reg[2][0]_i_2_n_0\,
      CO(2) => \sig_cntrs_ary_reg[2][0]_i_2_n_1\,
      CO(1) => \sig_cntrs_ary_reg[2][0]_i_2_n_2\,
      CO(0) => \sig_cntrs_ary_reg[2][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_cntrs_ary_reg[2][0]_i_2_n_4\,
      O(2) => \sig_cntrs_ary_reg[2][0]_i_2_n_5\,
      O(1) => \sig_cntrs_ary_reg[2][0]_i_2_n_6\,
      O(0) => \sig_cntrs_ary_reg[2][0]_i_2_n_7\,
      S(3 downto 1) => \sig_cntrs_ary_reg[2]_2\(3 downto 1),
      S(0) => \sig_cntrs_ary[2][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][8]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[2]_2\(10),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][8]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[2]_2\(11),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][12]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[2]_2\(12),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[2][8]_i_1_n_0\,
      CO(3) => \NLW_sig_cntrs_ary_reg[2][12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_cntrs_ary_reg[2][12]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[2][12]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[2][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[2][12]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[2][12]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[2][12]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[2][12]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[2]_2\(15 downto 12)
    );
\sig_cntrs_ary_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][12]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[2]_2\(13),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][12]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[2]_2\(14),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][12]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[2]_2\(15),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][0]_i_2_n_6\,
      Q => \sig_cntrs_ary_reg[2]_2\(1),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][0]_i_2_n_5\,
      Q => \sig_cntrs_ary_reg[2]_2\(2),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][0]_i_2_n_4\,
      Q => \sig_cntrs_ary_reg[2]_2\(3),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][4]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[2]_2\(4),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[2][0]_i_2_n_0\,
      CO(3) => \sig_cntrs_ary_reg[2][4]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[2][4]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[2][4]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[2][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[2][4]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[2][4]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[2][4]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[2][4]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[2]_2\(7 downto 4)
    );
\sig_cntrs_ary_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][4]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[2]_2\(5),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][4]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[2]_2\(6),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][4]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[2]_2\(7),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][8]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[2]_2\(8),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[2][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[2][4]_i_1_n_0\,
      CO(3) => \sig_cntrs_ary_reg[2][8]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[2][8]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[2][8]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[2][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[2][8]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[2][8]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[2][8]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[2][8]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[2]_2\(11 downto 8)
    );
\sig_cntrs_ary_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[2][8]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[2]_2\(9),
      R => \sig_cntrs_ary[2][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][0]_i_2_n_7\,
      Q => \sig_cntrs_ary_reg[3]_3\(0),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_cntrs_ary_reg[3][0]_i_2_n_0\,
      CO(2) => \sig_cntrs_ary_reg[3][0]_i_2_n_1\,
      CO(1) => \sig_cntrs_ary_reg[3][0]_i_2_n_2\,
      CO(0) => \sig_cntrs_ary_reg[3][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_cntrs_ary_reg[3][0]_i_2_n_4\,
      O(2) => \sig_cntrs_ary_reg[3][0]_i_2_n_5\,
      O(1) => \sig_cntrs_ary_reg[3][0]_i_2_n_6\,
      O(0) => \sig_cntrs_ary_reg[3][0]_i_2_n_7\,
      S(3 downto 1) => \sig_cntrs_ary_reg[3]_3\(3 downto 1),
      S(0) => \sig_cntrs_ary[3][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][8]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[3]_3\(10),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][8]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[3]_3\(11),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][12]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[3]_3\(12),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[3][8]_i_1_n_0\,
      CO(3) => \NLW_sig_cntrs_ary_reg[3][12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_cntrs_ary_reg[3][12]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[3][12]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[3][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[3][12]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[3][12]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[3][12]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[3][12]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[3]_3\(15 downto 12)
    );
\sig_cntrs_ary_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][12]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[3]_3\(13),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][12]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[3]_3\(14),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][12]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[3]_3\(15),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][0]_i_2_n_6\,
      Q => \sig_cntrs_ary_reg[3]_3\(1),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][0]_i_2_n_5\,
      Q => \sig_cntrs_ary_reg[3]_3\(2),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][0]_i_2_n_4\,
      Q => \sig_cntrs_ary_reg[3]_3\(3),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][4]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[3]_3\(4),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[3][0]_i_2_n_0\,
      CO(3) => \sig_cntrs_ary_reg[3][4]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[3][4]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[3][4]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[3][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[3][4]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[3][4]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[3][4]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[3][4]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[3]_3\(7 downto 4)
    );
\sig_cntrs_ary_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][4]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[3]_3\(5),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][4]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[3]_3\(6),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][4]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[3]_3\(7),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][8]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[3]_3\(8),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[3][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[3][4]_i_1_n_0\,
      CO(3) => \sig_cntrs_ary_reg[3][8]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[3][8]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[3][8]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[3][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[3][8]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[3][8]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[3][8]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[3][8]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[3]_3\(11 downto 8)
    );
\sig_cntrs_ary_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[3][8]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[3]_3\(9),
      R => \sig_cntrs_ary[3][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][0]_i_2_n_7\,
      Q => \sig_cntrs_ary_reg[4]_4\(0),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_cntrs_ary_reg[4][0]_i_2_n_0\,
      CO(2) => \sig_cntrs_ary_reg[4][0]_i_2_n_1\,
      CO(1) => \sig_cntrs_ary_reg[4][0]_i_2_n_2\,
      CO(0) => \sig_cntrs_ary_reg[4][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sig_cntrs_ary_reg[4][0]_i_2_n_4\,
      O(2) => \sig_cntrs_ary_reg[4][0]_i_2_n_5\,
      O(1) => \sig_cntrs_ary_reg[4][0]_i_2_n_6\,
      O(0) => \sig_cntrs_ary_reg[4][0]_i_2_n_7\,
      S(3 downto 1) => \sig_cntrs_ary_reg[4]_4\(3 downto 1),
      S(0) => \sig_cntrs_ary[4][0]_i_3_n_0\
    );
\sig_cntrs_ary_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][8]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[4]_4\(10),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][8]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[4]_4\(11),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][12]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[4]_4\(12),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[4][8]_i_1_n_0\,
      CO(3) => \NLW_sig_cntrs_ary_reg[4][12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_cntrs_ary_reg[4][12]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[4][12]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[4][12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[4][12]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[4][12]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[4][12]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[4][12]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[4]_4\(15 downto 12)
    );
\sig_cntrs_ary_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][12]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[4]_4\(13),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][12]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[4]_4\(14),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][12]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[4]_4\(15),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][0]_i_2_n_6\,
      Q => \sig_cntrs_ary_reg[4]_4\(1),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][0]_i_2_n_5\,
      Q => \sig_cntrs_ary_reg[4]_4\(2),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][0]_i_2_n_4\,
      Q => \sig_cntrs_ary_reg[4]_4\(3),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][4]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[4]_4\(4),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[4][0]_i_2_n_0\,
      CO(3) => \sig_cntrs_ary_reg[4][4]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[4][4]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[4][4]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[4][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[4][4]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[4][4]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[4][4]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[4][4]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[4]_4\(7 downto 4)
    );
\sig_cntrs_ary_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][4]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[4]_4\(5),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][4]_i_1_n_5\,
      Q => \sig_cntrs_ary_reg[4]_4\(6),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][4]_i_1_n_4\,
      Q => \sig_cntrs_ary_reg[4]_4\(7),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][8]_i_1_n_7\,
      Q => \sig_cntrs_ary_reg[4]_4\(8),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_cntrs_ary_reg[4][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_cntrs_ary_reg[4][4]_i_1_n_0\,
      CO(3) => \sig_cntrs_ary_reg[4][8]_i_1_n_0\,
      CO(2) => \sig_cntrs_ary_reg[4][8]_i_1_n_1\,
      CO(1) => \sig_cntrs_ary_reg[4][8]_i_1_n_2\,
      CO(0) => \sig_cntrs_ary_reg[4][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_cntrs_ary_reg[4][8]_i_1_n_4\,
      O(2) => \sig_cntrs_ary_reg[4][8]_i_1_n_5\,
      O(1) => \sig_cntrs_ary_reg[4][8]_i_1_n_6\,
      O(0) => \sig_cntrs_ary_reg[4][8]_i_1_n_7\,
      S(3 downto 0) => \sig_cntrs_ary_reg[4]_4\(11 downto 8)
    );
\sig_cntrs_ary_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_cntrs_ary_reg[4][8]_i_1_n_6\,
      Q => \sig_cntrs_ary_reg[4]_4\(9),
      R => \sig_cntrs_ary[4][0]_i_1_n_0\
    );
\sig_out_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_out_reg[0]_i_2_n_0\,
      I1 => \^btndebnc\(0),
      O => \sig_out_reg[0]_i_1_n_0\
    );
\sig_out_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sig_out_reg[0]_i_3_n_0\,
      I1 => \sig_cntrs_ary_reg[0]_0\(13),
      I2 => \sig_cntrs_ary_reg[0]_0\(12),
      I3 => \sig_cntrs_ary_reg[0]_0\(14),
      I4 => \sig_cntrs_ary_reg[0]_0\(15),
      I5 => \sig_out_reg[0]_i_4_n_0\,
      O => \sig_out_reg[0]_i_2_n_0\
    );
\sig_out_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[0]_0\(9),
      I1 => \sig_cntrs_ary_reg[0]_0\(8),
      I2 => \sig_cntrs_ary_reg[0]_0\(11),
      I3 => \sig_cntrs_ary_reg[0]_0\(10),
      O => \sig_out_reg[0]_i_3_n_0\
    );
\sig_out_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[0]_0\(2),
      I1 => \sig_cntrs_ary_reg[0]_0\(3),
      I2 => \sig_cntrs_ary_reg[0]_0\(0),
      I3 => \sig_cntrs_ary_reg[0]_0\(1),
      I4 => \sig_out_reg[0]_i_5_n_0\,
      O => \sig_out_reg[0]_i_4_n_0\
    );
\sig_out_reg[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[0]_0\(5),
      I1 => \sig_cntrs_ary_reg[0]_0\(4),
      I2 => \sig_cntrs_ary_reg[0]_0\(7),
      I3 => \sig_cntrs_ary_reg[0]_0\(6),
      O => \sig_out_reg[0]_i_5_n_0\
    );
\sig_out_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_out_reg[1]_i_2_n_0\,
      I1 => \^btndebnc\(1),
      O => \sig_out_reg[1]_i_1_n_0\
    );
\sig_out_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sig_out_reg[1]_i_3_n_0\,
      I1 => \sig_cntrs_ary_reg[1]_1\(13),
      I2 => \sig_cntrs_ary_reg[1]_1\(12),
      I3 => \sig_cntrs_ary_reg[1]_1\(14),
      I4 => \sig_cntrs_ary_reg[1]_1\(15),
      I5 => \sig_out_reg[1]_i_4_n_0\,
      O => \sig_out_reg[1]_i_2_n_0\
    );
\sig_out_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[1]_1\(9),
      I1 => \sig_cntrs_ary_reg[1]_1\(8),
      I2 => \sig_cntrs_ary_reg[1]_1\(11),
      I3 => \sig_cntrs_ary_reg[1]_1\(10),
      O => \sig_out_reg[1]_i_3_n_0\
    );
\sig_out_reg[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[1]_1\(2),
      I1 => \sig_cntrs_ary_reg[1]_1\(3),
      I2 => \sig_cntrs_ary_reg[1]_1\(0),
      I3 => \sig_cntrs_ary_reg[1]_1\(1),
      I4 => \sig_out_reg[1]_i_5_n_0\,
      O => \sig_out_reg[1]_i_4_n_0\
    );
\sig_out_reg[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[1]_1\(5),
      I1 => \sig_cntrs_ary_reg[1]_1\(4),
      I2 => \sig_cntrs_ary_reg[1]_1\(7),
      I3 => \sig_cntrs_ary_reg[1]_1\(6),
      O => \sig_out_reg[1]_i_5_n_0\
    );
\sig_out_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_out_reg[2]_i_2_n_0\,
      I1 => \^btndebnc\(2),
      O => \sig_out_reg[2]_i_1_n_0\
    );
\sig_out_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sig_out_reg[2]_i_3_n_0\,
      I1 => \sig_cntrs_ary_reg[2]_2\(13),
      I2 => \sig_cntrs_ary_reg[2]_2\(12),
      I3 => \sig_cntrs_ary_reg[2]_2\(14),
      I4 => \sig_cntrs_ary_reg[2]_2\(15),
      I5 => \sig_out_reg[2]_i_4_n_0\,
      O => \sig_out_reg[2]_i_2_n_0\
    );
\sig_out_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[2]_2\(9),
      I1 => \sig_cntrs_ary_reg[2]_2\(8),
      I2 => \sig_cntrs_ary_reg[2]_2\(11),
      I3 => \sig_cntrs_ary_reg[2]_2\(10),
      O => \sig_out_reg[2]_i_3_n_0\
    );
\sig_out_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[2]_2\(2),
      I1 => \sig_cntrs_ary_reg[2]_2\(3),
      I2 => \sig_cntrs_ary_reg[2]_2\(0),
      I3 => \sig_cntrs_ary_reg[2]_2\(1),
      I4 => \sig_out_reg[2]_i_5_n_0\,
      O => \sig_out_reg[2]_i_4_n_0\
    );
\sig_out_reg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[2]_2\(5),
      I1 => \sig_cntrs_ary_reg[2]_2\(4),
      I2 => \sig_cntrs_ary_reg[2]_2\(7),
      I3 => \sig_cntrs_ary_reg[2]_2\(6),
      O => \sig_out_reg[2]_i_5_n_0\
    );
\sig_out_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_out_reg[3]_i_2_n_0\,
      I1 => \^btndebnc\(3),
      O => \sig_out_reg[3]_i_1_n_0\
    );
\sig_out_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sig_out_reg[3]_i_3_n_0\,
      I1 => \sig_cntrs_ary_reg[3]_3\(13),
      I2 => \sig_cntrs_ary_reg[3]_3\(12),
      I3 => \sig_cntrs_ary_reg[3]_3\(14),
      I4 => \sig_cntrs_ary_reg[3]_3\(15),
      I5 => \sig_out_reg[3]_i_4_n_0\,
      O => \sig_out_reg[3]_i_2_n_0\
    );
\sig_out_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[3]_3\(9),
      I1 => \sig_cntrs_ary_reg[3]_3\(8),
      I2 => \sig_cntrs_ary_reg[3]_3\(11),
      I3 => \sig_cntrs_ary_reg[3]_3\(10),
      O => \sig_out_reg[3]_i_3_n_0\
    );
\sig_out_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[3]_3\(2),
      I1 => \sig_cntrs_ary_reg[3]_3\(3),
      I2 => \sig_cntrs_ary_reg[3]_3\(0),
      I3 => \sig_cntrs_ary_reg[3]_3\(1),
      I4 => \sig_out_reg[3]_i_5_n_0\,
      O => \sig_out_reg[3]_i_4_n_0\
    );
\sig_out_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[3]_3\(5),
      I1 => \sig_cntrs_ary_reg[3]_3\(4),
      I2 => \sig_cntrs_ary_reg[3]_3\(7),
      I3 => \sig_cntrs_ary_reg[3]_3\(6),
      O => \sig_out_reg[3]_i_5_n_0\
    );
\sig_out_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => eqOp,
      I1 => \^btndebnc\(4),
      O => \sig_out_reg[4]_i_1_n_0\
    );
\sig_out_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sig_out_reg[4]_i_3_n_0\,
      I1 => \sig_cntrs_ary_reg[4]_4\(13),
      I2 => \sig_cntrs_ary_reg[4]_4\(12),
      I3 => \sig_cntrs_ary_reg[4]_4\(14),
      I4 => \sig_cntrs_ary_reg[4]_4\(15),
      I5 => \sig_out_reg[4]_i_4_n_0\,
      O => eqOp
    );
\sig_out_reg[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[4]_4\(9),
      I1 => \sig_cntrs_ary_reg[4]_4\(8),
      I2 => \sig_cntrs_ary_reg[4]_4\(11),
      I3 => \sig_cntrs_ary_reg[4]_4\(10),
      O => \sig_out_reg[4]_i_3_n_0\
    );
\sig_out_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[4]_4\(2),
      I1 => \sig_cntrs_ary_reg[4]_4\(3),
      I2 => \sig_cntrs_ary_reg[4]_4\(0),
      I3 => \sig_cntrs_ary_reg[4]_4\(1),
      I4 => \sig_out_reg[4]_i_5_n_0\,
      O => \sig_out_reg[4]_i_4_n_0\
    );
\sig_out_reg[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \sig_cntrs_ary_reg[4]_4\(5),
      I1 => \sig_cntrs_ary_reg[4]_4\(4),
      I2 => \sig_cntrs_ary_reg[4]_4\(7),
      I3 => \sig_cntrs_ary_reg[4]_4\(6),
      O => \sig_out_reg[4]_i_5_n_0\
    );
\sig_out_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_out_reg[0]_i_1_n_0\,
      Q => \^btndebnc\(0),
      R => '0'
    );
\sig_out_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_out_reg[1]_i_1_n_0\,
      Q => \^btndebnc\(1),
      R => '0'
    );
\sig_out_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_out_reg[2]_i_1_n_0\,
      Q => \^btndebnc\(2),
      R => '0'
    );
\sig_out_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_out_reg[3]_i_1_n_0\,
      Q => \^btndebnc\(3),
      R => '0'
    );
\sig_out_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sig_out_reg[4]_i_1_n_0\,
      Q => \^btndebnc\(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_GPIO_demo_0_0_GPIO_demo is
  port (
    UART_TXD : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    micClk : out STD_LOGIC;
    SSEG_CA : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SSEG_AN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ampPWM : out STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    micData : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_GPIO_demo_0_0_GPIO_demo : entity is "GPIO_demo";
end design_1_GPIO_demo_0_0_GPIO_demo;

architecture STRUCTURE of design_1_GPIO_demo_0_0_GPIO_demo is
  signal Inst_UART_TX_CTRL_n_1 : STD_LOGIC;
  signal Inst_UART_TX_CTRL_n_2 : STD_LOGIC;
  signal Inst_UART_TX_CTRL_n_3 : STD_LOGIC;
  signal Inst_btn_debounce_n_5 : STD_LOGIC;
  signal \^amppwm\ : STD_LOGIC;
  signal btnDeBnc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal btnReg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_cntr_reg_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal eqOp2_in : STD_LOGIC;
  signal \eqOp__25\ : STD_LOGIC;
  signal \^micclk\ : STD_LOGIC;
  signal \myCounter[0]_i_2_n_0\ : STD_LOGIC;
  signal myCounter_reg : STD_LOGIC_VECTOR ( 43 downto 28 );
  signal \myCounter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \myCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[10]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[11]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[12]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[13]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[14]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[15]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[16]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[17]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[18]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[19]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[20]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[21]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[22]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[23]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[24]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[25]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[26]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[27]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[8]\ : STD_LOGIC;
  signal \myCounter_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pwm_val_reg_i_1_n_0 : STD_LOGIC;
  signal pwm_val_reg_i_2_n_0 : STD_LOGIC;
  signal reset_cntr0 : STD_LOGIC;
  signal \reset_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_6_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_7_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_8_n_0\ : STD_LOGIC;
  signal reset_cntr_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \reset_cntr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \reset_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sendStr[0]_5\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sendStr[14][0]_i_1_n_0\ : STD_LOGIC;
  signal \sendStr[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \sendStr[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \sendStr_reg[14]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sendStr_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sendStr_reg[4]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \strEnd[3]_i_1_n_0\ : STD_LOGIC;
  signal \strEnd_reg_n_0_[3]\ : STD_LOGIC;
  signal strIndex : STD_LOGIC;
  signal strIndex0 : STD_LOGIC;
  signal \strIndex[0]_i_3_n_0\ : STD_LOGIC;
  signal strIndex_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \strIndex_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal tmrCntr0 : STD_LOGIC;
  signal \tmrCntr[0]_i_3_n_0\ : STD_LOGIC;
  signal tmrCntr_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \tmrCntr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tmrCntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \tmrVal[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmrVal[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_5_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_6_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_7_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_8_n_0\ : STD_LOGIC;
  signal \tmrVal[3]_i_9_n_0\ : STD_LOGIC;
  signal tmrVal_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal uartData : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \uartData[0]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_3_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_4_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_3_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_4_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[4]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[6]_i_3_n_0\ : STD_LOGIC;
  signal \uartData_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \uartData_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal uartSend : STD_LOGIC;
  signal uartState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \uartState1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \uartState1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \uartState1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \uartState1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \uartState1_carry__0_n_0\ : STD_LOGIC;
  signal \uartState1_carry__0_n_1\ : STD_LOGIC;
  signal \uartState1_carry__0_n_2\ : STD_LOGIC;
  signal \uartState1_carry__0_n_3\ : STD_LOGIC;
  signal \uartState1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \uartState1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \uartState1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \uartState1_carry__1_n_1\ : STD_LOGIC;
  signal \uartState1_carry__1_n_2\ : STD_LOGIC;
  signal \uartState1_carry__1_n_3\ : STD_LOGIC;
  signal uartState1_carry_i_1_n_0 : STD_LOGIC;
  signal uartState1_carry_i_2_n_0 : STD_LOGIC;
  signal uartState1_carry_i_3_n_0 : STD_LOGIC;
  signal uartState1_carry_i_4_n_0 : STD_LOGIC;
  signal uartState1_carry_n_0 : STD_LOGIC;
  signal uartState1_carry_n_1 : STD_LOGIC;
  signal uartState1_carry_n_2 : STD_LOGIC;
  signal uartState1_carry_n_3 : STD_LOGIC;
  signal \NLW_myCounter_reg[40]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_strIndex_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmrCntr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmrCntr_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_uartState1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uartState1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uartState1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uartState1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_uartState_reg[0]\ : label is "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_uartState_reg[1]\ : label is "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_uartState_reg[2]\ : label is "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LED[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \LED[10]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \LED[11]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \LED[12]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \LED[13]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \LED[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \LED[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \LED[1]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \LED[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \LED[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \LED[4]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \LED[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \LED[6]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \LED[7]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \LED[8]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \LED[9]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \SSEG_CA[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \SSEG_CA[1]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SSEG_CA[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SSEG_CA[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SSEG_CA[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SSEG_CA[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SSEG_CA[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_cntr_reg[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \clk_cntr_reg[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \clk_cntr_reg[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_cntr_reg[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_cntr_reg[4]_i_1\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \myCounter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \myCounter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of pwm_val_reg_i_2 : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD of \reset_cntr_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \reset_cntr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \reset_cntr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \reset_cntr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \reset_cntr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \sendStr[14][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sendStr[2][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sendStr[4][1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \strEnd[3]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \strIndex_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \strIndex_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tmrCntr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \tmrVal[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tmrVal[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tmrVal[3]_i_3\ : label is "soft_lutpair10";
begin
  ampPWM <= \^amppwm\;
  micClk <= \^micclk\;
\FSM_sequential_uartState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Inst_UART_TX_CTRL_n_3,
      Q => uartState(0),
      R => '0'
    );
\FSM_sequential_uartState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Inst_UART_TX_CTRL_n_2,
      Q => uartState(1),
      R => '0'
    );
\FSM_sequential_uartState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Inst_UART_TX_CTRL_n_1,
      Q => uartState(2),
      R => '0'
    );
Inst_UART_TX_CTRL: entity work.design_1_GPIO_demo_0_0_UART_TX_CTRL
     port map (
      CLK => CLK,
      CO(0) => \uartState1_carry__1_n_1\,
      E(0) => uartSend,
      \FSM_sequential_uartState_reg[0]\ => Inst_UART_TX_CTRL_n_3,
      \FSM_sequential_uartState_reg[0]_0\ => Inst_btn_debounce_n_5,
      \FSM_sequential_uartState_reg[1]\ => Inst_UART_TX_CTRL_n_2,
      \FSM_sequential_uartState_reg[2]\ => Inst_UART_TX_CTRL_n_1,
      Q(6 downto 0) => uartData(6 downto 0),
      UART_TXD => UART_TXD,
      btnDeBnc(0) => btnDeBnc(4),
      \eqOp__25\ => \eqOp__25\,
      uartState(2 downto 0) => uartState(2 downto 0)
    );
Inst_btn_debounce: entity work.design_1_GPIO_demo_0_0_debouncer
     port map (
      BTN(4 downto 0) => BTN(4 downto 0),
      CLK => CLK,
      Q(3 downto 0) => btnReg(3 downto 0),
      SSEG_AN(3 downto 0) => SSEG_AN(3 downto 0),
      btnDeBnc(4 downto 0) => btnDeBnc(4 downto 0),
      \btnReg_reg[0]\ => Inst_btn_debounce_n_5,
      uartState(0) => uartState(1)
    );
\LED[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(28),
      I1 => BTN(4),
      I2 => SW(0),
      O => LED(0)
    );
\LED[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(38),
      I1 => BTN(4),
      I2 => SW(10),
      O => LED(10)
    );
\LED[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(39),
      I1 => BTN(4),
      I2 => SW(11),
      O => LED(11)
    );
\LED[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(40),
      I1 => BTN(4),
      I2 => SW(12),
      O => LED(12)
    );
\LED[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(41),
      I1 => BTN(4),
      I2 => SW(13),
      O => LED(13)
    );
\LED[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(42),
      I1 => BTN(4),
      I2 => SW(14),
      O => LED(14)
    );
\LED[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(43),
      I1 => BTN(4),
      I2 => SW(15),
      O => LED(15)
    );
\LED[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(29),
      I1 => BTN(4),
      I2 => SW(1),
      O => LED(1)
    );
\LED[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(30),
      I1 => BTN(4),
      I2 => SW(2),
      O => LED(2)
    );
\LED[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(31),
      I1 => BTN(4),
      I2 => SW(3),
      O => LED(3)
    );
\LED[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(32),
      I1 => BTN(4),
      I2 => SW(4),
      O => LED(4)
    );
\LED[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(33),
      I1 => BTN(4),
      I2 => SW(5),
      O => LED(5)
    );
\LED[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(34),
      I1 => BTN(4),
      I2 => SW(6),
      O => LED(6)
    );
\LED[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(35),
      I1 => BTN(4),
      I2 => SW(7),
      O => LED(7)
    );
\LED[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(36),
      I1 => BTN(4),
      I2 => SW(8),
      O => LED(8)
    );
\LED[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => myCounter_reg(37),
      I1 => BTN(4),
      I2 => SW(9),
      O => LED(9)
    );
RGB_Core: entity work.design_1_GPIO_demo_0_0_RGB_controller
     port map (
      CLK => CLK,
      RGB2_Blue => RGB2_Blue,
      RGB2_Green => RGB2_Green,
      RGB2_Red => RGB2_Red
    );
\SSEG_CA[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9C"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(2),
      I2 => tmrVal_reg(0),
      I3 => tmrVal_reg(1),
      O => SSEG_CA(0)
    );
\SSEG_CA[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACE8"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(2),
      I2 => tmrVal_reg(1),
      I3 => tmrVal_reg(0),
      O => SSEG_CA(1)
    );
\SSEG_CA[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(0),
      I2 => tmrVal_reg(1),
      I3 => tmrVal_reg(2),
      O => SSEG_CA(2)
    );
\SSEG_CA[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA9C"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(2),
      I2 => tmrVal_reg(0),
      I3 => tmrVal_reg(1),
      O => SSEG_CA(3)
    );
\SSEG_CA[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(1),
      I2 => tmrVal_reg(2),
      I3 => tmrVal_reg(0),
      O => SSEG_CA(4)
    );
\SSEG_CA[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9B8"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(2),
      I2 => tmrVal_reg(1),
      I3 => tmrVal_reg(0),
      O => SSEG_CA(5)
    );
\SSEG_CA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => tmrVal_reg(3),
      I1 => tmrVal_reg(0),
      I2 => tmrVal_reg(2),
      I3 => tmrVal_reg(1),
      O => SSEG_CA(6)
    );
\btnReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btnDeBnc(0),
      Q => btnReg(0),
      R => '0'
    );
\btnReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btnDeBnc(1),
      Q => btnReg(1),
      R => '0'
    );
\btnReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btnDeBnc(2),
      Q => btnReg(2),
      R => '0'
    );
\btnReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => btnDeBnc(3),
      Q => btnReg(3),
      R => '0'
    );
\clk_cntr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cntr_reg_reg(0),
      O => \plusOp__2\(0)
    );
\clk_cntr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_cntr_reg_reg(0),
      I1 => clk_cntr_reg_reg(1),
      O => \plusOp__2\(1)
    );
\clk_cntr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_cntr_reg_reg(0),
      I1 => clk_cntr_reg_reg(1),
      I2 => clk_cntr_reg_reg(2),
      O => \plusOp__2\(2)
    );
\clk_cntr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_cntr_reg_reg(1),
      I1 => clk_cntr_reg_reg(0),
      I2 => clk_cntr_reg_reg(2),
      I3 => clk_cntr_reg_reg(3),
      O => \plusOp__2\(3)
    );
\clk_cntr_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => clk_cntr_reg_reg(2),
      I1 => clk_cntr_reg_reg(0),
      I2 => clk_cntr_reg_reg(1),
      I3 => clk_cntr_reg_reg(3),
      I4 => \^micclk\,
      O => \plusOp__2\(4)
    );
\clk_cntr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__2\(0),
      Q => clk_cntr_reg_reg(0),
      R => '0'
    );
\clk_cntr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__2\(1),
      Q => clk_cntr_reg_reg(1),
      R => '0'
    );
\clk_cntr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__2\(2),
      Q => clk_cntr_reg_reg(2),
      R => '0'
    );
\clk_cntr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__2\(3),
      Q => clk_cntr_reg_reg(3),
      R => '0'
    );
\clk_cntr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \plusOp__2\(4),
      Q => \^micclk\,
      R => '0'
    );
\myCounter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \myCounter_reg_n_0_[0]\,
      O => \myCounter[0]_i_2_n_0\
    );
\myCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[0]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[0]\,
      R => '0'
    );
\myCounter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \myCounter_reg[0]_i_1_n_0\,
      CO(2) => \myCounter_reg[0]_i_1_n_1\,
      CO(1) => \myCounter_reg[0]_i_1_n_2\,
      CO(0) => \myCounter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \myCounter_reg[0]_i_1_n_4\,
      O(2) => \myCounter_reg[0]_i_1_n_5\,
      O(1) => \myCounter_reg[0]_i_1_n_6\,
      O(0) => \myCounter_reg[0]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[3]\,
      S(2) => \myCounter_reg_n_0_[2]\,
      S(1) => \myCounter_reg_n_0_[1]\,
      S(0) => \myCounter[0]_i_2_n_0\
    );
\myCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[8]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[10]\,
      R => '0'
    );
\myCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[8]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[11]\,
      R => '0'
    );
\myCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[12]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[12]\,
      R => '0'
    );
\myCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[8]_i_1_n_0\,
      CO(3) => \myCounter_reg[12]_i_1_n_0\,
      CO(2) => \myCounter_reg[12]_i_1_n_1\,
      CO(1) => \myCounter_reg[12]_i_1_n_2\,
      CO(0) => \myCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[12]_i_1_n_4\,
      O(2) => \myCounter_reg[12]_i_1_n_5\,
      O(1) => \myCounter_reg[12]_i_1_n_6\,
      O(0) => \myCounter_reg[12]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[15]\,
      S(2) => \myCounter_reg_n_0_[14]\,
      S(1) => \myCounter_reg_n_0_[13]\,
      S(0) => \myCounter_reg_n_0_[12]\
    );
\myCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[12]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[13]\,
      R => '0'
    );
\myCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[12]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[14]\,
      R => '0'
    );
\myCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[12]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[15]\,
      R => '0'
    );
\myCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[16]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[16]\,
      R => '0'
    );
\myCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[12]_i_1_n_0\,
      CO(3) => \myCounter_reg[16]_i_1_n_0\,
      CO(2) => \myCounter_reg[16]_i_1_n_1\,
      CO(1) => \myCounter_reg[16]_i_1_n_2\,
      CO(0) => \myCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[16]_i_1_n_4\,
      O(2) => \myCounter_reg[16]_i_1_n_5\,
      O(1) => \myCounter_reg[16]_i_1_n_6\,
      O(0) => \myCounter_reg[16]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[19]\,
      S(2) => \myCounter_reg_n_0_[18]\,
      S(1) => \myCounter_reg_n_0_[17]\,
      S(0) => \myCounter_reg_n_0_[16]\
    );
\myCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[16]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[17]\,
      R => '0'
    );
\myCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[16]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[18]\,
      R => '0'
    );
\myCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[16]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[19]\,
      R => '0'
    );
\myCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[0]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[1]\,
      R => '0'
    );
\myCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[20]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[20]\,
      R => '0'
    );
\myCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[16]_i_1_n_0\,
      CO(3) => \myCounter_reg[20]_i_1_n_0\,
      CO(2) => \myCounter_reg[20]_i_1_n_1\,
      CO(1) => \myCounter_reg[20]_i_1_n_2\,
      CO(0) => \myCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[20]_i_1_n_4\,
      O(2) => \myCounter_reg[20]_i_1_n_5\,
      O(1) => \myCounter_reg[20]_i_1_n_6\,
      O(0) => \myCounter_reg[20]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[23]\,
      S(2) => \myCounter_reg_n_0_[22]\,
      S(1) => \myCounter_reg_n_0_[21]\,
      S(0) => \myCounter_reg_n_0_[20]\
    );
\myCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[20]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[21]\,
      R => '0'
    );
\myCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[20]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[22]\,
      R => '0'
    );
\myCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[20]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[23]\,
      R => '0'
    );
\myCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[24]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[24]\,
      R => '0'
    );
\myCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[20]_i_1_n_0\,
      CO(3) => \myCounter_reg[24]_i_1_n_0\,
      CO(2) => \myCounter_reg[24]_i_1_n_1\,
      CO(1) => \myCounter_reg[24]_i_1_n_2\,
      CO(0) => \myCounter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[24]_i_1_n_4\,
      O(2) => \myCounter_reg[24]_i_1_n_5\,
      O(1) => \myCounter_reg[24]_i_1_n_6\,
      O(0) => \myCounter_reg[24]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[27]\,
      S(2) => \myCounter_reg_n_0_[26]\,
      S(1) => \myCounter_reg_n_0_[25]\,
      S(0) => \myCounter_reg_n_0_[24]\
    );
\myCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[24]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[25]\,
      R => '0'
    );
\myCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[24]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[26]\,
      R => '0'
    );
\myCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[24]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[27]\,
      R => '0'
    );
\myCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[28]_i_1_n_7\,
      Q => myCounter_reg(28),
      R => '0'
    );
\myCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[24]_i_1_n_0\,
      CO(3) => \myCounter_reg[28]_i_1_n_0\,
      CO(2) => \myCounter_reg[28]_i_1_n_1\,
      CO(1) => \myCounter_reg[28]_i_1_n_2\,
      CO(0) => \myCounter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[28]_i_1_n_4\,
      O(2) => \myCounter_reg[28]_i_1_n_5\,
      O(1) => \myCounter_reg[28]_i_1_n_6\,
      O(0) => \myCounter_reg[28]_i_1_n_7\,
      S(3 downto 0) => myCounter_reg(31 downto 28)
    );
\myCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[28]_i_1_n_6\,
      Q => myCounter_reg(29),
      R => '0'
    );
\myCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[0]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[2]\,
      R => '0'
    );
\myCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[28]_i_1_n_5\,
      Q => myCounter_reg(30),
      R => '0'
    );
\myCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[28]_i_1_n_4\,
      Q => myCounter_reg(31),
      R => '0'
    );
\myCounter_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[32]_i_1_n_7\,
      Q => myCounter_reg(32),
      R => '0'
    );
\myCounter_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[28]_i_1_n_0\,
      CO(3) => \myCounter_reg[32]_i_1_n_0\,
      CO(2) => \myCounter_reg[32]_i_1_n_1\,
      CO(1) => \myCounter_reg[32]_i_1_n_2\,
      CO(0) => \myCounter_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[32]_i_1_n_4\,
      O(2) => \myCounter_reg[32]_i_1_n_5\,
      O(1) => \myCounter_reg[32]_i_1_n_6\,
      O(0) => \myCounter_reg[32]_i_1_n_7\,
      S(3 downto 0) => myCounter_reg(35 downto 32)
    );
\myCounter_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[32]_i_1_n_6\,
      Q => myCounter_reg(33),
      R => '0'
    );
\myCounter_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[32]_i_1_n_5\,
      Q => myCounter_reg(34),
      R => '0'
    );
\myCounter_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[32]_i_1_n_4\,
      Q => myCounter_reg(35),
      R => '0'
    );
\myCounter_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[36]_i_1_n_7\,
      Q => myCounter_reg(36),
      R => '0'
    );
\myCounter_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[32]_i_1_n_0\,
      CO(3) => \myCounter_reg[36]_i_1_n_0\,
      CO(2) => \myCounter_reg[36]_i_1_n_1\,
      CO(1) => \myCounter_reg[36]_i_1_n_2\,
      CO(0) => \myCounter_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[36]_i_1_n_4\,
      O(2) => \myCounter_reg[36]_i_1_n_5\,
      O(1) => \myCounter_reg[36]_i_1_n_6\,
      O(0) => \myCounter_reg[36]_i_1_n_7\,
      S(3 downto 0) => myCounter_reg(39 downto 36)
    );
\myCounter_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[36]_i_1_n_6\,
      Q => myCounter_reg(37),
      R => '0'
    );
\myCounter_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[36]_i_1_n_5\,
      Q => myCounter_reg(38),
      R => '0'
    );
\myCounter_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[36]_i_1_n_4\,
      Q => myCounter_reg(39),
      R => '0'
    );
\myCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[0]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[3]\,
      R => '0'
    );
\myCounter_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[40]_i_1_n_7\,
      Q => myCounter_reg(40),
      R => '0'
    );
\myCounter_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[36]_i_1_n_0\,
      CO(3) => \NLW_myCounter_reg[40]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \myCounter_reg[40]_i_1_n_1\,
      CO(1) => \myCounter_reg[40]_i_1_n_2\,
      CO(0) => \myCounter_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[40]_i_1_n_4\,
      O(2) => \myCounter_reg[40]_i_1_n_5\,
      O(1) => \myCounter_reg[40]_i_1_n_6\,
      O(0) => \myCounter_reg[40]_i_1_n_7\,
      S(3 downto 0) => myCounter_reg(43 downto 40)
    );
\myCounter_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[40]_i_1_n_6\,
      Q => myCounter_reg(41),
      R => '0'
    );
\myCounter_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[40]_i_1_n_5\,
      Q => myCounter_reg(42),
      R => '0'
    );
\myCounter_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[40]_i_1_n_4\,
      Q => myCounter_reg(43),
      R => '0'
    );
\myCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[4]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[4]\,
      R => '0'
    );
\myCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[0]_i_1_n_0\,
      CO(3) => \myCounter_reg[4]_i_1_n_0\,
      CO(2) => \myCounter_reg[4]_i_1_n_1\,
      CO(1) => \myCounter_reg[4]_i_1_n_2\,
      CO(0) => \myCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[4]_i_1_n_4\,
      O(2) => \myCounter_reg[4]_i_1_n_5\,
      O(1) => \myCounter_reg[4]_i_1_n_6\,
      O(0) => \myCounter_reg[4]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[7]\,
      S(2) => \myCounter_reg_n_0_[6]\,
      S(1) => \myCounter_reg_n_0_[5]\,
      S(0) => \myCounter_reg_n_0_[4]\
    );
\myCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[4]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[5]\,
      R => '0'
    );
\myCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[4]_i_1_n_5\,
      Q => \myCounter_reg_n_0_[6]\,
      R => '0'
    );
\myCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[4]_i_1_n_4\,
      Q => \myCounter_reg_n_0_[7]\,
      R => '0'
    );
\myCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[8]_i_1_n_7\,
      Q => \myCounter_reg_n_0_[8]\,
      R => '0'
    );
\myCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \myCounter_reg[4]_i_1_n_0\,
      CO(3) => \myCounter_reg[8]_i_1_n_0\,
      CO(2) => \myCounter_reg[8]_i_1_n_1\,
      CO(1) => \myCounter_reg[8]_i_1_n_2\,
      CO(0) => \myCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \myCounter_reg[8]_i_1_n_4\,
      O(2) => \myCounter_reg[8]_i_1_n_5\,
      O(1) => \myCounter_reg[8]_i_1_n_6\,
      O(0) => \myCounter_reg[8]_i_1_n_7\,
      S(3) => \myCounter_reg_n_0_[11]\,
      S(2) => \myCounter_reg_n_0_[10]\,
      S(1) => \myCounter_reg_n_0_[9]\,
      S(0) => \myCounter_reg_n_0_[8]\
    );
\myCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \myCounter_reg[8]_i_1_n_6\,
      Q => \myCounter_reg_n_0_[9]\,
      R => '0'
    );
pwm_val_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => micData,
      I1 => \^micclk\,
      I2 => clk_cntr_reg_reg(3),
      I3 => pwm_val_reg_i_2_n_0,
      I4 => \^amppwm\,
      O => pwm_val_reg_i_1_n_0
    );
pwm_val_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => clk_cntr_reg_reg(2),
      I1 => clk_cntr_reg_reg(0),
      I2 => clk_cntr_reg_reg(1),
      O => pwm_val_reg_i_2_n_0
    );
pwm_val_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => pwm_val_reg_i_1_n_0,
      Q => \^amppwm\,
      R => '0'
    );
\reset_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \eqOp__25\,
      I1 => uartState(0),
      I2 => uartState(2),
      I3 => uartState(1),
      O => reset_cntr0
    );
\reset_cntr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \reset_cntr[0]_i_5_n_0\,
      I1 => \reset_cntr[0]_i_6_n_0\,
      I2 => \reset_cntr[0]_i_7_n_0\,
      I3 => \reset_cntr[0]_i_8_n_0\,
      O => \eqOp__25\
    );
\reset_cntr[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_cntr_reg(0),
      O => \reset_cntr[0]_i_4_n_0\
    );
\reset_cntr[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset_cntr_reg(5),
      I1 => reset_cntr_reg(3),
      I2 => reset_cntr_reg(4),
      I3 => reset_cntr_reg(9),
      I4 => reset_cntr_reg(7),
      O => \reset_cntr[0]_i_5_n_0\
    );
\reset_cntr[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reset_cntr_reg(15),
      I1 => reset_cntr_reg(14),
      I2 => reset_cntr_reg(13),
      I3 => reset_cntr_reg(12),
      O => \reset_cntr[0]_i_6_n_0\
    );
\reset_cntr[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => reset_cntr_reg(2),
      I1 => reset_cntr_reg(1),
      I2 => reset_cntr_reg(16),
      I3 => reset_cntr_reg(0),
      O => \reset_cntr[0]_i_7_n_0\
    );
\reset_cntr[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => reset_cntr_reg(6),
      I1 => reset_cntr_reg(8),
      I2 => reset_cntr_reg(10),
      I3 => reset_cntr_reg(17),
      I4 => reset_cntr_reg(11),
      O => \reset_cntr[0]_i_8_n_0\
    );
\reset_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_7\,
      Q => reset_cntr_reg(0),
      R => reset_cntr0
    );
\reset_cntr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reset_cntr_reg[0]_i_2_n_0\,
      CO(2) => \reset_cntr_reg[0]_i_2_n_1\,
      CO(1) => \reset_cntr_reg[0]_i_2_n_2\,
      CO(0) => \reset_cntr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \reset_cntr_reg[0]_i_2_n_4\,
      O(2) => \reset_cntr_reg[0]_i_2_n_5\,
      O(1) => \reset_cntr_reg[0]_i_2_n_6\,
      O(0) => \reset_cntr_reg[0]_i_2_n_7\,
      S(3 downto 1) => reset_cntr_reg(3 downto 1),
      S(0) => \reset_cntr[0]_i_4_n_0\
    );
\reset_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_5\,
      Q => reset_cntr_reg(10),
      R => reset_cntr0
    );
\reset_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_4\,
      Q => reset_cntr_reg(11),
      R => reset_cntr0
    );
\reset_cntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_7\,
      Q => reset_cntr_reg(12),
      R => reset_cntr0
    );
\reset_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[8]_i_1_n_0\,
      CO(3) => \reset_cntr_reg[12]_i_1_n_0\,
      CO(2) => \reset_cntr_reg[12]_i_1_n_1\,
      CO(1) => \reset_cntr_reg[12]_i_1_n_2\,
      CO(0) => \reset_cntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \reset_cntr_reg[12]_i_1_n_4\,
      O(2) => \reset_cntr_reg[12]_i_1_n_5\,
      O(1) => \reset_cntr_reg[12]_i_1_n_6\,
      O(0) => \reset_cntr_reg[12]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(15 downto 12)
    );
\reset_cntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_6\,
      Q => reset_cntr_reg(13),
      R => reset_cntr0
    );
\reset_cntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_5\,
      Q => reset_cntr_reg(14),
      R => reset_cntr0
    );
\reset_cntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_4\,
      Q => reset_cntr_reg(15),
      R => reset_cntr0
    );
\reset_cntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[16]_i_1_n_7\,
      Q => reset_cntr_reg(16),
      R => reset_cntr0
    );
\reset_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \reset_cntr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \reset_cntr_reg[16]_i_1_n_6\,
      O(0) => \reset_cntr_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => reset_cntr_reg(17 downto 16)
    );
\reset_cntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[16]_i_1_n_6\,
      Q => reset_cntr_reg(17),
      R => reset_cntr0
    );
\reset_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_6\,
      Q => reset_cntr_reg(1),
      R => reset_cntr0
    );
\reset_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_5\,
      Q => reset_cntr_reg(2),
      R => reset_cntr0
    );
\reset_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_4\,
      Q => reset_cntr_reg(3),
      R => reset_cntr0
    );
\reset_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_7\,
      Q => reset_cntr_reg(4),
      R => reset_cntr0
    );
\reset_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[0]_i_2_n_0\,
      CO(3) => \reset_cntr_reg[4]_i_1_n_0\,
      CO(2) => \reset_cntr_reg[4]_i_1_n_1\,
      CO(1) => \reset_cntr_reg[4]_i_1_n_2\,
      CO(0) => \reset_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \reset_cntr_reg[4]_i_1_n_4\,
      O(2) => \reset_cntr_reg[4]_i_1_n_5\,
      O(1) => \reset_cntr_reg[4]_i_1_n_6\,
      O(0) => \reset_cntr_reg[4]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(7 downto 4)
    );
\reset_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_6\,
      Q => reset_cntr_reg(5),
      R => reset_cntr0
    );
\reset_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_5\,
      Q => reset_cntr_reg(6),
      R => reset_cntr0
    );
\reset_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_4\,
      Q => reset_cntr_reg(7),
      R => reset_cntr0
    );
\reset_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_7\,
      Q => reset_cntr_reg(8),
      R => reset_cntr0
    );
\reset_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[4]_i_1_n_0\,
      CO(3) => \reset_cntr_reg[8]_i_1_n_0\,
      CO(2) => \reset_cntr_reg[8]_i_1_n_1\,
      CO(1) => \reset_cntr_reg[8]_i_1_n_2\,
      CO(0) => \reset_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \reset_cntr_reg[8]_i_1_n_4\,
      O(2) => \reset_cntr_reg[8]_i_1_n_5\,
      O(1) => \reset_cntr_reg[8]_i_1_n_6\,
      O(0) => \reset_cntr_reg[8]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(11 downto 8)
    );
\reset_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_6\,
      Q => reset_cntr_reg(9),
      R => reset_cntr0
    );
\sendStr[14][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE8A"
    )
        port map (
      I0 => \sendStr_reg[14]\(0),
      I1 => uartState(1),
      I2 => uartState(0),
      I3 => uartState(2),
      O => \sendStr[14][0]_i_1_n_0\
    );
\sendStr[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2BA"
    )
        port map (
      I0 => \sendStr_reg[2]\(0),
      I1 => uartState(1),
      I2 => uartState(0),
      I3 => uartState(2),
      O => \sendStr[2][0]_i_1_n_0\
    );
\sendStr[4][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE8A"
    )
        port map (
      I0 => \sendStr_reg[4]\(1),
      I1 => uartState(1),
      I2 => uartState(0),
      I3 => uartState(2),
      O => \sendStr[4][1]_i_1_n_0\
    );
\sendStr_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sendStr[14][0]_i_1_n_0\,
      Q => \sendStr_reg[14]\(0),
      R => '0'
    );
\sendStr_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sendStr[2][0]_i_1_n_0\,
      Q => \sendStr_reg[2]\(0),
      R => '0'
    );
\sendStr_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sendStr[4][1]_i_1_n_0\,
      Q => \sendStr_reg[4]\(1),
      R => '0'
    );
\strEnd[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE8A"
    )
        port map (
      I0 => \strEnd_reg_n_0_[3]\,
      I1 => uartState(1),
      I2 => uartState(0),
      I3 => uartState(2),
      O => \strEnd[3]_i_1_n_0\
    );
\strEnd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \strEnd[3]_i_1_n_0\,
      Q => \strEnd_reg_n_0_[3]\,
      R => '0'
    );
\strIndex[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => uartState(1),
      I1 => uartState(2),
      I2 => uartState(0),
      O => strIndex0
    );
\strIndex[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => strIndex_reg(0),
      O => \strIndex[0]_i_3_n_0\
    );
\strIndex_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[0]_i_2_n_7\,
      Q => strIndex_reg(0),
      R => strIndex0
    );
\strIndex_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \strIndex_reg[0]_i_2_n_0\,
      CO(2) => \strIndex_reg[0]_i_2_n_1\,
      CO(1) => \strIndex_reg[0]_i_2_n_2\,
      CO(0) => \strIndex_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \strIndex_reg[0]_i_2_n_4\,
      O(2) => \strIndex_reg[0]_i_2_n_5\,
      O(1) => \strIndex_reg[0]_i_2_n_6\,
      O(0) => \strIndex_reg[0]_i_2_n_7\,
      S(3 downto 1) => strIndex_reg(3 downto 1),
      S(0) => \strIndex[0]_i_3_n_0\
    );
\strIndex_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[8]_i_1_n_5\,
      Q => strIndex_reg(10),
      R => strIndex0
    );
\strIndex_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[8]_i_1_n_4\,
      Q => strIndex_reg(11),
      R => strIndex0
    );
\strIndex_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[12]_i_1_n_7\,
      Q => strIndex_reg(12),
      R => strIndex0
    );
\strIndex_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[8]_i_1_n_0\,
      CO(3) => \strIndex_reg[12]_i_1_n_0\,
      CO(2) => \strIndex_reg[12]_i_1_n_1\,
      CO(1) => \strIndex_reg[12]_i_1_n_2\,
      CO(0) => \strIndex_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[12]_i_1_n_4\,
      O(2) => \strIndex_reg[12]_i_1_n_5\,
      O(1) => \strIndex_reg[12]_i_1_n_6\,
      O(0) => \strIndex_reg[12]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(15 downto 12)
    );
\strIndex_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[12]_i_1_n_6\,
      Q => strIndex_reg(13),
      R => strIndex0
    );
\strIndex_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[12]_i_1_n_5\,
      Q => strIndex_reg(14),
      R => strIndex0
    );
\strIndex_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[12]_i_1_n_4\,
      Q => strIndex_reg(15),
      R => strIndex0
    );
\strIndex_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[16]_i_1_n_7\,
      Q => strIndex_reg(16),
      R => strIndex0
    );
\strIndex_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[12]_i_1_n_0\,
      CO(3) => \strIndex_reg[16]_i_1_n_0\,
      CO(2) => \strIndex_reg[16]_i_1_n_1\,
      CO(1) => \strIndex_reg[16]_i_1_n_2\,
      CO(0) => \strIndex_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[16]_i_1_n_4\,
      O(2) => \strIndex_reg[16]_i_1_n_5\,
      O(1) => \strIndex_reg[16]_i_1_n_6\,
      O(0) => \strIndex_reg[16]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(19 downto 16)
    );
\strIndex_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[16]_i_1_n_6\,
      Q => strIndex_reg(17),
      R => strIndex0
    );
\strIndex_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[16]_i_1_n_5\,
      Q => strIndex_reg(18),
      R => strIndex0
    );
\strIndex_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[16]_i_1_n_4\,
      Q => strIndex_reg(19),
      R => strIndex0
    );
\strIndex_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[0]_i_2_n_6\,
      Q => strIndex_reg(1),
      R => strIndex0
    );
\strIndex_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[20]_i_1_n_7\,
      Q => strIndex_reg(20),
      R => strIndex0
    );
\strIndex_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[16]_i_1_n_0\,
      CO(3) => \strIndex_reg[20]_i_1_n_0\,
      CO(2) => \strIndex_reg[20]_i_1_n_1\,
      CO(1) => \strIndex_reg[20]_i_1_n_2\,
      CO(0) => \strIndex_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[20]_i_1_n_4\,
      O(2) => \strIndex_reg[20]_i_1_n_5\,
      O(1) => \strIndex_reg[20]_i_1_n_6\,
      O(0) => \strIndex_reg[20]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(23 downto 20)
    );
\strIndex_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[20]_i_1_n_6\,
      Q => strIndex_reg(21),
      R => strIndex0
    );
\strIndex_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[20]_i_1_n_5\,
      Q => strIndex_reg(22),
      R => strIndex0
    );
\strIndex_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[20]_i_1_n_4\,
      Q => strIndex_reg(23),
      R => strIndex0
    );
\strIndex_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[24]_i_1_n_7\,
      Q => strIndex_reg(24),
      R => strIndex0
    );
\strIndex_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[20]_i_1_n_0\,
      CO(3) => \strIndex_reg[24]_i_1_n_0\,
      CO(2) => \strIndex_reg[24]_i_1_n_1\,
      CO(1) => \strIndex_reg[24]_i_1_n_2\,
      CO(0) => \strIndex_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[24]_i_1_n_4\,
      O(2) => \strIndex_reg[24]_i_1_n_5\,
      O(1) => \strIndex_reg[24]_i_1_n_6\,
      O(0) => \strIndex_reg[24]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(27 downto 24)
    );
\strIndex_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[24]_i_1_n_6\,
      Q => strIndex_reg(25),
      R => strIndex0
    );
\strIndex_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[24]_i_1_n_5\,
      Q => strIndex_reg(26),
      R => strIndex0
    );
\strIndex_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[24]_i_1_n_4\,
      Q => strIndex_reg(27),
      R => strIndex0
    );
\strIndex_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[28]_i_1_n_7\,
      Q => strIndex_reg(28),
      R => strIndex0
    );
\strIndex_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \strIndex_reg[28]_i_1_n_2\,
      CO(0) => \strIndex_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_strIndex_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \strIndex_reg[28]_i_1_n_5\,
      O(1) => \strIndex_reg[28]_i_1_n_6\,
      O(0) => \strIndex_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => strIndex_reg(30 downto 28)
    );
\strIndex_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[28]_i_1_n_6\,
      Q => strIndex_reg(29),
      R => strIndex0
    );
\strIndex_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[0]_i_2_n_5\,
      Q => strIndex_reg(2),
      R => strIndex0
    );
\strIndex_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[28]_i_1_n_5\,
      Q => strIndex_reg(30),
      R => strIndex0
    );
\strIndex_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[0]_i_2_n_4\,
      Q => strIndex_reg(3),
      R => strIndex0
    );
\strIndex_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[4]_i_1_n_7\,
      Q => strIndex_reg(4),
      R => strIndex0
    );
\strIndex_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[0]_i_2_n_0\,
      CO(3) => \strIndex_reg[4]_i_1_n_0\,
      CO(2) => \strIndex_reg[4]_i_1_n_1\,
      CO(1) => \strIndex_reg[4]_i_1_n_2\,
      CO(0) => \strIndex_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[4]_i_1_n_4\,
      O(2) => \strIndex_reg[4]_i_1_n_5\,
      O(1) => \strIndex_reg[4]_i_1_n_6\,
      O(0) => \strIndex_reg[4]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(7 downto 4)
    );
\strIndex_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[4]_i_1_n_6\,
      Q => strIndex_reg(5),
      R => strIndex0
    );
\strIndex_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[4]_i_1_n_5\,
      Q => strIndex_reg(6),
      R => strIndex0
    );
\strIndex_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[4]_i_1_n_4\,
      Q => strIndex_reg(7),
      R => strIndex0
    );
\strIndex_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[8]_i_1_n_7\,
      Q => strIndex_reg(8),
      R => strIndex0
    );
\strIndex_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[4]_i_1_n_0\,
      CO(3) => \strIndex_reg[8]_i_1_n_0\,
      CO(2) => \strIndex_reg[8]_i_1_n_1\,
      CO(1) => \strIndex_reg[8]_i_1_n_2\,
      CO(0) => \strIndex_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \strIndex_reg[8]_i_1_n_4\,
      O(2) => \strIndex_reg[8]_i_1_n_5\,
      O(1) => \strIndex_reg[8]_i_1_n_6\,
      O(0) => \strIndex_reg[8]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(11 downto 8)
    );
\strIndex_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => strIndex,
      D => \strIndex_reg[8]_i_1_n_6\,
      Q => strIndex_reg(9),
      R => strIndex0
    );
\tmrCntr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => eqOp2_in,
      I1 => BTN(4),
      O => tmrCntr0
    );
\tmrCntr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmrCntr_reg(0),
      O => \tmrCntr[0]_i_3_n_0\
    );
\tmrCntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[0]_i_2_n_7\,
      Q => tmrCntr_reg(0),
      R => tmrCntr0
    );
\tmrCntr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmrCntr_reg[0]_i_2_n_0\,
      CO(2) => \tmrCntr_reg[0]_i_2_n_1\,
      CO(1) => \tmrCntr_reg[0]_i_2_n_2\,
      CO(0) => \tmrCntr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \tmrCntr_reg[0]_i_2_n_4\,
      O(2) => \tmrCntr_reg[0]_i_2_n_5\,
      O(1) => \tmrCntr_reg[0]_i_2_n_6\,
      O(0) => \tmrCntr_reg[0]_i_2_n_7\,
      S(3 downto 1) => tmrCntr_reg(3 downto 1),
      S(0) => \tmrCntr[0]_i_3_n_0\
    );
\tmrCntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[8]_i_1_n_5\,
      Q => tmrCntr_reg(10),
      R => tmrCntr0
    );
\tmrCntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[8]_i_1_n_4\,
      Q => tmrCntr_reg(11),
      R => tmrCntr0
    );
\tmrCntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[12]_i_1_n_7\,
      Q => tmrCntr_reg(12),
      R => tmrCntr0
    );
\tmrCntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[8]_i_1_n_0\,
      CO(3) => \tmrCntr_reg[12]_i_1_n_0\,
      CO(2) => \tmrCntr_reg[12]_i_1_n_1\,
      CO(1) => \tmrCntr_reg[12]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmrCntr_reg[12]_i_1_n_4\,
      O(2) => \tmrCntr_reg[12]_i_1_n_5\,
      O(1) => \tmrCntr_reg[12]_i_1_n_6\,
      O(0) => \tmrCntr_reg[12]_i_1_n_7\,
      S(3 downto 0) => tmrCntr_reg(15 downto 12)
    );
\tmrCntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[12]_i_1_n_6\,
      Q => tmrCntr_reg(13),
      R => tmrCntr0
    );
\tmrCntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[12]_i_1_n_5\,
      Q => tmrCntr_reg(14),
      R => tmrCntr0
    );
\tmrCntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[12]_i_1_n_4\,
      Q => tmrCntr_reg(15),
      R => tmrCntr0
    );
\tmrCntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[16]_i_1_n_7\,
      Q => tmrCntr_reg(16),
      R => tmrCntr0
    );
\tmrCntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[12]_i_1_n_0\,
      CO(3) => \tmrCntr_reg[16]_i_1_n_0\,
      CO(2) => \tmrCntr_reg[16]_i_1_n_1\,
      CO(1) => \tmrCntr_reg[16]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmrCntr_reg[16]_i_1_n_4\,
      O(2) => \tmrCntr_reg[16]_i_1_n_5\,
      O(1) => \tmrCntr_reg[16]_i_1_n_6\,
      O(0) => \tmrCntr_reg[16]_i_1_n_7\,
      S(3 downto 0) => tmrCntr_reg(19 downto 16)
    );
\tmrCntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[16]_i_1_n_6\,
      Q => tmrCntr_reg(17),
      R => tmrCntr0
    );
\tmrCntr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[16]_i_1_n_5\,
      Q => tmrCntr_reg(18),
      R => tmrCntr0
    );
\tmrCntr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[16]_i_1_n_4\,
      Q => tmrCntr_reg(19),
      R => tmrCntr0
    );
\tmrCntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[0]_i_2_n_6\,
      Q => tmrCntr_reg(1),
      R => tmrCntr0
    );
\tmrCntr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[20]_i_1_n_7\,
      Q => tmrCntr_reg(20),
      R => tmrCntr0
    );
\tmrCntr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[16]_i_1_n_0\,
      CO(3) => \tmrCntr_reg[20]_i_1_n_0\,
      CO(2) => \tmrCntr_reg[20]_i_1_n_1\,
      CO(1) => \tmrCntr_reg[20]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmrCntr_reg[20]_i_1_n_4\,
      O(2) => \tmrCntr_reg[20]_i_1_n_5\,
      O(1) => \tmrCntr_reg[20]_i_1_n_6\,
      O(0) => \tmrCntr_reg[20]_i_1_n_7\,
      S(3 downto 0) => tmrCntr_reg(23 downto 20)
    );
\tmrCntr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[20]_i_1_n_6\,
      Q => tmrCntr_reg(21),
      R => tmrCntr0
    );
\tmrCntr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[20]_i_1_n_5\,
      Q => tmrCntr_reg(22),
      R => tmrCntr0
    );
\tmrCntr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[20]_i_1_n_4\,
      Q => tmrCntr_reg(23),
      R => tmrCntr0
    );
\tmrCntr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[24]_i_1_n_7\,
      Q => tmrCntr_reg(24),
      R => tmrCntr0
    );
\tmrCntr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_tmrCntr_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmrCntr_reg[24]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tmrCntr_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \tmrCntr_reg[24]_i_1_n_5\,
      O(1) => \tmrCntr_reg[24]_i_1_n_6\,
      O(0) => \tmrCntr_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => tmrCntr_reg(26 downto 24)
    );
\tmrCntr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[24]_i_1_n_6\,
      Q => tmrCntr_reg(25),
      R => tmrCntr0
    );
\tmrCntr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[24]_i_1_n_5\,
      Q => tmrCntr_reg(26),
      R => tmrCntr0
    );
\tmrCntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[0]_i_2_n_5\,
      Q => tmrCntr_reg(2),
      R => tmrCntr0
    );
\tmrCntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[0]_i_2_n_4\,
      Q => tmrCntr_reg(3),
      R => tmrCntr0
    );
\tmrCntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[4]_i_1_n_7\,
      Q => tmrCntr_reg(4),
      R => tmrCntr0
    );
\tmrCntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[0]_i_2_n_0\,
      CO(3) => \tmrCntr_reg[4]_i_1_n_0\,
      CO(2) => \tmrCntr_reg[4]_i_1_n_1\,
      CO(1) => \tmrCntr_reg[4]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmrCntr_reg[4]_i_1_n_4\,
      O(2) => \tmrCntr_reg[4]_i_1_n_5\,
      O(1) => \tmrCntr_reg[4]_i_1_n_6\,
      O(0) => \tmrCntr_reg[4]_i_1_n_7\,
      S(3 downto 0) => tmrCntr_reg(7 downto 4)
    );
\tmrCntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[4]_i_1_n_6\,
      Q => tmrCntr_reg(5),
      R => tmrCntr0
    );
\tmrCntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[4]_i_1_n_5\,
      Q => tmrCntr_reg(6),
      R => tmrCntr0
    );
\tmrCntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[4]_i_1_n_4\,
      Q => tmrCntr_reg(7),
      R => tmrCntr0
    );
\tmrCntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[8]_i_1_n_7\,
      Q => tmrCntr_reg(8),
      R => tmrCntr0
    );
\tmrCntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmrCntr_reg[4]_i_1_n_0\,
      CO(3) => \tmrCntr_reg[8]_i_1_n_0\,
      CO(2) => \tmrCntr_reg[8]_i_1_n_1\,
      CO(1) => \tmrCntr_reg[8]_i_1_n_2\,
      CO(0) => \tmrCntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tmrCntr_reg[8]_i_1_n_4\,
      O(2) => \tmrCntr_reg[8]_i_1_n_5\,
      O(1) => \tmrCntr_reg[8]_i_1_n_6\,
      O(0) => \tmrCntr_reg[8]_i_1_n_7\,
      S(3 downto 0) => tmrCntr_reg(11 downto 8)
    );
\tmrCntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tmrCntr_reg[8]_i_1_n_6\,
      Q => tmrCntr_reg(9),
      R => tmrCntr0
    );
\tmrVal[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmrVal_reg(0),
      O => \tmrVal[0]_i_1_n_0\
    );
\tmrVal[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmrVal_reg(0),
      I1 => tmrVal_reg(1),
      O => \tmrVal[1]_i_1_n_0\
    );
\tmrVal[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmrVal_reg(0),
      I1 => tmrVal_reg(1),
      I2 => tmrVal_reg(2),
      O => \plusOp__1\(2)
    );
\tmrVal[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => BTN(4),
      I1 => tmrVal_reg(1),
      I2 => tmrVal_reg(2),
      I3 => tmrVal_reg(0),
      I4 => tmrVal_reg(3),
      I5 => eqOp2_in,
      O => \tmrVal[3]_i_1_n_0\
    );
\tmrVal[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \tmrVal[3]_i_4_n_0\,
      I1 => tmrCntr_reg(9),
      I2 => tmrCntr_reg(6),
      I3 => tmrCntr_reg(7),
      I4 => \tmrVal[3]_i_5_n_0\,
      I5 => \tmrVal[3]_i_6_n_0\,
      O => eqOp2_in
    );
\tmrVal[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tmrVal_reg(1),
      I1 => tmrVal_reg(0),
      I2 => tmrVal_reg(2),
      I3 => tmrVal_reg(3),
      O => \plusOp__1\(3)
    );
\tmrVal[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => tmrCntr_reg(5),
      I1 => tmrCntr_reg(4),
      I2 => tmrCntr_reg(3),
      I3 => tmrCntr_reg(2),
      O => \tmrVal[3]_i_4_n_0\
    );
\tmrVal[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => tmrCntr_reg(25),
      I1 => tmrCntr_reg(17),
      I2 => tmrCntr_reg(19),
      I3 => tmrCntr_reg(10),
      I4 => tmrCntr_reg(11),
      I5 => tmrCntr_reg(12),
      O => \tmrVal[3]_i_5_n_0\
    );
\tmrVal[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => \tmrVal[3]_i_7_n_0\,
      I1 => tmrCntr_reg(20),
      I2 => tmrCntr_reg(18),
      I3 => tmrCntr_reg(16),
      I4 => \tmrVal[3]_i_8_n_0\,
      I5 => \tmrVal[3]_i_9_n_0\,
      O => \tmrVal[3]_i_6_n_0\
    );
\tmrVal[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tmrCntr_reg(13),
      I1 => tmrCntr_reg(8),
      I2 => tmrCntr_reg(15),
      I3 => tmrCntr_reg(14),
      O => \tmrVal[3]_i_7_n_0\
    );
\tmrVal[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tmrCntr_reg(22),
      I1 => tmrCntr_reg(21),
      I2 => tmrCntr_reg(24),
      I3 => tmrCntr_reg(23),
      O => \tmrVal[3]_i_8_n_0\
    );
\tmrVal[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => tmrCntr_reg(0),
      I1 => tmrCntr_reg(26),
      I2 => tmrCntr_reg(1),
      O => \tmrVal[3]_i_9_n_0\
    );
\tmrVal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => eqOp2_in,
      D => \tmrVal[0]_i_1_n_0\,
      Q => tmrVal_reg(0),
      R => \tmrVal[3]_i_1_n_0\
    );
\tmrVal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => eqOp2_in,
      D => \tmrVal[1]_i_1_n_0\,
      Q => tmrVal_reg(1),
      R => \tmrVal[3]_i_1_n_0\
    );
\tmrVal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => eqOp2_in,
      D => \plusOp__1\(2),
      Q => tmrVal_reg(2),
      R => \tmrVal[3]_i_1_n_0\
    );
\tmrVal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => eqOp2_in,
      D => \plusOp__1\(3),
      Q => tmrVal_reg(3),
      R => \tmrVal[3]_i_1_n_0\
    );
\uartData[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A3A0A0A3A3A0A3A"
    )
        port map (
      I0 => \uartData[0]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(0),
      I5 => strIndex_reg(1),
      O => \sendStr[0]_5\(0)
    );
\uartData[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0C0F0F8F8C3C30"
    )
        port map (
      I0 => \sendStr_reg[14]\(0),
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(2),
      I3 => \sendStr_reg[2]\(0),
      I4 => strIndex_reg(1),
      I5 => strIndex_reg(0),
      O => \uartData[0]_i_2_n_0\
    );
\uartData[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A3A0A0A3A0A0A"
    )
        port map (
      I0 => \uartData_reg[1]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(0),
      I5 => strIndex_reg(1),
      O => \sendStr[0]_5\(1)
    );
\uartData[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30CC30BB"
    )
        port map (
      I0 => \sendStr_reg[4]\(1),
      I1 => strIndex_reg(2),
      I2 => \sendStr_reg[2]\(0),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(0),
      O => \uartData[1]_i_3_n_0\
    );
\uartData[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3838BB88"
    )
        port map (
      I0 => \sendStr_reg[2]\(0),
      I1 => strIndex_reg(2),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[14]\(0),
      I4 => strIndex_reg(0),
      O => \uartData[1]_i_4_n_0\
    );
\uartData[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A3A0A0A0A3A3A3A"
    )
        port map (
      I0 => \uartData_reg[2]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(1),
      I5 => strIndex_reg(0),
      O => \sendStr[0]_5\(2)
    );
\uartData[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFF0F0F00C0C0"
    )
        port map (
      I0 => \sendStr_reg[2]\(0),
      I1 => \sendStr_reg[4]\(1),
      I2 => strIndex_reg(2),
      I3 => \sendStr_reg[14]\(0),
      I4 => strIndex_reg(1),
      I5 => strIndex_reg(0),
      O => \uartData[2]_i_3_n_0\
    );
\uartData[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE8E048"
    )
        port map (
      I0 => strIndex_reg(2),
      I1 => \sendStr_reg[2]\(0),
      I2 => strIndex_reg(1),
      I3 => strIndex_reg(0),
      I4 => \sendStr_reg[14]\(0),
      O => \uartData[2]_i_4_n_0\
    );
\uartData[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A0A0A0A"
    )
        port map (
      I0 => \uartData[3]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(1),
      O => \sendStr[0]_5\(3)
    );
\uartData[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFEFF500004050"
    )
        port map (
      I0 => strIndex_reg(3),
      I1 => \sendStr_reg[14]\(0),
      I2 => strIndex_reg(2),
      I3 => strIndex_reg(0),
      I4 => strIndex_reg(1),
      I5 => \sendStr_reg[2]\(0),
      O => \uartData[3]_i_2_n_0\
    );
\uartData[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A3A0A0A"
    )
        port map (
      I0 => \uartData[4]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(0),
      I4 => strIndex_reg(1),
      I5 => strIndex_reg(2),
      O => \sendStr[0]_5\(4)
    );
\uartData[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4D0F0A00480000"
    )
        port map (
      I0 => strIndex_reg(3),
      I1 => \sendStr_reg[2]\(0),
      I2 => strIndex_reg(2),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[14]\(0),
      O => \uartData[4]_i_2_n_0\
    );
\uartData[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A3A3A3A"
    )
        port map (
      I0 => \uartData[5]_i_2_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(2),
      O => \sendStr[0]_5\(5)
    );
\uartData[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA00005040"
    )
        port map (
      I0 => strIndex_reg(3),
      I1 => \sendStr_reg[4]\(1),
      I2 => strIndex_reg(2),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[14]\(0),
      O => \uartData[5]_i_2_n_0\
    );
\uartData[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => uartState(1),
      I1 => uartState(2),
      I2 => uartState(0),
      O => strIndex
    );
\uartData[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A3A3A3A3A3A"
    )
        port map (
      I0 => \uartData[6]_i_3_n_0\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(4),
      I3 => strIndex_reg(0),
      I4 => strIndex_reg(1),
      I5 => strIndex_reg(2),
      O => \sendStr[0]_5\(6)
    );
\uartData[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFBFF30FF3BCC"
    )
        port map (
      I0 => \sendStr_reg[2]\(0),
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(0),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(1),
      I5 => \sendStr_reg[14]\(0),
      O => \uartData[6]_i_3_n_0\
    );
\uartData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(0),
      Q => uartData(0),
      R => '0'
    );
\uartData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(1),
      Q => uartData(1),
      R => '0'
    );
\uartData_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[1]_i_3_n_0\,
      I1 => \uartData[1]_i_4_n_0\,
      O => \uartData_reg[1]_i_2_n_0\,
      S => strIndex_reg(3)
    );
\uartData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(2),
      Q => uartData(2),
      R => '0'
    );
\uartData_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[2]_i_3_n_0\,
      I1 => \uartData[2]_i_4_n_0\,
      O => \uartData_reg[2]_i_2_n_0\,
      S => strIndex_reg(3)
    );
\uartData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(3),
      Q => uartData(3),
      R => '0'
    );
\uartData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(4),
      Q => uartData(4),
      R => '0'
    );
\uartData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(5),
      Q => uartData(5),
      R => '0'
    );
\uartData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => strIndex,
      D => \sendStr[0]_5\(6),
      Q => uartData(6),
      R => '0'
    );
uartSend_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => strIndex,
      Q => uartSend,
      R => '0'
    );
uartState1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => uartState1_carry_n_0,
      CO(2) => uartState1_carry_n_1,
      CO(1) => uartState1_carry_n_2,
      CO(0) => uartState1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_uartState1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => uartState1_carry_i_1_n_0,
      S(2) => uartState1_carry_i_2_n_0,
      S(1) => uartState1_carry_i_3_n_0,
      S(0) => uartState1_carry_i_4_n_0
    );
\uartState1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => uartState1_carry_n_0,
      CO(3) => \uartState1_carry__0_n_0\,
      CO(2) => \uartState1_carry__0_n_1\,
      CO(1) => \uartState1_carry__0_n_2\,
      CO(0) => \uartState1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uartState1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \uartState1_carry__0_i_1_n_0\,
      S(2) => \uartState1_carry__0_i_2_n_0\,
      S(1) => \uartState1_carry__0_i_3_n_0\,
      S(0) => \uartState1_carry__0_i_4_n_0\
    );
\uartState1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(23),
      I1 => strIndex_reg(22),
      I2 => strIndex_reg(21),
      O => \uartState1_carry__0_i_1_n_0\
    );
\uartState1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(20),
      I1 => strIndex_reg(19),
      I2 => strIndex_reg(18),
      O => \uartState1_carry__0_i_2_n_0\
    );
\uartState1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(17),
      I1 => strIndex_reg(16),
      I2 => strIndex_reg(15),
      O => \uartState1_carry__0_i_3_n_0\
    );
\uartState1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(14),
      I1 => strIndex_reg(13),
      I2 => strIndex_reg(12),
      O => \uartState1_carry__0_i_4_n_0\
    );
\uartState1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uartState1_carry__0_n_0\,
      CO(3) => \NLW_uartState1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \uartState1_carry__1_n_1\,
      CO(1) => \uartState1_carry__1_n_2\,
      CO(0) => \uartState1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uartState1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \uartState1_carry__1_i_1_n_0\,
      S(1) => \uartState1_carry__1_i_2_n_0\,
      S(0) => \uartState1_carry__1_i_3_n_0\
    );
\uartState1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => strIndex_reg(30),
      O => \uartState1_carry__1_i_1_n_0\
    );
\uartState1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(29),
      I1 => strIndex_reg(28),
      I2 => strIndex_reg(27),
      O => \uartState1_carry__1_i_2_n_0\
    );
\uartState1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(26),
      I1 => strIndex_reg(25),
      I2 => strIndex_reg(24),
      O => \uartState1_carry__1_i_3_n_0\
    );
uartState1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(11),
      I1 => strIndex_reg(10),
      I2 => strIndex_reg(9),
      O => uartState1_carry_i_1_n_0
    );
uartState1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(8),
      I1 => strIndex_reg(7),
      I2 => strIndex_reg(6),
      O => uartState1_carry_i_2_n_0
    );
uartState1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0900"
    )
        port map (
      I0 => \strEnd_reg_n_0_[3]\,
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(5),
      I3 => strIndex_reg(4),
      O => uartState1_carry_i_3_n_0
    );
uartState1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(2),
      I1 => strIndex_reg(1),
      I2 => strIndex_reg(0),
      O => uartState1_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_GPIO_demo_0_0 is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SSEG_CA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_TXD : out STD_LOGIC;
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    micClk : out STD_LOGIC;
    micLRSel : out STD_LOGIC;
    micData : in STD_LOGIC;
    ampPWM : out STD_LOGIC;
    ampSD : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_GPIO_demo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_GPIO_demo_0_0 : entity is "design_1_GPIO_demo_0_0,GPIO_demo,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_GPIO_demo_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_GPIO_demo_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_GPIO_demo_0_0 : entity is "GPIO_demo,Vivado 2021.2";
end design_1_GPIO_demo_0_0;

architecture STRUCTURE of design_1_GPIO_demo_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^rgb2_blue\ : STD_LOGIC;
  signal \^rgb2_green\ : STD_LOGIC;
  signal \^rgb2_red\ : STD_LOGIC;
  signal \^sseg_an\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^sseg_ca\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0";
begin
  RGB1_Blue <= \^rgb2_blue\;
  RGB1_Green <= \^rgb2_green\;
  RGB1_Red <= \^rgb2_red\;
  RGB2_Blue <= \^rgb2_blue\;
  RGB2_Green <= \^rgb2_green\;
  RGB2_Red <= \^rgb2_red\;
  SSEG_AN(7 downto 4) <= \^sseg_an\(7 downto 4);
  SSEG_AN(3 downto 0) <= \^sseg_an\(7 downto 4);
  SSEG_CA(7) <= \<const1>\;
  SSEG_CA(6 downto 0) <= \^sseg_ca\(6 downto 0);
  ampSD <= \<const1>\;
  micLRSel <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_GPIO_demo_0_0_GPIO_demo
     port map (
      BTN(4 downto 0) => BTN(4 downto 0),
      CLK => CLK,
      LED(15 downto 0) => LED(15 downto 0),
      RGB2_Blue => \^rgb2_blue\,
      RGB2_Green => \^rgb2_green\,
      RGB2_Red => \^rgb2_red\,
      SSEG_AN(3 downto 0) => \^sseg_an\(7 downto 4),
      SSEG_CA(6 downto 0) => \^sseg_ca\(6 downto 0),
      SW(15 downto 0) => SW(15 downto 0),
      UART_TXD => UART_TXD,
      ampPWM => ampPWM,
      micClk => micClk,
      micData => micData
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
