library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity check is
   port (
      entrada   : in std_logic_vector(4 downto 0);
      correto   : in std_logic_vector(4 downto 0);
      saida     : out std_logic
   );
end entity check;

architecture a_check of check is
signal igualdade : std_logic;
begin
   process (entrada, correto)
   begin
	   if entrada = correto then
		   igualdade <= '1';
      else
         igualdade <= '0';
      end if;
   end process; 
   
   saida <= igualdade;

end architecture a_check;