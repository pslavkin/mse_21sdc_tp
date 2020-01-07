library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--junto 8 bytes en uno, tomando solo el bit 0 de cada byte y lo mando por el axi master

entity join_8from2 is
    Port(  
           m_axis_tdata  : out STD_LOGIC_VECTOR (7 downto 0);
           m_axis_tvalid : out STD_LOGIC;
           m_axis_tlast  : out STD_LOGIC;
           m_axis_tready : in  STD_LOGIC;

           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);
           s_axis_tvalid : in  STD_LOGIC;
           s_axis_tlast  : in  STD_LOGIC;
           s_axis_tready : out STD_LOGIC;

           clk           : in  STD_LOGIC;
           rst           : in  STD_LOGIC);
end join_8from2;

architecture Behavioral of join_8from2 is
type shiftState is (waitingSvalid, waitingMready);
   signal state:shiftState := waitingSvalid;
begin

   shift_reg:process (clk) is
      variable bitCounter :integer range 0 to 8;
   begin
      if rising_edge(clk) then
         if rst = '0' then
            state         <= waitingSvalid;
            s_axis_tready <= '1';
            m_axis_tvalid <= '0';
            m_axis_tdata  <= (others => '0');
            bitCounter    := 0;
         else
            case state is
               when waitingSvalid =>
                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo
                     m_axis_tdata(bitCounter)   <= s_axis_tdata(0);
                     m_axis_tdata(bitCounter+1) <= s_axis_tdata(1);
                     bitCounter                 := bitCounter + 2;
                     if bitCounter = 8 then                             --porque bit voy?   
                        s_axis_tready <= '0';                              --entonces yo tambien estoy listo
                        m_axis_tvalid <= '1';                           --y ya no tengo mas nada
                        state         <= waitingMready;
                     end if;
                  end if;
               when waitingMready =>
                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..
                        m_axis_tvalid <= '0';
                        s_axis_tready <= '1';
                        bitCounter    := 0;
                        state         <= waitingSvalid;
                  end if;
            end case;
         end if;
      end if;
   end process shift_reg;

end Behavioral;
