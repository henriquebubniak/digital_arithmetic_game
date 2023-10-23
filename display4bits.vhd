Library IEEE;
use IEEE.std_logic_1164.all;

entity display4bits is
    port(
        number: in std_logic_vector(3 downto 0);
        hex: out std_logic_vector(6 downto 0)
    );
end display4bits;

architecture gate_level of display4bits is
begin
    hex(0) <= (not number(3) and number(2) and not number(1) and not number(0)) or
          (not(number(3)) and not(number(2)) and not(number(1)) and number(0)) or
          (number(3) and number(2) and not(number(1)) and number(0)) or
          (number(3) and not(number(2)) and number(1) and number(0));
    
    hex(1) <= (not number(3) and number(2) and not number(1) and number(0)) or
          (number(3) and number(2) and not number(0)) or
          (number(3) and number(1) and number(0)) or
          (number(2) and number(1) and not number(0));
    
    hex(2) <= (not number(3) and not number(2) and number(1) and not number(0)) or
          (number(3) and number(2) and not number(0)) or
          (number(3) and number(2) and number(1));

    hex(3) <= (not number(3) and number(2) and not number(1) and not number(0)) or
          (not number(3) and not number(2) and not number(1) and number(0)) or
          (number(3) and not number(2) and number(1) and not number(0)) or
          (number(2) and number(1) and number(0));
    
    hex(4) <= (not number(2) and not number(1) and number(0) ) or
          (not number(3) and number(2) and not number(1)) or
          (not number(3) and number(0));
    
    hex(5) <= (number(3) and number(2) and not number(1) and number(0)) or
          (not number(3) and not number(2) and number(1)) or
          (not number(3) and not number(2) and number(0)) or
          (not number(3) and number(1) and number(0));
    
    hex(6) <= (number(3) and number(2) and not number(1) and not number(0)) or
          (not number(3) and number(2) and number(1) and number(0)) or
          (not number(3) and not number(2) and not number(1));
end gate_level;