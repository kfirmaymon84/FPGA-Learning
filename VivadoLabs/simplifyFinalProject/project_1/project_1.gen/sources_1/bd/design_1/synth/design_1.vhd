--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Jul 15 22:47:01 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HS_0 : in STD_LOGIC;
    PCLK_0 : in STD_LOGIC;
    VSYNC_0 : in STD_LOGIC;
    clk24_MHz_0 : out STD_LOGIC;
    debugLed_0 : out STD_LOGIC;
    filterSw : in STD_LOGIC;
    finished_0 : out STD_LOGIC;
    resend_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    startSw : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs_0 : out STD_LOGIC;
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vs_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk100_MHz : out STD_LOGIC;
    clk25_MHz : out STD_LOGIC;
    clk24_MHz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_i2c_sender_0_0 is
  port (
    clk : in STD_LOGIC;
    siod : inout STD_LOGIC;
    sioc : out STD_LOGIC;
    reset : in STD_LOGIC;
    resend : in STD_LOGIC;
    finished : out STD_LOGIC
  );
  end component design_1_i2c_sender_0_0;
  component design_1_dsp_macro_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  end component design_1_dsp_macro_0_0;
  component design_1_cameraAndVGA_Drivers_0_0 is
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
    initFinish : in STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 17 downto 0 );
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    P : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  end component design_1_cameraAndVGA_Drivers_0_0;
  signal DIN_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal HS_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal PCLK_0_1 : STD_LOGIC;
  signal VSYNC_0_1 : STD_LOGIC;
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cameraAndVGA_Drivers_0_A : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal cameraAndVGA_Drivers_0_B : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal cameraAndVGA_Drivers_0_addressRead : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal cameraAndVGA_Drivers_0_addressWrite : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal cameraAndVGA_Drivers_0_dataWrite : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cameraAndVGA_Drivers_0_debugLed : STD_LOGIC;
  signal cameraAndVGA_Drivers_0_vga_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cameraAndVGA_Drivers_0_vga_g : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cameraAndVGA_Drivers_0_vga_hs : STD_LOGIC;
  signal cameraAndVGA_Drivers_0_vga_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cameraAndVGA_Drivers_0_vga_vs : STD_LOGIC;
  signal cameraAndVGA_Drivers_0_wea : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_wiz_0_clk100_MHz : STD_LOGIC;
  signal clk_wiz_0_clk24_MHz : STD_LOGIC;
  signal clk_wiz_0_clk25_MHz : STD_LOGIC;
  signal dsp_macro_0_P : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal filterSw_0_1 : STD_LOGIC;
  signal i2c_sender_0_finished : STD_LOGIC;
  signal i2c_sender_0_sioc : STD_LOGIC;
  signal resend_0_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal startSw_0_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk24_MHz_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK24_MHZ_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk24_MHz_0 : signal is "XIL_INTERFACENAME CLK.CLK24_MHZ_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 24000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  DIN_0_1(7 downto 0) <= DIN_0(7 downto 0);
  HS_0_1 <= HS_0;
  PCLK_0_1 <= PCLK_0;
  VSYNC_0_1 <= VSYNC_0;
  clk24_MHz_0 <= clk_wiz_0_clk24_MHz;
  debugLed_0 <= cameraAndVGA_Drivers_0_debugLed;
  filterSw_0_1 <= filterSw;
  finished_0 <= i2c_sender_0_finished;
  resend_0_1 <= resend_0;
  reset_1 <= reset;
  sioc_0 <= i2c_sender_0_sioc;
  startSw_0_1 <= startSw;
  sys_clock_1 <= sys_clock;
  vga_b_0(3 downto 0) <= cameraAndVGA_Drivers_0_vga_b(3 downto 0);
  vga_g_0(3 downto 0) <= cameraAndVGA_Drivers_0_vga_g(3 downto 0);
  vga_hs_0 <= cameraAndVGA_Drivers_0_vga_hs;
  vga_r_0(3 downto 0) <= cameraAndVGA_Drivers_0_vga_r(3 downto 0);
  vga_vs_0 <= cameraAndVGA_Drivers_0_vga_vs;
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(18 downto 0) => cameraAndVGA_Drivers_0_addressWrite(18 downto 0),
      addrb(18 downto 0) => cameraAndVGA_Drivers_0_addressRead(18 downto 0),
      clka => PCLK_0_1,
      clkb => clk_wiz_0_clk25_MHz,
      dina(11 downto 0) => cameraAndVGA_Drivers_0_dataWrite(11 downto 0),
      doutb(11 downto 0) => blk_mem_gen_0_doutb(11 downto 0),
      wea(0) => cameraAndVGA_Drivers_0_wea(0)
    );
cameraAndVGA_Drivers_0: component design_1_cameraAndVGA_Drivers_0_0
     port map (
      A(17 downto 0) => cameraAndVGA_Drivers_0_A(17 downto 0),
      B(17 downto 0) => cameraAndVGA_Drivers_0_B(17 downto 0),
      DIN(7 downto 0) => DIN_0_1(7 downto 0),
      HS => HS_0_1,
      P(35 downto 0) => dsp_macro_0_P(35 downto 0),
      PCLK => PCLK_0_1,
      VSYNC => VSYNC_0_1,
      addressRead(18 downto 0) => cameraAndVGA_Drivers_0_addressRead(18 downto 0),
      addressWrite(18 downto 0) => cameraAndVGA_Drivers_0_addressWrite(18 downto 0),
      clk => clk_wiz_0_clk100_MHz,
      clk25 => clk_wiz_0_clk25_MHz,
      dataRead(11 downto 0) => blk_mem_gen_0_doutb(11 downto 0),
      dataWrite(11 downto 0) => cameraAndVGA_Drivers_0_dataWrite(11 downto 0),
      debugLed => cameraAndVGA_Drivers_0_debugLed,
      filterSw => filterSw_0_1,
      initFinish => i2c_sender_0_finished,
      reset => reset_1,
      startSw => startSw_0_1,
      vga_b(3 downto 0) => cameraAndVGA_Drivers_0_vga_b(3 downto 0),
      vga_g(3 downto 0) => cameraAndVGA_Drivers_0_vga_g(3 downto 0),
      vga_hs => cameraAndVGA_Drivers_0_vga_hs,
      vga_r(3 downto 0) => cameraAndVGA_Drivers_0_vga_r(3 downto 0),
      vga_vs => cameraAndVGA_Drivers_0_vga_vs,
      wea(0) => cameraAndVGA_Drivers_0_wea(0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk100_MHz => clk_wiz_0_clk100_MHz,
      clk24_MHz => clk_wiz_0_clk24_MHz,
      clk25_MHz => clk_wiz_0_clk25_MHz,
      clk_in1 => sys_clock_1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      resetn => reset_1
    );
dsp_macro_0: component design_1_dsp_macro_0_0
     port map (
      A(17 downto 0) => cameraAndVGA_Drivers_0_A(17 downto 0),
      B(17 downto 0) => cameraAndVGA_Drivers_0_B(17 downto 0),
      CLK => PCLK_0_1,
      P(35 downto 0) => dsp_macro_0_P(35 downto 0)
    );
i2c_sender_0: component design_1_i2c_sender_0_0
     port map (
      clk => clk_wiz_0_clk100_MHz,
      finished => i2c_sender_0_finished,
      resend => resend_0_1,
      reset => reset_1,
      sioc => i2c_sender_0_sioc,
      siod => siod_0
    );
end STRUCTURE;
