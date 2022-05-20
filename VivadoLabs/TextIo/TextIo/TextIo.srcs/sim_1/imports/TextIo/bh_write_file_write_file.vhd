
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.STD_LOGIC_unSIGNED.all;
LIBRARY std;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;
ENTITY bh_write_file IS
    PORT(
        VIDEO_CLK                 : IN     std_logic;
        VIDEO_OUT_FIELD_ENABLE    : IN     std_logic;
        VIDEO_OUT_LINE_ENABLE     : IN     std_logic;
        VIDEO_OUT_LINE_SYNC       : IN     std_logic;
        reset                     : IN     std_logic;
        EZOOM_DATA_OUTPUT         : IN      std_logic_vector(7 downto 0 )
    );


END ENTITY bh_write_file;

--
ARCHITECTURE write_file OF bh_write_file IS
    signal  EZOOM_DATA_OUTPUT1         :  std_logic_vector(7 downto 0 );
    signal  VIDEO_OUT_LINE_SYNC1 :std_logic;
    signal  bh_num :std_logic_vector(10 downto 0);
    file output_file1 :text open write_mode is "C:\GitHub\FPGA_LEARNING\VivadoLabs\TextIo\TextIo\median_out_nir.txt";
BEGIN

    process( VIDEO_CLK, RESET)
    begin
        if RESET = '1' then
            VIDEO_OUT_LINE_SYNC1 <='0';

        elsif rising_edge(VIDEO_CLK) then
            VIDEO_OUT_LINE_SYNC1 <= VIDEO_OUT_LINE_SYNC;
        end if ;
    end process;

    process( VIDEO_CLK, RESET)

        variable l: line;
        variable temp_output : integer := 0;
    begin
        if RESET = '1' then
            temp_output 	 := 0;
            bh_num <= (others=>'0');


        elsif VIDEO_CLK = '1' and VIDEO_CLK'event then
            --if NOW >20 MS THEN
            EZOOM_DATA_OUTPUT1  <=         EZOOM_DATA_OUTPUT;
            if VIDEO_OUT_LINE_SYNC ='1' and VIDEO_OUT_FIELD_ENABLE ='1' and VIDEO_OUT_LINE_SYNC1 ='0' then

                writeline(output_file1,l);

                bh_num <= (others=>'0');






            elsif VIDEO_OUT_FIELD_ENABLE='1' and  VIDEO_OUT_LINE_ENABLE ='1' and   ( bh_num <"1010000000" )then
                -- IF (bh_num(0)='0') then
                temp_output := conv_integer(unsigned( EZOOM_DATA_OUTPUT + 1 ));
                write(l,temp_output);
                write(l,' ');
                bh_num <=    bh_num+1;
                --			else	 
                --             temp_output := conv_integer(signed( EZOOM_DATA_OUTPUT1 ));
                --             write(l,temp_output); 
                --             write(l,' '); 
                --             bh_num <=    bh_num+1;  
                --         end if ;
            end if;

        end if;

        --END IF;

    end process;



END ARCHITECTURE write_file;
