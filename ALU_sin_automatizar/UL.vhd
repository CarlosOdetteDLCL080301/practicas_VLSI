library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity UL is
	port(
		a,b		:	in		std_logic_vector(2 downto 0);
		sel		:	in		std_logic_vector(1 downto 0);
		sal_mux	:	out	std_logic_vector(2 downto 0)
	);
end entity;

architecture arq_UL of UL is
	begin
		with sel select
			sal_mux<=a	and	b	when	"00",
						a	or		b	when	"01",
						a	xor	b	when	"10",
						not a when others;
			
end;