library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--tomo 1 byte y mando 8 bytes en donde en cada uno de salida vale el bit0
-- lo hago para entrar al convolucionador que recibe de a 1 but

entity slice_2from8 is
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
end slice_2from8;

architecture Behavioral of slice_2from8 is
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
         else
            case state is
               when waitingSvalid =>
                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo
                     s_axis_tready   <= '0';
                     bitCounter      := 0;
                     m_axis_tdata(0) <= s_axis_tdata(bitCounter);    --pongo el dato
                     m_axis_tdata(1) <= s_axis_tdata(bitCounter+1);    --pongo el dato
                     m_axis_tvalid   <= '1';                         --como puedo mandar, le avoso que tengo dato
                     state           <= waitingMready;               --cambio de estado, y le doy un clk para que ponga el dato
                  end if;
               when waitingMready =>
                  if m_axis_tready = '1' then                           --lo puedo empezar a mandar al otro lado?
                     bitCounter := bitCounter+2;                     --incremento
                     if bitCounter < 8 then                             --perfecto, porque bit voy?   
                        m_axis_tdata(0) <= s_axis_tdata(bitCounter);    --pongo el dato
                        m_axis_tdata(1) <= s_axis_tdata(bitCounter+1);    --pongo el dato
                     else
                        m_axis_tvalid <= '0' ;                          --y aviso que no tengo mas nada que mandar state         <= waitingSvalid;                 --termine de mandar, vuelvo a esperar
                        s_axis_tready <= '1';
                        state         <= waitingSvalid;                    --cambio de estado, y le doy un clk para que ponga el dato
                     end if;
                  end if;
            end case;
         end if;
      end if;
   end process shift_reg;

end Behavioral;
