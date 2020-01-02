library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity paralell2axi is
    Port(  
           emi     : in  STD_LOGIC_VECTOR (31 downto 0);
           emo     : out STD_LOGIC_VECTOR (31 downto 0);
           m_data  : out STD_LOGIC_VECTOR (7  downto 0);
           m_valid : out STD_LOGIC;
           m_last  : out STD_LOGIC;
           m_ready : in  STD_LOGIC;

           s_data  : in  STD_LOGIC_VECTOR (7  downto 0);
           s_valid : in  STD_LOGIC;
           s_last  : in  STD_LOGIC;
           s_ready : out STD_LOGIC;
           clk     : in STD_LOGIC;

           leds    : out STD_LOGIC_VECTOR (3 downto 0);
           rst     : in STD_LOGIC);
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
                  m_valid      <= '1';
                  last_m_valid <= '1';
               end if;
            else 
               m_valid <= '0';
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
                  s_ready      <= '1';
                  last_s_ready <= '1';
               end if;
            else 
               s_ready <= '0';
               if(emi(13)='0') then
                  last_s_ready <= '0';
               end if;
            end if;
         end if;
      end if;
   end process s_one_shot;

   m_data            <= emi(7 downto 0);
   --`m_valid           <= emi(8);
   m_last            <= emi(9);
   emo(10)           <= m_ready;

   emo(7   downto 0) <= s_data(7 downto 0);
   emo(11)           <= s_valid;
   emo(12)           <= s_last;
   --s_ready           <= emi(13);

   leds              <= emi(17  downto 14);
end Behavioral;
