library ieee;
use ieee.std_logic_1164.all;

entity states is
	port(
		clk,estacion,alto,emergencia,direccion:in std_logic;
		alto2,alto1,izquierda,derecha:out std_logic
	);
end entity;

architecture arq_states of states is
	signal	clkl:std_logic:='0';--divf
	signal	contador:integer range 0 to 25000000:=0;
	subtype	estados is std_logic;
	constant	s0:estados:='0';
	constant	s1:estados:='1';
	signal	estado_actual, estado_siguiente:estados;
	begin
	process(clk)--entrada
	begin
		if(rising_edge(clk)) then
			if(contador=25000000) then
				contador<=0;
				clkl<=not clkl;--salida
			else
				contador<=contador+1;
			end if;
		end if;
	end process;

	process(clkl)
	begin
		if(rising_edge(clkl)) then
			estado_actual<=estado_siguiente;
		end if;
	end process;
	
	process(estado_actual)
	begin
		case estado_actual is
			when s0 =>
				if(estacion='1') then
					estado_siguiente<=s1;
					alto2<= '1';
					alto1<= '0';
				else
					estado_siguiente<=s0;
					 alto2<='0';
					 alto1<='0';
				end if;
				
			when s1 =>
				if (alto='1') then
					estado_siguiente<=s1;
					alto1<='0';
					alto2<='1';
				elsif(emergencia='1') then
					alto1<='1';
					alto2<='1';
					estado_siguiente<=s1;
				elsif(direccion = '1') then
					izquierda<= '1';
					derecha<= '0';
					alto2<= '0';
					alto1<= '0';
					estado_siguiente<=s0;
				elsif(direccion = '0') then
					izquierda<= '0';
					derecha<= '1';
					alto2<= '0';
					alto1<=	'0';
					estado_siguiente<=s0;
				end if;
			end case;
	end process;
end architecture;