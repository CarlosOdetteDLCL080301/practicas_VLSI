library ieee;
use ieee.std_logic_1164.all;

entity AL is
	port(
		esUA	:	in		std_logic;
		a,b	:	in		std_logic_vector(2 downto 0);
		sel	:	in		std_logic_vector(1 downto 0);
		cin	:	in		std_logic;
		sal	:	out	std_logic_vector(2 downto 0);
		cout	:	out	std_logic
	);
end;

architecture arq_AL of AL is
	signal salida_mux_4x1	:	std_logic_vector(2 downto 0);
	begin
		u1	:	entity work.mux_4x1(arq_mux_4x1) port map(b,sel,salida_mux_4x1);
		u2	:	entity work.sumador_restador(arq_sumador_restador) port map(esUA,a, salida_mux_4x1,cin, sal, cout);
end;