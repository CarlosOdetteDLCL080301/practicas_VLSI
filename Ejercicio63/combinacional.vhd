library ieee;
use ieee.std_logic_1164.all;

entity combinacional is
	port(
		Q0,Q1 : inout std_logic;
		D0,D1	: inout std_logic
	);
end combinacional;

architecture arq_combinacional of combinacional is
	begin
		D1 <= Q1 xor Q0;
		D0 <= not Q1;
end architecture arq_combinacional;