-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Full_Adder_tb is
end;

architecture bench of Full_Adder_tb is

  component Full_Adder
  Port (
  A : in STD_LOGIC_VECTOR (3 downto 0);
  B : in STD_LOGIC_VECTOR (3 downto 0);
  Cin : in STD_LOGIC;
  S : out STD_LOGIC_VECTOR (3 downto 0);
  Cout : out STD_LOGIC);
  end component;

  --Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
--Outputs
signal S : std_logic_vector(3 downto 0);
signal Cout : std_logic;


begin

  uut: Full_Adder port map ( A    => A,
                             B    => B,
                             Cin  => Cin,
                             S    => S,
                             Cout => Cout );

  stimulus: process
  begin
  
    -- Put initialisation code here
wait for 100 ns;
A <= "0011";
B <= "1100";
 
wait for 100 ns;
A <= "1011";
B <= "0001";
 
wait for 100 ns;
A <= "0110";
B <= "1001";
 
wait for 100 ns;
A <= "0000";
B <= "0000";
 
wait for 100 ns;
A <= "1111";
B <= "1111";


    -- Put test bench stimulus code here

    wait;
  end process;


end;
  