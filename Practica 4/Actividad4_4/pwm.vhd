library ieee;
use ieee.std_logic_1164.all;

entity pwm is
	generic(
		num:integer:=2500000
	);
	port(
		clk:in std_logic;
		led:out std_logic_vector(8 downto 0)
	);
end entity;

architecture arq_pwm of pwm is
		signal clkl,clkl_1,clkl_2,clkl_3,clkl_4,clkl_5,clkl_6,clkl_7,clkl_8: std_logic;
		begin
			--Las siguientes lineas nos permiten controlar intensidad mayor/menor de un led con control de ciclo esta limitao maximo 1000
			--pero siempre y cuando se sea inferior a 1000 se notará un cambio en su luminiscencia
			u1_1:entity work.divf(arq_divf) generic map(100000) port map(clk,clkl);
			u1_2:entity work.senal(arq_senal) port map(clkl,50,led(0));
			--u2_1:entity work.divf(arq_divf) generic map(2000) port map(clk,clkl_1);
			u2_2:entity work.senal(arq_senal) port map(clkl,100,led(1));
			--u3_1:entity work.divf(arq_divf) generic map(3000) port map(clk,clkl_2);
			u3_2:entity work.senal(arq_senal) port map(clkl,150,led(2));
			--u4_1:entity work.divf(arq_divf) generic map(4000) port map(clk,clkl_3);
			u4_2:entity work.senal(arq_senal) port map(clkl,200,led(3));
			--u5_1:entity work.divf(arq_divf) generic map(5000) port map(clk,clkl_4);
			u5_2:entity work.senal(arq_senal) port map(clkl,300,led(4));
			--u6_1:entity work.divf(arq_divf) generic map(6000) port map(clk,clkl_5);
			u6_2:entity work.senal(arq_senal) port map(clkl,400,led(5));
			--u7_1:entity work.divf(arq_divf) generic map(7000) port map(clk,clkl_6);
			u7_2:entity work.senal(arq_senal) port map(clkl,500,led(6));
			---u8_1:entity work.divf(arq_divf) generic map(8000) port map(clk,clkl_7);
			u8_2:entity work.senal(arq_senal) port map(clkl,600,led(7));
			--u9_1:entity work.divf(arq_divf) generic map(9000) port map(clk,clkl_8);
			u9_2:entity work.senal(arq_senal) port map(clkl,700,led(8));
			
end architecture;