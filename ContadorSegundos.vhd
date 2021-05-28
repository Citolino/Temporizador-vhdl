----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo 082170006
-- João Victor Vieira 082170018	
-- Jonathan Citolino  082170019
-- William Stofel 082170033
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;



entity ContadorSegundos is
port ( en,clk,clr,startAndPause,decrementa : in  std_logic;
		resetaValor : in std_logic;
		entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
		tiraDoProximo,resetaDezenaSegundos :out std_logic;
		saida : out STD_LOGIC_VECTOR(3 DOWNTO 0) );
end ContadorSegundos;

architecture Behavioral of ContadorSegundos is
signal saidaregis: std_logic_vector(3 downto 0):= "0000";
signal tiraproximo,resetaAnterior: std_logic := '0';
begin
process(clk,resetaValor,decrementa,startAndPause)
		begin
		
		if (clk'event and clk = '1') then
				if clr = '1' then
					saidaregis <= "0000";	
				elsif (en = '1' and entrada <= "1001") then
					saidaregis <= entrada;
				elsif (en = '1' and entrada > "1001") then
					saidaregis <= "1001";
				elsif(decrementa = '1' and startAndPause = '1' and resetaAnterior = '0') then
					if(saidaregis >= "0001") then
						saidaregis <= saidaregis - '1';
						tiraproximo <= '0';
						resetaAnterior <= '1';
					else
						tiraproximo <= '1';
					end if;
	
				else
					resetaAnterior <= '0';
				end if;
		end if;		
		
	if(resetaValor ='1') then
					saidaregis <= "0101";
					tiraproximo <= '0';
	end if;
end process;
	saida <= saidaregis;
	tiraDoProximo <= tiraproximo; 
	resetaDezenaSegundos <= resetaAnterior;
end Behavioral;

