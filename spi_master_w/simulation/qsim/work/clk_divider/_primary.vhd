library verilog;
use verilog.vl_types.all;
entity clk_divider is
    port(
        clk_out         : out    vl_logic;
        clk_int         : in     vl_logic
    );
end clk_divider;
