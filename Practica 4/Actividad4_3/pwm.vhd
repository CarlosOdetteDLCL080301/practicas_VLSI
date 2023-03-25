library ieee;
use ieee.std_logic_1164.all;

entity pwm is
	port(
		clk:in std_logic;
		led:out std_logic_vector(8 downto 0)
	);
end entity;

architecture arq_pwm of pwm is
		signal clkl: std_logic_vector(8 downto 0);
		begin
			u1_1:entity work.divf(arq_divf) generic map(250) port map(clk,clkl(0));
			u1_2:entity work.senal(arq_senal) port map(clkl(0),250,led(0));
			u2_1:entity work.divf(arq_divf) generic map(8333333) port map(clk,clkl(1));
			u2_2:entity work.senal(arq_senal) port map(clkl(0),250,led(1));
			u3_1:entity work.divf(arq_divf) generic map(49000000) port map(clk,clkl(2));
			u3_2:entity work.senal(arq_senal) port map(clkl(0),250,led(2));
			u4_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(3));
			u4_2:entity work.senal(arq_senal) port map(clkl(0),250,led(3));
			u5_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(4));
			u5_2:entity work.senal(arq_senal) port map(clkl(0),250,led(4));
			u6_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(5));
			u6_2:entity work.senal(arq_senal) port map(clkl(0),250,led(5));
			u7_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(6));
			u7_2:entity work.senal(arq_senal) port map(clkl(0),250,led(6));
			u8_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(7));
			u8_2:entity work.senal(arq_senal) port map(clkl(0),250,led(7));
			u9_1:entity work.divf(arq_divf) generic map(25000) port map(clk,clkl(8));
			u9_2:entity work.senal(arq_senal) port map(clkl(0),250,led(8));
			
end architecture;