
library IEEE;
use IEEE.numeric_bit.all;

entity reloj is 
port(clk: in bit;
    H: out integer range 0 to 12;
    M,S: out integer range 0 to 59);
end reloj;

architecture arch of reloj is 
signal M_out,S_out: integer range 0 to 59;
signal H_out: integer range 0 to 12;
begin

H<= H_out;
M<= M_out;
S<= S_out;

process (clk)
begin
    if clk'event and clk = '1' then 
        if S_out = 59 then 
            if M_out = 59 then
                if H_out = 12 then 
                    H_out<= 0;
                    M_out <= 0;
                    S_out <= 0;
                else
                	M_out <= 0;
                    S_out <= 0;
                    H_out <= H_out+1; end if;
            else 
            	S_out <= 0;
            	M_out <= M_out+1; end if;
        else S_out <= S_out+1; end if;
    else
    end if;
            end process;

end arch;