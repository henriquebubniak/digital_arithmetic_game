library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity operando2 is
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        count   : out std_logic_vector(3 downto 0)
    );
end entity operando2;

architecture a_operando2 of operando2 is
    signal internal_count : unsigned(4 downto 0);
begin
    process (clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                internal_count <= (others => '0');
            else
                internal_count <= internal_count + 6;
            end if;
        end if;
    end process;

    count <= std_logic_vector(internal_count(3 downto 0));
end architecture a_operando2;