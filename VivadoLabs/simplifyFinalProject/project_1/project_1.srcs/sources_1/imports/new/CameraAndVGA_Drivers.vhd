library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity cameraAndVGA_Drivers is
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
end cameraAndVGA_Drivers;

architecture Behavioral of cameraAndVGA_Drivers is
    signal h_cnt            : std_logic_vector (9 downto 0)     := (others => '0');
    signal v_cnt            : std_logic_vector (9 downto 0)     := (others => '0');
    signal isLowFrame       : std_logic                         := '0';
    signal addressCounter   : std_logic_vector (18 downto 0)    := (others => '0');
    signal RED              : std_logic_vector (3 downto 0)     := (others => '0');
    signal GREEN            : std_logic_vector (3 downto 0)     := (others => '0');
    signal BLUE             : std_logic_vector (3 downto 0)     := (others => '0');


    signal pixleData        : std_logic_vector (15 downto 0):= (others => '0');
    signal lastVsyncState   : std_logic := '0';
    signal isMSB            :std_logic := '0';
    type stateType is (START_FRAME, WAIT_FOR_START_FRAME, END_FRAME_ST);
    signal state            : stateType := WAIT_FOR_START_FRAME;
    signal storePixle       :std_logic := '0';
    signal isStart          : std_logic := '0';
    signal wrAddressCounter : std_logic_vector (18 downto 0)  := (others => '0');

    -- FILTER MODE signals

    signal pixleCounter    : std_logic_vector (31 downto 0);
    type t_pixlesBox is record
        redSum      : std_logic_vector (9 downto 0);
        greenSum    : std_logic_vector (9 downto 0);
        blueSum     : std_logic_vector (9 downto 0);
        redAvg      : std_logic_vector(3 downto 0);
        greenAvg    : std_logic_vector(3 downto 0);
        blueAvg     : std_logic_vector(3 downto 0);
    end record t_pixlesBox;

    type pixlesBoxs is array (0 to 127) of t_pixlesBox;
    signal line1_pBoxs : pixlesBoxs;
    signal line2_pBoxs : pixlesBoxs;
