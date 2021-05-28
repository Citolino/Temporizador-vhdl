--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:12:54 05/27/2021
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/teste_sd.vhd
-- Project Name:  TEMPORIZADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SD_COMPLETO
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
 
ENTITY teste_sd IS
END teste_sd;
 
ARCHITECTURE behavior OF teste_sd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SD_COMPLETO
    PORT(
         CLK_SD : IN  std_logic;
         RST_SD : IN  std_logic;
         L1 : IN  std_logic;
         L2 : IN  std_logic;
         L3 : IN  std_logic;
         L4 : IN  std_logic;
         entradaSistema : IN  std_logic_vector(3 downto 0);
         startandpause : IN  std_logic;
         ledFim : OUT  std_logic;
         Disp1 : OUT  std_logic;
         Disp2 : OUT  std_logic;
         Disp3 : OUT  std_logic;
         Disp4 : OUT  std_logic;
         saida7seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_SD : std_logic := '0';
   signal RST_SD : std_logic := '0';
   signal L1 : std_logic := '0';
   signal L2 : std_logic := '0';
   signal L3 : std_logic := '0';
   signal L4 : std_logic := '0';
   signal entradaSistema : std_logic_vector(3 downto 0) := (others => '0');
   signal startandpause : std_logic := '0';

 	--Outputs
   signal ledFim : std_logic;
   signal Disp1 : std_logic;
   signal Disp2 : std_logic;
   signal Disp3 : std_logic;
   signal Disp4 : std_logic;
   signal saida7seg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_SD_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SD_COMPLETO PORT MAP (
          CLK_SD => CLK_SD,
          RST_SD => RST_SD,
          L1 => L1,
          L2 => L2,
          L3 => L3,
          L4 => L4,
          entradaSistema => entradaSistema,
          startandpause => startandpause,
          ledFim => ledFim,
          Disp1 => Disp1,
          Disp2 => Disp2,
          Disp3 => Disp3,
          Disp4 => Disp4,
          saida7seg => saida7seg
        );

   -- Clock process definitions
   CLK_SD_process :process
   begin
		CLK_SD <= '0';
		wait for CLK_SD_period/100;
		CLK_SD <= '1';
		wait for CLK_SD_period/100;
   end process;
 

--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_SD_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

proc : process
		begin
				L1 <= '1';
				entradaSistema <= "1001";
				
				
				wait for 10ns;
				
				L1 <= '0';
				
				wait for 10 ns;
				
				L2 <= '1';
				entradaSistema <= "0011";
				
				wait for 10 ns;
				
				L2 <= '0';
				
				wait for 10 ns;
				
				L3 <= '1';
				entradaSistema <= "0001";
				
				wait for 10 ns;
				
				L3 <= '0';
		
				
				wait for 10 ns;
				
				L4 <= '1';
				entradaSistema <= "0001";
				
				wait for 10 ns;
				
				L4 <= '0';
				startandpause <= '1';
				
		wait for 10  ms ;
end process;
END;
