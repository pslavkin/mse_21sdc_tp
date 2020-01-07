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
             xi    : in  std_logic_vector (N-1 downto 0);
             yi    : in  std_logic_vector (N-1 downto 0);
             zi    : in  std_logic_vector (N-1 downto 0);
             ci    : in  std_logic_vector (N-1 downto 0);
             dv_o  : out std_logic;
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
   begin
      if rising_edge(clk) then
         if rst = '0' then
             dv_o  <= '0';
             xip1  <= (others=>'0');
             yip1  <= (others=>'0');
             zip1  <= (others=>'0');
             state <= waitingEnable;
         else
            case state is
               when waitingEnable =>
                  if en_i = '1' then
                     zip1  <= (others => '1');
                     dv_o  <= '1';
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
