----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo 082170006
-- João Victor Vieira 082170018	
-- Jonathan Citolino  082170019
-- William Stofel 082170033
-- Module Name:    SD_COMPLETO - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
	   
use IEEE.STD_LOGIC_1164.ALL;

entity SD_COMPLETO is
	 Port ( CLK_SD : in  STD_LOGIC;
				  RST_SD : in  STD_LOGIC;
				  L1 : in  STD_LOGIC;
				  L2 : in  STD_LOGIC;
				  L3 : in  STD_LOGIC;
				  L4 : in  STD_LOGIC;
				  entradaSistema : in  STD_LOGIC_VECTOR (3 downto 0);
				  startandpause: in std_logic;
				  ledFim : out std_logic;
				  Disp1,Disp2,Disp3,Disp4 : out std_logic;
				  saida7seg : out STD_LOGIC_VECTOR(6 DOWNTO 0));
end SD_COMPLETO;

architecture Behavioral of SD_COMPLETO is


	component UC_ASM_temporizador
			port (L1,L2,L3,L4 : in std_logic;
					EN1,EN2,EN3,EN4: OUT STD_LOGIC;
					CLK_UC : IN STD_LOGIC;
					RST_UC : IN STD_LOGIC);
	end component;
	
	
	component temporizador 
		port (
			entradaSistema : in std_logic_vector (3 downto 0);
			en1,en2,en3,en4: in std_logic;
			clrSistema: in std_logic;
			clockSistema : in std_logic;
			startandpause: in std_logic;
			ledfinal : out std_logic;
			led1,led2,led3,led4 : out std_logic;
			saida : out STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	end component;
	
	signal enable01: std_logic;
	signal enable02: std_logic;
	signal enable03: std_logic;
	signal enable04: std_logic;
	
begin

		UC : UC_ASM_temporizador
			port map(L1 => L1,
					L2 => L2,
					L3 => L3,
					L4 => L4, 
					EN1 => enable01,
					EN2 => enable02,
					EN3 => enable03,
					EN4 => enable04,
					CLK_UC => CLK_SD, 
					RST_UC => RST_SD);
		
		FDTemporizador : temporizador 
		port map(
			entradaSistema => entradaSistema, 
			en1 => enable01,
			en2 => enable02,
			en3 => enable03,
			en4 => enable04,
			clrSistema => RST_SD,
			clockSistema => CLK_SD,  
			startandpause => startandpause,
			ledfinal => ledFim,
			led1 => Disp1,
			led2 => Disp2,
			led3 => Disp3,
			led4 => Disp4,
			saida => saida7seg
		);

end Behavioral;

