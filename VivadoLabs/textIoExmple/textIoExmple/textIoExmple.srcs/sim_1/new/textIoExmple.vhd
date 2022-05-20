library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity textIoExmple is
--  Port ( );
end textIoExmple;

architecture Behavioral of textIoExmple is
    signal c_out : character;
    signal status_out : boolean;    
begin

--    process --Write file
--        variable str : string(1 to 24) := "***> test String to file";
--        variable ch  : character := '-';
--        variable intValue : integer range 0 to 100 := 45;
--        file fp : text open WRITE_MODE is "C:\GitHub\FPGA_LEARNING\VivadoLabs\textIoExmple\fileOutput.txt";
--        variable lineOut: line;
--    begin
--        wait for 1 ps;
--        write(lineOut, time'image(now) & ": " & str);
--        writeline(fp, lineOut);
--        wait for 50 ns;
        
--        write(lineOut, time'image(now) & ": " & ch & ' '& integer'image(intValue));
--        writeline(fp, lineOut);
--        wait;
--    end process;
    
    process --Read file
        variable ch : character := '?';
        file fp : text open READ_MODE is "C:\GitHub\FPGA_LEARNING\VivadoLabs\textIoExmple\fileOutput.txt";
        variable lineOfTextFromFile : line;
        variable status : boolean := FALSE;
    begin
        while ( not endfile(fp)) loop
            readline(fp,lineOfTextFromFile);
            for I in 1 to lineOfTextFromFile'length loop
                read(lineOfTextFromFile, ch, status);
                status_out <= status;
                if(status) then
                    c_out <= ch;
                else
                    c_out <= '?';
                end if;
                wait for 10 ns;
            end loop;--End for loop        
        end loop;--end while loop
        
        report "End of file" severity FAILURE;
    end process;


end Behavioral;
