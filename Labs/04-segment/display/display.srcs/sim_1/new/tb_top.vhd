----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2021 06:14:21 AM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
    signal s_SW       : std_logic_vector(4 - 1 downto 0);
    signal s_LED       : std_logic_vector(8 - 1 downto 0);
begin
    uut_top : entity work.top
        port map(
            SW           => s_SW,
            LED           => s_LED
        );
        p_stimulus : process
    begin
        -- Report a note at the begining of stimulus process
        report "Stimulus process started" severity note;

        s_SW <= "0000"; wait for 50 ns;
        s_SW <= "0001"; wait for 50 ns;
        s_SW <= "0010"; wait for 50 ns;
        s_SW <= "0011"; wait for 50 ns;
        s_SW <= "0100"; wait for 50 ns;
        s_SW <= "0101"; wait for 50 ns;
        s_SW <= "0110"; wait for 50 ns;
        s_SW <= "0111"; wait for 50 ns;
        s_SW <= "1000"; wait for 50 ns;
        s_SW <= "1001"; wait for 50 ns;
        s_SW <= "1010"; wait for 50 ns;
        s_SW <= "1011"; wait for 50 ns;
        s_SW <= "1100"; wait for 50 ns;
        s_SW <= "1101"; wait for 50 ns;
        s_SW <= "1110"; wait for 50 ns;
        s_SW <= "1111"; wait for 50 ns;    
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;