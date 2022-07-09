
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;
use IEEE.NUMERIC_STD.ALL;

entity sim_TB is
    --  Port ( );
end sim_TB;

architecture Behavioral of sim_TB is
    component cameraAndVGA_Drivers is
        Port (
            -- VGA signals
            vga_r : out std_logic_vector(3 downto 0);
            vga_g : out std_logic_vector(3 downto 0);
            vga_b : out std_logic_vector(3 downto 0);
            vga_hs : out std_logic;
            vga_vs : out std_logic;

            -- RAM signals
            addressWrite    : out std_logic_vector (18 downto 0);
            dataWrite       : out std_logic_vector (11 downto 0);
            wea             : out std_logic_vector (0 downto 0);
            addressRead     : out std_logic_vector (18 downto 0);
            dataRead        : in std_logic_vector (11 downto 0);

            -- OV7670 signals
            PCLK : in STD_LOGIC;
            DIN : in STD_LOGIC_VECTOR (7 downto 0);
            VSYNC : in STD_LOGIC;
            HS : in STD_LOGIC;

            clk             : in std_logic;
            clk25           : in std_logic;
            reset           : in std_logic;
            debugLed        : out std_logic;
            startSw         : in std_logic;
            filterSw        : in std_logic;
            initFinish      : in std_logic
        );
    end component;

    -- VGA signals
    signal vga_r            : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_g            : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_b            : std_logic_vector(3 downto 0) := (others => '0');
    signal vga_hs           : std_logic := '0';
    signal vga_vs           : std_logic := '0';

    -- RAM signals
    signal addressWrite     : std_logic_vector (18 downto 0)    := (others => '0');
    signal dataWrite        : std_logic_vector (11 downto 0)    := (others => '0');
    signal wea              : std_logic_vector (0 downto 0)     := (others => '0');
    signal addressRead      : std_logic_vector (18 downto 0)    := (others => '0');
    signal dataRead         : std_logic_vector (11 downto 0)    := (others => '0');

    -- OV7670 signals
    signal PCLK              : STD_LOGIC := '0';
    signal DIN               : STD_LOGIC_VECTOR (7 downto 0)     := (others => '0');
    signal VSYNC             : STD_LOGIC := '0';
    signal HS                : STD_LOGIC := '0';

    signal clk              : std_logic := '0';
    signal clk25            : std_logic := '0';
    signal reset            : std_logic := '0';
    signal debugLed         : std_logic := '0';
    signal startSw          : std_logic := '0';
    signal filterSw         : std_logic := '0';
    signal initFinish       : std_logic := '0';


begin
UUT : cameraAndVGA_Drivers port map (
    vga_r => vga_r,
    vga_g => vga_g,
    vga_b => vga_b,
    vga_hs => vga_hs,
    vga_vs => vga_vs,
    addressWrite => addressWrite,
    dataWrite   => dataWrite,
    wea => wea,
    addressRead => addressRead,
    dataRead => dataRead,
    PCLK => PCLK,
    DIN => DIN,
    VSYNC => VSYNC,
    HS => HS,
    clk => clk,
    clk25 => clk25,
    reset => reset,
    debugLed => debugLed,
    startSw => startSw,
    filterSw => filterSw,
    initFinish => initFinish    
);

    clk <= not clk after 5 ns;
    reset <= '0','1' after 50 ns;

    startSw     <= '0', '1' after 0.1 ms;
    filterSw    <= '0', '1' after 0.1 ms;

    process --Read file
        variable ch : character := '?';
        file fp : text open READ_MODE is "C:\GitHub\FPGA-Learning\VivadoLabs\AsciiFilter\textio2.txt";
        variable lineOfTextFromFile : line;
        variable status : boolean := FALSE;
        variable dataRead : std_logic_vector (15 downto 0);
        variable lineLength : integer := 0;
    begin
        wait for 0.3 ms;
        while ( not endfile(fp)) loop
            readline(fp,lineOfTextFromFile);
            lineLength := lineOfTextFromFile'length;
            status := TRUE;
            while ( status ) loop
                hread(lineOfTextFromFile, dataRead, status);
                if(status) then
                    DIN <= dataRead( 7 downto 0);
                    PCLK <= dataRead(8);
                    VSYNC <= dataRead(9);
                    HS <= dataRead(10);
                end if;
                wait for 20.83 ns;
            end loop;
        end loop;--end while loop

        report "End of file" severity FAILURE;
    end process;

end Behavioral;
