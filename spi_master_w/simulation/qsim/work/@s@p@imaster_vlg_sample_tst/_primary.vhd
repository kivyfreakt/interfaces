library verilog;
use verilog.vl_types.all;
entity SPImaster_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        txdata          : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end SPImaster_vlg_sample_tst;
