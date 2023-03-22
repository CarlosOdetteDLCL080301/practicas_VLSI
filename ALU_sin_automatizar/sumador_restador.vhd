library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;--sin signo

entity sumador_restador is
	port(
		esUA		:	in		std_logic;
		a,b		:	in		std_logic_vector(2 downto 0);
		cin		:	in		std_logic;
		salsum	:	out	std_logic_vector(2 downto 0);
		cout		:	out	std_logic
	);
end entity sumador_restador;

architecture arq_sumador_restador of sumador_restador is
	signal mid	:	std_logic_vector(3 downto 0);
	begin
		mid		<=	('0' & a) + ('0' & b) + cin;
		process(esUA)
			begin
			if(esUA = '1') then
				cout	<=	'0';
			else
				cout	<=	mid(3);
			end if;
		end process;
		
		--cout	<=	mid(3);
		salsum	<=	mid(2 downto 0);
end architecture arq_sumador_restador;