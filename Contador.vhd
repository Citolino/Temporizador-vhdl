----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo 082170006
-- João Victor Vieira 082170018	
-- Jonathan Citolino  082170019
-- William Stofel 082170033
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

