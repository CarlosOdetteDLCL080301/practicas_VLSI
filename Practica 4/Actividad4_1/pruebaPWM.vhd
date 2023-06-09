library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pruebaPWM is
	Port(
		clk:in std_logic;
		duty:in std_logic_vector(3 downto 0):="0111";
		snl:out std_logic:='0'
	);
end entity;

architecture arq_pruebaPWM of pruebaPWM is
	signal conteo: std_logic_vector(3 downto 0):="0000";
	begin
		process(clk)
			begin
				if(rising_edge(clk)) then
					----  primer if  ----
					if(conteo = "1111") then
						conteo<="0000";
					else
						conteo<=conteo+"0001";
					end if;
					----  segundo if  ----
					if (conteo<=duty) then
						snl<='1';	
					else
						snl<='0';
					end if;
					
				end if;
			end process;
end architecture;	
		