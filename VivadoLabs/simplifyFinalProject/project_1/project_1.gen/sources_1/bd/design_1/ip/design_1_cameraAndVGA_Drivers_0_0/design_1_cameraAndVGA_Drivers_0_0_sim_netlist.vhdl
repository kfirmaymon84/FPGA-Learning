-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jul  6 21:02:20 2022
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
    addressWrite : out STD_LOGIC_VECTOR ( 18 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dataWrite : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addressRead : out STD_LOGIC_VECTOR ( 18 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSYNC : in STD_LOGIC;
    filterSw : in STD_LOGIC;
    HS : in STD_LOGIC;
    reset : in STD_LOGIC;
    initFinish : in STD_LOGIC;
    startSw : in STD_LOGIC;
    PCLK : in STD_LOGIC;
    dataRead : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk25 : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers : entity is "cameraAndVGA_Drivers";
end design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers;

architecture STRUCTURE of design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \RED[3]_i_1_n_0\ : STD_LOGIC;
  signal \RED[3]_i_2_n_0\ : STD_LOGIC;
  signal \addressCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[10]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[11]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[12]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[13]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[14]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[15]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[16]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[17]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_2_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_3_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_4_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_5_n_0\ : STD_LOGIC;
  signal \addressCounter[18]_i_6_n_0\ : STD_LOGIC;
  signal \addressCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \addressCounter[9]_i_1_n_0\ : STD_LOGIC;
  signal \^addressread\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^addresswrite\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \dataWrite[11]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal h_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal \h_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal isMSB_i_1_n_0 : STD_LOGIC;
  signal isMSB_reg_n_0 : STD_LOGIC;
  signal isStart_i_1_n_0 : STD_LOGIC;
  signal isStart_i_2_n_0 : STD_LOGIC;
  signal isStart_reg_n_0 : STD_LOGIC;
  signal lastVsyncState : STD_LOGIC;
  signal lastVsyncState_i_1_n_0 : STD_LOGIC;
  signal lastVsyncState_reg_n_0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 15 to 15 );
  signal pixleData : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \plusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \v_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal v_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \v_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal vga_vs_INST_0_i_1_n_0 : STD_LOGIC;
  signal vga_vs_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wea[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[10]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[11]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[12]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[13]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[14]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[15]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[16]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[17]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[18]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[18]_i_2_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[18]_i_3_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[18]_i_4_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \wrAddressCounter[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_plusOp_inferred__1/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__1/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__2/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__2/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "wait_for_start_frame:001,start_frame:010,end_frame_st:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "wait_for_start_frame:001,start_frame:010,end_frame_st:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "wait_for_start_frame:001,start_frame:010,end_frame_st:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addressCounter[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addressCounter[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addressCounter[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addressCounter[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addressCounter[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addressCounter[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addressCounter[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addressCounter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addressCounter[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addressCounter[18]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addressCounter[18]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addressCounter[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addressCounter[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addressCounter[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addressCounter[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addressCounter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addressCounter[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addressCounter[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addressCounter[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \h_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_cnt[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of lastVsyncState_i_1 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__2/i__carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \v_cnt[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wrAddressCounter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wrAddressCounter[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wrAddressCounter[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wrAddressCounter[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wrAddressCounter[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wrAddressCounter[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wrAddressCounter[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wrAddressCounter[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wrAddressCounter[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wrAddressCounter[18]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wrAddressCounter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wrAddressCounter[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wrAddressCounter[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wrAddressCounter[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wrAddressCounter[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wrAddressCounter[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wrAddressCounter[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wrAddressCounter[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wrAddressCounter[9]_i_1\ : label is "soft_lutpair23";
begin
  addressRead(18 downto 0) <= \^addressread\(18 downto 0);
  addressWrite(18 downto 0) <= \^addresswrite\(18 downto 0);
  wea(0) <= \^wea\(0);
\BLUE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(0),
      Q => vga_b(0),
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(1),
      Q => vga_b(1),
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(2),
      Q => vga_b(2),
      R => \RED[3]_i_1_n_0\
    );
\BLUE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(3),
      Q => vga_b(3),
      R => \RED[3]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFFFFFFFFFFFFF"
    )
        port map (
      I0 => lastVsyncState,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => reset,
      I4 => initFinish,
      I5 => startSw,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200000000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => lastVsyncState,
      I3 => reset,
      I4 => initFinish,
      I5 => startSw,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFACA0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => lastVsyncState_reg_n_0,
      I2 => VSYNC,
      I3 => lastVsyncState,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => filterSw,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DD88DC88"
    )
        port map (
      I0 => filterSw,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \wrAddressCounter[18]_i_4_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => VSYNC,
      I5 => \wrAddressCounter[18]_i_1_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => lastVsyncState,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\GREEN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(4),
      Q => vga_g(0),
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(5),
      Q => vga_g(1),
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(6),
      Q => vga_g(2),
      R => \RED[3]_i_1_n_0\
    );
\GREEN_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(7),
      Q => vga_g(3),
      R => \RED[3]_i_1_n_0\
    );
