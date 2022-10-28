----------------------------------------------------------------------------------
-- Company: Illinois Institute of Technology
-- Engineer: Abheek Mondal
-- 
-- Create Date: 10/28/2022 03:46:11 AM
-- Design Name: 4 bit Ripple Carry Adder VHDL Code
-- Module Name: Full_Adder - Behavioral
-- Project Name: ECE 485 Project 2
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

entity Full_Adder is
--  Port ( );
Port (
A : in STD_LOGIC_VECTOR (3 downto 0); --Input 1
B : in STD_LOGIC_VECTOR (3 downto 0); --Input 2
Cin : in STD_LOGIC; --Carry from previous adder
S : out STD_LOGIC_VECTOR (3 downto 0); -- Sum from each adder
Cout : out STD_LOGIC);  --Carry signal
end Full_Adder;

architecture Behavioral of Full_Adder is

component vhdl_port_code
Port ( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;

signal c1,c2,c3: STD_LOGIC; -- Immediate Carry (need 3, because 4 adders)


begin
--All this is mapping outputs to ports, the weird kind of recursiveness in VDHL. Define Function then copy paste
Adder1: vhdl_port_code port map( A(0), B(0), Cin, S(0), c1); --Carry signal in, its the start of the first full adder
Adder2: vhdl_port_code port map( A(1), B(1), c1, S(1), c2);
Adder3: vhdl_port_code port map( A(2), B(2), c2, S(2), c3);
Adder4: vhdl_port_code port map( A(3), B(3), c3, S(3), Cout); --Carry signal out, its the end of the adder series


end Behavioral;
