library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aritmetica is
    port (
        operando1   : in std_logic_vector(3 downto 0);
        operando2   : in std_logic_vector(3 downto 0);
        operador    : in std_logic_vector(2 downto 0);
        resposta    : out std_logic_vector(4 downto 0)
    );
end entity aritmetica;

architecture a_aritmetica of aritmetica is
    signal resposta_parcial : unsigned(4 downto 0);
begin
    process (operando1, operando2, operador)
    begin
        
		if operador = "000" then
			resposta_parcial <= unsigned('0' & operando1) + unsigned('0' & operando2);
		elsif operador = "001" then
			if operando1 > operando2 then
				resposta_parcial <= unsigned('0' & operando1) - unsigned('0' & operando2);
			else
				resposta_parcial <= unsigned('0' & operando2) - unsigned('0' & operando1);
			end if;
		elsif operador = "010" then
			resposta_parcial <= unsigned('0' & operando1) and unsigned('0' & operando2);
		elsif operador = "011" then
			resposta_parcial <= unsigned('0' & operando1) or unsigned('0' & operando2);
		elsif operador = "100" then
		    resposta_parcial <= unsigned('0' & operando1) xor unsigned('0' & operando2);
		end if;
    end process;
    
		resposta <= std_logic_vector(resposta_parcial);

end architecture a_aritmetica;
