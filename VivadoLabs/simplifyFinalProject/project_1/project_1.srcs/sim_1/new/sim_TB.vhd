
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;
use IEEE.NUMERIC_STD.ALL;

entity sim_TB is
    --  Port ( );
end sim_TB;

architecture Behavioral of sim_TB is
    component design_1_wrapper is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    HS_0 : in STD_LOGIC;
    VSYNC_0 : in STD_LOGIC;
    vga_hs_0 : out STD_LOGIC;
    DIN_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PCLK_0 : in STD_LOGIC;
    vga_vs_0 : out STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resend_0 : in STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    finished_0 : out STD_LOGIC;
    clk24_MHz_0 : out STD_LOGIC;
    debugLed_0 : out STD_LOGIC;
    startSw : in STD_LOGIC;
    filterSw : in STD_LOGIC
  );
end component;


    signal DIN_0        : STD_LOGIC_VECTOR ( 7 downto 0 )   := (others => '0');
    signal HS_0         : STD_LOGIC                         := '0';
    signal PCLK_0       : STD_LOGIC                         := '0';
    signal VSYNC_0      : STD_LOGIC                         := '0';
    signal clk24_MHz_0  : STD_LOGIC                         := '0';
    signal finished_0   : STD_LOGIC                         := '0';
    signal resend_0     : STD_LOGIC                         := '0';
    signal reset        : STD_LOGIC                         := '0';
    signal sioc_0       : STD_LOGIC                         := '0';
    signal siod_0       : STD_LOGIC                         := '0';
    signal sys_clock    : STD_LOGIC                         := '0';
    signal vga_b_0      : STD_LOGIC_VECTOR ( 3 downto 0 )   := (others => '0');
    signal vga_g_0      : STD_LOGIC_VECTOR ( 3 downto 0 )   := (others => '0');
    signal vga_hs_0     : STD_LOGIC                         := '0';
    signal vga_r_0      : STD_LOGIC_VECTOR ( 3 downto 0 )   := (others => '0');
    signal vga_vs_0     : STD_LOGIC                         := '0';
    signal startSw      : STD_LOGIC                         := '0';
    signal filterSw     : STD_LOGIC                         := '0';
    
begin
    UUT : design_1_wrapper port map (
            DIN_0       => DIN_0,
            HS_0        => HS_0,
            PCLK_0      => PCLK_0,
            VSYNC_0     => VSYNC_0,
            finished_0  => finished_0,
            resend_0    => resend_0,
            reset       => reset,
            sioc_0      => sioc_0,
            siod_0      => siod_0,
            sys_clock   => sys_clock,
            vga_b_0     => vga_b_0,
            vga_g_0     => vga_g_0,
            vga_hs_0    => vga_hs_0,
            vga_r_0     => vga_r_0,
            vga_vs_0    => vga_vs_0,
            startSw     => startSw,
            filterSw    => filterSw
        );

    sys_clock <= not sys_clock after 5 ns;
    reset <= '0','1' after 50 ns;
   
    resend_0    <= '0', '1' after 0.3 ms, '0' after 0.5 ms;
    
    startSw     <= '0', '1' after 1 ms;
    filterSw    <= '0', '1' after 1 ms;
    
    process --Read file
        variable ch : character := '?';
        file fp : text open READ_MODE is "C:\GitHub\FPGA-Learning\VivadoLabs\simplifyFinalProject\textio.txt";
        variable lineOfTextFromFile : line;
        variable status : boolean := FALSE;
        variable dataRead : std_logic_vector (15 downto 0);
        variable lineLength : integer := 0;
    begin
    wait for 3 ms;
        while ( not endfile(fp)) loop
            readline(fp,lineOfTextFromFile);
            lineLength := lineOfTextFromFile'length;
            status := TRUE;
            while ( status ) loop
                hread(lineOfTextFromFile, dataRead, status);
                if(status) then
                    DIN_0 <= dataRead( 7 downto 0);
                    PCLK_0 <= dataRead(8);
                    VSYNC_0 <= dataRead(9);
                    HS_0 <= dataRead(10);
                end if;
                wait for 20.83 ns;
            end loop;
        end loop;--end while loop

        report "End of file" severity FAILURE;
    end process;
    
end Behavioral;
