library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_STD.ALL;

entity cordic_iter is --{{{
      generic(
             N     : natural := 16; --Ancho de la palabra
             SHIFT : natural := 1); -- en el for generate va tomando valores en funcion de la posicion en el pipeline 
      port(
          m_dataX : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_dataY : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_dataZ : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_valid : out STD_LOGIC;
          m_inv   : out STD_LOGIC;
          m_ready : in  STD_LOGIC;

          s_dataX : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataY : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataZ : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataT : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_valid : in  STD_LOGIC;
          s_ready : out STD_LOGIC;
          s_inv   : in  STD_LOGIC;

          clk           : in  STD_LOGIC;
          rst           : in  STD_LOGIC);
end cordic_iter; --}}}

architecture Behavioral of cordic_iter is
   type   stateType is (waitingValid,waitingReady);
   signal state:       stateType := waitingValid;
begin
   cordic_iter_proc:process (clk) is
      variable y_signed : signed (N-1 downto 0);
      variable x_signed : signed (N-1 downto 0);
      variable z_signed : signed (N-1 downto 0);
      variable t_signed : signed (N-1 downto 0);
   begin
      if rising_edge(clk) then
         if rst = '0' then
            s_ready  <= '1';
            m_inv    <= '0';
            m_valid  <= '0';
            state    <= waitingValid;
            m_dataX  <= (others => '0');
            m_dataY  <= (others => '0');
            m_dataZ  <= (others => '0');
            y_signed := (others => '0');
            x_signed := (others => '0');
            z_signed := (others => '0');
            t_signed := (others => '0');
         else
            case state is
               when waitingValid =>
                  if s_valid = '1' then
                     x_signed := signed(s_dataX);
                     y_signed := signed(s_dataY);
                     z_signed := signed(s_dataZ);
                     t_signed := signed(s_dataT);
                     if y_signed < 0 then
                        m_dataX <= std_logic_vector(x_signed-shift_right(y_signed,SHIFT));
                        m_dataY <= std_logic_vector(y_signed+shift_right(x_signed,SHIFT));
                        m_dataZ <= std_logic_vector(z_signed-t_signed);
                     else
                        m_dataX <= std_logic_vector(x_signed+shift_right(y_signed,SHIFT));
                        m_dataY <= std_logic_vector(y_signed-shift_right(x_signed,SHIFT));
                        m_dataZ <= std_logic_vector(z_signed+t_signed);
                     end if;
                     m_inv   <= s_inv;
                     m_valid <= '1';
                     if m_ready = '0' then
                        s_ready <= '0';
                        state   <= waitingReady;
                     end if;
                  else
                     m_valid <= '0';
                  end if;
               when waitingReady =>
                  if m_ready = '1' then
                     m_valid <= '0';
                     s_ready <= '1';
                     state   <= waitingValid;
                  end if;
            end case;
         end if;
      end if;
   end process cordic_iter_proc;

end Behavioral;
