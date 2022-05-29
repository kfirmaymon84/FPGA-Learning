
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity OV7670_Sim_TB is
--  Port ( );
end OV7670_Sim_TB;

architecture Behavioral of OV7670_Sim_TB is
component OV7670_Sim is
    Port ( PCLK : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR (7 downto 0);
           VSYNC : in STD_LOGIC;
           HS : in STD_LOGIC;
           XCLK : out STD_LOGIC);
end component;

    signal PCLK     : STD_LOGIC := '0';
    signal DIN      : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal VSYNC    : STD_LOGIC := '0';
    signal HS       : STD_LOGIC := '0';
    signal XCLK     : STD_LOGIC := '0';
begin
    UUT: OV7670_Sim port map (PCLK => PCLK, DIN => DIN, VSYNC => VSYNC, HS => HS, XCLK => XCLK);

    process --Read file
        variable ch : character := '?';
        file fp : text open READ_MODE is "C:\GitHub\FPGA-Learning\VivadoLabs\OV7670_Sim\textio.txt";
        variable lineOfTextFromFile : line;
        variable status : boolean := FALSE;
        variable dataRead : std_logic_vector (15 downto 0);
        variable lineLength : integer := 0;
    begin
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
