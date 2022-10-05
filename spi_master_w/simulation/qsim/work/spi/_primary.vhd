library verilog;
use verilog.vl_types.all;
entity spi is
    port(
        MOSI            : out    vl_logic;
        SCK             : out    vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0)
    );
end spi;
