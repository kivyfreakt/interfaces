library verilog;
use verilog.vl_types.all;
entity spi_vlg_check_tst is
    port(
        MOSI            : in     vl_logic;
        SCK             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end spi_vlg_check_tst;
