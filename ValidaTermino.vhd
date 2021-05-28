----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo, João Victor Vieira, Jonathan Citolino e William Stofel
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
	
use IEEE.STD_LOGIC_1164.ALL;

entity ValidaTermino is
	port(
		entradaDezenaSegundos,entradaSegundos,entradaDezenaMinutos,entradaMinutos : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
		contadorDeClock: in std_logic;
		saidaLed : out std_logic
	
	);
end ValidaTermino;

architecture Behavioral of ValidaTermino is
	signal saida : std_logic;
begin

	process(contadorDeClock,entradaDezenaSegundos,entradaSegundos,entradaDezenaMinutos,entradaMinutos)
		begin
			if(contadorDeClock = '1') then
				if(entradaDezenaSegundos = "0000" and entradaSegundos="0000" and entradaDezenaMinutos="0000" and entradaMinutos ="0000") then
					saida <= '1';
				else
					saida <= '0';
				end if;
			end if;
		end process;
	saidaLed <= saida;
end Behavioral;

