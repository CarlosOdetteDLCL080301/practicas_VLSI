library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port(
		clk:in std_logic;
		a,b:in std_logic_vector(2 downto 0);
		stop:in std_logic;
		reset:in std_logic;
		salida_final:out std_logic_vector(2 downto 0);
		cout	:out std_logic
	);
end ALU;

architecture arq_ALU of ALU is
	signal salida_UA, salida_UL:std_logic_vector(2 downto 0);
	signal sel_3:std_logic;
	signal sel_2:std_logic;
	signal sel_1:std_logic;
	signal sel_0:std_logic;
	signal sel_2_1:std_logic_vector(1 downto 0);
	begin
		U0:entity work.automatizacion	port map(clk,stop,reset,sel_3,sel_2,sel_1,sel_0);
		sel_2_1 <= sel_1 & sel_2;
		
		u1:entity work.AL(arq_AL) port map(sel_3,a,b,sel_2_1,sel_0,salida_UA,cout);
		u2:entity work.UL(arq_UL) port map(a,b,sel_2_1,salida_UL);
		u3:entity work.mux_2x1(arq_mux_2x1) port map(sel_3, salida_UA, salida_UL,salida_final);
		
end architecture arq_ALU;