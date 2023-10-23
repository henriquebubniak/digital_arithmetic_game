library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity projetofinal is
    port (
        entrada   : in std_logic_vector(4 downto 0);
        pb0       : in std_logic;
		pb1       : in std_logic;
        clk       : in std_logic;
        hex0      : out std_logic_vector(6 downto 0);
        hex1      : out std_logic_vector(6 downto 0);
        hex2      : out std_logic_vector(6 downto 0);
        hex3      : out std_logic_vector(6 downto 0);
        hex4      : out std_logic_vector(6 downto 0);
        hex5      : out std_logic_vector(6 downto 0)
    );
end entity projetofinal;

architecture a_projetofinal of projetofinal is
signal chk, clk1, clk2, zerar, clk1hz : std_logic;
signal op1, op2, pts  					  : std_logic_vector(3 downto 0);
signal op              			        : std_logic_vector(2 downto 0);
signal cor            		           : std_logic_vector(4 downto 0);
signal contaTempo      		           : std_logic_vector(7 downto 0);

component operando is
    port (
        clk     : in std_logic;
        reset   : in std_logic;
        number  : out std_logic_vector(3 downto 0)
    );
end component;


component operador is
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        count   : out std_logic_vector(2 downto 0)
    );
end component;


component aritmetica is
    port (
        operando1   : in std_logic_vector(3 downto 0);
        operando2   : in std_logic_vector(3 downto 0);
        operador    : in std_logic_vector(2 downto 0);
        resposta    : out std_logic_vector(4 downto 0)
    );
end component;

component check is
    port (
        entrada   : in std_logic_vector(4 downto 0);
        correto   : in std_logic_vector(4 downto 0);
        saida     : out std_logic
    );
end component;


 component contadorDePontos is
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        acerto  : in std_logic;
        count   : out std_logic_vector(3 downto 0)
    );
end component;

component Timing_Reference500k is
	port ( 
	    clk     : in std_logic; 
	    clk_out : out std_logic
	);

end component;

component Timing_Reference350k is
	port ( 
	    clk     : in std_logic; 
	    clk_out : out std_logic
	);

end component;

component Timing_Reference1 is
	port ( 
	    clk     : in std_logic; 
	    clk_out : out std_logic
	);

end component;

component display4bits is
    port (
        number : in std_logic_vector(3 downto 0);
        hex    : out std_logic_vector(6 downto 0)
    );
end component;

component temporizador is
    port (
        clock    : in std_logic;
		  reset    : in std_logic;
        contador : out std_logic_vector(7 downto 0);
        zerar    : out std_logic
    );
end component;

begin
    clock1 : Timing_Reference500k port map (
        clk => clk,
        clk_out => clk1 
    );
    
    clock2 : Timing_Reference350k port map (
        clk => clk,
        clk_out => clk2 
    );
	 
    clock1hz : Timing_Reference1 port map (
        clk => clk,
        clk_out => clk1hz 
    );

    oper1 : operando port map (
        clk => clk1 and not pb0,
        reset => '0',
        number => op1
    );

    oper2 : operando port map (
        clk => clk2 and not pb0,
		  reset => '0',
        number => op2
    );
    
    opr : operador port map (
        clock => clk and not pb0,
		  reset => '0',
        count => op
    );

    arit : aritmetica port map (
        operando1 => op1,
        operando2 => op2,
        operador => op,
        resposta => cor
    );

    check1 : check port map (
        entrada => entrada,
        correto => cor,
        saida => chk
    );
    
    cont : contadorDePontos port map (
        clock => not pb0,
        acerto => chk,
		  reset => zerar or not pb1,
        count => pts
    );
	 
	 temp : temporizador port map (
	     clock => clk1hz,
		  reset => not pb1,
		  contador => contaTempo,
		  zerar=> zerar
    );
		  

    inst_hex0 : display4bits port map (
        number => op1,
        hex => hex0
    );
    inst_hex1 : display4bits port map (
        number => '0' & op,
        hex => hex1
    );
    inst_hex2 : display4bits port map (
        number => op2,
        hex => hex2
    );
    inst_hex3 : display4bits port map (
        number => pts,
        hex => hex3
    );
	 
    inst_hex4 : display4bits port map (
        number => contaTempo(3 downto 0),
        hex => hex4
    );
	 
    inst_hex5 : display4bits port map (
        number => contaTempo(7 downto 4),
        hex => hex5
    );

end architecture a_projetofinal;