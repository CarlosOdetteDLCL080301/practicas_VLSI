library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1 is port(
	b			:	in		std_logic_vector(2 downto 0);
	sel		:	in		std_logic_vector(1 downto 0);
	salida_b	:	out	std_logic_vector(2 downto 0)
);
end entity mux_2x1;

architecture arq_mux_2x1 of mux_2x1 is
	begin
		with sel select
			salida_b	<=(others=>'1') 	when "00",
							not b		when "01",
							b					when "10",
							(others=>'0') 	when others;
	end architecture arq_mux_2x1;
	