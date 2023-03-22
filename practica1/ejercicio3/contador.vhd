library ieee;
use ieee.std_logic_1164.all;

entity contador is
	port(
		clk		:	in		std_logic;
		ssg		:	out	std_logic_vector(6 downto 0);
		bandera	:	out	std_logic
	);
end entity;

architecture arq_contador of contador is
	signal	clkl	:	std_logic;
	signal	a		:	integer range 0 to 9;
	begin
		u1	:	entity	work.divf(arq_divf)	port map(clk,clkl);
		u2	:	entity	work.cont(arq_cont)	port map(clkl,a,bandera);
		u3	:	entity	work.ss7(arq_ss7)		port map(a,ssg);
end architecture;