library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.ALL;

entity DSP_Calc is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           DATA_IN_A : in STD_LOGIC_VECTOR (15 downto 0);
           DATA_IN_B : in STD_LOGIC_VECTOR (15 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (19 downto 0));
end DSP_Calc;

architecture Behavioral of DSP_Calc is
COMPONENT dsp_macro_0
  PORT (
    CLK : IN STD_LOGIC;
    SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    C : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;

COMPONENT dsp_div
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

    signal dataInA : std_logic_vector (17 downto 0) := (others =>'0');
    signal dataInB : std_logic_vector (17 downto 0) := (others =>'0');
    signal dataInC : std_logic_vector (47 downto 0) := (others =>'0');
    signal dataOut : std_logic_vector (47 downto 0) := (others =>'0');
    signal opSel   : std_logic_vector (1 downto 0) := (others =>'0');
    
    signal DSPSUB_A : STD_LOGIC_VECTOR(17 DOWNTO 0) := (others =>'0');
    signal DSPSUB_B : STD_LOGIC_VECTOR(17 DOWNTO 0) := (others =>'0');
    signal DSPSUB_P : STD_LOGIC_VECTOR(35 DOWNTO 0) := (others =>'0');
    
    constant ln : integer := 16-1;
    signal iteration   : integer range 0 to ln := 0;
    signal D  : std_logic_vector (ln downto 0) := (others => '0');
    signal Q  : std_logic_vector (ln downto 0) := (others => '0');
    signal N  : std_logic_vector (ln downto 0) := (others => '0');
    signal divRes : std_logic_vector (ln downto 0) := (others => '0');
    signal isResDivValid : std_logic := '0';
    TYPE STATE_TYPE IS (RESET_ST, INIT_ST, STEP1, STEP1_5, STEP2, STEP2_5,STEP3, STEP3_5, STEP4, STEP4_5, STEP5, DONE_ST);
    SIGNAL state   : STATE_TYPE := RESET_ST;
      
begin
    DSP_ADD_SUB_MUL : dsp_macro_0 port map(CLK => CLK, SEL => opSel, A => dataInA, B => dataInB, C => dataInC,
            P => dataOut);
    DSP_DIV_U1: dsp_div port map(CLK => CLK, A => DSPSUB_A, B => DSPSUB_B, P => DSPSUB_P );
         
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                dataInA <= (others => '0');
                dataInB <= (others => '0');
                dataInC <= (others => '0');
                opSel   <= (others => '0');
            else
                case SEL is
                    when "000" => -- ADD A+C
                        opSel <= "00";
                        dataInA <= "00" & DATA_IN_A;
                        dataInB <= (others => '0');
                        dataInC <= X"00000000" &  DATA_IN_B;                    
                    when "001" => -- SUB A-C 
                        opSel <= "01";
                        dataInA <=  "00" & DATA_IN_A;
                        dataInB <= (others => '0');
                        dataInC <=  X"00000000" & DATA_IN_B; 
                    when "010" => -- MUL A*B
                        opSel <= "10";
                        dataInA <=  "00" & DATA_IN_A;
                        dataInB <=  "00" & DATA_IN_B;
                        dataInC <= (others => '0');
                    when "011" => 
                        opSel <= "11";
                    when others => opSel <= "00";
                end case;
            end if;
        end if;
    end process;
    
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                N <= X"04E2";
                DSPSUB_A <= (others => '0');
                DSPSUB_B <= (others => '0');
                iteration <= 0;
                D <= X"000A";
                state <= RESET_ST;
            else
                case state is
                    when RESET_ST =>
                        iteration <= 0;
                        DSPSUB_A(ln downto 0) <= D;
                        DSPSUB_B(ln) <= '1';
                        divRes <= (others => '0');
                        isResDivValid <= '0';
                        state <= INIT_ST;
                    when INIT_ST =>          
                        state <= STEP1;
                    when STEP1 =>
                        if DSPSUB_P > N then
                            DSPSUB_B(ln - iteration) <= '0';
                        end if;
                        if iteration < ln then
                            DSPSUB_B(ln - 1 - iteration) <= '1';
                        end if;
                        state <= STEP1_5;
                    when STEP1_5 =>                        
                        if iteration = (ln) then
                            divRes <= DSPSUB_B(ln downto 0);
                            isResDivValid <= '1';
                            state <= DONE_ST;
                        else
                            iteration <= iteration +1;
                            state <= STEP1;                             
                        end if; 
                    when DONE_ST =>
                        state <= RESET_ST;
                    when others => 
                        state <= RESET_ST;
                end case;
            end if;
        end if;
    end process;   
            
    DATA_OUT <= dataOut(19 downto 0);
end Behavioral;
