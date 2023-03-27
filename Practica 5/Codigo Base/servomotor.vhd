library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity servomotor is
	port(
		clk,pi,pf,inc,dec,rst:in std_logic;
		control:out std_logic
	);
end entity;

architecture arq_servomotor of servomotor is
	signal clkl: 	STD_LOGIC;
	signal duty : integer range 0 to 200:=85;
	begin
		ul: entity work.divf(arq_divf) generic map(500) port map (clk, clkl);
		u2: entity work.senal(arq_senal) port map (clkl,duty,control);
		u3: entity work.movimiento(arq_movimiento) port map(clkl,pi,pf,inc,dec,rst,duty);
end architecture;