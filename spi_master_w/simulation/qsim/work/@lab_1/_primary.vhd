library verilog;
use verilog.vl_types.all;
entity Lab_1 is
    port(
        sck             : out    vl_logic;
        clk             : in     vl_logic;
        mosi            : out    vl_logic;
        cs              : out    vl_logic
    );
end Lab_1;