\RED[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD50000"
    )
        port map (
      I0 => \RED[3]_i_2_n_0\,
      I1 => h_cnt_reg(9),
      I2 => h_cnt_reg(8),
      I3 => h_cnt_reg(7),
      I4 => reset,
      O => \RED[3]_i_1_n_0\
    );
\RED[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => v_cnt_reg(8),
      I1 => v_cnt_reg(7),
      I2 => v_cnt_reg(6),
      I3 => v_cnt_reg(5),
      I4 => v_cnt_reg(9),
      O => \RED[3]_i_2_n_0\
    );
\RED_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(8),
      Q => vga_r(0),
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(9),
      Q => vga_r(1),
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(10),
      Q => vga_r(2),
      R => \RED[3]_i_1_n_0\
    );
\RED_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => reset,
      D => dataRead(11),
      Q => vga_r(3),
      R => \RED[3]_i_1_n_0\
    );
\addressCounter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \^addressread\(0),
      O => \addressCounter[0]_i_1_n_0\
    );
\addressCounter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(10),
      O => \addressCounter[10]_i_1_n_0\
    );
\addressCounter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(11),
      O => \addressCounter[11]_i_1_n_0\
    );
\addressCounter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(12),
      O => \addressCounter[12]_i_1_n_0\
    );
\addressCounter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(13),
      O => \addressCounter[13]_i_1_n_0\
    );
\addressCounter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(14),
      O => \addressCounter[14]_i_1_n_0\
    );
\addressCounter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(15),
      O => \addressCounter[15]_i_1_n_0\
    );
\addressCounter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(16),
      O => \addressCounter[16]_i_1_n_0\
    );
\addressCounter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(17),
      O => \addressCounter[17]_i_1_n_0\
    );
\addressCounter[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \addressCounter[18]_i_1_n_0\
    );
\addressCounter[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A222A222AFFFF"
    )
        port map (
      I0 => \RED[3]_i_2_n_0\,
      I1 => h_cnt_reg(9),
      I2 => h_cnt_reg(8),
      I3 => h_cnt_reg(7),
      I4 => \addressCounter[18]_i_4_n_0\,
      I5 => \addressCounter[18]_i_5_n_0\,
      O => \addressCounter[18]_i_2_n_0\
    );
\addressCounter[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(18),
      O => \addressCounter[18]_i_3_n_0\
    );
\addressCounter[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => v_cnt_reg(7),
      I1 => v_cnt_reg(5),
      I2 => \addressCounter[18]_i_6_n_0\,
      I3 => v_cnt_reg(6),
      I4 => v_cnt_reg(8),
      I5 => v_cnt_reg(9),
      O => \addressCounter[18]_i_4_n_0\
    );
