library ieee;
use ieee.std_logic_1164.all;

entity sumador_restador is
	port (
		a,b	:	in		std_logic_vector(2 downto 0);
		sel	:	in		std_logic_vector(1 downto 0);
		cin	:	in		std_logic;
		sal	:	out	std_logic_vector(2 downto 0);
		cout	:	out	std_logic
	);
end;

architecture arq_sumador_restador of sumador_restador is
	signal salidaMux:std_logic_vector(2 downto 0);
	begin
		u1: entity work.mux_2x1 (arq_mux_2x1) port map(b,sel,salidaMux);
		u2: entity work.sumador (arq_sumador) port map(a, salidaMux, cin, sal, cout);
	end;