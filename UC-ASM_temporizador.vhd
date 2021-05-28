----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo, João Victor Vieira, Jonathan Citolino e William Stofel
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UC_ASM_temporizador is
port (L1,L2,L3,L4 : in std_logic;
			EN1,EN2,EN3,EN4: OUT STD_LOGIC;
			CLK_UC : IN STD_LOGIC;
			RST_UC : IN STD_LOGIC);
end UC_ASM_temporizador;

architecture Behavioral of UC_ASM_temporizador is
	type TIPO_ESTADO is (EST_0, EST_1, EST_2, EST_3, EST_4, EST_5, EST_6, EST_7, EST_8);
	signal ESTADO_ATUAL, PROXIMO_ESTADO : TIPO_ESTADO;
begin
	SINCRONISMO: process(CLK_UC, RST_UC)
	begin

		if(RST_UC='1') then
			ESTADO_ATUAL <= EST_0;
		
		elsif(CLK_UC 'event and CLK_UC='1') then
				ESTADO_ATUAL <= PROXIMO_ESTADO;

		end if;
	
	end process;
	TRANSICAO: PROCESS(ESTADO_ATUAL,L1,L2,L3,L4)
	BEGIN
		PROXIMO_ESTADO <= ESTADO_ATUAL;
		case (ESTADO_ATUAL) is
	
		when EST_0 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			if L1='1' then
				
				PROXIMO_ESTADO <= EST_1;
				
			end if;

	when EST_1 =>
		
			EN1 <= '1';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			
			PROXIMO_ESTADO <= EST_2;
				
			
		
	when EST_2 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			
			if L2='1' then
				
				PROXIMO_ESTADO <= EST_3;
				
			end if;

	when EST_3 =>
		
			EN1 <= '0';
			EN2 <= '1';
			EN3 <= '0';
			EN4 <= '0';
			
			PROXIMO_ESTADO <= EST_4;

	when EST_4 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			
			if L3='1' then
				
				PROXIMO_ESTADO <= EST_5;
				
			end if;
			
	when EST_5 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '1';
			EN4 <= '0';
			
			PROXIMO_ESTADO <= EST_6;
	when EST_6 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			
			if L4='1' then
				
				PROXIMO_ESTADO <= EST_7;
				
			end if;
	when EST_7 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '1';
			
			PROXIMO_ESTADO <= EST_8;
	when EST_8 =>
		
			EN1 <= '0';
			EN2 <= '0';
			EN3 <= '0';
			EN4 <= '0';
			
			
		when others => 

				PROXIMO_ESTADO <= EST_0;
	
		end case;
	end process;

end Behavioral;