\addressCounter[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => h_cnt_reg(6),
      I1 => h_cnt_reg(5),
      I2 => h_cnt_reg(7),
      I3 => h_cnt_reg(8),
      I4 => h_cnt_reg(9),
      O => \addressCounter[18]_i_5_n_0\
    );
\addressCounter[18]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => v_cnt_reg(3),
      I1 => v_cnt_reg(2),
      I2 => v_cnt_reg(4),
      O => \addressCounter[18]_i_6_n_0\
    );
\addressCounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(1),
      O => \addressCounter[1]_i_1_n_0\
    );
\addressCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(2),
      O => \addressCounter[2]_i_1_n_0\
    );
\addressCounter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(3),
      O => \addressCounter[3]_i_1_n_0\
    );
\addressCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(4),
      O => \addressCounter[4]_i_1_n_0\
    );
\addressCounter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(5),
      O => \addressCounter[5]_i_1_n_0\
    );
\addressCounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(6),
      O => \addressCounter[6]_i_1_n_0\
    );
\addressCounter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(7),
      O => \addressCounter[7]_i_1_n_0\
    );
\addressCounter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(8),
      O => \addressCounter[8]_i_1_n_0\
    );
\addressCounter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \addressCounter[18]_i_5_n_0\,
      I1 => \addressCounter[18]_i_4_n_0\,
      I2 => \plusOp__1\(9),
      O => \addressCounter[9]_i_1_n_0\
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
      D => \addressCounter[10]_i_1_n_0\,
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
      D => \addressCounter[11]_i_1_n_0\,
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
      D => \addressCounter[12]_i_1_n_0\,
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
      D => \addressCounter[13]_i_1_n_0\,
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
      D => \addressCounter[14]_i_1_n_0\,
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
      D => \addressCounter[15]_i_1_n_0\,
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
      D => \addressCounter[16]_i_1_n_0\,
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
      D => \addressCounter[17]_i_1_n_0\,
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
      D => \addressCounter[18]_i_3_n_0\,
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
      D => \addressCounter[1]_i_1_n_0\,
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
      D => \addressCounter[2]_i_1_n_0\,
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
      D => \addressCounter[3]_i_1_n_0\,
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
      D => \addressCounter[4]_i_1_n_0\,
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
      D => \addressCounter[5]_i_1_n_0\,
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
      D => \addressCounter[6]_i_1_n_0\,
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
      D => \addressCounter[7]_i_1_n_0\,
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
      D => \addressCounter[8]_i_1_n_0\,
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
      D => \addressCounter[9]_i_1_n_0\,
      Q => \^addressread\(9),
      R => \addressCounter[18]_i_1_n_0\
    );
\dataWrite[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => HS,
      I1 => isMSB_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => filterSw,
      O => \dataWrite[11]_i_1_n_0\
    );
\dataWrite_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => DIN(1),
      Q => dataWrite(0),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(14),
      Q => dataWrite(10),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(15),
      Q => dataWrite(11),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => DIN(2),
      Q => dataWrite(1),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => DIN(3),
      Q => dataWrite(2),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => DIN(4),
      Q => dataWrite(3),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => DIN(7),
      Q => dataWrite(4),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(8),
      Q => dataWrite(5),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(9),
      Q => dataWrite(6),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(10),
      Q => dataWrite(7),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(12),
      Q => dataWrite(8),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\dataWrite_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => \dataWrite[11]_i_1_n_0\,
      D => pixleData(13),
      Q => dataWrite(9),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\h_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[0]\,
      O => plusOp(0)
    );
\h_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[0]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      O => plusOp(1)
    );
\h_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[0]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg_n_0_[2]\,
      O => plusOp(2)
    );
\h_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[1]\,
      I1 => \h_cnt_reg_n_0_[0]\,
      I2 => \h_cnt_reg_n_0_[2]\,
      I3 => \h_cnt_reg_n_0_[3]\,
      O => plusOp(3)
    );
