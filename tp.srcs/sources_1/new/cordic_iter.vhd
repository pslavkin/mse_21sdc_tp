library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_STD.ALL;

entity cordic_iter is --{{{
      generic(
             N     : natural := 16; --Ancho de la palabra
             SHIFT : natural := 1); -- en el for generate va tomando valores en funcion de la posicion en el pipeline 
      port(
             clk   : in  std_logic;
             rst   : in  std_logic;
             en_i  : in  std_logic;
             inv_i : in  std_logic;
             xi    : in  std_logic_vector (N-1 downto 0);
             yi    : in  std_logic_vector (N-1 downto 0);
             zi    : in  std_logic_vector (N-1 downto 0);
             ci    : in  std_logic_vector (N-1 downto 0);
             dv_o  : out std_logic;
             inv_o : out std_logic;
             xip1  : out std_logic_vector (N-1 downto 0);
             yip1  : out std_logic_vector (N-1 downto 0);
             zip1  : out std_logic_vector (N-1 downto 0)
          );
end cordic_iter; --}}}

architecture Behavioral of cordic_iter is
   type stateType is (waitingValid,waitingEnable);
   signal state: stateType := waitingEnable;
begin
   cordic_iter_proc:process (clk) is
      variable yis: signed (15 downto 0);
      variable xis: signed (15 downto 0);
      variable zis: signed (15 downto 0);
      variable cis: signed (15 downto 0);
   begin
      if rising_edge(clk) then
         if rst = '0' then
            dv_o  <= '0';
            inv_o <= '0';
            state <= waitingEnable;
            xip1  <= (others => '0');
            yip1  <= (others => '0');
            zip1  <= (others => '0');
            yis   := (others=>'0');
            xis   := (others=>'0');
            zis   := (others=>'0');
            cis   := (others=>'0');
         else
            case state is
               when waitingEnable =>
                  if en_i = '1' then
                     yis := signed(yi);
                     xis := signed(xi);
                     zis := signed(zi);
                     cis := signed(ci);
                     if yis < 0 then
                        xip1 <= std_logic_vector(xis-shift_right(yis,SHIFT));
                        yip1 <= std_logic_vector(yis+shift_right(xis,SHIFT));
                        zip1 <= std_logic_vector(zis-cis);
                        else
                           xip1 <= std_logic_vector(xis+shift_right(yis,SHIFT));
                           yip1 <= std_logic_vector(yis-shift_right(xis,SHIFT));
                           zip1 <= std_logic_vector(zis+cis);
                        end if;
                     dv_o  <= '1';
                     inv_o <= inv_i;
                     state <= waitingValid;
                  end if;
               when waitingValid =>
                  dv_o  <= '0';
                  state <= waitingEnable;
            end case;
         end if;
      end if;
   end process cordic_iter_proc;

end Behavioral;
