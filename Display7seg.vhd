----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo 082170006
-- Jo?o Victor Vieira 082170018	
-- Jonathan Citolino  082170019
-- William Stofel 082170033
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity Display7seg is
	 Port ( clock: in std_logic;
				entradaDezenaSegundos,entradaSegundos,entradaDezenaMinutos,entradaMinutos : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
				dp1,dp2,dp3,dp4 : out std_logic;
			  saida7 : out STD_LOGIC_VECTOR(6 DOWNTO 0) );
end Display7seg;

architecture Behavioral of Display7seg is
	signal selDisplay : std_logic_vector(3 downto 0):="0000";
	signal estado : std_logic_vector(1 downto 0):="00";
   signal count: INTEGER := 0;
begin
	
	
	
	
	selecao : process(clock)
		begin 
			if(clock'event and clock='1') then
					if count < 100000  then
						count <= count +1;
					elsif estado < "11" then
						  estado <= estado + '1';
						  	count <= 0;
					else
						estado <= "00";
						count <= 0;
					end if;
			
			end if;
	
	end process;
	
	mostra : process(estado,entradaMinutos,entradaDezenaMinutos,entradaSegundos,entradaDezenaSegundos)
	
	begin
	
		case estado is
			when "00" => selDisplay <= entradaMinutos;
			when "01" => selDisplay <= entradaDezenaMinutos;
			when "10" => selDisplay <= entradaSegundos;
			when others => selDisplay <= entradaDezenaSegundos;
		end case;

	end process;
	
	
   Selecionado : process(estado)
	
	begin
	
			if(estado = "00") then
				dp1 <= '0';
				dp2 <= '1';
				dp3 <= '1';
				dp4 <= '1';
			elsif(estado = "01") then
				dp1 <= '1';
				dp2 <= '0';
				dp3 <= '1';
				dp4 <= '1';
			elsif(estado = "10") then
				dp1 <= '1';
				dp2 <= '1';
				dp3 <= '0';
				dp4 <= '1';
			elsif(estado = "11") then
				dp1 <= '1';
				dp2 <= '1';
				dp3 <= '1';
				dp4 <= '0';
			end if;
			
	end process;


		with selDisplay select
			saida7 <= "0000001" when "0000", -- 0
						  "1001111" when "0001", -- 1
						  "0010010" when "0010", -- 2
						  "0000110" when "0011", -- 3
						  "1001100" when "0100", -- 4
						  "0100100" when "0101", -- 5
						  "0100000" when "0110", -- 6
						  "0001111" when "0111", -- 7
						  "0000000" when "1000", -- 8
						  "0001100" when "1001", -- 9
						  "0001000" when "1010", -- A
						  "1100000" when "1011", -- B
						  "0110000" when "1100", -- C
						  "1000010" when "1101", -- D
						  "0110000" when "1110", -- E
						  "0111000" when "1111", -- F
						  "1111111" when others;
		
	

end Behavioral;

