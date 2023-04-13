library ieee;
use ieee.std_logic_1164.all;
entity Ejercicio63 is
	port(
		clk	: in std_logic;
		T0,T1	: inout std_logic;
		Q0,Q1	: inout std_logic
	);
end entity;

architecture arq_Ejercicio63 of Ejercicio63 is
	signal d0,d1	: std_logic;
	begin
		u1 : entity work.combinacional(arq_combinacional) 	port map (Q0,Q1,d0,d1);
		u2 : entity work.FFD(arq_FFD) 							port map(d0, clk, Q0);
		u3 : entity work.FFD(arq_FFD) 							port map(d1, clk, Q1);
		
end architecture;