\h_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[2]\,
      I1 => \h_cnt_reg_n_0_[0]\,
      I2 => \h_cnt_reg_n_0_[1]\,
      I3 => \h_cnt_reg_n_0_[3]\,
      I4 => h_cnt_reg(4),
      O => plusOp(4)
    );
\h_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[3]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg_n_0_[0]\,
      I3 => \h_cnt_reg_n_0_[2]\,
      I4 => h_cnt_reg(4),
      I5 => h_cnt_reg(5),
      O => plusOp(5)
    );
\h_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt_reg(6),
      O => plusOp(6)
    );
\h_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt_reg(6),
      I2 => h_cnt_reg(7),
      O => plusOp(7)
    );
\h_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_cnt_reg(6),
      I1 => \h_cnt[9]_i_3_n_0\,
      I2 => h_cnt_reg(7),
      I3 => h_cnt_reg(8),
      O => plusOp(8)
    );
\h_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D555"
    )
        port map (
      I0 => reset,
      I1 => h_cnt_reg(9),
      I2 => h_cnt_reg(8),
      I3 => h_cnt_reg(7),
      I4 => h_cnt_reg(5),
      I5 => h_cnt_reg(6),
      O => \h_cnt[9]_i_1_n_0\
    );
\h_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_cnt_reg(7),
      I1 => \h_cnt[9]_i_3_n_0\,
      I2 => h_cnt_reg(6),
      I3 => h_cnt_reg(8),
      I4 => h_cnt_reg(9),
      O => plusOp(9)
    );
\h_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_cnt_reg(5),
      I1 => \h_cnt_reg_n_0_[3]\,
      I2 => \h_cnt_reg_n_0_[1]\,
      I3 => \h_cnt_reg_n_0_[0]\,
      I4 => \h_cnt_reg_n_0_[2]\,
      I5 => h_cnt_reg(4),
      O => \h_cnt[9]_i_3_n_0\
    );
\h_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => plusOp(0),
      Q => \h_cnt_reg_n_0_[0]\,
      R => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => '1',
      D => plusOp(1),
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
      D => plusOp(2),
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
      D => plusOp(3),
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
      D => plusOp(4),
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
      D => plusOp(5),
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
      D => plusOp(6),
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
      D => plusOp(7),
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
      D => plusOp(8),
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
      D => plusOp(9),
      Q => h_cnt_reg(9),
      R => \h_cnt[9]_i_1_n_0\
    );
isMSB_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF11111000"
    )
        port map (
      I0 => filterSw,
      I1 => \wrAddressCounter[18]_i_1_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => HS,
      I4 => \wrAddressCounter[18]_i_4_n_0\,
      I5 => isMSB_reg_n_0,
      O => isMSB_i_1_n_0
    );
isMSB_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => isMSB_i_1_n_0,
      Q => isMSB_reg_n_0,
      R => '0'
    );
isStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFAAAA0000"
    )
        port map (
      I0 => isStart_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => isMSB_reg_n_0,
      I3 => HS,
      I4 => \wrAddressCounter[18]_i_4_n_0\,
      I5 => isStart_reg_n_0,
      O => isStart_i_1_n_0
    );
isStart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reset,
      I1 => initFinish,
      I2 => startSw,
      I3 => filterSw,
      O => isStart_i_2_n_0
    );
isStart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => isStart_i_1_n_0,
      Q => isStart_reg_n_0,
      R => '0'
    );
lastVsyncState_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => VSYNC,
      I1 => filterSw,
      I2 => \wrAddressCounter[18]_i_1_n_0\,
      I3 => lastVsyncState,
      I4 => lastVsyncState_reg_n_0,
      O => lastVsyncState_i_1_n_0
    );
lastVsyncState_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => '1',
      D => lastVsyncState_i_1_n_0,
      Q => lastVsyncState_reg_n_0,
      R => '0'
    );
\pixleData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => HS,
      I1 => isMSB_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => filterSw,
      O => p_1_out(15)
    );
