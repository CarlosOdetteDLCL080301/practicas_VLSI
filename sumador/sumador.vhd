--sumador
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.all;
use ieee.std_logic_UNSIGNED.all;

entity sumador is
	port(
		a,b		:	in		std_logic_vector(2 downto 0);
		cin		:	in		std_logic;
		salsum	:	out	std_logic_vector(2 downto 0);
		cout		:	out 	std_logic
	);
	end sumador;
	
architecture arq_sumador of sumador is
	signal mid	:	std_logic_vector(3 downto 0);
	begin
		mid		<=	a + b + cin;
		salsum	<= mid(2 downto 0);
		cout <= mid(3);
	end arq_sumador;