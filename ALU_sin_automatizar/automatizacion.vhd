library ieee;
use ieee.std_logic_1164.all;

entity automatizacion is
	port(
		clk	:in std_logic;
		stop	:in std_logic;
		reset	:in std_logic;
		bit3	:out std_logic;
		bit2	:out std_logic;
		bit1	:out std_logic;
		bit0	:out std_logic
	);
end automatizacion;

architecture arq_automatizacion of automatizacion is
	signal clkl:std_logic;
	signal contador:integer range 0 to 25000000	:=0;	--divf
	signal conteo:integer:=0;	--cont
	begin
	
	--Divisor de tiempo
	process(clk)--entrada
		begin
			if(rising_edge(clk) and stop = '1') then
				if(contador=25000000) then
					contador<=0;
					clkl		<=	not clkl;--salida
				else
					contador	<=	contador	+	1;
				end if;
			end if;
	end process;
	
	--Contador
	process(clkl)
		begin
			if(rising_edge(clkl)) then
				if(conteo=15 or reset = '0') then
					conteo <= 0;
				else
					conteo <= conteo + 1;
				end if;
			end if;
	end process;
	
	
	--salidas para display
	with conteo select
	bit3	<=	'0' when	0,
				'0' when	1,
				'0' when	2,
				'0' when	3,
				'0' when	4,
				'0' when	5,
				'0' when	6,
				'0' when	7,
				'1' when	8,
				'1' when	9,
				'1' when	10,
				'1' when	11,
				'1' when	12,
				'1' when	13,
				'1' when	14,
				'1' when	15,
				'0' when	others;
	
	with conteo select
	bit2	<=	'0' when	0,
				'0' when	1,
				'0' when	2,
				'0' when	3,
				'1' when	4,
				'1' when	5,
				'1' when	6,
				'1' when	7,
				'0' when	8,
				'0' when	9,
				'0' when	10,
				'0' when	11,
				'1' when	12,
				'1' when	13,
				'1' when	14,
				'1' when	15,
				'0' when	others;
				
	with conteo select
	bit1	<=	'0' when	0,
				'0' when	1,
				'1' when	2,
				'1' when	3,
				'0' when	4,
				'0' when	5,
				'1' when	6,
				'1' when	7,
				'0' when	8,
				'0' when	9,
				'1' when	10,
				'1' when	11,
				'0' when	12,
				'0' when	13,
				'1' when	14,
				'1' when	15,
				'0' when	others;
				
	with conteo select
	bit0	<=	'0' when	0,
				'1' when	1,
				'0' when	2,
				'1' when	3,
				'0' when	4,
				'1' when	5,
				'0' when	6,
				'1' when	7,
				'0' when	8,
				'1' when	9,
				'0' when	10,
				'1' when	11,
				'0' when	12,
				'1' when	13,
				'0' when	14,
				'1' when	15,
				'0' when	others;
				
end architecture;
				
	