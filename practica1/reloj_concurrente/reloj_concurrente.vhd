library ieee;
use ieee.std_logic_1164.all;

entity reloj_concurrente is
	port(
		clk							:	in		std_logic;
		display_minutos_unidad	:	out	std_logic_vector(6 downto 0);
		display_minutos_decena	:	out	std_logic_vector(6 downto 0);
		display_hora_unidad		:	out	std_logic_vector(6 downto 0);
		display_hora_decena		:	out	std_logic_vector(6 downto 0);
		carry_minutos_decena		:	out	std_logic;
		carry_hora_unidad			:	out	std_logic;
		carry_hora_decena			:	out	std_logic
	);
end entity;

architecture arq_reloj_concurrente of reloj_concurrente is
	signal clkl											:	std_logic							:='0';--divf
	signal contador									:	integer range 0 to 25000000	:=0;	--divf
	signal conteo1,conteo2, conteo3, conteo4	:	integer								:=0;	--cont
	signal bandera_minutos_unidad					:	std_logic							:='0';--cont
	signal bandera_minutos_decena					:	std_logic							:='0';--cont
	signal bandera_hora_unidad						:	std_logic							:='0';--cont
	signal bandera_hora_decena						:	std_logic							:='0';--cont
	
	begin
	
	--Divisor de frecuencia
	--**********************
		process(clk)--entrada
			begin
				if(rising_edge(clk)) then
					--if(contador=25000000) then
					if(contador=500000) then
						contador<=0;
						clkl		<=	not clkl;--salida
					else
						contador	<=	contador	+	1;
					end if;
				end if;
		end process;	
		
		--Counter1
		process(clkl)
			begin
				if(rising_edge(clkl)) then
					if(conteo1=9) then
						conteo1	<=	0;							--salida1
						bandera_minutos_unidad	<=	'1';	--salida2
					else
						conteo1 <= conteo1 + 1;				--salida1
						bandera_minutos_unidad	<=	'0';	--flag--salida2
					end if;
				end if;
		end process;
		
		carry_minutos_decena <= bandera_minutos_unidad;
		-- fin cont1 --

		--Counter2
		process(bandera_minutos_unidad)
			begin
				if(rising_edge(bandera_minutos_unidad)) then
					if(conteo2=5) then
						conteo2	<=	0;							--salida1
						bandera_minutos_decena	<=	'1';	--salida2
					else
						conteo2 <= conteo2 + 1;				--salida1
						bandera_minutos_decena	<=	'0';	--flag--salida2
					end if;
				end if;
		end process;
		carry_hora_unidad <= bandera_minutos_decena;
		-- fin cont2 --
		
		--Counter 3 --
		
		process(bandera_minutos_decena)
			begin
				if(rising_edge(bandera_minutos_decena)) then
					if(conteo3=9 or (conteo4=2 and conteo3=3)) then
						conteo3	<=	0;						--salida1
						bandera_hora_unidad	<=	'1';	--salida2
					else
						conteo3 <= conteo3 + 1;			--salida1
						bandera_hora_unidad	<=	'0';	--flag--salida2
					end if;
				end if;
		end process;
		carry_hora_decena <= bandera_hora_unidad;
		
		-- fin count3 --
		
		
		--Counter 4 --
		
		process(bandera_hora_unidad)
			begin
				if(rising_edge(bandera_hora_unidad)) then
					if(conteo4=2) then
						conteo4	<=	0;							--salida1
						bandera_hora_decena	<=	'1';		--salida2
					else
						conteo4 <= conteo4 + 1;				--salida1
						bandera_hora_decena	<=	'0';		--flag--salida2
					end if;
				end if;
		end process;
		
		-- fin count4 --
		
		-- inicio display_minutos_unidad --
		with conteo1 select
		display_minutos_unidad <= "1000000" when 0,--salida
				 "1111001" when 1,
				 "0100100" when 2,
				 "0110000" when 3,
				 "0011001" when 4,
				 "0010010" when 5,
				 "0000010" when 6,
				 "1111000" when 7,
				 "0000000" when 8,
				 "0011000" when 9,
				 "1111111" when others;
		-- ss7 --
		
		-- inicio display_minutos_decena --
		with conteo2 select
		display_minutos_decena <= "1000000" when 0,--salida
				 "1111001" when 1,
				 "0100100" when 2,
				 "0110000" when 3,
				 "0011001" when 4,
				 "0010010" when 5,
				 "0000010" when 6,
				 "1111000" when 7,
				 "0000000" when 8,
				 "0011000" when 9,
				 "1111111" when others;
		-- ss7 --
		
		-- inicio display_hora_unidad --
		with conteo3 select
		display_hora_unidad <= "1000000" when 0,--salida
				 "1111001" when 1,
				 "0100100" when 2,
				 "0110000" when 3,
				 "0011001" when 4,
				 "0010010" when 5,
				 "0000010" when 6,
				 "1111000" when 7,
				 "0000000" when 8,
				 "0011000" when 9,
				 "1111111" when others;
		-- ss7 --
		
		-- inicio display_hora_decena --
		with conteo4 select
		display_hora_decena <= "1000000" when 0,--salida
				 "1111001" when 1,
				 "0100100" when 2,
				 "0110000" when 3,
				 "0011001" when 4,
				 "0010010" when 5,
				 "0000010" when 6,
				 "1111000" when 7,
				 "0000000" when 8,
				 "0011000" when 9,
				 "1111111" when others;
		-- ss7 --
		
		
		end architecture;