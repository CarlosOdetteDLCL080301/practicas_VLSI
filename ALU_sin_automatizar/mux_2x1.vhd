library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux_2x1 is
	port(
		sel:in std_logic;
		a,b:in std_logic_vector(2 downto 0);
		salida_mux_2x1:out std_logic_vector(2 downto 0)
	);
end entity;

architecture arq_mux_2x1 of mux_2x1 is
	begin
		process(sel, a, b)
			begin
				if sel = '0' then
					salida_mux_2x1 <= a;
				else
					salida_mux_2x1 <= b;
				end if;
		end process;
end architecture;