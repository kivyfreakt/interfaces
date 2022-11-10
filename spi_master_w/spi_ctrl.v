module spi_ctrl
(
    input wire clk, // clock
    input wire rst, // async clear
    output reg shift_en, // shift enable
    output reg load, // load data to shift reg
    output reg sclk, // serial clock
    output wire ss // slave select
);

// states for FSM
localparam [1:0]
        Init = 2'b00,
        Load = 2'b01,
        Shift = 2'b10,
        Done = 2'b11;
        
reg [1:0] current_state, next_state;
reg [3:0] count;
reg clk_en;

assign sclk = clk_en & clk; // output the clock when needed

always @(posedge clk or posedge rst)
begin
    if (rst)
        current_state = Init;
    else
        current_state = next_state;
end

always @(negedge clk or posedge rst) begin
    if(rst)
        count = 4'b1111;
    else if (current_state == Shift)
        count = count + 1;
    else
        count = 4'b1111;
end

// FSM next_state states block and output block
always @(*)
begin	
    case (current_state)
            Init : begin
                {shift_en, load, clk_en, ss} = 4'b0001;
                next_state = Load;
            end
            
            Load : begin
                {shift_en, load, clk_en, ss} = 4'b0100;
                done = 1'b0;					 
                next_state = Shift;
            end
            
            Shift : begin
                {shift_en,load,clk_en,ss} = 4'b1010;
                
                if(count == 4'b1111)
                    next_state = Done;
                else
                    next_state = current_state;
            end
            
            Done : begin
                {shift_en,load,clk_en,ss} = 4'b0001;
                next_state = Load;
            end
            
            default : begin
                {shift_en,load,clk_en,ss} = 4'b0001;
                next_state = Init;
            end
    endcase
end

endmodule
