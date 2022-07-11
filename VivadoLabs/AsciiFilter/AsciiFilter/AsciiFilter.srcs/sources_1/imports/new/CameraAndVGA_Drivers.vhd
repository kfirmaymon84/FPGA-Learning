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

        addressRead     : in std_logic_vector (18 downto 0);
        dataRead        : out std_logic_vector (11 downto 0);

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
        density     : std_logic_vector(3 downto 0);
    end record t_pixlesBox;

    signal PixleInLineCounter : std_logic_vector (9 downto 0):= (others => '0');
    signal lineCounter : std_logic_vector (8 downto 0) := (others => '0');
    signal isStartLine : std_logic := '0';
    signal isLine1BoxsFull : std_logic := '0';
    signal isLine2BoxsFull : std_logic := '0';
    type pixlesBoxs is array (0 to 127) of t_pixlesBox;
    signal line1_pBoxs : pixlesBoxs;
    signal line2_pBoxs : pixlesBoxs;
    constant const_DivBy40val : std_logic_vector (15 downto 0) := x"0666"; -- div by 40
    constant const_DivBy03val : std_logic_vector (15 downto 0) := x"5555"; -- div by 3
    signal tempNumber   : std_logic_vector (7 downto 0) := (others => '0');
    signal boxIdx       : unsigned (9 downto 0);--integer range 0 to 255 := 0;
    signal filterBoxIdx : integer range 0 to 255 := 0;
    type filterStateType is (FILTER_INIT_ST, AVG_COLOR_ST, SEND_TO_BRAM_ST, END_FILTER_ST);
    signal filterState  : filterStateType := FILTER_INIT_ST;
    signal stepCounter  : std_logic_vector (9 downto 0) := (others => '0');
    signal isBuffer1Full : std_logic := '0';
    signal cnt5Pixles    :std_logic_vector (3 downto 0);

    -- send to memory 
    signal pixleInBox_wr    : std_logic_vector (3 downto 0) := (others =>'0');
    signal lineInBox_wr     : std_logic_vector (7 downto 0) := (others =>'0');
    signal boxIdx_wr        : std_logic_vector (7 downto 0) := (others =>'0');
    signal isFirstWr        : std_logic := '0';
    -- FONTS
    type font is array (0 to 7) of std_logic_vector (4 downto 0);
    type fontBuffer is array (0 to 13) of font ;
    constant fonts : fontBuffer :=(
        ("00000", "00000", "00000", "00000", "00000", "01100", "01100", "00000" ),  -- . font
        ("00000", "00000", "00000", "00000", "01100", "00100", "01000", "00000" ),  -- , font
        ("00000", "00000", "00000", "00000", "11111", "00000", "00000", "00000" ),  -- - font
        ("00000", "00000", "00000", "11111", "00000", "11111", "00000", "00000" ),  -- = font
        ("00000", "00000", "00100", "00100", "11111", "00100", "00100", "00000" ),  -- + font
        ("00000", "01100", "01100", "00000", "01100", "01100", "00000", "00000" ),  -- : font
        ("00100", "00100", "00100", "00100", "00100", "00000", "00100", "00000" ),  -- ! font
        ("00100", "01100", "00100", "00100", "00100", "00100", "01110", "00000" ),  -- 1 font
        ("11111", "00010", "00100", "00010", "00001", "10001", "01110", "00000" ),  -- 3 font
        ("11111", "10000", "11110", "00001", "00001", "10001", "01110", "00000" ),  -- 5 font
        ("11111", "10001", "00010", "00100", "01000", "01000", "01000", "00000" ),  -- 7 font
        ("01110", "10001", "10001", "01111", "00001", "00010", "01100", "00000" ),  -- 9 font
        ("01010", "01010", "11111", "01010", "11111", "01010", "01010", "00000" ),  -- # font
        ("01110", "10001", "00001", "11001", "10101", "10101", "01110", "00000" )   -- @ font
    );

    COMPONENT dsp_macro_0
        PORT (
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
        );
    END COMPONENT;
    signal A : STD_LOGIC_VECTOR(17 DOWNTO 0);
    signal B : STD_LOGIC_VECTOR(17 DOWNTO 0);
    signal P : STD_LOGIC_VECTOR(35 DOWNTO 0);

    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            clkb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
        );
    END COMPONENT;
    -- RAM signals
    signal addressWrite    : std_logic_vector (18 downto 0);
    signal dataWrite       : std_logic_vector (11 downto 0);
    signal wea             : std_logic_vector (0 downto 0);

    signal addressRead_S     : std_logic_vector (18 downto 0);


