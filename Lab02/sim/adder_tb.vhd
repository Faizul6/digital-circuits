library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end entity fa_tb;

architecture tb of fa_tb is

    signal A  : std_logic := '0';
    signal B  : std_logic := '0';
    signal ci : std_logic := '0';

    signal S  : std_logic;
    signal co : std_logic;

begin
    UUT: entity work.full_adder
        port map (
            A  => A,
            B  => B,
            ci => ci,
            S  => S,
            co => co
        );

    stim_proc: process
    begin
        A <= '0'; B <= '0'; ci <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; ci <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; ci <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; ci <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; ci <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; ci <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; ci <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; ci <= '1'; wait for 10 ns;

        wait;
    end process;

end architecture tb;