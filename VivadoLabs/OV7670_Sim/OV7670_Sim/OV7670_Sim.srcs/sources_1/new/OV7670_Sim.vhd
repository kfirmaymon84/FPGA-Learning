library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity OV7670_Sim is
    Port (  RESET: in std_logic;
            PCLK : in STD_LOGIC;
            DIN : in STD_LOGIC_VECTOR (7 downto 0);
            VSYNC : in STD_LOGIC;
            HS : in STD_LOGIC;
            XCLK : out STD_LOGIC);
end OV7670_Sim;

architecture Behavioral of OV7670_Sim is
    signal pixleData        : std_logic_vector (15 downto 0):= (others => '0');
    signal pixleCounter     : std_logic_vector (31 downto 0):= (others => '0');
    signal lastVsyncState   : std_logic := '0';
    signal isMSB            :std_logic := '0';
    type stateType is (START_FRAME, WAIT_FOR_START_FRAME, END_FRAME_ST);
    signal state : stateType := WAIT_FOR_START_FRAME;
    signal cnt : integer := 0;
    signal txtWr :std_logic := '0';
    
    
begin

    process(PCLK)-- sample pixles
    file fp : text open WRITE_MODE is "C:\GitHub\FPGA-Learning\VivadoLabs\OV7670_Sim\fileOutput.txt";
    variable lineOut: line; 
    begin
        if rising_edge(PCLK) then
            if RESET = '1' then
                state <= WAIT_FOR_START_FRAME;
                pixleData       <= (others => '0');
                pixleCounter    <= (others => '0');
                cnt <= 0;
            else
                case state is
                    when WAIT_FOR_START_FRAME =>
                        if lastVsyncState = '1' and VSYNC = '0' then
                            state <= START_FRAME;
                            isMSB <= '1';
                        end if;
                        lastVsyncState <= VSYNC; 
                                
                    when START_FRAME =>
                        if HS = '1' then
                            if isMSB = '1' then
                                pixleData(15 downto 8) <= DIN; 
                                isMsb <= '0';
                            else
                                pixleData(7 downto 0) <= DIN;
                                pixleCounter <= pixleCounter + 1;
                                isMsb <= '1';
                                txtWr <= '1';
                            end if;
                        end if;
                        
                        if txtWr = '1' then
                            write(lineOut, " 0x" & to_hstring( to_bitvector(pixleData) ) & "," );
                            txtWr <= '0';
                            if cnt < 15 then
                                cnt <= cnt +1;
                            else
                                writeline(fp, lineOut);
                                cnt <= 0;
                            end if; 
                        end if;    
                        
                        if VSYNC = '1' then
                            writeline(fp, lineOut);
                            state <= END_FRAME_ST; 
                        end if;
                    when END_FRAME_ST =>
                        
                    when others =>
                        state <= WAIT_FOR_START_FRAME;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
