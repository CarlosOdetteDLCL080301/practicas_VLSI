library ieee;
use ieee.std_logic_1164.all;

entity movimiento is
	port(
		clk, pi,pf,inc,dec,rst: in std_logic;
		ancho: out integer
	);
end entity;

architecture arq_movimiento of movimiento is
	signal valor: integer range 0 to 200;
	begin
		process(clk,pi,pf,inc,dec)
			begin
				if(rst='1') then
					valor<=75;
				elsif(pi='1') then
					valor<=55; --5.5% -1 ms
				elsif (pf = '1') then
					valor<=95; -- 9.5% -2 ms
				elsif(inc='1' and valor <= 95) then
					valor<=valor + 1; --
				elsif(dec = '1' and valor>=55) then
					valor<=valor - 1;
					
				end if;
				ancho <= valor;
		end process;
end architecture;
