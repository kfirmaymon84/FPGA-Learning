library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity Histogram is
    Port ( reset : in STD_LOGIC;
         clock : in STD_LOGIC;
         HIST_READY : out STD_LOGIC;
         HIST_VALUE : out STD_LOGIC_VECTOR (7 downto 0);
         VALUE_AMOUNT : out STD_LOGIC_VECTOR (9 downto 0)
        );
end Histogram;

architecture Behavioral of Histogram is
    -- ROM COMP
    COMPONENT blk_mem_ROM
        PORT (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    --RAM COMP
    COMPONENT blk_mem_SPD_RAM
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            clkb : IN STD_LOGIC;
            enb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
    END COMPONENT;
    
    signal histReady : std_logic:= '0';
    signal hisValue  : std_logic_vector (7 downto 0) := (others => '0');
    -- counters
    signal counter             : std_logic_vector (11 downto 0) := (others => '0');
    signal sendAndZeroCounter  : std_logic_vector (7 downto 0) := (others => '0');


    -- RAM signals
    signal ramDataOut   : std_logic_vector (9 downto 0) := (others => '0');
    signal ramDataIn    : std_logic_vector (9 downto 0) := (others => '0');
    
    signal ramAdder : std_logic_vector (9 downto 0) := (others => '0');
    signal muxRamDin : std_logic_vector (9 downto 0) := (others => '0');
    
    -- MUX signals
    signal muxOut       : std_logic_vector (7 downto 0) := (others => '0');
    signal muxConstZero : std_logic_vector (7 downto 0) := (others => '0');
    signal muxRomData   : std_logic_vector (7 downto 0) := (others => '0');
    signal ramEnW        :std_logic := '0';
    signal ramEnR        :std_logic := '0';
    TYPE STATE_TYPE IS (RESET_ST, DATA_SAMPLE_ST, SEND_ST, ZERO_ST);
    SIGNAL state   : STATE_TYPE := DATA_SAMPLE_ST;
    

begin
    ROM_MAP : blk_mem_ROM     port map ( clka => clock, addra => counter(11 downto 1), douta => muxRomData);
    RAM_MAP : blk_mem_SPD_RAM port map ( clka => clock,ena=> ramEnW, wea => not counter(0 downto 0), addra => muxOut, dina => ramDataIn,
                 clkb => clock, enb => ramEnR, addrb => muxOut, doutb => ramDataOut);

    -- counter and state controll
    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                HIST_READY <= '0';
                HIST_VALUE <= (others => '0');
                VALUE_AMOUNT <= (others => '0');
                state <= DATA_SAMPLE_ST;
                counter <= (others => '0'); -- reset counter
                sendAndZeroCounter <= (others => '0'); -- reset counter
                ramEnW <= '0';
                ramEnR <= '0';
                
            else
                case state is
                    when DATA_SAMPLE_ST =>
                        ramEnW <= '1';
                        ramEnR <= '1';
                        counter <= counter + 1;
                        if counter = 2048 then
                            state <= SEND_ST;
                            ramEnW <= '0';
                            ramEnR <= '1';
                        end if;
                    when SEND_ST =>
                        histReady <= '1';               -- shift by 1 clk
                        HIST_READY <= histReady;        -- shift by 1 clk
                        hisValue <= sendAndZeroCounter; -- shift by 1 clk
                        HIST_VALUE <= hisValue;         -- shift by 1 clk
                        
                        VALUE_AMOUNT <= ramDataOut; 
                        sendAndZeroCounter <= sendAndZeroCounter + 1;
                        if hisValue = 255 then
                            state <= ZERO_ST;
                            sendAndZeroCounter <= (others => '0');    
                            ramEnW <= '1';
                            ramEnR <= '0';
                        end if;
                    when ZERO_ST =>
                        HIST_READY <= '0';
                        sendAndZeroCounter <= sendAndZeroCounter + 1;
                        if sendAndZeroCounter = 255 then
                            state <= RESET_ST;
                        end if;
                    when RESET_ST =>
                        counter     <= (others => '0');
                        sendAndZeroCounter <= (others => '0');
                        ramEnW <= '0';
                        ramEnR <= '0';
                        state <= DATA_SAMPLE_ST;
                end case;
            end if;
        end if;
    end process;

    muxOut <= muxRomData when state = DATA_SAMPLE_ST else
              sendAndZeroCounter when state = SEND_ST else
              sendAndZeroCounter when state = ZERO_ST else (others => '0');
              
    ramAdder <= ramDataOut + 1;
    
    ramDataIn <= ramAdder when State = DATA_SAMPLE_ST else (others => '0');
    
    -- add 1 to ram data and return to ram data in
    --ramDataIn <= ramDataOut + 1;



end Behavioral;
