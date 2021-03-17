library ieee;
use ieee.std_logic_1164.all;

entity top is
    port
    (
        CLK100MHZ  : in STD_LOGIC;
        BTNC       : in STD_LOGIC;
        SW         : in STD_LOGIC_VECTOR(16-1 downto 0);
        CA         : out STD_LOGIC;
        CB         : out STD_LOGIC;
        CC         : out STD_LOGIC;
        CD         : out STD_LOGIC;
        CE         : out STD_LOGIC;
        CF         : out STD_LOGIC;
        CG         : out STD_LOGIC;
        DP         : out STD_LOGIC;
        AN         : out STD_LOGIC_VECTOR(8-1 downto 0)        
    );
end top;

------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of top is
    -- No internal signals
begin

    --------------------------------------------------------------------
    -- Instance (copy) of driver_7seg_4digits entity
    driver_seg_4 : entity work.driver_7seg_4digits
        port map(
            clk        => CLK100MHZ,
            reset      => BTNC,
            
            data0_i(3) => SW(3),
            data0_i(2) => SW(2),
            data0_i(1) => SW(1),
            data0_i(0) => SW(0),
            
            data1_i(3) => SW(7),
            data1_i(2) => SW(6),
            data1_i(1) => SW(5),
            data1_i(0) => SW(4),
            
            data2_i(3) => SW(11),
            data2_i(2) => SW(10),
            data2_i(1)  => SW(9),
            data2_i(0)  => SW(8),
            
            data3_i(3) => SW(15),
            data3_i(2) => SW(14),
            data3_i(1) => SW(13),
            data3_i(0) => SW(12),
            
            seg_o(0) => CA,
            seg_o(1) => CB,
            seg_o(2) => CC,
            seg_o(3) => CD,
            seg_o(4) => CE,
            seg_o(5) => CF,
            seg_o(6) => CG,
            
            dig_o => AN(4-1 downto 0),
            "1111" => AN(8-1 downto 5-1),
            
            dp_o => DP,            
            dp_i => "0111",
            --- WRITE YOUR CODE HERE
        );

    -- Disconnect the top four digits of the 7-segment display
    AN(7 downto 4) <= b"1111";

end architecture Behavioral;