\pixleData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(2),
      Q => pixleData(10),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(4),
      Q => pixleData(12),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(5),
      Q => pixleData(13),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(6),
      Q => pixleData(14),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(7),
      Q => pixleData(15),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(0),
      Q => pixleData(8),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\pixleData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => p_1_out(15),
      D => DIN(1),
      Q => pixleData(9),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\plusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__1/i__carry_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry_n_3\,
      CYINIT => \^addresswrite\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3 downto 0) => \^addresswrite\(4 downto 1)
    );
\plusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3 downto 0) => \^addresswrite\(8 downto 5)
    );
\plusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(12 downto 9),
      S(3 downto 0) => \^addresswrite\(12 downto 9)
    );
\plusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(16 downto 13),
      S(3 downto 0) => \^addresswrite\(16 downto 13)
    );
\plusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_plusOp_inferred__1/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_inferred__1/i__carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in9(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^addresswrite\(18 downto 17)
    );
\plusOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__2/i__carry_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry_n_3\,
      CYINIT => \^addressread\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(4 downto 1),
      S(3 downto 0) => \^addressread\(4 downto 1)
    );
\plusOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(8 downto 5),
      S(3 downto 0) => \^addressread\(8 downto 5)
    );
\plusOp_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(12 downto 9),
      S(3 downto 0) => \^addressread\(12 downto 9)
    );
\plusOp_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__2/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__2/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__2/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(16 downto 13),
      S(3 downto 0) => \^addressread\(16 downto 13)
    );
\plusOp_inferred__2/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__2/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_plusOp_inferred__2/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_inferred__2/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_inferred__2/i__carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \plusOp__1\(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^addressread\(18 downto 17)
    );
\v_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => v_cnt_reg(1),
      O => \plusOp__0\(1)
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => v_cnt_reg(1),
      I2 => v_cnt_reg(2),
      O => \plusOp__0\(2)
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_cnt_reg(1),
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => v_cnt_reg(2),
      I3 => v_cnt_reg(3),
      O => \plusOp__0\(3)
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_cnt_reg(2),
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => v_cnt_reg(1),
      I3 => v_cnt_reg(3),
      I4 => v_cnt_reg(4),
      O => \plusOp__0\(4)
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => v_cnt_reg(3),
      I1 => v_cnt_reg(1),
      I2 => \v_cnt_reg_n_0_[0]\,
      I3 => v_cnt_reg(2),
      I4 => v_cnt_reg(4),
      I5 => v_cnt_reg(5),
      O => \plusOp__0\(5)
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_cnt[9]_i_4_n_0\,
      I1 => v_cnt_reg(6),
      O => \plusOp__0\(6)
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \v_cnt[9]_i_4_n_0\,
      I1 => v_cnt_reg(6),
      I2 => v_cnt_reg(7),
      O => \plusOp__0\(7)
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_cnt_reg(6),
      I1 => \v_cnt[9]_i_4_n_0\,
      I2 => v_cnt_reg(7),
      I3 => v_cnt_reg(8),
      O => \plusOp__0\(8)
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \addressCounter[18]_i_4_n_0\,
      I1 => \addressCounter[18]_i_5_n_0\,
      I2 => reset,
      O => \v_cnt[9]_i_1_n_0\
    );
\v_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => h_cnt_reg(9),
      I1 => h_cnt_reg(8),
      I2 => h_cnt_reg(7),
      I3 => h_cnt_reg(5),
      I4 => h_cnt_reg(6),
      O => \v_cnt[9]_i_2_n_0\
    );
\v_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_cnt_reg(7),
      I1 => \v_cnt[9]_i_4_n_0\,
      I2 => v_cnt_reg(6),
      I3 => v_cnt_reg(8),
      I4 => v_cnt_reg(9),
      O => \plusOp__0\(9)
    );
