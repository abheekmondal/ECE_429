----------------------------------------------------------------------------------
-- Company: Illinois Institute of Technology
-- Engineer: Abheek Mondal
-- 
-- Create Date: 10/28/2022 06:32:32 AM
-- Design Name: VDHL port code single unit adder
-- Module Name: vhdl_port_code - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vhdl_port_code is
--  Port ( );
Port(A, B, Cin : in STD_LOGIC; --inputs
S, Cout : out STD_LOGIC); --Outputs

end vhdl_port_code;

architecture Behavioral of vhdl_port_code is

begin
process (A, B, Cin) is
begin

S <= (A XOR B) XOR Cin;
Cout <= (A AND B) OR ((A XOR B) AND Cin);

end process;

end Behavioral;
