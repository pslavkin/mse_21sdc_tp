library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity paralell2axi is
    Port(  
           emi          : in  STD_LOGIC_VECTOR (31 downto 0);
           emo          : out STD_LOGIC_VECTOR (31 downto 0);
           axi_m_tdata  : out STD_LOGIC_VECTOR (7  downto 0);
           axi_m_tvalid : out STD_LOGIC;
           axi_m_tlast  : out STD_LOGIC;
           axi_m_tready : in  STD_LOGIC;

           axi_s_tdata  : in  STD_LOGIC_VECTOR (7  downto 0);
           axi_s_tvalid : in  STD_LOGIC;
           axi_s_tlast  : in  STD_LOGIC;
           axi_s_tready : out STD_LOGIC;
           clk          : in  STD_LOGIC;

           leds         : out STD_LOGIC_VECTOR (3  downto 0);
           rst          : in  STD_LOGIC);
end paralell2axi;

architecture Behavioral of paralell2axi is
      signal last_m_valid: STD_LOGIC :='0';
      signal last_s_ready: STD_LOGIC :='0';
begin

   m_one_shot:process(clk) is
   begin
      if rising_edge(clk) then
         if rst='0' then
            last_m_valid <='0';
         else 
            if (last_m_valid = '0') then
               if(emi(8)='1') then
                  axi_m_tvalid <= '1';
                  last_m_valid <= '1';
               end if;
            else 
               axi_m_tvalid<= '0';
               if(emi(8)='0') then
                  last_m_valid <= '0';
               end if;
            end if;
         end if;
      end if;
   end process m_one_shot;

   s_one_shot:process(clk) is
   begin
      if rising_edge(clk) then
         if rst='0' then
            last_s_ready <='0';
         else 
            if (last_s_ready = '0') then
               if(emi(13)='1') then
                  axi_s_tready <= '1';
                  last_s_ready <= '1';
               end if;
            else 
               axi_s_tready<= '0';
               if(emi(13)='0') then
                  last_s_ready <= '0';
               end if;
            end if;
         end if;
      end if;
   end process s_one_shot;

   axi_m_tdata       <= emi(7 downto 0);
   --axi_m_tvalid      <= emi(8); --
   axi_m_tlast       <= emi(9);
   emo(10)           <= axi_m_tready;

   emo(7   downto 0) <= axi_s_tdata(7 downto 0);
   emo(11)           <= axi_s_tvalid;
   emo(12)           <= axi_s_tlast;
   --s_axi_s_tready      <= emi(13); --

   leds              <= emi(17  downto 14);
end Behavioral;
