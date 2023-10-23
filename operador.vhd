library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity operador is
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        count   : out std_logic_vector(2 downto 0)
    );
end entity operador;

architecture a_operador of operador is
    signal internal_count : unsigned(2 downto 0);
begin
    process (clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                internal_count <= (others => '0');
            else
                if internal_count = "100" then
                    internal_count <= (others => '0');
                else
                    internal_count <= internal_count + 1;
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(internal_count);
end architecture a_operador;