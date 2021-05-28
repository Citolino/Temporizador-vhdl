----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo, João Victor Vieira, Jonathan Citolino e William Stofel
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity ContadorMinutos is

		port(
			en,clk,clr,startAndPause,decrementa : in  std_logic;
			entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
			resetaDezenaMinutos:out std_logic;
			saida : out STD_LOGIC_VECTOR(3 DOWNTO 0)

		);
end ContadorMinutos;

architecture Behavioral of ContadorMinutos is

signal saidaregis: std_logic_vector(3 downto 0):= "0000";
signal resetaAnterior: std_logic := '0';
begin
process(clk)
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
						resetaAnterior <= '1';
					end if;
	
				else
					resetaAnterior <= '0';
				end if;
		end if;				
end process;
	saida <= saidaregis;
	resetaDezenaMinutos <= resetaAnterior;
end Behavioral;

