----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo, João Victor Vieira, Jonathan Citolino e William Stofel
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ContadorDeClock is
	port(clock: in std_logic;
		  contadorClock : out std_logic);
end ContadorDeClock;

architecture Behavioral of ContadorDeClock is
	  signal Cont: integer := 0;
	  signal saida : std_logic;
	begin

		process(clock)
				begin
				
				if (clock'event and clock = '1') then
						if Cont < 50000000 then
							Cont <= Cont +1 ;	
							saida <= '0';
						else
							
							Cont <= 0 ;	
							saida <= '1';
						end if;
				end if;

		end process;
	contadorClock <= 		saida ;
end Behavioral;