\v_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => v_cnt_reg(5),
      I1 => v_cnt_reg(3),
      I2 => v_cnt_reg(1),
      I3 => \v_cnt_reg_n_0_[0]\,
      I4 => v_cnt_reg(2),
      I5 => v_cnt_reg(4),
      O => \v_cnt[9]_i_4_n_0\
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk25,
      CE => \v_cnt[9]_i_2_n_0\,
      D => \plusOp__0\(0),
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
      D => \plusOp__0\(1),
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
      D => \plusOp__0\(2),
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
      D => \plusOp__0\(3),
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
      D => \plusOp__0\(4),
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
      D => \plusOp__0\(5),
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
      D => \plusOp__0\(6),
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
      D => \plusOp__0\(7),
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
      D => \plusOp__0\(8),
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
      D => \plusOp__0\(9),
      Q => v_cnt_reg(9),
      R => \v_cnt[9]_i_1_n_0\
    );
vga_hs_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD557FFFF"
    )
        port map (
      I0 => h_cnt_reg(9),
      I1 => h_cnt_reg(6),
      I2 => h_cnt_reg(5),
      I3 => h_cnt_reg(4),
      I4 => h_cnt_reg(7),
      I5 => h_cnt_reg(8),
      O => vga_hs
    );
vga_vs_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => vga_vs_INST_0_i_1_n_0,
      I1 => v_cnt_reg(9),
      I2 => v_cnt_reg(8),
      I3 => vga_vs_INST_0_i_2_n_0,
      I4 => v_cnt_reg(7),
      O => vga_vs
    );
vga_vs_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFFFFFFFFF"
    )
        port map (
      I0 => v_cnt_reg(3),
      I1 => v_cnt_reg(2),
      I2 => v_cnt_reg(4),
      I3 => v_cnt_reg(5),
      I4 => v_cnt_reg(6),
      I5 => v_cnt_reg(7),
      O => vga_vs_INST_0_i_1_n_0
    );
vga_vs_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA80000000000"
    )
        port map (
      I0 => v_cnt_reg(5),
      I1 => v_cnt_reg(2),
      I2 => v_cnt_reg(1),
      I3 => v_cnt_reg(3),
      I4 => v_cnt_reg(4),
      I5 => v_cnt_reg(6),
      O => vga_vs_INST_0_i_2_n_0
    );
\wea[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008AAABAAA"
    )
        port map (
      I0 => \^wea\(0),
      I1 => filterSw,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => HS,
      I4 => isMSB_reg_n_0,
      I5 => \wrAddressCounter[18]_i_1_n_0\,
      O => \wea[0]_i_1_n_0\
    );
\wea_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => \wea[0]_i_1_n_0\,
      Q => \^wea\(0),
      R => '0'
    );
\wrAddressCounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^addresswrite\(0),
      O => \wrAddressCounter[0]_i_1_n_0\
    );
\wrAddressCounter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(10),
      O => \wrAddressCounter[10]_i_1_n_0\
    );
\wrAddressCounter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(11),
      O => \wrAddressCounter[11]_i_1_n_0\
    );
\wrAddressCounter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(12),
      O => \wrAddressCounter[12]_i_1_n_0\
    );
\wrAddressCounter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(13),
      O => \wrAddressCounter[13]_i_1_n_0\
    );
\wrAddressCounter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(14),
      O => \wrAddressCounter[14]_i_1_n_0\
    );
\wrAddressCounter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(15),
      O => \wrAddressCounter[15]_i_1_n_0\
    );
\wrAddressCounter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(16),
      O => \wrAddressCounter[16]_i_1_n_0\
    );
\wrAddressCounter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(17),
      O => \wrAddressCounter[17]_i_1_n_0\
    );
\wrAddressCounter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => startSw,
      I1 => initFinish,
      I2 => reset,
      O => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => isMSB_reg_n_0,
      I2 => isStart_reg_n_0,
      I3 => HS,
      I4 => \wrAddressCounter[18]_i_4_n_0\,
      I5 => filterSw,
      O => \wrAddressCounter[18]_i_2_n_0\
    );