begin
    DSP_MUL : dsp_macro_0
        PORT MAP (
            CLK => PCLK,
            A => A,
            B => B,
            P => P
        );

    --ONLY FOR DEBUG
    MEM_MUL : blk_mem_gen_0 port map(
            clka => PCLK,
            wea => wea,
            addra => addressWrite,
            dina => dataWrite,
            clkb => PCLK,
            addrb => addressRead_S,
            doutb => dataRead
        );
    addressRead_S <= addressRead;
    -- END ONLY FOR DEBUG    


    process(PCLK)-- sample pixles
        variable temp1 : integer:= 0;
        variable temp2 : integer:= 0;
        variable temp3 : integer:= 0;
    begin
        if rising_edge(PCLK) then
            if RESET = '0' or startSw = '0' then --or initFinish = '0' then
                state <= WAIT_FOR_START_FRAME;
                pixleData       <= (others => '0');
                wrAddressCounter <= (others => '0') ;
                wea <= (others => '0');
                dataWrite <= (others => '0');

            elsif filterSw = '0' then

            else
                -- filter mode
                case state is
                    when WAIT_FOR_START_FRAME =>
                        if lastVsyncState = '1' and VSYNC = '0' then
                            state <= START_FRAME;
                            wrAddressCounter <= (others => '0');
                            isMSB <= '1';
                            pixleCounter            <= (others => '0');
                            PixleInLineCounter  <= (others => '0');
                            boxIdx <= (others => '0');
                            lineCounter <= (others => '0');
                            isStartLine <= '1';
                            isBuffer1Full <= '0';
                            cnt5Pixles <= (others => '0');
                            for idx in 0 to line1_pBoxs'length - 1 loop
                                line1_pBoxs(idx).redSum     <= (others => '0');
                                line1_pBoxs(idx).greenSum   <= (others => '0');
                                line1_pBoxs(idx).blueSum    <= (others => '0');
                                line1_pBoxs(idx).redAvg     <= (others => '0');
                                line1_pBoxs(idx).greenAvg   <= (others => '0');
                                line1_pBoxs(idx).blueAvg    <= (others => '0');
                                line1_pBoxs(idx).density    <= (others => '0');

                                line2_pBoxs(idx).redSum     <= (others => '0');
                                line2_pBoxs(idx).greenSum   <= (others => '0');
                                line2_pBoxs(idx).blueSum    <= (others => '0');
                                line2_pBoxs(idx).redAvg     <= (others => '0');
                                line2_pBoxs(idx).greenAvg   <= (others => '0');
                                line2_pBoxs(idx).blueAvg    <= (others => '0');
                                line2_pBoxs(idx).density    <= (others => '0');
                            end loop;

                        end if;
                        lastVsyncState <= VSYNC;

                    when START_FRAME =>
                        if HS = '1' then
                            if isMSB = '1' then
                                pixleData(15 downto 8) <= DIN;
                                isMsb <= '0';
                                if isStartLine = '0' then
                                    PixleInLineCounter <= PixleInLineCounter + 1;
                                end if;
                                if cnt5Pixles = 4 then -- count 5 pixle and skip to next box                                
                                    cnt5Pixles <= (others => '0');
                                    if boxIdx = 127 then
                                        boxIdx <= (others => '0');
                                    else
                                        boxIdx <= boxIdx + 1;
                                    end if;
                                else
                                    cnt5Pixles <= cnt5Pixles + 1;
                                end if;
                            else
                                isMsb <= '1';

                                if isBuffer1Full = '0' then
                                    line1_pBoxs(to_integer(boxIdx)).redSum   <= line1_pBoxs(to_integer(boxIdx)).redSum    + ("000000" & pixleData(15 downto 12));
                                    line1_pBoxs(to_integer(boxIdx)).greenSum <= line1_pBoxs(to_integer(boxIdx)).greenSum  + ("000000" & pixleData(10 downto 8) & DIN(7));
                                    line1_pBoxs(to_integer(boxIdx)).blueSum  <= line1_pBoxs(to_integer(boxIdx)).blueSum   + ("000000" & DIN(4 downto 1));
                                else
                                    line2_pBoxs(to_integer(boxIdx)).redSum   <= line2_pBoxs(to_integer(boxIdx)).redSum    + ("000000" & pixleData(15 downto 12));
                                    line2_pBoxs(to_integer(boxIdx)).greenSum <= line2_pBoxs(to_integer(boxIdx)).greenSum  + ("000000" & pixleData(10 downto 8) & DIN(7));
                                    line2_pBoxs(to_integer(boxIdx)).blueSum  <= line2_pBoxs(to_integer(boxIdx)).blueSum   + ("000000" & DIN(4 downto 1));
                                end if;
                            end if;
                        else
                            if HS = '0' then -- reset pixle in line counter wehn hs is low
                                if PixleInLineCounter = 640 then -- count lines and 8 line boxs

                                    if lineCounter(2 downto 0) = "111" then    -- look for 8 lines finish 
                                        if lineCounter(3) = '0' then
                                            isLine1BoxsFull <= '1';
                                            isBuffer1Full <= '1';
                                        else
                                            isLine2BoxsFull <= '1';
                                            isBuffer1Full <= '0';
                                        end if;
                                    end if;

                                    lineCounter <= lineCounter + 1;
                                end if;
                                isStartLine <= '0';
                                PixleInLineCounter <= (others => '0');
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


                ------------------------------------- FILTER CALC
                if isLine1BoxsFull = '1' then -- process 8 lines box 1
                    case filterState is
                        when FILTER_INIT_ST =>
                            filterState <= AVG_COLOR_ST;
                            stepCounter <= (others => '0');
                            tempNumber <= (others => '0');
                        when AVG_COLOR_ST => -- avarage rgb color (div by 40)
                            if filterBoxIdx < 128 then
                                case stepCounter is
                                    when "0000000000" =>
                                        A <= "00" & const_DivBy40val;
                                        B <= "00000000" & line1_pBoxs(filterBoxIdx).redSum;
                                    when "0000000001"  =>
                                        B <= "00000000" & line1_pBoxs(filterBoxIdx).greenSum;
                                        if filterBoxIdx > 0 then
                                            line1_pBoxs(filterBoxIdx-1).density <= P(19 downto 16);
                                        end if;
                                    when "0000000010"  =>
                                        B <= "00000000" & line1_pBoxs(filterBoxIdx).blueSum;
                                    when "0000000011"  =>
                                        line1_pBoxs(filterBoxIdx).redAvg <= P(19 downto 16);
                                        tempNumber <= x"0" & P(19 downto 16);
                                        B <= (others => '0') ;
                                    when "0000000100"  =>
                                        line1_pBoxs(filterBoxIdx).greenAvg <= P(19 downto 16);
                                        tempNumber <= tempNumber + P(19 downto 16);
                                    when "0000000101"  =>
                                        line1_pBoxs(filterBoxIdx).blueAvg <= P(19 downto 16);
                                        A <= "00" & const_DivBy03val;
                                        tempNumber <= tempNumber + P(19 downto 16);
                                    when "0000000110"  =>
                                        B <= "0000000000" & tempNumber;
                                    when "0000000111"  =>
                                        if filterBoxIdx < 127 then
                                            B <= (others => '0');
                                        end if;
                                    when "0000001000"  =>
                                    when "0000001001"  =>
                                        line1_pBoxs(filterBoxIdx).density <= P(19 downto 16);
                                        filterBoxIdx <= filterBoxIdx +1;
                                    when others => stepCounter <= (others => '0');
                                end case;

                                if stepCounter = 7 and filterBoxIdx < 127 then
                                    stepCounter <= (others => '0');   -- avarage the next box
                                    filterBoxIdx <= filterBoxIdx + 1;
                                elsif stepCounter < 10 then
                                    stepCounter <= stepCounter +1;
                                end if;
                            else
                                filterBoxIdx <= 0;    -- done all boxes
                                stepCounter <= (others => '0');
                                filterState <= SEND_TO_BRAM_ST;

                                wea <= (others => '1');
                                lineInBox_wr <= (others => '0');
                                pixleInBox_wr <= (others => '0');
                                boxIdx_wr <= (others => '0');

                            end if;

                        when SEND_TO_BRAM_ST =>
                            -- SEND_TO_BRAM_ST
                            -- loop for every pixle in line and for 8 lines
                            if pixleInBox_wr = 4 then
                                pixleInBox_wr <= (others => '0');
                                if boxIdx_wr < 127 then
                                    boxIdx_wr <= boxIdx_wr + 1;
                                else
                                    lineInBox_wr <= lineInBox_wr +1;
                                    boxIdx_wr <= (others => '0');
                                end if;
                            else
                                pixleInBox_wr <= pixleInBox_wr +1;

                            end if;

                            if lineInBox_wr < 8 then -- Finish 8 lines 
                                -- SET RGB DATA to write 
                                if fonts(to_integer(unsigned(line1_pBoxs(to_integer(unsigned(boxIdx_wr))).density)))(to_integer(unsigned(lineInBox_wr )))(to_integer(unsigned(pixleInBox_wr))) = '1' then
                                    dataWrite <=    line1_pBoxs(to_integer(unsigned(boxIdx_wr))).redAvg & line1_pBoxs(to_integer(unsigned(boxIdx_wr))).greenAvg & line1_pBoxs(to_integer(unsigned(boxIdx_wr))).blueAvg;
                                else
                                    -- store BLACK PIXLE
                                    dataWrite <= (others=>'0');
                                end if;
                                -- set BRAM address to write
                                wrAddressCounter <= wrAddressCounter + 1;
                            else
                                wea <= (others => '0');
                                filterState <= END_FILTER_ST;
                            end if;
                        when END_FILTER_ST =>
                            isLine1BoxsFull <= '0';
                            for idx in 0 to line1_pBoxs'length - 1 loop -- Clear buffer 1
                                line1_pBoxs(idx).redSum     <= (others => '0');
                                line1_pBoxs(idx).greenSum   <= (others => '0');
                                line1_pBoxs(idx).blueSum    <= (others => '0');
                                line1_pBoxs(idx).redAvg     <= (others => '0');
                                line1_pBoxs(idx).greenAvg   <= (others => '0');
                                line1_pBoxs(idx).blueAvg    <= (others => '0');
                                line1_pBoxs(idx).density    <= (others => '0');
                            end loop;
                            filterState <= FILTER_INIT_ST;
                        when others =>
                            filterState <= FILTER_INIT_ST;
                    end case;
                elsif isLine2BoxsFull = '1' then -- process 8 lines box 2 ------------------------------------- BUFFER 2 JOB
                    case filterState is
                        when FILTER_INIT_ST =>
                            filterState <= AVG_COLOR_ST;
                            stepCounter <= (others => '0');
                            tempNumber <= (others => '0');
                        when AVG_COLOR_ST => -- avarage rgb color (div by 40)
                            if filterBoxIdx < 128 then
                                case stepCounter is
                                    when "0000000000" =>
                                        A <= "00" & const_DivBy40val;
                                        B <= "00000000" & line2_pBoxs(filterBoxIdx).redSum;
                                    when "0000000001"  =>
                                        B <= "00000000" & line2_pBoxs(filterBoxIdx).greenSum;
                                        if filterBoxIdx > 0 then
                                            line2_pBoxs(filterBoxIdx-1).density <= P(19 downto 16);
                                        end if;
                                    when "0000000010"  =>
                                        B <= "00000000" & line2_pBoxs(filterBoxIdx).blueSum;
                                    when "0000000011"  =>
                                        line2_pBoxs(filterBoxIdx).redAvg <= P(19 downto 16);
                                        tempNumber <= x"0" & P(19 downto 16);
                                        B <= (others => '0') ;
                                    when "0000000100"  =>
                                        line2_pBoxs(filterBoxIdx).greenAvg <= P(19 downto 16);
                                        tempNumber <= tempNumber + P(19 downto 16);
                                    when "0000000101"  =>
                                        line2_pBoxs(filterBoxIdx).blueAvg <= P(19 downto 16);
                                        A <= "00" & const_DivBy03val;
                                        tempNumber <= tempNumber + P(19 downto 16);
                                    when "0000000110"  =>
                                        B <= "0000000000" & tempNumber;
                                    when "0000000111"  =>
                                        if filterBoxIdx < 127 then
                                            B <= (others => '0');
                                        end if;
                                    when "0000001000"  =>
                                    when "0000001001"  =>
                                        line2_pBoxs(filterBoxIdx).density <= P(19 downto 16);
                                        filterBoxIdx <= filterBoxIdx +1;
                                    when others => stepCounter <= (others => '0');
                                end case;

                                if stepCounter = 7 and filterBoxIdx < 127 then
                                    stepCounter <= (others => '0');   -- avarage the next box
                                    filterBoxIdx <= filterBoxIdx + 1;
                                elsif stepCounter < 10 then
                                    stepCounter <= stepCounter +1;
                                end if;
                            else
                                filterBoxIdx <= 0;    -- done all boxes
                                stepCounter <= (others => '0');
                                filterState <= SEND_TO_BRAM_ST;

                                wea <= (others => '1');
                                lineInBox_wr <= (others => '0');
                                pixleInBox_wr <= (others => '0');
                                boxIdx_wr <= (others => '0');

                            end if;

                        when SEND_TO_BRAM_ST =>
                            -- SEND_TO_BRAM_ST
                            -- loop for every pixle in line and for 8 lines
                            if pixleInBox_wr = 4 then
                                pixleInBox_wr <= (others => '0');
                                if boxIdx_wr < 127 then
                                    boxIdx_wr <= boxIdx_wr + 1;
                                else
                                    lineInBox_wr <= lineInBox_wr +1;
                                    boxIdx_wr <= (others => '0');

                                end if;
                            else
                                pixleInBox_wr <= pixleInBox_wr +1;

                            end if;

                            if lineInBox_wr < 8 then -- Finish 8 lines 
                                -- SET RGB DATA to write 
                                if fonts(to_integer(unsigned(line2_pBoxs(to_integer(unsigned(boxIdx_wr))).density)))(to_integer(unsigned(lineInBox_wr )))(to_integer(unsigned(pixleInBox_wr))) = '1' then
                                    dataWrite <=    line2_pBoxs(to_integer(unsigned(boxIdx_wr))).redAvg & line2_pBoxs(to_integer(unsigned(boxIdx_wr))).greenAvg & line2_pBoxs(to_integer(unsigned(boxIdx_wr))).blueAvg;
                                else
                                    -- store BLACK PIXLE
                                    dataWrite <= (others=>'0');
                                end if;
                                -- set BRAM address to write
                                wrAddressCounter <= wrAddressCounter + 1;
                            else
                                wea <= (others => '0');
                                filterState <= END_FILTER_ST;
                            end if;
                        when END_FILTER_ST =>
                            isLine2BoxsFull <= '0';
                            for idx in 0 to line2_pBoxs'length - 1 loop -- Clear buffer 1
                                line2_pBoxs(idx).redSum     <= (others => '0');
                                line2_pBoxs(idx).greenSum   <= (others => '0');
                                line2_pBoxs(idx).blueSum    <= (others => '0');
                                line2_pBoxs(idx).redAvg     <= (others => '0');
                                line2_pBoxs(idx).greenAvg   <= (others => '0');
                                line2_pBoxs(idx).blueAvg    <= (others => '0');
                                line2_pBoxs(idx).density    <= (others => '0');
                            end loop;
                            filterState <= FILTER_INIT_ST;
                        when others =>
                            filterState <= FILTER_INIT_ST;
                    end case;
                end if;
            end if;

        end if;
    end process;

    addressWrite <= wrAddressCounter;


end Behavioral;


