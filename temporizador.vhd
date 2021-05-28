----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Engineer: Engineer:Eduardo Alves Leonardo 082170006
-- João Victor Vieira 082170018	
-- Jonathan Citolino  082170019
-- William Stofel 082170033
-- Module Name:    temporizador - Behavioral 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity temporizador is
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
end temporizador;

architecture Behavioral of temporizador is		
		component ContadorDeClock
				port(clock: in std_logic;
				  contadorClock : out std_logic);
		end component;
		
		component ContadorDezenaSegundos
				port ( en,clk,clr,contadorDeClock,startAndPause : in  std_logic;
						resetaValor : in std_logic;
						tiraDoProximo :out std_logic;
						entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
						saida : out STD_LOGIC_VECTOR(3 DOWNTO 0) );
		end component;
		
		component ContadorSegundos 
				port ( en,clk,clr,startAndPause,decrementa : in  std_logic;
						resetaValor : in std_logic;
						entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
						tiraDoProximo,resetaDezenaSegundos :out std_logic;
						saida : out STD_LOGIC_VECTOR(3 DOWNTO 0) );
		end component;
		
		

		
		
		component ContadorDezenaMinutos 
					port(
							en,clk,clr,startAndPause,decrementa : in  std_logic;
							resetaValor : in std_logic;
							entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
							tiraDoProximo,resetaSegundos :out std_logic;
							saida : out STD_LOGIC_VECTOR(3 DOWNTO 0)

							);
		end component;
		
		component ContadorMinutos 
				port(
						en,clk,clr,startAndPause,decrementa : in  std_logic;
						entrada : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
						resetaDezenaMinutos:out std_logic;
						saida : out STD_LOGIC_VECTOR(3 DOWNTO 0)

		);
		end component;
		
		
		
		component Display7seg 
				Port ( clock: in std_logic;
							entradaDezenaSegundos,entradaSegundos,entradaDezenaMinutos,entradaMinutos : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
							dp1,dp2,dp3,dp4 : out std_logic;
						  saida7 : out STD_LOGIC_VECTOR(6 DOWNTO 0) );
		end component;
		
		
		component ValidaTermino 
		port(
					entradaDezenaSegundos,entradaSegundos,entradaDezenaMinutos,entradaMinutos : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
					contadorDeClock: in std_logic;
					saidaLed : out std_logic
				
				);
		end component;
		
	signal saidaContador: std_logic;
	signal ledfim: std_logic := '0';
	signal resetDezenaSegundos,resetSegundos,resetDezenaMinutos: std_logic := '0';
	signal tiraDoSegundos,TiraDezenaMinutos,TiraMinutos: std_logic := '0';
	signal disp1,disp2,disp3,disp4: std_logic_vector(3 downto 0 );

begin

		p1 : ContadorDeClock
		port map(clock => clockSistema,
					contadorClock => saidaContador
				  );
				  
		p2 : ContadorDezenaSegundos
		port map(en => en1,
					clk => clockSistema,
					clr => clrSistema,
					startAndPause => startandpause,
					contadorDeClock => saidaContador,
					resetaValor => resetDezenaSegundos,
					tiraDoProximo => tiraDoSegundos,
					entrada => entradaSistema, 
					saida => disp1
				  );
	
		p3 : ContadorSegundos
			port map(en => en2,
					clk => clockSistema,
					clr => clrSistema,
					startAndPause => startandpause,
					decrementa => tiraDoSegundos,
					resetaValor => resetSegundos,
					tiraDoProximo => TiraDezenaMinutos,
					entrada => entradaSistema, 
					resetaDezenaSegundos => resetDezenaSegundos,
					saida => disp2
				  );
				  
				  
		p4 : ContadorDezenaMinutos
			port map(en => en3,
					clk => clockSistema,
					clr => clrSistema,
					startAndPause => startandpause,
					decrementa => TiraDezenaMinutos,
					resetaValor => resetDezenaMinutos,
					tiraDoProximo => TiraMinutos,
					entrada => entradaSistema, 
					resetaSegundos => resetSegundos,
					saida => disp3
				  );

		p5 : ContadorMinutos
			port map(en => en4,
					clk => clockSistema,
					clr => clrSistema,
					startAndPause => startandpause,
					decrementa => TiraMinutos,
					entrada => entradaSistema, 
					resetaDezenaMinutos => resetDezenaMinutos,
					saida => disp4
				  );
					
		p6 : Display7seg 
		   Port map(clock => clockSistema,
						entradaDezenaSegundos => disp1,
						entradaSegundos => disp2,
						entradaDezenaMinutos => disp3,
						entradaMinutos => disp4,
						dp1 => led1,
						dp2 => led2,
						dp3 => led3,
						dp4 => led4,
						saida7  => saida);
						
						
		p7 : ValidaTermino 
		port map(
					entradaDezenaSegundos => disp1,
					entradaSegundos => disp2,
					entradaDezenaMinutos => disp3,
					entradaMinutos => disp4,
					contadorDeClock => saidaContador,
					saidaLed => ledfim
				
				);
	
	ledfinal <= ledfim;
		
end Behavioral;

