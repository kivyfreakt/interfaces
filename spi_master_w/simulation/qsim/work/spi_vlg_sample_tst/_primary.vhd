library verilog;
use verilog.vl_types.all;
entity spi_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end spi_vlg_sample_tst;
