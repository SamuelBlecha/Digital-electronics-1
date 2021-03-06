----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2021 04:09:09 AM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port 
    ( 
        SW  : in STD_LOGIC_VECTOR (4-1 downto 0); --Input binary data
        CA  : out STD_LOGIC;  --Cathod A
        CB  : out STD_LOGIC;
        CC  : out STD_LOGIC;
        CD  : out STD_LOGIC;
        CE  : out STD_LOGIC;
        CF  : out STD_LOGIC;
        CG  : out STD_LOGIC;  --Cathod G
        AN  : out STD_LOGIC_VECTOR (8-1 downto 0);  --Common anode signals to individual displays
        LED : out STD_LOGIC_VECTOR (8-1 downto 0)  --LED indicators
     );  
end top;

architecture Behavioral of top is

begin
    -- Instance (copy) of hex_7seg entity
    hex2seg : entity work.hex_7seg
        port map(
            hex_i    => SW,
            seg_o(6) => CA,
            seg_o(5) => CB,
            seg_o(4) => CC,
            seg_o(3) => CD,
            seg_o(2) => CE,
            seg_o(1) => CF,
            seg_o(0) => CG
        );

    -- Connect one common anode to 3.3V
    AN <= b"1111_0111";
    
    -- Display input value on LEDs
    LED(3 downto 0) <= SW;
    
    -- LED(7:4) indicators
    -- Turn LED(4) on if input value is equal to 0, ie "0000"
    LED4 : process (SW)
        begin
            if (SW = "0000") then
                LED(4) <= '1';
            else
                LED(4) <= '0';
            end if;
        end process LED4;
    
    -- Turn LED(5) on if input value is greater than "1001", ie 9
    LED5 : process (SW)
        begin
            if (SW > b"1001") then
                LED(5) <= '1';
            else
                LED(5) <= '0';
            end if;
        end process LED5;
    
    -- Turn LED(6) on if input value is odd, ie 1, 3, 5, ...
    LED6 : process (SW)
        begin
            if (SW(0) = '1') then
                LED(6) <= '1';
            else
                LED(6) <= '0';
            end if;
        end process LED6;
        
    -- Turn LED(7) on if input value is a power of two, ie 1, 2, 4, or 8
    LED7 : process (SW)
        begin             
            case SW is
                when "0001" =>
                LED(7) <= '1';
                when "0010" =>
                LED(7) <= '1';
                when "0100" =>
                LED(7) <= '1';
                when "1000" =>
                LED(7) <= '1';
                when others =>
                LED(7) <= '0';
            end case;
        end process LED7;   
    

end Behavioral;
