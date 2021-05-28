--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:29:13 05/27/2021
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/N2- ARQUITETURA/TEMPORIZADOR/teste_asm.vhd
-- Project Name:  TEMPORIZADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UC_ASM_temporizador
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
 
ENTITY teste_asm IS
END teste_asm;
 
ARCHITECTURE behavior OF teste_asm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC_ASM_temporizador
    PORT(
         L1 : IN  std_logic;
         L2 : IN  std_logic;
         L3 : IN  std_logic;
         L4 : IN  std_logic;
         EN1 : OUT  std_logic;
         EN2 : OUT  std_logic;
         EN3 : OUT  std_logic;
         EN4 : OUT  std_logic;
         CLK_UC : IN  std_logic;
         RST_UC : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal L1 : std_logic := '0';
   signal L2 : std_logic := '0';
   signal L3 : std_logic := '0';
   signal L4 : std_logic := '0';
   signal CLK_UC : std_logic := '0';
   signal RST_UC : std_logic := '0';

 	--Outputs
   signal EN1 : std_logic;
   signal EN2 : std_logic;
   signal EN3 : std_logic;
   signal EN4 : std_logic;

   -- Clock period definitions
   constant CLK_UC_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC_ASM_temporizador PORT MAP (
          L1 => L1,
          L2 => L2,
          L3 => L3,
          L4 => L4,
          EN1 => EN1,
          EN2 => EN2,
          EN3 => EN3,
          EN4 => EN4,
          CLK_UC => CLK_UC,
          RST_UC => RST_UC
        );

   -- Clock process definitions
   CLK_UC_process :process
   begin
		CLK_UC <= '0';
		wait for CLK_UC_period/2;
		CLK_UC <= '1';
		wait for CLK_UC_period/2;
   end process;
 

--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_UC_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;
--
--     RST_UC <= '1','0' AFTER 10 NS, '1' AFTER 50 NS, '0' AFTER 60 NS ;
--		L1 <= '0','1' AFTER 10 NS, '0' AFTER 20 NS,'1' AFTER 70 NS, '0' AFTER 80 NS;
--		L2 <= '0','1' AFTER 20 NS , '0' AFTER 30 NS, '1' AFTER 60 NS , '0' AFTER 70 NS, '1' AFTER 80 NS , '0' AFTER 90 NS;
--      L3 <= '0','1' AFTER 30 NS , '0' AFTER 40 NS, '1' AFTER 90 NS , '0' AFTER 100 NS;
--		L4 <= '0','1' AFTER 40 NS , '0' AFTER 50 NS, '1' AFTER 100 NS , '0' AFTER 110 NS;
     RST_UC <= '1','0' AFTER 10 NS , '1' AFTER 160 NS, '0' AFTER 170 NS ;
		L1 <= '0','1' AFTER 50 NS, '0' AFTER 70 NS, '1' AFTER 200 NS, '0' AFTER 220 NS ;
		L2 <= '0','1' AFTER 80 NS , '0' AFTER 90 NS, '1' AFTER 170 NS, '0' AFTER 190 NS, '1' AFTER 230 NS, '0' AFTER 250 NS  ;
      L3 <= '0','1' AFTER 100 NS , '0' AFTER 120 NS, '1' AFTER 260 NS, '0' AFTER 280 NS ;
	   L4 <= '0','1' AFTER 130 NS , '0' AFTER 150 NS, '1' AFTER 290 NS, '0' AFTER 310 NS ;

END;
