library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity operando is
    port (
        clk     : in std_logic;
        reset   : in std_logic;
        number  : out std_logic_vector(3 downto 0)
    );
end entity operando;

architecture a_operando of operando is
    signal internal_count : unsigned(3 downto 0);
begin
    process (clk)
    begin
        if reset = '1' then
            internal_count <= (others => '0');
        elsif rising_edge(clk) then
            if internal_count = "1111" then
                internal_count <= (others => '0');
            else
                internal_count <= internal_count + 1;
            end if;
        end if;
    end process;

    number <= std_logic_vector(internal_count);
end architecture a_operando;