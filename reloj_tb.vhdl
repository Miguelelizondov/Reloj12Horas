
library IEEE;
use IEEE.numeric_bit.all;

entity reloj_tb is 
end reloj_tb;

architecture eq_tb of reloj_tb is

component reloj is 
port (clk: in bit;
    H: out integer range 0 to 12;
    M,S: out integer range 0 to 59);
end component;

signal clk:  bit;
signal H: integer range 0 to 12;
signal M,S:  integer range 0 to 59;

begin 

UUT: reloj port map (clk,H,M,S);

clk <= not clk after 500 ms;

end eq_tb;