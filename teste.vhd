--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:20:57 05/26/2021
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/teste.vhd
-- Project Name:  TEMPORIZADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: temporizador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY teste IS
END teste;
 
ARCHITECTURE behavior OF teste IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT temporizador
    PORT(
         entradaSistema : IN  std_logic_vector(3 downto 0);
         en1 : IN  std_logic;
         en2 : IN  std_logic;
         en3 : IN  std_logic;
         en4 : IN  std_logic;
         clrSistema : IN  std_logic;
         clockSistema : IN  std_logic;
         startandpause : IN  std_logic;
         ledfinal : OUT  std_logic;
         led1 : OUT  std_logic;
         led2 : OUT  std_logic;
         led3 : OUT  std_logic;
         led4 : OUT  std_logic;
         saida : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entradaSistema : std_logic_vector(3 downto 0) := (others => '0');
   signal en1 : std_logic := '0';
   signal en2 : std_logic := '0';
   signal en3 : std_logic := '0';
   signal en4 : std_logic := '0';
   signal clrSistema : std_logic := '0';
   signal clockSistema : std_logic := '0';
   signal startandpause : std_logic := '0';

 	--Outputs
   signal ledfinal : std_logic;
   signal led1 : std_logic;
   signal led2 : std_logic;
   signal led3 : std_logic;
   signal led4 : std_logic;
   signal saida : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clockSistema_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: temporizador PORT MAP (
          entradaSistema => entradaSistema,
          en1 => en1,
          en2 => en2,
          en3 => en3,
          en4 => en4,
          clrSistema => clrSistema,
          clockSistema => clockSistema,
          startandpause => startandpause,
          ledfinal => ledfinal,
          led1 => led1,
          led2 => led2,
          led3 => led3,
          led4 => led4,
          saida => saida
        );

   -- Clock process definitions
   clockSistema_process :process
   begin
		clockSistema <= '0';
		wait for clockSistema_period/100;
		clockSistema <= '1';
		wait for clockSistema_period/100;
   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clockSistema_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

proc : process
		begin
				en1 <= '1';
				entradaSistema <= "1001";
				
				
				wait for 10ns;
				
				en1 <= '0';
				
				wait for 10 ns;
				
				en2 <= '1';
				entradaSistema <= "0011";
				
				wait for 10 ns;
				
				en2 <= '0';
				
				wait for 10 ns;
				
				en3 <= '1';
				entradaSistema <= "0001";
				
				wait for 10 ns;
				
				en3 <= '0';
		
				
				wait for 10 ns;
				
				en4 <= '1';
				entradaSistema <= "0001";
				
				wait for 10 ns;
				
				en4 <= '0';
				startandpause <= '1';
				
		wait for 10  ms ;
		

end process;

END;
