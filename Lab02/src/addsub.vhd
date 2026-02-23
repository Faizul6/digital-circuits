------------------------------------------------------------------
--
-- [IE3-DI] Digital Circuits Winter Term 2025
--			Exercise 2
--
-- @name:   adder.vhd
-- @author: Faizul Ahmed Robin
-- @description: Ripple-Carry-Adder Unit
--				 DESIGN FILE
--
-- (c) 2025 HAW Hamburg
--
------------------------------------------------------------------

---------------------------------
-- libraries / packages 
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------------
-- entity
--------------------------------------------------------
entity addsub is
    port(
        A    : in  std_logic_vector(7 downto 0);  -- Operand A
        B    : in  std_logic_vector(7 downto 0);  -- Operand B
        sel  : in  std_logic;                     -- 0 = add, 1 = subtract

        S    : out std_logic_vector(7 downto 0);  -- Result
        C    : out std_logic;                     -- Carry flag (unsigned overflow)
        V    : out std_logic;                     -- Overflow flag (signed overflow)
        N    : out std_logic;                     -- Negative flag (MSB of result)
        Z    : out std_logic                      -- Zero flag
    );
end entity;

---------------------------------
-- architecture
architecture rtl of addsub is
begin

---------------------------------
-- combinatorial process
 process(A, B, sel)

        -- Variables
        variable A_v     : std_logic_vector(7 downto 0);
        variable B_v     : std_logic_vector(7 downto 0);
        variable B_mux   : std_logic_vector(7 downto 0);  -- after MUX (B or NOT B)
        variable S_v     : std_logic_vector(7 downto 0);

        variable c_v     : std_logic;   -- carry during ripple
        variable prev_carry : std_logic; -- carry entering MSB (for overflow)

begin


        --------------------------------------------------------
        -- 1. Load operands
        --------------------------------------------------------
        A_v := A;
        B_v := B;

        --------------------------------------------------------
        -- 2. MUX for Add/Sub
        --------------------------------------------------------
        if sel = '0' then
            -- Addition
            B_mux := B_v;
            c_v   := '0';     -- normal carry input
        else
             -- Subtraction: A - B = A + NOT B + 1
            B_mux := not(B_v);
            c_v   := '1';     -- add +1 for 2's complement
        end if;
        
-- 3. Implement 8-bit Ripple-Carry Adder
-------------------------------------------------------


        for i in 0 to 7 loop

            -- remember carry entering this bit (for overflow detection)
            prev_carry := c_v;

            -- sum bit
            S_v(i) := A_v(i) xor B_mux(i) xor c_v;

            -- new carry
            c_v := (A_v(i) and B_mux(i)) or 
                   (A_v(i) and c_v) or 
                   (B_mux(i) and c_v);
        end loop;


-- 4. Assign outputs
        --------------------------------------------------------
        S <= S_v;

        -- C = final carry out
        C <= c_v;

        -- V = signed overflow = co XOR c7
        V <= c_v xor prev_carry;

        -- N = MSB of result
        N <= S_v(7);

        -- Z = 1 if result is zero, else 0
        if S_v = "00000000" then
            Z <= '1';
        else
            Z <= '0';
        end if;

    end process;

end architecture rtl;