begin


    process(PCLK)-- sample pixles
    begin
        if rising_edge(PCLK) then
            if RESET = '0' or startSw = '0' then --or initFinish = '0' then
                state <= WAIT_FOR_START_FRAME;
                pixleData       <= (others => '0');
                wrAddressCounter <= (others => '0');
                wea <= (others => '0');
                dataWrite <= (others => '0');
            elsif filterSw = '0' then
                case state is
                    when WAIT_FOR_START_FRAME =>
                        if lastVsyncState = '1' and VSYNC = '0' then
                            state <= START_FRAME;
                            wrAddressCounter <= (others => '0');
                            isMSB <= '1';
                            isStart <= '1';
                        end if;
                        lastVsyncState <= VSYNC;

                    when START_FRAME =>
                        if HS = '1' then
                            if isMSB = '1' then
                                pixleData(15 downto 8) <= DIN;
                                isMsb <= '0';
                                if isStart = '0' then
                                    wrAddressCounter <= wrAddressCounter + 1;
                                end if;
                                wea <= (others => '0');
                            else
                                --pixleData(7 downto 0) <= DIN;
                                isMsb <= '1';
                                dataWrite <= pixleData(15 downto 12) & pixleData(10 downto 8) & DIN(7) & DIN(4 downto 1);
                                wea <= (others => '1');
                                isStart <= '0';
                                if pixleData = X"FFFF" then
                                    debugLed <= '1';
                                else
                                    debugLed <= '0';
                                end if;
                            end if;
                        end if;

                        if VSYNC = '1' then
                            state <= END_FRAME_ST;
                        end if;
                    when END_FRAME_ST =>
                        state <= WAIT_FOR_START_FRAME;
                    when others =>
                        state <= WAIT_FOR_START_FRAME;
                end case;
            else
                -- filter mode
                case state is
                    when WAIT_FOR_START_FRAME =>
                        if lastVsyncState = '1' and VSYNC = '0' then
                            state <= START_FRAME;
                            wrAddressCounter <= (others => '0');
                            isMSB <= '1';
                            pixleCounter            <= (others => '0');
                            for idx in 0 to line1_pBoxs'length - 1 loop
                                line1_pBoxs(idx).redSum     <= (others => '0');
                                line1_pBoxs(idx).greenSum   <= (others => '0');
                                line1_pBoxs(idx).blueSum    <= (others => '0');
                                line1_pBoxs(idx).redAvg     <= (others => '0');
                                line1_pBoxs(idx).greenAvg   <= (others => '0');
                                line1_pBoxs(idx).blueAvg    <= (others => '0');
                                
                                line2_pBoxs(idx).redSum     <= (others => '0');
                                line2_pBoxs(idx).greenSum   <= (others => '0');
                                line2_pBoxs(idx).blueSum    <= (others => '0');
                                line2_pBoxs(idx).redAvg     <= (others => '0');
                                line2_pBoxs(idx).greenAvg   <= (others => '0');
                                line2_pBoxs(idx).blueAvg    <= (others => '0');
                                
                            end loop;
                             
                        end if;
                        lastVsyncState <= VSYNC;

                    when START_FRAME =>
                        if HS = '1' then
                            if isMSB = '1' then
                                pixleData(15 downto 8) <= DIN;
                                isMsb <= '0';
                                pixleCounter <= pixleCounter + 1;
                            else
                                --pixleData(7 downto 0) <= DIN;
                                isMsb <= '1';
                                --dataWrite <= pixleData(15 downto 12) & pixleData(10 downto 8) & DIN(7) & DIN(4 downto 1);

                                line1_pBoxs(0).redSum   <= line1_pBoxs(0).redSum    + ("000000" & pixleData(15 downto 12));
                                line1_pBoxs(0).greenSum <= line1_pBoxs(0).greenSum  + ("000000" & pixleData(10 downto 8) & DIN(7));
                                line1_pBoxs(0).blueSum  <= line1_pBoxs(0).blueSum   + ("000000" & DIN(4 downto 1));

                                if pixleData = X"FFFF" then
                                    debugLed <= '1';
                                else
                                    debugLed <= '0';
                                end if;
                            end if;
                        end if;

                        if VSYNC = '1' then
                            state <= END_FRAME_ST;
                        end if;
                    when END_FRAME_ST =>
                        state <= WAIT_FOR_START_FRAME;
                    when others =>
                        state <= WAIT_FOR_START_FRAME;
                end case;
            end if;

        end if;
    end process;

    addressWrite <= wrAddressCounter;
    
    control: process(clk25)
    begin

        if rising_edge(clk25) then
            if (reset = '0') then
                h_cnt <= (others => '0');
                v_cnt <= (others => '0');
                addressCounter <= (others => '0');
            else
                if (h_cnt < 640 and v_cnt < 480) then -- pixles drawing
                    RED     <= dataRead(11 downto 8);
                    GREEN   <= dataRead(7 downto 4);
                    BLUE    <= dataRead(3 downto 0);

                    addressCounter <= addressCounter + 1;
                else
                    RED     <= X"0";
                    GREEN   <= X"0";
                    BLUE    <= X"0";
                end if;

                if (h_cnt < 800) then
                    h_cnt   <= h_cnt + 1;
                else
                    h_cnt <= (others => '0');
                    if (v_cnt < 524) then
                        -- start new line
                        v_cnt <= v_cnt + 1;
                    else
                        -- Reset frame 
                        v_cnt <= (others => '0');
                        addressCounter <= (others => '0');
                    end if;
                end if;

            end if;
        end if;
    end process;

    vga_r <= RED;--    when h_cnt(0) = '0'  else X"0";
    vga_g <= GREEN;--  when h_cnt(0) = '0'  else X"0";
    vga_b <= BLUE;--   when h_cnt(0) = '0'  else X"0";

    vga_hs <= '0' when h_cnt >= (640+16) and h_cnt < (640 + 16 + 96) else '1'; -- H sync pulse
    vga_vs <= '0' when v_cnt >= (480 + 10) and v_cnt < (480 + 10 + 2) else '1'; -- Y sync pulse
    addressRead <= addressCounter;
    
end Behavioral;


