library ieee;
use ieee.std_logic_1164.all;

entity conta3display is
	port(
		clk			:	in		std_logic;
		ssg0			:	out	std_logic_vector(6 downto 0);
		ssg1			:	out	std_logic_vector(6 downto 0);
		ssg2			:	out	std_logic_vector(6 downto 0);
		banderaSal	:	out	std_logic --No la utilizo
	);
end entity;

architecture arq_conta3display of conta3display is
	signal	bandera	:	std_logic;
	signal	conteo	:	integer range 0 to 9;
	begin
		u4	:	entity	work.conta2display(arq_conta2display)	port map(clk, ssg0, ssg1, bandera);
		u5	:	entity	work.cont(arq_cont)							port map(bandera, conteo, banderaSal);
		u6	:	entity	work.ss7(arq_ss7)								port map(conteo, ssg2);
end architecture;