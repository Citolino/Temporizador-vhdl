----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    14:07:35 05/21/2021 
-- Module Name:    registrador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ContadorDezenaSegundos is
port ( en,clk,clr,contadorDeClock : in  std_logic;
		resetaValor : in std_logic;
		tiraDoProximo : in std_logic;
		entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida : out STD_LOGIC_VECTOR(3 DOWNTO 0) );
end registrador;

architecture Behavioral of ContadorDezenaSegundos is


signal saidaregis: std_logic_vector(3 downto 0):= "0000";
begin
process(clk)
		begin
		
		if (clk'event and clk = '1') then
				if clr = '1' then
					saidaregis <= "0000";	
				elsif (en = '1' and entrada <= "1001") then
					saidaregis <= entrada;
				elsif (en = '1' and entrada > "1001")
					saidaregis <= "1001";
				elsif(contadorDeClock = '1' )
					if(saidaregis >= "0001") then
						saidaregis <= saidaregis - '1';
						tiraDoProximo <= '0';
					elsif(saidaregis = "0000")
						tiraDoProximo <= '1';
					end if;
				elsif(resetaValor ='1')
					saidaregis <= "1001";
				end if;
		end if;		
end process;
	saida <= saidaregis;
end Behavioral;

