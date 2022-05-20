
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.STD_LOGIC_unSIGNED.all;
LIBRARY std;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY fpga_exp7 IS
    PORT(
        clk                 : IN     std_logic;
        clkx3                 : IN     std_logic;
        filed_enable       : IN     std_logic;
        line_enable         : IN     std_logic;
        line_sync           : IN     std_logic;
        reset                  : IN     std_logic;
        PRE_cmos_data         : OUT    std_logic_vector (7 DOWNTO 0)
    );

    -- Declarations

END fpga_exp7 ;

--
ARCHITECTURE bh_fpga_exp7 OF fpga_exp7 IS

    --file input_file1 :text open read_mode is "C:\UN_HBHY_NIR_CCD.txt";
    --file input_file1 :text open read_mode is "C:\data\nir_lesson\stu\exp_10\Yelement102_dirt.txt";
    file input_file1 :text open read_mode is "C:\GitHub\FPGA_LEARNING\VivadoLabs\TextIo\TextIo\Yelement102_dirt.txt";
    signal PRE_cmos_data1:std_logic_vector(7 DOWNTO 0);

BEGIN

    process(clk, RESET)
        variable l		: line;
        variable temp_input : integer;

    begin
        if RESET = '1' then
            PRE_cmos_data1 	<=(others=>'0') ;

        elsif clk = '1' and clk'event then
            if line_sync='1' and filed_enable='1' then
                if not(endfile(input_file1)) then
                    readline(input_file1,l);
                    PRE_cmos_data1 	<=(others=>'0') ;
                end if;

            elsif  filed_enable='1' and line_enable='1' then
                read(l,temp_input);
                PRE_cmos_data1 <=conv_std_logic_vector(temp_input,8);
            end if;

        end if;

    end process;

    -- PRE_cmos_data <=not(PRE_cmos_data1(7))&PRE_cmos_data1(6 DOWNTO 0);
    PRE_cmos_data <=(PRE_cmos_data1(7))&PRE_cmos_data1(6 DOWNTO 0);

END ARCHITECTURE bh_fpga_exp7;



