library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        A   : in  std_logic;
        B   : in  std_logic;
        ci  : in  std_logic;
        S   : out std_logic;
        co  : out std_logic
    );
end entity full_adder;

architecture behavioral of full_adder is
begin
    S  <= A xor B xor ci;
    co <= (A and B) or (A and ci) or (B and ci);
end architecture behavioral;



