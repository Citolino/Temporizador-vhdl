----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:03 05/21/2021 
-- Design Name: 
-- Module Name:    Timer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Timer is
	port(
			segundos,segundos2,minuto,minuto2 : in std_logic(3 downto 0);
			contadorclock : in std_logic;
			disp1,disp2,disp3,disp4 : out std_logick(3 downto 0)
	
	);
end Timer;

architecture Behavioral of Timer is

begin
	process(contadorclock)
		
		if(contadorclock = '1') then
				if(segundos > "0001") then
					segundos <= segundos -1 ;
				else if (segundos = "0001") then
					segundos <= "0000";
				else
					if(segundos2 > = "0001") then
						segundos2 <= segundos2 -1;
						segundos <= "1001";
					else
						segundos2 <= "0000";
					   segundos <= "1001";
					end if;
				end if;
				
		end if;

	end process;

end Behavioral;

