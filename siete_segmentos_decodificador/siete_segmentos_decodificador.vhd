library ieee;
use ieee.std_logic_1164.all;

entity siete_segmentos_decodificador is
  port (
    BCD : in std_logic_vector(3 downto 0);   -- entrada en código BCD de 4 bits
    Hex : out std_logic_vector(6 downto 0)  -- salida del display de 7 segmentos
  );
end siete_segmentos_decodificador;

architecture rtl of siete_segmentos_decodificador is
begin
  -- proceso que mapea el código BCD a los segmentos del display
  process(BCD)
  begin
    case BCD is
      when "0000" => Hex <= not "1111110"; -- 0
      when "0001" => Hex <= not "0110000"; -- 1
      when "0010" => Hex <= not "1101101"; -- 2
      when "0011" => Hex <= not "1111001"; -- 3
      when "0100" => Hex <= not "0110011"; -- 4
      when "0101" => Hex <= not "1011011"; -- 5
      when "0110" => Hex <= not "1011111"; -- 6
      when "0111" => Hex <= not "1110000"; -- 7
      when "1000" => Hex <= not "1111111"; -- 8
      when "1001" => Hex <= not "1110011"; -- 9
      when others => Hex <= not "0000000"; -- no mostrar nada
    end case;
  end process;
end architecture;
