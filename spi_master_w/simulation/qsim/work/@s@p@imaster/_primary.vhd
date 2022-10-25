library verilog;
use verilog.vl_types.all;
entity SPImaster is
    port(
        clk             : in     vl_logic;
        txdata          : in     vl_logic_vector(7 downto 0);
        sck             : out    vl_logic;
        mosi            : out    vl_logic;
        ss_n            : out    vl_logic
    );
end SPImaster;
