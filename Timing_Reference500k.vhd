library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference500k is
	port ( 
	    clk: in std_logic; 
	    clk_out: out std_logic
	);

end Timing_Reference500k;
  
architecture freq_div of Timing_Reference500k is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
  
process(clk)
	begin
	if(clk'event and clk='1') then
		count <=count+1;
		if (count = 50000000/1000000) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clk_out <= tmp;
end process;
 
end freq_div;