library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorDePontos is
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        acerto  : in std_logic;
        count   : out std_logic_vector(3 downto 0)
    );
end entity contadorDePontos;

architecture a_contadorDePontos of contadorDePontos is
    signal internal_count : unsigned(3 downto 0);
begin
    process (clock, acerto, reset)
    begin
        if reset = '1' then
            internal_count <= (others => '0');
        elsif rising_edge(clock) then
            if internal_count = "1111" then
                internal_count <= (others => '0');
            else
                if acerto = '1' then
                    internal_count <= internal_count + 1;
                else
                    internal_count <= "0000";
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(internal_count);
end architecture a_contadorDePontos;