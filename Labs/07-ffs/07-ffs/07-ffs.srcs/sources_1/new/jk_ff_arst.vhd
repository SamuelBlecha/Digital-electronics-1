----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2021 12:03:56 AM
-- Design Name: 
-- Module Name: jk_ff_arst - Behavioral
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

entity jk_ff_arst is
    Port ( 
           clk   : in STD_LOGIC;
           arst  : in STD_LOGIC;
           j     : in STD_LOGIC;
           k     : in STD_LOGIC;
           q     : out STD_LOGIC;
           q_bar : out STD_LOGIC
          );
end jk_ff_arst;

architecture Behavioral of jk_ff_arst is
    signal s_q : std_logic;
begin

    p_jk_ff_rst : process (clk, arst)
    begin
        if (arst = '1') then
                 s_q <= '0';
        elsif rising_edge(clk) then
            if (j = '0' and k = '0') then
                s_q <= s_q;
            elsif (j = '1' and k = '0') then
                s_q <= '1';
            elsif (j = '0' and k = '1') then
                s_q <= '0';
            elsif (j = '1' and k = '1') then
                s_q <= not s_q;  
            end if;             
        end if;
    end process p_jk_ff_rst;

    q <= s_q;
    q_bar <= not s_q;

end Behavioral;
