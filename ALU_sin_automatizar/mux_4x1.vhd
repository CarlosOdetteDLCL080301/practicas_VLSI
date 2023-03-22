library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux_4x1 is
	port(
		b			:	in		std_logic_vector(2 downto 0);
		sel		:	in		std_logic_vector(1 downto 0);
		sal_mux	:	out	std_logic_vector(2 downto 0)
	);
end entity mux_4x1;

architecture arq_mux_4x1 of mux_4x1 is
	begin
		with sel select
			sal_mux	<=	(others=>'0')	when "00",
							not b				when "01",
							b					when "10",
							(others=>'1')	when "11";
end;