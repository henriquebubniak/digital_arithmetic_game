library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity temporizador is
    port (
        clock    : in std_logic;
		  reset    : in std_logic;
        contador : out std_logic_vector(7 downto 0);
        zerar    : out std_logic
    );
end entity temporizador;

architecture a_temporizador of temporizador is
    signal internal_count : unsigned(7 downto 0);
begin
    process (clock)
    begin
		  if reset = '1' then
            zerar <= '1';
            internal_count <= "10110100";
		
        elsif rising_edge(clock) then
            if internal_count = "00000000" then
                zerar <= '1';
                internal_count <= "10110100";
            else
                zerar <= '0';
                internal_count <= internal_count - 1;
            end if;
        end if;
    end process;

    contador <= std_logic_vector(internal_count);
end architecture a_temporizador;