module SPImaster
(
    input wire clk, rst,
    input wire [7:0] data_in,
    output wire mosi, sclk, ss
);
    wire shift_en, load;
    
	 spi_ctrl ctrl(
        .clk(clk),
        .rst(rst),
        .shift_en(shift_en),
        .load(load),
        .sclk(sclk),
        .ss(ss)
    );
	 
    spi_shift shift(
        .clk(clk), 
        .rst(rst), 
        .shift_en(shift_en), 
        .load(load),
        .data_in(data_in), 
        .s_out(mosi)
    );

endmodule
