library ieee;
use ieee.std_logic_1164.all;

entity pwm is
	generic(
		num:integer:=25000000
	);
	port(
		clk:in std_logic;
		led:out std_logic_vector(8 downto 0)
	);
end entity;

architecture arq_pwm of pwm is
		signal clkl: std_logic;
		begin
			--Las siguientes lineas nos permiten controlar intensidad mayor/menor de un led con control de ciclo esta limitao maximo 1000
			--pero siempre y cuando se sea inferior a 1000 se notará un cambio en su luminiscencia
			--u1_1:entity work.divf(arq_divf) generic map(num) port map(clk,clkl);
			u1_2:entity work.senal(arq_senal) port map(clk,750,led(0));
			u2_2:entity work.senal(arq_senal) port map(clk,700,led(1));
			u3_2:entity work.senal(arq_senal) port map(clk,650,led(2));
			u4_2:entity work.senal(arq_senal) port map(clk,600,led(3));
			u5_2:entity work.senal(arq_senal) port map(clk,500,led(4));
			u6_2:entity work.senal(arq_senal) port map(clk,200,led(5));
			u7_2:entity work.senal(arq_senal) port map(clk,150,led(6));
			u8_2:entity work.senal(arq_senal) port map(clk,100,led(7));
			u9_2:entity work.senal(arq_senal) port map(clk,50,led(8));
end architecture;
