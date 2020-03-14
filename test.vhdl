-- Khai bao component
architecture str_arch of even_detector is

    component xor2
    Port (
        i1, i2: in std_logic;
        o1: out std_logic;
    );
    end component;

    component not1
    Port (
        i1: in std_logic;
        o1: out std_logic;
    );
    end component;

    signal sig1, sig2: std_logic;

begin
    unit1: xor2 --unit1 ten do minh dat
        port map(i1=> a(0), i2=> a(1), o1=> sig1); -- ket noi tin hieu nao voi nao

    unit2: xor2 
        port map(i1=> sig1, i2=> a(2), o1=> sig2); -- ket noi tin hieu nao voi nao

    unit3: not1
        port map(i1=>sig2, o1=> even);


end str_arch ; -- str_arch

-- Khai bao bien
entity xor2 is
  port (
    i1, i2: in std_logic;
    o1: out std_logic;
  ) ;
end xor2;

architecture arch of xor2 is

    signal      

begin
    o1 <= i1 xor i2;

end arch ; -- arch