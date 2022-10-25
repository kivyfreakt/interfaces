library verilog;
use verilog.vl_types.all;
entity SPImaster_vlg_check_tst is
    port(
        mosi            : in     vl_logic;
        sck             : in     vl_logic;
        ss_n            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end SPImaster_vlg_check_tst;
