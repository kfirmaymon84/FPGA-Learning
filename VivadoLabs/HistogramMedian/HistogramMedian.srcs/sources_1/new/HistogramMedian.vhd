library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;


entity HistogramMedian is
    Port ( reset : in STD_LOGIC;
         CLK : in STD_LOGIC;
         SW : in STD_LOGIC_VECTOR (15 downto 0);
         SSEG_CA : out std_logic_vector (7 downto 0);
         SSEG_AN : out std_logic_vector (7 downto 0)
        );
end HistogramMedian;

architecture Behavioral of HistogramMedian is
    -- ROM Comp
    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    -- RAM Comp
    COMPONENT blk_mem_RAM
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

    component seveSegDriver is
    port(
        clk		: in std_logic;
        reset   : in std_logic;
        numIn	: in std_logic_vector (31 downto 0);
        segOut  : out std_logic_vector (7 downto 0);
        anodeEn   : out std_logic_vector (7 downto 0)
    );
    end component;

    signal HistReady   : STD_LOGIC;
    signal HistVal     : STD_LOGIC_VECTOR (7 downto 0);
    signal HistAmount  : STD_LOGIC_VECTOR (9 downto 0);
    signal MedianReady : STD_LOGIC;
    signal Median      : STD_LOGIC_VECTOR (7 downto 0);

    -- Counter signals
    signal mainCounter   : std_logic_vector (11 downto 0) := (others => '0'); -- 1023*2 + 256 + 256

    -- ROM Start read address
    signal romStartReadAddress : std_logic_vector (9 downto 0) := (others => '0');

    -- ROM Signals
    signal romAdd : std_logic_vector (10 downto 0) := (others => '0') ;

    -- RAM signals
    signal ramDataOut       : std_logic_vector (9 downto 0) := (others => '0');
    signal ramDataIn        : std_logic_vector (9 downto 0) := (others => '0');
    signal ramWea           : std_logic_vector (0 downto 0) := (others => '0');
    signal ramEnW           : std_logic := '0';
    signal ramEnR           : std_logic := '0';

    -- RAM Address MUX signals
    signal ramAddressMuxOut         : std_logic_vector (7 downto 0) := (others => '0');
    signal romDataOutRamDataIn      : std_logic_vector (7 downto 0) := (others => '0');
    signal addresIdx                : std_logic_vector (7 downto 0) := (others => '0');

    signal medianSum                : std_logic_vector (9 downto 0) := (others => '0');
    signal LastCountHistVal         : STD_LOGIC_VECTOR (7 downto 0);

    signal numToDisplay : std_logic_vector (31 downto 0) := (others => '0');
    TYPE STATE_TYPE IS (RESET_ST, DATA_SAMPLE_ST, SEND_ST, ZERO_ST, DISPLAY_ST);
    SIGNAL state   : STATE_TYPE := RESET_ST;

begin
    ROM_MAP : blk_mem_gen_0     port map ( clka => CLK, addra => romAdd, douta => romDataOutRamDataIn);
    RAM_MAP : blk_mem_RAM       port map ( clka => CLK, ena => ramEnW, wea => ramWea, addra => ramAddressMuxOut, dina => ramDataIn,
                 clkb => CLK, enb => ramEnR, addrb => ramAddressMuxOut, doutb => ramDataOut);
    DISPLAY : seveSegDriver port map ( clk => CLK, reset => reset, numIn => numToDisplay, segOut => SSEG_CA, anodeEn => SSEG_AN);
    -- counter and State process
    process(CLK)
    begin
        if rising_edge(CLK) then
            if reset = '1' then
                HistReady   <= '0';
                HistVal     <= (others => '0');
                Median      <= (others => '0');
                MedianReady <= '0';
                mainCounter <= (others => '0');
                addresIdx   <= (others => '0');
                state <= RESET_ST;
                romAdd <= '0' & romStartReadAddress; -- set starting read address for rom
                ramEnW <= '1';
                ramEnR <= '1';
                medianSum <= (others => '0');
            else
                case state is
                    when RESET_ST =>
                        HistReady   <= '0';
                        HistVal     <= (others => '0');
                        Median      <= (others => '0');
                        MedianReady <= '0';
                        medianSum <= (others => '0');
                        mainCounter <= (others => '0');
                        addresIdx   <= (others => '0');
                        state <= ZERO_ST;
                    when ZERO_ST =>
                        addresIdx <= addresIdx + 1;

                        if mainCounter = 256 then -- reset and start over
                            addresIdx <= (others => '0');
                            mainCounter <= (others => '0');
                            romAdd <= '0' & romStartReadAddress; -- set starting read address for rom
                            ramEnW <= '1';
                            ramEnR <= '1';
                            medianSum <= (others => '0');
                            state <= DATA_SAMPLE_ST;
                        else
                            mainCounter <= mainCounter + 1;
                        end if;
                    when DATA_SAMPLE_ST =>
                        ramWea(0) <= not mainCounter(0);
                        if mainCounter(0) = '0' then --update address at 50 MHz
                            romAdd <= romAdd + 1;
                        end if;

                        if mainCounter = 2046 then
                            state <= SEND_ST;
                            ramEnW <= '0'; -- disable ram write 
                            ramEnR <= '1'; -- enable ram read
                        else
                            mainCounter <= mainCounter + 1;
                        end if;
                    when SEND_ST =>
                        HistReady <= '1'; -- data out valid from now
                        HistVal <= addresIdx;

                        if addresIdx > 0 and medianSum < 512 then -- calc median
                            medianSum <= medianSum + ramDataOut;
                            if ramDataOut > 0 then
                                LastCountHistVal <= addresIdx;
                            end if;
                        elsif medianSum >= 512 then -- send median out
                            Median <= LastCountHistVal - 1;
                            MedianReady <= '1';
                        end if;
                        addresIdx <= addresIdx + 1;

                        if mainCounter = 2303 then
                            addresIdx <= (others => '0');
                            HistReady <= '0';
                            MedianReady <= '0';
                            Median <= (others => '0');
                            ramEnW <= '0'; -- enable ram write 
                            ramEnR <= '1'; -- disable ram read
                            state <= DISPLAY_ST;
                        else
                            mainCounter <= mainCounter + 1;
                        end if;
                     when DISPLAY_ST =>
                        numToDisplay(9 downto 0) <= ramDataOut; 
                    when others =>
                        state <= RESET_ST;
                end case;
            end if;
        end if;
    end process;

    -- RAM ADDRESS IN MUX
    ramAddressMuxOut <= romDataOutRamDataIn  when state = DATA_SAMPLE_ST else
 addresIdx when state = SEND_ST else
 addresIdx when state = ZERO_ST else
 SW(7 downto 0) when state = DISPLAY_ST else  (others => '0');
    -- RAM DATA IN MUX
    ramDataIn <= ramDataOut + 1 when state = DATA_SAMPLE_ST else (others => '0');

    HistAmount <= ramDataOut when state = SEND_ST else (others => '0');


end Behavioral;