\wrAddressCounter[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(18),
      O => \wrAddressCounter[18]_i_3_n_0\
    );
\wrAddressCounter[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => lastVsyncState,
      I1 => VSYNC,
      I2 => lastVsyncState_reg_n_0,
      O => \wrAddressCounter[18]_i_4_n_0\
    );
\wrAddressCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(1),
      O => \wrAddressCounter[1]_i_1_n_0\
    );
\wrAddressCounter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(2),
      O => \wrAddressCounter[2]_i_1_n_0\
    );
\wrAddressCounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(3),
      O => \wrAddressCounter[3]_i_1_n_0\
    );
\wrAddressCounter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(4),
      O => \wrAddressCounter[4]_i_1_n_0\
    );
\wrAddressCounter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(5),
      O => \wrAddressCounter[5]_i_1_n_0\
    );
\wrAddressCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(6),
      O => \wrAddressCounter[6]_i_1_n_0\
    );
\wrAddressCounter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(7),
      O => \wrAddressCounter[7]_i_1_n_0\
    );
\wrAddressCounter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(8),
      O => \wrAddressCounter[8]_i_1_n_0\
    );
\wrAddressCounter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => in9(9),
      O => \wrAddressCounter[9]_i_1_n_0\
    );
\wrAddressCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[0]_i_1_n_0\,
      Q => \^addresswrite\(0),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[10]_i_1_n_0\,
      Q => \^addresswrite\(10),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[11]_i_1_n_0\,
      Q => \^addresswrite\(11),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[12]_i_1_n_0\,
      Q => \^addresswrite\(12),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[13]_i_1_n_0\,
      Q => \^addresswrite\(13),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[14]_i_1_n_0\,
      Q => \^addresswrite\(14),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[15]_i_1_n_0\,
      Q => \^addresswrite\(15),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[16]_i_1_n_0\,
      Q => \^addresswrite\(16),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[17]_i_1_n_0\,
      Q => \^addresswrite\(17),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[18]_i_3_n_0\,
      Q => \^addresswrite\(18),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[1]_i_1_n_0\,
      Q => \^addresswrite\(1),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[2]_i_1_n_0\,
      Q => \^addresswrite\(2),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[3]_i_1_n_0\,
      Q => \^addresswrite\(3),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[4]_i_1_n_0\,
      Q => \^addresswrite\(4),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[5]_i_1_n_0\,
      Q => \^addresswrite\(5),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[6]_i_1_n_0\,
      Q => \^addresswrite\(6),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[7]_i_1_n_0\,
      Q => \^addresswrite\(7),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[8]_i_1_n_0\,
      Q => \^addresswrite\(8),
      R => \wrAddressCounter[18]_i_1_n_0\
    );
\wrAddressCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PCLK,
      CE => \wrAddressCounter[18]_i_2_n_0\,
      D => \wrAddressCounter[9]_i_1_n_0\,
      Q => \^addresswrite\(9),
      R => \wrAddressCounter[18]_i_1_n_0\
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
    reset : in STD_LOGIC;
    debugLed : out STD_LOGIC;
    startSw : in STD_LOGIC;
    filterSw : in STD_LOGIC;
    initFinish : in STD_LOGIC
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
  debugLed <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers
     port map (
      DIN(7 downto 0) => DIN(7 downto 0),
      HS => HS,
      PCLK => PCLK,
      VSYNC => VSYNC,
      addressRead(18 downto 0) => addressRead(18 downto 0),
      addressWrite(18 downto 0) => addressWrite(18 downto 0),
      clk25 => clk25,
      dataRead(11 downto 0) => dataRead(11 downto 0),
      dataWrite(11 downto 0) => dataWrite(11 downto 0),
      filterSw => filterSw,
      initFinish => initFinish,
      reset => reset,
      startSw => startSw,
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_hs => vga_hs,
      vga_r(3 downto 0) => vga_r(3 downto 0),
      vga_vs => vga_vs,
      wea(0) => wea(0)
    );
end STRUCTURE;
