library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_STD.ALL;

entity mapper is --{{{
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
end mapper; --}}}

architecture Behavioral of mapper is
   type real_im_array is array (0 to 15) of integer range -128 to 127;
   constant real_table : real_im_array := (125 ,106 ,71  ,25  ,-25 ,-71 ,-106 ,-125 ,-125 ,-106 ,-71  ,-25  ,25   ,71   ,106 ,125);
   constant im_table   : real_im_array  := (25  ,71  ,106 ,125 ,125 ,106 ,71   ,25   ,-25  ,-71  ,-106 ,-125 ,-125 ,-106 ,-71 ,-25);

   type axiStates is (waitingSvalid, waitingMready);
   signal state      : axiStates := waitingSvalid;
   signal data2Map   :std_logic_vector ( 7 downto 0 ) ;

begin
   mapper_proc:process (clk) is --{{{
      variable bitCounter :natural range 0 to 8 ;
      variable index      :natural range 0 to 15;
   begin
      if rising_edge(clk) then
         if rst = '0' then
            state         <= waitingSvalid;
            s_axis_tready <= '1';
            m_axis_tvalid <= '0';
            m_axis_tdata  <= (others => '0');
            data2Map      <= (others => '0');
         else
            case state is
               when waitingSvalid =>
                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo
                     data2Map(bitCounter)   <= s_axis_tdata(0);
                     data2Map(bitCounter+1) <= s_axis_tdata(1);
                     bitCounter             := bitCounter + 2;
                     if bitCounter = 4 then                             --porque bit voy?   
                        index         := to_integer(unsigned(data2Map));
                        m_axis_tdata  <= std_logic_vector(to_signed(real_table(index),8));
                        s_axis_tready <= '0';                              --entonces yo tambien estoy listo
                        m_axis_tvalid <= '1';                           --y ya no tengo mas nada
                        bitCounter    := 0;
                        state         <= waitingMready;
                     end if;
                  end if;
               when waitingMready =>
                  if m_axis_tready = '1' then                      --lo puedo empezar a mandar al otro lado?
                     bitCounter := bitCounter+1;                   --incremento
                     if bitCounter < 2 then                        --perfecto, porque bit voy?   
                        m_axis_tdata  <= std_logic_vector(to_signed(im_table(index),8));
                     else
                        m_axis_tvalid <= '0' ;                     --y aviso que no tengo mas nada que mandar state         <= waitingSvalid;                 --termine de mandar, vuelvo a esperar
                        s_axis_tready <= '1';
                        bitCounter    := 0;
                        state         <= waitingSvalid;            --cambio de estado, y le doy un clk para que ponga el dato
                     end if;
                  end if;
               when others =>
            end case;
         end if;
      end if;
   end process mapper_proc; --}}}

end Behavioral;
