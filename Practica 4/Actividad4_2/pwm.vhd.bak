library ieee;
use ieee.std_logic_1164.all;

entity pwm is
	port(
		clk:in std_logic;
		led:out std_logic
	);
end entity;

architecture arq_pwm of pwm is
		signal clkl: std_logic;
		begin
			u1:entity work:divf(arq_divf) generic map(25000) port map(clk,clkl);
			u2:entity work:senal(arq_senal) port map(clkl,250,led);
end architecture;
